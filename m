Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85ED9E77188
	for <webhook@archiver.kernel.org>; Tue, 14 Jan 2025 11:10:24 +0000 (UTC)
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.108])
 by mx.groups.io with SMTP id smtpd.web10.41830.1736853023154024306
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2025 03:10:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=dkpW7Ms4;
 spf=pass (domain: optimeas.de, ip: 40.107.103.108, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k1nc1WO++WhDaekYnmXHrM3H6sGH2pt8IyftNYBCtVUMfiXy/aR0E0Udj6KMdVZSLMutungcFgdj38IYgYII9bY/STQ32gxB7A26q++Lyn61mDpeRNj551P+S4fQ4zuzjtsy5wNo9dDOL8K0bUYqZPODuvJK5fwgNus9M0Rz/1zx6oBGDQVAhUfU8nQV0juHvqFZAXqbg73S0QKY2XO/zxeSdUcdO2hvh0UUmFhs9udLRt650fyrZFSa0Y6gdvvApa/rujjrV8358IgvqsTf3s07ViPhSN5l6Tr/ZlrQnhSNuOicI9hPgqKw5tuqrYQbwqe4BPE8KrCf9OTbsyREpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fDO9R4eDx4i/jVcjTMwD3TIJ1gBYbflfEss+nUr2CUU=;
 b=ePFER9MBBTAaLPU32EkiMSe9IVNLAKHVRAx3D4aLNUzO2oHSMkJjCH+/fy9HgjyktsJ+kkEPFxoOgybNhLnyU2Y7lPh1kMfer9QxayfXKdT+8UN7sxVNNyP6sl1LCBKoVMCUsgjhOmcAKvPD58P5Dx707V8+2go1fSUij8TQX+t50wq+ihzN4fax9b7GqXwFcWPIyPzVSuys/zIWve1L/o4xBsJkVUw+5SFmrOX01zl08UhPkdAIk5jgjI7jkTJYlCnR6kFYDNn/I9x5Sy03ejFI6vnw0lAarq3w93jwsvqGAenQ4E3bFA0p6629wEW82+NYvz1J0qkM+lB4+kdIQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fDO9R4eDx4i/jVcjTMwD3TIJ1gBYbflfEss+nUr2CUU=;
 b=dkpW7Ms4kisDfAYLs+pQmnDqq8Y+8QP6Uqyef173Y7uCdqUxlWCToo9Si8Q1V8Jb6O4s3twbM6UR3DoKY5mTu7rN8W4ElOJtcmtt0+fN9gmD1Nhl009Db/2X2hjw2Gu2rdaDQz/9iiKq0wU3XWtmnWkSkymBA8T33hHMKH/+iGg=
Received: from PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:28e::9)
 by VI0PR10MB8598.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:800:233::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.11; Tue, 14 Jan
 2025 11:10:18 +0000
Received: from PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f52f:a369:6e49:d9a]) by PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f52f:a369:6e49:d9a%6]) with mapi id 15.20.8356.003; Tue, 14 Jan 2025
 11:10:18 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: Quentin Schulz <quentin.schulz@cherry.de>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: AW: [yocto] Strange shell behavior in conjunction with ANSI colors
Thread-Topic: [yocto] Strange shell behavior in conjunction with ANSI colors
Thread-Index: AQHbZltBaQnkOGiaZ0aOJBAgDoXtcbMWDyOAgAAMAkc=
Date: Tue, 14 Jan 2025 11:10:18 +0000
Message-ID: 
 <PAXPR10MB52771221B2ADA5D6DB335CFD99182@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <PAXPR10MB5277125A34E148DC166EA5FA99182@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
 <71f5fede-76d7-478c-b205-27ea803e2e6f@cherry.de>
