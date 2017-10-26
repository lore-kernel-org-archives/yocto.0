Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D676E00D18; Thu, 26 Oct 2017 07:18:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9768E00BE8
	for <yocto@yoctoproject.org>; Thu, 26 Oct 2017 07:18:46 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga105.jf.intel.com with ESMTP; 26 Oct 2017 07:18:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,434,1503385200"; 
	d="scan'208,217";a="914038513"
Received: from lsandov1-mobl2.zpn.intel.com (HELO [10.219.128.134])
	([10.219.128.134])
	by FMSMGA003.fm.intel.com with ESMTP; 26 Oct 2017 07:18:40 -0700
Date: Thu, 26 Oct 2017 09:28:42 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-Id: <1509028122.11251.22@fm-out.intel.com>
In-Reply-To: <20171026072223.12635-1-holzmayr@rsi-elektrotechnik.de>
References: <20171026072223.12635-1-holzmayr@rsi-elektrotechnik.de>
X-Mailer: geary/0.11.3
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com, yocto@yoctoproject.org
Subject: Re: [PATCH v2] devtool: add clean command
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
X-List-Received-Date: Thu, 26 Oct 2017 14:18:48 -0000
Content-Type: multipart/alternative; boundary="=-CkU6UCl1/J0Bf2gHv9k3"

--=-CkU6UCl1/J0Bf2gHv9k3
Content-Type: text/plain; charset=utf-8; format=flowed

Josef, as Paul mentioned, this is a openembedded-core patch and should 
be sent to the proper mailing list.

Great that you included the reason of this patch on the description, 
otherwise I saw no real benefit from this change.

Leo



On Thu, Oct 26, 2017 at 2:22 AM, Josef Holzmayr 
<holzmayr@rsi-elektrotechnik.de> wrote:
> Add an idiomatic way to devtool to clean a recipe. When using devtool
> in the context of an eSDK there is no direct access to bitbake.
> This command exposes the bitbake clean facility through devtool,
> keeping the idiomatic interface and configurability.
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
> index 0000000000..473c30f366
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
> +def _get_clean_tasks(config):
> +    tasks = config.get('Clean', 'clean_task', 'clean').split(',')
> +    return ['do_%s' % task.strip() for task in tasks]
> +
> +def clean(args, config, basepath, workspace):
> +    """Entry point for the devtool 'clean' subcommand"""
> +
> +    build_tasks = _get_clean_tasks(config)
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
> 2.14.3
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

--=-CkU6UCl1/J0Bf2gHv9k3
Content-Type: text/html; charset=utf-8

<div>Josef, as Paul mentioned, this is a openembedded-core patch and should be sent to the proper mailing list.</div><div><br></div><div>Great that you included the reason of this patch on the description, otherwise I saw no real benefit from this change.</div><div><br></div><div>Leo</div>

<div><br></div><br><br>On Thu, Oct 26, 2017 at 2:22 AM, Josef Holzmayr &lt;holzmayr@rsi-elektrotechnik.de&gt; wrote:<br>
<blockquote type="cite"><div class="plaintext" style="white-space: pre-wrap;">Add an idiomatic way to devtool to clean a recipe. When using devtool
in the context of an eSDK there is no direct access to bitbake.
This command exposes the bitbake clean facility through devtool,
keeping the idiomatic interface and configurability.

Signed-off-by: Josef Holzmayr &lt;<a href="mailto:holzmayr@rsi-elektrotechnik.de">holzmayr@rsi-elektrotechnik.de</a>&gt;
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
<div>-- 
</div>2.14.3


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

--=-CkU6UCl1/J0Bf2gHv9k3--
