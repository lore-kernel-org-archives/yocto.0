Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA891E00A8C; Wed,  2 Sep 2015 07:02:54 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 77CC5E00CEE
	for <yocto@yoctoproject.org>; Wed,  2 Sep 2015 07:02:48 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0224.002; Wed, 2 Sep 2015 16:02:45 +0200
From: Adrian Dudau <Adrian.Dudau@enea.com>
To: Iulian Popa <Iulian.Popa@enea.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [PATCH] packagegroup: Replace the syslog-ng with rsyslog
Thread-Index: AQHQ5Xkxp4fOVE4CrkOONMFB09zosJ4pMq9r
Date: Wed, 2 Sep 2015 14:02:45 +0000
Message-ID: <C35DE6E3665B10419D70F74D9884ABD4049EED65@SESTOEX04.enea.se>
References: <1441196165-13966-1-git-send-email-iulian.popa@enea.com>
In-Reply-To: <1441196165-13966-1-git-send-email-iulian.popa@enea.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.1.190]
MIME-Version: 1.0
Cc: Iulian Popa <Iulian.Popa@enea.com>
Subject: Re: [PATCH] packagegroup: Replace the syslog-ng with rsyslog
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
X-List-Received-Date: Wed, 02 Sep 2015 14:02:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I agree with using rsyslog instead. It's a bit weird that we have both incl=
uded in the image already. So I approve the change.=0A=
=0A=
Iulian, next time please include the [meta-cgl] prefix in the email subject=
.=0A=
=0A=
--Adrian=0A=
=0A=
________________________________________=0A=
From: Iulian Popa [iulian.popa@enea.com]=0A=
Sent: Wednesday, September 02, 2015 2:16 PM=0A=
To: yocto@yoctoproject.org=0A=
Cc: Joe_MacDonald@mentor.com; Adrian Dudau; alexandru.vaduva@linux.com; Iul=
ian Popa=0A=
Subject: [PATCH] packagegroup: Replace the syslog-ng with rsyslog=0A=
=0A=
Looks like the 'rsyslog' is better maintained and more widely known.=0A=
=0A=
Signed-off-by: Iulian Popa <iulian.popa@enea.com>=0A=
---=0A=
 meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb | 1 -=0A=
 1 file changed, 1 deletion(-)=0A=
=0A=
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb=
 b/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb=0A=
index 48dc182..2af2461 100644=0A=
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb=0A=
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb=0A=
@@ -40,7 +40,6 @@ RDEPENDS_packagegroup-cgl-applications =3D " \=0A=
     quota \=0A=
     smartmontools \=0A=
     monit \=0A=
-    syslog-ng \=0A=
     ocfs2-tools \=0A=
     logcheck \=0A=
     samhain-client \=0A=
--=0A=
1.9.1=0A=
=0A=

