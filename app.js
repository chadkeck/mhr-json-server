var express = require('express');
var app = express();

var MalwareHashRegistry = require('malware-hash-registry');
var mhrClient = new MalwareHashRegistry();

app.disable('x-powered-by'); // don't respond with 'X-Powered-By' header

app.get('/query/:digest', function (req, res) {
  var digests = [req.params.digest];
  mhrClient.query(digests, function (err, results) {
    if (err) {
      console.error(err);
      res.status(500).send({ error: 'Something went wrong.' });
      return;
    }

    res.send(results);
  });
});

app.listen(3000);
