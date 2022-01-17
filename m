Return-Path: <dushara.jayasinghe@asdpl.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B925C433EF
	for <webhook@archiver.kernel.org>; Mon, 17 Jan 2022 07:25:26 +0000 (UTC)
Received: from se2d-iad1.servconfig.com (se2d-iad1.servconfig.com
 [173.231.248.10])
 by mx.groups.io with SMTP id smtpd.web10.8414.1642404325249211422
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Jan 2022 23:25:25 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@asdpl.com header.s=default
 header.b=CVaVgQCo;
 spf=none, err=permanent DNS error (domain: asdpl.com, ip: 173.231.248.10,
 mailfrom: dushara.jayasinghe@asdpl.com)
Received: from biz220.inmotionhosting.com ([192.145.239.52])
	by se2-iad1.servconfig.com with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <dushara.jayasinghe@asdpl.com>)
	id 1n9MOH-0005Dc-Pb
	for yocto@lists.yoctoproject.org; Mon, 17 Jan 2022 02:25:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=asdpl.com;
	s=default; h=Content-Type:MIME-Version:Message-ID:Date:Subject:In-Reply-To:
	References:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=0zBndicUeernhK2kwKBvAOT/HaUEerp4niwdZ7tofy0=; b=CVaVgQCoxyTbR0QjBUhONJS/Db
	rLKr08Q23NGyVRUs0UkhWVjeVgfK1ljY49ePzY/lV0IH6nPm4LdujYznEXds350X+ZBXHn7sasHX2
	+ZAljoqoTThxZtk3ECJJoR1O9HbcP/IbxlS40YTexL+f4EQuy8/LBHyhe/jiFnq4ZAYVZuGYGLz32
	e6QT7b6UX/VG5qC0bN9AlvAI7OurYpjThSs+TcmtDU17ozrnSCewIkN+7fqn3lj5rHSzJTvP8lj40
	sXFCrAU+vJW1OCNHSFZZLO3tG+EJ/MZS8AFGHPV98wBR+g80F7JTGUOAH+UyzOMS8/UmXaDNQ62HD
	HWuf1eUA==;
Received: from [119.18.18.27] (port=58001 helo=DESKTOPVQR93PN)
	by biz220.inmotionhosting.com with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <dushara.jayasinghe@asdpl.com>)
	id 1n9MOG-00Gv3H-AN
	for yocto@lists.yoctoproject.org; Sun, 16 Jan 2022 23:25:20 -0800
From: <dushara.jayasinghe@asdpl.com>
To: <yocto@lists.yoctoproject.org>
References: 
In-Reply-To: 
Subject: Fetching svn projects with space in URI
Date: Mon, 17 Jan 2022 18:25:17 +1100
Message-ID: <002e01d80b73$621fb7a0$265f26e0$@asdpl.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_002F_01D80BCF.95914110"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFJ+/3iAUMLLLlpEPNesvbI74bObq2C7piw
Content-Language: en-au
X-Get-Message-Sender-Via: biz220.inmotionhosting.com: authenticated_id:
 dushara.jayasinghe@asdpl.com
X-Authenticated-Sender: biz220.inmotionhosting.com:
 dushara.jayasinghe@asdpl.com