In-Reply-To: <71f5fede-76d7-478c-b205-27ea803e2e6f@cherry.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR10MB5277:EE_|VI0PR10MB8598:EE_
x-ms-office365-filtering-correlation-id: ec4933db-4fe6-4fb4-fc94-08dd348c07ba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|376014|10070799003|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?aWidNYrRJqdmawPnG5Da1Y8cNbpz9oGFEoRLJvcKxCsfSzIX4OrHsI/q?=
 =?Windows-1252?Q?xO4Uuedzdo5HejNNNdMKg3w1pXoyU/+LoygNzS3GE8GYB5019lPqfued?=
 =?Windows-1252?Q?MtPAXDUEDMZHNEFDwbdFGJZHb3SOztSPjCTSxrRLm2XLrhFSENLboDsr?=
 =?Windows-1252?Q?vlLyq9HEr8dvCPqmlX2us7Cp7/cSMiGJJGMSfwF1INHuY0nDLgMVNzD8?=
 =?Windows-1252?Q?d9QPkVneDnRC43+ts8YvwzIz8C4qAmVUrrTG49ocsEohhsRZ/Hty9+zQ?=
 =?Windows-1252?Q?B0K9qAQll9nX3QCRE76mlmwzXOPEztwiO2ab+9sx9+9aAEfwpB1Ev9gS?=
 =?Windows-1252?Q?rj8yHS5GTZaPrXLL1OpZq8mPgKrUPcxGstjZ4FA7u4i8JDCeCvBA9uzL?=
 =?Windows-1252?Q?Pvh6DQAx0dl6OijsHSBQNiGb00ajQoyNqaYcGTnaMi7YffAk47oblJm5?=
 =?Windows-1252?Q?XhW8zOv0QlamvA888EplFy2sOqSAAel+yTeKAI5dCZ6W29bcgsbNc2CE?=
 =?Windows-1252?Q?x8sisCiOYhJ5Dm9eBDTOUnAz+AA/OnPkKyje6jGmlaUeuMKOWbheWFTk?=
 =?Windows-1252?Q?omEvnD/IcgnFrFLDbmjxUjUxUkehFFhM7ZVUZDpszYKLQFfUmnK9x5A2?=
 =?Windows-1252?Q?7LutDYW13RXBO9KRi6n92JjnOGF9Y/7NJecxhYZr1QAbec3BaKIwSoVP?=
 =?Windows-1252?Q?VbNxsr/OmhY3o9Tl/ud+NsLsUVeZ3lJ6urxylOEh6qixiW7gRWBtk1SC?=
 =?Windows-1252?Q?5ShTBXbfzu3YqaBIfzJj/4DC699LdX64goQD/0a/3Vg2WpgXivtTJqjU?=
 =?Windows-1252?Q?r4WrUy5LeQu6FYWJbx5w92LbU23sp02zxK32xsz5mv7+A1NsZKS8C1Xp?=
 =?Windows-1252?Q?oXkg2Dn8RWpr91MmrGVigKdOvg7gIfpgK92JB/7RWx76mS/oqKfynx/j?=
 =?Windows-1252?Q?qq5Eyb0GzVWMOYokNKpG+ZvFgT30W6V0EYHn63yu+qPZwLnxsXyJrgT7?=
 =?Windows-1252?Q?dl8HG2gJHCmVnp6bPYufYbUhb/Ogl94V4bN6ycgL/PdQcJnV/zhhh+9l?=
 =?Windows-1252?Q?3ABFL5UnCkpMzI/UiodGUazGWG+O07PHogfSALubzgy59dCnLEBxpTBV?=
 =?Windows-1252?Q?m1t4/+kvUjjYgdPjc8VLZsfoZeomwLFpmsSR9whzoiM3IK5S9JQV98uM?=
 =?Windows-1252?Q?l36zkDoh2t8a2ae6CtQaeHxAkMpR5gOBgWgrMg8WrmHfmLWuJ9WN6SDy?=
 =?Windows-1252?Q?uwzYrGckJs6S+pfLMjwaM+PU424Ix4iJEgGqM9nnpUJAPnpOf5vj4uDo?=
 =?Windows-1252?Q?gpayJi0Q8mxd/RVjYcRpS+vmHXiWQQayWVojrZeJpTt8+fp4C4Nx+03i?=
 =?Windows-1252?Q?2+9TVQKQ+qRRwG9zw+ch4W8BsaMqeGYbEeNKnTy7EDsWys98htW/YSOC?=
 =?Windows-1252?Q?BE6exn+HFjPAlRJ8PgU7whOteG/m2OibfaE9PFLCuiBlauaqxwpJpw98?=
 =?Windows-1252?Q?Mt7fTbyIGYtzpLHnux3thfZvwm/er5qMp8acHwjOs1xGiB4UOybrMYS+?=
 =?Windows-1252?Q?8asDpTmsupmWl0lt?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?/OsNTq0uAWJaLF33qpr7PpOQcHdQGcoikFqQSgeeiGXeuFzUalde73Vh?=
 =?Windows-1252?Q?xHSPWCud37pIDm/RfhPc5EvzLH4ZywaqbKnAK0LF3OJrr/lGTo0NZXy4?=
 =?Windows-1252?Q?dvebJKoU5/liLGdHuZ5Q0UJo2V2uUNEjN5ORgLrsxIte60kp24G98Zl7?=
 =?Windows-1252?Q?3PjnMBjx+bT9edR+cLQJv5tQ30Sv1ZqSnMd4wLvsovbfoqbU9Ox8i4RA?=
 =?Windows-1252?Q?q83Yq6S7p6LhQSVPjUJA+k8CbpHYy/E1PWoIaWuWU8bpkw8wVoUlPh83?=
 =?Windows-1252?Q?5jZZelaNTFdyLhJhVvj817kJfD2V/DD/7qFqrl7CXnvtqbyAK1MOjKGh?=
 =?Windows-1252?Q?4jYmgQe+l7QzHzlpRcjUQMO2lP0Nk6/bfo7+Vp+2IWYJFQ29EZPK/8lK?=
 =?Windows-1252?Q?aeiGLM64aQ5+hM5booqZ+QDvTxv5NcTcxRNE+gbTAXb8YI+qNh0Ts4C6?=
 =?Windows-1252?Q?DVg1Rlj34YuZarMxwRFyORpbB9HGZZ0Fnd8T8V/SHPZqiLbMGCO3Y7Vh?=
 =?Windows-1252?Q?QMYm1p8BhfHa5OfQoL9NAijt1NlGDOhsQCg2NFTe5XTbonGHXkGO96BU?=
 =?Windows-1252?Q?/jISRMcWVrvv+NLd9nFSX0pkTOelGgrV0+xOZ97jMHjtOjcSWAtIW4uM?=
 =?Windows-1252?Q?DXcHSXfP9+M3tYPUloGP/oGSKB3gXq+QQ2CjerorXkejGCLvIyWO3Yf8?=
 =?Windows-1252?Q?QovZ+wnwXn4ibD14tPMvW4kY5BcKZjvKls4NSrXOGjR0QYygYdb5a+wj?=
 =?Windows-1252?Q?AKK+5k8Sdmr8nXtI/ULaVc5n9Xy32J6Et0TCIy5mMpgMvJwC6XtjTlf9?=
 =?Windows-1252?Q?IVLH56ci1dqriEvq5iXlZERTvPpvAs4Xdgw/fduUuKhEZvJCv8fKwvs9?=
 =?Windows-1252?Q?2mTYG/WusgX74SkmUiPiSh76mRVDkLAUfSRh5TRygo90wRAYxdo0qYvZ?=
 =?Windows-1252?Q?LywDz9JpmEB+QFiYMbczsuqbo8lCp8I5b//ipk68aq7TpUfh98CgdfHV?=
 =?Windows-1252?Q?Eds/c+TxKZZy9RO7C/EUdtkcaFViKFvQfzMcf7fltXxKEkJuk4a5mUv8?=
 =?Windows-1252?Q?y97PkddV/4K1Tj7cQjxtDGQH2LIdYKTB4qX+MG7SRt8ZToAJC4tmM/nr?=
 =?Windows-1252?Q?5oahsa6VooKGLC0527oCbt+3kEYgUQKIQ75+4+FOu7hNoOyKVGgtGBnz?=
 =?Windows-1252?Q?5F0o/mEomSAZ/tMYSzQ6wxAazFnb7M57KENUO6PpSMQeL56p70PgeM1b?=
 =?Windows-1252?Q?vMDJX/2NxPg5rt2FDTPSkK7utxo0rFANdZ2pyeTsLTD96evk2Id545Y3?=
 =?Windows-1252?Q?bfSHV2U80j6caFGahEQuBlMZeHj3M0kXyzC7bnlUJCTlNj3kari/lTp7?=
 =?Windows-1252?Q?alin6WkX6Qc7jeSJV3N2L2UgQ+AoZEIBtyqlsJrBxB8nbycpkS6VlTc+?=
 =?Windows-1252?Q?FN6E/t5oQ/LAFpkcw57UJlNZ1ph9hxXmTcsZN/cE4oUH0jQDtr+624pQ?=
 =?Windows-1252?Q?uX5++bf3bRWub220P0gO3IZdtbZM7Nj77dEWt0djUu9cyIN5FA9E1hKO?=
 =?Windows-1252?Q?bL7cfcOuGfIA+9gXVXygPzhyrQLuO77hpwUBOwOH8DEhjEIwleareYtY?=
 =?Windows-1252?Q?bgFlBJy6BZcsc1wR0AhFSsF3ASXzAjxMmHX7NhEGTDQY2xQjpMxhZSPK?=
 =?Windows-1252?Q?GwAZvQlwt2kCabmCrbjZ6+9IsvxkIIi/T2RErxigzOmMRmUk/M/g6neT?=
 =?Windows-1252?Q?7Sp74tD3vzjGO3NWwe910gCnYJ8BMRzryS9pqFD+?=
