Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.762.1578603833333595694
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 13:03:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intusurgops.onmicrosoft.com header.s=selector2-intusurgops-onmicrosoft-com header.b=4pAgr8qd;
 spf=permerror, err=parse error for token &{10 18 spf-001e7101.pphosted.com}: limit exceeded (domain: intusurg.com, ip: 140.211.169.56, mailfrom: daniel.wang@intusurg.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1091EE0142F; Thu,  9 Jan 2020 13:03:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_SPF_HELO,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.76.105 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (mail-eopbgr760105.outbound.protection.outlook.com [40.107.76.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E9DBE00BB3
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2020 13:03:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gKcY9135/DNE6fb0MYLadC3+yZs/3e9epUnlOEWXwu00im0fgHzPuEoAfTNYlP1P3Oa0p/MVTnA3Kdqx7M9jjEjGNMkH64hq6bz8ua5J3o0VaOmde9sGKHszuI3e2IOmyrGJD3XkUGg/tfxPbO/4h7ro29I/Q2QMIgO9cMMgbY7y2l7fNlupwvqYsQfTcD6mW+6sNCwb583XMGs6IrU8/4yKa3pNJudLkRXwxmNnF86N4Rr75firZGv3vR3tLuKTdVz302WV3GoreEIChWvolGeT1L77sTL1YoyoaLapUg6t6IPfnPdtRxPxHJns9GbwnB4mVwAGlh60x/j4hzm9yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eJ0EnRXVt3YB17a7oQK9Z7QkGx96OSZZfxoz3e5wE/4=;
 b=oBuClGF7h0eOZ23f4Y7gGke0/nZpuk/FLN/CjPlXqYbCgfR42RwYgacdg8Ermkqhb2MxKBA7+uKfJazrjXPWKYZGVOirGI+prLcW+ASQgjFeazYbDwaaoRMss1VhhQOANWV7tP+5AqZHcPyVPLW+DMpabV4ABhaYJ/FtdhyCH6M1DTA+Kw7Q/jmTvrNaRJYr9CBfZFFB8qvDj6kaLoOz8RUK+QG5CxHW3TqE5gA1h8GoEfVItT5OkCSGQ39BxHQBo1Di5Z7mP3YEhmiZKWrOrNrBZXggeO0aSNn6W9Wc2O5aCRU97iFx1asILy6QD0qcwfYu+0EuGSICXwdDXKfE8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intusurg.com; dmarc=pass action=none header.from=intusurg.com;
 dkim=pass header.d=intusurg.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=IntusurgOps.onmicrosoft.com; s=selector2-IntusurgOps-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eJ0EnRXVt3YB17a7oQK9Z7QkGx96OSZZfxoz3e5wE/4=;
 b=4pAgr8qdJhBCwrNuPE7yUtEOnMRSUKKQUE9Rhl1MPcBUAVKwd921cOcdUxZ8Y2utF4SlHyZWpFWfEdznw7+IyzJYIxWf2UE9GMiUMvqsJqz8G9uERolxP7Ixih2+9dAJd6CIGUPdmCfDb2MlhfkncFJRgtiCM8pMeZJSkm6pPic=
Received: from CY4PR01MB2328.prod.exchangelabs.com (10.169.252.16) by
 CY4PR01MB2520.prod.exchangelabs.com (10.173.37.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.13; Thu, 9 Jan 2020 21:03:48 +0000
Received: from CY4PR01MB2328.prod.exchangelabs.com
 ([fe80::e08e:9a14:332e:580b]) by CY4PR01MB2328.prod.exchangelabs.com
 ([fe80::e08e:9a14:332e:580b%8]) with mapi id 15.20.2623.010; Thu, 9 Jan 2020
 21:03:48 +0000
From: "Daniel" <daniel.wang@intusurg.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: [meta-security][PATCH 2/3] update tpm2-abrmd tpm2-tool tpm2-tss tpm2-tss-engine
Thread-Topic: [meta-security][PATCH 2/3] update tpm2-abrmd tpm2-tool tpm2-tss
 tpm2-tss-engine
Thread-Index: AQHVxzBER1M6B4wwWUGhaXZGl4IliQ==
Date: Thu, 9 Jan 2020 21:03:47 +0000
Message-ID: 
 <CY4PR01MB23281CF9E020B07376273FF29A390@CY4PR01MB2328.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Daniel.Wang@intusurg.com; 
x-originating-ip: [204.27.197.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9944b1aa-bc3a-4d91-4c1b-08d795476be9
x-ms-traffictypediagnostic: CY4PR01MB2520:
x-microsoft-antispam-prvs: 
 <CY4PR01MB252085C85E80D2C5954B2C239A390@CY4PR01MB2520.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:972;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(396003)(39860400002)(366004)(346002)(376002)(136003)(189003)(199004)(55016002)(15650500001)(316002)(9686003)(7696005)(19627405001)(186003)(71200400001)(6506007)(33656002)(81166006)(2906002)(8676002)(81156014)(6916009)(76116006)(26005)(8936002)(5660300002)(66446008)(64756008)(30864003)(52536014)(66946007)(86362001)(66476007)(66556008)(478600001);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR01MB2520;H:CY4PR01MB2328.prod.exchangelabs.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: intusurg.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 a0Ngnr/lGPOPQ3DcLzzwaQD6IPg6JgcnMk4LskwK5CoItTLc4M1VcY3zJBCckO0QR6aB58lIGtxHgJUo2hlGGyLeqGtr8jNrjdPthEepdcQUScVaIhjAdRH7iQvbwAn11YYyrROrLRJKN+BhHZ+/+ZjBZv7HJ1cj+fcr8HZpKEs6qy5c9i7rMyeSKglTlvLn5UjYMoJrTgvPH1gIVFCi6Tyhj8otzxD4hC2r5/hAmd/oXdzU+xamMo0GxceYw7OU+4uqMwSFTSWbjI7vTOyQX4WmoSeIgdnfJ43Tn4CGbFCgirXrkhkq627qO2Fb3LIvhtyJHE3VnNRva8UUB36LZ01tfxaXvrCIfrYM7s1Z5WtIslOebYdVbqAbAXlcNs43kRF+5Veb/uVYotjmepRVnz5eTLQk0aJNgCF1DGQu/Eyz4Skg/lyCh9miHb1eSeL3nus+65q6ZAluy/9kkAUV93bfg6VuL7NQkW3QBbrjr4mrpPTbcZ6PWObDoPzHtTakMywvfCAP2JnI6FnQ/aNcSQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: intusurg.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9944b1aa-bc3a-4d91-4c1b-08d795476be9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 21:03:48.0063
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 039caf84-d3e9-4cb9-8b4a-2c2e17a80c19
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1CFlkgeHyQnrzukjdAlzTq4VSvDfIcWqRuUCP82d9QbHAdAwPpXC8aayP+pCv10yWfeeAc9y4Dekp3M1QDt4qKu70J2RIy4PRis0F6m1zYE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR01MB2520
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR01MB23281CF9E020B07376273FF29A390CY4PR01MB2328prod_"

--_000_CY4PR01MB23281CF9E020B07376273FF29A390CY4PR01MB2328prod_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

* tpm2-abrmd update to 2.2.0
* tpm2-tool update to 3.2.0
* tpm2-tss update to 2.3.1
* tpm2-tss-engine update to 1.0.1

The update of tpm2-tss-engine fix Compilation with optimisation enabled bre=
aks creation of ECDSA keys (https://github.com/tpm2-software/tpm2-tss-engin=
e/issues/42)

Signed-off-by: Daniel Wang <daniel.wang@intusurg.com>
---
 .../recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb    | 55 ---------------
 .../recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb    | 55 +++++++++++++++
 .../recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb    | 15 ----
 .../recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb    | 15 ++++
 .../tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb       | 23 -------
 .../tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb       | 23 +++++++
 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb   | 79 ------------------=
----
 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb   | 79 ++++++++++++++++++=
++++
 8 files changed, 172 insertions(+), 172 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb
 delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb
 delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_0=
.9.9.bb
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1=
.0.1.bb
 delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb

diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb b/meta-tp=
m/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb
deleted file mode 100644
index a4c6682..0000000
--- a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb
+++ /dev/null
@@ -1,55 +0,0 @@
-SUMMARY =3D "TPM2 Access Broker & Resource Manager"
-DESCRIPTION =3D "This is a system daemon implementing the TPM2 access \
-broker (TAB) & Resource Manager (RM) spec from the TCG. The daemon (tpm2-a=
brmd) \
-is implemented using Glib and the GObject system. In this documentation an=
d \
-in the code we use `tpm2-abrmd` and `tabrmd` interchangeably. \
-"
-SECTION =3D "security/tpm"
-
-LICENSE =3D "BSD-2-Clause"
-LIC_FILES_CHKSUM =3D "file://${S}/LICENSE;md5=3D500b2e742befc3da00684d8a1d=
5fd9da"
-
-DEPENDS =3D "autoconf-archive dbus glib-2.0 tpm2-tss glib-2.0-native \
-            libtss2 libtss2-mu libtss2-tcti-device libtss2-tcti-mssim"
-
-
-SRC_URI =3D "\
-    git://github.com/tpm2-software/tpm2-abrmd.git \
-    file://tpm2-abrmd-init.sh \
-    file://tpm2-abrmd.default \
-"
-
-SRCREV =3D "06d9d433ba27159687255406baa37940db15465b"
-
-S =3D "${WORKDIR}/git"
-
-inherit autotools pkgconfig systemd update-rc.d useradd
-
-SYSTEMD_PACKAGES +=3D "${PN}"
-SYSTEMD_SERVICE_${PN} =3D "tpm2-abrmd.service"
-SYSTEMD_AUTO_ENABLE_${PN} =3D "disable"
-
-INITSCRIPT_NAME =3D "${PN}"
-INITSCRIPT_PARAMS =3D "start 99 2 3 4 5 . stop 19 0 1 6 ."
-
-USERADD_PACKAGES =3D "${PN}"
-GROUPADD_PARAM_${PN} =3D "tss"
-USERADD_PARAM_${PN} =3D "--system -M -d /var/lib/tpm -s /bin/false -g tss =
tss"
-
-PACKAGECONFIG ?=3D"${@bb.utils.contains('DISTRO_FEATURES','systemd','syste=
md', '', d)}"
-PACKAGECONFIG[systemd] =3D "--with-systemdsystemunitdir=3D${systemd_system=
_unitdir}, --with-systemdsystemunitdir=3Dno"
-
-do_install_append() {
-    install -d "${D}${sysconfdir}/init.d"
-    install -m 0755 "${WORKDIR}/tpm2-abrmd-init.sh" "${D}${sysconfdir}/ini=
t.d/tpm2-abrmd"
-
-    install -d "${D}${sysconfdir}/default"
-    install -m 0644 "${WORKDIR}/tpm2-abrmd.default" "${D}${sysconfdir}/def=
ault/tpm2-abrmd"
-}
-
-FILES_${PN} +=3D "${libdir}/systemd/system-preset \
- ${datadir}/dbus-1"
-
-RDEPENDS_${PN} +=3D "tpm2-tss"
-
-BBCLASSEXTEND =3D "native"
diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb b/meta-tp=
m/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb
new file mode 100644
index 0000000..2b2c831
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb
@@ -0,0 +1,55 @@
+SUMMARY =3D "TPM2 Access Broker & Resource Manager"
+DESCRIPTION =3D "This is a system daemon implementing the TPM2 access \
+broker (TAB) & Resource Manager (RM) spec from the TCG. The daemon (tpm2-a=
brmd) \
+is implemented using Glib and the GObject system. In this documentation an=
d \
+in the code we use `tpm2-abrmd` and `tabrmd` interchangeably. \
+"
+SECTION =3D "security/tpm"
+
+LICENSE =3D "BSD-2-Clause"
+LIC_FILES_CHKSUM =3D "file://${S}/LICENSE;md5=3D500b2e742befc3da00684d8a1d=
5fd9da"
+
+DEPENDS =3D "autoconf-archive dbus glib-2.0 tpm2-tss glib-2.0-native \
+            libtss2 libtss2-mu libtss2-tcti-device libtss2-tcti-mssim"
+
+
+SRC_URI =3D "\
+    git://github.com/tpm2-software/tpm2-abrmd.git \
+    file://tpm2-abrmd-init.sh \
+    file://tpm2-abrmd.default \
+"
+
+SRCREV =3D "ac2a5a4b5a4e548177ed7a5b74cea23e00fd30b4"
+
+S =3D "${WORKDIR}/git"
+
+inherit autotools pkgconfig systemd update-rc.d useradd
+
+SYSTEMD_PACKAGES +=3D "${PN}"
+SYSTEMD_SERVICE_${PN} =3D "tpm2-abrmd.service"
+SYSTEMD_AUTO_ENABLE_${PN} =3D "disable"
+
+INITSCRIPT_NAME =3D "${PN}"
+INITSCRIPT_PARAMS =3D "start 99 2 3 4 5 . stop 19 0 1 6 ."
+
+USERADD_PACKAGES =3D "${PN}"
+GROUPADD_PARAM_${PN} =3D "tss"
+USERADD_PARAM_${PN} =3D "--system -M -d /var/lib/tpm -s /bin/false -g tss =
tss"
+
+PACKAGECONFIG ?=3D"${@bb.utils.contains('DISTRO_FEATURES','systemd','syste=
md', '', d)}"
+PACKAGECONFIG[systemd] =3D "--with-systemdsystemunitdir=3D${systemd_system=
_unitdir}, --with-systemdsystemunitdir=3Dno"
+
+do_install_append() {
+    install -d "${D}${sysconfdir}/init.d"
+    install -m 0755 "${WORKDIR}/tpm2-abrmd-init.sh" "${D}${sysconfdir}/ini=
t.d/tpm2-abrmd"
+
+    install -d "${D}${sysconfdir}/default"
+    install -m 0644 "${WORKDIR}/tpm2-abrmd.default" "${D}${sysconfdir}/def=
ault/tpm2-abrmd"
+}
+
+FILES_${PN} +=3D "${libdir}/systemd/system-preset \
+ ${datadir}/dbus-1"
+
+RDEPENDS_${PN} +=3D "tpm2-tss"
+
+BBCLASSEXTEND =3D "native"
diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb b/meta-tp=
m/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb
deleted file mode 100644
index 1f1f5c6..0000000
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-SUMMARY =3D "Tools for TPM2."
-DESCRIPTION =3D "tpm2-tools"
-LICENSE =3D "BSD"
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D91b7c548d73ea16537799e8060cea81=
9"
-SECTION =3D "tpm"
-
-DEPENDS =3D "pkgconfig tpm2-tss openssl curl autoconf-archive"
-
-SRCREV =3D "74ba065e5914bc5d713ca3709d62a5751b097369"
-
-SRC_URI =3D "git://github.com/tpm2-software/tpm2-tools.git;branch=3D3.X"
-
-S =3D "${WORKDIR}/git"
-
-inherit autotools pkgconfig
diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb b/meta-tp=
m/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb
new file mode 100644
index 0000000..b6f1be0
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb
@@ -0,0 +1,15 @@
+SUMMARY =3D "Tools for TPM2."
+DESCRIPTION =3D "tpm2-tools"
+LICENSE =3D "BSD"
+LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D91b7c548d73ea16537799e8060cea81=
9"
+SECTION =3D "tpm"
+
+DEPENDS =3D "pkgconfig tpm2-tss openssl curl autoconf-archive"
+
+SRCREV =3D "a17daa948fc67685651bf3b7a589ed341080ddd3"
+
+SRC_URI =3D "git://github.com/tpm2-software/tpm2-tools.git;branch=3D3.X"
+
+S =3D "${WORKDIR}/git"
+
+inherit autotools pkgconfig
diff --git a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb=
 b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb
deleted file mode 100644
index 36530be..0000000
--- a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb
+++ /dev/null
@@ -1,23 +0,0 @@
-SUMMARY =3D "The tpm2-tss-engine project implements a cryptographic engine=
 for OpenSSL."
-DESCRIPTION =3D "The tpm2-tss-engine project implements a cryptographic en=
gine for OpenSSL for Trusted Platform Module (TPM 2.0) using the tpm2-tss s=
oftware stack that follows the Trusted Computing Groups (TCG) TPM Software =
Stack (TSS 2.0). It uses the Enhanced System API (ESAPI) interface of the T=
SS 2.0 for downwards communication. It supports RSA decryption and signatur=
es as well as ECDSA signatures."
-
-LICENSE =3D "BSD-2-Clause"
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D3fb0047fd29391478a71e8e6101c76e=
b"
-
-SECTION =3D "security/tpm"
-
-DEPENDS =3D "autoconf-archive-native bash-completion libtss2 libgcrypt ope=
nssl"
-
-SRCREV =3D "bef89ec79cbb4c99963b0e336d9184827c545782"
-SRC_URI =3D "git://github.com/tpm2-software/tpm2-tss-engine.git"
-
-inherit autotools-brokensep pkgconfig systemd
-
-S =3D "${WORKDIR}/git"
-
-PACKAGES +=3D "${PN}-engines ${PN}-engines-staticdev ${PN}-bash-completion=
"
-
-FILES_${PN}-dev =3D "${libdir}/engines-1.1/tpm2tss.so ${includedir}/*"
-FILES_${PN}-engines =3D "${libdir}/engines-1.1/lib*.so*"
-FILES_${PN}-engines-staticdev =3D "${libdir}/engines-1.1/libtpm2tss.a"
-FILES_${PN}-bash-completion +=3D "${datadir}/bash-completion/completions"
diff --git a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb=
 b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
new file mode 100644
index 0000000..3641b1b
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
@@ -0,0 +1,23 @@
+SUMMARY =3D "The tpm2-tss-engine project implements a cryptographic engine=
 for OpenSSL."
+DESCRIPTION =3D "The tpm2-tss-engine project implements a cryptographic en=
gine for OpenSSL for Trusted Platform Module (TPM 2.0) using the tpm2-tss s=
oftware stack that follows the Trusted Computing Groups (TCG) TPM Software =
Stack (TSS 2.0). It uses the Enhanced System API (ESAPI) interface of the T=
SS 2.0 for downwards communication. It supports RSA decryption and signatur=
es as well as ECDSA signatures."
+
+LICENSE =3D "BSD-2-Clause"
+LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D7b3ab643b9ce041de515d1ed092a36d=
4"
+
+SECTION =3D "security/tpm"
+
+DEPENDS =3D "autoconf-archive-native bash-completion libtss2 libgcrypt ope=
nssl"
+
+SRCREV =3D "fdc8f65dfc8bad8b5a3aed181fae338267308f70"
+SRC_URI =3D "git://github.com/tpm2-software/tpm2-tss-engine.git"
+
+inherit autotools-brokensep pkgconfig systemd
+
+S =3D "${WORKDIR}/git"
+
+PACKAGES +=3D "${PN}-engines ${PN}-engines-staticdev ${PN}-bash-completion=
"
+
+FILES_${PN}-dev =3D "${libdir}/engines-1.1/tpm2tss.so ${includedir}/*"
+FILES_${PN}-engines =3D "${libdir}/engines-1.1/lib*.so*"
+FILES_${PN}-engines-staticdev =3D "${libdir}/engines-1.1/libtpm2tss.a"
+FILES_${PN}-bash-completion +=3D "${datadir}/bash-completion/completions"
diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb b/meta-tpm/re=
cipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb
deleted file mode 100644
index 78bdeeb..0000000
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb
+++ /dev/null
@@ -1,79 +0,0 @@
-SUMMARY =3D "Software stack for TPM2."
-DESCRIPTION =3D "OSS implementation of the TCG TPM2 Software Stack (TSS2) =
"
-LICENSE =3D "BSD-2-Clause"
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D500b2e742befc3da00684d8a1d5fd9d=
a"
-SECTION =3D "tpm"
-
-DEPENDS =3D "autoconf-archive-native libgcrypt openssl"
-
-SRCREV =3D "eb69e13559f20a0b49002a685c6f4a39be9503e2"
-
-SRC_URI =3D "git://github.com/tpm2-software/tpm2-tss.git;branch=3D2.2.x"
-
-inherit autotools-brokensep pkgconfig systemd
-
-S =3D "${WORKDIR}/git"
-
-PACKAGECONFIG ??=3D ""
-PACKAGECONFIG[oxygen] =3D ",--disable-doxygen-doc, "
-
-do_configure_prepend () {
-       ./bootstrap
-}
-
-INHERIT +=3D "extrausers"
-EXTRA_USERS_PARAMS =3D "\
- useradd -p '' tss; \
- groupadd tss; \
- "
-
-PROVIDES =3D "${PACKAGES}"
-PACKAGES =3D " \
-    ${PN} \
-    ${PN}-dbg \
-    ${PN}-doc \
-    libtss2-mu \
-    libtss2-mu-dev \
-    libtss2-mu-staticdev \
-    libtss2-tcti-device \
-    libtss2-tcti-device-dev \
-    libtss2-tcti-device-staticdev \
-    libtss2-tcti-mssim \
-    libtss2-tcti-mssim-dev \
-    libtss2-tcti-mssim-staticdev \
-    libtss2 \
-    libtss2-dev \
-    libtss2-staticdev \
-"
-
-FILES_libtss2-tcti-device =3D "${libdir}/libtss2-tcti-device.so.*"
-FILES_libtss2-tcti-device-dev =3D " \
-    ${includedir}/tss2/tss2_tcti_device.h \
-    ${libdir}/pkgconfig/tss2-tcti-device.pc \
-    ${libdir}/libtss2-tcti-device.so"
-FILES_libtss2-tcti-device-staticdev =3D "${libdir}/libtss2-tcti-device.*a"
-
-FILES_libtss2-tcti-mssim =3D "${libdir}/libtss2-tcti-mssim.so.*"
-FILES_libtss2-tcti-mssim-dev =3D " \
-    ${includedir}/tss2/tss2_tcti_mssim.h \
-    ${libdir}/pkgconfig/tss2-tcti-mssim.pc \
-    ${libdir}/libtss2-tcti-mssim.so"
-FILES_libtss2-tcti-mssim-staticdev =3D "${libdir}/libtss2-tcti-mssim.*a"
-
-FILES_libtss2-mu =3D "${libdir}/libtss2-mu.so.*"
-FILES_libtss2-mu-dev =3D " \
-    ${includedir}/tss2/tss2_mu.h \
-    ${libdir}/pkgconfig/tss2-mu.pc \
-    ${libdir}/libtss2-mu.so"
-FILES_libtss2-mu-staticdev =3D "${libdir}/libtss2-mu.*a"
-
-FILES_libtss2 =3D "${libdir}/libtss2*so.*"
-FILES_libtss2-dev =3D " \
-    ${includedir} \
-    ${libdir}/pkgconfig \
-    ${libdir}/libtss2*so"
-FILES_libtss2-staticdev =3D "${libdir}/libtss*a"
-
-FILES_${PN} =3D "${libdir}/udev"
-
-RDEPENDS_libtss2 =3D "libgcrypt"
diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb b/meta-tpm/re=
cipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
new file mode 100644
index 0000000..3e77f71
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
@@ -0,0 +1,79 @@
+SUMMARY =3D "Software stack for TPM2."
+DESCRIPTION =3D "OSS implementation of the TCG TPM2 Software Stack (TSS2) =
"
+LICENSE =3D "BSD-2-Clause"
+LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D500b2e742befc3da00684d8a1d5fd9d=
a"
+SECTION =3D "tpm"
+
+DEPENDS =3D "autoconf-archive-native libgcrypt openssl"
+
+SRCREV =3D "a99e733ba66c359502689a9c42fd5e02ed1dd7d6"
+
+SRC_URI =3D "git://github.com/tpm2-software/tpm2-tss.git;branch=3D2.3.x"
+
+inherit autotools-brokensep pkgconfig systemd
+
+S =3D "${WORKDIR}/git"
+
+PACKAGECONFIG ??=3D ""
+PACKAGECONFIG[oxygen] =3D ",--disable-doxygen-doc, "
+
+do_configure_prepend () {
+       ./bootstrap
+}
+
+INHERIT +=3D "extrausers"
+EXTRA_USERS_PARAMS =3D "\
+ useradd -p '' tss; \
+ groupadd tss; \
+ "
+
+PROVIDES =3D "${PACKAGES}"
+PACKAGES =3D " \
+    ${PN} \
+    ${PN}-dbg \
+    ${PN}-doc \
+    libtss2-mu \
+    libtss2-mu-dev \
+    libtss2-mu-staticdev \
+    libtss2-tcti-device \
+    libtss2-tcti-device-dev \
+    libtss2-tcti-device-staticdev \
+    libtss2-tcti-mssim \
+    libtss2-tcti-mssim-dev \
+    libtss2-tcti-mssim-staticdev \
+    libtss2 \
+    libtss2-dev \
+    libtss2-staticdev \
+"
+
+FILES_libtss2-tcti-device =3D "${libdir}/libtss2-tcti-device.so.*"
+FILES_libtss2-tcti-device-dev =3D " \
+    ${includedir}/tss2/tss2_tcti_device.h \
+    ${libdir}/pkgconfig/tss2-tcti-device.pc \
+    ${libdir}/libtss2-tcti-device.so"
+FILES_libtss2-tcti-device-staticdev =3D "${libdir}/libtss2-tcti-device.*a"
+
+FILES_libtss2-tcti-mssim =3D "${libdir}/libtss2-tcti-mssim.so.*"
+FILES_libtss2-tcti-mssim-dev =3D " \
+    ${includedir}/tss2/tss2_tcti_mssim.h \
+    ${libdir}/pkgconfig/tss2-tcti-mssim.pc \
+    ${libdir}/libtss2-tcti-mssim.so"
+FILES_libtss2-tcti-mssim-staticdev =3D "${libdir}/libtss2-tcti-mssim.*a"
+
+FILES_libtss2-mu =3D "${libdir}/libtss2-mu.so.*"
+FILES_libtss2-mu-dev =3D " \
+    ${includedir}/tss2/tss2_mu.h \
+    ${libdir}/pkgconfig/tss2-mu.pc \
+    ${libdir}/libtss2-mu.so"
+FILES_libtss2-mu-staticdev =3D "${libdir}/libtss2-mu.*a"
+
+FILES_libtss2 =3D "${libdir}/libtss2*so.*"
+FILES_libtss2-dev =3D " \
+    ${includedir} \
+    ${libdir}/pkgconfig \
+    ${libdir}/libtss2*so"
+FILES_libtss2-staticdev =3D "${libdir}/libtss*a"
+
+FILES_${PN} =3D "${libdir}/udev"
+
+RDEPENDS_libtss2 =3D "libgcrypt"
--
2.7.4



--_000_CY4PR01MB23281CF9E020B07376273FF29A390CY4PR01MB2328prod_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>* tpm2-abrmd update to 2.2.0<br>
</span>
<div>* tpm2-tool update to 3.2.0<br>
</div>
<div>* tpm2-tss update to 2.3.1<br>
</div>
<div>* tpm2-tss-engine update to 1.0.1<br>
</div>
<div><br>
</div>
<div>The update of tpm2-tss-engine fix Compilation with optimisation enable=
d breaks creation of ECDSA keys (https://github.com/tpm2-software/tpm2-tss-=
engine/issues/42)<br>
</div>
<div><br>
</div>
<div>Signed-off-by: Daniel Wang &lt;daniel.wang@intusurg.com&gt;<br>
</div>
<div>---<br>
</div>
<div>&nbsp;.../recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb &nbsp; &nbsp;| 5=
5 ---------------<br>
</div>
<div>&nbsp;.../recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb &nbsp; &nbsp;| 5=
5 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#4=
3;<br>
</div>
<div>&nbsp;.../recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb &nbsp; &nbsp;| 1=
5 ----<br>
</div>
<div>&nbsp;.../recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb &nbsp; &nbsp;| 1=
5 &#43;&#43;&#43;&#43;<br>
</div>
<div>&nbsp;.../tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb &nbsp; &nbsp; &nbsp=
; | 23 -------<br>
</div>
<div>&nbsp;.../tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb &nbsp; &nbsp; &nbsp=
; | 23 &#43;&#43;&#43;&#43;&#43;&#43;&#43;<br>
</div>
<div>&nbsp;meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb &nbsp; | 79 ---=
-------------------<br>
</div>
<div>&nbsp;meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb &nbsp; | 79 &#4=
3;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#4=
3;&#43;&#43;&#43;&#43;&#43;&#43;<br>
</div>
<div>&nbsp;8 files changed, 172 insertions(&#43;), 172 deletions(-)<br>
</div>
<div>&nbsp;delete mode 100644 meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2=
.1.1.bb<br>
</div>
<div>&nbsp;create mode 100644 meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2=
.2.0.bb<br>
</div>
<div>&nbsp;delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3=
.1.3.bb<br>
</div>
<div>&nbsp;create mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3=
.2.0.bb<br>
</div>
<div>&nbsp;delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-ts=
s-engine_0.9.9.bb<br>
</div>
<div>&nbsp;create mode 100644 meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-ts=
s-engine_1.0.1.bb<br>
</div>
<div>&nbsp;delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1=
.bb<br>
</div>
<div>&nbsp;create mode 100644 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1=
.bb<br>
</div>
<div><br>
</div>
<div>diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb b/me=
ta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb<br>
</div>
<div>deleted file mode 100644<br>
</div>
<div>index a4c6682..0000000<br>
</div>
<div>--- a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.1.1.bb<br>
</div>
<div>&#43;&#43;&#43; /dev/null<br>
</div>
<div>@@ -1,55 &#43;0,0 @@<br>
</div>
<div>-SUMMARY =3D &quot;TPM2 Access Broker &amp; Resource Manager&quot;<br>
</div>
<div>-DESCRIPTION =3D &quot;This is a system daemon implementing the TPM2 a=
ccess \<br>
</div>
<div>-broker (TAB) &amp; Resource Manager (RM) spec from the TCG. The daemo=
n (tpm2-abrmd) \<br>
</div>
<div>-is implemented using Glib and the GObject system. In this documentati=
on and \<br>
</div>
<div>-in the code we use `tpm2-abrmd` and `tabrmd` interchangeably. \<br>
</div>
<div>-&quot;<br>
</div>
<div>-SECTION =3D &quot;security/tpm&quot;<br>
</div>
<div>-<br>
</div>
<div>-LICENSE =3D &quot;BSD-2-Clause&quot;<br>
</div>
<div>-LIC_FILES_CHKSUM =3D &quot;file://${S}/LICENSE;md5=3D500b2e742befc3da=
00684d8a1d5fd9da&quot;<br>
</div>
<div>-<br>
</div>
<div>-DEPENDS =3D &quot;autoconf-archive dbus glib-2.0 tpm2-tss glib-2.0-na=
tive \<br>
</div>
<div>- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;libtss2 libtss2-mu libtss2-=
tcti-device libtss2-tcti-mssim&quot;<br>
</div>
<div>-<br>
</div>
<div>-<br>
</div>
<div>-SRC_URI =3D &quot;\<br>
</div>
<div>- &nbsp; &nbsp;git://github.com/tpm2-software/tpm2-abrmd.git \<br>
</div>
<div>- &nbsp; &nbsp;file://tpm2-abrmd-init.sh \<br>
</div>
<div>- &nbsp; &nbsp;file://tpm2-abrmd.default \<br>
</div>
<div>-&quot;<br>
</div>
<div>-<br>
</div>
<div>-SRCREV =3D &quot;06d9d433ba27159687255406baa37940db15465b&quot;<br>
</div>
<div>-<br>
</div>
<div>-S =3D &quot;${WORKDIR}/git&quot;<br>
</div>
<div>-<br>
</div>
<div>-inherit autotools pkgconfig systemd update-rc.d useradd<br>
</div>
<div>-<br>
</div>
<div>-SYSTEMD_PACKAGES &#43;=3D &quot;${PN}&quot;<br>
</div>
<div>-SYSTEMD_SERVICE_${PN} =3D &quot;tpm2-abrmd.service&quot;<br>
</div>
<div>-SYSTEMD_AUTO_ENABLE_${PN} =3D &quot;disable&quot;<br>
</div>
<div>-<br>
</div>
<div>-INITSCRIPT_NAME =3D &quot;${PN}&quot;<br>
</div>
<div>-INITSCRIPT_PARAMS =3D &quot;start 99 2 3 4 5 . stop 19 0 1 6 .&quot;<=
br>
</div>
<div>-<br>
</div>
<div>-USERADD_PACKAGES =3D &quot;${PN}&quot;<br>
</div>
<div>-GROUPADD_PARAM_${PN} =3D &quot;tss&quot;<br>
</div>
<div>-USERADD_PARAM_${PN} =3D &quot;--system -M -d /var/lib/tpm -s /bin/fal=
se -g tss tss&quot;<br>
</div>
<div>-<br>
</div>
<div>-PACKAGECONFIG ?=3D&quot;${@bb.utils.contains('DISTRO_FEATURES','syste=
md','systemd', '', d)}&quot;<br>
</div>
<div>-PACKAGECONFIG[systemd] =3D &quot;--with-systemdsystemunitdir=3D${syst=
emd_system_unitdir}, --with-systemdsystemunitdir=3Dno&quot;<br>
</div>
<div>-<br>
</div>
<div>-do_install_append() {<br>
</div>
<div>- &nbsp; &nbsp;install -d &quot;${D}${sysconfdir}/init.d&quot;<br>
</div>
<div>- &nbsp; &nbsp;install -m 0755 &quot;${WORKDIR}/tpm2-abrmd-init.sh&quo=
t; &quot;${D}${sysconfdir}/init.d/tpm2-abrmd&quot;<br>
</div>
<div>-<br>
</div>
<div>- &nbsp; &nbsp;install -d &quot;${D}${sysconfdir}/default&quot;<br>
</div>
<div>- &nbsp; &nbsp;install -m 0644 &quot;${WORKDIR}/tpm2-abrmd.default&quo=
t; &quot;${D}${sysconfdir}/default/tpm2-abrmd&quot;<br>
</div>
<div>-}<br>
</div>
<div>-<br>
</div>
<div>-FILES_${PN} &#43;=3D &quot;${libdir}/systemd/system-preset \<br>
</div>
<div>- ${datadir}/dbus-1&quot;<br>
</div>
<div>-<br>
</div>
<div>-RDEPENDS_${PN} &#43;=3D &quot;tpm2-tss&quot;<br>
</div>
<div>-<br>
</div>
<div>-BBCLASSEXTEND =3D &quot;native&quot;<br>
</div>
<div>diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb b/me=
ta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb<br>
</div>
<div>new file mode 100644<br>
</div>
<div>index 0000000..2b2c831<br>
</div>
<div>--- /dev/null<br>
</div>
<div>&#43;&#43;&#43; b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.2.0.bb=
<br>
</div>
<div>@@ -0,0 &#43;1,55 @@<br>
</div>
<div>&#43;SUMMARY =3D &quot;TPM2 Access Broker &amp; Resource Manager&quot;=
<br>
</div>
<div>&#43;DESCRIPTION =3D &quot;This is a system daemon implementing the TP=
M2 access \<br>
</div>
<div>&#43;broker (TAB) &amp; Resource Manager (RM) spec from the TCG. The d=
aemon (tpm2-abrmd) \<br>
</div>
<div>&#43;is implemented using Glib and the GObject system. In this documen=
tation and \<br>
</div>
<div>&#43;in the code we use `tpm2-abrmd` and `tabrmd` interchangeably. \<b=
r>
</div>
<div>&#43;&quot;<br>
</div>
<div>&#43;SECTION =3D &quot;security/tpm&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;LICENSE =3D &quot;BSD-2-Clause&quot;<br>
</div>
<div>&#43;LIC_FILES_CHKSUM =3D &quot;file://${S}/LICENSE;md5=3D500b2e742bef=
c3da00684d8a1d5fd9da&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;DEPENDS =3D &quot;autoconf-archive dbus glib-2.0 tpm2-tss glib-2.=
0-native \<br>
</div>
<div>&#43; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;libtss2 libtss2-mu libt=
ss2-tcti-device libtss2-tcti-mssim&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;SRC_URI =3D &quot;\<br>
</div>
<div>&#43; &nbsp; &nbsp;git://github.com/tpm2-software/tpm2-abrmd.git \<br>
</div>
<div>&#43; &nbsp; &nbsp;file://tpm2-abrmd-init.sh \<br>
</div>
<div>&#43; &nbsp; &nbsp;file://tpm2-abrmd.default \<br>
</div>
<div>&#43;&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;SRCREV =3D &quot;ac2a5a4b5a4e548177ed7a5b74cea23e00fd30b4&quot;<b=
r>
</div>
<div>&#43;<br>
</div>
<div>&#43;S =3D &quot;${WORKDIR}/git&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;inherit autotools pkgconfig systemd update-rc.d useradd<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;SYSTEMD_PACKAGES &#43;=3D &quot;${PN}&quot;<br>
</div>
<div>&#43;SYSTEMD_SERVICE_${PN} =3D &quot;tpm2-abrmd.service&quot;<br>
</div>
<div>&#43;SYSTEMD_AUTO_ENABLE_${PN} =3D &quot;disable&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;INITSCRIPT_NAME =3D &quot;${PN}&quot;<br>
</div>
<div>&#43;INITSCRIPT_PARAMS =3D &quot;start 99 2 3 4 5 . stop 19 0 1 6 .&qu=
ot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;USERADD_PACKAGES =3D &quot;${PN}&quot;<br>
</div>
<div>&#43;GROUPADD_PARAM_${PN} =3D &quot;tss&quot;<br>
</div>
<div>&#43;USERADD_PARAM_${PN} =3D &quot;--system -M -d /var/lib/tpm -s /bin=
/false -g tss tss&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;PACKAGECONFIG ?=3D&quot;${@bb.utils.contains('DISTRO_FEATURES','s=
ystemd','systemd', '', d)}&quot;<br>
</div>
<div>&#43;PACKAGECONFIG[systemd] =3D &quot;--with-systemdsystemunitdir=3D${=
systemd_system_unitdir}, --with-systemdsystemunitdir=3Dno&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;do_install_append() {<br>
</div>
<div>&#43; &nbsp; &nbsp;install -d &quot;${D}${sysconfdir}/init.d&quot;<br>
</div>
<div>&#43; &nbsp; &nbsp;install -m 0755 &quot;${WORKDIR}/tpm2-abrmd-init.sh=
&quot; &quot;${D}${sysconfdir}/init.d/tpm2-abrmd&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43; &nbsp; &nbsp;install -d &quot;${D}${sysconfdir}/default&quot;<br=
>
</div>
<div>&#43; &nbsp; &nbsp;install -m 0644 &quot;${WORKDIR}/tpm2-abrmd.default=
&quot; &quot;${D}${sysconfdir}/default/tpm2-abrmd&quot;<br>
</div>
<div>&#43;}<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;FILES_${PN} &#43;=3D &quot;${libdir}/systemd/system-preset \<br>
</div>
<div>&#43; ${datadir}/dbus-1&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;RDEPENDS_${PN} &#43;=3D &quot;tpm2-tss&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;BBCLASSEXTEND =3D &quot;native&quot;<br>
</div>
<div>diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb b/me=
ta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb<br>
</div>
<div>deleted file mode 100644<br>
</div>
<div>index 1f1f5c6..0000000<br>
</div>
<div>--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb<br>
</div>
<div>&#43;&#43;&#43; /dev/null<br>
</div>
<div>@@ -1,15 &#43;0,0 @@<br>
</div>
<div>-SUMMARY =3D &quot;Tools for TPM2.&quot;<br>
</div>
<div>-DESCRIPTION =3D &quot;tpm2-tools&quot;<br>
</div>
<div>-LICENSE =3D &quot;BSD&quot;<br>
</div>
<div>-LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D91b7c548d73ea16537799=
e8060cea819&quot;<br>
</div>
<div>-SECTION =3D &quot;tpm&quot;<br>
</div>
<div>-<br>
</div>
<div>-DEPENDS =3D &quot;pkgconfig tpm2-tss openssl curl autoconf-archive&qu=
ot;<br>
</div>
<div>-<br>
</div>
<div>-SRCREV =3D &quot;74ba065e5914bc5d713ca3709d62a5751b097369&quot;<br>
</div>
<div>-<br>
</div>
<div>-SRC_URI =3D &quot;git://github.com/tpm2-software/tpm2-tools.git;branc=
h=3D3.X&quot;<br>
</div>
<div>-<br>
</div>
<div>-S =3D &quot;${WORKDIR}/git&quot;<br>
</div>
<div>-<br>
</div>
<div>-inherit autotools pkgconfig<br>
</div>
<div>diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb b/me=
ta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb<br>
</div>
<div>new file mode 100644<br>
</div>
<div>index 0000000..b6f1be0<br>
</div>
<div>--- /dev/null<br>
</div>
<div>&#43;&#43;&#43; b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb=
<br>
</div>
<div>@@ -0,0 &#43;1,15 @@<br>
</div>
<div>&#43;SUMMARY =3D &quot;Tools for TPM2.&quot;<br>
</div>
<div>&#43;DESCRIPTION =3D &quot;tpm2-tools&quot;<br>
</div>
<div>&#43;LICENSE =3D &quot;BSD&quot;<br>
</div>
<div>&#43;LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D91b7c548d73ea1653=
7799e8060cea819&quot;<br>
</div>
<div>&#43;SECTION =3D &quot;tpm&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;DEPENDS =3D &quot;pkgconfig tpm2-tss openssl curl autoconf-archiv=
e&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;SRCREV =3D &quot;a17daa948fc67685651bf3b7a589ed341080ddd3&quot;<b=
r>
</div>
<div>&#43;<br>
</div>
<div>&#43;SRC_URI =3D &quot;git://github.com/tpm2-software/tpm2-tools.git;b=
ranch=3D3.X&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;S =3D &quot;${WORKDIR}/git&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;inherit autotools pkgconfig<br>
</div>
<div>diff --git a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_0.9=
.9.bb b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb<br>
</div>
<div>deleted file mode 100644<br>
</div>
<div>index 36530be..0000000<br>
</div>
<div>--- a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb<b=
r>
</div>
<div>&#43;&#43;&#43; /dev/null<br>
</div>
<div>@@ -1,23 &#43;0,0 @@<br>
</div>
<div>-SUMMARY =3D &quot;The tpm2-tss-engine project implements a cryptograp=
hic engine for OpenSSL.&quot;
<br>
</div>
<div>-DESCRIPTION =3D &quot;The tpm2-tss-engine project implements a crypto=
graphic engine for OpenSSL for Trusted Platform Module (TPM 2.0) using the =
tpm2-tss software stack that follows the Trusted Computing Groups (TCG) TPM=
 Software Stack (TSS 2.0). It uses the
 Enhanced System API (ESAPI) interface of the TSS 2.0 for downwards communi=
cation. It supports RSA decryption and signatures as well as ECDSA signatur=
es.&quot;<br>
</div>
<div>-<br>
</div>
<div>-LICENSE =3D &quot;BSD-2-Clause&quot;<br>
</div>
<div>-LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D3fb0047fd29391478a71e=
8e6101c76eb&quot;<br>
</div>
<div>-<br>
</div>
<div>-SECTION =3D &quot;security/tpm&quot;<br>
</div>
<div>-<br>
</div>
<div>-DEPENDS =3D &quot;autoconf-archive-native bash-completion libtss2 lib=
gcrypt openssl&quot;<br>
</div>
<div>-<br>
</div>
<div>-SRCREV =3D &quot;bef89ec79cbb4c99963b0e336d9184827c545782&quot;<br>
</div>
<div>-SRC_URI =3D &quot;git://github.com/tpm2-software/tpm2-tss-engine.git&=
quot;<br>
</div>
<div>-<br>
</div>
<div>-inherit autotools-brokensep pkgconfig systemd<br>
</div>
<div>-<br>
</div>
<div>-S =3D &quot;${WORKDIR}/git&quot;<br>
</div>
<div>-<br>
</div>
<div>-PACKAGES &#43;=3D &quot;${PN}-engines ${PN}-engines-staticdev ${PN}-b=
ash-completion&quot;<br>
</div>
<div>-<br>
</div>
<div>-FILES_${PN}-dev =3D &quot;${libdir}/engines-1.1/tpm2tss.so ${included=
ir}/*&quot;<br>
</div>
<div>-FILES_${PN}-engines =3D &quot;${libdir}/engines-1.1/lib*.so*&quot;<br=
>
</div>
<div>-FILES_${PN}-engines-staticdev =3D &quot;${libdir}/engines-1.1/libtpm2=
tss.a&quot;<br>
</div>
<div>-FILES_${PN}-bash-completion &#43;=3D &quot;${datadir}/bash-completion=
/completions&quot;<br>
</div>
<div>diff --git a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0=
.1.bb b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb<br>
</div>
<div>new file mode 100644<br>
</div>
<div>index 0000000..3641b1b<br>
</div>
<div>--- /dev/null<br>
</div>
<div>&#43;&#43;&#43; b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engin=
e_1.0.1.bb<br>
</div>
<div>@@ -0,0 &#43;1,23 @@<br>
</div>
<div>&#43;SUMMARY =3D &quot;The tpm2-tss-engine project implements a crypto=
graphic engine for OpenSSL.&quot;
<br>
</div>
<div>&#43;DESCRIPTION =3D &quot;The tpm2-tss-engine project implements a cr=
yptographic engine for OpenSSL for Trusted Platform Module (TPM 2.0) using =
the tpm2-tss software stack that follows the Trusted Computing Groups (TCG)=
 TPM Software Stack (TSS 2.0). It uses the
 Enhanced System API (ESAPI) interface of the TSS 2.0 for downwards communi=
cation. It supports RSA decryption and signatures as well as ECDSA signatur=
es.&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;LICENSE =3D &quot;BSD-2-Clause&quot;<br>
</div>
<div>&#43;LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D7b3ab643b9ce041de=
515d1ed092a36d4&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;SECTION =3D &quot;security/tpm&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;DEPENDS =3D &quot;autoconf-archive-native bash-completion libtss2=
 libgcrypt openssl&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;SRCREV =3D &quot;fdc8f65dfc8bad8b5a3aed181fae338267308f70&quot;<b=
r>
</div>
<div>&#43;SRC_URI =3D &quot;git://github.com/tpm2-software/tpm2-tss-engine.=
git&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;inherit autotools-brokensep pkgconfig systemd<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;S =3D &quot;${WORKDIR}/git&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;PACKAGES &#43;=3D &quot;${PN}-engines ${PN}-engines-staticdev ${P=
N}-bash-completion&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;FILES_${PN}-dev =3D &quot;${libdir}/engines-1.1/tpm2tss.so ${incl=
udedir}/*&quot;<br>
</div>
<div>&#43;FILES_${PN}-engines =3D &quot;${libdir}/engines-1.1/lib*.so*&quot=
;<br>
</div>
<div>&#43;FILES_${PN}-engines-staticdev =3D &quot;${libdir}/engines-1.1/lib=
tpm2tss.a&quot;<br>
</div>
<div>&#43;FILES_${PN}-bash-completion &#43;=3D &quot;${datadir}/bash-comple=
tion/completions&quot;<br>
</div>
<div>diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb b/meta-t=
pm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb<br>
</div>
<div>deleted file mode 100644<br>
</div>
<div>index 78bdeeb..0000000<br>
</div>
<div>--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb<br>
</div>
<div>&#43;&#43;&#43; /dev/null<br>
</div>
<div>@@ -1,79 &#43;0,0 @@<br>
</div>
<div>-SUMMARY =3D &quot;Software stack for TPM2.&quot;<br>
</div>
<div>-DESCRIPTION =3D &quot;OSS implementation of the TCG TPM2 Software Sta=
ck (TSS2) &quot;<br>
</div>
<div>-LICENSE =3D &quot;BSD-2-Clause&quot;<br>
</div>
<div>-LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D500b2e742befc3da00684=
d8a1d5fd9da&quot;<br>
</div>
<div>-SECTION =3D &quot;tpm&quot;<br>
</div>
<div>-<br>
</div>
<div>-DEPENDS =3D &quot;autoconf-archive-native libgcrypt openssl&quot;<br>
</div>
<div>-<br>
</div>
<div>-SRCREV =3D &quot;eb69e13559f20a0b49002a685c6f4a39be9503e2&quot;<br>
</div>
<div>-<br>
</div>
<div>-SRC_URI =3D &quot;git://github.com/tpm2-software/tpm2-tss.git;branch=
=3D2.2.x&quot;<br>
</div>
<div>-<br>
</div>
<div>-inherit autotools-brokensep pkgconfig systemd<br>
</div>
<div>-<br>
</div>
<div>-S =3D &quot;${WORKDIR}/git&quot;<br>
</div>
<div>-<br>
</div>
<div>-PACKAGECONFIG ??=3D &quot;&quot;<br>
</div>
<div>-PACKAGECONFIG[oxygen] =3D &quot;,--disable-doxygen-doc, &quot;<br>
</div>
<div>-<br>
</div>
<div>-do_configure_prepend () {<br>
</div>
<div>- &nbsp; &nbsp; &nbsp; ./bootstrap<br>
</div>
<div>-}<br>
</div>
<div>-<br>
</div>
<div>-INHERIT &#43;=3D &quot;extrausers&quot;<br>
</div>
<div>-EXTRA_USERS_PARAMS =3D &quot;\<br>
</div>
<div>- useradd -p '' tss; \<br>
</div>
<div>- groupadd tss; \<br>
</div>
<div>- &quot;<br>
</div>
<div>-<br>
</div>
<div>-PROVIDES =3D &quot;${PACKAGES}&quot;<br>
</div>
<div>-PACKAGES =3D &quot; \<br>
</div>
<div>- &nbsp; &nbsp;${PN} \<br>
</div>
<div>- &nbsp; &nbsp;${PN}-dbg \<br>
</div>
<div>- &nbsp; &nbsp;${PN}-doc \<br>
</div>
<div>- &nbsp; &nbsp;libtss2-mu \<br>
</div>
<div>- &nbsp; &nbsp;libtss2-mu-dev \<br>
</div>
<div>- &nbsp; &nbsp;libtss2-mu-staticdev \<br>
</div>
<div>- &nbsp; &nbsp;libtss2-tcti-device \<br>
</div>
<div>- &nbsp; &nbsp;libtss2-tcti-device-dev \<br>
</div>
<div>- &nbsp; &nbsp;libtss2-tcti-device-staticdev \<br>
</div>
<div>- &nbsp; &nbsp;libtss2-tcti-mssim \<br>
</div>
<div>- &nbsp; &nbsp;libtss2-tcti-mssim-dev \<br>
</div>
<div>- &nbsp; &nbsp;libtss2-tcti-mssim-staticdev \<br>
</div>
<div>- &nbsp; &nbsp;libtss2 \<br>
</div>
<div>- &nbsp; &nbsp;libtss2-dev \<br>
</div>
<div>- &nbsp; &nbsp;libtss2-staticdev \<br>
</div>
<div>-&quot;<br>
</div>
<div>-<br>
</div>
<div>-FILES_libtss2-tcti-device =3D &quot;${libdir}/libtss2-tcti-device.so.=
*&quot;<br>
</div>
<div>-FILES_libtss2-tcti-device-dev =3D &quot; \<br>
</div>
<div>- &nbsp; &nbsp;${includedir}/tss2/tss2_tcti_device.h \<br>
</div>
<div>- &nbsp; &nbsp;${libdir}/pkgconfig/tss2-tcti-device.pc \<br>
</div>
<div>- &nbsp; &nbsp;${libdir}/libtss2-tcti-device.so&quot;<br>
</div>
<div>-FILES_libtss2-tcti-device-staticdev =3D &quot;${libdir}/libtss2-tcti-=
device.*a&quot;<br>
</div>
<div>-<br>
</div>
<div>-FILES_libtss2-tcti-mssim =3D &quot;${libdir}/libtss2-tcti-mssim.so.*&=
quot;<br>
</div>
<div>-FILES_libtss2-tcti-mssim-dev =3D &quot; \<br>
</div>
<div>- &nbsp; &nbsp;${includedir}/tss2/tss2_tcti_mssim.h \<br>
</div>
<div>- &nbsp; &nbsp;${libdir}/pkgconfig/tss2-tcti-mssim.pc \<br>
</div>
<div>- &nbsp; &nbsp;${libdir}/libtss2-tcti-mssim.so&quot;<br>
</div>
<div>-FILES_libtss2-tcti-mssim-staticdev =3D &quot;${libdir}/libtss2-tcti-m=
ssim.*a&quot;<br>
</div>
<div>-<br>
</div>
<div>-FILES_libtss2-mu =3D &quot;${libdir}/libtss2-mu.so.*&quot;<br>
</div>
<div>-FILES_libtss2-mu-dev =3D &quot; \<br>
</div>
<div>- &nbsp; &nbsp;${includedir}/tss2/tss2_mu.h \<br>
</div>
<div>- &nbsp; &nbsp;${libdir}/pkgconfig/tss2-mu.pc \<br>
</div>
<div>- &nbsp; &nbsp;${libdir}/libtss2-mu.so&quot;<br>
</div>
<div>-FILES_libtss2-mu-staticdev =3D &quot;${libdir}/libtss2-mu.*a&quot;<br=
>
</div>
<div>-<br>
</div>
<div>-FILES_libtss2 =3D &quot;${libdir}/libtss2*so.*&quot;<br>
</div>
<div>-FILES_libtss2-dev =3D &quot; \<br>
</div>
<div>- &nbsp; &nbsp;${includedir} \<br>
</div>
<div>- &nbsp; &nbsp;${libdir}/pkgconfig \<br>
</div>
<div>- &nbsp; &nbsp;${libdir}/libtss2*so&quot;<br>
</div>
<div>-FILES_libtss2-staticdev =3D &quot;${libdir}/libtss*a&quot;<br>
</div>
<div>-<br>
</div>
<div>-FILES_${PN} =3D &quot;${libdir}/udev&quot;<br>
</div>
<div>-<br>
</div>
<div>-RDEPENDS_libtss2 =3D &quot;libgcrypt&quot;<br>
</div>
<div>diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb b/meta-t=
pm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb<br>
</div>
<div>new file mode 100644<br>
</div>
<div>index 0000000..3e77f71<br>
</div>
<div>--- /dev/null<br>
</div>
<div>&#43;&#43;&#43; b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb<br>
</div>
<div>@@ -0,0 &#43;1,79 @@<br>
</div>
<div>&#43;SUMMARY =3D &quot;Software stack for TPM2.&quot;<br>
</div>
<div>&#43;DESCRIPTION =3D &quot;OSS implementation of the TCG TPM2 Software=
 Stack (TSS2) &quot;<br>
</div>
<div>&#43;LICENSE =3D &quot;BSD-2-Clause&quot;<br>
</div>
<div>&#43;LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D500b2e742befc3da0=
0684d8a1d5fd9da&quot;<br>
</div>
<div>&#43;SECTION =3D &quot;tpm&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;DEPENDS =3D &quot;autoconf-archive-native libgcrypt openssl&quot;=
<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;SRCREV =3D &quot;a99e733ba66c359502689a9c42fd5e02ed1dd7d6&quot;<b=
r>
</div>
<div>&#43;<br>
</div>
<div>&#43;SRC_URI =3D &quot;git://github.com/tpm2-software/tpm2-tss.git;bra=
nch=3D2.3.x&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;inherit autotools-brokensep pkgconfig systemd<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;S =3D &quot;${WORKDIR}/git&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;PACKAGECONFIG ??=3D &quot;&quot;<br>
</div>
<div>&#43;PACKAGECONFIG[oxygen] =3D &quot;,--disable-doxygen-doc, &quot;<br=
>
</div>
<div>&#43;<br>
</div>
<div>&#43;do_configure_prepend () {<br>
</div>
<div>&#43; &nbsp; &nbsp; &nbsp; ./bootstrap<br>
</div>
<div>&#43;}<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;INHERIT &#43;=3D &quot;extrausers&quot;<br>
</div>
<div>&#43;EXTRA_USERS_PARAMS =3D &quot;\<br>
</div>
<div>&#43; useradd -p '' tss; \<br>
</div>
<div>&#43; groupadd tss; \<br>
</div>
<div>&#43; &quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;PROVIDES =3D &quot;${PACKAGES}&quot;<br>
</div>
<div>&#43;PACKAGES =3D &quot; \<br>
</div>
<div>&#43; &nbsp; &nbsp;${PN} \<br>
</div>
<div>&#43; &nbsp; &nbsp;${PN}-dbg \<br>
</div>
<div>&#43; &nbsp; &nbsp;${PN}-doc \<br>
</div>
<div>&#43; &nbsp; &nbsp;libtss2-mu \<br>
</div>
<div>&#43; &nbsp; &nbsp;libtss2-mu-dev \<br>
</div>
<div>&#43; &nbsp; &nbsp;libtss2-mu-staticdev \<br>
</div>
<div>&#43; &nbsp; &nbsp;libtss2-tcti-device \<br>
</div>
<div>&#43; &nbsp; &nbsp;libtss2-tcti-device-dev \<br>
</div>
<div>&#43; &nbsp; &nbsp;libtss2-tcti-device-staticdev \<br>
</div>
<div>&#43; &nbsp; &nbsp;libtss2-tcti-mssim \<br>
</div>
<div>&#43; &nbsp; &nbsp;libtss2-tcti-mssim-dev \<br>
</div>
<div>&#43; &nbsp; &nbsp;libtss2-tcti-mssim-staticdev \<br>
</div>
<div>&#43; &nbsp; &nbsp;libtss2 \<br>
</div>
<div>&#43; &nbsp; &nbsp;libtss2-dev \<br>
</div>
<div>&#43; &nbsp; &nbsp;libtss2-staticdev \<br>
</div>
<div>&#43;&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;FILES_libtss2-tcti-device =3D &quot;${libdir}/libtss2-tcti-device=
.so.*&quot;<br>
</div>
<div>&#43;FILES_libtss2-tcti-device-dev =3D &quot; \<br>
</div>
<div>&#43; &nbsp; &nbsp;${includedir}/tss2/tss2_tcti_device.h \<br>
</div>
<div>&#43; &nbsp; &nbsp;${libdir}/pkgconfig/tss2-tcti-device.pc \<br>
</div>
<div>&#43; &nbsp; &nbsp;${libdir}/libtss2-tcti-device.so&quot;<br>
</div>
<div>&#43;FILES_libtss2-tcti-device-staticdev =3D &quot;${libdir}/libtss2-t=
cti-device.*a&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;FILES_libtss2-tcti-mssim =3D &quot;${libdir}/libtss2-tcti-mssim.s=
o.*&quot;<br>
</div>
<div>&#43;FILES_libtss2-tcti-mssim-dev =3D &quot; \<br>
</div>
<div>&#43; &nbsp; &nbsp;${includedir}/tss2/tss2_tcti_mssim.h \<br>
</div>
<div>&#43; &nbsp; &nbsp;${libdir}/pkgconfig/tss2-tcti-mssim.pc \<br>
</div>
<div>&#43; &nbsp; &nbsp;${libdir}/libtss2-tcti-mssim.so&quot;<br>
</div>
<div>&#43;FILES_libtss2-tcti-mssim-staticdev =3D &quot;${libdir}/libtss2-tc=
ti-mssim.*a&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;FILES_libtss2-mu =3D &quot;${libdir}/libtss2-mu.so.*&quot;<br>
</div>
<div>&#43;FILES_libtss2-mu-dev =3D &quot; \<br>
</div>
<div>&#43; &nbsp; &nbsp;${includedir}/tss2/tss2_mu.h \<br>
</div>
<div>&#43; &nbsp; &nbsp;${libdir}/pkgconfig/tss2-mu.pc \<br>
</div>
<div>&#43; &nbsp; &nbsp;${libdir}/libtss2-mu.so&quot;<br>
</div>
<div>&#43;FILES_libtss2-mu-staticdev =3D &quot;${libdir}/libtss2-mu.*a&quot=
;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;FILES_libtss2 =3D &quot;${libdir}/libtss2*so.*&quot;<br>
</div>
<div>&#43;FILES_libtss2-dev =3D &quot; \<br>
</div>
<div>&#43; &nbsp; &nbsp;${includedir} \<br>
</div>
<div>&#43; &nbsp; &nbsp;${libdir}/pkgconfig \<br>
</div>
<div>&#43; &nbsp; &nbsp;${libdir}/libtss2*so&quot;<br>
</div>
<div>&#43;FILES_libtss2-staticdev =3D &quot;${libdir}/libtss*a&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;FILES_${PN} =3D &quot;${libdir}/udev&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;RDEPENDS_libtss2 =3D &quot;libgcrypt&quot;<br>
</div>
<div>-- <br>
</div>
<div>2.7.4<br>
</div>
<div><br>
</div>
<span></span><br>
</div>
</body>
</html>

--_000_CY4PR01MB23281CF9E020B07376273FF29A390CY4PR01MB2328prod_--
