Return-Path: <Mark.Clark2@nov.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7B6EE00932; Fri,  9 Sep 2016 11:33:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.45 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0045.outbound.protection.outlook.com [104.47.36.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F7A9E008E3
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 11:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nov.onmicrosoft.com;
	s=selector1-nov-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=rj3tkLnw99Ug+mT6ZhX5XTBys2NVEs1MUsjMAcgqNyM=;
	b=U8LwG8516jpC82xyDuUZXdlwuUpLSFk2TU8ppCzNS9vIObP7EwAbBdBlGouTB19bIrLa0Hb/UzF9ION1Xcrwzo6Vt3X7uD9ECMCGVnYc56+wZ7TzsDCUFPIO1NPq5c/zRb4usXnaOt9n3VIDrv9ZXiarLT62ZEIcsPVV33JBl1w=
Received: from BY1PR15MB0038.namprd15.prod.outlook.com (10.161.96.28) by
	BY1PR15MB0040.namprd15.prod.outlook.com (10.161.97.12) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.609.9; Fri, 9 Sep 2016 18:33:43 +0000
Received: from BY1PR15MB0038.namprd15.prod.outlook.com ([10.161.96.28]) by
	BY1PR15MB0038.namprd15.prod.outlook.com ([10.161.96.28]) with mapi id
	15.01.0609.016; Fri, 9 Sep 2016 18:33:43 +0000
From: "Clark, Mark A" <Mark.Clark2@nov.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Poky/krogoth core-image-rt
Thread-Index: AdIKxiz/1tnQCN40QCauDOFKSFxYWQ==
Date: Fri, 9 Sep 2016 18:33:43 +0000
Message-ID: <BY1PR15MB00382741A7D3DA82030653F0BCFA0@BY1PR15MB0038.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Mark.Clark2@nov.com; 
x-originating-ip: [165.225.34.100]
x-ms-office365-filtering-correlation-id: 19dff126-d35b-4512-3481-08d3d8dfd3f4
x-microsoft-exchange-diagnostics: 1; BY1PR15MB0040;
	6:F2ol7YTroB51yu28V+tcLx5ZPAWXet5HgryC+Rb4gc8lddSDW3CwB3wKL3R6GZ15NwVoNuyM0wf7PXGD8dhI5DnherRUC7fqkLIscOc5gtLnhQy1C+4dAaYWDayKdZ30hW8MFWkoP8pNBZXHgBg4tHU9xEjo51b6aQ3sKXyYHezJrLpJhiwYYRmiMeDYOeHipx+RD3kWCi2/yNHCF/5gyjpdYgx1NrIEuLrOjg3vIGFxqCYMAk4SZdSg1vqwhj5typ2ite6plTW9zIMBURcWrdy/6YraSSb66XREraknLqmnIYAusFL3VX5dfNuQe2fZ;
	5:jEDWaCFnQjWb+yAHcqnOeVoyfujhq7Dtf0VgHoyupYfw3IcoipfyOHx7ystqAdCMH26vgkFQzCc043FVgYzX+I3x+S1ULsEu8U7lJ93MSy5ZapJmFi2vGnfuH3ppNj47xLKy5KSL2/rRsV4ijqpxhA==;
	24:6u9sQkIwFq9rN+/eNmDA8L35ALMT5t6q+6uI95Olb2iJ9pimcRgL2tnQZnr6JLs9ya9VoDbxkNkxTVgg6VASRJF9YfBp6+LzqjbwB7NiVsI=;
	7:uYDuNDgY+jC9sX53kEWV2+2xvCF5J5w1bj7WQrLigt3XMBwnzRFLmuOUTWVRzW1V+pOJ5laOG1La4E6kdes3wZ3O6L4MUlouAmRC1oycmNb6tWkXfzRML8Ee69tJNTqTcOiBIMFEyR0b4HXpAY1L5mAPQPR9GdV6ezHvSHP9v2gPyNh80vl5MtS5UKvwcLtd257eWlMnpkVA5IUhvOqCTNjIAM1NFmyjt6TJYWD1SEC8eQAxLhHvh5ax+t1HMtAp
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR15MB0040;
x-microsoft-antispam-prvs: <BY1PR15MB0040267A42272B6A441785F6BCFA0@BY1PR15MB0040.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(158342451672863)(278428928389397)(72170088055959)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415321)(6040176)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6043046)(6042046);
	SRVR:BY1PR15MB0040; BCL:0; PCL:0; RULEID:; SRVR:BY1PR15MB0040; 
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(174864002)(189002)(5640700001)(551544002)(76576001)(189998001)(2906002)(19609705001)(8936002)(19625215002)(33656002)(2900100001)(99936001)(3660700001)(87936001)(101416001)(15395725005)(19627595001)(5660300001)(106356001)(86362001)(3280700002)(2501003)(92566002)(10400500002)(11100500001)(7846002)(8676002)(66066001)(99286002)(54356999)(74316002)(105586002)(5630700001)(17760045003)(16236675004)(97736004)(18206015028)(7736002)(81166006)(5002640100001)(81156014)(2351001)(68736007)(229853001)(122556002)(6116002)(1730700003)(15975445007)(3846002)(450100001)(19300405004)(19580395003)(102836003)(77096005)(230783001)(50986999)(110136002)(19580405001)(107886002)(9686002)(790700001)(7696004)(586003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY1PR15MB0040;
	H:BY1PR15MB0038.namprd15.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nov.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nov.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2016 18:33:43.1252 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ebe82bb-f23f-4bb6-b7d0-b038c066ad05
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR15MB0040
Subject: Poky/krogoth core-image-rt
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
X-List-Received-Date: Fri, 09 Sep 2016 18:33:54 -0000
X-Groupsio-MsgNum: 31852
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_BY1PR15MB00382741A7D3DA82030653F0BCFA0BY1PR15MB0038namp_";
	type="multipart/alternative"

--_004_BY1PR15MB00382741A7D3DA82030653F0BCFA0BY1PR15MB0038namp_
Content-Type: multipart/alternative;
	boundary="_000_BY1PR15MB00382741A7D3DA82030653F0BCFA0BY1PR15MB0038namp_"

--_000_BY1PR15MB00382741A7D3DA82030653F0BCFA0BY1PR15MB0038namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All, I am still running into issues on building the RT image.   I was able =
to configure poky/jethro to create the core-image-rt.  That being said the =
kernel boot would hang at switching clock source "Switching to clocksource =
tsc".   I was attempting to run down the issue there when the 2.1 krogoth c=
ame along and looked promising given the kernel version advance.

It is very unclear which items need to be tweaked to get a rt build as the =
other recipes just work.  Granted changing the kernel-source makes sense du=
e to it being a modified kernel.

Prior to Yocto I used Gentoo and patched the compatible kernel for real-tim=
e before building the target.   Yocto seems promising in that it is more co=
hesive.

The two requirements I need are 1) real-time kernel and 2) genericx86 arch.=
   Beyond changing local.conf to facilitate this I am at a loss as to what =
