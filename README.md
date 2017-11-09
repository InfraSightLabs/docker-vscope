vScope
=============

vScope by InfraSight Labs is a software that helps optimizing IT infrastructures.

More information about vScope: https://infrasightlabs.com/vscope

Quick start
-----------

  - Execute: `docker run -P -d infrasight/vscope`
  - Aim your browser at http://localhost:[assigned_port] to access vScope web UI


Usage
-----

All persistent data is stored in container path /data so mount a volume there to keep vScope data between container runs.

`docker run -d -p 80:80 -v /somepath/vscopedata:/data infrasight/vscope

