Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 371014C80039
	for <yocto@yoctoproject.org>; Tue, 21 Dec 2010 11:24:53 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Dec 2010 09:24:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,208,1291622400"; d="scan'208";a="585876433"
Received: from eflanlinux.jf.intel.com (HELO localhost) ([10.7.201.149])
	by orsmga002.jf.intel.com with ESMTP; 21 Dec 2010 09:24:52 -0800
Message-Id: <b3b401c0c8d0ca80619190ff717ba1bfcbb64352.1292951846.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1292951846.git.elizabeth.flanagan@intel.com>
References: <cover.1292951846.git.elizabeth.flanagan@intel.com>
From: Beth Flanagan <elizabeth.flanagan@intel.com>
Date: Mon, 20 Dec 2010 11:04:03 -0800
To: yocto@yoctoproject.org
Subject: [PATCH 1/3] Upgrade to Buildbot 0.8.3: scripts/poky-setup-autobuilder
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Dec 2010 17:24:53 -0000

I've ported the buildbot install script to python and added
an INSTALL file that describes all the changes. This should
be run from the base directory:

./scripts/poky-setup-autobuilder [options] master|slave|both

It's fairly straightfoward. I did not include remote machine
installs this time around. I also do not create the poky-build
user nor set up proxy info. This should all be done on by the
build system admin.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 INSTALL                        |   55 +++++
 README                         |    6 +-
 scripts/poky-setup-autobuilder |  514 +++++++++++++++++++++++++++-------------
 3 files changed, 407 insertions(+), 168 deletions(-)
 create mode 100644 INSTALL

diff --git a/INSTALL b/INSTALL
new file mode 100644
index 0000000..b7da3e6
--- /dev/null
+++ b/INSTALL
@@ -0,0 +1,55 @@
+Basic Setup
+=============================
+
+From the user account that will run the autobuilder:
+
+git clone git://git.pokylinux.org/poky-autobuilder
+cd poky-autobuilder
+./scripts/poky-setup-autobuilder [options] master|slave|both
+
+Options
+=============================
+
+At minimum you should use the --builduser --buildpasswd options. If those are left blank, you'll be prompted for them. 
+
+  --buildpasswd=BBBUILDPASSWD
+                        The BuildBot users password. If this is left empty,
+                        we'll prompt you for it.
+  --builduser=BBBUILDUSER
+                        The BuildBot users password. If this is left empty,
+                        we'll prompt you for it.
+  --gitrepo=BBGITREPO   The Git Repo used to get as poky-autobuilder controler
+                        repo. It's generally safe to ignore this.
+  --masterdir=BBMASTERDIR
+                        The directory you want the master/slave installed to.
+                        If this is left empty, we'll use ~/poky-master.
+  --slavedir=BBSLAVEDIR
+                        The directory you want the master/slave installed to.
+                        If this is left empty, we'll use ~/poky-slave.
+  --outputdir=BBOUTPUTDIR
+                        The directory you want the build output to go to. If
+                        this is left empty, we'll use ~/poky-slave/output.
+  --sourcedir=BBSOURCEDIR
+                        The directory you want the build source to go to. If
+                        this is left empty, we'll use ~/poky-slave/source.
+  --pstagedir=BBPSTAGINGDIR
+                        The directory you want the package staging to occur
+                        in. If this is left empty, we'll use ~/poky-
+                        slave/pstaging.
+  --controldir=BBCONTROLDIR
+                        The directory you want to install poky autobuilder
+                        control scripts into. If this is left empty, we'll use
+                        ~/poky-autobuilder.
+  --maxbuilds=BBMAXBUILDS
+                        The max number of builds you want saved. If this is
+                        left empty, we'll set this to 1.
+  --maxlogs=BBMAXLOGS   The max number of logs you want saved. If this is left
+                        empty, we'll set this to 10.
+  --adminmail=BBADMINMAIL
+                        The administrator email address. If left unset we set
+                        it to current user @ localhost
+
+Master, Slave or Both
+=============================
+
+You must specify if the installation is for a Build controller, a Builder or Both.
diff --git a/README b/README
index 41ef130..0c33923 100644
--- a/README
+++ b/README
@@ -5,10 +5,10 @@ A lot of the autobuilder setup is individual to the circumstances of the
 user, but this repository contains sample materials which can be used as
 a starting point.
 