needs changing to accomplish this.

Enclosed are the files Bruce created as a scratch example of the recipes an=
d my local.conf file.

genericx86-preempt-rt.scc:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
define KMACHINE genericx86
define KTYPE preempt-rt
define KARCH i386

# no new branch required, re-use the ktypes/preempt-rt/preempt-rt.scc branc=
h
include ktypes/preempt-rt/preempt-rt.scc

include bsp/common-pc/common-pc.scc

# default policy for preempt-rt kernels
include cfg/boot-live.scc
include cfg/usb-mass-storage.scc
include features/latencytop/latencytop.scc
include features/profiling/profiling.scc
include cfg/virtio.scc

linux-yocto_4.4.bbappend:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
KBRANCH_genericx86  =3D "standard/base"
KBRANCH_genericx86-64  =3D "standard/base"

KMACHINE_genericx86 ?=3D "common-pc"
KMACHINE_genericx86-64 ?=3D "common-pc-64"
KBRANCH_edgerouter =3D "standard/edgerouter"
KBRANCH_beaglebone =3D "standard/beaglebone"
KBRANCH_mpc8315e-rdb =3D "standard/fsl-mpc8315e-rdb"

SRCREV_machine_genericx86    ?=3D "3d2455f9da30f923c6bd69014fad4cc4ea738be6=
"
SRCREV_machine_genericx86-64 ?=3D "3d2455f9da30f923c6bd69014fad4cc4ea738be6=
"
SRCREV_machine_edgerouter ?=3D "ff4c4ef15b51f45b9106d71bf1f62fe7c02e63c2"
SRCREV_machine_beaglebone ?=3D "ff4c4ef15b51f45b9106d71bf1f62fe7c02e63c2"
SRCREV_machine_mpc8315e-rdb ?=3D "df00877ef9387b38b9601c82db57de2a1b23ce53"

COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
COMPATIBLE_MACHINE_edgerouter =3D "edgerouter"
COMPATIBLE_MACHINE_beaglebone =3D "beaglebone"
COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"

LINUX_VERSION_genericx86 =3D "4.4.3"
LINUX_VERSION_genericx86-64 =3D "4.4.3"

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/linux-yocto-4.4:"
SRC_URI +=3D " file://genericx86-preempt-rt.scc"


local.conf:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
#
# This file is your local configuration file and is where all local user se=
ttings
# are placed. The comments in this file give some guide to the options a ne=
w user
# to the system might want to change but pretty much any configuration opti=
on can
# be set in this file. More adventurous users can look at local.conf.extend=
ed
# which contains other examples of configuration which can be placed in thi=
s file
# but new users likely won't need any of them initially.
#
# Lines starting with the '#' character are commented out and in some cases=
 the
# default values are provided as comments to show people example syntax. En=
abling
# the option is a question of removing the # character and making any chang=
e to the
# variable as required.

#
# Machine Selection
#
# You need to select a specific machine to target the build with. There are=
 a selection
# of emulated machines available which can boot and run in the QEMU emulato=
r:
#
#MACHINE ?=3D "qemuarm"
#MACHINE ?=3D "qemumips"
#MACHINE ?=3D "qemuppc"
#MACHINE ?=3D "qemux86"
#MACHINE ?=3D "qemux86-64"
#
# There are also the following hardware board target machines included for
# demonstration purposes:
#
#MACHINE ?=3D "beaglebone"
MACHINE ?=3D "genericx86"
#MACHINE ?=3D "genericx86-64"
#MACHINE ?=3D "mpc8315e-rdb"
#MACHINE ?=3D "edgerouter"
#
# This sets the default machine to be qemux86 if no other machine is select=
ed:
MACHINE ??=3D "qemux86"

