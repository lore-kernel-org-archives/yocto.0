Return-Path: <Amit.Kumar@lntinfotech.com>
Received: from mail1.bemta7.messagelabs.com (mail1.bemta7.messagelabs.com
	[216.82.254.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05353E005B4
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 11:35:15 -0700 (PDT)
Received: from [216.82.254.20:3001] by server-14.bemta-7.messagelabs.com id
	61/C9-32719-1649F125; Thu, 29 Aug 2013 18:35:13 +0000
X-Env-Sender: Amit.Kumar@lntinfotech.com
X-Msg-Ref: server-15.tower-47.messagelabs.com!1377801309!7425393!1
X-Originating-IP: [203.101.96.7]
X-StarScan-Received: 
X-StarScan-Version: 6.9.11; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 1473 invoked from network); 29 Aug 2013 18:35:12 -0000
Received: from unknown (HELO BLRINMSHTCAS01.bglrodc.lntinfotech.com)
	(203.101.96.7)
	by server-15.tower-47.messagelabs.com with AES128-SHA encrypted SMTP;
	29 Aug 2013 18:35:12 -0000
Received: from blrinmsmbx01.bglrodc.lntinfotech.com ([169.254.2.40]) by
	BLRINMSHTCAS01.bglrodc.lntinfotech.com ([172.28.0.81]) with mapi;
	Fri, 30 Aug 2013 00:04:43 +0530
From: Amit Kumar <Amit.Kumar@lntinfotech.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Fri, 30 Aug 2013 00:00:47 +0530
Thread-Topic: [yocto] OE recipes- linphone build error in poky-9.0.0 build
	environment
Thread-Index: Ac6jxsGNyXzokiORRNKSfy60euc/dQBHxB2B
Message-ID: <AF0985D076EB244693F2CCD71AAB10BC2C5E1101C6@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5E1101C5@BLRINMSMBX01.bglrodc.lntinfotech.com>,
	<3808315.9VeeB8TmeS@helios>
In-Reply-To: <3808315.9VeeB8TmeS@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: OE recipes- linphone build error in poky-9.0.0 build environment
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
X-List-Received-Date: Thu, 29 Aug 2013 18:35:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for replay,

                 I have follow the steps suggested by Mr. Paul, but still i=
 am facing an error.
I wants to build the linphone along with my Yocto Project build environment=
 setup. I found linphone recipes in openembedded git. I have added that rec=
ipe and also add the dependancy recipes libosip2 and also modify .bb files.=
 But still i am getting build error.
/********/
Loading cache: 100% |######################################################=
###########################################| ETA:  00:00:00
Loaded 1128 entries from dependency cache.

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
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Fetcher failure for URL: 'http://download.savannah.nongnu.org/releas=
es/linphone/1.6.x/sources/linphone-1.6.0.tar.gz'. No checksum specified for=
 /home/yocto/YOCTO/poky-dylan-9.0.0/build/downloads/linphone-1.6.0.tar.gz, =
please add at least one to the recipe:
SRC_URI[md5sum] =3D "fb345125e23c787df0818ff7caad5515"
SRC_URI[sha256sum] =3D "ba1c32207fd62d374c9397a81fb1247da93edb859e30d0d855d=
c65e5457f690b"
ERROR: Function failed: Fetcher failure for URL: 'http://download.savannah.=
nongnu.org/releases/linphone/1.6.x/sources/linphone-1.6.0.tar.gz'. No check=
sum specified for /home/yocto/YOCTO/poky-dylan-9.0.0/build/downloads/linpho=
ne-1.6.0.tar.gz, please add at least one to the recipe:
SRC_URI[md5sum] =3D "fb345125e23c787df0818ff7caad5515"
SRC_URI[sha256sum] =3D "ba1c32207fd62d374c9397a81fb1247da93edb859e30d0d855d=
c65e5457f690b"
ERROR: Logfile of failure stored in: /home/yocto/YOCTO/poky-dylan-9.0.0/bui=
ld/tmp/work/armv5te-poky-linux-gnueabi/linphone/1.6.0-r3/temp/log.do_fetch.=
3098
ERROR: Task 358 (/home/yocto/YOCTO/poky-dylan-9.0.0/meta-linphone/recipes-l=
inphone/linphone/linphone_1.6.0.bb, do_fetch) failed with exit code '1'
ERROR: libosip2: Recipe file does not have license file information (LIC_FI=
LES_CHKSUM)
ERROR: Licensing Error: LIC_FILES_CHKSUM does not match, please fix
ERROR: Function failed: do_qa_configure
ERROR: Logfile of failure stored in: /home/yocto/YOCTO/poky-dylan-9.0.0/bui=
ld/tmp/work/armv5te-poky-linux-gnueabi/libosip2/3.5.0-r0/temp/log.do_config=
ure.3078
ERROR: Task 1024 (/home/yocto/YOCTO/poky-dylan-9.0.0/meta-linphone/recipes-=
linphone/libosip2/libosip2_3.5.0.bb, do_configure) failed with exit code '1=
'
NOTE: Tasks Summary: Attempted 4749 tasks of which 4747 didn't need to be r=
erun and 2 failed.
Waiting for 0 running tasks to finish:

Summary: 2 tasks failed:
/********/

Do anyone knows how to fix the LIC_FILES_CHKSUM for libosip2 .bb file or li=
nphone .bb file.
Please suggest me how to fix this error.

Thanks & Regards
Amit K.


________________________________________
From: Paul Eggleton [paul.eggleton@linux.intel.com]
Sent: Wednesday, August 28, 2013 1:43 PM
To: Amit Kumar
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] OE recipes- linphone build error in poky-9.0.0 build e=
nvironment

