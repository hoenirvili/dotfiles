#!/bin/bash

function deploy {
	rsync -vP -r --exclude $1/.git $1 elio.giulitti@fenrir.info.uaic.ro:/fenrir/studs/elio.giulitti/html/cloud-homework/$2
}
