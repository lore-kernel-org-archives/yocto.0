Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B609DE00796; Mon, 11 Aug 2014 20:16:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D0ABE00796
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 20:16:47 -0700 (PDT)
Received: by mail-pa0-f51.google.com with SMTP id ey11so12095827pad.24
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 20:16:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ip1vBOFRbH6iloCFCGajaj0oCX3olQW93mfHMGsC+kU=;
	b=FFLIZ07YaHpRFRkgmXbVbk9hAXWDlkWSxdeJmH0XMV4B1LOKz+hvYq/aEU8HeixHYD
	nNXJrYQQ3Spzj3rwHC2AQAhtlIV8CSqKi3RAZ/CUAIl5h2Txhtpbp31T971RIM6GMrNZ
	DT2GpbMaHGNUhCKnQgkurX45mWsLLXNG3ARxskpjiuB1fuOMSF74Pcp7/pokNum8syi+
	2UxjuorOuhsBCaTfZp3NR3LvjF9BO37ckNvlBTC8wW7URBqXHijnsMNUPhJRR42XKP1M
	L9xlWvzmzH9/5gVXOJPVjpOoaKgc0PA0BJ481SNuomeMX4S26AQgR1+ekjVQHoS1SFUp
	0omQ==
X-Gm-Message-State: ALoCoQnpJztS1tj2CPBnLyqLt/r5f7V8pRhaLuqpQFVaeqpMrOn2Nh/yZ4lxTbhe11oR9+mBGusL
X-Received: by 10.70.100.34 with SMTP id ev2mr1717985pdb.81.1407813406744;
	Mon, 11 Aug 2014 20:16:46 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	cm7sm19863403pdb.74.2014.08.11.20.16.45 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 11 Aug 2014 20:16:45 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Aug 2014 20:16:39 -0700
Message-Id: <1407813399-31942-3-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1407813399-31942-1-git-send-email-akuster@mvista.com>
References: <1407813399-31942-1-git-send-email-akuster@mvista.com>
Subject: [meta-security][PATCH 2/2] tripwire: Add files for package support
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 12 Aug 2014 03:16:52 -0000

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-security/tripwire/files/tripwire.cron   |    8 +
 recipes-security/tripwire/files/tripwire.sh     |    9 +
 recipes-security/tripwire/files/tripwire.txt    |   69 ++
 recipes-security/tripwire/files/twcfg.txt       |   15 +
 recipes-security/tripwire/files/twinstall.sh    |  320 +++++++
 recipes-security/tripwire/files/twpol-yocto.txt | 1107 +++++++++++++++++++++++
 6 files changed, 1528 insertions(+)
 create mode 100644 recipes-security/tripwire/files/tripwire.cron
 create mode 100644 recipes-security/tripwire/files/tripwire.sh
 create mode 100644 recipes-security/tripwire/files/tripwire.txt
 create mode 100644 recipes-security/tripwire/files/twcfg.txt
 create mode 100644 recipes-security/tripwire/files/twinstall.sh
 create mode 100644 recipes-security/tripwire/files/twpol-yocto.txt

