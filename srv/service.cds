using {cap.animaladoption as dbmodel} from '../db/schema';
using {Northwind as external} from './external/Northwind';

service animaladoption {

    entity Animals      as projection on dbmodel.Animals;
    entity HealthStatus as projection on dbmodel.HealthStatus;
    entity Supplier     as
        select from external.Suppliers {
            key SupplierID,
            CompanyName,
            ContactName as Name,
            ContactTitle,
            Address,
            City,
            Region,
            PostalCode,
            Country
        };

}
