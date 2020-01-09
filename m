Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.736.1578603875322301456
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 13:04:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intusurgops.onmicrosoft.com header.s=selector2-intusurgops-onmicrosoft-com header.b=xTNy4uu+;
 spf=permerror, err=parse error for token &{10 18 spf-001e7101.pphosted.com}: limit exceeded (domain: intusurg.com, ip: 140.211.169.56, mailfrom: daniel.wang@intusurg.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 076CAE014DE; Thu,  9 Jan 2020 13:04:34 -0800 (PST)
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
	*      [40.107.76.102 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (mail-eopbgr760102.outbound.protection.outlook.com [40.107.76.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 253A1E00C92
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2020 13:04:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aO3tt/xwQvGeOyhTuqigy9gdvir0F2zKjwE6QqWmk5v0/Gheclqaz7V3NJ1TvroQZnNvG1yrZPxXRWPu2V6imuE5+BLLdNFzPKNXZLNfW+6NigUhth43C/NLGVYff6yBoVQu7wV/HrMYC1/OTVeYABuljsZv/LKymeOfq65N4f2KFcQqvoLpwveA12TTtA76p/J2700D6CufVST4dAREBlonTnZ7F9c7Px+wu1rT7CLOU3Mf6ov3wcrfu1/lEXRKJ2UfXLi5xr1fekiM4dauQmVgGkscfYpgBrm5m7wrXlQRrQdB6vUcgWjsa5inykiapuG8kfqkz5SDjQ54Glzumw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B5XbbecZAVjFUax+LYviKYrgFAD2qLb6n5IvI8rwxn8=;
 b=A/6Q5IIdxQ7T6A4Kz28/VLWaKwB/aSAuPbaN0vaHwWPyixqB9eCx4LG3GY/V+6QIEDtqePOROHkxdSfvSSp+4q5x8pYkfaJK00vm+TQMzfO5aGD8X6ygTW86nX5ohMcbVjbZLDc/JieBweotqIe7Zkh7n63MisVMZftLZXz+bUkcXSoSL8gCgsXNEcHpP4Boq0t3M4XmlnNb/GOFKlMh9KCs8OAtqRoZe0y1oNqIrSkf8sKJXtJ2jhCEb7MZSfSQ8laxVFxza6NKDHD7KPVNdOOnAEnptuUH4xbQhIkxP3dRKjnLL3PEnuyKNjm1Y6H0ZnaD7O6bqzjXt4Kz2J+iWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intusurg.com; dmarc=pass action=none header.from=intusurg.com;
 dkim=pass header.d=intusurg.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=IntusurgOps.onmicrosoft.com; s=selector2-IntusurgOps-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B5XbbecZAVjFUax+LYviKYrgFAD2qLb6n5IvI8rwxn8=;
 b=xTNy4uu+kJEfhqRGaBIdCGPrWFyTXcZbmRvFkzqIe1LzOTwdph77Qg1f6tVxEOc1ql+gydZknGRDxMnohTzMhUHleetT6JsqEw/igN7UJoR932K0dSImCMSy64LEVHlpR3kMgW2FEJnzfzWHSbDOp84simXeddZZRFjrhY5HdgM=
Received: from CY4PR01MB2328.prod.exchangelabs.com (10.169.252.16) by
 CY4PR01MB2520.prod.exchangelabs.com (10.173.37.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.13; Thu, 9 Jan 2020 21:04:33 +0000
Received: from CY4PR01MB2328.prod.exchangelabs.com
 ([fe80::e08e:9a14:332e:580b]) by CY4PR01MB2328.prod.exchangelabs.com
 ([fe80::e08e:9a14:332e:580b%8]) with mapi id 15.20.2623.010; Thu, 9 Jan 2020
 21:04:33 +0000
From: "Daniel" <daniel.wang@intusurg.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: [meta-security][PATCH 3/3] added tpm2tss.so to tpm2-tss-engine package
Thread-Topic: [meta-security][PATCH 3/3] added tpm2tss.so to tpm2-tss-engine
 package
Thread-Index: AQHVxzBkSWwLVe/NX0eM7veATwfb2Q==
Date: Thu, 9 Jan 2020 21:04:33 +0000
Message-ID: 
 <CY4PR01MB2328CCC2532988A860202AA99A390@CY4PR01MB2328.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Daniel.Wang@intusurg.com; 
x-originating-ip: [204.27.197.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dbf8a1d5-1bef-4ee1-48b7-08d7954786be
x-ms-traffictypediagnostic: CY4PR01MB2520:
x-microsoft-antispam-prvs: 
 <CY4PR01MB2520E648E2E411B3FFF56C0E9A390@CY4PR01MB2520.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(396003)(39860400002)(366004)(346002)(376002)(136003)(189003)(199004)(55016002)(316002)(9686003)(7696005)(19627405001)(186003)(71200400001)(6506007)(33656002)(81166006)(2906002)(8676002)(81156014)(6916009)(76116006)(26005)(8936002)(5660300002)(66446008)(64756008)(52536014)(66946007)(86362001)(66476007)(66556008)(478600001);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR01MB2520;H:CY4PR01MB2328.prod.exchangelabs.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: intusurg.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 /eLsspDiIjvDy2WKI3e67/s721N//j5BIb+X6cOqNOeSqoHZbX+E2+Bq9GRT5vhn+yDRlCx6Rhot5+ABrf55R05pwLWqIWvVjnL5ft8pClg3o2wP3aVRB2ImKHCLOj2340uI7D4s/VuqrQMv/wXrUFF+zLaaY/5GaMgR1a98BjS4Qd0RAwdRC/Jr/+GuL9G/MsCiOHnuheQbtHG6YMEsaHBIkxiYKAidPgE3Cpysql714rZOZZKznGPhUZvkzx/Fe30tBy3EuLm2zetDXA6j2K6ykqXybg0exINHTzgpEcppxm5SjI5U8cIHtWCmR1fjplDckgXWPSPAxXktMs5kKV/FpogP5covaZZtXGGEqOUwpH5sR7kb6sMMb5h128UL3QoR63MmA0PGWCCce7dTOM1TQ3Uhoslkp/eLQy5ginqYQocSCZmPY2Ii3fQYmgy7
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: intusurg.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbf8a1d5-1bef-4ee1-48b7-08d7954786be
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 21:04:33.0259
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 039caf84-d3e9-4cb9-8b4a-2c2e17a80c19
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7BQcqyMJGr5nPQ1nIbVNrF3TXuV4cAOurJL8O2rZCqh3yJDEJFEodOL/gIwcNIQ60X1JUgNikVwLDeo5jdssVcLw1wi6ov3z1OMzv6gs+DQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR01MB2520
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR01MB2328CCC2532988A860202AA99A390CY4PR01MB2328prod_"

--_000_CY4PR01MB2328CCC2532988A860202AA99A390CY4PR01MB2328prod_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

OpenSSL has changed its naming convention for engines,
the library must be named tpm2tss.so for OpenSSL 1.1

added `INSANE_SKIP` to allow symbolic link to be added in
tpm2-tss-engine-engines

commented out tpm2-tss-engine-dev so tpm2-tss-engine-engines
will have tpm2tss.so

Signed-off-by: Daniel Wang <daniel.wang@intusurg.com>
---
 meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb | 8 +++++--=
-
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb=
 b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
index 3641b1b..5cbb0fe 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
@@ -17,7 +17,9 @@ S =3D "${WORKDIR}/git"

 PACKAGES +=3D "${PN}-engines ${PN}-engines-staticdev ${PN}-bash-completion=
"

-FILES_${PN}-dev =3D "${libdir}/engines-1.1/tpm2tss.so ${includedir}/*"
-FILES_${PN}-engines =3D "${libdir}/engines-1.1/lib*.so*"
+INSANE_SKIP_${PN}-engines +=3D "dev-so"
+
+# FILES_${PN}-dev =3D "${libdir}/engines-1.1/tpm2tss.so ${includedir}/*"
+FILES_${PN}-engines =3D "${libdir}/engines-1.1/lib*.so* ${libdir}/engines-=
1.1/tpm2tss.so"
 FILES_${PN}-engines-staticdev =3D "${libdir}/engines-1.1/libtpm2tss.a"
-FILES_${PN}-bash-completion +=3D "${datadir}/bash-completion/completions"
+FILES_${PN}-bash-completion +=3D "${datadir}/bash-completion/completions"
\ No newline at end of file
--
2.7.4



--_000_CY4PR01MB2328CCC2532988A860202AA99A390CY4PR01MB2328prod_
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
<span>OpenSSL has changed its naming convention for engines,<br>
</span>
<div>the library must be named tpm2tss.so for OpenSSL 1.1<br>
</div>
<div><br>
</div>
<div>added `INSANE_SKIP` to allow symbolic link to be added in<br>
</div>
<div>tpm2-tss-engine-engines<br>
</div>
<div><br>
</div>
<div>commented out tpm2-tss-engine-dev so tpm2-tss-engine-engines<br>
</div>
<div>will have tpm2tss.so<br>
</div>
<div><br>
</div>
<div>Signed-off-by: Daniel Wang &lt;daniel.wang@intusurg.com&gt;<br>
</div>
<div>---<br>
</div>
<div>&nbsp;meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb |=
 8 &#43;&#43;&#43;&#43;&#43;---<br>
</div>
<div>&nbsp;1 file changed, 5 insertions(&#43;), 3 deletions(-)<br>
</div>
<div><br>
</div>
<div>diff --git a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0=
.1.bb b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb<br>
</div>
<div>index 3641b1b..5cbb0fe 100644<br>
</div>
<div>--- a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb<b=
r>
</div>
<div>&#43;&#43;&#43; b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engin=
e_1.0.1.bb<br>
</div>
<div>@@ -17,7 &#43;17,9 @@ S =3D &quot;${WORKDIR}/git&quot;<br>
</div>
<div>&nbsp;<br>
</div>
<div>&nbsp;PACKAGES &#43;=3D &quot;${PN}-engines ${PN}-engines-staticdev ${=
PN}-bash-completion&quot;<br>
</div>
<div>&nbsp;<br>
</div>
<div>-FILES_${PN}-dev =3D &quot;${libdir}/engines-1.1/tpm2tss.so ${included=
ir}/*&quot;<br>
</div>
<div>-FILES_${PN}-engines =3D &quot;${libdir}/engines-1.1/lib*.so*&quot;<br=
>
</div>
<div>&#43;INSANE_SKIP_${PN}-engines &#43;=3D &quot;dev-so&quot;<br>
</div>
<div>&#43;<br>
</div>
<div>&#43;# FILES_${PN}-dev =3D &quot;${libdir}/engines-1.1/tpm2tss.so ${in=
cludedir}/*&quot;<br>
</div>
<div>&#43;FILES_${PN}-engines =3D &quot;${libdir}/engines-1.1/lib*.so* ${li=
bdir}/engines-1.1/tpm2tss.so&quot;<br>
</div>
<div>&nbsp;FILES_${PN}-engines-staticdev =3D &quot;${libdir}/engines-1.1/li=
btpm2tss.a&quot;<br>
</div>
<div>-FILES_${PN}-bash-completion &#43;=3D &quot;${datadir}/bash-completion=
/completions&quot;<br>
</div>
<div>&#43;FILES_${PN}-bash-completion &#43;=3D &quot;${datadir}/bash-comple=
tion/completions&quot;<br>
</div>
<div>\ No newline at end of file<br>
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

--_000_CY4PR01MB2328CCC2532988A860202AA99A390CY4PR01MB2328prod_--