#
# Where to place downloads
#
# During a first build the system will download many different source code =
tarballs
# from various upstream projects. This can take a while, particularly if yo=
ur network
# connection is slow. These are all stored in DL_DIR. When wiping and rebui=
lding you
# can preserve this directory to speed up this part of subsequent builds. T=
his directory
# is safe to share between multiple builds on the same machine too.
#
# The default is a downloads directory under TOPDIR which is the build dire=
ctory.
#
#DL_DIR ?=3D "${TOPDIR}/downloads"

#
# Where to place shared-state files
#
# BitBake has the capability to accelerate builds based on previously built=
 output.
# This is done using "shared state" files which can be thought of as cache =
objects
# and this option determines where those files are placed.
#
# You can wipe out TMPDIR leaving this directory intact and the build would=
 regenerate
# from these files if no changes were made to the configuration. If changes=
 were made
# to the configuration, only shared state files where the state was still v=
alid would
# be used (done using checksums).
#
# The default is a sstate-cache directory under TOPDIR.
#
#SSTATE_DIR ?=3D "${TOPDIR}/sstate-cache"

#
# Where to place the build output
#
# This option specifies where the bulk of the building work should be done =
and
# where BitBake should place its temporary files and output. Keep in mind t=
hat
# this includes the extraction and compilation of many applications and the=
 toolchain
# which can use Gigabytes of hard disk space.
#
# The default is a tmp directory under TOPDIR.
#
TMPDIR =3D "${TOPDIR}/realtime"

#
# Default policy config
#
# The distribution setting controls which policy settings are used as defau=
lts.
# The default value is fine for general Yocto project use, at least initial=
ly.
# Ultimately when creating custom policy, people will likely end up subclas=
sing
# these defaults.
#
DISTRO ?=3D "poky"
# As an example of a subclass there is a "bleeding" edge policy configurati=
on
# where many versions are set to the absolute latest code from the upstream
# source control systems. This is just mentioned here as an example, its no=
t
# useful to most new users.
# DISTRO ?=3D "poky-bleeding"

#
# Package Management configuration
#
# This variable lists which packaging formats to enable. Multiple package b=
ackends
# can be enabled at once and the first item listed in the variable will be =
used
# to generate the root filesystems.
# Options are:
#  - 'package_deb' for debian style deb files
#  - 'package_ipk' for ipk files are used by opkg (a debian style embedded =
package manager)
#  - 'package_rpm' for rpm style packages
# E.g.: PACKAGE_CLASSES ?=3D "package_rpm package_deb package_ipk"
# We default to rpm:
PACKAGE_CLASSES ?=3D "package_rpm"

#
# SDK/ADT target architecture
#
# This variable specifies the architecture to build SDK/ADT items for and m=
eans
# you can build the SDK packages for architectures other than the machine y=
ou are
# running the build on (i.e. building i686 packages on an x86_64 host).
# Supported values are i686 and x86_64
SDKMACHINE ?=3D "i686"

#
# Extra image configuration defaults
#
# The EXTRA_IMAGE_FEATURES variable allows extra packages to be added to th=
e generated
# images. Some of these options are added to certain image types automatica=
lly. The
# variable can contain the following options:
#  "dbg-pkgs"       - add -dbg packages for all installed packages
#                     (adds symbol information for debugging/profiling)
#  "dev-pkgs"       - add -dev packages for all installed packages
#                     (useful if you want to develop against libs in the im=
age)
#  "ptest-pkgs"     - add -ptest packages for all ptest-enabled packages
#                     (useful if you want to run the package test suites)
#  "tools-sdk"      - add development tools (gcc, make, pkgconfig etc.)
#  "tools-debug"    - add debugging tools (gdb, strace)
#  "eclipse-debug"  - add Eclipse remote debugging support
#  "tools-profile"  - add profiling tools (oprofile, exmap, lttng, valgrind=
)
#  "tools-testapps" - add useful testing tools (ts_print, aplay, arecord et=
c.)
#  "debug-tweaks"   - make an image suitable for development
#                     e.g. ssh root access has a blank password
# There are other application targets that can be used here too, see
# meta/classes/image.bbclass and meta/classes/core-image.bbclass for more d=
etails.
# We default to enabling the debugging tweaks.
EXTRA_IMAGE_FEATURES =3D "debug-tweaks"

#
# Additional image features
#
# The following is a list of additional classes to use when building images=
 which
# enable extra features. Some available options which can be included in th=
is variable
# are:
#   - 'buildstats' collect build statistics
#   - 'image-mklibs' to reduce shared library files size for an image
#   - 'image-prelink' in order to prelink the filesystem image
#   - 'image-swab' to perform host system intrusion detection
# NOTE: if listing mklibs & prelink both, then make sure mklibs is before p=
relink
# NOTE: mklibs also needs to be explicitly enabled for a given image, see l=
ocal.conf.extended
USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"

#
# Runtime testing of images
#
# The build system can test booting virtual machine images under qemu (an e=
mulator)
# after any root filesystems are created and run tests against those images=
. To
# enable this uncomment this line. See classes/testimage(-auto).bbclass for
# further details.
#TEST_IMAGE =3D "1"
#
# Interactive shell configuration
#
# Under certain circumstances the system may need input from you and to do =
this it
# can launch an interactive shell. It needs to do this since the build is
# multithreaded and needs to be able to handle the case where more than one=
 parallel
# process may require the user's attention. The default is iterate over the=
 available
