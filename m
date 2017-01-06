Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66729E00563; Fri,  6 Jan 2017 03:53:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.61.95 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Jan 2017 03:53:26 PST
Received: from SNT004-OMC2S44.hotmail.com (snt004-omc2s44.hotmail.com
	[65.54.61.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09798E00524
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2017 03:53:25 -0800 (PST)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com ([65.55.90.73])
	by SNT004-OMC2S44.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Fri, 6 Jan 2017 03:52:25 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=zagttlTZmX7uZJJPhDu5/4sJ/I58DgDl/FWhLEKGphE=;
	b=t7AXInMCdR7mh+vhDYJyQNsUjiS7DJrba6lDetgzLofuwfnN34vIuQFPh8ffCXOLQAEw3k15Gdz3yUyUmvThbm66ObheFIp6s6zqtws6nubt9SegZCEPqtlzT3wsjMHTYBDoicoQ0q7tLNuJNcXO0XIW1xVbMwEAs1oq+Rv7aINNPwMrGCgmVDRY4mMrFdr7GZaq87chJsUO+kXDwPjaq6bK+H/GUlkvZpno9NHdmohDUPogHZ6hc3msDgHO5JDGc/3rttPZL75AFR9bnLVdQA4Uxj2pZAYpjfvNbO3wHz7+QrwZAYiIk0wBKfHv1Cakorqao7KiQlABeOStcFLSig==
Received: from DB5EUR01FT009.eop-EUR01.prod.protection.outlook.com
	(10.152.4.55) by DB5EUR01HT130.eop-EUR01.prod.protection.outlook.com
	(10.152.5.36) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.803.8;
	Fri, 6 Jan 2017 11:52:23 +0000
Received: from MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM (10.152.4.54) by
	DB5EUR01FT009.mail.protection.outlook.com (10.152.4.124) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.803.8 via Frontend Transport; Fri, 6 Jan 2017 11:52:23 +0000
Received: from MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM ([10.166.236.147]) by
	MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM ([10.166.236.147]) with mapi id
	15.01.0817.013; Fri, 6 Jan 2017 11:52:22 +0000
From: Chris Trobridge <christrobridge@hotmail.com>
To: Yocto List <yocto@yoctoproject.org>
Thread-Topic: Failure Inheriting rpm_sign
Thread-Index: AQHSaBLQr6aBtVwoVUGgLuVcOQw3RA==
Date: Fri, 6 Jan 2017 11:52:22 +0000
Message-ID: <MMXP123MB0125B632BF3BE563B71B6EA1DA630@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:6E46C7546330EE72E693DCD53DD48EC818D21C857D6EC8C118C7819BF4EA12EB;
	UpperCasedChecksum:CCCC6A6BD8D2E5718069D4AA0C54BFAB84D271F52EE1815FEAF9DE9041B63BC7;
	SizeAsReceived:7437; Count:37
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [06WLf6rCDHlp6qTeSw5nZHddNuXunOwA]
x-incomingheadercount: 37
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; DB5EUR01HT130;
	7:ET1AMrav9x4O6ITr+KrNbUY9V3VnTKHU9QWaRxaM2VPtP5n0Cjv1hTEBMEoxjXL5QrIUELBQpmt1s7tEqcb3QwhCykjint/IkanpmjX+8rkVEOrRabPPWpOBf/A3dnaOb+QeVjjey4jsAV/RZlpqWSMQbOSgZ99h9pq+kYhZd+QzYs8EEdXTGyhOmN3RpEAHp3HWNvvUAt1LbYCS2IG5NmVLeJJ3KSiI1oBIuiSxbRJ3zafyHyHbjjiUGnjq14xq4lCtj93EK9EGDVquJ9ULpYPfUVIrbm9htRMhBUe0ilmh4CEfDD7/7BG/QEkKMyPPCVuqvJLULggI6Cv6aEI2oJoJaJXV3Gnxn70B1UEBMkKeD+cXD+ZKc6AIR2yRb1vtKiQXWrgbyNdcixOiVbuxc0IedAAuF+euUmTg01MO7clZ4vdWZrqlxMTmXWdNn0C/5psAugLH/RTO9e7u42VpXg==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5EUR01HT130;
	H:MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: e2fc13d0-fe3a-4f97-cd8a-08d4362a79f4
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(1601124038)(5061506318)(5061507293)(1603103113)(1601125047)(1701031021);
	SRVR:DB5EUR01HT130; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(444111334)(444112120)(432015012)(82015046);
	SRVR:DB5EUR01HT130; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR01HT130; 
x-forefront-prvs: 01792087B6
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2017 11:52:22.7894 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT130
X-OriginalArrivalTime: 06 Jan 2017 11:52:25.0327 (UTC)
	FILETIME=[58F4C7F0:01D26813]
Subject: Failure Inheriting rpm_sign
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
X-List-Received-Date: Fri, 06 Jan 2017 11:53:28 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I am getting "Exception: OSError: [Errno 7] Argument list too long" for sig=
n_rpm in the do_package_write_rpm tasks for the=20
linux-yocto and glibc-locale recipes.

This is building core-image-minimal (and also my own image) with morty (5aa=
481d) on Fedora 25.

I have enabled the rpm signing with:

INHERIT +=3D " sign_rpm"
RPM_GPG_NAME =3D "{name}"
RPM_GPG_PASSPHRASE =3D "{passphrase}"
IMAGE_INSTALL_append =3D " signing-keys-rpm"

The error message makes some sense in as much as these recipes produce a lo=
t of packages (for example, glibc-locale produces 1791 packages) and the co=
mmand line in the log is pretty big, although reading around I didn't find =
a consensus on what the max command line should be.

The code to sign rpms is in meta/lib/oe/gpg_sign.py b/meta/lib/oe/gpg_sign.=
py and it builds up one command line with all the packages.

I changed the code (patch appended) to sign each rpm in a separate command =
and the build completed successfully.  The signing operations take a large =
amount of time so I think this might be a reasonable change but you may hav=
e other concerns.

Regards,
Chris

diff --git a/meta/lib/oe/gpg_sign.py b/meta/lib/oe/gpg_sign.py
index 38eb0cb..a386b1f 100644
--- a/meta/lib/oe/gpg_sign.py
+++ b/meta/lib/oe/gpg_sign.py
@@ -29,17 +29,18 @@ class LocalSigner(object):
     def sign_rpms(self, files, keyid, passphrase):
         """Sign RPM files"""
=20
-        cmd =3D self.rpm_bin + " --addsign --define '_gpg_name %s'  " % ke=
yid
-        cmd +=3D "--define '_gpg_passphrase %s' " % passphrase
-        if self.gpg_bin:
-            cmd +=3D "--define '%%__gpg %s' " % self.gpg_bin
-        if self.gpg_path:
-            cmd +=3D "--define '_gpg_path %s' " % self.gpg_path
-        cmd +=3D ' '.join(files)
-
-        status, output =3D oe.utils.getstatusoutput(cmd)
-        if status:
-            raise bb.build.FuncFailed("Failed to sign RPM packages: %s" % =
output)
+        for file in files:
+            cmd =3D self.rpm_bin + " --addsign --define '_gpg_name %s'  " =
% keyid
+            cmd +=3D "--define '_gpg_passphrase %s' " % passphrase
+            if self.gpg_bin:
+                cmd +=3D "--define '%%__gpg %s' " % self.gpg_bin
+            if self.gpg_path:
+                cmd +=3D "--define '_gpg_path %s' " % self.gpg_path
+            cmd +=3D file
+
+            status, output =3D oe.utils.getstatusoutput(cmd)
+            if status:
+                raise bb.build.FuncFailed("Failed to sign RPM packages: %s=
" % output)
=20
     def detach_sign(self, input_file, keyid, passphrase_file, passphrase=
=3DNone, armor=3DTrue):
         """Create a detached signature of a file"""

