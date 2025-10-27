Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BD6CCF9EB
	for <webhook@archiver.kernel.org>; Mon, 27 Oct 2025 15:42:56 +0000 (UTC)
Received: from AM0PR02CU008.outbound.protection.outlook.com (AM0PR02CU008.outbound.protection.outlook.com [52.101.72.26])
 by mx.groups.io with SMTP id smtpd.web10.36592.1761579772986892575
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Oct 2025 08:42:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Bll5ozw4;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Bll5ozw4;
 spf=pass (domain: arm.com, ip: 52.101.72.26, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=hpID9RZ365SCxxcEJj4kaDkV03KrIYHP8dQDF7yJYgtVdBYsAcxsi4niZBm3lcCEVAOpBn5zh2rtgIJfdoyraaac2xN1EzNX0HaiaUJdRKM57e9om8nAcqi4AUmrUbB/Q5SfKVeX8uk6yvQqDXbRLolJRzb86wrtp1WNkRDcyRuPPTmx5hfur2wxu4HgrCBKYTBiVp9WI9hT7tyGFpG04nOXWn+r2oMmtBCeT2IJjZ+S3TOe0ly2PfHVFcQ696tcOKSlFigwWpG2qXtNMjvcRYnKTcJ3I58cqx1i/8xzHIL2HEndSOD+rZSctJaOTWHw6QKntvsqonJe4ppWcFhCaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+irzXSqWRHgRc7G9j/VCoGOWnyPUkGWQWKnwKvtOVoE=;
 b=tLLtuJwpOhMcJ/jqhFTPCHuQiu1LFT/yLRMrxgIwTHoZ/DxUd5pS5xAFER7fXYJrPgWX74IL8Z9J8RiE2dVkhat7Ftt9lpVJkBhZGhzVLFhJ8YCHG9AvgnPclBnO8+pQ62Er7/vUCv4qIkXMHbPpyEF2/G1cdfFdgtuuW/j5Q6wlAk35Ll0/JtceDp9XNHJ7+lqh0BKP3vht20Ix2IYEoyPU3ey6Vzp0XGNbzHdmg2yTYaIrBoWxDnrYexy//63CWED9jH8xnN77P70XThnF46bHlBhQqY1EnqLcheKghyjpnkWzjjKCvwwfvi4cl8kleaUnxidxqZL2I+0woQOTCw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+irzXSqWRHgRc7G9j/VCoGOWnyPUkGWQWKnwKvtOVoE=;
 b=Bll5ozw4XtxSQwgjkuyewZSfMTiQral9inEPKYCPHCiiw3JBB0Xf0C2dbcRG63f83tBfg16BAR50tdFWdmJt7MeduwCb47s+hn3AQ1+MXfomKMuDukbBcK04KUwWc3+XtpNgalkdpwka1C7QOYRnzaKkpnvZdSj0XK2pKvJK5AQ=
Received: from DU7PR01CA0031.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50e::10) by DB4PR08MB8197.eurprd08.prod.outlook.com
 (2603:10a6:10:383::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 15:42:48 +0000
Received: from DB1PEPF000509EA.eurprd03.prod.outlook.com
 (2603:10a6:10:50e:cafe::3a) by DU7PR01CA0031.outlook.office365.com
 (2603:10a6:10:50e::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9253.19 via Frontend Transport; Mon,
 27 Oct 2025 15:42:49 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DB1PEPF000509EA.mail.protection.outlook.com (10.167.242.68) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9253.7
 via Frontend Transport; Mon, 27 Oct 2025 15:42:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zUuamTFP2QyEZtV+nlwrRVxPUKKJw2awC400v930iZBCxXhz8qnbnSCxgHFVnhw/UWNOS2CM/tI5m99kpd5Cs9s7/5tZlL+NC4JZruKUDGYviMC+6c2oqFfuN8zoikGiro/BApjdgpR6XfOAh0GnuhqoUU4kd4zD6ukCGtWpTHNMUjKCTNcQqTxPW1olz5kCqrXJefLl6LNIj7NZq5Ywa4BwSdLk5YpGojBpWhY5c6VLDo5r1WkmgYfnngro16BWfQr396Nx7ybwYsTWtDwvg9e91E48/FXOu5wUmXQ5odtbz1843aGypvIk8rxgC8njkzjECf0l9JzKAU3mfcW9sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+irzXSqWRHgRc7G9j/VCoGOWnyPUkGWQWKnwKvtOVoE=;
 b=VkJcU6giwvJy8iA1RmNizdGgy0j7jmGwPau1/1Crw6gCJD6OEIUe1grqNrzWvg61OefnRa5q8VPcmwtOUs5ou7w+Y5dema3xbfjp/tnFcXjJztkfpd585uw5SLvzPj6BVx+cO+1koZiSv8PKnC+N6KM/v4z+Ct+L9Hu+HQvvIjPELBfFQ10x9K9STVWIYDFCEh3MDszjc2lbao+OFcrf6rEYrtnNCsAyPQT+BNZDOc4wcZS+dgBhGgYkaPYeqj2eYBB5R9fPgT4WhcK5+YaPyciZWaunqw5F6wJkqchAMjfV9FwcVUX0vsKnp5ibykdMRDy2HStsw4FB0+P3Fzyr3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+irzXSqWRHgRc7G9j/VCoGOWnyPUkGWQWKnwKvtOVoE=;
 b=Bll5ozw4XtxSQwgjkuyewZSfMTiQral9inEPKYCPHCiiw3JBB0Xf0C2dbcRG63f83tBfg16BAR50tdFWdmJt7MeduwCb47s+hn3AQ1+MXfomKMuDukbBcK04KUwWc3+XtpNgalkdpwka1C7QOYRnzaKkpnvZdSj0XK2pKvJK5AQ=
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com (2603:10a6:20b:4e1::9)
 by PA4PR08MB5920.eurprd08.prod.outlook.com (2603:10a6:102:ea::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 15:42:14 +0000
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::8db5:7772:a426:2afe]) by AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::8db5:7772:a426:2afe%7]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 15:42:14 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
Subject: Re: [yocto] examples of erroneous use of FILESEXTRAPATHS:append in
 various layers
