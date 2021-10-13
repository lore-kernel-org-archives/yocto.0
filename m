Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F153EC433F5
	for <webhook@archiver.kernel.org>; Wed, 13 Oct 2021 22:58:56 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web10.1989.1634165935742743048
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 15:58:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=W6NvDZ7r;
 spf=pass (domain: gmail.com, ip: 209.85.216.50,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id
 pf6-20020a17090b1d8600b0019fa884ab85so5553390pjb.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 15:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LxZYcUhS2/kvCbLf3htt/nzyiikt09cBp6Nidr2Khpc=;
        b=W6NvDZ7rlh1SSeupmuC2fOAFxfqfb7mrPQJk5Sj6P6MzXONvaVs4BP+klyaIE9VuX7
         ll6z3QdFblboZSbg7x7cQmDmjNIHE6xAJhb0a9uMnWf6nA2ATYGNV9gpYpIOUwWd3muh
         vKJAbN0VwhMBNY36KqUCRNMlONLa1j3IHDjodY20Y5OLvxpaI+Hy5P1Q8i+3rVaPVsEt
         I7AYcP5rxdG4TCJPpWGgncXIFNUNgYDqXvpywfPsQPn87Toz+OBQrLeANfpzirhPrzpj
         mmW1mtiwaFVqPGLhEbR42Sh6keJD/CROi35qZfO6f2lI40XbJDGOfU+YnrGeN1pO9PZ+
         ao7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LxZYcUhS2/kvCbLf3htt/nzyiikt09cBp6Nidr2Khpc=;
        b=67/TieMg2OUcJSaJtkU9EAgFWRZKgtxXxjAIedPgu7G8pAon+D6upfP5bWy2wDa45F
         +HOZK8YYAyst9SmeOUTR0EebGdFZPdzlC8Kt3kxFzRvxDWFOkgVWdvS/3jn5HQRh/xUO
         9p0QbneR3GpYjbpbxhMtfXpZpWRqJghcSbw877d01mTSH0p6wYlkbBXLKeGcV46yr3x0
         5F+f6WghLpEKkYTIWdDg5ZC6m58xiXZNcUnQ0XMrqaoXI4G/y/7HGjOdZ8+IxVkzqIYU
         WnmhRi4/3SgLXq1CHv4awUsbhx6r9aGPqhp2tfUcp5N6qCkY9X5vVHw0FZETzgINtI8e
         it9Q==
X-Gm-Message-State: AOAM532cgjubuc6EGE/dB11Qh+raYTCAYrFn2Sv1SK+T8r6mLhPvBfBK
	0LjSZf6YqeHeZ3uGUQV4ncpIaDlM1es=
X-Google-Smtp-Source: 
 ABdhPJysLWbvajzDZSOfWASGXqhgJdIyq/aWa9yv+/MSzwyROcUHvFjdGyvVNv+Dm0/HJf6Fs44xXg==
X-Received: by 2002:a17:90a:b314:: with SMTP id
 d20mr16837574pjr.174.1634165934661;
        Wed, 13 Oct 2021 15:58:54 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:dbb2:6e4b:f1d2:3def])
        by smtp.gmail.com with ESMTPSA id
 u19sm507101pgo.73.2021.10.13.15.58.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Oct 2021 15:58:54 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] python3-fail2ban: fix build failure and
 cleanup
Date: Wed, 13 Oct 2021 15:58:53 -0700
Message-Id: <20211013225853.3018810-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Oct 2021 22:58:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55062

Fixes:
error in fail2ban setup command: use_2to3 is invalid.
ERROR: 'python3 setup.py build ' execution failed.

drop custom fail2ban_setup.py
remove pyhton-fail2ban as its a symlink to python3

Update to tip for 11.2 branch

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../fail2ban/files/fail2ban_setup.py          | 174 ------------------
 .../fail2ban/python3-fail2ban_0.11.2.bb       |   8 +-
 2 files changed, 4 insertions(+), 178 deletions(-)
 delete mode 100755 recipes-security/fail2ban/files/fail2ban_setup.py

