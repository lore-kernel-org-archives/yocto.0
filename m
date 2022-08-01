Return-Path: <poornesh.g@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6E5DC19F2C
	for <webhook@archiver.kernel.org>; Mon,  1 Aug 2022 09:56:27 +0000 (UTC)
Subject: Re: Re : rdepends upon non-existent task do_package_write_deb
To: yocto@lists.yoctoproject.org
From: poornesh.g@mindteck.com
X-Originating-Location: Kolkata, West Bengal, IN (182.71.223.114)
X-Originating-Platform: Linux Firefox 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 01 Aug 2022 02:56:19 -0700
References: 
 <CAMKF1sphGkQ=MNH1agcFn1Nft8bOMdunstGwvoac+eyMPoxUcQ@mail.gmail.com>
In-Reply-To: 
 <CAMKF1sphGkQ=MNH1agcFn1Nft8bOMdunstGwvoac+eyMPoxUcQ@mail.gmail.com>
Message-ID: <2625.1659347779560670504@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="R5UYTBH70WJXhQhKngjq"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Aug 2022 09:56:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57712

--R5UYTBH70WJXhQhKngjq
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your valuable reply .

I followed the procedure which you have mentioned i.e added *IMAGE_INSTALL:=
append =3D " go.opentelemetry.io-proto-otlp"* in local.conf file. After tha=
t I am getting this error , can you please suggest me where I need to modif=
y .

------------------------------------------------------------------------

user@user-Latitude-3490:~/yocto/imx_krikstone/build$ bitbake core-image-min=
imal
WARNING: You have included the meta-virtualization layer, but 'virtualizati=
on' has not been enabled in your DISTRO_FEATURES. Some bbappend files may n=
ot take effect. See the meta-virtualization README for details on enabling =
virtualization support.
Loading cache: 100% |######################################################=
######################################################| Time: 0:00:00
Loaded 5514 entries from dependency cache.
Parsing recipes: 100% |####################################################=
######################################################| Time: 0:00:00
Parsing of 3954 .bb files complete (3953 cached, 1 parsed). 5514 targets, 6=
58 skipped, 5 masked, 0 errors.
Removing 1 recipes from the cortexa7t2hf-neon sysroot: 100% |##############=
######################################################| Time: 0:00:00
Removing 1 recipes from the imx6ul_pds sysroot: 100% |#####################=
######################################################| Time: 0:00:00
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'go.opentelemetry.io-proto-otlp' (but /home/user/y=
octo/imx_krikstone/sources/poky/meta/recipes-core/images/core-image-minimal=
.bb RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'go.opentelemetry.io-proto-otlp' is unbuildable, remov=
ing...
Missing or unbuildable dependency chain was: ['go.opentelemetry.io-proto-ot=
lp']
ERROR: Required build target 'core-image-minimal' has no buildable provider=
s.
Missing or unbuildable dependency chain was: ['core-image-minimal', 'go.ope=
ntelemetry.io-proto-otlp']

------------------------------------------------------------------------

Thanks in advance

--R5UYTBH70WJXhQhKngjq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your valuable reply .<br /><br />I followed the procedure which =
you have mentioned i.e added <strong>IMAGE_INSTALL:append =3D " go.opentele=
metry.io-proto-otlp"</strong> in local.conf file. After that I am getting t=
his error , can you please suggest me where I need to modify .<br /><br />-=
-----------------------------------------------------------------------<br =
/><br />user@user-Latitude-3490:~/yocto/imx_krikstone/build$ bitbake core-i=
mage-minimal <br />WARNING: You have included the meta-virtualization layer=
, but 'virtualization' has not been enabled in your DISTRO_FEATURES. Some b=
bappend files may not take effect. See the meta-virtualization README for d=
etails on enabling virtualization support.<br />Loading cache: 100% |######=
###########################################################################=
###########################| Time: 0:00:00<br />Loaded 5514 entries from de=
pendency cache.<br />Parsing recipes: 100% |###############################=
###########################################################################=
| Time: 0:00:00<br />Parsing of 3954 .bb files complete (3953 cached, 1 par=
sed). 5514 targets, 658 skipped, 5 masked, 0 errors.<br />Removing 1 recipe=
s from the cortexa7t2hf-neon sysroot: 100% |###############################=
#####################################| Time: 0:00:00<br />Removing 1 recipe=
s from the imx6ul_pds sysroot: 100% |######################################=
#####################################| Time: 0:00:00<br />NOTE: Resolving a=
ny missing task queue dependencies<br />ERROR: Nothing RPROVIDES 'go.opente=
lemetry.io-proto-otlp' (but /home/user/yocto/imx_krikstone/sources/poky/met=
a/recipes-core/images/core-image-minimal.bb RDEPENDS on or otherwise requir=
es it)<br />NOTE: Runtime target 'go.opentelemetry.io-proto-otlp' is unbuil=
dable, removing...<br />Missing or unbuildable dependency chain was: ['go.o=
pentelemetry.io-proto-otlp']<br />ERROR: Required build target 'core-image-=
minimal' has no buildable providers.<br />Missing or unbuildable dependency=
 chain was: ['core-image-minimal', 'go.opentelemetry.io-proto-otlp']<br /><=
br />----------------------------------------------------------------------=
--<br /><br />Thanks in advance

--R5UYTBH70WJXhQhKngjq--

