Return-Path: <tim.bird@sony.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8960C0218A
	for <webhook@archiver.kernel.org>; Thu, 30 Jan 2025 19:48:15 +0000 (UTC)
Received: from mx07-001d1705.pphosted.com (mx07-001d1705.pphosted.com [185.132.183.11])
 by mx.groups.io with SMTP id smtpd.web11.3385.1738266485684132209
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2025 11:48:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sony.com header.s=S1 header.b=Iqc72ZMR;
 spf=pass (domain: sony.com, ip: 185.132.183.11, mailfrom: tim.bird@sony.com)
Received: from pps.filterd (m0209328.ppops.net [127.0.0.1])
	by mx08-001d1705.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50UJ5D0V018531
	for <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 19:48:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sony.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=S1; bh=aX1tBEXeg/xlgEzFFQudPy9YujhZj
	IRewYhM2DSIWIQ=; b=Iqc72ZMRc24kpjUf70Yc+nwa14SgCk2fEuKx2ubDQkglk
	IC2gK4slleqUA/Up/dK1gBrfC4jWT24cYx3oYMXP2Wittieffw4gaQHtmUejsz+K
	iXJ8jSc9rY402BDOm4mfn0YP43yPOZLTbexDdGZLMuncvReN2oOGg8n5GIFA3BkJ
	JjODos6cPjRuo2hVx3C0L+DKuW3QSvc5oDIUBodRXFm31Ie+OND5iDLFwdFWXo7U
	oEu2ymZiNPl63m1wkMAzcfulC+TLjckfHfOYuClo7Y8yNSnubiHv8eJ1m4HgF0KF
	7pjj/opVsvikNzvYM1n8KfSui6xmjXweXFwEnwiOQ==
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2047.outbound.protection.outlook.com [104.47.58.47])
	by mx08-001d1705.pphosted.com (PPS) with ESMTPS id 44gf93g0w3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 19:48:03 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W86ukbvxCi7D4ntRm0v7FeJCdLvH8OYhwtRqnaJbS4UMsgiXtAdt0BQ/Ng918Ls+pccQN1WEe7/nYEa3LVJpVW4FusX1/I1Cx6NSBCN30kUuOJsAvbAQGFqCCPn+jTUjjzjqibjlyuibG88MYYl+qetc51KBK7mB+98mmN/iv7XIjxX90j6HFZ5g0z0sozzDtLK7nena1Vw7atp89MN4WDp8Faq8XQHzgOTlndH0Qoy1Ah52xsHWjUoIugq7YIwGimg3Y6FVH98VQB5ZoWBMjuiQqckWLt2emHBVQSeX3MYsOV2nSiRGMo/epEAU6MkM9ck34W621zSGgQ+UOuI09A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aX1tBEXeg/xlgEzFFQudPy9YujhZjIRewYhM2DSIWIQ=;
 b=a9Ig5MWKKnD/2/oXa5l6thPSRr38zwmyRHWvFo5cuS8qlUW6jzmziDlUmXfH1uvb9oxsT6VXbUJbbTUvT6Vg+em0/cUMlP5qaQLYyHMVoFiTcX8KEIZgk0wbfW8BvKyYu9DZM2NO9lH9vM8cc2XT+wHNol0hHm0239VoZJuIz4zVlpr1K5ceGIA+OzsQIPXwMJcdfRn/4PZ24TrwOM6+W2enJgFfE+eKmYzcZHFOtwaouO1PbATSQ/ipQvApahRhqEFR90FszkE2GAzA6yyhedZS/HG4nrx3pg3NVqz48FfaQG4XOHzwHBddO4ZQcFShvXr1BBoPEW5OKEN1W49JnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sony.com; dmarc=pass action=none header.from=sony.com;
 dkim=pass header.d=sony.com; arc=none