X-Originating-IP: 192.145.239.52
X-SpamExperts-Domain: biz220.inmotionhosting.com
X-SpamExperts-Username: 192.145.239.52
Authentication-Results: servconfig.com;
 auth=pass smtp.auth=192.145.239.52@biz220.inmotionhosting.com
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.15)
X-Recommended-Action: accept
X-Filter-ID: 
 Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT9WLQux0N3HQm8ltz8rnu+BPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5zddOVhj1YHhpbQayN2s2E/5ZX+VW4rt+Hs37fP4pfw449w
 knWGobBIYos3d1n2bRFpBHl2OLxWhd+SyQZkzCDI5WCy5VkstzhnxgTXqsdmp7Fcasf1RZqk3i0l
 tCVuDUXrA0/rP1BVRv7YryHOfZJmyBK4r2+jWAnn9gHfWhAESuWkNE71bXB92707BxGgHK+63k+m
 SsFC55X5iDnCosr8rmtbNt1svWhT5qsmEEKRJKeiqzwpJQJp5aGHp7lTCYqu1WaiZswnh7amfkLT
 IEwd6LkGFt94dBx3TpAokA4UmbCGVypsM2xk+Fb6Uy9BG+eG09xLM7yGwGwdmctNXf+yF45HU3lW
 dqhlsf8B0aV+vPUiiHKeygO6f7B36UEMF2jXJbH/eREZ32uf97rVbut3BoCKrJ44DyMbfkCW+Top
 C15Fp1TkJK0B1mzsYckU6LaSTwMUHD8nvT6qjZo9eXrfmUo5plW9Y81go6R4YdVo2al1r07cmbef
 hNqx0U8Yjj0Cn996kLU2Kwz4sRK+A9mnrSOIPpeqwlm2NDGXIJ2x7B67Q+HsWaFHyFpORQ4db+0f
 bQKXQp+MVUpMGH9yl8j38e6KJofFQ6yV7BOHExqlaGz7KwJQy1ROLKlEPC1ZGMN/lAs4U16Yumao
 R4AJ8MkeMzg958IFbKKlNc0N5cagQhEVniihuDwEGDcmr6e3OPRIuz/+yGVjxH5HWgO7RPnXcibM
 VfWjjFX9dRVxry9T9FAPUwiR6s7lcrXpSSulhkNZ6j7GA1bTinxdrgbFajuGXPWlFdaGOH191uXj
 gjQN/Ubnqapc5QITPzxqfshNq2J0x8O5ZTR461LCDcZRXrEe7aTOBNzLYZ4l8DJ8gRFT2qPnV2ZT
 eZ/Gv5YEw5PH11xnu243bsLlznfnRGG52NGttipuLACdUPlQF11jyLtB/ehEQjf02DvD6NbBWC62
 Mae1qXL+49o8azgi4BgggOeeh5Tiu8X8hMpGwgktvShv4wSIGxzBF2u2H7X6hZMNOOz6I6RtJFJt
 Bs6tjE3ZCKx3
X-Report-Abuse-To: spam@se1-lax1.servconfig.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jan 2022 07:25:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55887

This is a multipart message in MIME format.

------=_NextPart_000_002F_01D80BCF.95914110
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

 

I'm trying to create a recipe for one of our existing code bases which is
under svn.

 

The URI of this project contains space characters and I'm struggling to
properly set the SRC_URI field in the recipe.

 

I did try replacing space with %20 as below:

 

SRC_URI =
"svn://server.local.net/project/My%20Application;module=trunk;rev=61238;user
=uuuu;pswd=pppp;externals=allowed"

 

However, this results in the following error when I try to build the recipe:

 

WARNING: project-bin-0.1-r0 do_fetch: Failed to fetch URL
svn://server.local.net/project/My%20Application;module=trunk;rev=61238;user=
uuuu;pswd=pppp;externals=allowed, attempting MIRRORS if available

ERROR: project-bin-0.1-r0 do_fetch: Fetcher failure: Fetch command export
PSEUDO_DISABLED=1; export
DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"; export
SSH_AGENT_PID="867"; export SSH_AUTH_SOCK="/run/user/1000/keyring/ssh";
export
PATH="/home/developer/src/STM32MP15-Ecosystem-v3.1.0/Distribution-Package/op
enstlinux-5.10-dunfell-mp1-21-11-17/build-openstlinuxweston-stm32mp1/tmp-gli
bc/sysroots-uninative/x86_64-linux/usr/bin:/home/developer/src/STM32MP15-Eco
system-v3.1.0/Distribution-Package/openstlinux-5.10-dunfell-mp1-21-11-17/lay
ers/openembedded-core/scripts:/home/developer/src/STM32MP15-Ecosystem-v3.1.0
/Distribution-Package/openstlinux-5.10-dunfell-mp1-21-11-17/build-openstlinu
xweston-stm32mp1/tmp-glibc/work/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi/p
roject-bin/0.1-r0/recipe-sysroot-native/usr/bin/arm-ostl-linux-gnueabi:/home
/developer/src/STM32MP15-Ecosystem-v3.1.0/Distribution-Package/openstlinux-5
.10-dunfell-mp1-21-11-17/build-openstlinuxweston-stm32mp1/tmp-glibc/work/cor
texa7t2hf-neon-vfpv4-ostl-linux-gnueabi/project-bin/0.1-r0/recipe-sysroot/us
r/bin/crossscripts:/home/developer/src/STM32MP15-Ecosystem-v3.1.0/Distributi
on-Package/openstlinux-5.10-dunfell-mp1-21-11-17/build-openstlinuxweston-stm
32mp1/tmp-glibc/work/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi/project-bin/
0.1-r0/recipe-sysroot-native/usr/sbin:/home/developer/src/STM32MP15-Ecosyste
m-v3.1.0/Distribution-Package/openstlinux-5.10-dunfell-mp1-21-11-17/build-op
enstlinuxweston-stm32mp1/tmp-glibc/work/cortexa7t2hf-neon-vfpv4-ostl-linux-g
nueabi/project-bin/0.1-r0/recipe-sysroot-native/usr/bin:/home/developer/src/
STM32MP15-Ecosystem-v3.1.0/Distribution-Package/openstlinux-5.10-dunfell-mp1
-21-11-17/build-openstlinuxweston-stm32mp1/tmp-glibc/work/cortexa7t2hf-neon-
vfpv4-ostl-linux-gnueabi/project-bin/0.1-r0/recipe-sysroot-native/sbin:/home
/developer/src/STM32MP15-Ecosystem-v3.1.0/Distribution-Package/openstlinux-5
.10-dunfell-mp1-21-11-17/build-openstlinuxweston-stm32mp1/tmp-glibc/work/cor
texa7t2hf-neon-vfpv4-ostl-linux-gnueabi/project-bin/0.1-r0/recipe-sysroot-na
tive/bin:/home/developer/src/STM32MP15-Ecosystem-v3.1.0/Distribution-Package
/openstlinux-5.10-dunfell-mp1-21-11-17/layers/openembedded-core/bitbake/bin:
/home/developer/src/STM32MP15-Ecosystem-v3.1.0/Distribution-Package/openstli
nux-5.10-dunfell-mp1-21-11-17/build-openstlinuxweston-stm32mp1/tmp-glibc/hos
ttools"; export HOME="/home/developer"; /usr/bin/env svn --non-interactive
--trust-server-cert co --no-auth-cache --username uuuu --password pppp -r
61238 svn://server.local.net/project/My Application/trunk@61238 trunk failed
with exit code 1, output:

svn: E160013: File not found: revision 61240, path '/project/My'

 

ERROR: project-bin-0.1-r0 do_fetch: Fetcher failure for URL:
'svn://server.local.net/project/My%20Application;module=trunk;rev=61238;user
=uuuu;pswd=pppp;externals=allowed'. Unable to fetch URL from any source.

ERROR: Logfile of failure stored in:
/home/developer/src/STM32MP15-Ecosystem-v3.1.0/Distribution-Package/openstli
nux-5.10-dunfell-mp1-21-11-17/build-openstlinuxweston-stm32mp1/tmp-glibc/wor
k/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi/project-bin/0.1-r0/temp/log.do_
fetch.247992

ERROR: Task
(/home/developer/src/STM32MP15-Ecosystem-v3.1.0/Distribution-Package/openstl
inux-5.10-dunfell-mp1-21-11-17/layers/meta-project/recipes-project/project-b
in/project-bin_0.1.bb:do_fetch) failed with exit code '1'

 

How exactly should the space be handled?

 

Thank you.

 

Regards.

 

Dushara

 


------=_NextPart_000_002F_01D80BCF.95914110
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-AU =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Hello,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I&#8217;m =
trying to create a recipe for one of our existing code bases which is =
under svn.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>The URI of this project contains space characters and =
I&#8217;m struggling to properly set the SRC_URI field in the =
recipe.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I did try replacing space with %20 as =
below:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>SRC_URI =3D =
&quot;svn://server.local.net/project/My%20Application;module=3Dtrunk;rev=3D=
61238;user=3Duuuu;pswd=3Dpppp;externals=3Dallowed&quot;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>However, =
this results in the following error when I try to build the =
recipe:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>WARNING: project-bin-0.1-r0 do_fetch: Failed to fetch =
URL =
svn://server.local.net/project/My%20Application;module=3Dtrunk;rev=3D6123=
8;user=3Duuuu;pswd=3Dpppp;externals=3Dallowed, attempting MIRRORS if =
available<o:p></o:p></p><p class=3DMsoNormal>ERROR: project-bin-0.1-r0 =
do_fetch: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; =
export =
DBUS_SESSION_BUS_ADDRESS=3D&quot;unix:path=3D/run/user/1000/bus&quot;; =
export SSH_AGENT_PID=3D&quot;867&quot;; export =
SSH_AUTH_SOCK=3D&quot;/run/user/1000/keyring/ssh&quot;; export =
PATH=3D&quot;/home/developer/src/STM32MP15-Ecosystem-v3.1.0/Distribution-=
Package/openstlinux-5.10-dunfell-mp1-21-11-17/build-openstlinuxweston-stm=
32mp1/tmp-glibc/sysroots-uninative/x86_64-linux/usr/bin:/home/developer/s=
rc/STM32MP15-Ecosystem-v3.1.0/Distribution-Package/openstlinux-5.10-dunfe=
ll-mp1-21-11-17/layers/openembedded-core/scripts:/home/developer/src/STM3=
2MP15-Ecosystem-v3.1.0/Distribution-Package/openstlinux-5.10-dunfell-mp1-=
21-11-17/build-openstlinuxweston-stm32mp1/tmp-glibc/work/cortexa7t2hf-neo=
n-vfpv4-ostl-linux-gnueabi/project-bin/0.1-r0/recipe-sysroot-native/usr/b=
in/arm-ostl-linux-gnueabi:/home/developer/src/STM32MP15-Ecosystem-v3.1.0/=
Distribution-Package/openstlinux-5.10-dunfell-mp1-21-11-17/build-openstli=
nuxweston-stm32mp1/tmp-glibc/work/cortexa7t2hf-neon-vfpv4-ostl-linux-gnue=
abi/project-bin/0.1-r0/recipe-sysroot/usr/bin/crossscripts:/home/develope=
r/src/STM32MP15-Ecosystem-v3.1.0/Distribution-Package/openstlinux-5.10-du=
nfell-mp1-21-11-17/build-openstlinuxweston-stm32mp1/tmp-glibc/work/cortex=
a7t2hf-neon-vfpv4-ostl-linux-gnueabi/project-bin/0.1-r0/recipe-sysroot-na=
tive/usr/sbin:/home/developer/src/STM32MP15-Ecosystem-v3.1.0/Distribution=
-Package/openstlinux-5.10-dunfell-mp1-21-11-17/build-openstlinuxweston-st=
m32mp1/tmp-glibc/work/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi/project-=
bin/0.1-r0/recipe-sysroot-native/usr/bin:/home/developer/src/STM32MP15-Ec=
osystem-v3.1.0/Distribution-Package/openstlinux-5.10-dunfell-mp1-21-11-17=
/build-openstlinuxweston-stm32mp1/tmp-glibc/work/cortexa7t2hf-neon-vfpv4-=
ostl-linux-gnueabi/project-bin/0.1-r0/recipe-sysroot-native/sbin:/home/de=
veloper/src/STM32MP15-Ecosystem-v3.1.0/Distribution-Package/openstlinux-5=
.10-dunfell-mp1-21-11-17/build-openstlinuxweston-stm32mp1/tmp-glibc/work/=
cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi/project-bin/0.1-r0/recipe-sysr=
oot-native/bin:/home/developer/src/STM32MP15-Ecosystem-v3.1.0/Distributio=
n-Package/openstlinux-5.10-dunfell-mp1-21-11-17/layers/openembedded-core/=
bitbake/bin:/home/developer/src/STM32MP15-Ecosystem-v3.1.0/Distribution-P=
ackage/openstlinux-5.10-dunfell-mp1-21-11-17/build-openstlinuxweston-stm3=
2mp1/tmp-glibc/hosttools&quot;; export =
HOME=3D&quot;/home/developer&quot;; /usr/bin/env svn --non-interactive =
--trust-server-cert co --no-auth-cache --username uuuu --password pppp =
-r 61238 svn://server.local.net/project/My Application/trunk@61238 trunk =
failed with exit code 1, output:<o:p></o:p></p><p class=3DMsoNormal>svn: =
E160013: File not found: revision 61240, path =
'/project/My'<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>ERROR: project-bin-0.1-r0 do_fetch: Fetcher failure =
for URL: =
'svn://server.local.net/project/My%20Application;module=3Dtrunk;rev=3D612=
38;user=3Duuuu;pswd=3Dpppp;externals=3Dallowed'. Unable to fetch URL =
from any source.<o:p></o:p></p><p class=3DMsoNormal>ERROR: Logfile of =
failure stored in: =
/home/developer/src/STM32MP15-Ecosystem-v3.1.0/Distribution-Package/opens=
tlinux-5.10-dunfell-mp1-21-11-17/build-openstlinuxweston-stm32mp1/tmp-gli=
bc/work/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi/project-bin/0.1-r0/tem=
p/log.do_fetch.247992<o:p></o:p></p><p class=3DMsoNormal>ERROR: Task =
(/home/developer/src/STM32MP15-Ecosystem-v3.1.0/Distribution-Package/open=
stlinux-5.10-dunfell-mp1-21-11-17/layers/meta-project/recipes-project/pro=
ject-bin/project-bin_0.1.bb:do_fetch) failed with exit code =
'1'<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>How exactly should the space be =
handled?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thank you.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Regards.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Dushara<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_002F_01D80BCF.95914110--


