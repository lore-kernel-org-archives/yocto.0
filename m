Return-Path: <Muhammad_Hamza@mentor.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FF9DFA3740
	for <webhook@archiver.kernel.org>; Fri, 28 Oct 2022 12:00:36 +0000 (UTC)
Received: from esa2.mentor.iphmx.com (esa2.mentor.iphmx.com [68.232.141.98])
 by mx.groups.io with SMTP id smtpd.web11.5358.1666958428811939961
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Oct 2022 05:00:29 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: mentor.com, ip: 68.232.141.98, mailfrom: muhammad_hamza@mentor.com)
X-IronPort-AV: E=Sophos;i="5.95,221,1661846400"; 
   d="scan'208";a="85739906"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa2.mentor.iphmx.com with ESMTP; 28 Oct 2022 04:00:27 -0800
IronPort-SDR: 2Z7XQdVgEVwn5F/hTtmM5AlHMG82bvY42zb3bmxDHBn7G6/KgJwqAo79Hjs38JVQLVWO8+37QJ
 6mjDLc2PHVfwYoLsApWimMkPxTB3i4Eyyq17krEB0PM6I/T+j7v0uH9Q9uZS1VAlrzGbqM6mNK
 Jk7z1xr/fNpSe1ARDJG2HcjxY6Xq7xPoU3HTd0GtxcLW8ErXGFLc454qDtbdaseZX1l+Oyieou
 8HNaU7Xbi25/k2EmR9J0oGTktSzR7ObfuHou2AOilH62ikv2wGpxF+EWy/1uyXwx8JqKVwMmIw
 ezA=
From: "Hamza, Muhammad" <Muhammad_Hamza@mentor.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "jpewhacker@gmail.com" <jpewhacker@gmail.com>
Subject: RE: [meta-mingw][kirkstone][PATCH] toolchain-scripts-mingw32.bbclass:
 Remove trailing slash in SDKROOT
Thread-Topic: [meta-mingw][kirkstone][PATCH]
 toolchain-scripts-mingw32.bbclass: Remove trailing slash in SDKROOT
Thread-Index: AQHY5243gVRYIIZn5UOFtMQJE89wbq4jusOw
Date: Fri, 28 Oct 2022 12:00:23 +0000
Message-ID: <426f6c96ddb74076a281a02249c6e125@mentor.com>
References: <20221024060230.946830-1-muhammad_hamza@mentor.com>
In-Reply-To: <20221024060230.946830-1-muhammad_hamza@mentor.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.202.0.90]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Oct 2022 12:00:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58430

Hi,
Any update on this?

-----Original Message-----
From: Hamza, Muhammad <Muhammad_Hamza@mentor.com>=20
Sent: Monday, October 24, 2022 11:03 AM
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com; Hamza, Muhammad <Muhammad_Hamza@mentor.com>
Subject: [meta-mingw][kirkstone][PATCH] toolchain-scripts-mingw32.bbclass: =
Remove trailing slash in SDKROOT

Modify toolchain-scripts-mingw32.bbclass to add a check in environment-setu=
p script which removes trailing slash in path of SDKROOT.
This is needed to avoid multiple adjacent slashes in paths which are produc=
ed by appending to SDKROOT.
In reference to https://learn.microsoft.com/en-us/windows/win32/fileio/nami=
ng-a-file?redirectedfrom=3DMSDN
naming convention used for paths and disk drives in windows should use a si=
ngle backslash. Even though in some cases windows ignores double slashes in=
 paths and it might work but it isn't documented as a right naming conventi=
on and does fail in some cases eg. dir command cannot interpret double slas=
hes and fails.

For example if my SDK is located in D: drive, the environment setup scripts=
 sets "SDKROOT=3DD:\" and hence SDKTARGETSYSROOT gets set as "SDKTARGETSYSR=
OOT=3DD:\\sysroots\armv8a-oe-linux"
The introduced check removes additional slash in SDKROOT to set it as "SDKR=
OOT=3DD:" so all other variables using SDKROOT get set without additional s=
lash.

Signed-off-by: Muhammad Hamza <muhammad_hamza@mentor.com>
---
 classes/toolchain-scripts-mingw32.bbclass | 1 +
 1 file changed, 1 insertion(+)

diff --git a/classes/toolchain-scripts-mingw32.bbclass b/classes/toolchain-=
scripts-mingw32.bbclass
index d96cb40..8cb426a 100644
--- a/classes/toolchain-scripts-mingw32.bbclass
+++ b/classes/toolchain-scripts-mingw32.bbclass
@@ -12,6 +12,7 @@ toolchain_create_sdk_env_script:sdkmingw32 () {
 	touch $script
 	# Be sure to use the 'short' path, so we can have deeper directories.
 	echo 'set SDKROOT=3D%~sdp0%' >> $script
+	echo 'IF %SDKROOT:~-1%=3D=3D\ set SDKROOT=3D%SDKROOT:~0,-1%' >> $script
=20
 	# Convert to mingw32 subpaths
 	sysroot=3D'%SDKROOT%'${sysroot##${SDKPATH}}
--
2.25.1


