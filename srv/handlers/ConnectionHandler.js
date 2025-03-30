const cds = require('@sap/cds');

async function handleBackendConnection(req) {
    const backendConnect = await cds.connect.to("Northwind");
    const tx = backendConnect.tx(req);
    return tx.run(req.query);
}

module.export = {handleBackendConnection}