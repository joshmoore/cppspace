Getting started
---------------

 * Download an Bio-Formats source archive and unpack it.
 * Rename it to `src` and make sure it's world readable.
 * Run: `docker-compose up`, optionally appending a single build.
 * Additionally: use `docker-compose up --no-recreate ...` to run
   a build in the same context. Otherwise, a fresh directory
   (/home/build) will be used.