diff --git a/recipes-security/fail2ban/files/fail2ban_setup.py b/recipes-security/fail2ban/files/fail2ban_setup.py
deleted file mode 100755
index e231949..0000000
--- a/recipes-security/fail2ban/files/fail2ban_setup.py
+++ /dev/null
@@ -1,174 +0,0 @@
-# emacs: -*- mode: python; py-indent-offset: 4; indent-tabs-mode: t -*-
-# vi: set ft=python sts=4 ts=4 sw=4 noet :
-
-# This file is part of Fail2Ban.
-#
-# Fail2Ban is free software; you can redistribute it and/or modify
-# it under the terms of the GNU General Public License as published by
-# the Free Software Foundation; either version 2 of the License, or
-# (at your option) any later version.
-#
-# Fail2Ban is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License
-# along with Fail2Ban; if not, write to the Free Software
-# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
-
-__author__ = "Cyril Jaquier, Steven Hiscocks, Yaroslav Halchenko"
-__copyright__ = "Copyright (c) 2004 Cyril Jaquier, 2008-2016 Fail2Ban Contributors"
-__license__ = "GPL"
-
-import platform
-
-try:
-	import setuptools
-	from setuptools import setup
-	from setuptools.command.install import install
-	from setuptools.command.install_scripts import install_scripts
-except ImportError:
-	setuptools = None
-	from distutils.core import setup
-
-# all versions
-from distutils.command.build_py import build_py
-from distutils.command.build_scripts import build_scripts
-if setuptools is None:
-	from distutils.command.install import install
-	from distutils.command.install_scripts import install_scripts
-try:
-	# python 3.x
-	from distutils.command.build_py import build_py_2to3
-	from distutils.command.build_scripts import build_scripts_2to3
-	_2to3 = True
-except ImportError:
-	# python 2.x
-	_2to3 = False
-
-import os
-from os.path import isfile, join, isdir, realpath
-import sys
-import warnings
-from glob import glob
-
-from fail2ban.setup import updatePyExec
-
-if setuptools and "test" in sys.argv:
-	import logging
-	logSys = logging.getLogger("fail2ban")
-	hdlr = logging.StreamHandler(sys.stdout)
-	fmt = logging.Formatter("%(asctime)-15s %(message)s")
-	hdlr.setFormatter(fmt)
-	logSys.addHandler(hdlr)
-	if set(["-q", "--quiet"]) & set(sys.argv):
-		logSys.setLevel(logging.CRITICAL)
-		warnings.simplefilter("ignore")
-		sys.warnoptions.append("ignore")
-	elif set(["-v", "--verbose"]) & set(sys.argv):
-		logSys.setLevel(logging.DEBUG)
-	else:
-		logSys.setLevel(logging.INFO)
-elif "test" in sys.argv:
-	print("python distribute required to execute fail2ban tests")
-	print("")
-
-longdesc = '''
-Fail2Ban scans log files like /var/log/pwdfail or
-/var/log/apache/error_log and bans IP that makes
-too many password failures. It updates firewall rules
-to reject the IP address or executes user defined
-commands.'''
-
-if setuptools:
-	setup_extra = {
-		'test_suite': "fail2ban.tests.utils.gatherTests",
-		'use_2to3': True,
-	}
-else:
-	setup_extra = {}
-
-data_files_extra = []
-
-# Installing documentation files only under Linux or other GNU/ systems
-# (e.g. GNU/kFreeBSD), since others might have protective mechanisms forbidding
-# installation there (see e.g. #1233)
-platform_system = platform.system().lower()
-doc_files = ['README.md', 'DEVELOP', 'FILTERS', 'doc/run-rootless.txt']
-if platform_system in ('solaris', 'sunos'):
-	doc_files.append('README.Solaris')
-if platform_system in ('linux', 'solaris', 'sunos') or platform_system.startswith('gnu'):
-	data_files_extra.append(
-		('/usr/share/doc/fail2ban', doc_files)
-	)
-
-# Get version number, avoiding importing fail2ban.
-# This is due to tests not functioning for python3 as 2to3 takes place later
-exec(open(join("fail2ban", "version.py")).read())
-
-setup(
-	name = "fail2ban",
-	version = version,
-	description = "Ban IPs that make too many password failures",
-	long_description = longdesc,
-	author = "Cyril Jaquier & Fail2Ban Contributors",
-	author_email = "cyril.jaquier@fail2ban.org",
-	url = "http://www.fail2ban.org",
-	license = "GPL",
-	platforms = "Posix",
-	cmdclass = {
-		'build_py': build_py, 'build_scripts': build_scripts, 
-	},
-	scripts = [
-		'bin/fail2ban-client',
-		'bin/fail2ban-server',
-		'bin/fail2ban-regex',
-		'bin/fail2ban-testcases',
-		# 'bin/fail2ban-python', -- link (binary), will be installed via install_scripts_f2b wrapper
-	],
-	packages = [
-		'fail2ban',
-		'fail2ban.client',
-		'fail2ban.server',
-		'fail2ban.tests',
-		'fail2ban.tests.action_d',
-	],
-	package_data = {
-		'fail2ban.tests':
-			[ join(w[0], f).replace("fail2ban/tests/", "", 1)
-				for w in os.walk('fail2ban/tests/files')
-				for f in w[2]] +
-			[ join(w[0], f).replace("fail2ban/tests/", "", 1)
-				for w in os.walk('fail2ban/tests/config')
-				for f in w[2]] +
-			[ join(w[0], f).replace("fail2ban/tests/", "", 1)
-				for w in os.walk('fail2ban/tests/action_d')
-				for f in w[2]]
-	},
-	data_files = [
-		('/etc/fail2ban',
-			glob("config/*.conf")
-		),
-		('/etc/fail2ban/filter.d',
-			glob("config/filter.d/*.conf")
-		),
-		('/etc/fail2ban/filter.d/ignorecommands',
-			[p for p in glob("config/filter.d/ignorecommands/*") if isfile(p)]
-		),
-		('/etc/fail2ban/action.d',
-			glob("config/action.d/*.conf") +
-			glob("config/action.d/*.py")
-		),
-		('/etc/fail2ban/fail2ban.d',
-			''
-		),
-		('/etc/fail2ban/jail.d',
-			''
-		),
-		('/var/lib/fail2ban',
-			''
-		),
-	] + data_files_extra,
-	**setup_extra
-)
diff --git a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
index ed75a0e..627496f 100644
--- a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
+++ b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
@@ -9,10 +9,9 @@ HOMEPAGE = "http://www.fail2ban.org"
 LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ecabc31e90311da843753ba772885d9f"
 
