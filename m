Return-Path: <tim.bird@sony.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC3D7C3ABBF
	for <webhook@archiver.kernel.org>; Wed,  7 May 2025 17:08:54 +0000 (UTC)
Received: from mx08-001d1705.pphosted.com (mx08-001d1705.pphosted.com [185.183.30.70])
 by mx.groups.io with SMTP id smtpd.web10.1258.1746637733491658388
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 May 2025 10:08:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sony.com header.s=S1 header.b=U7gzagzd;
 spf=pass (domain: sony.com, ip: 185.183.30.70, mailfrom: tim.bird@sony.com)
Received: from pps.filterd (m0209319.ppops.net [127.0.0.1])
	by mx08-001d1705.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 547H8o1e021915;
	Wed, 7 May 2025 17:08:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sony.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=S1; bh=QbABWEKOBHf+vC1DD6LjNkYQVKOx3
	f7H3yq8y0KqetU=; b=U7gzagzdqFaf6i0505OiztL2dx8f4cEI0+5iRWFbyecYX
	/HN7K9g5WTr7V1rcUNO/umS8IS73htaCDyxmAgibhHEQlSc4jBQ4jx5iaClvhPjw
	2nS7oEjDw3pPpe03tRDAU8rmsgWnApqvUq3bnB9Cx4NNtc2tmwNTEkUIxZtmK4vX
	OZsV4jSZz3IwnBVNsxbO8RT/u2q6tnetEgSEXG4Vqmv/Z4JjDPnuojZCrWEZvsk7
	u52SqBVHyCiSZwJf4OSJaIfjClqatn2XaypCX2Bo3VhwpZuaebAEJfo1THPkD4Sd
	OI8lBl3WErKxAwHspqpfoM3F4ow3JRicVD0lWJE4w==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2175.outbound.protection.outlook.com [104.47.55.175])
	by mx08-001d1705.pphosted.com (PPS) with ESMTPS id 46f5vbsnru-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 07 May 2025 17:08:50 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jh7pYYdSJwFrRjY8+tu09A1eWAB8Q5/7G7tCgTrlmXXHpVGYIghL2UPkHV3r6aJZxJOdp936pzK0qtPcTRk8QyJabzfoAhDB2kjBqN8hH3yP33KdoRwnzoE0QR7YntUaQLdegYEKguPawvt+RJQtVjRY59O4Knz+lcxUtv7cy0h2KiyzmrGTiqhdpsD9pzoxY8zujeJ6G/nr1gbelSVlX6ZNp2RxiSuxuVKm7nOjW2WGd31WjM1w+k/BqxVzKs1FyWHDzCvrGBll4L8hi4FWYvspAE0noBb4uR6IFoT+nrY1Vl1nZGXyWh+t78qUxZv3XZxJHiaWMrlNsLRtrdyuqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QbABWEKOBHf+vC1DD6LjNkYQVKOx3f7H3yq8y0KqetU=;
 b=JSU78VDfncTVzlofI6JkdOALE0+QqBdCqQ2Q/t0HCdDo5qMX6pnC7Oj+x5M1zWkk6NZR8mwK8jVwRsX3bOr6VlzCQHXYel8kfpoahh/2CM2RD8xCCOY4ltjEHXH4GA3Ysrw4R8o6zHz/oDhQq0SwsBvubQlsRA/3y6BfSNAndAT1RvrX5BJV+azcFO9/rHC8xHx8inFCwEit8OaPhPON3JOW04z3BwjlfB5C8QQ2HyGEatJBWZOylDiv1e0SeiNzaEg7+0uFxmb5pB9LqEe1Xruc2ra9JmVVlrQqF+bv/uc3C6XOCg/acQzoWzRvio2WDpX51wnBOa58Ycroljv+YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sony.com; dmarc=pass action=none header.from=sony.com;
 dkim=pass header.d=sony.com; arc=none
