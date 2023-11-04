Return-Path: <shrikantvaishnav@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF463C4332F
	for <webhook@archiver.kernel.org>; Sat,  4 Nov 2023 15:55:55 +0000 (UTC)
Subject: how to add tkinter in Yocto?
To: yocto@lists.yoctoproject.org
From: shrikantvaishnav@hotmail.com
X-Originating-Location: Gurgaon, Haryana, IN (49.36.138.222)
X-Originating-Platform: Linux Firefox 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 04 Nov 2023 08:55:55 -0700
Message-ID: <sf7i.1699113355128348261.C0oU@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NE5La6cjBmuTBc3788qv"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 04 Nov 2023 15:55:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61614

--NE5La6cjBmuTBc3788qv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

I want to add " *Tkinter"* in my Linux image and for this, i have added the=
se two line in my local.conf file. *
(1)" IMAGE_INSTALL:append =3D " python3-tkinter"
(2)PACKAGECONFIG:append:pn-python3 =3D " tk"

* When I compile i get the following errors: *

shri@Shri:~/Yocto_Rasp/poky$ bitbake core-image-sato
Loading cache: 100% |######################################################=
###########| Time: 0:00:00
Loaded 1838 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'tk' (but /home/shri/Yocto_Rasp/poky/meta/recipes-d=
evtools/python/python3_3.11.2.bb DEPENDS on or otherwise requires it). Clos=
e matches:
atk
NOTE: Runtime target 'python3-tkinter' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['python3-tkinter', 'tk']
ERROR: Required build target 'core-image-sato' has no buildable providers.
Missing or unbuildable dependency chain was: ['core-image-sato', 'python3-t=
kinter', 'tk']

* What am I doing wrong? *

*
Please help after this I also want to add *" ttkbootstrap/custom-tkinter "*=
 for a modern UI look and feel. *

Thanks and Regards
Shrikant Vaishnav
*

--NE5La6cjBmuTBc3788qv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,<br /><br />I want to add "<strong>Tkinter" </strong>in my Linux =
image and for this, i have added these two line <em>in my local.conf file.<=
/em><strong><em><br />(1)" IMAGE_INSTALL:append =3D " python3-tkinter"</em>=
<br /><em>(2)PACKAGECONFIG:append:pn-python3 =3D " tk"</em><br /><br /><br =
/></strong>When I compile i get the following errors:<strong><br /><br /><e=
m>shri@Shri:~/Yocto_Rasp/poky$ bitbake core-image-sato</em><br /><em>Loadin=
g cache: 100% |############################################################=
#####| Time: 0:00:00</em><br /><em>Loaded 1838 entries from dependency cach=
e.</em><br /><em>NOTE: Resolving any missing task queue dependencies</em><b=
r /><em>ERROR: Nothing PROVIDES 'tk' (but /home/shri/Yocto_Rasp/poky/meta/r=
ecipes-devtools/python/python3_3.11.2.bb DEPENDS on or otherwise requires i=
t). Close matches:</em><br /><em>&nbsp; atk</em><br /><em>NOTE: Runtime tar=
get 'python3-tkinter' is unbuildable, removing...</em><br /><em>Missing or =
unbuildable dependency chain was: ['python3-tkinter', 'tk']</em><br /><em>E=
RROR: Required build target 'core-image-sato' has no buildable providers.</=
em><br /><em>Missing or unbuildable dependency chain was: ['core-image-sato=
', 'python3-tkinter', 'tk']</em><br /><br /></strong>What am I doing wrong?=
<strong><br /><br /></strong><br />Please help after this I also want to ad=
d <em><strong>" ttkbootstrap/custom-tkinter "</strong></em> for a modern UI=
 look and feel.<strong><br /><br />Thanks and Regards<br />Shrikant Vaishna=
v<br /></strong>

--NE5La6cjBmuTBc3788qv--

