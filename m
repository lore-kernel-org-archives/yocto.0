Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9445DE00CAA; Fri,  1 Sep 2017 06:45:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 076EBE00B1B
	for <yocto@yoctoproject.org>; Fri,  1 Sep 2017 06:45:08 -0700 (PDT)
Received: by mail-pf0-f171.google.com with SMTP id r187so727613pfr.3
	for <yocto@yoctoproject.org>; Fri, 01 Sep 2017 06:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=pAxYRFlHE8BpktJD12Nglh0UBGvkuWhkHAXJe5LERZQ=;
	b=UXMDBTRQGX5vSFKJYUx689+/Zdu7sm99KYgfTF+Nzf3G2yCHZ/Y4XTSqAOuIM64v4n
	fy0qz2zcBpwBqfxdwABuVoKro675iW+mGLhd6ZvA31rYCtCK64BuRIJ7p5K7gMDLIMDj
	SLNp6302qJD6U39C5wGEMy1PiTYIYc1CbEv17/9nHzmcyyYy4ydymNI88YXPeVpCEA64
	H6AAdBeS8C0fZYOtgHD4xPqW5u+soOMbNiDYbYqCuQWJ+Qy8iQluiV5J3fIq2OJGNeLr
	Ym2cAjklKUsNClIq7PGq5zK1uD6/tunCcc3aiG0Lblfx7E8575EqKTXAzK0ZBLma4kdu
	9UaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=pAxYRFlHE8BpktJD12Nglh0UBGvkuWhkHAXJe5LERZQ=;
	b=d/DCfbv8zcOc4XS5rPFdTyzfzhc+9UISVsVufeFv8BSIxLKeCwoxwM8KYHKPaR3z3q
	Usd84SsmfA0LFVIyNovxebArlRAMFRM3mMOchOzBG4urDzvD6yShocR1f+Y1Dnu/lnqF
	JPbr8V2T81EZor7/L0Kb9DLbyaFTMypvbUmKOlQqrZmpxdENAdt47aw36sSCF/bI5sJO
	sc7P0jFWTdXFbrZ2LABctjTi6J/NviJwKS9KKu8Vsw5E7Yr/j4iDb+kFKWA22gPmuyPy
	kG4JFtCA/Ss9YG4k5qwpBRoZKRy4JJx100lCX33eRH1X8JXm/55tzX8vUixhhVCq6Uvr
	lyvw==
X-Gm-Message-State: AHPjjUjOs6k5OIwog/vDVYEmlV9gIbZqiwg37vDI0mMfcc0B1XEhv+bW
	AVZy0WdKPPnmAaA2
X-Google-Smtp-Source: ADKCNb505GoONjP6TVpe93Rbq6owTqDwXJG9ftunVfJQcUS62mwbstpoKLiloKaZe7mTTBruYGgxQw==
X-Received: by 10.98.36.136 with SMTP id k8mr2401160pfk.56.1504273508119;
	Fri, 01 Sep 2017 06:45:08 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4001:9ea0:c400:6ad5:9d97:9621])
	by smtp.gmail.com with ESMTPSA id w64sm391346pfi.75.2017.09.01.06.45.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 01 Sep 2017 06:45:07 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Fri,  1 Sep 2017 06:45:06 -0700
Message-Id: <1504273506-21404-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][v2][PATCH] fail2Ban: Add new package
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
X-List-Received-Date: Fri, 01 Sep 2017 13:45:10 -0000

Fail2Ban scans log files like /var/log/auth.log and bans IP addresses having too many failed login attempts. It does this by updating system firewall rules to reject new connections from those IP addresses, for a configurable amount of time. Fail2Ban comes out-of-the-box ready to read many standard log files, such as those for sshd and Apache, and is easy to configure to read any log file you choose, for any error you choose.

