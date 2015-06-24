Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00F16E00A21; Wed, 24 Jun 2015 10:51:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,
	MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	*  0.0 MSGID_FROM_MTA_HEADER Message-Id was added by a relay
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 7DC6DE009D2
	for <yocto@yoctoproject.org>; Wed, 24 Jun 2015 10:51:02 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 24 Jun 2015 19:50:58 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id D698228BA1E;
	Wed, 24 Jun 2015 19:50:58 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>, Adrian Dudau <Adrian.Dudau@enea.com>,
	"Alexandru Vaduva" <Alexandru.Vaduva@enea.com>
Date: Wed, 24 Jun 2015 19:50:56 +0200
Message-ID: <1435138577-10400-2-git-send-email-siva.borra@enea.com>
X-Mailer: git-send-email 1.9.1
Received: from zsibo-HP-EliteBook-2170p (172.16.141.151) by mx-3.enea.com
	(172.21.1.205) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 24 Jun 2015 11:36:21 +0200
Received: by zsibo-HP-EliteBook-2170p (Postfix, from userid 1000)	id
	6BE53442480; Wed, 24 Jun 2015 11:36:21 +0200 (CEST)
Thread-Topic: [PATCH 1/1] Add upstream status to patch.
Thread-Index: AQHQrmE7g70RxqitHkOwmA7listV3w==
References: <1435138577-10400-1-git-send-email-siva.borra@enea.com>
In-Reply-To: <1435138577-10400-1-git-send-email-siva.borra@enea.com>
Received-SPF: None (SESTOEX08.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
received-spf: None (SESTOEX08.enea.se: siva.borra@enea.com does not
	designate permitted sender hosts)
MIME-Version: 1.0
Cc: Siva Borra <Siva.Borra@enea.com>, EneaLinux <linux@list.enea.se>,
	"ISSUES @ ENEA" <issues@enea.com>
Subject: [PATCH 1/1] Add upstream status to patch.
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
X-List-Received-Date: Wed, 24 Jun 2015 17:51:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

From: Siva Borra <siva.borra@enea.com>

Add description and upstream status
information to the patch file.


Signed-off-by: Siva Borra <siva.borra@enea.com>
---
 .../recipes-cgl/makedumpfile/files/alias-powerpc-powerpc32.patch     | 5 +=
++++
 1 file changed, 5 insertions(+)

diff --git a/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-p=
owerpc32.patch b/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-power=
pc-powerpc32.patch
index 70ad663..e918ce8 100644
--- a/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-powerpc3=
2.patch
+++ b/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-powerpc3=
2.patch
@@ -1,3 +1,8 @@
+Create Alias for target for powerpc as powerpc32
+
+Signed-off-by: Siva Borra <siva.borra@enea.com>
+Upstream-status: Pending
+
 diff -rupN makedumpfile-1.5.8/Makefile makedumpfile-1.5.8/Makefile
 --- makedumpfile-1.5.8/Makefile	2015-03-24 02:58:33.000000000 +0100
 +++ makedumpfile-1.5.8/Makefile	2015-06-23 11:08:30.595655336 +0200
--=20
1.9.1


