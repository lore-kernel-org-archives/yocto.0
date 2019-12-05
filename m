Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.9210.1575553625826635436
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2019 05:47:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@microsoft.com header.s=selector2 header.b=jST8a5pm;
 spf=fail (domain: microsoft.com, ip: 140.211.169.56, mailfrom: peter.morrow@microsoft.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63C87E00F02; Thu,  5 Dec 2019 05:47:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.14.91 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-eopbgr140091.outbound.protection.outlook.com [40.107.14.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F910E00E11
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2019 05:47:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IKKVmJZUJeWpd+gqdLt9Tr4wk10otduE2ZZPogAql+8edst56ayFlxU+qDbfABtfmA4EvaL4Uolr2C/PistNkp6aQDJ/wXWgzOLzRC81oGx+epc38rMQM521+vl/6K+hUTnYeWADBZU1PkmDufkYJLlPkPwvIeYfUpVGxuGMhydg1U0AsSR9wYSvL/m/WomR1cgDQFWKrye9mcmkVMATfDD05CqIoGdCpLVflkm4/JWLEHfhORG1U1GkdOs2w9CLPH5ppMrlYXbbFVAk1+mhy5R0k6v5ZRLwGBhIZrihlVJCsiyoEs+skLOlY0iintYEr6ESicP9YKzzSNN7BS93Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0/nvIUhkkdCjlIJ0nh0uQ7f5r353O46P6RlfkKAWfLI=;
 b=VKCCfBcVZ7bwGpZqdPzd08VnxnAj3bBHvMV8S0De7mxg0yIvQ92HlAcB+QNjsmzcLbq0TBSAPCOJZYDnFLb2lZbPX3h++Ucx0r34WBt3dpEF7jkXrroaJRgNFyP91S61TGPA5lKT5ej3nTBTAKEF1ORgfnlQ0WB7euRzziSi52WgC+TpoWNbRuCiDzr72ajt2aeRz1QBhQvMhJZb18EGwhCCHdWWShTa89QKsfBrjfY2F+7CiLi/kjFQ8AoHgO9zLorTX9CwIrlOANBhMflJ/0MsiBkTiiDy/2mLQl2JwWBTD0f3Ffq3by6df9Gt8j2ttjd3dhMViCV5HYpiZIcVUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0/nvIUhkkdCjlIJ0nh0uQ7f5r353O46P6RlfkKAWfLI=;
 b=jST8a5pmDptuSx/GgESHrKseIA//eaRQeR8BzJCuZ2d7FjpebGCrPpOOydJfOJLnP0IkB83bzb5gmmSRaQf6V5OnUYivI1gctgyTXEhXyV7nxsrc0lTHvr9wy+YxTLWiL7t0oMvptLUhj6U5f+OLEUCnlu8Hvvql/DWHS6eUW/Y=
Received: from AM5PR83MB0355.EURPRD83.prod.outlook.com (10.161.103.152) by
 AM5PR83MB0178.EURPRD83.prod.outlook.com (10.161.103.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.2; Thu, 5 Dec 2019 13:47:00 +0000
Received: from AM5PR83MB0355.EURPRD83.prod.outlook.com
 ([fe80::6c1f:fb9d:e475:fd38]) by AM5PR83MB0355.EURPRD83.prod.outlook.com
 ([fe80::6c1f:fb9d:e475:fd38%9]) with mapi id 15.20.2538.005; Thu, 5 Dec 2019
 13:46:58 +0000
From: "Peter Morrow" <peter.morrow@microsoft.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
CC: "Joe_MacDonald@mentor.com" <Joe_MacDonald@mentor.com>
Subject: [yocto] [meta-selinux] Dependency loop help with selinux userspace/python3/util-linux
Thread-Topic: [yocto] [meta-selinux] Dependency loop help with selinux
 userspace/python3/util-linux
Thread-Index: AQHVq3J2j7IF4Kn6F0iNftUEISkeRQ==
Date: Thu, 5 Dec 2019 13:46:58 +0000
Message-ID: <e95481c9b63c68e8545662310bf6cbd2f4bd6f71.camel@microsoft.com>
Reply-To: Peter Morrow <Peter.Morrow@microsoft.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Peter.Morrow@microsoft.com; 
x-originating-ip: [194.69.98.181]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fe4714f3-9b11-4311-3c51-08d77989997d
x-ms-traffictypediagnostic: AM5PR83MB0178:
x-microsoft-antispam-prvs: 
 <AM5PR83MB0178E55D7793E59B577313E0835C0@AM5PR83MB0178.EURPRD83.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(376002)(39860400002)(136003)(396003)(366004)(346002)(189003)(199004)(66556008)(66946007)(76116006)(66446008)(478600001)(305945005)(5640700003)(64756008)(8936002)(118296001)(71200400001)(71190400001)(43066004)(25786009)(99286004)(6916009)(14454004)(6512007)(2906002)(91956017)(66476007)(6486002)(3450700001)(10290500003)(10090500001)(2616005)(86362001)(22452003)(316002)(5660300002)(8676002)(4326008)(14444005)(1730700003)(102836004)(6506007)(81166006)(81156014)(186003)(36756003)(26005)(72063004);DIR:OUT;SFP:1102;SCL:1;SRVR:AM5PR83MB0178;H:AM5PR83MB0355.EURPRD83.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Ov/xwbhUpvwwR6vLALIvsAGLCdw9Jn/RVBz7ICstT1qZSFt16vVdD0+O8YpRyWWs0urrwDWOGMyk8Ur0XW5xg/rIX6pYiygQVHPvubYTFzJSOjKSncF/nFHh1n1IcJ+aSOAkOtmUOZ6VetKXqfwoKq3S0IjzrTyTdDeoGC8B/TCJkbORZffupiCOikWAXCdBMdmT+CKLTLQpPJYjFhIti3q8khh+ysIBZAlCmYrmdweT5RV54Pycj5tS7JIwVeiQrO0MJCRn/sfwWnEJJpNMUtZhqHJQfCR59/epkPOnlg+bzs/+LS1diMBMSrfHgYXq2UN4tjMGPkcyEaF9IjqzmlZ6ml32aXBPX50ivzqSKlo/qQvcs2hNSZOA8Jqw4EjH7QWkSJDrCK7iRuurdzzlfzYJR7lY3Xp7lwr7ql0ndKyjEh5VHEI7qISjR84ThM/hUfQYNrL9vxge+JPw27z+csXM/F9BHp8xYE6SYUoeBuXbuEDume+xqd7XQDu0Db0K
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe4714f3-9b11-4311-3c51-08d77989997d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 13:46:58.6487
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IMZVOteygKRoJXD3HNK5Kk6IA58rZh3jxs6it2YP/q4wMYjhZOKHF9hU2PYs1kDv6mpQuHGqUOfEP/CqWJxZrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR83MB0178
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <ECE98ACBDCED0D49A787CEA129094A83@EURPRD83.prod.outlook.com>
Content-Transfer-Encoding: base64

SGkgRm9sa3MsDQoNCkknbSB0cnlpbmcgdG8gdXBncmFkZSB0aGUgbWV0YS1zZWxpbnV4IGxheWVy
IHRvIHVzZSBhIG5ld2VyIHZlcnNpb24gb2YNCnRoZSBzZWxpbnV4IHVzZXJzcGFjZSB0b29scyAo
ZnJvbSAyLjggdG8gMi45KSwgaW4gZG9pbmcgc28gdGhlc2UgbmV3ZXINCnVzZXJzcGFjZSB0b29s
cyBub3cgZGVwZW5kIG9uIHB5dGhvbjMgaW5zdGVhZCBvZiBweXRob24yLiAgVGhpcw0KdW5mb3J0
dW5hdGVseSBoYXMgY3JlYXRlZCBhIGJ1aWxkIHRpbWUgZGVwZW5kZW5jeSBsb29wIGluIHlvY3Rv
Og0KDQpweXRob24zIC0tPiB1dGlsLWxpbnV4IC0tPiBsaWJzZWxpbnV4IC0tPiBweXRob24zICh1
c2VkIHRvIGJlIHB5dGhvbjINCndpdGggMi44IHNlbGludXggdXNlcnNwYWNlKS4NCg0KUnVubmlu
ZyAiYml0YmFrZSBsaWJzZWxpbnV4IiByZXN1bHRzIGluIGEgcGlsZSBvZiBsb29wcywgdGhlIG9u
ZSBiZWxvdw0KaWxsdXN0cmF0ZXMgdGhlIHBvaW50Lg0KDQpFUlJPUjoNCkRlcGVuZGVuY3kgbG9v
cCAjMSBmb3VuZDoNCiAgVGFzayAvd29ya3NwYWNlL2dpdC95b2N0by1zZWxpbnV4L21ldGEtc2Vs
aW51eC9yZWNpcGVzLQ0Kc2VjdXJpdHkvc2VsaW51eC9saWJzZWxpbnV4XzIuOS5iYjpkb19wYWNr
YWdlIChkZXBlbmRlbnQgVGFza3MgWydnY2MtDQpydW50aW1lXzkuMi5iYjpkb19wYWNrYWdlZGF0
YScsICdsaWJzZXBvbF8yLjkuYmI6ZG9fcGFja2FnZWRhdGEnLA0KJ3JwbV80LjE0LjIuMS5iYjpk
b19wb3B1bGF0ZV9zeXNyb290JywgJ2dsaWJjXzIuMzAuYmI6ZG9fcGFja2FnZWRhdGEnLA0KJ3B5
dGhvbjNfMy43LjUuYmI6ZG9fcGFja2FnZWRhdGEnLCAnbGlicGNyZV84LjQzLmJiOmRvX3BhY2th
Z2VkYXRhJywNCidwc2V1ZG9fZ2l0LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLA0KJ2R3YXJmc3Jj
ZmlsZXMuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsDQonbGlic2VsaW51eF8yLjkuYmI6ZG9faW5z
dGFsbCddKQ0KICBUYXNrIC93b3Jrc3BhY2UvZ2l0L3lvY3RvLXNlbGludXgvbWV0YS1zZWxpbnV4
L3JlY2lwZXMtDQpzZWN1cml0eS9zZWxpbnV4L2xpYnNlbGludXhfMi45LmJiOmRvX3BhY2thZ2Vk
YXRhIChkZXBlbmRlbnQgVGFza3MNClsnbGlic2VsaW51eF8yLjkuYmI6ZG9fcGFja2FnZSddKQ0K
ICBUYXNrIC93b3Jrc3BhY2UvZ2l0L3lvY3RvLXNlbGludXgvcG9reS9tZXRhL3JlY2lwZXMtDQpl
eHRlbmRlZC9wYW0vbGlicGFtXzEuMy4xLmJiOmRvX3BhY2thZ2UgKGRlcGVuZGVudCBUYXNrcyBb
J2djYy0NCnJ1bnRpbWVfOS4yLmJiOmRvX3BhY2thZ2VkYXRhJywgJ3JwbV80LjE0LjIuMS5iYjpk
b19wb3B1bGF0ZV9zeXNyb290JywNCidnbGliY18yLjMwLmJiOmRvX3BhY2thZ2VkYXRhJywgJ2xp
YnNlbGludXhfMi45LmJiOmRvX3BhY2thZ2VkYXRhJywNCidmbGV4XzIuNi4wLmJiOmRvX3BhY2th
Z2VkYXRhJywgJ3BzZXVkb19naXQuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsDQonbGlieGNyeXB0
XzQuNC44LmJiOmRvX3BhY2thZ2VkYXRhJywgJ2xpYnBhbV8xLjMuMS5iYjpkb19pbnN0YWxsJywN
Cidkd2FyZnNyY2ZpbGVzLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLA0KJ2NyYWNrbGliXzIuOS41
LmJiOmRvX3BhY2thZ2VkYXRhJywgJ2xpYnRvb2wtDQpjcm9zc18yLjQuNi5iYjpkb19wYWNrYWdl
ZGF0YSddKQ0KICBUYXNrIC93b3Jrc3BhY2UvZ2l0L3lvY3RvLXNlbGludXgvcG9reS9tZXRhL3Jl
Y2lwZXMtDQpleHRlbmRlZC9wYW0vbGlicGFtXzEuMy4xLmJiOmRvX3BhY2thZ2VkYXRhIChkZXBl
bmRlbnQgVGFza3MNClsnbGlicGFtXzEuMy4xLmJiOmRvX3BhY2thZ2UnXSkNCiAgVGFzayAvd29y
a3NwYWNlL2dpdC95b2N0by1zZWxpbnV4L3Bva3kvbWV0YS9yZWNpcGVzLWNvcmUvdXRpbC0NCmxp
bnV4L3V0aWwtbGludXhfMi4zNC5iYjpkb19wYWNrYWdlIChkZXBlbmRlbnQgVGFza3MgWydnY2Mt
DQpydW50aW1lXzkuMi5iYjpkb19wYWNrYWdlZGF0YScsICdycG1fNC4xNC4yLjEuYmI6ZG9fcG9w
dWxhdGVfc3lzcm9vdCcsDQonYmFzaC1jb21wbGV0aW9uXzIuOS5iYjpkb19wYWNrYWdlZGF0YScs
DQonemxpYl8xLjIuMTEuYmI6ZG9fcGFja2FnZWRhdGEnLCAnZ2xpYmNfMi4zMC5iYjpkb19wYWNr
YWdlZGF0YScsDQonbGlic2VsaW51eF8yLjkuYmI6ZG9fcGFja2FnZWRhdGEnLA0KJ3BzZXVkb19n
aXQuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsDQonbmN1cnNlc182LjErMjAxOTA4MDMuYmI6ZG9f
cGFja2FnZWRhdGEnLA0KJ2xpYnhjcnlwdF80LjQuOC5iYjpkb19wYWNrYWdlZGF0YScsICdsaWJj
YXAtDQpuZ18wLjcuOS5iYjpkb19wYWNrYWdlZGF0YScsICdvcGtnLXV0aWxzXzAuNC4xLmJiOmRv
X3BhY2thZ2VkYXRhJywNCidsaWJwYW1fMS4zLjEuYmI6ZG9fcGFja2FnZWRhdGEnLCAndXRpbC0N
CmxpbnV4XzIuMzQuYmI6ZG9faW5zdGFsbF9wdGVzdF9iYXNlJywNCidkd2FyZnNyY2ZpbGVzLmJi
OmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndXRpbC0NCmxpbnV4XzIuMzQuYmI6ZG9faW5zdGFsbCcs
ICdsaWJ0b29sLWNyb3NzXzIuNC42LmJiOmRvX3BhY2thZ2VkYXRhJ10pDQogIFRhc2sgL3dvcmtz
cGFjZS9naXQveW9jdG8tc2VsaW51eC9wb2t5L21ldGEvcmVjaXBlcy1jb3JlL3V0aWwtDQpsaW51
eC91dGlsLWxpbnV4XzIuMzQuYmI6ZG9fcGFja2FnZWRhdGEgKGRlcGVuZGVudCBUYXNrcyBbJ3V0
aWwtDQpsaW51eF8yLjM0LmJiOmRvX3BhY2thZ2UnXSkNCiAgVGFzayAvd29ya3NwYWNlL2dpdC95
b2N0by1zZWxpbnV4L3Bva3kvbWV0YS9yZWNpcGVzLQ0KZGV2dG9vbHMvcHl0aG9uL3B5dGhvbjNf
My43LjUuYmI6ZG9fcGFja2FnZSAoZGVwZW5kZW50IFRhc2tzDQpbJ3h6XzUuMi40LmJiOmRvX3Bh
Y2thZ2VkYXRhJywgJ2J6aXAyXzEuMC44LmJiOmRvX3BhY2thZ2VkYXRhJywNCidnZGJtXzEuMTgu
MS5iYjpkb19wYWNrYWdlZGF0YScsICdsaWJuc2wyX2dpdC5iYjpkb19wYWNrYWdlZGF0YScsICdn
Y2MtDQpydW50aW1lXzkuMi5iYjpkb19wYWNrYWdlZGF0YScsICdycG1fNC4xNC4yLjEuYmI6ZG9f
cG9wdWxhdGVfc3lzcm9vdCcsDQoncHl0aG9uM18zLjcuNS5iYjpkb19pbnN0YWxsJywgJ2xpYmZm
aV8zLjN+cmMwLmJiOmRvX3BhY2thZ2VkYXRhJywNCidwc2V1ZG9fZ2l0LmJiOmRvX3BvcHVsYXRl
X3N5c3Jvb3QnLA0KJ3NxbGl0ZTNfMy4yOS4wLmJiOmRvX3BhY2thZ2VkYXRhJywgJ29wZW5zc2xf
MS4xLjFkLmJiOmRvX3BhY2thZ2VkYXRhJywNCidsaWJ0aXJwY18xLjEuNC5iYjpkb19wYWNrYWdl
ZGF0YScsICd6bGliXzEuMi4xMS5iYjpkb19wYWNrYWdlZGF0YScsDQonZ2xpYmNfMi4zMC5iYjpk
b19wYWNrYWdlZGF0YScsICdsaWJ4Y3J5cHRfNC40LjguYmI6ZG9fcGFja2FnZWRhdGEnLA0KJ3B5
dGhvbjNfMy43LjUuYmI6ZG9faW5zdGFsbF9wdGVzdF9iYXNlJywgJ3V0aWwtDQpsaW51eF8yLjM0
LmJiOmRvX3BhY2thZ2VkYXRhJywgJ29wa2ctdXRpbHNfMC40LjEuYmI6ZG9fcGFja2FnZWRhdGEn
LA0KJ3JlYWRsaW5lXzguMC5iYjpkb19wYWNrYWdlZGF0YScsDQonZHdhcmZzcmNmaWxlcy5iYjpk
b19wb3B1bGF0ZV9zeXNyb290JywgJ2xpYnRvb2wtDQpjcm9zc18yLjQuNi5iYjpkb19wYWNrYWdl
ZGF0YSddKQ0KICBUYXNrIC93b3Jrc3BhY2UvZ2l0L3lvY3RvLXNlbGludXgvcG9reS9tZXRhL3Jl
Y2lwZXMtDQpkZXZ0b29scy9weXRob24vcHl0aG9uM18zLjcuNS5iYjpkb19wYWNrYWdlZGF0YSAo
ZGVwZW5kZW50IFRhc2tzDQpbJ3B5dGhvbjNfMy43LjUuYmI6ZG9fcGFja2FnZSddKQ0KDQpQeXRo
b24zICgzLjcuNSkgYXBwZWFycyB0byBkZXBlbmQgb24gdXRpbC1saW51eCBmb3IgbGlidXVpZCBz
dXBwb3J0LCBzbw0KSSBkb24ndCB0aGluayBhbnl0aGluZyBjYW4gYmUgZG9uZSB3aXRoIHJlZ2Fy
ZHMgdG8gdGhpcy4gIGxpYnNlbGludXgNCm5vdyBkZXBlbmRzIG9uIHB5dGhvbjMgYXMgb2YgMi45
LCBzbyBhZ2FpbiBub3QgbXVjaCBjYW4gYmUgZG9uZSBoZXJlLiANCkl0J3MgcHJvdmluZyBhIGJp
dCBoYXJkZXIgdG8gdHJhY2sgZG93biB0aGUgdXRpbC1saW51eCBkZXBlbmRlbmN5IG9uDQpsaWJz
ZWxpbnV4IGJ1dCBJIGJlbGlldmUgdGhpcyBpcyBhIGhhcmQgZGVwZGVuY3kgYXMgd2VsbC4NCg0K
SSdtIHVzaW5nIHRoZSBtYXN0ZXIgYnJhbmNoIG9mIGJvdGggcG9reSBhbmQgbWV0YS1zZWxpbnV4
IGZvciB0ZXN0aW5nLA0KbXkgbG9jYWwuY29uZiBmaWxlIGhhcyB0aGUgZm9sbG93aW5nIHRvIGVu
YWJsZSB0ZXN0aW5nOg0KDQpESVNUUk9fRkVBVFVSRVNfYXBwZW5kPSIgYWNsIHhhdHRyIHBhbSBz
ZWxpbnV4Ig0KDQpUaGUgY3J1eCBvZiB0aGUgbGlic2VsaW51eCByZWNpcGUgY2hhbmdlIGlzIHJl
YWxseSBqdXN0IGNoYW5naW5nIHRoZQ0KcHl0aG9uMiBkZXBzIG92ZXIgdG8gcHl0aG9uMyBvbmVz
IGluIG1ldGEtc2VsaW51eC9yZWNpcGVzLQ0Kc2VjdXJpdHkvc2VsaW51eC9saWJzZWxpbnV4Lmlu
Yy4NCg0KQXQgdGhpcyBwb2ludCBJJ2QgYmUgdHJ5aW5nIHRvIGxvb2sgZm9yIHBsYWNlcyB3aGVy
ZSByZWNpcGVzIGNhbiBiZQ0Kc3BsaXQgb3V0IHRvIHJlbW92ZSB0aGUgbG9vcCwgYnV0IG5vdGhp
bmcganVtcHMgb3V0IGF0IG1lLg0KDQpDYW4gYW55b25lIG9mZmVyIGFueSBhZHZpY2Ugb3IgcG9p
bnRlcnMgb24gaG93IHRvIGdldCBhcm91bmQgdGhpcz8gIE9yDQphbSBJIGp1c3Qgc3R1ZmZlZD8N
Cg0KTWFueSBUaGFua3MsDQpQZXRlci4NCg0K