Hi Amit,

On Wednesday 28 August 2013 09:05:28 Amit Kumar wrote:
>      I wants to build the recipes name linphone(SIP-based IP phone) with
> poky-9.0.0 build environment. I found he linphone recipes under the
> "angstrom-openembedded". In my poky build environment I have created the
> new layer, name linphone, and copy the .bb files. But when i am building =
it
> through an dependency error.
>
> Do anyone have done it before, please guide me how to fix this error.
>
> /////////////////////////////////////////////////////////////////////////=
///
> //////////////////// yocto@yocto-HP:~/YOCTO/poky-dylan-9.0.0/build$ bitba=
ke
> linphone-image Loading cache: 100%
> |########################################################################=
##
> #######################| ETA:  00:00:00 Loaded 1126 entries from dependen=
cy
> cache.
>
> Build Configuration:
> BB_VERSION        =3D "1.18.0"
> BUILD_SYS         =3D "i686-linux"
> NATIVELSBSTRING   =3D "Ubuntu-12.04"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "qemuarm"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.4"
> TUNE_FEATURES     =3D "armv5 thumb dsp"
> TARGET_FPU        =3D "soft"
> meta
> meta-yocto
> meta-yocto-bsp
> meta-linphone     =3D "<unknown>:<unknown>"
>
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'libosip2' (but
> /home/yocto/YOCTO/poky-dylan-9.0.0/meta-linphone/recipes-linphone/linphon=
e/
> linphone_1.6.0.bb DEPENDS on or otherwise requires it) NOTE: Runtime targ=
et
> 'linphone' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['linphone', 'libosip2']
> ERROR: Required build target 'linphone-image' has no buildable providers.
> Missing or unbuildable dependency chain was: ['linphone-image', 'linphone=
',
> 'libosip2']

Looks like you've copied the linphone recipe and not its dependencies.

As far as I know this is an OE-Classic recipe so it won't be a straight cop=
y -
it will need to be migrated. See here for information on what you will need=
 to
do:

http://www.openembedded.org/wiki/Migrating_metadata_to_OE-Core

Cheers,
Paul

--

Paul Eggleton
Intel Open Source Technology Centre

The contents of this e-mail and any attachment(s) may contain confidential =
or privileged information for the intended recipient(s). Unintended recipie=
nts are prohibited from taking action on the basis of information in this e=
-mail and  using or disseminating the information,  and must notify the sen=
der and delete it from their system. L&T Infotech will not accept responsib=
ility or liability for the accuracy or completeness of, or the presence of =
any virus or disabling code in this e-mail"

