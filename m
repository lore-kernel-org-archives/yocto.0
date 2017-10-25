Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6444BE00D20; Wed, 25 Oct 2017 07:10:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 581E0E00D01
	for <yocto@yoctoproject.org>; Wed, 25 Oct 2017 07:10:26 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga105.fm.intel.com with ESMTP; 25 Oct 2017 07:10:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,431,1503385200"; 
	d="scan'208,217";a="913614484"
Received: from lsandov1-mobl2.zpn.intel.com (HELO [10.219.128.134])
	([10.219.128.134])
	by FMSMGA003.fm.intel.com with ESMTP; 25 Oct 2017 07:10:24 -0700
Date: Wed, 25 Oct 2017 09:20:25 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-Id: <1508941225.11251.15@fm-out.intel.com>
In-Reply-To: <1508934039-32450-1-git-send-email-holzmayr@rsi-elektrotechnik.de>
References: <1508934039-32450-1-git-send-email-holzmayr@rsi-elektrotechnik.de>
X-Mailer: geary/0.11.3
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com, yocto@yoctoproject.org
Subject: Re: [PATCH] devtool: add clean command
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
X-List-Received-Date: Wed, 25 Oct 2017 14:10:28 -0000
Content-Type: multipart/alternative; boundary="=-4qQPVHw5QR0SYP0cAtj1"

--=-4qQPVHw5QR0SYP0cAtj1
Content-Type: text/plain; charset=utf-8; format=flowed



On Wed, Oct 25, 2017 at 7:20 AM, Josef Holzmayr 
<holzmayr@rsi-elektrotechnik.de> wrote:
> Add an idiomatic way to devtool to clean a recipe.

what I can see on the patch,  this does a bitbake -c clean 
<recipename>, right?

> 
> Signed-off-by: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
> ---
>  scripts/lib/devtool/clean.py | 48 
> ++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
>  create mode 100644 scripts/lib/devtool/clean.py
> 
> diff --git a/scripts/lib/devtool/clean.py 
> b/scripts/lib/devtool/clean.py
> new file mode 100644
> index 0000000..30f4044
> --- /dev/null
> +++ b/scripts/lib/devtool/clean.py
> @@ -0,0 +1,48 @@
> +# Development tool - clean command plugin
> +#
> +# Copyright (C) 2014-2015 Intel Corporation
> +#               2017 R-S-I Elektrotechnik GmbH & Co. KG
> +#
> +# This program is free software; you can redistribute it and/or 
> modify
> +# it under the terms of the GNU General Public License version 2 as
> +# published by the Free Software Foundation.
> +#
> +# This program is distributed in the hope that it will be useful,
> +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +# GNU General Public License for more details.
> +#
> +# You should have received a copy of the GNU General Public License 
> along
> +# with this program; if not, write to the Free Software Foundation, 
> Inc.,
> +# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
> +"""Devtool clean plugin"""
> +
> +import bb
> +from devtool import exec_build_env_command, check_workspace_recipe
> +
> +def _get_build_tasks(config):
> +    tasks = config.get('Clean', 'clean_task', 'clean').split(',')
> +    return ['do_%s' % task.strip() for task in tasks]
> +
> +def clean(args, config, basepath, workspace):
> +    """Entry point for the devtool 'clean' subcommand"""
> +
> +    build_tasks = _get_build_tasks(config)
> +    try:
> +        bbargs = []
> +        for task in build_tasks:
> +            bbargs.append('%s:%s' % (args.recipename, task))
> +        exec_build_env_command(config.init_path, basepath, 'bitbake 
> %s' % ' '.join(bbargs), watch=True)
> +    except bb.process.ExecutionError as e:
> +        # We've already seen the output since watch=True, so just 
> ensure we return something to the user
> +        return e.exitcode
> +
> +    return 0
> +
> +def register_commands(subparsers, context):
> +    """Register devtool subcommands from this plugin"""
> +    parser_build = subparsers.add_parser('clean', help='Clean a 
> recipe',
> +                                         description='Cleans the 
> specified recipe using bitbake',
> +                                         group='working', order=50)
> +    parser_build.add_argument('recipename', help='Recipe to clean')
> +    parser_build.set_defaults(func=clean)
> --
> 2.7.4
> 
> 
> --
> _____________________________________________________________
> R-S-I Elektrotechnik GmbH & Co. KG
> Woelkestrasse 11
> D-85301 Schweitenkirchen
> Fon: +49 8444 9204-0
> Fax: +49 8444 9204-50
> www.rsi-elektrotechnik.de
> 
> _____________________________________________________________
> Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
> Geschftsfhrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> USt-IdNr.: DE 128592548
> 
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=-4qQPVHw5QR0SYP0cAtj1
Content-Type: text/html; charset=utf-8



<br><br>On Wed, Oct 25, 2017 at 7:20 AM, Josef Holzmayr &lt;holzmayr@rsi-elektrotechnik.de&gt; wrote:<br>
<blockquote type="cite"><div class="plaintext" style="white-space: pre-wrap;">Add an idiomatic way to devtool to clean a recipe.
</div></blockquote><div><br></div><div>what I can see on the patch, &nbsp;this does a bitbake -c clean &lt;recipename&gt;, right?&nbsp;</div><br><blockquote type="cite"><div class="plaintext" style="white-space: pre-wrap;">
Signed-off-by: Josef Holzmayr &lt;<a href="mailto:holzmayr@rsi-elektrotechnik.de">holzmayr@rsi-elektrotechnik.de</a>&gt;
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
+#               2017 R-S-I Elektrotechnik GmbH &amp; Co. KG
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
<div>-- 
</div>2.7.4


<div>-- 
</div>_____________________________________________________________
R-S-I Elektrotechnik GmbH &amp; Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
Fon: +49 8444 9204-0
Fax: +49 8444 9204-50
<a href="http://www.rsi-elektrotechnik.de">www.rsi-elektrotechnik.de</a>

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschftsfhrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548

</div><div class="plaintext" style="white-space: pre-wrap;">-- 
_______________________________________________
yocto mailing list
<a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</div></blockquote>

--=-4qQPVHw5QR0SYP0cAtj1--
