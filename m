Return-Path: <ganesh.manoj.mahajan@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F105AC02193
	for <webhook@archiver.kernel.org>; Tue,  4 Feb 2025 06:29:15 +0000 (UTC)
Subject: Re: [yocto] [scarthgap] circular dependency issue #kernel #rpi #scarthgap #yocto
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>
X-Originating-Location: AU (167.103.2.98)
X-Originating-Platform: Windows Chrome 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 03 Feb 2025 22:29:12 -0800
References: <988b61ed-7fe4-44d8-b00c-fad3346c9703@gmail.com>
In-Reply-To: <988b61ed-7fe4-44d8-b00c-fad3346c9703@gmail.com>
Message-ID: <7067.1738650552352559164@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LD41x3tRdOxLJBEpsCUT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Feb 2025 06:29:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64703

--LD41x3tRdOxLJBEpsCUT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Gyorgy,

Folder recipes-security it's my custom recipe which we use. On adding this =
recipe i get that error.

Steps i followed to built only raspberrypi4 minimal image are as follows.
1 . Removed all custom layer and recipes from code base.
2. Built raspberrypi4 image which was successful.
3. Then i added my custom layer meta-eaton and started adding recipe by rec=
ipe.
4. 1st added recipes-bsp it had dependency on recipes-core it had dependenc=
y on recipes-security. After adding it tried to build the image it=C2=A0 ga=
ve circular dependency error as below.

ERROR: Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux=
-raspberrypi_6.6.bb:do_package has circular dependency on /home/build/proje=
ct/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_packag=
edata
ERROR: Command execution failed: 1

--LD41x3tRdOxLJBEpsCUT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi <span style=3D"color: #333333; font-family: system-ui, Roboto, Aria=
l, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
idows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: n=
ormal; background-color: #ffffff; text-decoration-thickness: initial; text-=
decoration-style: initial; text-decoration-color: initial; display: inline =
!important; float: none;">Gyorgy,<br /><br /></span>Folder recipes-security=
 it's my custom recipe which we use. On adding this recipe i get that error=
.<br /><br />Steps i followed to built only raspberrypi4 minimal image are =
as follows.<br />1 . Removed all custom layer and recipes from code base.</=
div>
<div>2. Built raspberrypi4 image which was successful.</div>
<div>3. Then i added my custom layer meta-eaton and started adding recipe b=
y recipe.</div>
<div>4. 1st added recipes-bsp it had dependency on recipes-core it had depe=
ndency on recipes-security. After adding it tried to build the image it&nbs=
p; gave circular dependency error as below.<br /><br /><span style=3D"color=
: #333333; font-family: system-ui, Roboto, Arial, sans-serif; font-size: 16=
px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: s=
tart; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px;=
 -webkit-text-stroke-width: 0px; white-space: normal; background-color: #ff=
ffff; text-decoration-thickness: initial; text-decoration-style: initial; t=
ext-decoration-color: initial; display: inline !important; float: none;">ER=
ROR: Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-r=
aspberrypi_6.6.bb:do_package has circular dependency on /home/build/project=
/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_packaged=
ata</span><br style=3D"box-sizing: border-box; overflow-wrap: break-word !i=
mportant; color: #333333; font-family: system-ui, Roboto, Arial, sans-serif=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-d=
ecoration-thickness: initial; text-decoration-style: initial; text-decorati=
on-color: initial;" /><span style=3D"color: #333333; font-family: system-ui=
, Roboto, Arial, sans-serif; font-size: 16px; font-style: normal; font-vari=
ant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-=
spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tran=
sform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
white-space: normal; background-color: #ffffff; text-decoration-thickness: =
initial; text-decoration-style: initial; text-decoration-color: initial; di=
splay: inline !important; float: none;">ERROR: Command execution failed: 1<=
/span><br /><br /></div>

--LD41x3tRdOxLJBEpsCUT--