# terminal types to find one that works.
#
# Examples of the occasions this may happen are when resolving patches whic=
h cannot
# be applied, to use the devshell or the kernel menuconfig
#
# Supported values are auto, gnome, xfce, rxvt, screen, konsole (KDE 3.x on=
ly), none
# Note: currently, Konsole support only works for KDE 3.x due to the way
# newer Konsole versions behave
#OE_TERMINAL =3D "auto"
# By default disable interactive patch resolution (tasks will just fail ins=
tead):
PATCHRESOLVE =3D "noop"

#
# Disk Space Monitoring during the build
#
# Monitor the disk space during the build. If there is less that 1GB of spa=
ce or less
# than 100K inodes in any key build location (TMPDIR, DL_DIR, SSTATE_DIR), =
gracefully
# shutdown the build. If there is less that 100MB or 1K inodes, perform a h=
ard abort
# of the build. The reason for this is that running completely out of space=
 can corrupt
# files and damages the build in ways which may not be easily recoverable.
BB_DISKMON_DIRS =3D "\
    STOPTASKS,${TMPDIR},1G,100K \
    STOPTASKS,${DL_DIR},1G,100K \
    STOPTASKS,${SSTATE_DIR},1G,100K \
    ABORT,${TMPDIR},100M,1K \
    ABORT,${DL_DIR},100M,1K \
    ABORT,${SSTATE_DIR},100M,1K"

#
# Shared-state files from other locations
#
# As mentioned above, shared state files are prebuilt cache data objects wh=
ich can
# used to accelerate build time. This variable can be used to configure the=
 system
# to search other mirror locations for these objects before it builds the d=
ata itself.
#
# This can be a filesystem directory, or a remote url such as http or ftp. =
These
# would contain the sstate-cache results from previous builds (possibly fro=
m other
# machines). This variable works like fetcher MIRRORS/PREMIRRORS and points=
 to the
# cache locations to check for the shared objects.
# NOTE: if the mirror uses the same structure as SSTATE_DIR, you need to ad=
d PATH
# at the end as shown in the examples below. This will be substituted with =
the
# correct path within the directory structure.
#SSTATE_MIRRORS ?=3D "\
#file://.* http://someserver.tld/share/sstate/PATH;downloadfilename=3DPATH =
\n \
#file://.* file:///some/local/dir/sstate/PATH"


#
# Qemu configuration
#
# By default qemu will build with a builtin VNC server where graphical outp=
ut can be
# seen. The two lines below enable the SDL backend too. This assumes there =
is a
# libsdl library available on your build system.
PACKAGECONFIG_append_pn-qemu-native =3D " sdl"
PACKAGECONFIG_append_pn-nativesdk-qemu =3D " sdl"
ASSUME_PROVIDED +=3D "libsdl-native"


# CONF_VERSION is increased each time build/conf/ changes incompatibly and =
is used to
# track the version of this file when it was generated. This can safely be =
ignored if
# this doesn't mean anything to you.
CONF_VERSION =3D "1"
COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
PREFERED_PROVIDER_virtual/kernel =3D "linux-yocto-rt"

Mark Clark
Embedded Software Engineer
Embedded Software, Cedar Park, TX
[Description: Description: Description: Description: National Oilwell Varco=
 Logo Color CMYK.jpg]
 Wellbore Technologies - Dynamic Drilling Solutions
Global Software Engineering
Office: (512) 340-5435
Mobile: (512) 736-9396
"One Team - Infinite Solutions"


--_000_BY1PR15MB00382741A7D3DA82030653F0BCFA0BY1PR15MB0038namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Gill Sans MT";
	panose-1:2 11 5 2 2 1 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">All, I am still running into issues on building the =
RT image.&nbsp;&nbsp; I was able to configure poky/jethro to create the cor=
e-image-rt.&nbsp; That being said the kernel boot would hang at switching c=
lock source &#8220;Switching to clocksource tsc&#8221;.&nbsp;&nbsp; I was
 attempting to run down the issue there when the 2.1 krogoth came along and=
 looked promising given the kernel version advance.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It is very unclear which items need to be tweaked to=
 get a rt build as the other recipes just work.&nbsp; Granted changing the =
