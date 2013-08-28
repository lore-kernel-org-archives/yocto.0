Return-Path: <Amit.Kumar@lntinfotech.com>
Received: from mail1.bemta7.messagelabs.com (mail1.bemta7.messagelabs.com
	[216.82.254.106])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A5DFE013D1
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 20:35:33 -0700 (PDT)
Received: from [216.82.254.19:55010] by server-10.bemta-7.messagelabs.com id
	0E/22-06836-4007D125; Wed, 28 Aug 2013 03:35:32 +0000
X-Env-Sender: Amit.Kumar@lntinfotech.com
X-Msg-Ref: server-9.tower-96.messagelabs.com!1377660928!6716365!1
X-Originating-IP: [203.101.96.7]
X-StarScan-Received: 
X-StarScan-Version: 6.9.11; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 17091 invoked from network); 28 Aug 2013 03:35:31 -0000
Received: from unknown (HELO BLRINMSHTCAS01.bglrodc.lntinfotech.com)
	(203.101.96.7)
	by server-9.tower-96.messagelabs.com with AES128-SHA encrypted SMTP;
	28 Aug 2013 03:35:31 -0000
Received: from blrinmsmbx01.bglrodc.lntinfotech.com ([169.254.2.40]) by
	BLRINMSHTCAS01.bglrodc.lntinfotech.com ([172.28.0.81]) with mapi;
	Wed, 28 Aug 2013 09:05:04 +0530
From: Amit Kumar <Amit.Kumar@lntinfotech.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 28 Aug 2013 09:05:28 +0530
Thread-Topic: OE recipes- linphone build error in poky-9.0.0 build environment
Thread-Index: AQHOo5+VJUNnAHcao020gczWH+JQeg==
Message-ID: <AF0985D076EB244693F2CCD71AAB10BC2C5E1101C5@BLRINMSMBX01.bglrodc.lntinfotech.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: OE recipes- linphone build error in poky-9.0.0 build environment
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
X-List-Received-Date: Wed, 28 Aug 2013 03:35:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
     I wants to build the recipes name linphone(SIP-based IP phone) with po=
ky-9.0.0 build environment.
I found he linphone recipes under the "angstrom-openembedded". In my poky b=
uild environment I have created the new layer, name linphone, and copy the =
.bb files.
But when i am building it through an dependency error.

Do anyone have done it before, please guide me how to fix this error.

///////////////////////////////////////////////////////////////////////////=
/////////////////////
yocto@yocto-HP:~/YOCTO/poky-dylan-9.0.0/build$ bitbake linphone-image
Loading cache: 100% |######################################################=
###########################################| ETA:  00:00:00
Loaded 1126 entries from dependency cache.

Build Configuration:
BB_VERSION        =3D "1.18.0"
BUILD_SYS         =3D "i686-linux"
NATIVELSBSTRING   =3D "Ubuntu-12.04"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "qemuarm"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.4"
TUNE_FEATURES     =3D "armv5 thumb dsp"
TARGET_FPU        =3D "soft"
meta
meta-yocto
meta-yocto-bsp
meta-linphone     =3D "<unknown>:<unknown>"

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'libosip2' (but /home/yocto/YOCTO/poky-dylan-9.0.0/=
meta-linphone/recipes-linphone/linphone/linphone_1.6.0.bb DEPENDS on or oth=
erwise requires it)
NOTE: Runtime target 'linphone' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['linphone', 'libosip2']
ERROR: Required build target 'linphone-image' has no buildable providers.
Missing or unbuildable dependency chain was: ['linphone-image', 'linphone',=
 'libosip2']

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
///////////////////////////////////////////////////////////////////////////=
////////////////////



Thanks & Regards
Amit K

The contents of this e-mail and any attachment(s) may contain confidential =
or privileged information for the intended recipient(s). Unintended recipie=
nts are prohibited from taking action on the basis of information in this e=
-mail and  using or disseminating the information,  and must notify the sen=
der and delete it from their system. L&T Infotech will not accept responsib=
ility or liability for the accuracy or completeness of, or the presence of =
any virus or disabling code in this e-mail"

