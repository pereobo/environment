#!/bin/sh

# Install file for environment files.

# Note that running this more than once will overwrite the backup files.

# Full paths to commands.

CP=/bin/cp
MV=/bin/mv

# Install directory.

INSTALL_DIR=~

# Files to install.

FILES="\
  .bash_profile  \
  .bashrc        \
  .exrc          \
  .tmux.conf     \
  .vimrc         \
"

# Suffix to add to file names when creating backups.

BACKUP_SUFFIX=".bak"


echo Installing environment files into $INSTALL_DIR.

for file in $FILES
do
    echo Installing $file

    TARGET_FILE="$INSTALL_DIR/$file"
    BACKUP_FILE="$INSTALL_DIR/$file.$BACKUP_SUFFIX"

    if [ -f $TARGET_FILE ]
    then
        echo Existing $file found. Creating a backup.

        $MV $TARGET_FILE $BACKUP_FILE
    fi

    $CP $file $TARGET_FILE
done

echo Done.