kernel-source makes sense due to it being a modified kernel.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Prior to Yocto I used Gentoo and patched the compati=
ble kernel for real-time before building the target.&nbsp;&nbsp; Yocto seem=
s promising in that it is more cohesive.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The two requirements I need are 1) real-time kernel =
and 2) genericx86 arch.&nbsp;&nbsp; Beyond changing local.conf to facilitat=
e this I am at a loss as to what needs changing to accomplish this.<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Enclosed are the files Bruce created as a scratch ex=
ample of the recipes and my local.conf file.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">genericx86-preempt-rt.scc:<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">define KMACHINE genericx86<o:p></o:p></p>
<p class=3D"MsoNormal">define KTYPE preempt-rt<o:p></o:p></p>
<p class=3D"MsoNormal">define KARCH i386<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># no new branch required, re-use the ktypes/preempt-=
rt/preempt-rt.scc branch<o:p></o:p></p>
<p class=3D"MsoNormal">include ktypes/preempt-rt/preempt-rt.scc<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">include bsp/common-pc/common-pc.scc<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># default policy for preempt-rt kernels<o:p></o:p></=
p>
<p class=3D"MsoNormal">include cfg/boot-live.scc<o:p></o:p></p>
<p class=3D"MsoNormal">include cfg/usb-mass-storage.scc<o:p></o:p></p>
<p class=3D"MsoNormal">include features/latencytop/latencytop.scc<o:p></o:p=
></p>
<p class=3D"MsoNormal">include features/profiling/profiling.scc<o:p></o:p><=
/p>
<p class=3D"MsoNormal">include cfg/virtio.scc<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">linux-yocto_4.4.bbappend:<o:p></o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">KBRANCH_genericx86&nbsp; =3D &quot;standard/base&quo=
t;<o:p></o:p></p>
<p class=3D"MsoNormal">KBRANCH_genericx86-64&nbsp; =3D &quot;standard/base&=
quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">KMACHINE_genericx86 ?=3D &quot;common-pc&quot;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">KMACHINE_genericx86-64 ?=3D &quot;common-pc-64&quot;=
<o:p></o:p></p>
<p class=3D"MsoNormal">KBRANCH_edgerouter =3D &quot;standard/edgerouter&quo=
t;<o:p></o:p></p>
<p class=3D"MsoNormal">KBRANCH_beaglebone =3D &quot;standard/beaglebone&quo=
t;<o:p></o:p></p>
<p class=3D"MsoNormal">KBRANCH_mpc8315e-rdb =3D &quot;standard/fsl-mpc8315e=
-rdb&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SRCREV_machine_genericx86&nbsp;&nbsp;&nbsp; ?=3D &qu=
ot;3d2455f9da30f923c6bd69014fad4cc4ea738be6&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRCREV_machine_genericx86-64 ?=3D &quot;3d2455f9da30=
f923c6bd69014fad4cc4ea738be6&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRCREV_machine_edgerouter ?=3D &quot;ff4c4ef15b51f45=
b9106d71bf1f62fe7c02e63c2&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRCREV_machine_beaglebone ?=3D &quot;ff4c4ef15b51f45=
b9106d71bf1f62fe7c02e63c2&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRCREV_machine_mpc8315e-rdb ?=3D &quot;df00877ef9387=
b38b9601c82db57de2a1b23ce53&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">COMPATIBLE_MACHINE_genericx86 =3D &quot;genericx86&q=
uot;<o:p></o:p></p>
<p class=3D"MsoNormal">COMPATIBLE_MACHINE_genericx86-64 =3D &quot;genericx8=
6-64&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">COMPATIBLE_MACHINE_edgerouter =3D &quot;edgerouter&q=
uot;<o:p></o:p></p>
<p class=3D"MsoNormal">COMPATIBLE_MACHINE_beaglebone =3D &quot;beaglebone&q=
uot;<o:p></o:p></p>
<p class=3D"MsoNormal">COMPATIBLE_MACHINE_mpc8315e-rdb =3D &quot;mpc8315e-r=
db&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">LINUX_VERSION_genericx86 =3D &quot;4.4.3&quot;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">LINUX_VERSION_genericx86-64 =3D &quot;4.4.3&quot;<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/linux-=
yocto-4.4:&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRC_URI &#43;=3D &quot; file://genericx86-preempt-rt=
.scc&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">local.conf:<o:p></o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>
#<o:p></o:p></p>
<p class=3D"MsoNormal"># This file is your local configuration file and is =
where all local user settings<o:p></o:p></p>
<p class=3D"MsoNormal"># are placed. The comments in this file give some gu=
ide to the options a new user<o:p></o:p></p>
<p class=3D"MsoNormal"># to the system might want to change but pretty much=
 any configuration option can<o:p></o:p></p>
<p class=3D"MsoNormal"># be set in this file. More adventurous users can lo=
ok at local.conf.extended
<o:p></o:p></p>
<p class=3D"MsoNormal"># which contains other examples of configuration whi=
ch can be placed in this file<o:p></o:p></p>
<p class=3D"MsoNormal"># but new users likely won't need any of them initia=
lly.<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Lines starting with the '#' character are commente=
d out and in some cases the
<o:p></o:p></p>
<p class=3D"MsoNormal"># default values are provided as comments to show pe=
ople example syntax. Enabling<o:p></o:p></p>
<p class=3D"MsoNormal"># the option is a question of removing the # charact=
er and making any change to the<o:p></o:p></p>
<p class=3D"MsoNormal"># variable as required.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Machine Selection<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># You need to select a specific machine to target th=
e build with. There are a selection<o:p></o:p></p>
<p class=3D"MsoNormal"># of emulated machines available which can boot and =
run in the QEMU emulator:<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal">#MACHINE ?=3D &quot;qemuarm&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">#MACHINE ?=3D &quot;qemumips&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">#MACHINE ?=3D &quot;qemuppc&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">#MACHINE ?=3D &quot;qemux86&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">#MACHINE ?=3D &quot;qemux86-64&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># There are also the following hardware board target=
 machines included for
<o:p></o:p></p>
<p class=3D"MsoNormal"># demonstration purposes:<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal">#MACHINE ?=3D &quot;beaglebone&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE ?=3D &quot;genericx86&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">#MACHINE ?=3D &quot;genericx86-64&quot;<o:p></o:p></=
p>
<p class=3D"MsoNormal">#MACHINE ?=3D &quot;mpc8315e-rdb&quot;<o:p></o:p></p=
>
<p class=3D"MsoNormal">#MACHINE ?=3D &quot;edgerouter&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># This sets the default machine to be qemux86 if no =
other machine is selected:<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE ??=3D &quot;qemux86&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Where to place downloads<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># During a first build the system will download many=
 different source code tarballs<o:p></o:p></p>
