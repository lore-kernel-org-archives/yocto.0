Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.1811.1575627229314498659
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Dec 2019 02:13:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@spinetix.com header.s=selector2 header.b=hFS53RH9;
 spf=softfail (domain: spinetix.com, ip: <nil>, mailfrom: diego.santacruz@spinetix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L5zN4qDJmwyZZdrgx9O3yJGxWInELhIh5Z2hr1BdM4bxgELYN7+VyMPZ+f45bCt/2d8GS6L6weiqrzcHyCDXRI3X2wjwDyt67dTOE/K0+JGpl0/7fgc1uNR7mYJ7DeyVlHmkN2XAVw79vg4kvgL3ODYn1vKZS9GQIbQjKh49+quuzmMHZKgLz938mS7uf58GoDBeesV6Kb+ZArIb52/IOREuygfALM3MiRfv76OWnVcUQeuBEDj1smix80uRaLyVsi2udJUuWmgH1zbSkZk0n/45ZdcFhYp6yzKmuiwFNqSaQeGGaCguzX5UVZeE/vGEGK1RZrzqVP4cuxY+eh0BtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3DvXBqwNsgdvzlDqosddofctu8BKIZ1r7IEuy9VMF58=;
 b=R45ox0KgPZRZafqShT4QPdXoy6ZDadDSITh2CV4mcEnG2hMKzuk2XKzuBHcNd2vX/rvDE+esZte0GJCtPKN/5mwnsp8WuIrZVXPt53yhhq80auMqn7DDsDQIF6utsO5aZ1r7DMmPM57vOPMM2P3yu8b6U4/ncEQm+btv8BHW2cys+ALt1NCkg98JeqdvWJ54TTIW1KXHEj0v6+cX4YWsoYGFVbi1G4xnbUxnSRv0R41RqQmahSYBayyelpOqvHJR7VBN5BF17zhyEJF2kPM6qtIOD3PtbgDtP8H9HZK2FN4DpT36p23PvMwxxGDx1Bp2osT5OXlGBYRO3v0Gs644Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=spinetix.com; dmarc=pass action=none header.from=spinetix.com;
 dkim=pass header.d=spinetix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spinetix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3DvXBqwNsgdvzlDqosddofctu8BKIZ1r7IEuy9VMF58=;
 b=hFS53RH9zPl++arc8J840pI/Y69fQpp3eXlIf6ySxn3EwW680rSDQ9NkPxOwoBNv31NzaLR1V2tp7vHDnIjTbZKUP9qOzea2yeibTeONjIw/UXrvsCggixIRZe6gjNCJ4jCWtJl4uWIf5s4WvOqzAMZg6QihnBov0Anw2ydRYj8=
Received: from VI1PR01MB5167.eurprd01.prod.exchangelabs.com (20.178.120.225)
 by VI1PR01MB4317.eurprd01.prod.exchangelabs.com (20.177.54.148) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.18; Fri, 6 Dec
 2019 10:13:48 +0000
Received: from VI1PR01MB5167.eurprd01.prod.exchangelabs.com
 ([fe80::6d7a:666f:b19e:685d]) by VI1PR01MB5167.eurprd01.prod.exchangelabs.com
 ([fe80::6d7a:666f:b19e:685d%3]) with mapi id 15.20.2516.017; Fri, 6 Dec 2019
 10:13:48 +0000
From: "Diego Santa Cruz" <diego.santacruz@spinetix.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH 2/2] tpm2-abrmd: Port command line options to new version.
Thread-Topic: [meta-security][PATCH 2/2] tpm2-abrmd: Port command line options
 to new version.
Thread-Index: AQHVrB3ZR81SKVArY0icFQCzTv2L3Q==
Date: Fri, 6 Dec 2019 10:13:48 +0000
Message-ID: <20191206101334.18436-3-Diego.SantaCruz@spinetix.com>
References: <20191206101334.18436-1-Diego.SantaCruz@spinetix.com>
In-Reply-To: <20191206101334.18436-1-Diego.SantaCruz@spinetix.com>
Accept-Language: en-GB, fr-CH, fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [46.14.255.78]
x-mailer: git-send-email 2.18.1
x-clientproxiedby: PR0P264CA0222.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1e::18) To VI1PR01MB5167.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:cb::33)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Diego.SantaCruz@spinetix.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: baa5bc9e-4114-4d02-44f9-08d77a34fbdf
x-ms-traffictypediagnostic: VI1PR01MB4317:
x-microsoft-antispam-prvs: 
 <VI1PR01MB4317C1F623D770CF171F5756885F0@VI1PR01MB4317.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:330;
x-forefront-prvs: 0243E5FD68
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(39840400004)(396003)(376002)(366004)(346002)(136003)(199004)(189003)(2616005)(36756003)(81156014)(26005)(102836004)(8676002)(25786009)(71190400001)(76176011)(1730700003)(52116002)(81166006)(11346002)(71200400001)(316002)(50226002)(66476007)(5640700003)(5660300002)(305945005)(6512007)(8936002)(14444005)(6916009)(66446008)(64756008)(66946007)(1076003)(66556008)(14454004)(6506007)(4744005)(6486002)(99286004)(186003)(2906002)(508600001)(86362001);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR01MB4317;H:VI1PR01MB5167.eurprd01.prod.exchangelabs.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: spinetix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 49wNzhWn9F8qVaUkizzRFuF8W6v2++77fErAsmpa4j5J6t8yyxaN3MjAL/jMbu1osaZpOfrbp0nyy86tPnfKM7up1dkZphnTOXZ1RZhZTocUNS+zU/7jbxAAggMe5cAVqwmdzyATZQ05URijTc63sdVqHklVqs1BJjQTEj2Y/+zH8GiRQ3JX7itX+A1StKZ8iEGf4zO5WWSwqZ8nCiKvqx61VdGOJwp4fDlefwpvXkQuFGbzD5DcflBJsX2Hb8C9tHyfL4PLJKjIIFAuFHm4OG5wgCQIcMeu6eBFWuio/AypTm+0PaWOSible1EcyXFJ3sv+dXxbitxfG4sAUOB0XEDzIdWcRb9wnxUkGo2PP5QYKvkoppUmdWC+ZW9I51r6eENaRWTjYhYI+XdmLjrbAulb5GErJYPhMFRoXxQWp1Boi+AjEQuLY4gKfSuTqOY8
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: spinetix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: baa5bc9e-4114-4d02-44f9-08d77a34fbdf
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2019 10:13:48.3823
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f4034fa-ed2d-4840-a93f-acb1e9633b93
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P4VKwLpxwm1qGQoUwhXQBLd3GLK7Y8eUXw21OfwvunKs442CgzsBM5Oalixjn17LiVM4i0i+61ojBXADFwpdjTGNCh2hMMs1tuT2/AHvcSQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB4317
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

From: Philip Tricca <flihp@twobit.org>

These have changed upstream.

Signed-off-by: Philip Tricca <flihp@twobit.org>
Signed-off-by: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
---
 meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default b/me=
ta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default
index 987978a..b4b3c20 100644
--- a/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default
+++ b/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default
@@ -1 +1 @@
-DAEMON_OPTS=3D"--tcti=3Ddevice --logger=3Dsyslog --max-connections=3D20 --=
max-transient-objects=3D20 --fail-on-loaded-trans"
+DAEMON_OPTS=3D"--tcti=3Ddevice --logger=3Dsyslog --max-connections=3D20 --=
max-transients=3D20 --flush-all"
--=20
2.18.1