-scripts/poky-setup-autobuilder
+scripts/poky-setup-autobuilder [options] master|slave|both
 
 The core script which when run, sets up the current user with a buildbot
-install, and sample master and slave configurations.
+install. Please see INSTALL for more details.
 
 scripts/pokyABConfig.py
 
@@ -36,5 +36,5 @@ server. Designed to be run from cron.
 
 scripts/poky-autobuild-upload-share
 
-The coutnerpart to poky-autobuild-upload which shares the images (and
+The counterpart to poky-autobuild-upload which shares the images (and
 ensures no partly uploaded image is shared). Designed to be run from cron.
diff --git a/scripts/poky-setup-autobuilder b/scripts/poky-setup-autobuilder
index 799765a..585878c 100755
--- a/scripts/poky-setup-autobuilder
+++ b/scripts/poky-setup-autobuilder
@@ -1,24 +1,25 @@
-#!/bin/bash
+#!/usr/bin/env python
 #
-# This script gives an example of how to set up a Poky autobuilder system 
-# by combining Poky with buildbot.
+# Poky Automated Build Server Installation Script. This script
+# assists in setting up an autobuilder setup.
 #
-# For simplicity in this script, the system is setup in its own user account 
-# which is shared by both the buildbot "master" and the buildbot "slave".
+# For simplicity in this script, we assume that the build systems
+# are setup with a user account which is shared by both the buildbot 
+# "master" and the buildbot "slave" and that this script is being run
+# as that user.
 #
-# The master is responsible for scheduling work for the slave to do, the slave 
-# is the actual Poky builds. In reality there can be multiple slaves, each on 
-# different machines serving one master.
+# The master is responsible for scheduling work for the slave to do, 
+# the slave is the actual Poky builds. In reality there can be multiple 
+# slaves, each on different machines serving one master.
 #
 # The autobuilder is assumed to have its own configuration in an SCM like the 
-# poky-autobuilder repository. This script shows how to add a simple updater 
-# script which updates the master when any configuration change occurs.
+# poky-autobuilder repository. You probably shouldn't use the main git repo
+# as that is not assured to be stable.
 #
-# To use this script, add a new user to your system, edit the variables below 
-# according to your preferences and then run this script as that user.
+# To use this script, add a new user to your system, and read ../INSTALL
 #
-# Some random notes are included below for using this behind firewalls through
-# proxy servers.
+# The older version of this script dealt with using it behind a firewall through
+# a proxy. I've included those notes in ../INSTALL
 #
 # Random notes on Prerequisites: 
 #   For Fedora 10: "yum install mc wget python-devel python-twisted git cvs \
@@ -26,171 +27,354 @@
 #   For Ubuntu 9.04: "apt-get install mc git-core python-twisted cvs \
 #                    subversion help2man patch texi2html texinfo diffstat gcc \
 #                    gawk g++ mercurial"
+##
+# Copyright (C) 2010 Intel Corp.
 #
-# Key variables (must be changed)
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License as published by
+# the Free Software Foundation; either version 2 of the License, or
+# (at your option) any later version.
 #
-export BHOME="/home/pokybuild"
-export BUILDPASS="builder1pass"
-export ADMINADDR="username@example.com"
-export SLAVEDESC="Poky Autobuilder Example"
-export BUILDERHOSTNAME="server.hostname.com"
-export CONTROLREPO="git://my.git.server/autobuilder-repo.git"
-
-#
-# Futher variables (defaults will work)
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
 #
-BMASTER="$BHOME/poky-master"
-BSLAVE="$BHOME/poky-slave"
-CONTROLPATH="$BHOME/poky-autobuilder"
-UPDATESCRIPT="$CONTROLPATH/scripts/poky-autobuild-update-config"
-BUILDOUTPUT="$BHOME/output"
-SOURCEDIR="$BHOME/sources"
-PSTAGEDIR="$BHOME/pstaging"
-MAXBUILDS=1
-MAXLOGS=10
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 
-#
-# Proxy Setup (optional)
-#
+import optparse
+import sys
+import getpass
+import struct
+import fcntl
+import os
+import signal
+import urllib2
+import tarfile
+import shutil
+from socket import gethostname
 
-# Add this to ~/subversion/servers
-#http-proxy-host = proxy.site.com 
-#http-proxy-port = PORTNUM
-# and then uncomment the following after adapting to your site config
-#export http_proxy="proxy.site.com:PORTNUM"
-#echo "[core]
-#    gitproxy = none for site.com 
-#    gitproxy = $BHOME/bin/poky-git-proxy-socks-command" > $BHOME/.gitconfig
-#if [ ! -x $BHOME/bin/poky-git-proxy-socks-command ]; then
-#    echo "#! /bin/bash
-#GIT_PROXY_HOST=proxy.site.com 
-#GIT_PROXY_PORT=PORTNUM
-#$BHOME/bin/poky-git-proxy-socks -S \$GIT_PROXY_HOST:\$GIT_PROXY_PORT \$@" > $BHOME/bin/poky-git-proxy-socks-command
-#    chmod a+x $BHOME/bin/poky-git-proxy-socks-command
-#fi
-#if [ ! -x $BHOME/bin/poky-git-proxy-socks ]; then
-#    wget http://git.pokylinux.org/cgit.cgi/poky/plain/scripts/poky-git-proxy-socks.c -O $BHOME/bin/poky-git-proxy-socks.c
-#    gcc $BHOME/bin/poky-git-proxy-socks.c -o $BHOME/bin/poky-git-proxy-socks
-#fi
-#if [ ! -e $BHOME/.ssh/config ]; then
-#    echo "Host *
-#  ProxyCommand poky-git-proxy-socks-command %h %p $@" > $BHOME/.ssh/config
-#fi
-
-cd $BHOME
 
 #
-# Install Buildbot
+# build-bot slave source does not contain the Makefile anymore, so I'm creating it here.
 #
-export PATH=~/bin:~/poky-autobuilder/scripts:$PATH
-export PYTHONPATH=~/lib/python2.6/site-packages
-mkdir -p $PYTHONPATH
-if [ ! -f buildbot-0.8.0.tar.gz ]; then
-    wget http://downloads.sourceforge.net/buildbot/buildbot-0.8.0.tar.gz
-fi
-if [ ! -d buildbot-0.8.0 ]; then
-    tar -xvzf buildbot-0.8.0.tar.gz
-    cd $BHOME/buildbot-0.8.0
-    python ./setup.py install --prefix=~/
-fi
-if [ ! -e $HOME/.profile ]; then
-    echo "export PATH=~/bin:~/poky-autobuilder/scripts:\$PATH" > $HOME/.profile
-    echo "export PYTHONPATH=~/lib/python2.6/site-packages" >> $HOME/.profile
-fi
+def makeMakefile(Dir):
+    bbMakefile = """
+# -*- makefile -*-
 
-#
-# Setup the buildbot master
-#
-if [ ! -d $BMASTER ]; then
-    mkdir $BMASTER
-    cd $BMASTER
-    buildbot create-master --log-count=$MAXLOGS $BMASTER
-    mv $BMASTER/Makefile.sample $BMASTER/Makefile
-    cp $BHOME/poky-autobuilder/config/pokyABConfig.py $BMASTER
-    echo "c = BuildmasterConfig = {}" > master.cfg
-    echo "from buildbot.buildslave import BuildSlave" >> master.cfg
-    echo "c['slaves'] = [BuildSlave(\"builder1\", \"$BUILDPASS\", max_builds=$MAXBUILDS)]" >> master.cfg
-    echo "c['slavePortnum'] = 9989" >> master.cfg
-    echo "" >> master.cfg
-    echo "c['status'] = []" >> master.cfg
-    echo "from buildbot.status.html import WebStatus" >> master.cfg
-    echo "c['status'].append(WebStatus(http_port=8010))" >> master.cfg
-    echo "from buildbot.status import mail" >> master.cfg
-    echo "c['status'].append(mail.MailNotifier(fromaddr=\"username@example.com\"," >> master.cfg
-    echo "                                  extraRecipients=[\"username@example.com\"]," >> master.cfg
-    echo "                                  mode=\"failing\"," >> master.cfg
-    echo "                                  sendToInterestedUsers=False))" >> master.cfg
-    echo "" >> master.cfg
-    echo "c['debugPassword'] = \"debugpassword\"" >> master.cfg
-    echo "c['buildbotURL'] = \"http://$BUILDERHOSTNAME:8010/\"" >> master.cfg
-    echo "" >> master.cfg
-    echo "import pokyABConfig" >> master.cfg
-    echo "reload(pokyABConfig)" >> master.cfg
-    echo "c['builders'] = pokyABConfig.poky_builders" >> master.cfg
-    echo "c['change_source'] = pokyABConfig.poky_sources" >> master.cfg
-    echo "c['schedulers'] = pokyABConfig.poky_sched" >> master.cfg
-    echo "c['projectName'] = pokyABConfig.poky_projname" >> master.cfg
-    echo "c['projectURL'] = pokyABConfig.poky_projurl" >> master.cfg
-fi
+# This is a simple makefile which lives in a buildmaster
+# directory (next to the buildbot.tac file). It allows you to start/stop the
+# master by doing 'make start' or 'make stop'.
 
-#
-# Setup the buildbot slave
-#
-if [ ! -d $BSLAVE ]; then
-    mkdir $BSLAVE
-    cd $BSLAVE
-    buildbot create-slave --umask=000 --log-count=$MAXLOGS $BSLAVE localhost:9989 builder1 $BUILDPASS
-    mv $BSLAVE/Makefile.sample $BSLAVE/Makefile
-    echo $ADMINADDR > $BSLAVE/info/admin
-    echo $SLAVEDESC > $BSLAVE/info/host
-fi
+# The 'reconfig' target will tell a buildmaster to reload its config file.
 
-#
-# Checkout a git repository to control the autobuilder
-#
-if [ ! -d $CONTROLPATH ]; then
-    cd `dirname $CONTROLPATH`
-    git clone $CONTROLREPO `basename $CONTROLPATH`
-fi
+start:
+	twistd --no_save -y buildbot.tac
 
-#
-# Add the cron entries we need
-#
-crontab -l | grep buildbot -q
-if [ $? != 0 ]; then
-    crontmp=`mktemp`
-    crontab -l > $crontmp
-    echo "@reboot $BHOME/bin/buildbot start $BMASTER" >> $crontmp
-    echo "@reboot $BHOME/bin/buildbot start $BSLAVE" >> $crontmp
-    echo "0,10,20,30,40,50 * * * * $UPDATESCRIPT" >> $crontmp
-    crontab $crontmp
-fi
+stop:
+	if [ -e twistd.pid ]; \
+	then kill `cat twistd.pid`; \
+	else Nothing to stop."; \
+	fi
 
-#
-# Create a config file with all our settings in - this file
-# gets source'd by some of our build scripts
-#
-CFILE=$HOME/.pokyautobuild
-if [ ! -f $CFILE ]; then
-    echo "BHOME=$BHOME" > $CFILE
-    echo "BUILDPASS=$BUILDPASS" >> $CFILE
-    echo "BMASTER=$BMASTER" >> $CFILE
-    echo "BSLAVE=$BSLAVE" >> $CFILE
-    echo "ADMINADDR=$ADMINADDR" >> $CFILE
-    echo "SLAVEDESC=\"$SLAVEDESC\"" >> $CFILE
-    echo "CONTROLREPO=$CONTROLREPO" >> $CFILE
-    echo "CONTROLPATH=$CONTROLPATH" >> $CFILE
-    echo "BUILDOUTPUT=$BUILDOUTPUT" >> $CFILE
-    echo "SOURCEDIR=$BHOME/SOURCEDIR" >> $CFILE
-    echo "PSTAGEDIR=$BHOME/PSTAGEDIR" >> $CFILE
-fi
+reconfig:
+	if [ -e twistd.pid ]; \
+	then kill -HUP `cat twistd.pid`; \
+	else Nothing to reconfig."; \
+	fi
+
+log:
+	if [ -e twistd.log ]; \
+	then tail -f twistd.log; \
+	else Nothing to tail."; \
+	fi
+"""
+    print "Creating Makefile for starting the build master."        
+    fout = open(Dir+"/Makefile", "wb")
+    fout.write(bbMakefile)
+    fout.close()
+
+
+def downloadLocalTarball(buildtype):
+    os.chdir(bbInstallerHome)
+    if buildtype == "master":
+        URL = bbMasterDownloadUrl
+    elif buildtype == "slave":
+        URL = bbSlaveDownloadUrl
+    try:
+        fileopener = urllib2.build_opener()
+        rawfile = fileopener.open(URL)
+        tarball = rawfile.read()
+        bbInstallFile = "./" + URL.rpartition("/")[2]
+        fout = open(bbInstallFile, "wb")
+        fout.write(tarball)
+        fout.close()
+    except:
+        print "Issues downloading " + URL + " were encountered. Exiting"
+        sys.exit(1)
+    try:
+        print "Extracting " + bbInstallFile        
+        tar =  tarfile.open(bbInstallFile)
+        tar.extractall() 
+        tar.close()
+    except:
+        print "Issues extracting the tarball from " + URL
+        sys.exit(1)
+    try:
+        bbSourceDir = bbInstallerHome + "/" + bbInstallFile.rpartition("/")[2].replace(".tar.gz", "")
+        print "Configuring " + bbSourceDir        
+        os.chdir(bbSourceDir)
+        os.system ("echo 'export PYTHONPATH=" + bbSourceDir + "/lib/python2.6/site-packages/:$PYTHONPATH' >> "  
+            + bbHome + "/.profile" )
+        if buildtype == "master":
+            bbInstallDir = bbMasterDir
+        elif buildtype == "slave":
+            bbInstallDir = bbSlaveDir
+        cmd = "cd " + bbSourceDir + "; export PYTHONPATH=" + bbMasterDir + "/lib/python2.6/site-packages/:$PYTHONPATH; python ./setup.py install --prefix=" + bbInstallDir
+        os.system (cmd) 
+    except:
+        print "Issues Configuring "
+        sys.exit(1)
+
+#BuildBot download parameters
+bbVersion = "0.8.3"
+bbMasterDownloadUrl = "http://buildbot.googlecode.com/files/buildbot-" + bbVersion + ".tar.gz"
+bbSlaveDownloadUrl = "http://buildbot.googlecode.com/files/buildbot-slave-" + bbVersion + ".tar.gz"
+bbConfigDownloadUrl = None
+bbInstallerHome = os.getcwd()
+bbInstallFile = ""
+# We need the expanded path for ~ later
+bbHome = os.path.expanduser('~')
+bbType = None
+bbSlaveDesc="Poky Autobuilder Example"
+
+usage  = """%prog [options] master|slave|both   
+
+Set up a poky autobuilder instance using BuildBot.
+"""
+parser = optparse.OptionParser(usage=usage)
+parser.add_option( "--buildpasswd", help = "The BuildBot users password. If this is left empty, we'll prompt you for it.",
+                       action = "store", dest = "bbBuildPasswd", default = "" )
+parser.add_option( "--builduser", help = "The BuildBot users password. If this is left empty, we'll prompt you for it.",
+                       action = "store", dest = "bbBuildUser", default = "" )
+parser.add_option( "--gitrepo", help = "The Git Repo used to get as poky-autobuilder controler repo. It's generally safe to ignore this.",
+                       action = "store", dest = "bbGitRepo", default = "" )
+parser.add_option( "--masterdir", help = "The directory you want the master/slave installed to. If this is left empty, we'll use ~/poky-master.",
+                       action = "store", dest = "bbMasterDir", default = "" )
+parser.add_option( "--slavedir", help = "The directory you want the master/slave installed to. If this is left empty, we'll use ~/poky-slave.",
+                       action = "store", dest = "bbSlaveDir", default = "" )
+parser.add_option( "--outputdir", help = "The directory you want the build output to go to. If this is left empty, we'll use ~/poky-slave/output.",
+                       action = "store", dest = "bbOutputDir", default = "" )
+parser.add_option( "--sourcedir", help = "The directory you want the build source to go to. If this is left empty, we'll use ~/poky-slave/source.",
+                       action = "store", dest = "bbSourceDir", default = "" )
+parser.add_option( "--pstagedir", help = "The directory you want the package staging to occur in. If this is left empty, we'll use ~/poky-slave/pstaging.",
+                       action = "store", dest = "bbPStagingDir", default = "" )
+parser.add_option( "--controldir", help = "The directory you want to install poky autobuilder control scripts into. If this is left empty, we'll use ~/poky-autobuilder.",
+                       action = "store", dest = "bbControlDir", default = "" )
+parser.add_option( "--maxbuilds", help = "The max number of builds you want saved. If this is left empty, we'll set this to 1.",
+                       action = "store", dest = "bbMaxBuilds", default = "1" )
+parser.add_option( "--maxlogs", help = "The max number of logs you want saved. If this is left empty, we'll set this to 10.",
+                       action = "store", dest = "bbMaxLogs", default = "10" )                        
+parser.add_option( "--adminmail", help = "The administrator email address. If left unset we set it to current user @ localhost",
+                       action = "store", dest = "bbAdminMail", default = "10" )                        
+
+options, args = parser.parse_args( sys.argv )
+
+# We need to decide if we're doing a master or slave install or both
+if len(args) != 2:
+    parser.error("""
+    You must specify if you wish to create master, slave or both. 
+    If you wish to have master and slave on different machines, you should not use 'both'.
+    
+    """ + usage )
+elif len(args) == 2 and (args[1].lower() == "master" or 
+    args[1].lower() == "slave" or args[1].lower() == "both"):
+    bbType = args[1]
+
+
+# I dislike having to reference options.*
+# Let's dump these into variables
+for attr in dir(options):
+    vars()[attr] = getattr(options,attr)
+
+if bbAdminMail == "":
+    bbAdminMail = os.getusername() + "@localhost"
+
+if bbGitRepo == "":
+    bbGitRepo = "ggit://my.git.server/autobuilder-repo.git"
+
+if bbBuildUser == "":
+    bbBuildUser = raw_input("Please enter the account name that is allowed to kickstart builds and then hit Enter."
+        + " \nThis is not the user the buildbot process runs under.\n")
+
+if bbBuildPasswd == "":
+    bbBuildPasswd = getpass.getpass(prompt="Please enter the password used for the account that is allowed to kickstart" 
+        + " builds and then hit Enter. \nThis should not be the password of the user the buildbot process runs under. \n")
+
+if bbMasterDir == "":
+    bbMasterDir = bbHome + "/poky-master/"
+
+if bbSlaveDir == "":
+    bbSlaveDir = bbHome + "/poky-slave/"
+
+if bbOutputDir == "":
+    bbOutputDir = bbHome + "/poky-slave/output/"
+
+if bbPStagingDir == "":
+    bbPStagingDir = bbHome + "/poky-slave/pstaging/"
+
+if bbType == "master" or bbType == "both":
+    try:
+        os.mkdir(bbMasterDir)
+    except:
+        print bbMasterDir + " already exists."
+        pass
+
+    print "Getting BuildBot Master Source"
+    downloadLocalTarball("master")
+    print "Setting up the BuildBot Master"
+    os.system ("echo 'export PYTHONPATH=" + bbMasterDir + "/lib/python2.6/site-packages/:$PYTHONPATH' >> "  
+        + bbHome + "/.profile" )
+    os.system ("cd " + bbMasterDir + "/bin; export PYTHONPATH=" + bbMasterDir 
+        + "/lib/python2.6/site-packages/:$PYTHONPATH; ./buildbot create-master --log-count=" 
+        + bbMaxLogs + " " + bbMasterDir)
+
+    try:
+        makeMakefile(bbMasterDir)        
+    except:
+        print "Something went wrong creating the makefile"
+        sys.exit(1)
+
+    try:    
+        print "Creating the controller class directory in " + bbControlDir
+        shutil.copytree(bbInstallerHome + "/class", bbControlDir + "/class")
+    except OSError:
+        print "Directory probably exists. Skipping"
+        pass
+
+    try:
+        print "Creating the controller scripts directory in " + bbControlDir
+        shutil.copytree(bbInstallerHome + "/scripts", bbControlDir + "/scripts")
+    except OSError:
+        print "Directory probably exists. Skipping"
+        pass
+
+    try:
+        print "Creating a basic pokyABConfig.py in " + bbMasterDir
+        shutil.copy(bbInstallerHome + "/scripts/pokyABConfig.py", bbMasterDir)
+    except OSError:
+        print "Something went wrong. Skipping"
+        pass
+
+    # Create the poky master.cfg 
+    print "Creating the master.cfg  in " + bbMasterDir
+    bbMasterConfig = """
+c = BuildmasterConfig = {}
+from buildbot.buildslave import BuildSlave
+c['slaves'] = [BuildSlave("builder1", %s, max_builds=%s)]
+c['slavePortnum'] = 9989
+
+c['status'] = []
+from buildbot.status.html import WebStatus
+c['status'].append(WebStatus(http_port=8010))
+from buildbot.status import mail
+c['status'].append(mail.MailNotifier(fromaddr=\"username@example.com\",
+                                  extraRecipients=[\"username@example.com\"],
+                                  mode=\"failing\",
+                                  sendToInterestedUsers=False))
+
+c['debugPassword'] = \"debugpassword\"
+c['buildbotURL'] = \"http://%s:8010/\"
+
+import pokyABConfig
+reload(pokyABConfig)
+c['builders'] = pokyABConfig.poky_builders
+c['change_source'] = pokyABConfig.poky_sources
+c['schedulers'] = pokyABConfig.poky_sched
+c['projectName'] = pokyABConfig.poky_projname
+c['projectURL'] = pokyABConfig.poky_projurl
+
+""" % (bbBuildPasswd, bbMaxBuilds, gethostname())
+
+    fout = open(bbMasterDir+"/master.cfg", "wb")
+    fout.write(bbMasterConfig)
+    fout.close()
+    print "Wrote master.cfg to " + bbMasterDir +"/master.cfg"
+
+
+if bbType == "slave" or bbType == "both":
+    try:
+        os.mkdir(bbSlaveDir) 
+        os.mkdir(bbOutputDir) 
+        os.mkdir(bbPStagingDir) 
+
+    except:
+        pass
+    
+    print "Getting BuildBot Slave Source"    
+    downloadLocalTarball("slave")
+    os.system ("echo 'export PYTHONPATH=" + bbSlaveDir + "/lib/python2.6/site-packages/:$PYTHONPATH' >> "  
+        + bbHome + "/.profile" )
+    os.system ("cd " + bbSlaveDir + "/bin; export PYTHONPATH=" + bbSlaveDir 
+        + "/lib/python2.6/site-packages/:$PYTHONPATH; ./buildslave create-slave " + bbSlaveDir + " localhost:9989 "
+        + bbBuildUser + " " + bbBuildPasswd)
+    
+    try:
+        makeMakefile(bbSlaveDir)        
+    except:
+        print "Something went wrong creating the makefile"
+        sys.exit(1)
+
+    try:
+        fout = open(bbSlaveDir+"/info/admin", "wb")
+        fout.write(bbAdminMail)
+        fout.close()
+    except:
+        print "Couldn't write the admin email to " + bbSlaveDir + "/info/admin"
+        pass
+         
+    try:
+        fout = open(bbSlaveDir+"/info/host", "wb")
+        fout.write(bbSlaveDesc)
+        fout.close()
+    except:
+        print "Couldn't write the builder description to" + bbSlaveDir + "/info/host"
+        pass
+
+    if bbControlDir != "":
+        print "Creating repo"
+        os.system ("git clone " + bbGitRepo + " " + bbControlDir)
+    else:
+        bbControlDir = bbHome + "/poky-autobuilder"
+
+    bbPokyABDotFile = """
+    BHOME=%s
+    BUILDPASS=%s 
+    BMASTER=%s 
+    BSLAVE=%s 
+    ADMINADDR=%s 
+    SLAVEDESC=%s 
+    CONTROLREPO=%s 
+    CONTROLPATH=%s 
+    BUILDOUTPUT=%s 
+    SOURCEDIR=%s 
+    PSTAGEDIR=%s 
+
+""" % (bbHome, bbBuildPasswd, bbMasterDir, bbSlaveDir, bbAdminMail, bbSlaveDesc, bbGitRepo, bbControlDir, bbOutputDir, bbSourceDir, bbPStagingDir)
+   
+    fout = open(bbHome+"/.pokyautobuild", "wb")
+    fout.write(bbAdminMail)
+    fout.close()
 
 #
 # Inform the user about the remaining configuration needed
-#
-echo
-echo "Installation complete. Please review the output above for any errors."
-echo "Then edit the master.cfg file in $BMASTER and start the build master and"
-echo "build slave by running 'make start' in $BMASTER and $BSLAVE directories."
-echo
+# We should correct this for slave only/master only builds
+print """
+Installation complete. Please review the output above for any errors.
+Then edit the master.cfg file in %s and start the build master and
+build slave by running 'make start' in %s and %s directories.
+""" % (bbMasterDir, bbMasterDir, bbSlaveDir)
+
 
-- 
1.7.1


