Return-Path: <ganesh.manoj.mahajan@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD94EC02183
	for <webhook@archiver.kernel.org>; Wed, 15 Jan 2025 06:21:36 +0000 (UTC)
Subject: [HELP]
To: yocto@lists.yoctoproject.org
From: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>
X-Originating-Location: IN (165.225.124.177)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 14 Jan 2025 22:21:32 -0800
Message-ID: <keIz.1736922092718035916.9iYH@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="mHxp3udWZIdH7ndemTRW"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Jan 2025 06:21:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64555

--mHxp3udWZIdH7ndemTRW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to upgrade from dunfell to scarthgap-5.0.5

meta-eaton is my custom layer.
source setup worked for dunfell but when trying with scarthgap facing TEMPL=
ATECONF error.

Error is as below
*/home/build/project/meta-eaton/conf/templates/template-name
build@ubuntu-bionic:~/project$ source meta-eaton/setup-build-env
Error: TEMPLATECONF value (which is /home/build/project/meta-eaton/conf/tem=
plates/template-name) must point to* meta-some-layer/conf/templates/templat=
e-name
changed the dir structure as mentioned in error, UNSET TEMPLATECONF and ver=
ified its path which is
*build@ubuntu-bionic:~/project$ echo $TEMPLATECONF*
*/home/build/project/meta-eaton/conf/templates/template-name

* what am i doing wrong can anyone help.

--mHxp3udWZIdH7ndemTRW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgr=
ound-color: #ffffff; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial; display: inline !important; f=
loat: none;">I am trying to upgrade from dunfell to scarthgap-5.0.5<br /><b=
r />meta-eaton is my custom layer.</span><br style=3D"box-sizing: border-bo=
x; overflow-wrap: break-word !important; color: #333333; font-family: syste=
m-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans',=
 Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol=
', 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant-li=
gatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacin=
g: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform:=
 none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-=
space: normal; background-color: #ffffff; text-decoration-thickness: initia=
l; text-decoration-style: initial; text-decoration-color: initial;" /><span=
 style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helv=
etica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Colo=
r Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-siz=
e: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-c=
aps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-ali=
gn: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing:=
 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color=
: #ffffff; text-decoration-thickness: initial; text-decoration-style: initi=
al; text-decoration-color: initial; display: inline !important; float: none=
;">source setup worked for dunfell but when trying with scarthgap facing TE=
MPLATECONF error.<br /></span><br />Error is as below<br /><strong>/home/bu=
ild/project/meta-eaton/conf/templates/template-name<br />build@ubuntu-bioni=
c:~/project$ source meta-eaton/setup-build-env<br />Error: TEMPLATECONF val=
ue (which is /home/build/project/meta-eaton/conf/templates/template-name) m=
ust point to</strong> meta-some-layer/conf/templates/template-name<br />&nb=
sp;changed the dir structure as mentioned in error, UNSET TEMPLATECONF and =
verified its path which is <br /><strong>build@ubuntu-bionic:~/project$ ech=
o $TEMPLATECONF</strong><br /><strong>/home/build/project/meta-eaton/conf/t=
emplates/template-name<br /><br /></strong> what am i doing wrong can anyon=
e help.</div>

--mHxp3udWZIdH7ndemTRW--

