Return-Path: <Gianpaolo_Macario@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E52BFE014AE
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 00:14:40 -0700 (PDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1UQBiR-0002hN-Fp from Gianpaolo_Macario@mentor.com ;
	Thu, 11 Apr 2013 00:14:39 -0700
Received: from SVR-IES-FEM-02.mgc.mentorg.com ([137.202.0.106]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Thu, 11 Apr 2013 00:14:39 -0700
Received: from EU-MBX-02.mgc.mentorg.com ([169.254.3.230]) by
	SVR-IES-FEM-02.mgc.mentorg.com ([137.202.0.106]) with mapi id
	14.01.0289.001; Thu, 11 Apr 2013 08:14:38 +0100
From: "Macario, Gianpaolo" <Gianpaolo_Macario@mentor.com>
To: "florin.sarbu@windriver.com" <florin.sarbu@windriver.com>
Thread-Topic: [meta-ivi][PATCH] README.md: Fix poky SHA
Thread-Index: Ac42hDBeAzGYoaflQSuzkPQ/pEr1kg==
Date: Thu, 11 Apr 2013 07:14:38 +0000
Message-ID: <0CCD6BBA210ECA418BCD82271FCFD94C5464DD63@EU-MBX-02.mgc.mentorg.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.202.0.76]
MIME-Version: 1.0
X-OriginalArrivalTime: 11 Apr 2013 07:14:39.0693 (UTC)
	FILETIME=[3B3057D0:01CE3684]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-ivi][PATCH] README.md: Fix poky SHA
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
X-List-Received-Date: Thu, 11 Apr 2013 07:14:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Specify a newer SHA for poky since the previous one now causes the build me=
ta-ivi build to fail.
See https://lists.yoctoproject.org/pipermail/yocto/2013-April/015273.html=20
=20
Signed-off-by: Gianpaolo Macario <gianpaolo_macario@mentor.com>
---
 README.md |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
=20
diff --git a/README.md b/README.md
index b2c84f9..f17a606 100644
--- a/README.md
+++ b/README.md
@@ -16,7 +16,7 @@ Layer Dependencies
=20
 URI: git://git.yoctoproject.org/poky
 branch: master
-revision: d823759b4594143d522eae0b2a2498436a6dcb1e
+revision: a6502081b7c7acc49187aa7c68ad19e0751ee030
=20
 Using the above git sha's and master meta-ivi, bitbaking foton-image is
 known to work (the foton-image build should be GENIVI 4.0 compliant).
--
1.7.9.5


