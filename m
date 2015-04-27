Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F4E0E009CA; Mon, 27 Apr 2015 03:54:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 99DBFE009C8
	for <yocto@yoctoproject.org>; Mon, 27 Apr 2015 03:54:09 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0224.002; Mon, 27 Apr 2015 12:54:08 +0200
From: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
To: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-cgl][PATCH 1/9] packagegroup-cgl-*: fix
	LIC_FILES_CHKSUM variables
Thread-Index: AQHQfs1lce0z5Xw7wUu62h/j3te4EJ1gsihg
Date: Mon, 27 Apr 2015 10:54:08 +0000
Message-ID: <DDB0C57E45663A458C5CACB7B5688BC21D7DE658@SESTOEX04.enea.se>
References: <1429907338-13466-1-git-send-email-dmitry_eremin@mentor.com>
In-Reply-To: <1429907338-13466-1-git-send-email-dmitry_eremin@mentor.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.175]
MIME-Version: 1.0
Subject: Re: [meta-cgl][PATCH 1/9] packagegroup-cgl-*: fix	LIC_FILES_CHKSUM variables
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
X-List-Received-Date: Mon, 27 Apr 2015 10:54:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Dmitry for the patch series they were applied accordingly.

AlexV.

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Dmitry Eremin-Solenikov
Sent: Friday, April 24, 2015 11:29 PM
To: yocto@yoctoproject.org
Subject: [yocto] [meta-cgl][PATCH 1/9] packagegroup-cgl-*: fix LIC_FILES_CH=
KSUM variables

LIC_FILES_CHKSUM variables in all packagegroup files reference wrong locati=
on of the COPYING.MIT file resulting in warnings during build. Fix them by =
pointing to the main COPYING.MIT file in OE-Core.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
---
 meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb | 2 +-
 meta-cgl-common/packagegroups/packagegroup-cgl-kernel.bb       | 2 +-
 meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb   | 2 +-
 meta-cgl-common/packagegroups/packagegroup-cgl-swdevtools.bb   | 2 +-
 meta-cgl-common/packagegroups/packagegroup-cgl.bb              | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb=
 b/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
index 532712e..f823ece 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
@@ -2,7 +2,7 @@ SUMMARY =3D "Application packages required to satisfy the C=
arrier Grade Linux (CGL  DESCRIPTION =3D "This package group includes the a=
pplication with which the user interacts \
                when using a Linux operation system."
 LICENSE =3D "MIT"
-LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta-cgl/COPYING.MIT;md5=3D3da9cf=
bcb788c80a0384361b4de20420"
+LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb7=
88c80a0384361b4de20420"
=20
 inherit packagegroup
 inherit pkgconfig
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-kernel.bb b/met=
a-cgl-common/packagegroups/packagegroup-cgl-kernel.bb
index 2925535..bff7c4c 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-kernel.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-kernel.bb
@@ -3,7 +3,7 @@ DESCRIPTION =3D "This package group contains hardened devic=
e drivers, HW configura
                management, standard, high availability, service and co-pro=
cessor interfaces."
=20
 LICENSE =3D "MIT"
-LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta-cgl/COPYING.MIT;md5=3D3da9cf=
bcb788c80a0384361b4de20420"
+LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb7=
88c80a0384361b4de20420"
=20
 inherit packagegroup
=20
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb b=
/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
index d0a5213..effdb81 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
@@ -2,7 +2,7 @@ SUMMARY =3D "Middleware packages required to satisfy the Ca=
rrier Grade Linux (CGL)  DESCRIPTION =3D "This package group contains high =
availability application and platform \
                interfaces, databases, application servers, communication p=
rotocols etc."
 LICENSE =3D "MIT"
-LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta-cgl/COPYING.MIT;md5=3D3da9cf=
bcb788c80a0384361b4de20420"
+LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb7=
88c80a0384361b4de20420"
=20
 inherit packagegroup
=20
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-swdevtools.bb b=
/meta-cgl-common/packagegroups/packagegroup-cgl-swdevtools.bb
index 591f120..84e747f 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-swdevtools.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-swdevtools.bb
@@ -2,7 +2,7 @@ SUMMARY =3D "Software development tools packages required t=
o satisfy the Carrier G  DESCRIPTION =3D "This package group contains progr=
ams or applications used to create, debug, maintain, \
                or otherwise support other programs and applications."
 LICENSE =3D "MIT"
-LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta-cgl/COPYING.MIT;md5=3D3da9cf=
bcb788c80a0384361b4de20420"
+LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb7=
88c80a0384361b4de20420"
=20
 inherit packagegroup
=20
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl.bb b/meta-cgl-c=
ommon/packagegroups/packagegroup-cgl.bb
index 3a64bbf..2c999e0 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl.bb
@@ -2,7 +2,7 @@ SUMMARY =3D "Packages required to satisfy the Carrier Grade=
 Linux (CGL) specificat  DESCRIPTION =3D "This package group is the one tha=
t gathers all the available \
                package groups."
 LICENSE =3D "MIT"
-LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta-cgl/COPYING.MIT;md5=3D3da9cf=
bcb788c80a0384361b4de20420"
+LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb7=
88c80a0384361b4de20421"
=20
 inherit packagegroup
=20
--
2.1.4

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

