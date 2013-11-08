Return-Path: <DineshKumar.Varadarajan@lntinfotech.com>
Received: from mail1.bemta7.messagelabs.com (mail1.bemta7.messagelabs.com
	[216.82.254.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25B2CE01706
	for <yocto@yoctoproject.org>; Fri,  8 Nov 2013 06:32:53 -0800 (PST)
Received: from [216.82.254.19:31540] by server-14.bemta-7.messagelabs.com id
	BE/3D-06597-416FC725; Fri, 08 Nov 2013 14:32:52 +0000
X-Env-Sender: DineshKumar.Varadarajan@lntinfotech.com
X-Msg-Ref: server-2.tower-96.messagelabs.com!1383921169!3163281!1
X-Originating-IP: [202.54.134.175]
X-StarScan-Received: 
X-StarScan-Version: 6.9.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 22683 invoked from network); 8 Nov 2013 14:32:51 -0000
Received: from unknown (HELO chninmsedge01.chennaiodc.lntinfotech.com)
	(202.54.134.175)
	by server-2.tower-96.messagelabs.com with AES128-SHA encrypted SMTP;
	8 Nov 2013 14:32:51 -0000
Received: from chninmsedge01.chennaiodc.lntinfotech.com (172.29.23.55) by
	chninmsedge01.chennaiodc.lntinfotech.com (172.29.23.10) with Microsoft
	SMTP Server id 8.2.176.0; Fri, 8 Nov 2013 20:00:54 +0530
Received: from CHNDSSMGR.chennaiodc.lntinfotech.com ([127.0.0.1]) by
	chninmsedge01.chennaiodc.lntinfotech.com with Microsoft
	SMTPSVC(6.0.3790.4675);	 Fri, 8 Nov 2013 20:02:48 +0530
Received: from chninmshtcas01.chennaiodc.lntinfotech.com ([172.29.23.2]) by
	CHNDSSMGR.chennaiodc.lntinfotech.com with Microsoft
	SMTPSVC(6.0.3790.4675); Fri, 8 Nov 2013 20:02:48 +0530
Received: from CHNINMSMBX01.chennaiodc.lntinfotech.com ([169.254.2.18]) by
	chninmshtcas01.chennaiodc.lntinfotech.com ([::1]) with mapi;
	Fri, 8 Nov 2013 20:02:47 +0530
From: DineshKumar Varadarajan <DineshKumar.Varadarajan@lntinfotech.com>
To: <yocto@yoctoproject.org>
Date: Fri, 8 Nov 2013 20:02:47 +0530
Thread-Topic: Error while building BSP 
Thread-Index: AQHO3I9kRUCZudPIoEWAuDJnAee7Hw==
Message-ID: <7860E55F3F8366479EE1138A626B688D0700D662A3@CHNINMSMBX01.chennaiodc.lntinfotech.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
Importance: normal
Priority: normal
MIME-Version: 1.0
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.3790.4913
X-OriginalArrivalTime: 08 Nov 2013 14:32:48.0516 (UTC)
	FILETIME=[65B5A440:01CEDC8F]
Subject: Error while building BSP
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
X-List-Received-Date: Fri, 08 Nov 2013 14:32:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Class: urn:content-classes:message


Hi All,

            I am building the customized BSP for our clients . We have =
treied to build the BSP . I am getting the following error !!!

           I have checked the internet connection and network it sfine =
..

            Let me know where i can investigate further .



ERRROR

#############################################################
WARNING: Unable to get checksum for s3ctl-kernel-module SRC_URI entry =
s3ctl-kernel.tar.bz2: file could not be found                            =
                                              | ETA:  00:00:10
WARNING: Unable to get checksum for fdpm-kernel-module SRC_URI entry =
fdpm-kernel.tar.bz2: file could not be found
WARNING: Unable to get checksum for mmngr-kernel-module SRC_URI entry =
mmngr.tar.bz2: file could not be found
WARNING: Unable to get checksum for uvcs-kernel-module SRC_URI entry =
uvcs-kernel.tar.bz2: file could not be found
WARNING: Unable to get checksum for sgx-kernel-module SRC_URI entry =
SGX_KM_13261M2.tar.bz2: file could not be found
WARNING: Unable to get checksum for vspm-kernel-module SRC_URI entry =
vspm-kernel.tar.bz2: file could not be found
WARNING: Unable to get checksum for sgx-user-module SRC_URI entry =
r8a7791_linux_sgx_binaries_gles2_13261.tar.bz2: file could not be found
WARNING: Unable to get checksum for sgx-tp-module SRC_URI entry =
sgx-sample-unittest.tar.bz2: file could not be found
WARNING: Unable to get checksum for s3ctl-user-module SRC_URI entry =
s3ctl.tar.bz2: file could not be found
WARNING: Unable to get checksum for mmngr-user-module SRC_URI entry =
mmngr.tar.bz2: file could not be found                                   =
                                                | ETA:  00:00:10
WARNING: Unable to get checksum for fdpm-user-module SRC_URI entry =
fdpm.tar.bz2: file could not be found
WARNING: Unable to get checksum for vcp3-user-module SRC_URI entry =
RTM0AC0000MDAVCC31SL32C.tar.bz2: file could not be found
WARNING: Unable to get checksum for vcp3-user-module SRC_URI entry =
RTM0AC0000MDCMNC31SL32C.tar.bz2: file could not be found
WARNING: Unable to get checksum for vspm-user-module SRC_URI entry =
vspm-user.tar.bz2: file could not be found
WARNING: Unable to get checksum for mmngr-tp-user-module SRC_URI entry =
mmngr.tar.bz2: file could not be found
WARNING: Unable to get checksum for s3ctl-tp-user-module SRC_URI entry =
s3ctl-tp-user.tar.bz2: file could not be found
WARNING: Unable to get checksum for omx-user-module SRC_URI entry =
omx.tar.bz2: file could not be found
WARNING: Unable to get checksum for uvcs-user-module SRC_URI entry =
uvcs-user.tar.bz2: file could not be found
WARNING: Unable to get checksum for vspm-tp-user-module SRC_URI entry =
vspm-tp-user.tar.bz2: file could not be found
Parsing recipes: 100% =
|########################################################################=
#########################################################################=
#####################| Time: 00:00:16
Parsing of 1217 .bb files complete (0 cached, 1217 parsed). 1583 =
targets, 39 skipped, 51 masked, 0 errors.

Build Configuration:
BB_VERSION        =3D "1.18.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-12.04"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "koelsch"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.4.2"
TUNE_FEATURES     =3D "armv7a vfp neon callconvention-hard cortexa15"
TARGET_FPU        =3D "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    =3D =
"dylan-9.0.2:d734ab491a30078d43dee5440c03acce2d251425"
toolchain-layer   =3D "dylan:a108b2203a997634f87ac687e81712badaf3c546"
meta-linaro-toolchain =3D "tmp:6321a745aba4fc2ddb559d4606b0a98afc8a1ca2"
meta-koelsch
meta-koelsch-proprietary =3D "<unknown>:<unknown>"
meta-oe           =3D "dylan:a108b2203a997634f87ac687e81712badaf3c546"

NOTE: Resolving any missing task queue dependencies
NOTE: multiple providers are available for eglibc (eglibc, =
external-linaro-toolchain)
NOTE: consider defining a PREFERRED_PROVIDER entry to match eglibc
NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg
NOTE: multiple providers are available for jpeg-native (jpeg-native, =
libjpeg-turbo-native)
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg-native
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: Failed to fetch URL http://zlib.net/pigz/pigz-2.3.tar.gz, =
attempting MIRRORS if available
WARNING: Failed to fetch URL =
http://www.apache.org/dist/apr/apr-util-1.5.1.tar.gz, attempting MIRRORS =
if available
WARNING: Failed to fetch URL =
http://www.apache.org/dist/subversion/subversion-1.7.8.tar.bz2, =
attempting MIRRORS if available
WARNING: Failed to fetch URL =
ftp://ftp.gnu.org/gnu/binutils/binutils-2.23.1.tar.bz2, attempting =
MIRRORS if available
WARNING: Failed to fetch URL =
http://releases.linaro.org/13.09/components/toolchain/gcc-linaro/4.7/gcc-=
linaro-4.7-2013.09.tar.bz2, attempting MIRRORS if available
WARNING: Failed to fetch URL =
ftp://ftp.gnu.org/gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar.bz2, attempting =
MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 4, output:
Read error (Connection timed out) in headers.
Read error (Connection timed out) in headers.
Read error (Connection timed out) in headers.
Read error (Connection timed out) in headers.
Read error (Connection timed out) in headers.

ERROR: Function failed: Fetcher failure for URL: =
'http://releases.linaro.org/13.09/components/toolchain/gcc-linaro/4.7/gcc=
-linaro-4.7-2013.09.tar.bz2'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: =
/home/dinesh/bspv11/work/build/tmp/work/cortexa15hf-vfp-neon-poky-linux-g=
nueabi/gcc-cross-initial/linaro-4.7-r2013.09/temp/log.do_fetch.10335
ERROR: Task 732 =
(/home/dinesh/bspv11/work/build/../meta-linaro/meta-linaro-toolchain/reci=
pes-devtools/gcc/gcc-cross-initial_linaro-4.7.bb, do_fetch) failed with =
exit code '1'
WARNING: Failed to fetch URL =
http://kernel.org/pub/linux/kernel/v3.0/linux-3.8.tar.bz2, attempting =
MIRRORS if available
WARNING: Failed to fetch URL =
ftp://ftp.ossp.org/pkg/lib/uuid/uuid-1.6.2.tar.gz, attempting MIRRORS if =
available
WARNING: Failed to fetch URL =
ftp://ftp.debian.org/debian/pool/main/libc/libcap2/libcap2_2.22.orig.tar.=
gz, attempting MIRRORS if available
WARNING: Failed to fetch URL =
ftp://ftp.gnu.org/gnu/gettext/gettext-0.18.2.tar.gz, attempting MIRRORS =
if available
WARNING: Failed to fetch URL =
ftp://xmlsoft.org/libxml2/libxml2-2.9.0.tar.gz, attempting MIRRORS if =
available
WARNING: Failed to fetch URL =
ftp://ftp.gnupg.org/gcrypt/libgpg-error/libgpg-error-1.11.tar.bz2, =
attempting MIRRORS if available
WARNING: Failed to fetch URL =
ftp://ftp.gnupg.org/gcrypt/libgcrypt/libgcrypt-1.5.0.tar.gz, attempting =
MIRRORS if available
WARNING: Failed to fetch URL =
ftp://ftp.gnu.org/gnu/libtasn1/libtasn1-2.14.tar.gz, attempting MIRRORS =
if available
WARNING: Failed to fetch URL =
ftp://ftp.gnu.org/gnu/gdbm/gdbm-1.10.tar.gz, attempting MIRRORS if =
available
WARNING: Failed to fetch URL =
ftp://ftp.gnutls.org/gcrypt/gnutls/v2.12/gnutls-2.12.23.tar.bz2, =
attempting MIRRORS if available
WARNING: Failed to fetch URL =
ftp://sourceware.org/pub/libffi/libffi-3.0.11.tar.gz, attempting MIRRORS =
if available
Waiting for 2 running tasks to finish:
0: linux-libc-headers-3.8-r0 do_fetch (pid 10333)
1: libgcc-4.7.2-r20 do_fetch (pid 10338)


########################################################################
Regards,
Dinesh kumar.v

The contents of this e-mail and any attachment(s) may contain =
confidential or privileged information for the intended recipient(s). =
Unintended recipients are prohibited from taking action on the basis of =
information in this e-mail and  using or disseminating the information,  =
and must notify the sender and delete it from their system. L&T Infotech =
will not accept responsibility or liability for the accuracy or =
completeness of, or the presence of any virus or disabling code in this =
e-mail"
*************************************************************************=
=0D
 This email and attachments have been scanned for=0D
 potential proprietary or sensitive information leakage.=0D
 Websense Data Security, Protecting Your Information from the Inside =
Out.=0D
 www.websense.com=0D
 =
*************************************************************************=


