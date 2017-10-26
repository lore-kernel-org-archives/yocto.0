Return-Path: <prvs=1472867ef0=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7FABE00D0E; Thu, 26 Oct 2017 00:23:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_SPAM,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [81.169.146.162 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [81.169.146.162 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00F1DE00D0B
	for <yocto@yoctoproject.org>; Thu, 26 Oct 2017 00:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1509002591;
	s=domk; d=rsi-elektrotechnik.de; h=Date:Subject:Cc:To:From;
	bh=DVLZD51t/Ouos8H+EK4Y6nsEhu2DcYD0Ntufpus7jlA=;
	b=GFXEI9LV+mNkrFgZI0NJyakVMPLHvD2T4vw4hDet/r5l54Jg0ytTtgsyCcQ/ux3Q5z
	o9esKof97R2o0ojzlARDIRYrEqPJwdKj9ZHVcqNfdImb4+m1abnUU+sxzIswzswONWox
	oiWacdYF540zUedYpbnwgXiYXfXevE/YktvkY=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9mHNc01sePA6ZpTLlbQjW24Oop5Qo4fhADQi1rSTLfuAPP4FE=
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:2cf1:e1f:af6c:cbea])
	by smtp.strato.de (RZmta 42.8 AUTH) with ESMTPSA id 40b7eet9Q7N6b7M
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Thu, 26 Oct 2017 09:23:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1509002576; x=1509607376;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=From:To:Cc:
	Subject:Date:Message-Id; bh=DVLZD51t/Ouos8H+EK4Y6nsEhu2DcYD0Ntuf
	pus7jlA=; b=CVA9FdbuK7BN63Bb0R4tFKsAACmDz4PmiRBDKd6/oP4tvrScUZAi
	aOhj+KrVdt+30m7MnWXaDJbqpTppgfj/xk599psB610WYnMpHcn5uM7grZJKA2lx
	mj5dAydHJB63R0ASOqn6Fos34PrZ93XVRsoFskTU1S92VnmN56yOYew=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.5.0) with ESMTPSA id
	md50000014799.msg; Thu, 26 Oct 2017 09:22:54 +0200
X-MDRemoteIP: 89.24.97.134
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Thu, 26 Oct 2017 09:22:54 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1472867ef0=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: paul.eggleton@linux.intel.com
Date: Thu, 26 Oct 2017 09:22:23 +0200
Message-Id: <20171026072223.12635-1-holzmayr@rsi-elektrotechnik.de>
X-Mailer: git-send-email 2.14.3
Cc: yocto@yoctoproject.org
Subject: [PATCH v2] devtool: add clean command
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
X-List-Received-Date: Thu, 26 Oct 2017 07:23:14 -0000

Add an idiomatic way to devtool to clean a recipe. When using devtool
in the context of an eSDK there is no direct access to bitbake.
This command exposes the bitbake clean facility through devtool,
keeping the idiomatic interface and configurability.

Signed-off-by: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
---
 scripts/lib/devtool/clean.py | 48 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 scripts/lib/devtool/clean.py

diff --git a/scripts/lib/devtool/clean.py b/scripts/lib/devtool/clean.py
new file mode 100644
index 0000000000..473c30f366
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
+def _get_clean_tasks(config):
+    tasks = config.get('Clean', 'clean_task', 'clean').split(',')
+    return ['do_%s' % task.strip() for task in tasks]
+
+def clean(args, config, basepath, workspace):
+    """Entry point for the devtool 'clean' subcommand"""
+
+    build_tasks = _get_clean_tasks(config)
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
2.14.3


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


