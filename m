Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76108C6377E
	for <webhook@archiver.kernel.org>; Mon, 18 Apr 2022 14:26:00 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
 [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web12.29569.1650210333042417188
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Apr 2022 08:45:33 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.200,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 66E6620005;
	Sun, 17 Apr 2022 15:45:29 +0000 (UTC)
Date: Sun, 17 Apr 2022 17:40:33 +0200
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org,
 Abongwa Amahnui Bonalais <abongwabonalais@gmail.com>
CC: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: =?US-ASCII?Q?Re=3A_=5Byocto=5D_=5BPATCH_yocto-autobuilder-helper_v?=
 =?US-ASCII?Q?4=5D_Add_a_banner_on_the_old_documentation_docs?=
In-Reply-To: <20220417084012.19517-1-abongwabonalais@gmail.com>
References: <20220417084012.19517-1-abongwabonalais@gmail.com>
Message-ID: <48208941-B986-487E-8492-830F793BA44F@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Apr 2022 14:26:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56792

Hi Amahnui,

On April 17, 2022 10:40:13 AM GMT+02:00, Abongwa Amahnui Bonalais <abongwa=
bonalais@gmail=2Ecom> wrote:
>Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail=2Ecom>
>---
> trial=2Epy      | 32 +++++++++++++++++++++++++++
> trialstyle=2Epy | 61 +++++++++++++++++++++++++++++++++++++++++++++++++++
> 2 files changed, 93 insertions(+)
> create mode 100644 trial=2Epy
> create mode 100644 trialstyle=2Epy
>
>diff --git a/trial=2Epy b/trial=2Epy
>new file mode 100644
>index 0000000=2E=2Ec85b16c
>--- /dev/null
>+++ b/trial=2Epy
>@@ -0,0 +1,32 @@
>+#!usr/bin/env python3

#!/usr/bin/env python3

>+#
>+# SPDX-License-Identifier: GPL-2=2E0-only
>+#
>+#Author: Abongwa Bonalais Amahnui <abongwabonalais@gmail=2Ecom>
>+#
>+#
>+# function to append to the content of a html file below the body tag
>+#
>+#
>+import os
>+html_content =3D '''
>+<div id=3D"outdated-warning">This document is outdated, you should selec=
t the <a href=3D"https://docs=2Eyoctoproject=2Eorg/">latest release version=
</a> in this series=2E</div>
>+
>+'''
>+
>+
>+def loop_through_html_directories(dir):
>+    for dirpath, dirnames, filenames in os=2Ewalk(dir):
>+    # loop through all files in the directory
>+        for filename in filenames:
>+            # check if the file is an html file
>+            if filename=2Eendswith('=2Ehtml'):

All of the above cam be replaced with:
import glob
glob=2Eglob('**/*=2Ehtml', recursive=3DTrue)

C=2Ef=2E https://docs=2Epython=2Eorg/3/library/glob=2Ehtml#glob=2Eglob

>+                # open the html file in read mode
>+                with open(os=2Epath=2Ejoin(dirpath, filename), 'r', enco=
ding=3D"ISO-8859-1") as f:
>+                    # read the content of the html file
>+                    current_content =3D f=2Eread()
>+                # open the html file in write mode
>+                with open(os=2Epath=2Ejoin(dirpath, filename), 'w') as f=
:

I assume we want the same encoding that was needed for opening the file fo=
r writing the file otherwise we'll have some differences won't we?

In the end I think a recursive "find" for all html files which executes se=
d could have work just fine too=2E

E=2Eg=2E
find -name "*=2Ehtml" -exec sed -i 's/<body>/<body><the banner>/' {} \;

But potato potato right now =E2=98=BA=EF=B8=8F

Also, this script needs to be called somewhere=2E

I suggest those scripts are added to the scripts/ directory of the git rep=
o and they need to be called in run-docs-build shell script otherwise they =
are not used=2E

Cheers,
Quentin

>+                    # write the content of the html file
>+                    f=2Ewrite(current_content=2Ereplace('<body>', '<body=
>' + html_content))
>+loop_through_html_directories('=2E')
>diff --git a/trialstyle=2Epy b/trialstyle=2Epy
>new file mode 100644
>index 0000000=2E=2Ea75721a
>--- /dev/null
>+++ b/trialstyle=2Epy
>@@ -0,0 +1,61 @@
>+#!usr/bin/env python3
>+#
>+# SPDX-License-Identifier: GPL-2=2E0-only
>+#
>+#Author: Abongwa Bonalais Amahnui <abongwabonalais@gmail=2Ecom>
>+#
>+#
>+# function to append to the content of a css file below the body class
>+#
>+#
>+import os
>+
>+
>+content =3D '''
>+=20
>+  font-family: Verdana, Sans, sans-serif;
>+
>+  /*min-width: 640px;*/
>+  width: 100%;
>+  margin:  0;
>+  padding: 0;
>+  color: #333;
>+  overflow-x: hidden;
>+  }
>+=20
>+ /*added books too*/
>+=2Ebook{
>+margin:  0 auto;
>+min-width: 640px;
>+padding: 0 5em 5em 5em;
>+}
>+/* added the id below to make the banner show and be fixed*/
>+#outdated-warning{
>+text-align: center;
>+background-color: rgb(255, 186, 186);=20
>+color: rgb(106, 14, 14);=20
>+padding: 0=2E5em 0;=20
>+width: 100%;
>+position: fixed;
>+top: 0;
>+
>+
>+'''
>+
>+
>+
>+def loop_through_html_directories(dir):
>+    for dirpath, dirnames, filenames in os=2Ewalk(dir):
>+    # loop through all files in the directory
>+        for filename in filenames:
>+            # check if the file is an html file
>+            if filename=2Eendswith('style=2Ecss'):
>+                # open the html file in read mode
>+                with open(os=2Epath=2Ejoin(dirpath, filename), 'r', enco=
ding=3D"ISO-8859-1") as f:
>+                    # read the content of the html file
>+                   css_content =3D f=2Eread()
>+                # open the html file in write mode
>+                with open(os=2Epath=2Ejoin(dirpath, filename), 'w') as f=
:
>+                    # write the content of the html file
>+                    f=2Ewrite(css_content=2Ereplace(css_content[css_cont=
ent=2Efind('body {'):css_content=2Efind('}'[0])], 'body {' + content ))
>+loop_through_html_directories('=2E')

