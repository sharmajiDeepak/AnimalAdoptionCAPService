const cds = require('@sap/cds');
const {handleBackendConnection} = require("./handlers/ConnectionHandler");

module.export = class animaladoption {
    init() {
        const {Supplier, Animals} = cds.entities;
        this.on("READ", Supplier, handleBackendConnection);
    }

}