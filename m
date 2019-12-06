Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.1811.1575627229314498659
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Dec 2019 02:13:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@spinetix.com header.s=selector2 header.b=LUrTCU6b;
 spf=softfail (domain: spinetix.com, ip: <nil>, mailfrom: diego.santacruz@spinetix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H27Vy0MYzb2QxorbiaTs5tYYwJxataucsU9L7H/4Xl4ERjooB9BceDQpoJuSZQQbbXUFju2MW6YYpCXIxhs22Bs88JP3tv0bRT6dtt3PjY7WUMJiiCZ7VPHM61UXnGE1YbuxW64P1Hgl0e0e3OFB5enYpXA1iN+XfkcodpETLPBp5Fu9Kkg/zlFxP6BYuPWR+k8powxmsx2ktjQUXWsMjjNGNcoqK7wxZb49d/15lKotNJ2p8xDA7yJeVATSaL7ysK/nW2/uMdpf9Cjed8R8rglT7drl0TV7+3gGjs3AfaHKbyzoQmcFUKbv4ihhM939AUWn3RcqxAMXNJM2kZbF5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ScA0I4AFmf2IRZqF5P1lpOC5rz8IAjpLF5ZH4r0rE2Q=;
 b=SjN4LHyBM4Qy2gNS+/ulF5ETrocVLt/aSDOssqPijUz7ZHu3vjUhj4R0v6YZ8rlZC3i620UirgovmPPV3covLnZQW2PCEogOn3I4dKkWBeo+gtnizuEpR0qp1rw2hotLSHU9o0p6L8LiAbtcFQS+G8PhWrWKgIKpt28QzotEfU+DqEo815g+g6u1lQXfVSuaekY5XtSJQiSCzmcePV6Byoc6GPvzYaFOVUpDItKOcBIazLHgCSwRV2UBq1pynhdV5Ag6vfBFRKzt89KIfj1vwzhz8vdSs66+2mOq6Fplxe+i66yOqz/b3e8TW/sflLxSZcrG6uGpsU4tsste3p/+dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=spinetix.com; dmarc=pass action=none header.from=spinetix.com;
 dkim=pass header.d=spinetix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spinetix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ScA0I4AFmf2IRZqF5P1lpOC5rz8IAjpLF5ZH4r0rE2Q=;
 b=LUrTCU6bJBQGb5Yn8+e2Vc+4eQk7jv0Ya1kE+3EmGRZuzs2o9lO+7vJZbPS82DnywHhrjRgGs0U4ghKIF1AJdfzJxzlek4PnvrWQB5Y8DJtTV/Nk6iVtzO9skV3SpAatv37zZObccYq6NHR6M5wjnvdtTVydkbrbC+1tSTuY2ew=
Received: from VI1PR01MB5167.eurprd01.prod.exchangelabs.com (20.178.120.225)
 by VI1PR01MB4317.eurprd01.prod.exchangelabs.com (20.177.54.148) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.18; Fri, 6 Dec
 2019 10:13:47 +0000
Received: from VI1PR01MB5167.eurprd01.prod.exchangelabs.com
 ([fe80::6d7a:666f:b19e:685d]) by VI1PR01MB5167.eurprd01.prod.exchangelabs.com
 ([fe80::6d7a:666f:b19e:685d%3]) with mapi id 15.20.2516.017; Fri, 6 Dec 2019
 10:13:47 +0000
From: "Diego Santa Cruz" <diego.santacruz@spinetix.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH 1/2] tpm2-abrmd-init.sh: fix for /dev/tpmrmX
Thread-Topic: [meta-security][PATCH 1/2] tpm2-abrmd-init.sh: fix for
 /dev/tpmrmX
Thread-Index: AQHVrB3ZKZqNvQItJkaVPFV6ZfsJLA==
Date: Fri, 6 Dec 2019 10:13:47 +0000
Message-ID: <20191206101334.18436-2-Diego.SantaCruz@spinetix.com>
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
x-ms-office365-filtering-correlation-id: adbd9931-2775-4ec3-0585-08d77a34fb8a
x-ms-traffictypediagnostic: VI1PR01MB4317:
x-microsoft-antispam-prvs: 
 <VI1PR01MB4317D298DB13C9192325F9F7885F0@VI1PR01MB4317.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0243E5FD68
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(39840400004)(396003)(376002)(366004)(346002)(136003)(199004)(189003)(2616005)(36756003)(81156014)(26005)(102836004)(8676002)(25786009)(71190400001)(76176011)(1730700003)(52116002)(81166006)(11346002)(71200400001)(316002)(50226002)(66476007)(5640700003)(5660300002)(305945005)(6512007)(8936002)(14444005)(6916009)(66446008)(64756008)(66946007)(1076003)(66556008)(14454004)(6506007)(4744005)(6486002)(99286004)(966005)(186003)(2906002)(508600001)(86362001);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR01MB4317;H:VI1PR01MB5167.eurprd01.prod.exchangelabs.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: spinetix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 kNvhl429sTv+sx9oIgpaCAkKPTPJIv4B9dqeGB5565dzcFMOt2Mrl9OPKQJ3HgAho2KNb1OL3KrGyrQYp2jVEAMwydoOz34t7MOXX+9vG7XzfE4rVu9el58CkMGjeMLf6xyOv7vBJrVI+M0RYoRRmzLarAIVHHEFrnMcmLwwW1jAuZu1ewaOq2/J+YqwjxV6kFZs5QLGi08fjWJ43/19v3YlcbHeHahTWDyUCCzdt9pYu+n0BU1TDzJHv4mFdE6k7k19KEqx0/+WPrhHAvTiHKwRik8SajSsVTGiRaGFslt8cuC/SN3NpKU6FzckN/MvBUcoRlgmPTKG+Sqb7a8vQHzmg8n4IOVkOiliJYpkRIFdwJOu1KWGeYhZTmJ0KuiHwmjylvLjvjI0hk598mqSMYArBR73ka5oOM2R6XYi6peqQQCXZeA3VasbTxKypl6154tCfUdI28uCMWVWtwVMaLiCDmHdB/ZjCZtX4iIAk3A=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: spinetix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: adbd9931-2775-4ec3-0585-08d77a34fb8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2019 10:13:47.6467
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f4034fa-ed2d-4840-a93f-acb1e9633b93
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iURluqSgQ0kP5X/G/AM2lRbZgenaS2x5UWKMdL/XlzdEubooVvXWNyzMzZqV2zAZSLtuI0lOTmVR4WMeVR0tNlnBhNszTFShgwF0kRUOYdE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB4317
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

From: Trevor Woerner <twoerner@gmail.com>

Newer kernels, in addition to the traditional /dev/tpmX device nodes, are n=
ow
also creating /dev/tpmrmX device nodes. This causes this script to get
confused and abort, meaning tpm2-abrmd does not get started during boot.

Fix for https://github.com/flihp/meta-measured/issues/56

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
Signed-off-by: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
---
 meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh b/me=
ta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh
index c8dfb7d..9bb7da9 100644
--- a/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh
+++ b/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh
@@ -27,7 +27,7 @@ case "${1}" in
 	start)
 		echo -n "Starting $DESC: "
=20
-		if [ ! -e /dev/tpm* ]
+		if [ ! -e /dev/tpm? ]
 		then
 			echo "device driver not loaded, skipping."
 			exit 0
--=20
2.18.1

