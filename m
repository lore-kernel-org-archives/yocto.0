Return-Path: <prvs=14716c3ac2=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44AA1E00D24; Wed, 25 Oct 2017 05:21:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.169.146.160 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A330DE00D1E
	for <yocto@yoctoproject.org>; Wed, 25 Oct 2017 05:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1508934070;
	s=domk; d=rsi-elektrotechnik.de; h=Date:Subject:Cc:To:From;
	bh=XWghNIWu3saLMEFzRgEfnYWc5dB4hoQUVuS/hzalkrE=;
	b=Y+0PQLjPODNx7TEPJnmoY8Z36dGE3gD4FbhAJvTXPNJU8VmJv4lzzJZBjls3siEItD
	jpTj+GemjF5T3dQhshpbl4+G5lTg7NM5/mRyxwwRNAg+mxDs7DZ5sjeR+/52fxVLz6dN
	nX0LqDcb0PU/tCEjeU8f+8iANPRqTGRsiaPuI=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9mHNc01sePA6ZpTLlbQjW24Oop5Qo4fhADQi1rSTLfuAPP4FE=
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:2cf1:e1f:af6c:cbea])
	by smtp.strato.de (RZmta 42.8 AUTH) with ESMTPSA id 40b7eet9PCL9Qg2
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Wed, 25 Oct 2017 14:21:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1508934069; x=1509538869;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=From:To:Cc:
	Subject:Date:Message-Id; bh=XWghNIWu3saLMEFzRgEfnYWc5dB4hoQUVuS/
	hzalkrE=; b=sdOl10kuVX3rY/Arg/KstKK+xZGPdd5nlHunE+vTvjaxQLOu8Zcl
	qhTm16Z/8GSqP5t59TP4kpVNuU/tHPwct/Ka3DL7ACIbfpck6ECQLIA/pvht0eWl
	7KoUGb6Y7GIeX/F1TxGM/XzyvE2o0f4AHAbjJinFim5cXnmWBkWUiDk=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.5.0) with ESMTPSA id
	md50000014550.msg; Wed, 25 Oct 2017 14:21:08 +0200
X-MDRemoteIP: 62.168.35.124
X-MDHelo: localhost.localdomain
X-MDArrival-Date: Wed, 25 Oct 2017 14:21:08 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=14716c3ac2=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: paul.eggleton@linux.intel.com
Date: Wed, 25 Oct 2017 12:20:39 +0000
Message-Id: <1508934039-32450-1-git-send-email-holzmayr@rsi-elektrotechnik.de>
X-Mailer: git-send-email 2.7.4
Cc: yocto@yoctoproject.org
Subject: [PATCH] devtool: add clean command
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
X-List-Received-Date: Wed, 25 Oct 2017 12:21:15 -0000

Add an idiomatic way to devtool to clean a recipe.

Signed-off-by: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
---
 scripts/lib/devtool/clean.py | 48 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 scripts/lib/devtool/clean.py

diff --git a/scripts/lib/devtool/clean.py b/scripts/lib/devtool/clean.py
new file mode 100644
index 0000000..30f4044
--- /dev/null
+++ b/scripts/lib/devtool/clean.py
@@ -0,0 +1,48 @@
+# Development tool - clean command plugin
+#
+# Copyright (C) 2014-2015 Intel Corporation
+#               2017 R-S-I Elektrotechnik GmbH & Co. KG
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+"""Devtool clean plugin"""
+
+import bb
+from devtool import exec_build_env_command, check_workspace_recipe
+
+def _get_build_tasks(config):
+    tasks = config.get('Clean', 'clean_task', 'clean').split(',')
+    return ['do_%s' % task.strip() for task in tasks]
+
+def clean(args, config, basepath, workspace):
+    """Entry point for the devtool 'clean' subcommand"""
+
+    build_tasks = _get_build_tasks(config)
+    try:
+        bbargs = []
+        for task in build_tasks:
+            bbargs.append('%s:%s' % (args.recipename, task))
+        exec_build_env_command(config.init_path, basepath, 'bitbake %s' % ' '.join(bbargs), watch=True)
+    except bb.process.ExecutionError as e:
+        # We've already seen the output since watch=True, so just ensure we return something to the user
+        return e.exitcode
+
+    return 0
+
+def register_commands(subparsers, context):
+    """Register devtool subcommands from this plugin"""
+    parser_build = subparsers.add_parser('clean', help='Clean a recipe',
+                                         description='Cleans the specified recipe using bitbake',
+                                         group='working', order=50)
+    parser_build.add_argument('recipename', help='Recipe to clean')
+    parser_build.set_defaults(func=clean)
-- 
2.7.4


-- 
_____________________________________________________________
R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
Fon: +49 8444 9204-0
Fax: +49 8444 9204-50
www.rsi-elektrotechnik.de

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