<p class=3D"MsoNormal"># from various upstream projects. This can take a wh=
ile, particularly if your network<o:p></o:p></p>
<p class=3D"MsoNormal"># connection is slow. These are all stored in DL_DIR=
. When wiping and rebuilding you<o:p></o:p></p>
<p class=3D"MsoNormal"># can preserve this directory to speed up this part =
of subsequent builds. This directory<o:p></o:p></p>
<p class=3D"MsoNormal"># is safe to share between multiple builds on the sa=
me machine too.<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># The default is a downloads directory under TOPDIR =
which is the build directory.<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal">#DL_DIR ?=3D &quot;${TOPDIR}/downloads&quot;<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Where to place shared-state files<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># BitBake has the capability to accelerate builds ba=
sed on previously built output.<o:p></o:p></p>
<p class=3D"MsoNormal"># This is done using &quot;shared state&quot; files =
which can be thought of as cache objects<o:p></o:p></p>
<p class=3D"MsoNormal"># and this option determines where those files are p=
laced.<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># You can wipe out TMPDIR leaving this directory int=
act and the build would regenerate<o:p></o:p></p>
<p class=3D"MsoNormal"># from these files if no changes were made to the co=
nfiguration. If changes were made<o:p></o:p></p>
<p class=3D"MsoNormal"># to the configuration, only shared state files wher=
e the state was still valid would<o:p></o:p></p>
<p class=3D"MsoNormal"># be used (done using checksums).<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># The default is a sstate-cache directory under TOPD=
IR.<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal">#SSTATE_DIR ?=3D &quot;${TOPDIR}/sstate-cache&quot;<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Where to place the build output<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># This option specifies where the bulk of the buildi=
ng work should be done and<o:p></o:p></p>
<p class=3D"MsoNormal"># where BitBake should place its temporary files and=
 output. Keep in mind that<o:p></o:p></p>
<p class=3D"MsoNormal"># this includes the extraction and compilation of ma=
ny applications and the toolchain<o:p></o:p></p>
<p class=3D"MsoNormal"># which can use Gigabytes of hard disk space.<o:p></=
o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># The default is a tmp directory under TOPDIR.<o:p><=
/o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal">TMPDIR =3D &quot;${TOPDIR}/realtime&quot;<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Default policy config<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># The distribution setting controls which policy set=
tings are used as defaults.<o:p></o:p></p>
<p class=3D"MsoNormal"># The default value is fine for general Yocto projec=
t use, at least initially.<o:p></o:p></p>
<p class=3D"MsoNormal"># Ultimately when creating custom policy, people wil=
l likely end up subclassing
<o:p></o:p></p>
<p class=3D"MsoNormal"># these defaults.<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO ?=3D &quot;poky&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"># As an example of a subclass there is a &quot;bleed=
ing&quot; edge policy configuration<o:p></o:p></p>
<p class=3D"MsoNormal"># where many versions are set to the absolute latest=
 code from the upstream
<o:p></o:p></p>
<p class=3D"MsoNormal"># source control systems. This is just mentioned her=
e as an example, its not<o:p></o:p></p>
<p class=3D"MsoNormal"># useful to most new users.<o:p></o:p></p>
<p class=3D"MsoNormal"># DISTRO ?=3D &quot;poky-bleeding&quot;<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Package Management configuration<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># This variable lists which packaging formats to ena=
ble. Multiple package backends
<o:p></o:p></p>
<p class=3D"MsoNormal"># can be enabled at once and the first item listed i=
n the variable will be used
<o:p></o:p></p>
<p class=3D"MsoNormal"># to generate the root filesystems.<o:p></o:p></p>
<p class=3D"MsoNormal"># Options are:<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp; - 'package_deb' for debian style deb files<o=
:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp; - 'package_ipk' for ipk files are used by op=
kg (a debian style embedded package manager)<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp; - 'package_rpm' for rpm style packages<o:p><=
/o:p></p>
<p class=3D"MsoNormal"># E.g.: PACKAGE_CLASSES ?=3D &quot;package_rpm packa=
ge_deb package_ipk&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"># We default to rpm:<o:p></o:p></p>
<p class=3D"MsoNormal">PACKAGE_CLASSES ?=3D &quot;package_rpm&quot;<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># SDK/ADT target architecture<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># This variable specifies the architecture to build =
SDK/ADT items for and means<o:p></o:p></p>
<p class=3D"MsoNormal"># you can build the SDK packages for architectures o=
ther than the machine you are
<o:p></o:p></p>
<p class=3D"MsoNormal"># running the build on (i.e. building i686 packages =
on an x86_64 host).<o:p></o:p></p>
<p class=3D"MsoNormal"># Supported values are i686 and x86_64<o:p></o:p></p=
>
<p class=3D"MsoNormal">SDKMACHINE ?=3D &quot;i686&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Extra image configuration defaults<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># The EXTRA_IMAGE_FEATURES variable allows extra pac=
kages to be added to the generated
<o:p></o:p></p>
<p class=3D"MsoNormal"># images. Some of these options are added to certain=
 image types automatically. The<o:p></o:p></p>