Received: from MW5PR13MB5632.namprd13.prod.outlook.com (2603:10b6:303:197::16)
 by DM8PR13MB5189.namprd13.prod.outlook.com (2603:10b6:8:e::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8398.20; Thu, 30 Jan 2025 19:47:59 +0000
Received: from MW5PR13MB5632.namprd13.prod.outlook.com
 ([fe80::df7c:a5b9:aa3e:9197]) by MW5PR13MB5632.namprd13.prod.outlook.com
 ([fe80::df7c:a5b9:aa3e:9197%4]) with mapi id 15.20.8377.021; Thu, 30 Jan 2025
 19:47:59 +0000
From: "Bird, Tim" <Tim.Bird@sony.com>
To: "yocto project mailing list (yocto@lists.yoctoproject.org)"
	<yocto@lists.yoctoproject.org>
Subject: How to determine distro for a YP-based image?
Thread-Topic: How to determine distro for a YP-based image?
Thread-Index: AdtzTCGl8NhcQIwZQYqeZDYCHbcXmQ==
Date: Thu, 30 Jan 2025 19:47:59 +0000
Message-ID: 
 <MW5PR13MB5632F256FE6E4330430196EFFDE92@MW5PR13MB5632.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR13MB5632:EE_|DM8PR13MB5189:EE_
x-ms-office365-filtering-correlation-id: dff9437a-30ec-4556-fe44-08dd41670014
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?pQeg2Tcfxzhdg1FL+b6TBVKo4quZpYQuFrLO3cDo8oNZXMQkyFfrdLaurF42?=
 =?us-ascii?Q?PNIiXqpavvDX2S4eInel1xStyBWnkSqohmcpD5uwJq1V0nNwLT/tSBe5fwcH?=
 =?us-ascii?Q?T9A8DWBmY71XiJop4pGhLB3jSIAcHFT8eh1+BVr9Dr+zCrfNay0uoUthjOrI?=
 =?us-ascii?Q?fhbeXe6nqVDHbY3XcrZ6kcHbCp+QBAFghAAuZ/rUpi6XafFGjNsNfiRVyO4l?=
 =?us-ascii?Q?/7xNiZtXfID++lVcN/UJoiY7gXcAaVdVLHtOKzaOyrFA3B2TAR/FJgIrYw/4?=
 =?us-ascii?Q?+E2uEcFsF2S9XQxfUbcyNPN5EP4kf4x9Cw/aV9BCqc7BCtBmMp0g8gcSLQQD?=
 =?us-ascii?Q?J1yUDk1TgSSyi4IPQwWZ9OUoFNuAp2kJdyhF7DpXK+iTTcpk62zPwYuHX91A?=
 =?us-ascii?Q?KrIoNKC1iDhEvnnGtGT70+aaQDUN4NOSe+e77uujr/NhfOQxFivrhEDkgnsa?=
 =?us-ascii?Q?7Lp8m23N1YfJKLfG0KAPUJr1qFVP0OlJxVFKtQ24q93kwuES4KP3Hpt2KKdk?=
 =?us-ascii?Q?wsPOUFKVgbEhvmL/gB1EO02IUonHPplSkmJAfM07f7pI6OAVrmw2b9Clm9OZ?=
 =?us-ascii?Q?i5N7mh4slJBdF2SCWPD9+t+/zfSy5CSufWlXwTAZ1k/wvOFERKagM7aJJD1/?=
 =?us-ascii?Q?prz/1BsZoKUy21czSELoyMMDPVoL+t/80M/FVbsF08ftwvgAj240UMB82CRV?=
 =?us-ascii?Q?DEyrHyxYE/I6vRnXuAOeii3SNldV3SblJpEWeigGAcUugLEyWEMwjTYY9FR6?=
 =?us-ascii?Q?aFBEUZL8x3107br1dayrFNVSGBzvQclCZSWT9JKnVzGfkvz0UJxGh9GEt3Q0?=
 =?us-ascii?Q?PY4qBTJiT5x5D3DYdL8VQzI0Nem06kDWnBOo69rORoECGgXr9flZMV/zBIRW?=
 =?us-ascii?Q?cPdaTZGUoT9z+0/ztW9+n1FNBOh2mdTKC0LaeExm22Uuiw0sjGEtWwvaaxYP?=
 =?us-ascii?Q?mK9dUOVwRnlUvKiDEmp2rrDnC8pmsHBYgq7qkFOvjl+9gbwi/aajnXefMXis?=
 =?us-ascii?Q?gJsb+8yJocj5ItG8/YIPNmAjqnGtbt0WyYQfxj2Vf7LNn17aokNpkt2+qCsN?=
 =?us-ascii?Q?ltPOe53ztXLvUoYuCue0VDAHjKfa+vZM7jT+0vROuGRZ7tFmyCspSmBUl89P?=
 =?us-ascii?Q?c7MZgzRS1V07jTi0Qe07PZFO+QTm9bvOn4GwRI7Nkv+FxNpTkCvqCft3UhUU?=
 =?us-ascii?Q?fH639/2W0jLZIUqJRejh5uoV8Fkp3wlBFpkikGbUDv3oFyK00XXpun46XV1O?=
 =?us-ascii?Q?/fzIAALQNrPzRIQe2z+YAdf5EmGnFyYWx0Tw4f/mGijPxizFNs9jwYq8mXk+?=
 =?us-ascii?Q?1OlgtngB5NUhZEH3hHtV6eL/dcbCVm+XxZxiaYc/4+btEjktQNmp6y38/+Eq?=
 =?us-ascii?Q?Qwcq3ifcpvh5wS97KHJZsVgZVGKSw6ofdDLOlKZ2HFF4z3L3ReWFxRZq6u78?=
 =?us-ascii?Q?MS5IqRSjBuu6UMgVbJx81us/Wq7f0cS3?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW5PR13MB5632.namprd13.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?ZKgFq1bRap/fqzOEA0HA4eYs2EOZZQ7GCMBJBdNSk7pfZMXiYhAQ7VZFdvtx?=
 =?us-ascii?Q?d/v/5OfpIuu1W4w1j8GPmVLv8Drh/oM5EjoqolmpWgcQd115yFWRyYLKKYMr?=
 =?us-ascii?Q?wORQ3WZDN75QjwsxCsBODC81ICQAdX93h434lhnwc0N4WnmVE6xjoSzOE0CV?=
 =?us-ascii?Q?kP6nqT6GW6tFtOR+TicVakokG9ke+0wVkNHt7JKbMiPUSBqMsTvFMGmwSM0B?=
 =?us-ascii?Q?M2hYu/P50r+IpS756hBeaRJH0Tms3xwiec/AkYSXabYIK7Bz2idTkIfdJRO1?=
 =?us-ascii?Q?B030Si79C6asnqwomLQRqchXVqHFMhvtZpSDVU9FY0kVivudm2tHZQU3bLtS?=
 =?us-ascii?Q?Xdx49XuAZm5Q1u1HJj2Je/PXsd3TrKzqyjvgEcVIsU/7ht6wgtITHuRj7aG3?=
 =?us-ascii?Q?yxwgbDakkleyJvmUSCTHIosV12FAYMArOQorDhkLFcYvnljuqd1aLUFre8ZJ?=
 =?us-ascii?Q?fpgHMCbk48r0HzNI34Z3FCiyGwLhXzghqe8pK1YB7qgjwOLBC/BnziPCJRuX?=
 =?us-ascii?Q?QXs17JCyQqilkdmbSEeu54gk1dDeUzhEomG+zbagP5Z3kiRtmPkJWT7W3goR?=
 =?us-ascii?Q?VTCotDNgvm7doCpSRAsFi6JKsag/Zwz+IsNyF0NOngRo1YRnfQv331eRCUhQ?=
 =?us-ascii?Q?SEzdSlgWbDl1XN4J9Z/mDIQFAMEhehl8lVrxMisj3Nuh6uQWzkmEcknqM2UF?=
 =?us-ascii?Q?+dxyJClcXB/ltcCZMBvURHbT6xVhmGmVmsoY1BS4iCRjplqml4azxZnfo7X5?=
 =?us-ascii?Q?nmA+QPYGyL78BXwrJ9Dz0boC/bNaPItfdyKXD62R/Y/dZUTTozNjFMNKJHmL?=
 =?us-ascii?Q?I88AztZVZdSp8B1ZjinlxBVE2v30Q4ud6mKmuvAg29F6I+sVL81IdzKxs2gJ?=
 =?us-ascii?Q?9mG0RTnKZzk9Oh6m5PWERLCq2I/kgIbNeRVroOdwQ8voMbf9n1oH4Cpteg7Q?=
 =?us-ascii?Q?gnec1NpcAwjnEB/FA/3Kl6ziBnpZazbd8rY+lOAuIq4BwD8/pLdhK9sSgtlY?=
 =?us-ascii?Q?6n3oQRuoKvJZBBPtFJeBviDJjmsJnsjTzQ3ce0RnQ0K0FJz1xnlmx5g7D8ZJ?=
 =?us-ascii?Q?ln2J3QVRO9hk+XXG1rcqlMYRyRIXXu0pprk1rGoBvII9cWTMivod6+CayLgP?=
 =?us-ascii?Q?do4c9y1KQKyDnR3ULt1zjjgabdorg3BTE3hnuBb7byuq7HIxCHlzWGY9jmGm?=
 =?us-ascii?Q?4bzb65qgwTFmqX+AQ0W4rYcdhkMyIZGHZaLvNGdxQO1GkJYvAuGmRvSxnAJ0?=
 =?us-ascii?Q?b+EbkUudF4Z8ZwFDKUHwFlS2APqhvzv1lh6fv1Rtse0T4IZaYm8q6g6GeumJ?=
 =?us-ascii?Q?FSDEMyjvrg4fizvqFlUkB7SFMntez6WnIlNcyeyfdfNxskIHhgcu9t/ASJ8p?=
 =?us-ascii?Q?P5CPTXCi/b/EAx6djnLJLFT9+UXruWpLGfgwnXR/pdn+da33uUQIYk8N9GYk?=
 =?us-ascii?Q?ZJrpcvkXR/RwqBil3NdSrP1WU+sDii4GqSwjAlOjrrIotw9pGy8IzSvZ04na?=
 =?us-ascii?Q?GZTleIu51wBupcRt9WoLoggKG/2Mq+YgKnkvG6uQYkGcOL/GstHKo1dsBjIT?=
 =?us-ascii?Q?7hpuvLvw8/OF1Sfh9qw=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	DcqxSk1OFtijdG1MmWIX+hw8rMIn7jzfCAT/mMpmalCRozAtoEC574sC9tLDt71r6s8/EpDNatUSEk4ucqnLSovLY6Xj2oN/xLofq1blq2O/XvoWtCGnLrTK9Nkhylzvj5v1xoE9tVirwcwOaoiR66AQKc5BwJXxWnt8OBgVqg8Uof4tFnfK8Ynyj6qcPZPAyifgNNQpPABvzzhp0LgOQWFAtT7So9lehY9dEOutIKfXMvxEoFW6tEHJetgHjL6p3h1b7ZFD5v4SCnJk85aM43anqAuOgHw8P89iZzhIG6DfAveDWqvMiFZAwW76+2TAezmvHSqb1mOu5csEg0iPhG7F1xHOll2FTIfRnckg/3XhfaPEHvgCBUFhk+ulOYfVtOXBNOFrnCbB6dpl0iehMN/Tyw14IpybyLLFpJGj2pnfuifXmytQ6bq8RvE+DErKJWL4Mq08tcDr7SD/xWJDstTU2gTJw5KptvydP7cERFFUUj6JbsB+6EZyXWx3NImKnZbImgltBvc9Q3Fmt7P/PSrCUjXvg6WRdQVj4mFNfQIT0yaFLTKqawPz8vXdeO4UWLQLaey14lzCMLC3WatD3kyXfkoFs0BjZIkkNnJsWeoPuj3VaB1MpMPoADbA95HU
X-OriginatorOrg: sony.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR13MB5632.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dff9437a-30ec-4556-fe44-08dd41670014
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2025 19:47:59.4830
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66c65d8a-9158-4521-a2d8-664963db48e4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nrzTGyrBqSix20+6k5JmjWxEsW7mEY83OYysTuVLXRZylJ0dr1OmgZE13leqZmPI6ClKObTFTJLcX54OEUfz8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR13MB5189
X-Proofpoint-ORIG-GUID: AgE059nl9b0mKj-4SJYW35AgcC75BbbG
X-Proofpoint-GUID: AgE059nl9b0mKj-4SJYW35AgcC75BbbG
X-Sony-Outbound-GUID: AgE059nl9b0mKj-4SJYW35AgcC75BbbG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-30_08,2025-01-30_01,2024-11-22_01
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 19:48:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64683

Hello YP users,

Is there any way to tell what distribution or bitbake image name was used
by looking at the contents of an image.

I recently built a distribution based on Poky,  using 'bitbake core-image-m=
inimal'.
I had hoped that I could see this recorded somewhere in the image, so I can=
 distinguish
between that image and another image I sometimes use from Texas Instruments
while running on Linux inside the image.

It doesn't look like YP populates /etc/os-release, where distribution infor=
mation
is normally stored.  Is that right?

Is there anywhere else inside the image where information about the distro
being built is stored?

I'm relatively inexperience with YP.  Is there somewhere in the build where
the bitbake command that was used to create the image is stored.  Could
this or other data be used to synthesize an appropriate /etc/os-release fil=
e?

Thanks,
 -- Tim



