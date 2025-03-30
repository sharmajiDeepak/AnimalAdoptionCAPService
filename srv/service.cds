using {cap.animaladoption as dbmodel} from '../db/schema';

service animaladoption {

    entity Animals as projection on dbmodel.Animals;
    entity HealthStatus as projection on dbmodel.HealthStatus;

}