/**
 * Create the VPC Firewall Rule to allow the function caller to access the Minecraft server
 */
//user const, please edit these

const ZONE_NAME = 'us-west2-a';
const VM_NAME = 'mc-server-gcp-test';
const TAG = 'mc-server-gcp-test'; //i just want this to be the same as the vm name
const OWNER_NAME = "@goodraboy";
const MC_PORT = 25565;

//end of user const


var http = require('http');
var Compute = require('@google-cloud/compute');
var compute = Compute();
var fwname = 'minecraft-fw-rule-' + Math.floor(new Date() / 1000);

exports.makeFWRule = function makeFWRule(req, res) {
    // Record the function caller's IPv4 address
    console.log(JSON.stringify(req.headers));
    sourceIp = req.get('X-Forwarded-For');
    let callerip = req.query.message || req.body.message || sourceIp;

// Set the Firewall configs
    const config = {
        protocols: {tcp: [25565]},
        ranges: [callerip + '/32'],
        tags: [TAG]
    };

    function callback(err, firewall, operation, apiResponse) {
    }

    // Create the Firewall
    compute.createFirewall(fwname, config, callback);

    // Return a response
    res.status(200).send('Firewall rule created named ' + fwname + ' for IP address ' + callerip);
};