# MHR JSON Server
RESTful JSON server to query Team Cymru's [Malware Hash Registry](https://www.team-cymru.org/MHR.html).

[![Twitter: @chadkeck](https://img.shields.io/badge/contact-@chadkeck-blue.svg?style=flat)](https://twitter.com/chadkeck)
[![License](http://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/chadkeck/mhr-json-server/blob/master/LICENSE)
[![Code Climate](https://codeclimate.com/github/chadkeck/mhr-json-server/badges/gpa.svg)](https://codeclimate.com/github/chadkeck/mhr-json-server)

**Note:** The Malware Hash Registry is free for non-commercial use only.

## Usage

### Building the Docker Image

```sh
$ sudo docker build --rm -t chadkeck/mhr-json-server .
```

### Running a server instance

```sh
$ sudo docker run --rm -p 3000:80 chadkeck/mhr-json-server
```

### Querying the service

```sh
$ curl http://localhost:3000/query/44D88612FEA8A8F36DE82E1278ABB02F
{"44d88612fea8a8f36de82e1278abb02f":{"timestamp":1259633424000,"detectionRate":83}}
```

### Results format
Explanation of the [results format](https://github.com/chadkeck/malware-hash-registry#results-format).
