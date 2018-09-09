Return-Path: <chanudete@ainfosec.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22A60E006F1; Sun,  9 Sep 2018 12:40:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 901 seconds by postgrey-1.32 at yocto-www;
	Sun, 09 Sep 2018 12:40:14 PDT
Received: from mail.ainfosec.com (mail.ainfosec.com [209.217.208.252])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0A59E00460
	for <yocto@yoctoproject.org>; Sun,  9 Sep 2018 12:40:14 -0700 (PDT)
Received: from AISEX01.ainfosec.com (10.201.1.85) by AISEX01.ainfosec.com
	(10.201.1.85) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.1.1466.3;
	Sun, 9 Sep 2018 15:25:12 -0400
Received: from AISEX01.ainfosec.com ([fe80::5db4:1a17:953a:2009]) by
	AISEX01.ainfosec.com ([fe80::5db4:1a17:953a:2009%13]) with mapi id
	15.01.1466.003; Sun, 9 Sep 2018 15:25:12 -0400
From: Eric Chanudet <chanudete@ainfosec.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-selinux][PATCH] policycorutils: package files in
	base_sbindir.
Thread-Index: AQHUSHLU146KavHtaEKVPLEFLR+9oA==
Date: Sun, 9 Sep 2018 19:25:12 +0000
Message-ID: <20180909192432.29868-1-chanudete@ainfosec.com>
Accept-Language: en-US, en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.201.1.87]
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] policycorutils: package files in base_sbindir.
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
X-List-Received-Date: Sun, 09 Sep 2018 19:40:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

SBINDIR was changed to ${base_sbindir} in commit:
8cc9c17 policycoreutils: fix installed-but-not-shipped on updated recipes

FILES_${PN}-* must now capture files installed in ${base_sbindir}
accordingly.

Signed-off-by: Eric Chanudet <chanudete@ainfosec.com>
---
 recipes-security/selinux/policycoreutils.inc | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-securit=
y/selinux/policycoreutils.inc
index 98000de..85ff164 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -79,26 +79,25 @@ PACKAGES =3D+ "\
 	${PN}-setsebool \
 "
 FILES_${PN}-fixfiles +=3D "${base_sbindir}/fixfiles"
-FILES_${PN}-genhomedircon +=3D "${sbindir}/genhomedircon"
+FILES_${PN}-genhomedircon +=3D "${base_sbindir}/genhomedircon"
 FILES_${PN}-loadpolicy +=3D "\
 	${base_sbindir}/load_policy \
-	${sbindir}/load_policy \
 "
 FILES_${PN}-newrole +=3D "\
 	${bindir}/newrole \
 	${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/newro=
le', '', d)} \
 "
 FILES_${PN}-runinit +=3D "\
-	${sbindir}/run_init \
-	${sbindir}/open_init_pty \
+	${base_sbindir}/run_init \
+	${base_sbindir}/open_init_pty \
 	${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/run_i=
nit', '', d)} \
 "
 FILES_${PN}-dbg +=3D "${prefix}/libexec/selinux/hll/.debug"
 FILES_${PN}-secon +=3D "${bindir}/secon"
-FILES_${PN}-semodule +=3D "${sbindir}/semodule"
+FILES_${PN}-semodule +=3D "${base_sbindir}/semodule"
 FILES_${PN}-hll +=3D "${prefix}/libexec/selinux/hll/*"
 FILES_${PN}-sestatus +=3D "\
-	${sbindir}/sestatus \
+	${base_sbindir}/sestatus \
 	${sysconfdir}/sestatus.conf \
 "
 FILES_${PN}-setfiles +=3D "\
@@ -106,7 +105,7 @@ FILES_${PN}-setfiles +=3D "\
 	${base_sbindir}/setfiles \
 "
 FILES_${PN}-setsebool +=3D "\
-	${sbindir}/setsebool \
+	${base_sbindir}/setsebool \
 	${datadir}/bash-completion/completions/setsebool \
 "
=20
--=20
2.18.0

