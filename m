Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1692BE007C2; Sun, 27 Jul 2014 20:58:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 67 seconds by postgrey-1.32 at yocto-www;
	Sun, 27 Jul 2014 20:58:23 PDT
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D3B0E007B4
	for <yocto@yoctoproject.org>; Sun, 27 Jul 2014 20:58:23 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.00,977,1396972800"; d="scan'208";a="33846874"
Received: from localhost (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 28 Jul 2014 11:54:20 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s6S3v5uQ024659
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 11:57:05 +0800
Received: from G08CNEXMBPEKD01.g08.fujitsu.local ([10.167.33.81]) by
	G08CNEXCHPEKD03.g08.fujitsu.local ([10.167.33.85]) with mapi id
	14.03.0181.006; Mon, 28 Jul 2014 11:57:08 +0800
From: "leimaohui@cn.fujitsu.com" <leimaohui@cn.fujitsu.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto]questions about spdx
Thread-Index: Ac+qFiqI3CJ+clfrTCOEf7MPzAmDNA==
Date: Mon, 28 Jul 2014 03:57:11 +0000
Message-ID: <1B56A49860EB2D45ADE3731B15C959FDAAA4DD@G08CNEXMBPEKD01.g08.fujitsu.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.75]
MIME-Version: 1.0
Subject: questions about spdx
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
X-List-Received-Date: Mon, 28 Jul 2014 03:58:26 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello all,

About yocto-spdx, I need some help.
1. I'm trying to use yocto(poky: 8f52c69183a6c2b50ed470c27383697ebc38efef) =
to get spdx information.=20
I add " spdx " to the USER_CLASSES  in my local.conf, and configured my met=
a/conf/licenses.conf as below.

But, in the generated *.spdx files,I do not get any license information. (t=
he spdx file can be found in the end of the mail),
Is there something wrong with my method?

I noticed that in meta/conf/licenses.conf,the FOSS_SERVER is set to=20
FOSS_SERVER =3D "http://localhost//?mod=3Dspdx_license_once&noCopyright=3D$=
{FOSS_COPYRIGHT}&recursiveUnpack=3D${FOSS_RECURSIVE_UNPACK}".
Should I have to set up a FOSSologySPDX instance server in my localhost?

2. I noticed that from 4253671d46e3c350110bc73a1f55a054df0fc909(Wed Dec 4 1=
1:47:02 2013),there is no update about spdx.
In "Yocto 1.7 Schedule", I saw only two enhancements about spdx.
Could someone explain the current progress and future work plan about spdx =
in detail?

Any help would be appreciated.

Lei Maohui

----------------------------------
diff --git a/meta/conf/licenses.conf b/meta/conf/licenses.conf
index b1d5480..d94cb36 100644
--- a/meta/conf/licenses.conf
+++ b/meta/conf/licenses.conf
@@ -116,15 +116,15 @@ SPDXLICENSEMAP[SGIv1] =3D "SGI-1"
 # LICENSE_PATH +=3D "${COREBASE}/custom-licenses"

 # Set if you want the license.manifest copied to the image
-#COPY_LIC_MANIFEST =3D "1"
+COPY_LIC_MANIFEST =3D "1"

 # If you want the pkg licenses copied over as well you must set
 # both COPY_LIC_MANIFEST and COPY_LIC_DIRS
-#COPY_LIC_DIRS =3D "1"
+COPY_LIC_DIRS =3D "1"

 ## SPDX Format info
 SPDX_VERSION =3D "SPDX-1.1"
@@ -144,7 +144,7 @@ DATA_LICENSE =3D "CC0-1.0"
 #   information.
 #

-FOSS_COPYRIGHT =3D "true"
+FOSS_COPYRIGHT =3D "false"

 # A option defined as[FOSS_RECURSIVE_UNPACK] in ./meta/conf/licenses.conf.=
 is
 # used to control if FOSSology server need recursively unpack tar.gz file =
which
@@ -158,14 +158,16 @@ FOSS_COPYRIGHT =3D "true"
 #    FOSSology server recursively unpack components.
 #

-FOSS_RECURSIVE_UNPACK =3D "false"
+FOSS_RECURSIVE_UNPACK =3D "true"
$
--------------------------------------------=20
$ cat bluez5.spdx
SPDXVersion: SPDX-1.1
DataLicense: CC0-1.0
DocumentComment: <text>SPDX for bluez5 version 5.21</text>

## Creation Information
Creator: fossology-spdx
Created: 2014-07-25T18:19:53
CreatorComment: <text>UNO</text>

## Package Information
PackageName: bluez5
PackageVersion: 5.21
PackageDownloadLocation: NOASSERTION
PackageSummary: <text></text>
PackageFileName: bluez5.tar.gz
PackageSupplier: Person:NOASSERTION
PackageOriginator: Person:NOASSERTION
PackageChecksum: SHA1: b9667bcd50f9531dde17344cde1cc2afd10e3067
PackageVerificationCode: 8967d6f42622f39d1833e758b67dc4378d3d6922
PackageDescription: <text>bluez5 version 5.21</text>

PackageCopyrightText: <text>NOASSERTION</text>

PackageLicenseDeclared: NOASSERTION
PackageLicenseConcluded: NOASSERTION
PackageLicenseInfoFromFiles: NOASSERTION

## File Information

FileName: tools/bccmd.1

FileName: android/pts-avrcp.txt

FileName: doc/heartrate-api.txt

FileName: profiles/proximity/proximity.conf

FileName: profiles/input/hog.c
......