<p class=3D"MsoNormal"># variable can contain the following options:<o:p></=
o:p></p>
<p class=3D"MsoNormal">#&nbsp; &quot;dbg-pkgs&quot;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; - add -dbg packages for all installed packages<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (adds=
 symbol information for debugging/profiling)<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp; &quot;dev-pkgs&quot;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; - add -dev packages for all installed packages<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (usef=
ul if you want to develop against libs in the image)<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp; &quot;ptest-pkgs&quot;&nbsp;&nbsp;&nbsp;&nbs=
p; - add -ptest packages for all ptest-enabled packages<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (usef=
ul if you want to run the package test suites)<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp; &quot;tools-sdk&quot;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; - add development tools (gcc, make, pkgconfig etc.)<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp; &quot;tools-debug&quot;&nbsp;&nbsp;&nbsp; - =
add debugging tools (gdb, strace)<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp; &quot;eclipse-debug&quot;&nbsp; - add Eclips=
e remote debugging support<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp; &quot;tools-profile&quot;&nbsp; - add profil=
ing tools (oprofile, exmap, lttng, valgrind)<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp; &quot;tools-testapps&quot; - add useful test=
ing tools (ts_print, aplay, arecord etc.)<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp; &quot;debug-tweaks&quot;&nbsp;&nbsp; - make =
an image suitable for development<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e.g. =
ssh root access has a blank password<o:p></o:p></p>
<p class=3D"MsoNormal"># There are other application targets that can be us=
ed here too, see<o:p></o:p></p>
<p class=3D"MsoNormal"># meta/classes/image.bbclass and meta/classes/core-i=
mage.bbclass for more details.<o:p></o:p></p>
<p class=3D"MsoNormal"># We default to enabling the debugging tweaks.<o:p><=
/o:p></p>
<p class=3D"MsoNormal">EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks&quot;<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Additional image features<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># The following is a list of additional classes to u=
se when building images which<o:p></o:p></p>
<p class=3D"MsoNormal"># enable extra features. Some available options whic=
h can be included in this variable
<o:p></o:p></p>
<p class=3D"MsoNormal"># are:<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp;&nbsp; - 'buildstats' collect build statistic=
s<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp;&nbsp; - 'image-mklibs' to reduce shared libr=
ary files size for an image<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp;&nbsp; - 'image-prelink' in order to prelink =
the filesystem image<o:p></o:p></p>
<p class=3D"MsoNormal">#&nbsp;&nbsp; - 'image-swab' to perform host system =
intrusion detection<o:p></o:p></p>
<p class=3D"MsoNormal"># NOTE: if listing mklibs &amp; prelink both, then m=
ake sure mklibs is before prelink<o:p></o:p></p>
<p class=3D"MsoNormal"># NOTE: mklibs also needs to be explicitly enabled f=
or a given image, see local.conf.extended<o:p></o:p></p>
<p class=3D"MsoNormal">USER_CLASSES ?=3D &quot;buildstats image-mklibs imag=
e-prelink&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Runtime testing of images<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># The build system can test booting virtual machine =
images under qemu (an emulator)<o:p></o:p></p>
<p class=3D"MsoNormal"># after any root filesystems are created and run tes=
ts against those images. To<o:p></o:p></p>
<p class=3D"MsoNormal"># enable this uncomment this line. See classes/testi=
mage(-auto).bbclass for<o:p></o:p></p>
<p class=3D"MsoNormal"># further details.<o:p></o:p></p>
<p class=3D"MsoNormal">#TEST_IMAGE =3D &quot;1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Interactive shell configuration<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Under certain circumstances the system may need in=
put from you and to do this it
<o:p></o:p></p>
<p class=3D"MsoNormal"># can launch an interactive shell. It needs to do th=
is since the build is
<o:p></o:p></p>
<p class=3D"MsoNormal"># multithreaded and needs to be able to handle the c=
ase where more than one parallel<o:p></o:p></p>
<p class=3D"MsoNormal"># process may require the user's attention. The defa=
ult is iterate over the available<o:p></o:p></p>
<p class=3D"MsoNormal"># terminal types to find one that works.<o:p></o:p><=
/p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Examples of the occasions this may happen are when=
 resolving patches which cannot<o:p></o:p></p>
<p class=3D"MsoNormal"># be applied, to use the devshell or the kernel menu=
config<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Supported values are auto, gnome, xfce, rxvt, scre=
en, konsole (KDE 3.x only), none<o:p></o:p></p>
<p class=3D"MsoNormal"># Note: currently, Konsole support only works for KD=
E 3.x due to the way<o:p></o:p></p>
<p class=3D"MsoNormal"># newer Konsole versions behave<o:p></o:p></p>
<p class=3D"MsoNormal">#OE_TERMINAL =3D &quot;auto&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"># By default disable interactive patch resolution (t=
asks will just fail instead):<o:p></o:p></p>
<p class=3D"MsoNormal">PATCHRESOLVE =3D &quot;noop&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Disk Space Monitoring during the build<o:p></o:p><=
/p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Monitor the disk space during the build. If there =
is less that 1GB of space or less<o:p></o:p></p>
<p class=3D"MsoNormal"># than 100K inodes in any key build location (TMPDIR=
, DL_DIR, SSTATE_DIR), gracefully<o:p></o:p></p>
<p class=3D"MsoNormal"># shutdown the build. If there is less that 100MB or=
 1K inodes, perform a hard abort<o:p></o:p></p>
