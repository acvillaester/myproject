#!/bin/bash
#Back up old authorized_keys
ESAD_SSH_DIR=/home/esad/.ssh
ELICENSE_SSH_DIR=/home/elicense/.ssh
EFEMCI_SSH_DIR=/home/efemci/.ssh

cp $ESAD_SSH_DIR/authorized_keys $ESAD_SSH_DIR/authorized_keys_backup
cp $ELICENSE_SSH_DIR/authorized_keys $ELICENSE_SSH_DIR/authorized_keys_backup
cp $EFEMCI_SSH_DIR/authorized_keys $EFEMCI_SSH_DIR/authorized_keys_backup
