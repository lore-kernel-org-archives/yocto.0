Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92D7CE00769; Tue, 17 Feb 2015 05:18:36 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with SMTP id AFD16E0043B
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 05:18:30 -0800 (PST)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0224.002; Tue, 17 Feb 2015 14:17:08 +0100
From: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
To: Armin Kuster <akuster808@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-cgl][PATCH] heartbeat: Fix incorrect licence logic
Thread-Index: AQHQSkB/gyQCdJHRuku5iHBJXDYyhZz003eA
Date: Tue, 17 Feb 2015 13:17:08 +0000
Message-ID: <DDB0C57E45663A458C5CACB7B5688BC21D7BA46D@SESTOEX04.enea.se>
References: <1424129365-4365-1-git-send-email-akuster808@gmail.com>
In-Reply-To: <1424129365-4365-1-git-send-email-akuster808@gmail.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.234]
MIME-Version: 1.0
Subject: Re: [meta-cgl][PATCH] heartbeat: Fix incorrect licence logic
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
X-List-Received-Date: Tue, 17 Feb 2015 13:18:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Patch accepted and merged.

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Armin Kuster
Sent: Tuesday, February 17, 2015 1:29 AM
To: yocto@yoctoproject.org
Subject: [yocto] [meta-cgl][PATCH] heartbeat: Fix incorrect licence logic

From: Armin Kuster <akuster@mvista.com>

It should be and "&" (and) not "|" (or).

thanks Chris.

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb b/met=
a-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
index 7ec7c5d..369bd23 100644
--- a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
@@ -22,7 +22,7 @@ It implements the following kinds of heartbeats: \  "
 HOMEPAGE =3D "http://linux-ha.org/"
 SECTION =3D "System Environment/Daemons"
-LICENSE =3D "GPLv2 | LGPLv2+"
+LICENSE =3D "GPLv2 & LGPLv2+"
 LIC_FILES_CHKSUM =3D " \
     file://doc/COPYING;md5=3Dc93c0550bd3173f4504b2cbd8991e50b \
     file://doc/COPYING.LGPL;md5=3Dd8045f3b8f929c1cb29a1e3fd737b499 \
--
1.9.1

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