<p class=3D"MsoNormal"># of the build. The reason for this is that running =
completely out of space can corrupt<o:p></o:p></p>
<p class=3D"MsoNormal"># files and damages the build in ways which may not =
be easily recoverable.<o:p></o:p></p>
<p class=3D"MsoNormal">BB_DISKMON_DIRS =3D &quot;\<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; STOPTASKS,${TMPDIR},1G,100K \<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; STOPTASKS,${DL_DIR},1G,100K \<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; STOPTASKS,${SSTATE_DIR},1G,100K \=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ABORT,${TMPDIR},100M,1K \<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ABORT,${DL_DIR},100M,1K \<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ABORT,${SSTATE_DIR},100M,1K&quot;=
 <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Shared-state files from other locations<o:p></o:p>=
</p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># As mentioned above, shared state files are prebuil=
t cache data objects which can
<o:p></o:p></p>
<p class=3D"MsoNormal"># used to accelerate build time. This variable can b=
e used to configure the system<o:p></o:p></p>
<p class=3D"MsoNormal"># to search other mirror locations for these objects=
 before it builds the data itself.<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># This can be a filesystem directory, or a remote ur=
l such as http or ftp. These<o:p></o:p></p>
<p class=3D"MsoNormal"># would contain the sstate-cache results from previo=
us builds (possibly from other
<o:p></o:p></p>
<p class=3D"MsoNormal"># machines). This variable works like fetcher MIRROR=
S/PREMIRRORS and points to the
<o:p></o:p></p>
<p class=3D"MsoNormal"># cache locations to check for the shared objects.<o=
:p></o:p></p>
<p class=3D"MsoNormal"># NOTE: if the mirror uses the same structure as SST=
ATE_DIR, you need to add PATH<o:p></o:p></p>
<p class=3D"MsoNormal"># at the end as shown in the examples below. This wi=
ll be substituted with the<o:p></o:p></p>
<p class=3D"MsoNormal"># correct path within the directory structure.<o:p><=
/o:p></p>
<p class=3D"MsoNormal">#SSTATE_MIRRORS ?=3D &quot;\<o:p></o:p></p>
<p class=3D"MsoNormal">#file://.* http://someserver.tld/share/sstate/PATH;d=
ownloadfilename=3DPATH \n \<o:p></o:p></p>
<p class=3D"MsoNormal">#file://.* file:///some/local/dir/sstate/PATH&quot;<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Qemu configuration<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># By default qemu will build with a builtin VNC serv=
er where graphical output can be<o:p></o:p></p>
<p class=3D"MsoNormal"># seen. The two lines below enable the SDL backend t=
oo. This assumes there is a<o:p></o:p></p>
<p class=3D"MsoNormal"># libsdl library available on your build system.<o:p=
></o:p></p>
<p class=3D"MsoNormal">PACKAGECONFIG_append_pn-qemu-native =3D &quot; sdl&q=
uot;<o:p></o:p></p>
<p class=3D"MsoNormal">PACKAGECONFIG_append_pn-nativesdk-qemu =3D &quot; sd=
l&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">ASSUME_PROVIDED &#43;=3D &quot;libsdl-native&quot;<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># CONF_VERSION is increased each time build/conf/ ch=
anges incompatibly and is used to<o:p></o:p></p>
<p class=3D"MsoNormal"># track the version of this file when it was generat=
ed. This can safely be ignored if<o:p></o:p></p>
<p class=3D"MsoNormal"># this doesn't mean anything to you.<o:p></o:p></p>
<p class=3D"MsoNormal">CONF_VERSION =3D &quot;1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">COMPATIBLE_MACHINE_genericx86 =3D &quot;genericx86&q=
uot;<o:p></o:p></p>
<p class=3D"MsoNormal">PREFERED_PROVIDER_virtual/kernel =3D &quot;linux-yoc=
to-rt&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#0070C0">Mark Clark<o:p></o:=
p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"color:#0070C0">Embedded Software Engi=
neer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#0070C0">Embedded Software, Ced=
ar Park, TX<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Gi=
ll Sans MT&quot;,sans-serif;color:#1F497D"><img width=3D"245" height=3D"24"=
 style=3D"width:2.552in;height:.25in" id=3D"Picture_x0020_1" src=3D"cid:ima=
ge001.png@01D20A9D.61524310" alt=3D"Description: Description: Description: =
Description: National Oilwell Varco Logo Color CMYK.jpg"><o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#1F497D">&nbsp;Wellbore Technologies &#8211; Dyna=
mic Drilling Solutions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#1F497D">Global Software Engineering<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#0070C0">Office: (512) 340-5435=
</span><span style=3D"color:#0070C0"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#0070C0">Mobile: (512) 736-9396=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><i><span style=3D"font-family:&quot;Times New Roman&=
quot;,serif;color:#0070C0">&#8220;One Team &#8211; Infinite Solutions&#8221=
;</span></i><span style=3D"font-family:&quot;Times New Roman&quot;,serif;co=
lor:#0070C0"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BY1PR15MB00382741A7D3DA82030653F0BCFA0BY1PR15MB0038namp_--

--_004_BY1PR15MB00382741A7D3DA82030653F0BCFA0BY1PR15MB0038namp_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=9171;
	creation-date="Fri, 09 Sep 2016 18:33:42 GMT";
	modification-date="Fri, 09 Sep 2016 18:33:42 GMT"
Content-ID: <image001.png@01D20A9D.61524310>
Content-Transfer-Encoding: base64

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

--_004_BY1PR15MB00382741A7D3DA82030653F0BCFA0BY1PR15MB0038namp_--
