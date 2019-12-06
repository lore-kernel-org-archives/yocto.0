Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.44])
 by mx.groups.io with SMTP id smtpd.web10.1811.1575627229314498659
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Dec 2019 02:13:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@spinetix.com header.s=selector2 header.b=cawyeVfv;
 spf=pass (domain: spinetix.com, ip: 40.107.8.44, mailfrom: diego.santacruz@spinetix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mLWlUhIKisNFPTUXpBy41KMEUXNbhbPp3zP5+LHbQIdH9ieE0W7GLIQyAPtjRc2GU7mPD3bPSoyqNK3bPf60+od4DgR6aiV0fe60ZncTf6AtZy20JTrwPVCsStQtF6dkEgsKaxRc+VJ49LhG4ygtmLm7rc0Z7QNAMdEWg9Fpl72mxUn7Ck2sssXr02F0j6yrbAcCt88qBmleSBjXf7Qec3Zsv1vh4ngRT0320rD4GtW+whBKbri4a0C9QdyUXePg+mjtE61QwKKulMV5J0rsCeXs41IBLo91hZkpu+KaH5NykOQRh1tvZSW2mtmcSnvHrq1nVtF7eiVV6mhxDGDMzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QpbNjNzQEWPTBa6v+bVStXPVa+5NMHCfyoXql5tY0m0=;
 b=cqGRqCPdRPlCVSCQELEGMJCJfcpPMW/0st2JBjaM4j7ED6xqGXavEaRINcoOnuZpvF2AwW2UZFLw9RaqM4LQ6N4n29iAWR8Rm7lcL+JkHuChDyqK3kBDfRRQxbynqFnkxopxkuzwWUH2EQlnKmUgy57R70hSl9mIC3/MbU0+piaYLgJZi2ynTR2ODYXZ6Pe7dRgHZiwwXK6XyQcCzJunsrDimT47vBSdckRggZ5e9DGl0thxhmx9ChtYg4r+7cZ17i/Cb3yVlI7MU++X8xtksbSuOWl/EsvR+XQnTGo6+GyftvjszTS4hi0WRuo6K7ppZKyuXp+alreZx7TCbNuM7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=spinetix.com; dmarc=pass action=none header.from=spinetix.com;
 dkim=pass header.d=spinetix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spinetix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QpbNjNzQEWPTBa6v+bVStXPVa+5NMHCfyoXql5tY0m0=;
 b=cawyeVfvcnq3et9RU+uVMAVDCw09iSu+Ft8BOSIfarwlpvP2dDyBHFDZe5w+eKGQaCLzXZn4Lf8+tIZ7ofwqFuwJtvSBkhAbOulwo1+kFuv1L01M7+b0eLCt89sr09ImvnQFXQdFLkg1sLtXhRO91Gr0f3lePAmPvCk9eja6yj8=
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
Subject: [meta-security][PATCH 0/2] tpm2-abrmd: startup fixes
Thread-Topic: [meta-security][PATCH 0/2] tpm2-abrmd: startup fixes
Thread-Index: AQHVrB3YjqeGyf9Q8kar+TNiZdsMZQ==
Date: Fri, 6 Dec 2019 10:13:47 +0000
Message-ID: <20191206101334.18436-1-Diego.SantaCruz@spinetix.com>
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
x-ms-office365-filtering-correlation-id: f9cd6b85-5087-492f-a74b-08d77a34fb39
x-ms-traffictypediagnostic: VI1PR01MB4317:
x-microsoft-antispam-prvs: 
 <VI1PR01MB4317909021D62BDDCF28992E885F0@VI1PR01MB4317.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0243E5FD68
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(39840400004)(396003)(376002)(366004)(346002)(136003)(199004)(189003)(2616005)(36756003)(81156014)(15650500001)(26005)(102836004)(8676002)(25786009)(71190400001)(1730700003)(52116002)(81166006)(71200400001)(316002)(50226002)(66476007)(5640700003)(5660300002)(305945005)(6512007)(8936002)(14444005)(6916009)(66446008)(64756008)(66946007)(1076003)(66556008)(14454004)(6506007)(4744005)(6486002)(99286004)(186003)(2906002)(508600001)(86362001);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR01MB4317;H:VI1PR01MB5167.eurprd01.prod.exchangelabs.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: spinetix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 hlRvrdOI5Yc6bTBH1R6b5v2oXgrAwmiFARA4VamZcu1Xnt95tx/4l807e7gSO9VsyfFQyVtpWHwN8dSvGEnILpNYLQeH9Uwr9cRzGm2zH7zA9+vhOGUKANx+PeMpcJGQSifRSVUl7nfAlZn6wQ3XQ+Xp3tl9lcAB8zJ/DZbBI+eki3TKh6IEVzzWn12Lkeo0YlbGMUhFnCPTQiF/Sh1u8KvJ3WYc0LiVlmPZnK1j7Yx8U3YxlpzyoBiznoK9eZB1u4f6SRZupqev/LGuf+n6lygnRqUzHI/JiQnKa1vS1kw63lpaCFAl0L5fAT70HlW7lKwUqlqo+i4KgJc6njT6kgTWGm0zxxhFJ97pzUv+zztg25w1LtoKqgG21t8zdmOeD9Qpd2EJWy0UeAg9sU6egAD4L/czevSFZrDSXbVRMsFP6PDeIQNeoYRFezcsnEvK
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: spinetix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9cd6b85-5087-492f-a74b-08d77a34fb39
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2019 10:13:47.1140
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f4034fa-ed2d-4840-a93f-acb1e9633b93
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DLKeI2vB13O98ew02xm3yNIgucerwpDn1/Oe3sJvUpAjIp3ro/7FgnfQHQ5LVB8EV1Kw3hpN+71HV6GxIsiX+zKGNCnaxzwgj8/TtjvIWLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB4317
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

This ports patches from the meta-measured layer that fix tpm2-abrmd
not starting up.
The first patch is necessary on kernels 4.12 and later.
The second patch is necessary after the update to 2.3.0.

Philip Tricca (1):
  tpm2-abrmd: Port command line options to new version.

Trevor Woerner (1):
  tpm2-abrmd-init.sh: fix for /dev/tpmrmX

 meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh | 2 +-
 meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

--=20
2.18.1