Content-Type: multipart/mixed;
	boundary="_002_PAXPR10MB52771221B2ADA5D6DB335CFD99182PAXPR10MB5277EURP_"
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ec4933db-4fe6-4fb4-fc94-08dd348c07ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2025 11:10:18.6117
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tqXmbJ91KfSHUivvuzE/MXbrlJ0G3sKSb7ptKzaOyOzpqRbFr6+PX0MzNxJC8mKuH5ZQHOPQsbwJJ1gGpRP7S+jEpHGUPFEZX04m8J6wKeQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR10MB8598
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2025 11:10:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64548

--_002_PAXPR10MB52771221B2ADA5D6DB335CFD99182PAXPR10MB5277EURP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello Quentin,=0A=
=0A=
Many thanks for your tip!=0A=
=0A=
> I assume you are running busybox?=0A=
=0A=
Yes, we are running busybox.=0A=
=0A=
> Does that work for you?=0A=
=0A=
Yes, the escape sequences have disappeared in the output, and I no longer h=
ave to end with =93q=94,=0A=
but unfortunately the whole screen is still filled with tilde characters, w=
hich still bothers me a little.=0A=
=0A=
Best regards,=0A=
Matthias=0A=

--_002_PAXPR10MB52771221B2ADA5D6DB335CFD99182PAXPR10MB5277EURP_
Content-Type: image/png; name="less_tilde.png"
Content-Description: less_tilde.png
Content-Disposition: attachment; filename="less_tilde.png"; size=10427;
	creation-date="Tue, 14 Jan 2025 11:10:01 GMT";
	modification-date="Tue, 14 Jan 2025 11:10:01 GMT"
