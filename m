Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F76FC47089
	for <webhook@archiver.kernel.org>; Fri, 22 Apr 2022 16:52:00 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
 [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web11.6197.1650616241640480595
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Apr 2022 01:30:42 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.197,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 76AB21C0002;
	Fri, 22 Apr 2022 08:30:38 +0000 (UTC)
Date: Fri, 22 Apr 2022 10:30:37 +0200
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org,
 Abongwa Amahnui Bonalais <abongwabonalais@gmail.com>
CC: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: Re: [yocto] [PATCH v6] Add a banner on the old documentation docs
In-Reply-To: <20220421220614.30390-1-abongwabonalais@gmail.com>
References: <20220421220614.30390-1-abongwabonalais@gmail.com>
Message-ID: <106DA91B-8E31-4F3D-A5EA-1CB7A9EA0789@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Apr 2022 16:52:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56841

Hi Amahnui,

On April 22, 2022 12:06:14 AM GMT+02:00, Abongwa Amahnui Bonalais <abongwa=
bonalais@gmail=2Ecom> wrote:
>Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail=2Ecom>
>---
> htmlscript=2Epy  | 36 +++++++++++++++++++++++++++++
> stylescript=2Epy | 61 ++++++++++++++++++++++++++++++++++++++++++++++++++

Please have those files inside scripts/ in yocto-autobuilder-helper git re=
po and send a patch following the contribution guidelines (yocto-autobuilde=
r-helper in the tag part of the commit title ([PATCH yocto-autobuilder-help=
er])=2E You did it correctly for the other mail you just sent, the same nee=
ds to be done for this one too=2E

As a side note, the loops are identical in both scripts, so handling html =
and css files within the same loop with just a different if condition would=
 have been better and avoided a need for a second file=2E

> 2 files changed, 97 insertions(+)
> create mode 100644 htmlscript=2Epy
> create mode 100644 stylescript=2Epy
>
>diff --git a/htmlscript=2Epy b/htmlscript=2Epy
>new file mode 100644
>index 0000000=2E=2Efdbd109
>--- /dev/null
>+++ b/htmlscript=2Epy
>@@ -0,0 +1,36 @@
>+#!/usr/bin/env python3
>+#
>+# SPDX-License-Identifier: GPL-2=2E0-only
>+#
>+#Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail=2Ecom>
>+#
>+#
>+# function to append to the content of a html file below the body tag

It would help to explain why this is needed=2E (Display the obsolete banne=
r on the old docs website)

>+#
>+#
>+import os
>+html_content =3D '''
>+<div id=3D"outdated-warning">This document is outdated, you should selec=
t the <a href=3D"https://docs=2Eyoctoproject=2Eorg/">latest release version=
</a> in this series=2E</div>
>+<div xml:lang=3D"en" class=3D"body" lang=3D"en">
>+'''
>+last_div =3D '''
>+</div>
>+
>+'''
>+
>+def loop_through_html_directories(dir):
>+    for dirpath, dirnames, filenames in os=2Ewalk(dir):
>+    # loop through all files in the directory
>+        for filename in filenames:
>+            # check if the file is an html file
>+            if filename=2Eendswith('=2Ehtml'):

i=2Ee=2E have here another if filename=2Eendswith('style=2Ecss'): and have=
 the code of the other file in there=2E

>+                # open the html file in read mode
>+                with open(os=2Epath=2Ejoin(dirpath, filename), 'r', enco=
ding=3D"ISO-8859-1") as f:
>+                    # read the content of the html file
>+                    current_content =3D f=2Eread()
>+                # open the html file in write mode
>+                with open(os=2Epath=2Ejoin(dirpath, filename), 'w') as f=
:
>+                    # write the content of the html file
>+                    f=2Ewrite(current_content=2Ereplace('<body>', '<body=
>' + html_content))
>+                    f=2Ewrite(current_content=2Ereplace('</body>', last_=
div + '</body>'))
>+loop_through_html_directories('=2E')
>diff --git a/stylescript=2Epy b/stylescript=2Epy
>new file mode 100644
>index 0000000=2E=2E2777730
>--- /dev/null
>+++ b/stylescript=2Epy
>@@ -0,0 +1,61 @@
>+#!usr/bin/env python3
>+#
>+# SPDX-License-Identifier: GPL-2=2E0-only
>+#
>+#Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail=2Ecom>
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
>+=2Ebody{
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

Incorrect comment, we're looking for style=2Ecss=2E

>+            if filename=2Eendswith('style=2Ecss'):
>+                # open the html file in read mode

Incorrect comments we're opening style=2Ecss

>+                with open(os=2Epath=2Ejoin(dirpath, filename), 'r', enco=
ding=3D"ISO-8859-1") as f:
>+                    # read the content of the html file

Same here=2E

>+                   css_content =3D f=2Eread()
>+                # open the html file in write mode

Same here=2E

>+                with open(os=2Epath=2Ejoin(dirpath, filename), 'w') as f=
:
>+                    # write the content of the html file
>+                  =20

Same here=2E
 f=2Ewrite(css_content=2Ereplace(css_content[css_content=2Efind('body {'):=
css_content=2Efind('}'[0])], 'body {' + content ))
>+loop_through_html_directories('=2E')

A better name would be fix_all_style_css('=2E')
Or something like that=2E Because, yes, you're looping through directories=
 but that's not what this function is used for, it's used for fixing files=
=2E

Same for the function in the other file=2E

The script filename would benefit from a rename too, likely docs_fix_all_s=
tyle_css=2Epy or something similar=2E So that we know what this script is u=
sed for without reading it=2E

The filenames are just suggestions, if you come up with something better, =
please use whatever think is best=2E

Cheers,
Quentin