Received: from MW5PR13MB5632.namprd13.prod.outlook.com (2603:10b6:303:197::16)
 by SA0PR13MB3920.namprd13.prod.outlook.com (2603:10b6:806:9c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Wed, 7 May
 2025 17:08:42 +0000
Received: from MW5PR13MB5632.namprd13.prod.outlook.com
 ([fe80::df7c:a5b9:aa3e:9197]) by MW5PR13MB5632.namprd13.prod.outlook.com
 ([fe80::df7c:a5b9:aa3e:9197%4]) with mapi id 15.20.8678.025; Wed, 7 May 2025
 17:08:42 +0000
From: "Bird, Tim" <Tim.Bird@sony.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
CC: Alexander Kanavin <alex.kanavin@gmail.com>,
        Jan Kiszka
	<jan.kiszka@siemens.com>
Subject: Status of bitbake-setup and kas?
Thread-Topic: Status of bitbake-setup and kas?
Thread-Index: Adu/cgDGCju4EI3GRoCrnROcTBWLcg==
Date: Wed, 7 May 2025 17:08:42 +0000
Message-ID: 
 <MW5PR13MB5632A56007A8DF3CFD6C3CF6FD88A@MW5PR13MB5632.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR13MB5632:EE_|SA0PR13MB3920:EE_
x-ms-office365-filtering-correlation-id: e4ba541a-3f9d-4b1b-fab2-08dd8d89d1c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?Ado05Eqxij986dUbUw9/8JFyQbPGn+V7yJXrFUMvGU6vimUa/omeqduSh6Z7?=
 =?us-ascii?Q?8bK04H6txydBN87tbSpSa9EWTuAPZZGHFSit2nM0T/MRd6z9MGHPp0u8iqJj?=
 =?us-ascii?Q?X1Ak26eIfbHWdY6RhbtoWkDRVik5XrFEIz6B3xHHmLivzZJ8HoSgOYk2Enq2?=
 =?us-ascii?Q?niAevFiKyWSln0cqOTYNPB8RmAZuptLR0x/q2YzPaBNly1YwMXtCPADBo8bI?=
 =?us-ascii?Q?BTWCETeNWxJ67PaghJVJF/RTRQB/afVyiBfxCRq7XMUN8132EA9GA0wxul4o?=
 =?us-ascii?Q?zjaTodAWsYnnPFUjIp5ygKGPV4Wg0FE4IziD8NZqTsgakyYsd3KrnS2YCUgh?=
 =?us-ascii?Q?PmPaMXzOSkG92NAKB8N5dDyRLNqC8HTqJCYgb9Q/qz/L7cnaDzCRPMocgYA5?=
 =?us-ascii?Q?bEwnvxzqL/WjoTMV814jo8w2iXEER9KizdGCJYSdWt2r4AAbIZBFt2QNyX/Z?=
 =?us-ascii?Q?pBTK9wEseW3NPom0ZWChwnpWDVpIPencaRluEkN7Eo/hBo2oo0I8oLZsTUv9?=
 =?us-ascii?Q?RZAYXhoyLEAPzPvqKUyIhFpUgnY8GVlU4gmPcfocWC8Jk9LmA2qGnKaqkys3?=
 =?us-ascii?Q?RbpgOpjKglFg3WKOX1DikqyzHjwzXo7eDC2rdk4LP3Gy84PHNQmGGH3fXVQt?=
 =?us-ascii?Q?uiZqZoqXX4WP9y16bDsB4/G89cpxORBAts0056Gfeg1sLK4amqxt4Epq5CpU?=
 =?us-ascii?Q?6K79SBBTXOQfWi+b3qkd3kiKcehTqVJhSaQbSYNpZi4At+W3nGNqcivEwo8S?=
 =?us-ascii?Q?WYM7QFhJGLD3OiUaQCIJRW0asBP03z/p+RS5Zp1M7/DTteyd8x/yZzt9wuL1?=
 =?us-ascii?Q?2GE8J8Ychqsbs990mEcnH1WfK+THUcJYjxyS9V2EDQryWtAUxqL9IACSN3JH?=
 =?us-ascii?Q?+sYThwKSHWMskDplv9iW3585oKz4z7Og1gb0wr77b+n4b5kr6gp0M0LwKU33?=
 =?us-ascii?Q?qkyB94SXYQGemgTY8hbxEWYRBeotetiiMUrnJB6s0DpKXTMVui8cxvNKP4Ad?=
 =?us-ascii?Q?VYkU+yTGu2kYOKHAOhFamPWJ4hPSMR+a1SXawtma4plj7TTTo7pdwgT/PiAE?=
 =?us-ascii?Q?L/m0mdHBvaQghQYzfoUwWsm1hC4q5inTrKrxxNzuomRZ3hpIIgTPNEmcri9L?=
 =?us-ascii?Q?9R4HCCMZpkKKg3WbDnEjubburFyDs34JZD+U1eW4gfCM7mZwOIZ+xYw+r1v2?=
 =?us-ascii?Q?VPrWyB4iw4meM7TQBIgIp9Jr5NFpKHY+fuM8kYZI7PJ6i6KSnqpacPgAtp2A?=
 =?us-ascii?Q?+KbAUdHWtqEhnVf52TIOCaNV5yj/hzCOZn4LBiKM1bo7FmTJHkbcCTxhHxmc?=
 =?us-ascii?Q?ON2VdLKxSUdHr5rAV6nkzMuHhNg/EaVYc4H7z/l57xZFGrpw2j57azj+/nwE?=
 =?us-ascii?Q?Y7BGz5rQXWr7MFRJ8sSRRCmZ0B/+FJtoMsaoua3nhfFyRK+o4sQA4XBvsj7S?=
 =?us-ascii?Q?a1hml4OhHjM=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW5PR13MB5632.namprd13.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?0X971/i/nt/Mn8eR1U87hbH55UDFwm9b6B1t9FCem2f3DWeKYn+jgt8N+WlV?=
 =?us-ascii?Q?dc/DvpNuBeAjxPGBEawAHtylNmXRJRmLKbqOLm55F2REmx2cpHprnJQsF+N8?=
 =?us-ascii?Q?5Mhdey/Rg348M/0sTo5YBtn8/q+hAfSCpqec4V5eOV0RWipEv7b86K8uje42?=
 =?us-ascii?Q?4lksLd8p4cC1ofq4YOdfYdM7P2z3zCOIqqpGqPlRaVDWJNAMyaYaD1xtN5Au?=
 =?us-ascii?Q?yU7tonFlyIeHDuwcXu+8argPqnylCNU1O7WHaETlF+/NRfMsuOxp0ZUNu9tX?=
 =?us-ascii?Q?yLOxELSp1y1sMIALe9nH8QcPT3CazZddrtTVKRzEKJqes7uK1eIhiPVzI+6G?=
 =?us-ascii?Q?sPpZkbKr8wNLxh98pNTYGs94+c815y7gyLFysP9qN9DL9GQpuQXKcgILrQpS?=
 =?us-ascii?Q?ibgEWOUOQnSVFg2PP5+70zvJzMCKmLHKQyqY2vr3CHxmkbYwqLlI6kWUjmG6?=
 =?us-ascii?Q?ZCXLtItGUiwbyZwaFZm5LyxUF7j9IS/ROc6uYoF1CpUS4V1LkuM5gPvpZUdA?=
 =?us-ascii?Q?Jb02hWbhiLP5LPyWfFB53gjC5TIu1zz/gZpzyUWfmN7mb8J2TlNsk9T6+xrQ?=
 =?us-ascii?Q?d9q3KzWk8hWpLk0HDiMotW6kOdewuVTThrHTi8SDXPYxpt78NEV37E+CtwLE?=
 =?us-ascii?Q?PMEy5w6a7xmTmC2Gb0R69dWAicKBaG/OlNAiduuQhy6ne822sDfFrTOzj2MG?=
 =?us-ascii?Q?JuSUkGQCmaszmGjaR3JxiuO/Q4i+IrD1a9EvAGwVbft6eE88BsTnz2drgzrv?=
 =?us-ascii?Q?trliuaMSHC3VzpxsT0pSQm10t8haFxfXpYGm5bZBz21q5AYHKF3/i1Qkg5qK?=
 =?us-ascii?Q?dJDaTEM8WH/dY0gG9tSCKAOdQskhchiY6CMxbppE+W+hD38e/HVSl1gppMMg?=
 =?us-ascii?Q?pvvxPNXzT9kwB0Kx29Vw+4thIIJ0OXcDxg9FZPaT0VpXzfHejC/ASWRN3Y9I?=
 =?us-ascii?Q?Q8uA6uwThhfJwgh9txMUh3q5s+j93H6E9Hgd85uieUNIwuQoEqlA1jlO+257?=
 =?us-ascii?Q?e7Bm5H8ugTiSeRVR558b1Fl/Hd8pxIsroTggkXjgu17CiYLTUHcHrvhBfLqw?=
 =?us-ascii?Q?y+si6AZYwnQl/XrDbAxmehYIN6wJxXnUiJb5YU7IdlZwgfN2EBh+7/ddnfmk?=
 =?us-ascii?Q?N/tDj6pIssQyDOGn9KMAueYeFSIeRs+XgoibrwaG+dfCyUl/vDKpMNtOzkMo?=
 =?us-ascii?Q?JmC55rW+L5pUbKc1Rq0JZXifUXtqOXSVTBpnmWUkVmLYZ3ZBQkuPQ29ClSKd?=
 =?us-ascii?Q?8r7s4hJQGwHFpG4EhEQWN2aJ8RwrhgjGxC3yMIW9AcOq9hjwXMYhln2K2iN+?=
 =?us-ascii?Q?OYjRng/NepCghNYslorIDeq2erSBIlLCCup+TkS2oA7+UTVbkbuMLm13Dkoo?=
 =?us-ascii?Q?Z4KsrQP0xLNG4bfvhf9DN5pWV7rXg1bO6Em8EjaG5CndsSjecKgCDJ90o18C?=
 =?us-ascii?Q?lQmLt7yoNOyNtAAPqp0EcA9hpGW+SOlToJNGj8jSM28RLdKvAbv02mWbpK36?=
 =?us-ascii?Q?GaT5n2m7eLPHhaGA9YgZqkiAo6A3duwbp1fOcXpUpwYGPwAB0j39y/4ms4d2?=
 =?us-ascii?Q?6wCpAnuVWU0JTVnzFtM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	x3KHl6rQADkYuZ3QwQSzkoggh6q6L72IW2i5p5j4Sl3cfA6YJhXUPBBdHO3AWshBNIS4dxGivtlRsdtkEidXrDNSewZv+fKivw8CoVdXeoDpX8HljkIGvw16EXozAnEmZ9dhKg2zp96YgGpXHSvfiLwc2UZ2D5lWg+KDF4FAyZ0+2oh+8rJRjMjGWrwKH7HzFzjdeFyarvl7zeYcLdTXiOv6YyYPBp99ZJiIW0Afs/UFPAmcCvHyGGxZca4upgu8GbTNVWq9Sn7cm03QAa9Lqc6RcKLaqEfuHQTjWwP7YC8rSFldPldGutDsRAcAm58y1xapVXOS42vuQFcovp/OyyBH8/oi/Wc6s5ZRWxzih/JM7ljnSXvWOux+BIFrMWaeajs7Pdj64lB+kHQgXu6LGnV3XrDsgUpqsVO+2aalfPmJkns0LqkBBDMbpiqRGd8dcDXxih73GVBHMnKFjuidFaz1FLnD/yHb8FmGESyBmy27QwW6EWma9JRZ++gcWrs/Vm7x1J27IRCTtwrvlRzas9BNTBJF1jg0nGOxIy/Ubc8GtYwG7hLEc+NEnmV3l8tWVouLps+oryrbL9qjn/IPNFoZmwxtLjOcE78FPUbXhpAj36nuugf5zHY3g7Q7/lDC
X-OriginatorOrg: sony.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR13MB5632.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4ba541a-3f9d-4b1b-fab2-08dd8d89d1c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2025 17:08:42.5745
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66c65d8a-9158-4521-a2d8-664963db48e4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iQx+DkSgPTUEPp009+m10/2+dMB9MJy3snnnPdp/31entmIo28J0I164JBdLssd5JmNjz754uVz5wNtV5BVmNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR13MB3920
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA3MDE1OSBTYWx0ZWRfX+mkExoj+XPk8 +fRQrGOTaNgy8x7rqiTPaLMyTlujGUzZb5IRS6mheJiQv+ayDVICOZFev4FhK+z3EzhCvLdYhTL avWqV+zkW+Z8OIFgqjf+nK8PuzRuBVN8G6jWBKa2BneLmOnQEnY3HGjc8/cAAMAByZPJB7M2UOS
 vAm4uBQQttWADS0YYYCFiKcE1dbFUkxeOs1NfvKvHHFXBeqirGwwwKnlFilCSovIp4w6CuCm772 6GbeJgGiYkXj9wu/RGR46ZLDOaovhN4gyFbVid84dHZsD7AQxCAgKXxR+UJ7v8dXfQ/dThQXqxT IoZe8xa2VLAw/bgG8Uv5LAWeiL1dA4LWXhtiBP1wbIsQpJyghSMSQ6+Y5HMFPAcu1G2afxhHhd9
 vljgP774+k2+iIrS6XSINNYRedk4erh4Vg1toYoXHU25oJYD8Hs4WUCQfBKbz3R9emoMsaXF
X-Proofpoint-ORIG-GUID: D-RT6kCJ3e_cjkkgjNB4__prZ90GaJXj
X-Authority-Analysis: v=2.4 cv=LumSymdc c=1 sm=1 tr=0 ts=681b93a2 cx=c_pps a=F+2k2gSOfOtDHduSTNWrfg==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=xR56lInIT_wA:10 a=iGHA9ds3AAAA:8 a=gDEh8qciEmTiBVdQafgA:9 a=CjuIK1q_8ugA:10 a=nM-MV4yxpKKO9kiQg6Ot:22
X-Proofpoint-GUID: D-RT6kCJ3e_cjkkgjNB4__prZ90GaJXj
X-Sony-Outbound-GUID: D-RT6kCJ3e_cjkkgjNB4__prZ90GaJXj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-07_05,2025-05-06_01,2025-02-21_01
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 May 2025 17:08:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65295

Hello yocto developers,

What is the current status of bitbake-setup?

I'm basing this question on this email from January: https://lists.yoctopro=
ject.org/g/yocto/topic/bitbake_setup_where_we_re/110666239

Has this been integrated into the upstream yocto project yet?  Is it on tra=
ck to be?

Also, what is the situation with the 'kas' tool?
Will kas be submitted for upstream use?

Is there any relationship between bitbake-setup and kas?

Thanks,
 -- Tim