Content-Transfer-Encoding: base64

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
bfJsJ32eQObl04EnnwhF21cSxY18OIkOnv9s32Jy7tXFH6gyP2rb93GQ6RcHqewgel+280q5Vn6q
/mVftif6cV95Lvvm3Ly/wCucpDP5CaQ4viv5Qf0RCs638bB/p/bfg/KVcgg69kr/StuvMH6b9h/M
z5pT/T+Yn8vHFEPm2vgCY5zP5cftje+Z9Z+pv1D+0viVtk9l+760/35HZX4sl5X6VN3+Z+ovPKZp
/Qftf9ub66/176X5xYUhMxvw4kZaL1+HzPvO//VqNT/JLMtmL02ik+0rlfNnq82P2vatlT9OvouT
UFd4u2+3vFp/Zflj2fg5qdFjnj+uNEwO9p9c4UrXw/SWU77+Uvtzq1vf3N+6Xddz0L5a/0rrf2n7
Le2FoIP2zes47t/Bet+dn7X2VZ9fmZ9P50LmaHM18Kk0vmfXf6b+Qnm1/yeWH23fV+r/jtr8eHjs
F8XnH7TvVP2FoNa0/oP2v+vd9Z/q30E5K39wyDxSOnAVfHcSFXaw2kGOP0ltftS2b+H5e/P3Ybms
Vl6r/ym/ovL12PEzUk/Pg+grn2nOFNZfDJiT7fjVvLT/1Po3jWXtSsNB+UphW3xDuX8726+6zu34
luvfUet/dX4+XBQyS+sqLTtVf6n87PjtbZ+tbf1n9t/vKtRf8tb5rfC8le0Ytq3/oP1ve3P9p/p3
Zn4x+ktDZv6Zi/tbJkN+m4nSwTZf/0N2kLjX/2jvOKnOHWz5M9TmR2373ufi3tth8+PzKzGrg9BR
ea3+2d78ze0dLPeMV2me6773f3o78Ln++TNIByfNR3nxM5nTQXdddvR2Z1Xev2lcFts3vxJbK185
eULKnOrfwfZ7d34eqva/Pj8fy4shczN/dvr/XFc+vpX11+qvlZ8dv4PtU9u+p/bfN9Tmx2Sv/afP
b0f1b4NU2/oP2t/AW+s/3b/K/GLy14bM+4lw/e3W9bfb7paPeR4Eau2b63cfrL9ZbX7Utm/+mbHs
BLx8O22+yraqv1Zeq39xoFy3qyAPYSes74NZ/szos+2Px6zGaDu+6/Yv7jM43obo1ftsLuX9m/ff
/NvTz8fXyif3E8O6j6+MYb1/x9tvO37786M0Pw+c6X91fs5tKIXMKRQu50/pPqqV8T1cf63+Wvnc
9sr4HW+f2vat77/vqc2Pu3fOb8f1vxcy6/XfFdvfxBvrP9m/2vzi7pqQCQDAjyZkAgDQnJAJAEBz
QiYAAM1dEjK/bvI8euXD9ABsbL548AcrfXHiu1b3q/xL+v+m337+bLn9Sva+1d3Ibx8/Vi4JmU9X
T1bg44WuS10XfkTA2PW7Qmb4xtg3PO6/dseRb/hO/36VhuP4kqvXe3HIfLq6H5wiZPKhareYOC5f
3+Lne7dIOTTeW21xC5eXboEy7Vdfz31qFkIeP6O39Jv242dfs/Wvxq80/gfb5+rxO1X/QftKXgmZ
p9Z/xuM2RC9u+zPH/VPzf+8WSvnz43TPyv3yvfoP+ld9/ovb7zvOjOMVrl6vkPmjCJl8pNrNcg/L
x7foxvtGPg6C80n79POr5l8aed6bcg51b9wnru0Vn/O/hHKtsR3x/pN+q+PIeIJf3PeuMP6vbp+2
47eV1/9q+14KmQX5+usec3Qo3Ey9onrcPzv/90JmPj/zx52p/6h/9ee/vP2+ozqOF7l6vULmj/Ib
Q2Z+M9vFzaDhLdsbCW9/Fu6ofGt9kj7x/PFXVnZv1rw9KW2eX7iZ8O7+8a2Ddl7/cv/LT+IFh/0r
1Z+X141jMt1EPL8Ze8HL22fpO+NX7f9R/Wfat75St/vb6Gds1j/Kt09+/A2pn64Ojm0tjP1R/+fj
fn4z+PPzfw5183OfSj/m8bAK4bX6a/2rPf/M9mug1M+n2vnzoLy2fWrl02MOtv+8/t39P5uP989Q
7vXzDW+NH638tpD5+LWF+0Ej/9kzeENp3u394lSpfCO7UnLi+eMvknz9Ssh4QNteCcmvlGyudB38
bOPSd05wq/1vs/78JL99O/BM/862v2xx8q+FzPxK0onts/St8av0f2lT/4n2lY6Pe+2v2aw/r3+z
/ZdKIazS/6l/2/bn8/to/j/rLV3JPDl+9fpHO/07ev6J9TdRWs+sND/y8d0tr22fWnlt+9f2/0XI
nF5Ijr/2VOjj294YP9r5TSFz+0rwkp2Un+k57xYnh2VQqZVnHgek0/WXbOb30Svpwv6xa3vVpa5Q
/6Z9X0q/3byxuZJ0tv1l45g/17cztvcrIIUQ/NL2+c74FeyOX6H+avsK47dbf01h/S/VXw5hG8vn
L0JEsXxyNP8XjymFzDz0zX9vP1JRq3+017+D51e3XyPfPn9Wymvbp1ZeUlv/0lz/MI1vqX+NfHv8
aOn3hMzSchuZVmrzq1a+ML3lky8/8/wxmOVv+T3L55Pn4iTZLa82lerfk6/36R4uvta/qG+qP2vb
qn1bm6thR/071f6D9j36FMLd4wQedq405FciSuvfG6e95Uftm5530P9a/bX21conlfbtPu/V7b8T
wo76X21/Zf4/7YXM+zq+bm10f2v39fpHpf5Vnl/tXyOl9ewtf2X+vFs+/f3i9l96zL94fzu+uH1b
2GtHaXneP5r5PSHTKwkutZ1f3/lMVTFgnnr+PQCsvpFeO4ivlm3rL8uv6JxVOrEee6l/p9u/Y/xm
fxzfRps9T2LDfp2V9Ze273vjd9T/Wv219m3Ly/XXHK3/7PYvPbbS/2kuH7S/Ov8fDkJmZjV+pbpK
yyaF/pUeW9k/y/PrTaV2TLbrr83/7fi/UV7b/qX1Ly3rH59X7GMD3x4/Wro2ZD4nY77cZyK41n1+
PQ6a23l4XD5+aH3vys6Z588HsednkPLP1M2Pz6+ULNZ3+Jmmh9LJ4KT1Z/Lu9Q+P28CMV4n6/O3B
V/p3sv1n5SeiTfvm9eefCdvdPl/1fG/86v2v1V9rX+n4uKm/prr+ne2/MrYtP1FX+j/Pl7z9X8f3
+vx/LN8LmaFfz63t/DxT/+Oxpf4dP7+2/drYr7c0P1afmTwqr22fWnlt+9f2/2xe1o613/f98aOd
i0PmfFVivhKx3ogHn3mBt9XuY3dQ/jjIZvbn77b+sPhm5ngFbvyg/OpAuny77/GYVRg4+Hbm7HGg
XPfrrG39X+sfT6rH9wmt9q9Qf97+0/KQOZ20lu0rHT+Ot8/onfGr979Wf619j88Z3su/8+3y2vrz
7bOef/cT9KP87msbHPZ/voKUfzt5tf7q/L+3cS9kTu17vl0+Bp5s/Kr1H/ev/vza9mvk2+fPg/Kd
7VMrX7brcPvP68/n17r+5YufvSvuDXx7/Gjl+pAJAPwZdt9GhvaETAD4KYRMfiEhEwB+CiGTX0jI
BACguT8gZIbUdeH6D926RcGOXzT+wDm/40qT4+OX3zH+Lf3t7eej/P6Q+at2CAfRsl81/ntC97ND
7g/of+g+v49N/Y590vHxy+8Y/5b+9vbzUS4JmXv3prrkhrVn/cSDaOHWL3+Wx21Ermhj5RYj473t
Frco2d5iY3H7kuetOpaPWT4/pli8x2DNUf8r7a+W1y1vQ7K9hclr/d9d/7OuUh8PHNX/jfatt8/y
9kAP77Xv1e2/vgVTdouoFiHhaPxKXjw+Hrb/8Zi9+TWpzd9K+WH/zmzfg/pbjP+vsHd8/9vbz0e5
JGTu3fNqvG9baXnd/PNym+UvePEg+hH+6J14vjfaMBRuhvy+45slP9b9OPHNJ6WDF0DruZvf1+3o
fn57jvt/3P56ec30gm9x77/azdI3/V/eV3F3/WMf53s8Fvq472z9XzbtO9w+efmr8ufn9VeM92Ac
596zf/fQ/Hz+2yHh9fF76fhYa/+J+VWbv8fltf7l22frsP63x/8X2Tu+N29/g/NvyV77+SiXhMxy
mMx3/OXNcEsTbSwfbwg7/qzc/efl1o/Lb/aav1Jev9J9/WbGef35cw9u5vrYyZev9pc3862VF9ef
9y8vP3ElbhWiauP/Rv9OCamfrv7ct/N2/e8Y6zz62bf8pJSXZ6b+LuorHcTzk/T4KxJ722dy1P8z
7T8qr9n2/1De/4LSPj+2abqJc4OTSan+p7x91e2TH4teVK3/vo7d/bNg1b+5/vxm2EfPr9mOX+34
+Eb7q/OrNn9r5VvHLzJylfrPjH91/35XPv758Tc7to+y9h8fnw/qnxycf9+tv9Z+PsolIfNrh52D
zPT/vVf7pZPsY3k+Ob8OGvdXousrUcuDyqq88LNXNdPz934Wa6f+9Uli2fb5ZwpXB4GD8rz+vf4d
tG9y6uReHv+3+veS8vrfciIETCelg/Fd2pzgztTfD4tfIRkD+974FPpfq79WXvM4iS5/DePgJLnp
fy6/EjRZ9OvUPDxQrP/Lpn3V8blv768TXP52a0W1/pP751N2bHychPf2v1cVxq+0f7dt/8H8qo1f
rTy36V9l+9bqPzH+5/fv76kd/yd7+9WJ43O9/oPzb5P6D9rPR7kkZD532HEyxvGV0DiRtq8e7won
2efy0uN3ylYHoVp5TeH5tfLNQeqN8lr9pfKSUztxafwL9b/U/leU1v+m50lkcXDbjMXBldqV/AQ2
P7fwdunhWO+OT6H/tfbXymseJ4nn738fnSRL/b+bwl3pJD6fZJ7PeaVtJ+v/Umrfa9tn+9vXNbX6
C/vPgfwE3Wr/2h+/Qvu+c3yZldt/ML9q87dWPtvv39pm+9bq/87418pfUhj/Uv2FMZlU23+m/sJj
mtZ/0H4+yjUh87ETj5fa+266bN5PO3ppQhVOss/lR5N8+Up1tgpBWZ2lSb6n9Pxa+bL+JuUv9q/k
1E5cGP9S/Zv2HZS/pLD+d1Xbdz+5fJ2Yxt/q3rlat9ev5W8bx/tba6vHjfM9//JBqZ5S/2vtr5U/
612uf/H4U8+vLF/Kr/Q8njN+jmv0mIeLdyIO25fL61/aa19t+2Q2V0Nr7TuqvzS+O6a3FPN2lZ6/
6Welfav6Su9EHNRfKt/xrfa/W57L+1dQejt8t/5a+fT32f37G6b1Z3WX6n/sV8XnH7T/VP218++7
9R+0v4n/nf7n//1/6X89/Z/0P14qp5VrQuZ84hzmqxn3z2btHSQKJ9nn8p1Jvvucg+fmB4lDhefX
yjc7WW0nPCj/Tv9KTu3EpXUV6n+p/a8orf9d2/ZXTzKlZZsrVvu2nykb5/7iebvjU+p/pf3V8prC
OovtO9//1fPHt0nHdzAenieZoT5n97zZvtr41MpratunpBjQRtNcPNj/vmNzfDmqv1BesNv+6vza
1l8bv+r2qYzPS/VXx/+V/fs7CuNXsnd8Lx3LNu0vPG9lO0Zt6z9oPx/lopCZvX30eGVTPEjsTea9
5Xfrz3zc3xIZFrcRqX3mqKb2maRS/W9dKcgOUqf6d9C+r3bsj+FdeZzf6t9LTh6QXnRv/2O8HyeF
R/n8d34lM2//wfiFfj3267db5zF9vj13NP/K/T9uf728Znz+7tuZD3v9H6/iPZ+76F/+/IdXTyZn
699rX237bOrPt1/dYf3V/XP+DFtxPny1Z3f/q9n0bzt+pf17c/z5bvtPzK/a/D0sr/VvU76zfQ7q
Px7/V/bv76kd/yd78//E8blef/m80K7+g/bzUS4KmV8Hqfsku+/EuwfJ5QfE8x15dwLm315b3NJi
Lr8H3VHp25M12/rXzz34TF9tJ6yV76w/719eXurb8jGbk/Ri3dvxf6N/p9znxLNtkxeCSNXBffBG
y7c7R5tvR34dKLd1jxbfzh1v05PdJ3B5j8Cp7s38q/W/0v5qeU2+fbfb7qj/6/skHn2m9Rsh82T9
R+073j7ji4pl/eX7PB47qn9ex974PkJMJn8Rl3+7eduGffXxqx0f32j/o/6952/KS/P3uPy4f2e2
70H9J8a/vn+/azv++fFpVDy+nzo+1+o/OP82qf+u2H4+ymUhEwCAn0vIBACgOSETAIDmhEwAAJoT
MgEAaE7IBACgOSETAIDmhEwAAJoTMgEAaE7IBACgOSETAIDmhEwAAJoTMgEAaE7IBACgOSETAIDm
hEwAAJoTMgEAaE7IBACgOSETAIDmhEwAAJoTMgEAaE7IBACgOSETAIDmhEwAAJq7MGSG1HUhhcWy
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

--_002_PAXPR10MB52771221B2ADA5D6DB335CFD99182PAXPR10MB5277EURP_--

