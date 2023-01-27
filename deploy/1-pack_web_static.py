#!/usr/bin/python3

"""
 module generates a .tgz archive from the contents of the web_static folder
"""
from datetime import datetime
from fabric.api import local
from os.path import isdir

def do_pack():
    """
    generates archive
    """
    try:
        date = datetime.now().strftime("%Y%m%d%H%M%S")

        if isdir("versions") is False:
            local('mkdir versions')
        file_name = f"versions/web_static_{date}.tgz"
        local('tar -cvzf {} web_static'.format(file_name))
        print("Successful")
        return file_name
    except:
        print("failed")
        return None