Though Fail2Ban is able to reduce the rate of incorrect authentications attempts, it cannot eliminate the risk that weak authentication presents. Configure services to use only two factor or public/private authentication mechanisms if you really want to protect services.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/fail2ban/fail2ban_0.10.0.bb      |  41 +++++
 recipes-security/fail2ban/files/fail2ban_setup.py | 175 ++++++++++++++++++++++
 recipes-security/fail2ban/files/initd             |  98 ++++++++++++
 3 files changed, 314 insertions(+)
 create mode 100644 recipes-security/fail2ban/fail2ban_0.10.0.bb
 create mode 100755 recipes-security/fail2ban/files/fail2ban_setup.py
 create mode 100644 recipes-security/fail2ban/files/initd

diff --git a/recipes-security/fail2ban/fail2ban_0.10.0.bb b/recipes-security/fail2ban/fail2ban_0.10.0.bb
new file mode 100644
index 0000000..465316c
--- /dev/null
+++ b/recipes-security/fail2ban/fail2ban_0.10.0.bb
@@ -0,0 +1,41 @@
+SUMMARY = "Daemon to ban hosts that cause multiple authentication errors."
+DESCRIPTION = "Fail2Ban scans log files like /var/log/auth.log and bans IP addresses having too \
+many failed login attempts. It does this by updating system firewall rules to reject new \
+connections from those IP addresses, for a configurable amount of time. Fail2Ban comes \
+out-of-the-box ready to read many standard log files, such as those for sshd and Apache, \
+and is easy to configure to read any log file you choose, for any error you choose."
+HOMEPAGE = "http://www.fail2ban.org"
+
+LICENSE = "GPL-2.0"
+LIC_FILES_CHKSUM = "file://COPYING;md5=ecabc31e90311da843753ba772885d9f"
+
+SRCREV ="c60784540c5307d16cdc136ace5b395961492e73"
+SRC_URI = " \
+	git://github.com/fail2ban/fail2ban.git;branch=0.10 \
+	file://initd \
+	file://fail2ban_setup.py \
+"
+
+inherit update-rc.d setuptools
+
+S = "${WORKDIR}/git"
+
+INITSCRIPT_PACKAGES = "${PN}"
+INITSCRIPT_NAME = "fail2ban-server"
+INITSCRIPT_PARAMS = "defaults 25"
+
+do_compile_prepend () {
+    cp ${WORKDIR}/fail2ban_setup.py ${S}/setup.py
+}
+
+do_install_append () {
+	install -d ${D}/${sysconfdir}/fail2ban
+	install -d ${D}/${sysconfdir}/init.d
+    	install -m 0755 ${WORKDIR}/initd ${D}${sysconfdir}/init.d/fail2ban-server
+}
+
+FILES_${PN} += "/run"
+
+INSANE_SKIP_${PN}_append = "already-stripped"
+
+RDEPENDS_${PN} = "sysklogd iptables sqlite3 python python-pyinotify"
diff --git a/recipes-security/fail2ban/files/fail2ban_setup.py b/recipes-security/fail2ban/files/fail2ban_setup.py
new file mode 100755
index 0000000..a5d4ed6
--- /dev/null
+++ b/recipes-security/fail2ban/files/fail2ban_setup.py
@@ -0,0 +1,175 @@
+#!/usr/bin/env python
+# emacs: -*- mode: python; py-indent-offset: 4; indent-tabs-mode: t -*-
+# vi: set ft=python sts=4 ts=4 sw=4 noet :
+
+# This file is part of Fail2Ban.
+#
+# Fail2Ban is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License as published by
+# the Free Software Foundation; either version 2 of the License, or
+# (at your option) any later version.
+#
+# Fail2Ban is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with Fail2Ban; if not, write to the Free Software
+# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
+
+__author__ = "Cyril Jaquier, Steven Hiscocks, Yaroslav Halchenko"
+__copyright__ = "Copyright (c) 2004 Cyril Jaquier, 2008-2016 Fail2Ban Contributors"
+__license__ = "GPL"
+
+import platform
+
+try:
+	import setuptools
+	from setuptools import setup
+	from setuptools.command.install import install
+	from setuptools.command.install_scripts import install_scripts
+except ImportError:
+	setuptools = None
+	from distutils.core import setup
+
+# all versions
+from distutils.command.build_py import build_py
+from distutils.command.build_scripts import build_scripts
+if setuptools is None:
+	from distutils.command.install import install
+	from distutils.command.install_scripts import install_scripts
+try:
+	# python 3.x
+	from distutils.command.build_py import build_py_2to3
+	from distutils.command.build_scripts import build_scripts_2to3
+	_2to3 = True
+except ImportError:
+	# python 2.x
+	_2to3 = False
+
+import os
+from os.path import isfile, join, isdir, realpath
+import sys
+import warnings
+from glob import glob
+
+from fail2ban.setup import updatePyExec
+
+if setuptools and "test" in sys.argv:
+	import logging
+	logSys = logging.getLogger("fail2ban")
+	hdlr = logging.StreamHandler(sys.stdout)
+	fmt = logging.Formatter("%(asctime)-15s %(message)s")
+	hdlr.setFormatter(fmt)
+	logSys.addHandler(hdlr)
+	if set(["-q", "--quiet"]) & set(sys.argv):
+		logSys.setLevel(logging.CRITICAL)
+		warnings.simplefilter("ignore")
+		sys.warnoptions.append("ignore")
+	elif set(["-v", "--verbose"]) & set(sys.argv):
+		logSys.setLevel(logging.DEBUG)
+	else:
+		logSys.setLevel(logging.INFO)
+elif "test" in sys.argv:
+	print("python distribute required to execute fail2ban tests")
+	print("")
+
+longdesc = '''
+Fail2Ban scans log files like /var/log/pwdfail or
+/var/log/apache/error_log and bans IP that makes
+too many password failures. It updates firewall rules
+to reject the IP address or executes user defined
+commands.'''
+
+if setuptools:
+	setup_extra = {
+		'test_suite': "fail2ban.tests.utils.gatherTests",
+		'use_2to3': True,
+	}
+else:
+	setup_extra = {}
+
+data_files_extra = []
+
+# Installing documentation files only under Linux or other GNU/ systems
+# (e.g. GNU/kFreeBSD), since others might have protective mechanisms forbidding
+# installation there (see e.g. #1233)
+platform_system = platform.system().lower()
+doc_files = ['README.md', 'DEVELOP', 'FILTERS', 'doc/run-rootless.txt']
+if platform_system in ('solaris', 'sunos'):
+	doc_files.append('README.Solaris')
+if platform_system in ('linux', 'solaris', 'sunos') or platform_system.startswith('gnu'):
+	data_files_extra.append(
+		('/usr/share/doc/fail2ban', doc_files)
+	)
+
+# Get version number, avoiding importing fail2ban.
+# This is due to tests not functioning for python3 as 2to3 takes place later
+exec(open(join("fail2ban", "version.py")).read())
+
+setup(
+	name = "fail2ban",
+	version = version,
+	description = "Ban IPs that make too many password failures",
+	long_description = longdesc,
+	author = "Cyril Jaquier & Fail2Ban Contributors",
+	author_email = "cyril.jaquier@fail2ban.org",
+	url = "http://www.fail2ban.org",
+	license = "GPL",
+	platforms = "Posix",
+	cmdclass = {
+		'build_py': build_py, 'build_scripts': build_scripts, 
+	},
+	scripts = [
+		'bin/fail2ban-client',
+		'bin/fail2ban-server',
+		'bin/fail2ban-regex',
+		'bin/fail2ban-testcases',
+		# 'bin/fail2ban-python', -- link (binary), will be installed via install_scripts_f2b wrapper
+	],
+	packages = [
+		'fail2ban',
+		'fail2ban.client',
+		'fail2ban.server',
+		'fail2ban.tests',
+		'fail2ban.tests.action_d',
+	],
+	package_data = {
+		'fail2ban.tests':
+			[ join(w[0], f).replace("fail2ban/tests/", "", 1)
+				for w in os.walk('fail2ban/tests/files')
+				for f in w[2]] +
+			[ join(w[0], f).replace("fail2ban/tests/", "", 1)
+				for w in os.walk('fail2ban/tests/config')
+				for f in w[2]] +
+			[ join(w[0], f).replace("fail2ban/tests/", "", 1)
+				for w in os.walk('fail2ban/tests/action_d')
+				for f in w[2]]
+	},
+	data_files = [
+		('/etc/fail2ban',
+			glob("config/*.conf")
+		),
+		('/etc/fail2ban/filter.d',
+			glob("config/filter.d/*.conf")
+		),
+		('/etc/fail2ban/filter.d/ignorecommands',
+			[p for p in glob("config/filter.d/ignorecommands/*") if isfile(p)]
+		),
+		('/etc/fail2ban/action.d',
+			glob("config/action.d/*.conf") +
+			glob("config/action.d/*.py")
+		),
+		('/etc/fail2ban/fail2ban.d',
+			''
+		),
+		('/etc/fail2ban/jail.d',
+			''
+		),
+		('/var/lib/fail2ban',
+			''
+		),
+	] + data_files_extra,
+	**setup_extra
+)
diff --git a/recipes-security/fail2ban/files/initd b/recipes-security/fail2ban/files/initd
new file mode 100644
index 0000000..4f4b394
--- /dev/null
+++ b/recipes-security/fail2ban/files/initd
@@ -0,0 +1,98 @@
+#!/bin/sh
+### BEGIN INIT INFO
+# Provides: fail2ban
+# Required-Start: $local_fs $remote_fs
+# Required-Stop: $local_fs $remote_fs
+# Should-Start: $time $network $syslog iptables firehol shorewall ferm
+# Should-Stop: $network $syslog iptables firehol shorewall ferm
+# Default-Start: 2 3 4 5
+# Default-Stop: 0 1 6
+# Short-Description: Start/Stop fail2ban
+# Description: Start/Stop fail2ban, a daemon to ban hosts that cause multiple authentication errors
+### END INIT INFO
+
+# Source function library.
+. /etc/init.d/functions
+
+# Check that the config file exists
+[ -f /etc/fail2ban/fail2ban.conf ] || exit 0
+
+check_privsep_dir() {                                                              
+    # Create the PrivSep empty dir if necessary
+    if [ ! -d /var/run/fail2ban ]; then            
+        mkdir /var/run/fail2ban                    
+        chmod 0755 /var/run/fail2ban
+    fi                                         
+}         
+
+FAIL2BAN="/usr/bin/fail2ban-client"
+prog=fail2ban-server
+lockfile=${LOCKFILE-/var/lock/subsys/fail2ban}
+socket=${SOCKET-/var/run/fail2ban/fail2ban.sock}
+pidfile=${PIDFILE-/var/run/fail2ban/fail2ban.pid}
+RETVAL=0
+
+start() {
+    echo -n $"Starting fail2ban: "
+    check_privsep_dir
+    ${FAIL2BAN} -x start > /dev/null
+    RETVAL=$?
+    if [ $RETVAL = 0 ]; then
+        touch ${lockfile}
+        echo_success
+    else
+        echo_failure
+    fi
+    echo
+    return $RETVAL
+}
+
+stop() {
+    echo -n $"Stopping fail2ban: "
+    ${FAIL2BAN} stop > /dev/null
+    RETVAL=$?
+    if [ $RETVAL = 0 ]; then
+        rm -f ${lockfile} ${pidfile}
+        echo_success
+    else
+        echo_failure
+    fi
+    echo
+    return $RETVAL
+}
+
+reload() {
+    echo "Reloading fail2ban: "
+    ${FAIL2BAN} reload
+    RETVAL=$?
+    echo
+    return $RETVAL
+}
+
+# See how we were called.
+case "$1" in
+    start)
+        status -p ${pidfile} ${prog} >/dev/null 2>&1 && exit 0
+        start
+        ;;
+    stop)
+        stop
+        ;;
+    reload)
+        reload
+        ;;
+    restart)
+        stop
+        start
+        ;;
+    status)
+        status -p ${pidfile} ${prog}
+        RETVAL=$?
+        [ $RETVAL = 0 ] && ${FAIL2BAN} status
+        ;;
+    *)
+        echo $"Usage: fail2ban {start|stop|restart|reload|status}"
+        RETVAL=2
+esac
+
+exit $RETVAL
-- 
2.7.4