diff --git a/recipes-security/tripwire/files/tripwire.cron b/recipes-security/tripwire/files/tripwire.cron
new file mode 100644
index 0000000..2035508
--- /dev/null
+++ b/recipes-security/tripwire/files/tripwire.cron
@@ -0,0 +1,8 @@
+#!/bin/sh
+HOST_NAME=`uname -n`
+if [ ! -e /var/lib/tripwire/${HOST_NAME}.twd ] ; then
+	echo "****    Error: Tripwire database for ${HOST_NAME} not found.    ****"
+	echo "**** Run "/etc/tripwire/twinstall.sh" and/or "tripwire --init". ****"
+else
+        test -f /etc/tripwire/tw.cfg &&  /usr/sbin/tripwire --check
+fi
diff --git a/recipes-security/tripwire/files/tripwire.sh b/recipes-security/tripwire/files/tripwire.sh
new file mode 100644
index 0000000..4276d10
--- /dev/null
+++ b/recipes-security/tripwire/files/tripwire.sh
@@ -0,0 +1,9 @@
+#!/bin/sh
+HOST_NAME=`uname -n`
+if [ ! -e /var/lib/tripwire/${HOST_NAME}.twd ] ; then
+	echo "****    WARNING: Tripwire database for ${HOST_NAME} not found.    ****"
+	echo "**** Run "/etc/tripwire/twinstall.sh" and/or "tripwire --init". ****"
+	# Note: /etc/tripwire/twinstall.sh creates and initializes tripwire
+	# database (i.e tripwire --init).
+	# Example: . /etc/tripwire/twinstall.sh 2> /dev/null
+fi
diff --git a/recipes-security/tripwire/files/tripwire.txt b/recipes-security/tripwire/files/tripwire.txt
new file mode 100644
index 0000000..332d004
--- /dev/null
+++ b/recipes-security/tripwire/files/tripwire.txt
@@ -0,0 +1,69 @@
+Post-Installation Instructions
+1. Run the configuration script: /etc/tripwire/twinstall.sh to sign these files. This script walks you through the processes of setting passphrases and signing the Tripwire policy and configuration files. 
+Note: Once encoded and signed, the configuration file should not be renamed or moved.
+2. Initialize the Tripwire database file. (/usr/sbin/tripwire--init)
+3. Run the first integrity check. (/usr/sbin/tripwire--check)
+4. Edit the configuration file (twcfg.txt) with a text editor, if desired.
+5. Edit the policy file (twpol.txt) with a text editor, if desired.
+
+Note: If you plan to modify the policy file, we recommend you do so before running the configuration script. If you modify the policy file after running the configuration script, you must re-run the configuration file before initializing the database file. 
+
+Modifying the Policy File
+You can specify how Tripwire software checks your system in the Tripwire policy file (twpol.txt). A default policy file is included in the Tripwire software installation. We recommend you tailor this policy file to fit your particular system. Tailoring the policy file greatly increases Tripwire software's ability to ensure the integrity of your system. 
+
+Locate the default policy file at  /etc/tripwire/twpol.txt. An example policy file (located at   /usr/doc/tripwire-VER#-REL#/policyguide.txt) is included to help you learn the policy language. Read the sample policy file and the comments in the sample policy file to learn the policy language. 
+
+After you modify the policy file, follow the Post-Installation Instructions (run the configuration script). This script signs the modified policy file and renames it to tw.pol. This is the active policy file that runs as part of the Tripwire software. 
+
+Selecting Passphrases
+Tripwire files are signed or encrypted using site or local keys. These keys are protected by passphrases. When selecting passphrases, the following recommendations apply:
+Use at least eight alphanumeric and symbolic characters for each passphrase. The maximum length of a passphrase is 1023 characters. Quotes should not be used as passphrase characters.
+
+Assign a unique passphrase for the site key. The site key passphrase protects the site key, which is used to sign Tripwire software configuration and policy files. Assign a unique passphrase for the local key. The local key signs Tripwire database files. The local key may sign the Tripwire report files also. 
+
+Store the passphrases in a secure location. There is no way to remove encryption from a signed file if you forget your passphrase. If you forget the passphrases, the files are unusable. In that case you must reinitialize the baseline database.
+
+Initializing the Database 
+In Database Initialization mode, Tripwire software builds a database of filesystem objects based on the rules in the policy file. This database serves as the baseline for integrity checks. The syntax for Database Initialization mode is:
+tripwire  --init 
+
+Running an Integrity Check
+The Integrity Check mode compares the current file system objects with their properties recorded in the Tripwire database. Violations are printed to stdout. The report file is saved and can later be accessed by twprint. An email option enables you to send email. The syntax for Integrity Check mode is:
+tripwire --check 
+
+Printing Reports - twprint Print Report Mode
+The twprint --print-report mode prints the contents of a Tripwire report. If you do not specify a report with the --twrfile or -r command-line argument, the default report file specified by the configuration file REPORTFILE variable is used. 
+Example: On a machine named LIGHTHOUSE, the command would be:
+./twprint -m r --twrfile LIGHTHOUSE-19990622-021212.twr
+
+Updating the Database after an Integrity Check
+Database Update mode enables you to update the Tripwire database after an integrity check if you determine that the violations discovered are valid. This update process saves time by enabling you to update the database without having to re-initialize it. It also enables selective updating, which cannot be done through re-initialization. The syntax for Database Update mode is:
+tripwire --update 
+
+Updating the Policy File
+Change the way that Tripwire software scans the system by changing the rules in the policy file. You can  then update the database without a complete re-initialization. This saves a significant amount of time and preserves security by keeping the policy file synchronized with the database it uses.  The syntax for Policy Update mode is:
+tripwire  --update-policy 
+
+Testing email functions
+Test mode tests the software's email notification system, using the settings currently specified in the configuration file. The syntax for Email Test Reporting mode is:
+tripwire  --test 
+
+Tripwire Components
+The policy file begins as a text file containing comments, rules, directives, and variables. These dictate the way Tripwire software checks your system. Each rule in the policy file specifies a system object to be monitored. Rules also describe which changes to the object to report, and which to ignore. 
+
+System objects are the files and directories you wish to monitor. Each object is identified by an object name. A property refers to a single characteristic of an object that Tripwire software can monitor. Directives control conditional processing of sets of rules in a policy file. During installation, the text policy file is encrypted and renamed, and becomes the active policy file. 
+
+The database file is an important component of Tripwire software. When first installed, Tripwire software uses the policy file rules to create the database file. The database file is a baseline "snapshot" of the system in a known secure state. Tripwire software compares this baseline against the current system to determine what changes have occurred. This is an integrity check.
+
+When you perform an integrity check, Tripwire software produces report files. Report files summarize any changes that violated the policy file rules during the integrity check. You can view the report file in a variety of formats, at varying levels of detail.  
+
+The Tripwire configuration file stores system-specific information, such as the location of Tripwire data files. Tripwire software generates some of the configuration file information during installation. The system administrator can change parameters in the configuration file at any time. The configuration file variables POLFILE, DBFILE, REPORTFILE, SITEKEYFILE, and LOCALKEYFILE specify where the policy file, database file, report files, and site and local key files reside. These variables must be defined or the configuration file is invalid. If any of these variables are undefined, an error occurs on execution of Tripwire software and the program exits. 
+
+Tripwire Help
+All Tripwire commands support the help arguments. Example: To get help with Create Configuration File mode, type: ./twadmin --help --create-cfgfile
+
+-?		Display usage and version information
+--help		Display all command modes
+--help all	Display help for all command modes
+--help [mode]	Display help for current command mode
+--version	Display version information
diff --git a/recipes-security/tripwire/files/twcfg.txt b/recipes-security/tripwire/files/twcfg.txt
new file mode 100644
index 0000000..131b097
--- /dev/null
+++ b/recipes-security/tripwire/files/twcfg.txt
@@ -0,0 +1,15 @@
+ROOT                   =/usr/sbin
+POLFILE                =/etc/tripwire/tw.pol
+DBFILE                 =/var/lib/tripwire/$(HOSTNAME).twd
+REPORTFILE             =/var/lib/tripwire/report/$(HOSTNAME)-$(DATE).twr
+SITEKEYFILE            =/etc/tripwire/site.key
+LOCALKEYFILE           =/etc/tripwire/$(HOSTNAME)-local.key
+EDITOR                 =/bin/nano
+LATEPROMPTING          =false
+LOOSEDIRECTORYCHECKING =false
+MAILNOVIOLATIONS       =true
+EMAILREPORTLEVEL       =3
+REPORTLEVEL            =3
+MAILMETHOD             =SENDMAIL
+SYSLOGREPORTING        =false
+MAILPROGRAM            =/usr/lib/sendmail -t
diff --git a/recipes-security/tripwire/files/twinstall.sh b/recipes-security/tripwire/files/twinstall.sh
new file mode 100644
index 0000000..7d1b63f
--- /dev/null
+++ b/recipes-security/tripwire/files/twinstall.sh
@@ -0,0 +1,320 @@
+#!/bin/sh
+
+########################################################################
+########################################################################
+##
+## Tripwire(R) 2.3 for LINUX(R) Post-RPM installation script
+##
+## Copyleft information contained in footer
+##
+########################################################################
+########################################################################
+
+##=======================================================
+## Setup
+##=======================================================
+
+# We can assume all the correct tools are in place because the
+# RPM installed, didn't it?
+
+##-------------------------------------------------------
+## Set HOST_NAME variable
+##-------------------------------------------------------
+HOST_NAME='localhost'
+if uname -n > /dev/null 2> /dev/null ; then
+	HOST_NAME=`uname -n`
+fi
+
+##-------------------------------------------------------
+## Program variables - edited by RPM during initial install
+##-------------------------------------------------------
+
+# Site Passphrase variable
+TW_SITE_PASS="tripwire"
+
+# Complete path to site key
+SITE_KEY="/etc/tripwire/site.key"
+
+# Local Passphrase variable
+TW_LOCAL_PASS="tripwire"
+
+# Complete path to local key
+LOCAL_KEY="/etc/tripwire/${HOST_NAME}-local.key"
+
+# If clobber==true, overwrite files; if false, do not overwrite files.
+CLOBBER="false"
+
+# If prompt==true, ask for confirmation before continuing with install.
+PROMPT="true"
+
+# Name of twadmin executeable
+TWADMIN="twadmin"
+
+# Path to twadmin executeable
+TWADMPATH=/usr/sbin
+
+# Path to configuration directory
+CONF_PATH="/etc/tripwire"
+
+# Name of clear text policy file
+TXT_POL=$CONF_PATH/twpol.txt
+
+# Name of clear text configuration file
+TXT_CFG=$CONF_PATH/twcfg.txt
+
+# Name of encrypted configuration file
+CONFIG_FILE=$CONF_PATH/tw.cfg
+
+# Path of the final Tripwire policy file (signed)
+SIGNED_POL=`grep POLFILE $TXT_CFG | sed -e 's/^.*=\(.*\)/\1/'`
+
+
+##=======================================================
+## Create Key Files
+##=======================================================
+
+##-------------------------------------------------------
+## If user has to enter a passphrase, give some
+## advice about what is appropriate.
+##-------------------------------------------------------
+
+if [ -z "$TW_SITE_PASS" ] || [ -z "$TW_LOCAL_PASS" ]; then
+cat << END_OF_TEXT
+
+----------------------------------------------
+The Tripwire site and local passphrases are used to
+sign a variety of files, such as the configuration,
+policy, and database files.
+
+Passphrases should be at least 8 characters in length
+and contain both letters and numbers.
+
+See the Tripwire manual for more information.
+END_OF_TEXT
+fi
+
+##=======================================================
+## Generate keys.
+##=======================================================
+
+echo
+echo "----------------------------------------------"
+echo "Creating key files..."
+
+##-------------------------------------------------------
+## Site key file.
+##-------------------------------------------------------
+
+# If clobber is true, and prompting is off (unattended operation)
+# and the key file already exists, remove it.  Otherwise twadmin
+# will prompt with an "are you sure?" message.
+
+if [ "$CLOBBER" = "true" ] && [ "$PROMPT" = "false" ] && [ -f "$SITE_KEY" ] ; then
+        rm -f "$SITE_KEY"
+fi
+
+if [ -f "$SITE_KEY" ] && [ "$CLOBBER" = "false" ] ; then
+	echo "The site key file \"$SITE_KEY\""
+	echo 'exists and will not be overwritten.'
+else
+	cmdargs="--generate-keys --site-keyfile \"$SITE_KEY\""
+	if [ -n "$TW_SITE_PASS" ] ; then
+		cmdargs="$cmdargs --site-passphrase \"$TW_SITE_PASS\""
+     	fi
+	eval "\"$TWADMPATH/$TWADMIN\" $cmdargs"
+	if [ $? -ne 0 ] ; then
+		echo "Error: site key generation failed"
+		exit 1
+        else chmod 640 "$SITE_KEY"
+	fi
+fi
+
+##-------------------------------------------------------
+## Local key file.
+##-------------------------------------------------------
+
+# If clobber is true, and prompting is off (unattended operation)
+# and the key file already exists, remove it.  Otherwise twadmin
+# will prompt with an "are you sure?" message.
+
+if [ "$CLOBBER" = "true" ] && [ "$PROMPT" = "false" ] && [ -f "$LOCAL_KEY" ] ; then
+        rm -f "$LOCAL_KEY"
+fi
+
+if [ -f "$LOCAL_KEY" ] && [ "$CLOBBER" = "false" ] ; then
+	echo "The site key file \"$LOCAL_KEY\""
+	echo 'exists and will not be overwritten.'
+else
+	cmdargs="--generate-keys --local-keyfile \"$LOCAL_KEY\""
+	if [ -n "$TW_LOCAL_PASS" ] ; then
+		cmdargs="$cmdargs --local-passphrase \"$TW_LOCAL_PASS\""
+        fi
+	eval "\"$TWADMPATH/$TWADMIN\" $cmdargs"
+	if [ $? -ne 0 ] ; then
+		echo "Error: local key generation failed"
+		exit 1
+        else chmod 640 "$LOCAL_KEY"
+	fi
+fi
+
+##=======================================================
+## Sign the Configuration File
+##=======================================================
+
+echo
+echo "----------------------------------------------"
+echo "Signing configuration file..."
+
+##-------------------------------------------------------
+## If noclobber, then backup any existing config file.
+##-------------------------------------------------------
+
+if [ "$CLOBBER" = "false" ] && [ -s "$CONFIG_FILE" ] ; then
+	backup="${CONFIG_FILE}.$$.bak"
+	echo "Backing up $CONFIG_FILE"
+	echo "        to $backup"
+	`mv "$CONFIG_FILE" "$backup"`
+	if [ $? -ne 0 ] ; then
+		echo "Error: backup of configuration file failed."
+		exit 1
+	fi
+fi
+
+##-------------------------------------------------------
+## Build command line.
+##-------------------------------------------------------
+
+cmdargs="--create-cfgfile"
+cmdargs="$cmdargs --cfgfile \"$CONFIG_FILE\""
+cmdargs="$cmdargs --site-keyfile \"$SITE_KEY\""
+if [ -n "$TW_SITE_PASS" ] ; then
+	cmdargs="$cmdargs --site-passphrase \"$TW_SITE_PASS\""
+fi
+
+##-------------------------------------------------------
+## Sign the file.
+##-------------------------------------------------------
+
+eval "\"$TWADMPATH/$TWADMIN\" $cmdargs \"$TXT_CFG\""
+if [ $? -ne 0 ] ; then
+	echo "Error: signing of configuration file failed."
+	exit 1
+fi
+
+# Set the rights properly
+chmod 640 "$CONFIG_FILE"
+
+##-------------------------------------------------------
+## We keep the cleartext version around.
+##-------------------------------------------------------
+
+cat << END_OF_TEXT
+
+A clear-text version of the Tripwire configuration file
+$TXT_CFG
+has been preserved for your inspection.  It is recommended
+that you delete this file manually after you have examined it.
+
+END_OF_TEXT
+
+##=======================================================
+## Sign tripwire policy file.
+##=======================================================
+
+echo
+echo "----------------------------------------------"
+echo "Signing policy file..."
+
+##-------------------------------------------------------
+## If noclobber, then backup any existing policy file.
+##-------------------------------------------------------
+
+if [ "$CLOBBER" = "false" ] && [ -s "$POLICY_FILE" ] ; then
+	backup="${POLICY_FILE}.$$.bak"
+	echo "Backing up $POLICY_FILE"
+	echo "        to $backup"
+	mv "$POLICY_FILE" "$backup"
+	if [ $? -ne 0 ] ; then
+		echo "Error: backup of policy file failed."
+		exit 1
+	fi
+fi
+
+##-------------------------------------------------------
+## Build command line.
+##-------------------------------------------------------
+
+cmdargs="--create-polfile"
+cmdargs="$cmdargs --cfgfile \"$CONFIG_FILE\""
+cmdargs="$cmdargs --site-keyfile \"$SITE_KEY\""
+if [ -n "$TW_SITE_PASS" ] ; then
+	cmdargs="$cmdargs --site-passphrase \"$TW_SITE_PASS\""
+fi
+
+##-------------------------------------------------------
+## Sign the file.
+##-------------------------------------------------------
+
+eval "\"$TWADMPATH/$TWADMIN\" $cmdargs \"$TXT_POL\""
+if [ $? -ne 0 ] ; then
+	echo "Error: signing of policy file failed."
+	exit 1
+fi
+
+# Set the proper rights on the newly signed policy file.
+chmod 0640 "$SIGNED_POL"
+
+##-------------------------------------------------------
+## We keep the cleartext version around.
+##-------------------------------------------------------
+
+cat << END_OF_TEXT
+
+A clear-text version of the Tripwire policy file
+$TXT_POL
+has been preserved for your inspection.  This implements
+a minimal policy, intended only to test essential
+Tripwire functionality.  You should edit the policy file
+to describe your system, and then use twadmin to generate
+a new signed copy of the Tripwire policy.
+
+END_OF_TEXT
+
+# Initialize tripwire database
+/usr/sbin/tripwire --init --cfgfile $CONFIG_FILE --site-keyfile $SITE_KEY \
+--local-passphrase $TW_LOCAL_PASS 2> /dev/null
+
+########################################################################
+########################################################################
+#
+#                        TRIPWIRE GPL NOTICES
+#
+# The developer of the original code and/or files is Tripwire, Inc.
+# Portions created by Tripwire, Inc. are copyright 2000 Tripwire, Inc.
+# Tripwire is a registered trademark of Tripwire, Inc.  All rights reserved.
+#
+# This program is free software.  The contents of this file are subject to
+# the terms of the GNU General Public License as published by the Free
+# Software Foundation; either version 2 of the License, or (at your option)
+# any later version.  You may redistribute it and/or modify it only in
+# compliance with the GNU General Public License.
+#
+# This program is distributed in the hope that it will be useful.  However,
+# this program is distributed "AS-IS" WITHOUT ANY WARRANTY; INCLUDING THE
+# IMPLIED WARRANTY OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
+# Please see the GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
+#
+# Nothing in the GNU General Public License or any other license to use the
+# code or files shall permit you to use Tripwire's trademarks,
+# service marks, or other intellectual property without Tripwire's
+# prior written consent.
+#
+# If you have any questions, please contact Tripwire, Inc. at either
+# info@tripwire.org or www.tripwire.org.
+#
+########################################################################
+########################################################################
diff --git a/recipes-security/tripwire/files/twpol-yocto.txt b/recipes-security/tripwire/files/twpol-yocto.txt
new file mode 100644
index 0000000..65f5f75
--- /dev/null
+++ b/recipes-security/tripwire/files/twpol-yocto.txt
@@ -0,0 +1,1107 @@
+  ##############################################################################
+ #                                                                            ##
+############################################################################## #
+#                                                                            # #
+#                          Generic Policy file                               # #
+#                               V1.2.0rh                                     # #
+#                            August 9, 2001                                  # #
+#                                                                            ##
+##############################################################################
+
+
+  ##############################################################################
+ #                                                                            ##
+############################################################################## #
+#                                                                            # #
+# This is the example Tripwire Policy file.  It is intended as a place to    # #
+# start creating your own custom Tripwire Policy file.  Referring to it as   # #
+# well as the Tripwire Policy Guide should give you enough information to    # #
+# make a good custom Tripwire Policy file that better covers your            # #
+# configuration and security needs.  A text version of this policy file is   # #
+# called twpol.txt.                                                          # #
+#                                                                            # #
+# Note that this file is tuned to an 'everything' install of Red Hat Linux.  # #
+# If run unmodified, this file should create no errors on database           # #
+# creation, or violations on a subsiquent integrity check.  However, it is   # #
+# impossible for there to be one policy file for all machines, so this       # #
+# existing one errs on the side of security.  Your Linux configuration will  # #
+# most likey differ from the one our policy file was tuned to, and will      # #
+# therefore require some editing of the default Tripwire Policy file.        # #
+#                                                                            # #
+# The example policy file is best run with 'Loose Directory Checking'        # #
+# enabled. Set LOOSEDIRECTORYCHECKING=TRUE in the Tripwire Configuration     # #
+# file.                                                                      # #
+#                                                                            # #
+# Email support is not included and must be added to this file.              # #
+# Add the 'emailto=' to the rule directive section of each rule (add a comma # #
+# after the 'severity=' line and add an 'emailto=' and include the email     # #
+# addresses you want the violation reports to go to).  Addresses are         # #
+# semi-colon delimited.                                                      # #
+#                                                                            ##
+##############################################################################
+
+
+
+  ##############################################################################
+ #                                                                            ##
+############################################################################## #
+#                                                                            # #
+# Global Variable Definitions                                                # #
+#                                                                            # #
+# These are defined at install time by the installation script.  You may     # #
+# Manually edit these if you are using this file directly and not from the   # #
+# installation script itself.                                                # #
+#                                                                            ##
+##############################################################################
+
+@@section GLOBAL
+TWROOT=/usr/sbin;
+TWBIN=/usr/sbin;
+TWPOL="/etc/tripwire";
+TWDB="/var/lib/tripwire";
+TWSKEY="/etc/tripwire";
+TWLKEY="/etc/tripwire";
+TWREPORT="/var/lib/tripwire/report";
+HOSTNAME=localhost;
+
+@@section FS
+SEC_CRIT      = $(IgnoreNone)-SHa ;  # Critical files that cannot change
+SEC_SUID      = $(IgnoreNone)-SHa ;  # Binaries with the SUID or SGID flags set
+SEC_BIN       = $(ReadOnly) ;        # Binaries that should not change
+SEC_CONFIG    = $(Dynamic) ;         # Config files that are changed infrequently but accessed often
+SEC_LOG       = $(Growing) ;         # Files that grow, but that should never change ownership
+SEC_INVARIANT = +tpug ;              # Directories that should never change permission or ownership
+SIG_LOW       = 33 ;                 # Non-critical files that are of minimal security impact
+SIG_MED       = 66 ;                 # Non-critical files that are of significant security impact
+SIG_HI        = 100 ;                # Critical files that are significant points of vulnerability
+
+
+# Tripwire Binaries
+(
+  rulename = "Tripwire Binaries",
+  severity = $(SIG_HI)
+)
+{
+  $(TWBIN)/siggen                      -> $(SEC_BIN) ;
+  $(TWBIN)/tripwire                    -> $(SEC_BIN) ;
+  $(TWBIN)/twadmin                     -> $(SEC_BIN) ;
+  $(TWBIN)/twprint                     -> $(SEC_BIN) ;
+}
+
+# Tripwire Data Files - Configuration Files, Policy Files, Keys, Reports, Databases
+(
+  rulename = "Tripwire Data Files",
+  severity = $(SIG_HI)
+)
+{
+  # NOTE: We remove the inode attribute because when Tripwire creates a backup,
+  # it does so by renaming the old file and creating a new one (which will
+  # have a new inode number).  Inode is left turned on for keys, which shouldn't
+  # ever change.
+
+  # NOTE: The first integrity check triggers this rule and each integrity check
+  # afterward triggers this rule until a database update is run, since the
+  # database file does not exist before that point.
+
+  $(TWDB)                              -> $(SEC_CONFIG) -i ;
+  $(TWPOL)/tw.pol                      -> $(SEC_BIN) -i ;
+  $(TWPOL)/tw.cfg                      -> $(SEC_BIN) -i ;
+  $(TWLKEY)/$(HOSTNAME)-local.key      -> $(SEC_BIN) ;
+  $(TWSKEY)/site.key                   -> $(SEC_BIN) ;
+
+  #don't scan the individual reports
+  $(TWREPORT)                          -> $(SEC_CONFIG) (recurse=0) ;
+}
+
+
+# Tripwire HQ Connector Binaries
+#(
+#  rulename = "Tripwire HQ Connector Binaries",
+#  severity = $(SIG_HI)
+#)
+#{
+#  $(TWBIN)/hqagent                     -> $(SEC_BIN) ;
+#}
+#
+# Tripwire HQ Connector - Configuration Files, Keys, and Logs
+
+  ##############################################################################
+ #                                                                            ##
+############################################################################## #
+#                                                                            # #
+# Note: File locations here are different than in a stock HQ Connector       # #
+# installation.  This is because Tripwire 2.3 uses a different path          # #
+# structure than Tripwire 2.2.1.                                             # #
+#                                                                            # #
+# You may need to update your HQ Agent configuation file (or this policy     # #
+# file) to correct the paths.  We have attempted to support the FHS standard # #
+# here by placing the HQ Agent files similarly to the way Tripwire 2.3       # #
+# places them.                                                               # #
+#                                                                            ##
+##############################################################################
+
+#(
+#  rulename = "Tripwire HQ Connector Data Files",
+#  severity = $(SIG_HI)
+#)
+#{
+#   #############################################################################
+#  ##############################################################################
+#  # NOTE: Removing the inode attribute because when Tripwire creates a backup ##
+#  # it does so by renaming the old file and creating a new one (which will    ##
+#  # have a new inode number).  Leaving inode turned on for keys, which        ##
+#  # shouldn't ever change.                                                    ##
+#  #############################################################################
+#
+#  $(TWBIN)/agent.cfg                   -> $(SEC_BIN) -i ;
+#  $(TWLKEY)/authentication.key         -> $(SEC_BIN) ;
+#  $(TWDB)/tasks.dat                    -> $(SEC_CONFIG) ;
+#  $(TWDB)/schedule.dat                 -> $(SEC_CONFIG) ;
+#
+#  # Uncomment if you have agent logging enabled.
+#  #/var/log/tripwire/agent.log      -> $(SEC_LOG) ;
+#}
+
+
+
+# Commonly accessed directories that should remain static with regards to owner and group
+(
+  rulename = "Invariant Directories",
+  severity = $(SIG_MED)
+)
+{
+  /                                    -> $(SEC_INVARIANT) (recurse = 0) ;
+  /home                                -> $(SEC_INVARIANT) (recurse = 0) ;
+  /etc                                 -> $(SEC_INVARIANT) (recurse = 0) ;
+}
+  ################################################
+ #                                              ##
+################################################ #
+#                                              # #
+# File System and Disk Administration Programs # #
+#                                              ##
+################################################
+
+(
+  rulename = "File System and Disk Administraton Programs",
+  severity = $(SIG_HI)
+)
+{
+  /sbin/accton                         -> $(SEC_CRIT) ;
+  /sbin/badblocks                      -> $(SEC_CRIT) ;
+  /sbin/busybox                        -> $(SEC_CRIT) ;
+  /sbin/busybox.anaconda               -> $(SEC_CRIT) ;
+  /sbin/convertquota                   -> $(SEC_CRIT) ;
+  /sbin/dosfsck                        -> $(SEC_CRIT) ;
+  /sbin/debugfs                        -> $(SEC_CRIT) ;
+  /sbin/debugreiserfs                  -> $(SEC_CRIT) ;
+  /sbin/dumpe2fs                       -> $(SEC_CRIT) ;
+  /sbin/dump                           -> $(SEC_CRIT) ;
+  /sbin/dump.static                    -> $(SEC_CRIT) ;
+  # /sbin/e2fsadm                        -> $(SEC_CRIT) ; tune2fs?
+  /sbin/e2fsck                         -> $(SEC_CRIT) ;
+  /sbin/e2label                        -> $(SEC_CRIT) ;
+  /sbin/fdisk                          -> $(SEC_CRIT) ;
+  /sbin/fsck                           -> $(SEC_CRIT) ;
+  /sbin/fsck.ext2                      -> $(SEC_CRIT) ;
+  /sbin/fsck.ext3                      -> $(SEC_CRIT) ;
+  /sbin/fsck.minix                     -> $(SEC_CRIT) ;
+  /sbin/fsck.msdos                     -> $(SEC_CRIT) ;
+  /sbin/fsck.vfat                      -> $(SEC_CRIT) ;
+  /sbin/ftl_check                      -> $(SEC_CRIT) ;
+  /sbin/ftl_format                     -> $(SEC_CRIT) ;
+  /sbin/hdparm                         -> $(SEC_CRIT) ;
+  #/sbin/lvchange                       -> $(SEC_CRIT) ;
+  #/sbin/lvcreate                       -> $(SEC_CRIT) ;
+  #/sbin/lvdisplay                      -> $(SEC_CRIT) ;
+  #/sbin/lvextend                       -> $(SEC_CRIT) ;
+  #/sbin/lvmchange                      -> $(SEC_CRIT) ;
+  #/sbin/lvmcreate_initrd               -> $(SEC_CRIT) ;
+  #/sbin/lvmdiskscan                    -> $(SEC_CRIT) ;
+  #/sbin/lvmsadc                        -> $(SEC_CRIT) ;
+  #/sbin/lvmsar                         -> $(SEC_CRIT) ;
+  #/sbin/lvreduce                       -> $(SEC_CRIT) ;
+  #/sbin/lvremove                       -> $(SEC_CRIT) ;
+  #/sbin/lvrename                       -> $(SEC_CRIT) ;
+  #/sbin/lvscan                         -> $(SEC_CRIT) ;
+  /sbin/mkbootdisk                     -> $(SEC_CRIT) ;
+  /sbin/mkdosfs                        -> $(SEC_CRIT) ;
+  /sbin/mke2fs                         -> $(SEC_CRIT) ;
+  /sbin/mkfs                           -> $(SEC_CRIT) ;
+  /sbin/mkfs.bfs                       -> $(SEC_CRIT) ;
+  /sbin/mkfs.ext2                      -> $(SEC_CRIT) ;
+  /sbin/mkfs.minix                     -> $(SEC_CRIT) ;
+  /sbin/mkfs.msdos                     -> $(SEC_CRIT) ;
+  /sbin/mkfs.vfat                      -> $(SEC_CRIT) ;
+  /sbin/mkinitrd                       -> $(SEC_CRIT) ;
+  #/sbin/mkpv                           -> $(SEC_CRIT) ;
+  /sbin/mkraid                         -> $(SEC_CRIT) ;
+  /sbin/mkreiserfs                     -> $(SEC_CRIT) ;
+  /sbin/mkswap                         -> $(SEC_CRIT) ;
+  #/sbin/mtx                            -> $(SEC_CRIT) ;
+  /sbin/pam_console_apply              -> $(SEC_CRIT) ;
+  /sbin/parted                         -> $(SEC_CRIT) ;
+  /sbin/pcinitrd                       -> $(SEC_CRIT) ;
+  #/sbin/pvchange                       -> $(SEC_CRIT) ;
+  #/sbin/pvcreate                       -> $(SEC_CRIT) ;
+  #/sbin/pvdata                         -> $(SEC_CRIT) ;
+  #/sbin/pvdisplay                      -> $(SEC_CRIT) ;
+  #/sbin/pvmove                         -> $(SEC_CRIT) ;
+  #/sbin/pvscan                         -> $(SEC_CRIT) ;
+  /sbin/quotacheck                     -> $(SEC_CRIT) ;
+  /sbin/quotaon                        -> $(SEC_CRIT) ;
+  /sbin/raidstart                      -> $(SEC_CRIT) ;
+  /sbin/reiserfsck                     -> $(SEC_CRIT) ;
+  /sbin/resize2fs                      -> $(SEC_CRIT) ;
+  /sbin/resize_reiserfs                -> $(SEC_CRIT) ;
+  /sbin/restore                        -> $(SEC_CRIT) ;
+  /sbin/restore.static                 -> $(SEC_CRIT) ;
+  /sbin/scsi_info                      -> $(SEC_CRIT) ;
+  /sbin/sfdisk                         -> $(SEC_CRIT) ;
+  /sbin/stinit                         -> $(SEC_CRIT) ;
+  #/sbin/tapeinfo                       -> $(SEC_CRIT) ;
+  /sbin/tune2fs                        -> $(SEC_CRIT) ;
+  /sbin/unpack                         -> $(SEC_CRIT) ;
+  /sbin/update                         -> $(SEC_CRIT) ;
+  #/sbin/vgcfgbackup                    -> $(SEC_CRIT) ;
+  #/sbin/vgcfgrestore                   -> $(SEC_CRIT) ;
+  #/sbin/vgchange                       -> $(SEC_CRIT) ;
+  #/sbin/vgck                           -> $(SEC_CRIT) ;
+  #/sbin/vgcreate                       -> $(SEC_CRIT) ;
+  #/sbin/vgdisplay                      -> $(SEC_CRIT) ;
+  #/sbin/vgexport                       -> $(SEC_CRIT) ;
+  #/sbin/vgextend                       -> $(SEC_CRIT) ;
+  #/sbin/vgimport                       -> $(SEC_CRIT) ;
+  #/sbin/vgmerge                        -> $(SEC_CRIT) ;
+  #/sbin/vgmknodes                      -> $(SEC_CRIT) ;
+  #/sbin/vgreduce                       -> $(SEC_CRIT) ;
+  #/sbin/vgremove                       -> $(SEC_CRIT) ;
+  #/sbin/vgrename                       -> $(SEC_CRIT) ;
+  #/sbin/vgscan                         -> $(SEC_CRIT) ;
+  #/sbin/vgsplit                        -> $(SEC_CRIT) ;
+  /bin/chgrp                           -> $(SEC_CRIT) ;
+  /bin/chmod                           -> $(SEC_CRIT) ;
+  /bin/chown                           -> $(SEC_CRIT) ;
+  /bin/cp                              -> $(SEC_CRIT) ;
+  /bin/cpio                            -> $(SEC_CRIT) ;
+  /bin/mount                           -> $(SEC_CRIT) ;
+  /bin/umount                          -> $(SEC_CRIT) ;
+  /bin/mkdir                           -> $(SEC_CRIT) ;
+  /bin/mknod                           -> $(SEC_CRIT) ;
+  /bin/mktemp                          -> $(SEC_CRIT) ;
+  /bin/rm                              -> $(SEC_CRIT) ;
+  /bin/rmdir                           -> $(SEC_CRIT) ;
+  /bin/touch                           -> $(SEC_CRIT) ;
+}
+
+  ##################################
+ #                                ##
+################################## #
+#                                # #
+# Kernel Administration Programs # #
+#                                ##
+##################################
+
+(
+  rulename = "Kernel Administration Programs",
+  severity = $(SIG_HI)
+)
+{
+  /sbin/adjtimex                       -> $(SEC_CRIT) ;
+  /sbin/ctrlaltdel                     -> $(SEC_CRIT) ;
+  /sbin/depmod                         -> $(SEC_CRIT) ;
+  /sbin/insmod                         -> $(SEC_CRIT) ;
+  /sbin/insmod.static                  -> $(SEC_CRIT) ;
+  /sbin/insmod_ksymoops_clean          -> $(SEC_CRIT) ;
+  /sbin/klogd                          -> $(SEC_CRIT) ;
+  /sbin/ldconfig                       -> $(SEC_CRIT) ;
+  /sbin/minilogd                       -> $(SEC_CRIT) ;
+  /sbin/modinfo                        -> $(SEC_CRIT) ;
+  #/sbin/nuactlun                       -> $(SEC_CRIT) ;
+  #/sbin/nuscsitcpd                     -> $(SEC_CRIT) ;
+  /sbin/pivot_root                     -> $(SEC_CRIT) ;
+  /sbin/sndconfig                      -> $(SEC_CRIT) ;
+  /sbin/sysctl                         -> $(SEC_CRIT) ;
+}
+
+  #######################
+ #                     ##
+####################### #
+#                     # #
+# Networking Programs # #
+#                     ##
+#######################
+
+(
+  rulename = "Networking Programs",
+  severity = $(SIG_HI)
+)
+{
+  /etc/sysconfig/network-scripts/ifdown                  -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifdown-cipcb            -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifdown-ippp             -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifdown-ipv6             -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifdown-isdn             -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifdown-post             -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifdown-ppp              -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifdown-sit              -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifdown-sl               -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifup                    -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifup-aliases            -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifup-cipcb              -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifup-ippp               -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifup-ipv6               -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifup-isdn               -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifup-plip               -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifup-plusb              -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifup-post               -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifup-ppp                -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifup-routes             -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifup-sit                -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifup-sl                 -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/ifup-wireless           -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/network-functions       -> $(SEC_CRIT) ;
+  /etc/sysconfig/network-scripts/network-functions-ipv6  -> $(SEC_CRIT) ;
+  /bin/ping                            -> $(SEC_CRIT) ;
+  /sbin/agetty                         -> $(SEC_CRIT) ;
+  /sbin/arp                            -> $(SEC_CRIT) ;
+  /sbin/arping                         -> $(SEC_CRIT) ;
+  /sbin/dhcpcd                         -> $(SEC_CRIT) ;
+  /sbin/ether-wake                     -> $(SEC_CRIT) ;
+  #/sbin/getty                          -> $(SEC_CRIT) ;
+  /sbin/ifcfg                          -> $(SEC_CRIT) ;
+  /sbin/ifconfig                       -> $(SEC_CRIT) ;
+  /sbin/ifdown                         -> $(SEC_CRIT) ;
+  /sbin/ifenslave                      -> $(SEC_CRIT) ;
+  /sbin/ifport                         -> $(SEC_CRIT) ;
+  /sbin/ifup                           -> $(SEC_CRIT) ;
+  /sbin/ifuser                         -> $(SEC_CRIT) ;
+  /sbin/ip                             -> $(SEC_CRIT) ;
+  /sbin/ip6tables                      -> $(SEC_CRIT) ;
+  /sbin/ipchains                       -> $(SEC_CRIT) ;
+  /sbin/ipchains-restore               -> $(SEC_CRIT) ;
+  /sbin/ipchains-save                  -> $(SEC_CRIT) ;
+  /sbin/ipfwadm                        -> $(SEC_CRIT) ;
+  /sbin/ipmaddr                        -> $(SEC_CRIT) ;
+  /sbin/iptables                       -> $(SEC_CRIT) ;
+  /sbin/iptables-restore               -> $(SEC_CRIT) ;
+  /sbin/iptables-save                  -> $(SEC_CRIT) ;
+  /sbin/iptunnel                       -> $(SEC_CRIT) ;
+  #/sbin/ipvsadm                        -> $(SEC_CRIT) ;
+  #/sbin/ipvsadm-restore                -> $(SEC_CRIT) ;
+  #/sbin/ipvsadm-save                   -> $(SEC_CRIT) ;
+  /sbin/ipx_configure                  -> $(SEC_CRIT) ;
+  /sbin/ipx_interface                  -> $(SEC_CRIT) ;
+  /sbin/ipx_internal_net               -> $(SEC_CRIT) ;
+  /sbin/iwconfig                       -> $(SEC_CRIT) ;
+  /sbin/iwgetid                        -> $(SEC_CRIT) ;
+  /sbin/iwlist                         -> $(SEC_CRIT) ;
+  /sbin/iwpriv                         -> $(SEC_CRIT) ;
+  /sbin/iwspy                          -> $(SEC_CRIT) ;
+  /sbin/mgetty                         -> $(SEC_CRIT) ;
+  /sbin/mingetty                       -> $(SEC_CRIT) ;
+  /sbin/nameif                         -> $(SEC_CRIT) ;
+  /sbin/netreport                      -> $(SEC_CRIT) ;
+  /sbin/plipconfig                     -> $(SEC_CRIT) ;
+  /sbin/portmap                        -> $(SEC_CRIT) ;
+  /sbin/ppp-watch                      -> $(SEC_CRIT) ;
+  #/sbin/rarp                           -> $(SEC_CRIT) ;
+  /sbin/route                          -> $(SEC_CRIT) ;
+  /sbin/slattach                       -> $(SEC_CRIT) ;
+  /sbin/tc                             -> $(SEC_CRIT) ;
+  #/sbin/uugetty                        -> $(SEC_CRIT) ;
+  /sbin/vgetty                         -> $(SEC_CRIT) ;
+  /sbin/ypbind                         -> $(SEC_CRIT) ;
+}
+
+  ##################################
+ #                                ##
+################################## #
+#                                # #
+# System Administration Programs # #
+#                                ##
+##################################
+
+(
+  rulename = "System Administration Programs",
+  severity = $(SIG_HI)
+)
+{
+  /sbin/chkconfig                      -> $(SEC_CRIT) ;
+  /sbin/fuser                          -> $(SEC_CRIT) ;
+  /sbin/halt                           -> $(SEC_CRIT) ;
+  /sbin/init                           -> $(SEC_CRIT) ;
+  /sbin/initlog                        -> $(SEC_CRIT) ;
+  /sbin/install-info                   -> $(SEC_CRIT) ;
+  /sbin/killall5                       -> $(SEC_CRIT) ;
+  #/sbin/linuxconf                      -> $(SEC_CRIT) ;
+  #/sbin/linuxconf-auth                 -> $(SEC_CRIT) ;
+  /sbin/pam_tally                      -> $(SEC_CRIT) ;
+  /sbin/pwdb_chkpwd                    -> $(SEC_CRIT) ;
+  #/sbin/remadmin                       -> $(SEC_CRIT) ;
+  /sbin/rescuept                       -> $(SEC_CRIT) ;
+  /sbin/rmt                            -> $(SEC_CRIT) ;
+  /sbin/rpc.lockd                      -> $(SEC_CRIT) ;
+  /sbin/rpc.statd                      -> $(SEC_CRIT) ;
+  /sbin/rpcdebug                       -> $(SEC_CRIT) ;
+  /sbin/service                        -> $(SEC_CRIT) ;
+  /sbin/setsysfont                     -> $(SEC_CRIT) ;
+  /sbin/shutdown                       -> $(SEC_CRIT) ;
+  /sbin/sulogin                        -> $(SEC_CRIT) ;
+  /sbin/swapon                         -> $(SEC_CRIT) ;
+  /sbin/syslogd                        -> $(SEC_CRIT) ;
+  /sbin/unix_chkpwd                    -> $(SEC_CRIT) ;
+  /bin/pwd                             -> $(SEC_CRIT) ;
+  /bin/uname                           -> $(SEC_CRIT) ;
+}
+
+  ########################################
+ #                                      ##
+######################################## #
+#                                      # #
+# Hardware and Device Control Programs # #
+#                                      ##
+########################################
+(
+  rulename = "Hardware and Device Control Programs",
+  severity = $(SIG_HI)
+)
+{
+  /bin/setserial                       -> $(SEC_CRIT) ;
+  /bin/sfxload                         -> $(SEC_CRIT) ;
+  /sbin/blockdev                       -> $(SEC_CRIT) ;
+  /sbin/cardctl                        -> $(SEC_CRIT) ;
+  /sbin/cardmgr                        -> $(SEC_CRIT) ;
+  /sbin/cbq                            -> $(SEC_CRIT) ;
+  /sbin/dump_cis                       -> $(SEC_CRIT) ;
+  /sbin/elvtune                        -> $(SEC_CRIT) ;
+  /sbin/hotplug                        -> $(SEC_CRIT) ;
+  /sbin/hwclock                        -> $(SEC_CRIT) ;
+  /sbin/ide_info                       -> $(SEC_CRIT) ;
+  #/sbin/isapnp                         -> $(SEC_CRIT) ;
+  /sbin/kbdrate                        -> $(SEC_CRIT) ;
+  /sbin/losetup                        -> $(SEC_CRIT) ;
+  /sbin/lspci                          -> $(SEC_CRIT) ;
+  /sbin/lspnp                          -> $(SEC_CRIT) ;
+  /sbin/mii-tool                       -> $(SEC_CRIT) ;
+  /sbin/pack_cis                       -> $(SEC_CRIT) ;
+  #/sbin/pnpdump                        -> $(SEC_CRIT) ;
+  /sbin/probe                          -> $(SEC_CRIT) ;
+  /sbin/pump                           -> $(SEC_CRIT) ;
+  /sbin/setpci                         -> $(SEC_CRIT) ;
+  /sbin/shapecfg                       -> $(SEC_CRIT) ;
+}
+
+  ###############################
+ #                             ##
+############################### #
+#                             # #
+# System Information Programs # #
+#                             ##
+###############################
+(
+  rulename = "System Information Programs",
+  severity = $(SIG_HI)
+)
+{
+  /sbin/consoletype                    -> $(SEC_CRIT) ;
+  /sbin/kernelversion                  -> $(SEC_CRIT) ;
+  /sbin/runlevel                       -> $(SEC_CRIT) ;
+}
+
+  ####################################
+ #                                  ##
+#################################### #
+#                                  # #
+# Application Information Programs # #
+#                                  ##
+####################################
+
+(
+  rulename = "Application Information Programs",
+  severity = $(SIG_HI)
+)
+{
+  /sbin/genksyms                       -> $(SEC_CRIT) ;
+  #/sbin/genksyms.old                   -> $(SEC_CRIT) ;
+  /sbin/rtmon                          -> $(SEC_CRIT) ;
+}
+
+  ##########################
+ #                        ##
+########################## #
+#                        # #
+# Shell Related Programs # #
+#                        ##
+##########################
+(
+  rulename = "Shell Related Programs",
+  severity = $(SIG_HI)
+)
+{
+  /sbin/getkey                         -> $(SEC_CRIT) ;
+  /sbin/nash                           -> $(SEC_CRIT) ;
+  /sbin/sash                           -> $(SEC_CRIT) ;
+}
+
+
+  ################
+ #              ##
+################ #
+#              # #
+# OS Utilities # #
+#              ##
+################
+(
+  rulename = "Operating System Utilities",
+  severity = $(SIG_HI)
+)
+{
+  /bin/arch                            -> $(SEC_CRIT) ;
+  /bin/ash                             -> $(SEC_CRIT) ;
+  /bin/ash.static                      -> $(SEC_CRIT) ;
+  /bin/aumix-minimal                   -> $(SEC_CRIT) ;
+  /bin/basename                        -> $(SEC_CRIT) ;
+  /bin/cat                             -> $(SEC_CRIT) ;
+  /bin/consolechars                    -> $(SEC_CRIT) ;
+  /bin/cut                             -> $(SEC_CRIT) ;
+  /bin/date                            -> $(SEC_CRIT) ;
+  /bin/dd                              -> $(SEC_CRIT) ;
+  /bin/df                              -> $(SEC_CRIT) ;
+  /bin/dmesg                           -> $(SEC_CRIT) ;
+  /bin/doexec                          -> $(SEC_CRIT) ;
+  /bin/echo                            -> $(SEC_CRIT) ;
+  /bin/ed                              -> $(SEC_CRIT) ;
+  /bin/egrep                           -> $(SEC_CRIT) ;
+  /bin/false                           -> $(SEC_CRIT) ;
+  /bin/fgrep                           -> $(SEC_CRIT) ;
+  /bin/gawk                            -> $(SEC_CRIT) ;
+  /bin/gawk-3.1.0                      -> $(SEC_CRIT) ;
+  /bin/gettext                         -> $(SEC_CRIT) ;
+  /bin/grep                            -> $(SEC_CRIT) ;
+  /bin/gunzip                          -> $(SEC_CRIT) ;
+  /bin/gzip                            -> $(SEC_CRIT) ;
+  /bin/hostname                        -> $(SEC_CRIT) ;
+  /bin/igawk                           -> $(SEC_CRIT) ;
+  /bin/ipcalc                          -> $(SEC_CRIT) ;
+  /bin/kill                            -> $(SEC_CRIT) ;
+  /bin/ln                              -> $(SEC_CRIT) ;
+  /bin/loadkeys                        -> $(SEC_CRIT) ;
+  /bin/login                           -> $(SEC_CRIT) ;
+  /bin/ls                              -> $(SEC_CRIT) ;
+  /bin/mail                            -> $(SEC_CRIT) ;
+  /bin/more                            -> $(SEC_CRIT) ;
+  /bin/mt                              -> $(SEC_CRIT) ;
+  /bin/mv                              -> $(SEC_CRIT) ;
+  /bin/netstat                         -> $(SEC_CRIT) ;
+  /bin/nice                            -> $(SEC_CRIT) ;
+  /bin/pgawk                           -> $(SEC_CRIT) ;
+  /bin/ps                              -> $(SEC_CRIT) ;
+  /bin/rpm                             -> $(SEC_CRIT) ;
+  /bin/sed                             -> $(SEC_CRIT) ;
+  /bin/sleep                           -> $(SEC_CRIT) ;
+  /bin/sort                            -> $(SEC_CRIT) ;
+  /bin/stty                            -> $(SEC_CRIT) ;
+  /bin/su                              -> $(SEC_CRIT) ;
+  /bin/sync                            -> $(SEC_CRIT) ;
+  /bin/tar                             -> $(SEC_CRIT) ;
+  /bin/true                            -> $(SEC_CRIT) ;
+  /bin/usleep                          -> $(SEC_CRIT) ;
+  /bin/vi                              -> $(SEC_CRIT) ;
+  /bin/zcat                            -> $(SEC_CRIT) ;
+  /bin/zsh                             -> $(SEC_CRIT) ;
+  #/bin/zsh-4.0.2                       -> $(SEC_CRIT) ;
+  /sbin/sln                            -> $(SEC_CRIT) ;
+  /usr/bin/vimtutor                    -> $(SEC_CRIT) ;
+}
+
+  ##############################
+ #                            ##
+############################## #
+#                            # #
+# Critical Utility Sym-Links # #
+#                            ##
+##############################
+(
+  rulename = "Critical Utility Sym-Links",
+  severity = $(SIG_HI)
+)
+{
+  #/sbin/askrunlevel                    -> $(SEC_CRIT) ;
+  /sbin/clock                          -> $(SEC_CRIT) ;
+  #/sbin/fixperm                        -> $(SEC_CRIT) ;
+  /sbin/fsck.reiserfs                  -> $(SEC_CRIT) ;
+  #/sbin/fsconf                         -> $(SEC_CRIT) ;
+  /sbin/ipfwadm-wrapper                -> $(SEC_CRIT) ;
+  /sbin/kallsyms                       -> $(SEC_CRIT) ;
+  /sbin/ksyms                          -> $(SEC_CRIT) ;
+  /sbin/lsmod                          -> $(SEC_CRIT) ;
+  #/sbin/mailconf                       -> $(SEC_CRIT) ;
+  /sbin/mkfs.reiserfs                  -> $(SEC_CRIT) ;
+  #/sbin/modemconf                      -> $(SEC_CRIT) ;
+  /sbin/modprobe                       -> $(SEC_CRIT) ;
+  /sbin/mount.ncp                      -> $(SEC_CRIT) ;
+  /sbin/mount.ncpfs                    -> $(SEC_CRIT) ;
+  /sbin/mount.smb                      -> $(SEC_CRIT) ;
+  /sbin/mount.smbfs                    -> $(SEC_CRIT) ;
+  #/sbin/netconf                        -> $(SEC_CRIT) ;
+  /sbin/pidof                          -> $(SEC_CRIT) ;
+  /sbin/poweroff                       -> $(SEC_CRIT) ;
+  /sbin/quotaoff                       -> $(SEC_CRIT) ;
+  /sbin/raid0run                       -> $(SEC_CRIT) ;
+  /sbin/raidhotadd                     -> $(SEC_CRIT) ;
+  /sbin/raidhotgenerateerror           -> $(SEC_CRIT) ;
+  /sbin/raidhotremove                  -> $(SEC_CRIT) ;
+  /sbin/raidstop                       -> $(SEC_CRIT) ;
+  /sbin/rdump                          -> $(SEC_CRIT) ;
+  /sbin/rdump.static                   -> $(SEC_CRIT) ;
+  /sbin/reboot                         -> $(SEC_CRIT) ;
+  /sbin/rmmod                          -> $(SEC_CRIT) ;
+  /sbin/rrestore                       -> $(SEC_CRIT) ;
+  /sbin/rrestore.static                -> $(SEC_CRIT) ;
+  /sbin/swapoff                        -> $(SEC_CRIT) ;
+  /sbin/telinit                        -> $(SEC_CRIT) ;
+  #/sbin/userconf                       -> $(SEC_CRIT) ;
+  #/sbin/uucpconf                       -> $(SEC_CRIT) ;
+  #/sbin/vregistry                      -> $(SEC_CRIT) ;
+  /bin/awk                             -> $(SEC_CRIT) ;
+  /bin/bash2                           -> $(SEC_CRIT) ;
+  /bin/bsh                             -> $(SEC_CRIT) ;
+  /bin/csh                             -> $(SEC_CRIT) ;
+  /bin/dnsdomainname                   -> $(SEC_CRIT) ;
+  /bin/domainname                      -> $(SEC_CRIT) ;
+  /bin/ex                              -> $(SEC_CRIT) ;
+  /bin/gtar                            -> $(SEC_CRIT) ;
+  /bin/nisdomainname                   -> $(SEC_CRIT) ;
+  /bin/red                             -> $(SEC_CRIT) ;
+  /bin/rvi                             -> $(SEC_CRIT) ;
+  /bin/rview                           -> $(SEC_CRIT) ;
+  /bin/view                            -> $(SEC_CRIT) ;
+  /bin/ypdomainname                    -> $(SEC_CRIT) ;
+}
+
+
+  #########################
+ #                       ##
+######################### #
+#                       # #
+# Temporary directories # #
+#                       ##
+#########################
+(
+  rulename = "Temporary directories",
+  recurse = false,
+  severity = $(SIG_LOW)
+)
+{
+  /usr/tmp                             -> $(SEC_INVARIANT) ;
+  /var/tmp                             -> $(SEC_INVARIANT) ;
+  /tmp                                 -> $(SEC_INVARIANT) ;
+}
+
+  ###############
+ #             ##
+############### #
+#             # #
+# Local files # #
+#             ##
+###############
+(
+  rulename = "User binaries",
+  severity = $(SIG_MED)
+)
+{
+  /sbin                                -> $(SEC_BIN) (recurse = 1) ;
+  /usr/bin                             -> $(SEC_BIN) (recurse = 1) ;
+  /usr/sbin                            -> $(SEC_BIN) (recurse = 1) ;
+  /usr/local/bin                       -> $(SEC_BIN) (recurse = 1) ;
+}
+
+(
+  rulename = "Shell Binaries",
+  severity = $(SIG_HI)
+)
+{
+  /bin/bash                            -> $(SEC_BIN) ;
+  /bin/ksh                             -> $(SEC_BIN) ;
+  # /bin/psh                             -> $(SEC_BIN) ; # No longer used?
+  # /bin/Rsh                             -> $(SEC_BIN) ; # No longer used?
+  /bin/sh                              -> $(SEC_BIN) ;
+  # /bin/shell                           -> $(SEC_SUID) ; # No longer used?
+  # /bin/tsh                             -> $(SEC_BIN) ; # No longer used?
+  /bin/tcsh                            -> $(SEC_BIN) ;
+  /sbin/nologin                        -> $(SEC_BIN) ;
+}
+
+(
+  rulename = "Security Control",
+  severity = $(SIG_HI)
+)
+{
+  /etc/group                           -> $(SEC_CRIT) ;
+  /etc/security                        -> $(SEC_CRIT) ;
+  #/var/spool/cron/crontabs             -> $(SEC_CRIT) ; # Uncomment when this file exists
+}
+
+#(
+#  rulename = "Boot Scripts",
+#  severity = $(SIG_HI)
+#)
+#{
+#  /etc/rc                              -> $(SEC_CONFIG) ;
+#  /etc/rc.bsdnet                       -> $(SEC_CONFIG) ;
+#  /etc/rc.dt                           -> $(SEC_CONFIG) ;
+#  /etc/rc.net                          -> $(SEC_CONFIG) ;
+#  /etc/rc.net.serial                   -> $(SEC_CONFIG) ;
+#  /etc/rc.nfs                          -> $(SEC_CONFIG) ;
+#  /etc/rc.powerfail                    -> $(SEC_CONFIG) ;
+#  /etc/rc.tcpip                        -> $(SEC_CONFIG) ;
+#  /etc/trcfmt.Z                        -> $(SEC_CONFIG) ;
+#}
+
+(
+  rulename = "Login Scripts",
+  severity = $(SIG_HI)
+)
+{
+  /etc/bashrc                          -> $(SEC_CONFIG) ;
+  /etc/csh.cshrc                       -> $(SEC_CONFIG) ;
+  /etc/csh.login                       -> $(SEC_CONFIG) ;
+  /etc/inputrc                         -> $(SEC_CONFIG) ;
+  # /etc/tsh_profile                     -> $(SEC_CONFIG) ; #Uncomment when this file exists
+  /etc/profile                         -> $(SEC_CONFIG) ;
+}
+
+# Libraries
+(
+  rulename = "Libraries",
+  severity = $(SIG_MED)
+)
+{
+  /usr/lib                             -> $(SEC_BIN) ;
+  /usr/local/lib                       -> $(SEC_BIN) ;
+}
+
+
+  ######################################################
+ #                                                    ##
+###################################################### #
+#                                                    # #
+# Critical System Boot Files                         # #
+# These files are critical to a correct system boot. # #
+#                                                    ##
+######################################################
+
+(
+  rulename = "Critical system boot files",
+  severity = $(SIG_HI)
+)
+{
+     /boot                             -> $(SEC_CRIT) ;
+     #/sbin/devfsd                      -> $(SEC_CRIT) ;
+     /sbin/grub                        -> $(SEC_CRIT) ;
+     /sbin/grub-install                -> $(SEC_CRIT) ;
+     /sbin/grub-md5-crypt              -> $(SEC_CRIT) ;
+     /sbin/installkernel               -> $(SEC_CRIT) ;
+     /sbin/lilo                        -> $(SEC_CRIT) ;
+     /sbin/mkkerneldoth                -> $(SEC_CRIT) ;
+     !/boot/System.map ;
+     !/boot/module-info ;
+     /usr/share/grub/i386-redhat/e2fs_stage1_5      -> $(SEC_CRIT) ;
+     /usr/share/grub/i386-redhat/fat_stage1_5       -> $(SEC_CRIT) ;
+     /usr/share/grub/i386-redhat/ffs_stage1_5       -> $(SEC_CRIT) ;
+     /usr/share/grub/i386-redhat/minix_stage1_5     -> $(SEC_CRIT) ;
+     /usr/share/grub/i386-redhat/reiserfs_stage1_5  -> $(SEC_CRIT) ;
+     /usr/share/grub/i386-redhat/stage1             -> $(SEC_CRIT) ;
+     /usr/share/grub/i386-redhat/stage2             -> $(SEC_CRIT) ;
+     /usr/share/grub/i386-redhat/vstafs_stage1_5    -> $(SEC_CRIT) ;
+     # other boot files may exist.  Look for:
+     #/ufsboot                          -> $(SEC_CRIT) ;
+}
+   ##################################################
+  ###################################################
+  # These files change every time the system boots ##
+  ##################################################
+(
+  rulename = "System boot changes",
+  severity = $(SIG_HI)
+)
+{
+     !/var/run/ftp.pids-all ; # Comes and goes on reboot.
+     !/root/.enlightenment ;
+     /dev/log                          -> $(SEC_CONFIG) ;
+     /dev/cua0                         -> $(SEC_CONFIG) ;
+     # /dev/printer                      -> $(SEC_CONFIG) ; # Uncomment if you have a printer device
+     /dev/console                      -> $(SEC_CONFIG) -u ; # User ID may change on console login/logout.
+     /dev/tty1                         -> $(SEC_CONFIG) ; # tty devices
+     /dev/tty2                         -> $(SEC_CONFIG) ; # tty devices
+     /dev/tty3                         -> $(SEC_CONFIG) ; # are extremely
+     /dev/tty4                         -> $(SEC_CONFIG) ; # variable
+     /dev/tty5                         -> $(SEC_CONFIG) ;
+     /dev/tty6                         -> $(SEC_CONFIG) ;
+     /dev/urandom                      -> $(SEC_CONFIG) ;
+     /dev/initctl                      -> $(SEC_CONFIG) ;
+     /var/lock/subsys                  -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/amd              -> $(SEC_CONFIG) ;
+     /var/lock/subsys/anacron          -> $(SEC_CONFIG) ;
+     /var/lock/subsys/apmd             -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/arpwatch         -> $(SEC_CONFIG) ;
+     /var/lock/subsys/atd              -> $(SEC_CONFIG) ;
+     /var/lock/subsys/autofs           -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/bcm5820          -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/bgpd             -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/bootparamd       -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/canna            -> $(SEC_CONFIG) ;
+     /var/lock/subsys/crond            -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/cWnn             -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/dhcpd            -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/firewall         -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/freeWnn          -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/gated            -> $(SEC_CONFIG) ;
+     /var/lock/subsys/gpm              -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/httpd            -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/identd           -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/innd             -> $(SEC_CONFIG) ;
+     /var/lock/subsys/ipchains         -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/iptables         -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/ipvsadm          -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/irda             -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/iscsi            -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/isdn             -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/junkbuster       -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/kadmin           -> $(SEC_CONFIG) ;
+     /var/lock/subsys/keytable         -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/kprop            -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/krb524           -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/krb5kdc          -> $(SEC_CONFIG) ;
+     /var/lock/subsys/kudzu            -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/kWnn             -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/ldap             -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/linuxconf        -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/lpd              -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/mars_nwe         -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/mcserv           -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/mysqld           -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/named            -> $(SEC_CONFIG) ;
+     /var/lock/subsys/netfs            -> $(SEC_CONFIG) ;
+     /var/lock/subsys/network          -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/nfs              -> $(SEC_CONFIG) ;
+     /var/lock/subsys/nfslock          -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/nscd             -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/ntpd             -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/ospf6d           -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/ospfd            -> $(SEC_CONFIG) ;
+     /var/lock/subsys/pcmcia           -> $(SEC_CONFIG) ;
+     /var/lock/subsys/portmap          -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/postgresql       -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/pxe              -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/radvd            -> $(SEC_CONFIG) ;
+     /var/lock/subsys/random           -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/rarpd            -> $(SEC_CONFIG) ;
+     /var/lock/subsys/reconfig         -> $(SEC_CONFIG) ;
+     /var/lock/subsys/rhnsd            -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/ripd             -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/ripngd           -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/routed           -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/rstatd           -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/rusersd          -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/rwalld           -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/rwhod            -> $(SEC_CONFIG) ;
+     /var/lock/subsys/sendmail         -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/smb              -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/snmpd            -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/squid            -> $(SEC_CONFIG) ;
+     /var/lock/subsys/sshd             -> $(SEC_CONFIG) ;
+     /var/lock/subsys/syslog           -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/tux              -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/tWnn             -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/ups              -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/vncserver        -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/wine             -> $(SEC_CONFIG) ;
+     /var/lock/subsys/xfs              -> $(SEC_CONFIG) ;
+     /var/lock/subsys/xinetd           -> $(SEC_CONFIG) ;
+     /var/lock/subsys/ypbind           -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/yppasswdd        -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/ypserv           -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/ypxfrd           -> $(SEC_CONFIG) ;
+     #/var/lock/subsys/zebra            -> $(SEC_CONFIG) ;
+     /var/run                          -> $(SEC_CONFIG) ;
+     /var/log                          -> $(SEC_CONFIG) ;
+     /etc/ioctl.save                   -> $(SEC_CONFIG) ;
+     /etc/issue.net                    -> $(SEC_CONFIG) -i ; # Inode number changes
+     /etc/issue                        -> $(SEC_CONFIG) ;
+     /etc/mtab                         -> $(SEC_CONFIG) -i ; # Inode number changes on any mount/unmount
+     /lib/modules                      -> $(SEC_CONFIG) ;
+     /etc/.pwd.lock                    -> $(SEC_CONFIG) ;
+     # /lib/modules/preferred            -> $(SEC_CONFIG) ; #Uncomment when this file exists
+}
+
+# These files change the behavior of the root account
+(
+  rulename = "Root config files",
+  severity = 100
+)
+{
+     /root                             -> $(SEC_CRIT) ; # Catch all additions to /root
+     #/root/.Xresources                 -> $(SEC_CONFIG) ;
+     /root/.bashrc                     -> $(SEC_CONFIG) ;
+     /root/.bash_profile               -> $(SEC_CONFIG) ;
+     /root/.bash_logout                -> $(SEC_CONFIG) ;
+     /root/.cshrc                      -> $(SEC_CONFIG) ;
+     /root/.tcshrc                     -> $(SEC_CONFIG) ;
+     /root/Mail                        -> $(SEC_CONFIG) ;
+     #/root/mail                        -> $(SEC_CONFIG) ;
+     #/root/.amandahosts                -> $(SEC_CONFIG) ;
+     #/root/.addressbook.lu             -> $(SEC_CONFIG) ;
+     #/root/.addressbook                -> $(SEC_CONFIG) ;
+     /root/.bash_history               -> $(SEC_CONFIG) ;
+     /root/.elm                        -> $(SEC_CONFIG) ;
+     #/root/.esd_auth                   -> $(SEC_CONFIG) ;
+     /root/.gnome_private              -> $(SEC_CONFIG) ;
+     /root/.gnome-desktop              -> $(SEC_CONFIG) ;
+     /root/.gnome                      -> $(SEC_CONFIG) ;
+     /root/.ICEauthority               -> $(SEC_CONFIG) ;
+     #/root/.mc                         -> $(SEC_CONFIG) ;
+     #/root/.pinerc                     -> $(SEC_CONFIG) ;
+     /root/.sawfish                    -> $(SEC_CONFIG) ;
+     /root/.Xauthority                 -> $(SEC_CONFIG) -i ; # Changes Inode number on login
+     #/root/.xauth                      -> $(SEC_CONFIG) ;
+     /root/.xsession-errors            -> $(SEC_CONFIG) ;
+}
+
+  ################################
+ #                              ##
+################################ #
+#                              # #
+# Critical configuration files # #
+#                              ##
+################################
+(
+  rulename = "Critical configuration files",
+  severity = $(SIG_HI)
+)
+{
+     #/etc/conf.linuxconf               -> $(SEC_BIN) ;
+     /etc/crontab                      -> $(SEC_BIN) ;
+     /etc/cron.hourly                  -> $(SEC_BIN) ;
+     /etc/cron.daily                   -> $(SEC_BIN) ;
+     /etc/cron.weekly                  -> $(SEC_BIN) ;
+     /etc/cron.monthly                 -> $(SEC_BIN) ;
+     /etc/default                      -> $(SEC_BIN) ;
+     /etc/fstab                        -> $(SEC_BIN) ;
+     /etc/exports                      -> $(SEC_BIN) ;
+     /etc/group-                       -> $(SEC_BIN) ;  # changes should be infrequent
+     /etc/host.conf                    -> $(SEC_BIN) ;
+     /etc/hosts.allow                  -> $(SEC_BIN) ;
+     /etc/hosts.deny                   -> $(SEC_BIN) ;
+     /etc/httpd/conf                   -> $(SEC_BIN) ;  # changes should be infrequent
+     /etc/protocols                    -> $(SEC_BIN) ;
+     /etc/services                     -> $(SEC_BIN) ;
+     /etc/rc.d/init.d                  -> $(SEC_BIN) ;
+     /etc/rc.d                         -> $(SEC_BIN) ;
+     /etc/mail.rc                      -> $(SEC_BIN) ;
+     /etc/modules.conf                 -> $(SEC_BIN) ;
+     /etc/motd                         -> $(SEC_BIN) ;
+     /etc/named.conf                   -> $(SEC_BIN) ;
+     /etc/passwd                       -> $(SEC_CONFIG) ;
+     /etc/passwd-                      -> $(SEC_CONFIG) ;
+     /etc/profile.d                    -> $(SEC_BIN) ;
+     /var/lib/nfs/rmtab                -> $(SEC_BIN) ;
+     /usr/sbin/fixrmtab                -> $(SEC_BIN) ;
+     /etc/rpc                          -> $(SEC_BIN) ;
+     /etc/sysconfig                    -> $(SEC_BIN) ;
+     /etc/samba/smb.conf               -> $(SEC_CONFIG) ;
+     #/etc/gettydefs                    -> $(SEC_BIN) ;
+     /etc/nsswitch.conf                -> $(SEC_BIN) ;
+     /etc/yp.conf                      -> $(SEC_BIN) ;
+     /etc/hosts                        -> $(SEC_CONFIG) ;
+     /etc/xinetd.conf                  -> $(SEC_CONFIG) ;
+     /etc/inittab                      -> $(SEC_CONFIG) ;
+     /etc/resolv.conf                  -> $(SEC_CONFIG) ;
+     /etc/syslog.conf                  -> $(SEC_CONFIG) ;
+}
+
+  ####################
+ #                  ##
+#################### #
+#                  # #
+# Critical devices # #
+#                  ##
+####################
+(
+  rulename = "Critical devices",
+  severity = $(SIG_HI),
+  recurse = false
+)
+{
+     /dev/kmem                         -> $(Device) ;
+     /dev/mem                          -> $(Device) ;
+     /dev/null                         -> $(Device) ;
+     /dev/zero                         -> $(Device) ;
+     /proc/devices                     -> $(Device) ;
+     /proc/net                         -> $(Device) ;
+     /proc/sys                         -> $(Device) ;
+     /proc/cpuinfo                     -> $(Device) ;
+     /proc/modules                     -> $(Device) ;
+     /proc/mounts                      -> $(Device) ;
+     /proc/dma                         -> $(Device) ;
+     /proc/filesystems                 -> $(Device) ;
+     /proc/pci                         -> $(Device) ;
+     /proc/interrupts                  -> $(Device) ;
+     /proc/driver/rtc                  -> $(Device) ;
+     /proc/ioports                     -> $(Device) ;
+     #/proc/scsi                        -> $(Device) ;
+     /proc/kcore                       -> $(Device) ;
+     /proc/self                        -> $(Device) ;
+     /proc/kmsg                        -> $(Device) ;
+     /proc/stat                        -> $(Device) ;
+     /proc/ksyms                       -> $(Device) ;
+     /proc/loadavg                     -> $(Device) ;
+     /proc/uptime                      -> $(Device) ;
+     /proc/locks                       -> $(Device) ;
+     /proc/version                     -> $(Device) ;
+     /proc/mdstat                      -> $(Device) ;
+     /proc/meminfo                     -> $(Device) ;
+     /proc/cmdline                     -> $(Device) ;
+     /proc/misc                        -> $(Device) ;
+}
+
+# Rest of critical system binaries
+(
+  rulename = "OS executables and libraries",
+  severity = $(SIG_HI)
+)
+{
+     /bin                              -> $(SEC_BIN) ;
+     /lib                              -> $(SEC_BIN) ;
+}
+
+#=============================================================================
+#
+# Copyright 2000 Tripwire, Inc. Tripwire is a registered trademark of Tripwire,
+# Inc. in the United States and other countries. All rights reserved.
+#
+# Linux is a registered trademark of Linus Torvalds.
+#
+# UNIX is a registered trademark of The Open Group.
+#
+#=============================================================================
+#
+# Permission is granted to make and distribute verbatim copies of this document
+# provided the copyright notice and this permission notice are preserved on all
+# copies.
+#
+# Permission is granted to copy and distribute modified versions of this
+# document under the conditions for verbatim copying, provided that the entire
+# resulting derived work is distributed under the terms of a permission notice
+# identical to this one.
+#
+# Permission is granted to copy and distribute translations of this document
+# into another language, under the above conditions for modified versions,
+# except that this permission notice may be stated in a translation approved by
+# Tripwire, Inc.
+#
+# DCM
+#
+# $Id: twpol-GENERIC.txt,v 1.1 2003/06/08 02:00:06 pherman Exp $
+#
-- 
1.9.1