Thread-Topic: [yocto] examples of erroneous use of FILESEXTRAPATHS:append in
 various layers
Thread-Index: AQHcRm9ihQa+NKpL3kOtotjqCDQzTLTWI50A
Date: Mon, 27 Oct 2025 15:42:14 +0000
Message-ID: <DC998F5B-C78C-4A83-A8AC-0A411856973C@arm.com>
References: <ad70591c-d9eb-b901-fa61-36570460ca5f@crashcourse.ca>
In-Reply-To: <ad70591c-d9eb-b901-fa61-36570460ca5f@crashcourse.ca>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.700.81)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	AS4PR08MB7429:EE_|PA4PR08MB5920:EE_|DB1PEPF000509EA:EE_|DB4PR08MB8197:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ff17da3-e29d-468d-53bd-08de156f7a94
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|1800799024|366016|38070700021;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?jrcums577bFtrztls/FNTJCSdsiEctcZuX1rGz3JUIerK9UTKPpnixoxLffH?=
 =?us-ascii?Q?FhyP4ovBo0Yv0kuccQqSaN5K1sQMjmW31r4uwCgBxshiGfMfV+509pMk+xlF?=
 =?us-ascii?Q?64+0xa2ggjY+qNpPkwI/AWyrO3SiCrd5hG2puFXHOk0OgVoCT8OUWdKe31jw?=
 =?us-ascii?Q?FI12JF7L2Z7yTNWRKd7RHd7pJY0UExraN8u6CVYHPwLkPjFcO/WSl6MZlwqP?=
 =?us-ascii?Q?IPilXmDx9yA+bGi/mJTgjiLGouJSDDbs5kkLnFvs2EzRpQ3wvUS2hqv0YN9A?=
 =?us-ascii?Q?gYj8Mkzjsfjbld7hmzWOLtkRvNunFxHHwqlnyUOHAFr6W1V+3UEqu+tU35Gd?=
 =?us-ascii?Q?mjrAJTfe3oF4RzKAKenpt86hj0Aike7fTAoi2pin9IREYmwOD/ZlWCC4F6UT?=
 =?us-ascii?Q?QACOgI9WtVE72zWyAokfzgogVJKMRYqA26QyJwduGa0EScroOT3eloxCYz0z?=
 =?us-ascii?Q?YGmlfpUc35ZAf2UBxGIH0dt0u82il0d1n/GiEIEzBcSl9LzKYj2EtFTUQAUx?=
 =?us-ascii?Q?rr65nfu4pV1YiD9U8aDR5xnKtsKb9SUr8FtbUS1RfPsESq304xTgPNA6B5CO?=
 =?us-ascii?Q?Ueakgu5s+Mfm0msTtwAofGP+uR/T9FpzlLn2M/tzzz1kci26tIyIDVunbHa+?=
 =?us-ascii?Q?4NgmpA78g2kkXqPmkJPC1rJoyXWRcPyzKLkEJ8VZmdFbsdtT36XcyvMGgkPa?=
 =?us-ascii?Q?9pcPbwKG2EhxCjHenOpMf3A+s/fyB6ssfEJ3gDOi+s7Z65BFT13+XetglQFq?=
 =?us-ascii?Q?KuBqHQtck8sQICoXWSUUZLOugno7M0sK5sm3MgY8nfn7aESr0xio/i7YPxnE?=
 =?us-ascii?Q?T+BJl4mrHCmPo430WqoPkHhFviMS13vwNMM37jG8TeldS27rxWhCnSzZCJ4N?=
 =?us-ascii?Q?U6bOJqzJetG3PnR9/BMnFsSLkYWAu/PmDzJnfs30o6AniHTlnLQKK55rUcWy?=
 =?us-ascii?Q?Ei5aD4sduPnKsZkOEqtdd+6gDCdhoqY1niEWLl7tPd29lW+nyoctyZ/F39fU?=
 =?us-ascii?Q?CsYofmXteNLinbFlqHr0zXeeFfxO60SEIhMVHT7au7fxX9aUCRc6zo9Ag3+6?=
 =?us-ascii?Q?gGXr46EICgVZ30A9T+vTjUXcmqeIuNCgmoT6dx2m1Qta/tlgjO8cgctgphGN?=
 =?us-ascii?Q?FcW0U7WLSj4Es9KQtCyXHTzjVwfDubHoecaEyeGItlz335SUoRCVHFl1YsRf?=
 =?us-ascii?Q?RBcI1KY/vb6y0aGMHp5uz6N8lv7UJ6bLPfDBWuPGoOtfUBG/vo+Gw39/Qvzz?=
 =?us-ascii?Q?HQltrHkQ9FKBYwiF+T5J5umVUL9uAvT2InsBMPOlqpYCgczrqZuN63SFF2sG?=
 =?us-ascii?Q?DUsosJOxmZQDC92dsL3yD1Bg9HulP83j0O+3NQ52I2gQ1kYy/G9qsQFjYX5K?=
 =?us-ascii?Q?tijwwuPd8iNCkPyRtAbWYTSiheULOYQGupvO/ks6pSlmnl/P9E4Bb2Qd2bZz?=
 =?us-ascii?Q?b9/+AOexR6BOu5bQYX+SKOoorjboP8V4Pb2pAulDN8Sd4QRaf+HB+TOXFmp0?=
 =?us-ascii?Q?rBn4b9El8WnDB5VC1snB+noU4xcBg5oLFcqN?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR08MB7429.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <194020ED4589474FBC2D634FBCC0C9B2@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR08MB5920
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF000509EA.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	5be043b7-c7c8-4664-ec3e-08de156f66fe
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|14060799003|376014|82310400026|1800799024|36860700013|35042699022;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?irUfsOLlVwElu6TakwdfrFq8lep5LJMcKpxjx6XL1ZPUbDeODfj9Nv2ZM0xO?=
 =?us-ascii?Q?Gb4MUOWf/E8Bj9DC0pFKiSFf0bnfxC5Co/WgFf0iPCgGBDRIvEbWb6k5Jfbh?=
 =?us-ascii?Q?Bsqpto8wzxCFDGDJDJVtCnUc+VpkN0LJ1tuAGKcuTzHPoeQVZ3AlEoDv+KPL?=
 =?us-ascii?Q?XaheisKTOehJOpwSBAgxLVx2Ujdav/gdyYs7afLYJuX1o9TPBwgvxTNLwRJ0?=
 =?us-ascii?Q?FvqsQn1NakHBtSLoUULI1ptS/ANIoHUzxGLdcIr1sXUJjZaKCo/eqdqx5/JD?=
 =?us-ascii?Q?wtZfeusqn50049yHCYTV/tlecy2kdKqU9d7NypzJUdpXh2/fwk+/aR+fFh9i?=
 =?us-ascii?Q?VJuZToOdjMbo9v89ApE2vyGhoa2x7lpB10lr27wi/3cn5Y937p22IMkCEg41?=
 =?us-ascii?Q?tda0GUVMfUZhjxDlEvgTnF7kgA7xfVq6LGOlVBvyKes/xe1WQ42dCMRxxx3d?=
 =?us-ascii?Q?raLnoBWMS5/yrfD+g2QT9PrulWpAb4SwpSJbn12ITDIILlBwJ1hzEW7yy5r4?=
 =?us-ascii?Q?uCVOKuqUEWn5iStj6xoec3uNhxA5devHhb1mcIXaPXl0/h2SSyA7Bv/78BdP?=
 =?us-ascii?Q?Vsfrda0R0wsNj18Lhs8q0viJtMyZtHlTC3q68GL8WYpk0s4Ic8Y2OXgPT70N?=
 =?us-ascii?Q?5x8q8NWaOVrUl8yTAu3/mP46LCBeXQ4lpAwOcrbtiHKOs19je0OtzxlpzO3i?=
 =?us-ascii?Q?OJPMZ221ja48daC7vdbZ+IeP3v/ZAW4Ou1SLdgsPdreReiXgcW7ix6cC8lyV?=
 =?us-ascii?Q?PToyX2tsxEChzABXI2SmPtPLPvXAbiIZB4FggrdgvZuy2+hY9OhTqN2eTYvv?=
 =?us-ascii?Q?j4CrYeRlun0J6iwqZ0arvF5otiD+Iaj1S9xwv0eUUs0bLiX4xeVT7JFku+tt?=
 =?us-ascii?Q?1MaBpXXr7h53ESkEVnMtxbZH/ZaV9xnUwtuIjeaLFZlcZMdiSKgrsu2X9+cq?=
 =?us-ascii?Q?0tp4fgORoGpXrsp79QeJqRPkv0O+O1/DZ32BwbM53Lp1xQXKeLyjW2rze7Ys?=
 =?us-ascii?Q?WoawzgzSquw8R9jhTOdkqKBCZKEUPPYrHVtxMXK18TafAQaQdf8PFzsNkAyI?=
 =?us-ascii?Q?PF1yDp+CTfSgo9UQtPPisMkljJGbK8t2/T3ledQK32PXTNyq3kkODdV2hXpm?=
 =?us-ascii?Q?39GK4RC8yvYES+w97Iv8azSIVHWRWCgAbvcrKEsez1wlOJWpHxeT7CS4eP3O?=
 =?us-ascii?Q?ph0ax0pr1BuAtEFdKb8oLaz2wIOIzyj46+znvsfUvJKY7+bW5JFiOFa/tp87?=
 =?us-ascii?Q?B0of4nqUjnxuVU/v/WQaInCz09DUpmEYDMO9x24Kllt4D60IVNSnt8Ek0lQm?=
 =?us-ascii?Q?PhOg6Wx8mJcjwGNPoLdf6vwdlMo3HAl/dRbk7bYvIV8jtJvxgfVKO/3O5/B5?=
 =?us-ascii?Q?ZUnRHh0SbIBbf6xRdApDnNFXL1rlX6vQZNSaPARSH1qhEjz995pzGjbzmw73?=
 =?us-ascii?Q?qnR2IAViVsHneWODHmxGppKdjzfNK8oSLs7OU7RzQyKmbgzZQnaUI9MEcTPn?=
 =?us-ascii?Q?hqGiz7qxBUl/4r8ucVo3NU7JL1E7v+mgDIDRaQtQ8Zz5jFaPPmpmJ42Y4uSu?=
 =?us-ascii?Q?+kUyZfH924XKY2v3i54=3D?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(14060799003)(376014)(82310400026)(1800799024)(36860700013)(35042699022);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2025 15:42:47.4725
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ff17da3-e29d-468d-53bd-08de156f7a94
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF000509EA.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR08MB8197
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Oct 2025 15:42:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65968

On 26 Oct 2025, at 11:55, Robert P. J. Day via lists.yoctoproject.org <rpjd=
ay=3Dcrashcourse.ca@lists.yoctoproject.org> wrote:
>=20
>=20
>  i ran across a single example of this, so i ran a simple search to
> find other examples in the layers i have checked out -- looking for
> examples of "FILESEXTRAPATHS:append" operator where the colon is on
> the wrong end of the string (appropriate for prepending):
>=20
> $ grep -r 'FILESEXTRAPATHS:append :=3D "\$' *
> meta-arm/meta-arm-bsp/dynamic-layers/meta-arm-systemready/recipes-test/ar=
m-systemready-acs/arm-systemready-ir-acs-fvp-base.inc:FILESEXTRAPATHS:appen=
d
> :=3D "${THISDIR}/files/${MACHINE}:"

Fix posted for meta-arm, thanks.

Ross=

