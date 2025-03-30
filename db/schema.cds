namespace cap.animaladoption;
using {cuid, managed, sap.common.CodeList as CodeList} from '@sap/cds/common';

entity Animals: cuid {
    name: String;
    breed: String;
    healthStatus: Association to HealthStatus;
    birthDate: Date;
}

entity HealthStatus: CodeList {
    key code: String enum {
        Healthy = 'H';
        Unhealthy = 'UN';
    }
}