-SRCREV ="eea1881b734b73599a21df2bfbe58b11f78d0a46"
+SRCREV ="d6b884f3b72b8a42b21da863836569ef6836c2ea"
 SRC_URI = " git://github.com/fail2ban/fail2ban.git;branch=0.11 \
         file://initd \
-        file://fail2ban_setup.py \
         file://run-ptest \
 "
 
@@ -20,13 +19,13 @@ inherit update-rc.d ptest setuptools3
 
 S = "${WORKDIR}/git"
 
-do_compile:prepend () {
-    cp ${WORKDIR}/fail2ban_setup.py ${S}/setup.py
+do_compile () {
     cd ${S}
     ./fail2ban-2to3
 }
 
 do_install:append () {
+    rm  -f ${D}/${bindir}/fail2ban-python
     install -d ${D}/${sysconfdir}/fail2ban
     install -d ${D}/${sysconfdir}/init.d
     install -m 0755 ${WORKDIR}/initd ${D}${sysconfdir}/init.d/fail2ban-server
@@ -38,6 +37,7 @@ do_install_ptest:append () {
     install -d ${D}${PTEST_PATH}/bin
     sed -i -e 's/##PYTHON##/${PYTHON_PN}/g' ${D}${PTEST_PATH}/run-ptest
     install -D ${S}/bin/* ${D}${PTEST_PATH}/bin
+    rm -f ${D}${PTEST_PATH}/bin/fail2ban-python
 }
 
 FILES:${PN} += "/run"
-- 
2.25.1


