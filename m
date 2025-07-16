Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8971C83F1B
	for <webhook@archiver.kernel.org>; Wed, 16 Jul 2025 12:47:35 +0000 (UTC)
Received: from OSPPR02CU001.outbound.protection.outlook.com (OSPPR02CU001.outbound.protection.outlook.com [40.107.159.46])
 by mx.groups.io with SMTP id smtpd.web10.21364.1752670046953739930
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Jul 2025 05:47:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=BmLAC0Zz;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=BmLAC0Zz;
 spf=pass (domain: arm.com, ip: 40.107.159.46, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=nwH5jD8fCHbEo0ICD7NRRmAFj3U3I7ogjGfISaqkfnehK9cuTYWV/RGNZ8HuKpuzNU8tMzGw3C7q0SyG6YIhGYNxiTC1OVVjN0jGiifJmB2bo3BPw76jblr0Ol2ikpH7CvR7oaGSsajfeOASgdYhadPRJf5jxJ26MtClK2hC5DA769l7HSIXiERcWVwha68F/jrNPJnP8gvLLWJ1HJVpt+wWu7M2ELn7yZykMakG/W1L7Y7hlCgydWVjIyzttEE+T2j2nV4PsceIdYE1vPARZYRROk9otXhrHPiMWWlBeYVwF0q4dNxW0I49uifP7K1f1Z6nCGXg7Pprow0wrrfEMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pvkeTql46498eLpsCBbgoYAYMgfBWETF1sVTDbM5TZM=;
 b=lBRWsiQRmGlZ1zWmTq4y11tTEnjVqR0+65vMAG7JHa77FvNfMgaHHsDex6X29ogGF14EKc8B3RN69McMRrLJt2GrbrNJZct3L/3yLCy5kL8SCSYW6YNUUyeQ/pDKhFLgu3Gmzu2IOKqRfUgQ7bbOI8cEUVTiCykQ9DwxAWBJjSPcJKobPvQq97DQdeE9rtaBBFCv6ldnympA+j+h16Zr2D9S/Daf8zaf3jrWzzH/3wRK/TR2/kuWXwDzisDlY6XwprrFyEns6tw5zncuGNRSqFvyiSGRdJQoM8WnQYK7Zaz4hbsxZ0Ll/RP4PColW4nSszImR9NU+5sGEBWm4313Yg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=belden.com smtp.mailfrom=arm.com; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=arm.com; dkim=pass
 (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pvkeTql46498eLpsCBbgoYAYMgfBWETF1sVTDbM5TZM=;
 b=BmLAC0Zzzbwzd+NOjgYfizAQKbGXWYa0PtBjSocN0hHUs0QyU078sq8A1yZbTp3tqkPKr4VmS2YibiOVAsTQwQYD7/FL3/6haR4eOi901lxGzcglqsFr1Rnp124aMqsmFTGrpy9CLqIDzltzi7o1pKRNfMmBr5i5wGLSfBp2opY=
Received: from PR3P251CA0011.EURP251.PROD.OUTLOOK.COM (2603:10a6:102:b5::21)
 by GVXPR08MB10585.eurprd08.prod.outlook.com (2603:10a6:150:14e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Wed, 16 Jul
 2025 12:47:19 +0000
Received: from AM4PEPF00025F9A.EURPRD83.prod.outlook.com
 (2603:10a6:102:b5:cafe::e1) by PR3P251CA0011.outlook.office365.com
 (2603:10a6:102:b5::21) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8943.20 via Frontend Transport; Wed,
 16 Jul 2025 12:47:18 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AM4PEPF00025F9A.mail.protection.outlook.com (10.167.16.9) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8964.1 via
 Frontend Transport; Wed, 16 Jul 2025 12:47:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qBHdabZJx1pHSUbyo086Gxa7+2HBzXSzn5Xhl6HFeLUOVGl2HwgbuD9TU7HK89h1vUmM/nBqWThtNNIcnQafHPF4/JMklxnv5yVGnaJMpqiiSfpU+KAZM+ym0h57bAkXV/g7EHZEQ8+f+G+lz8cjaQWJIAyPx8cyo3GovfSkxv8It4XJoFprr3KSkKbEZQwUuA5pCcYOTC6fOJRWXrC1LZ8qoLXz9/YQIzRjzEzkSmeCn4GFo+k8F972G1ouHPRL9JpqFVbpl7NHTgXlPz2GQeE5sjdMvf+RS2NdT1ZeezB5lUAxoY7J/Qrp+u9B7dpYC9bUilV5IYI4lksR5VZrwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pvkeTql46498eLpsCBbgoYAYMgfBWETF1sVTDbM5TZM=;
 b=n4HRkRU7phloanwjbPFbumlfGaySjKfXP+FrJL9cDmitLsDaSET476ZJKqoc9i6x6Onvs8hRne/+UIA1h3n/QXi22c+92BRE3ToaIKIFPZrX8jVC7H5JntKXPBvJ6k6Swupslj9zN3wqo1SHMhq/WsBDpQ7zGkh1ThC2d1i2Zg1OLslQ65lF9JlYzaDI5r0fZyK0B59lgHUulJa3QIGlA0CaL7ISAssn2NI1PXdd5NzaaaGQTz3HzsLmzsVbgqI1s3EoBI7pN4K2O58p9oGVcIV14wrSYn1HXwqEr1QCzNt32thjqc/ONsXsNcF/dBTOhfGFwRW8aMtc7OTb6TwBjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pvkeTql46498eLpsCBbgoYAYMgfBWETF1sVTDbM5TZM=;
 b=BmLAC0Zzzbwzd+NOjgYfizAQKbGXWYa0PtBjSocN0hHUs0QyU078sq8A1yZbTp3tqkPKr4VmS2YibiOVAsTQwQYD7/FL3/6haR4eOi901lxGzcglqsFr1Rnp124aMqsmFTGrpy9CLqIDzltzi7o1pKRNfMmBr5i5wGLSfBp2opY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VE1PR08MB5856.eurprd08.prod.outlook.com (2603:10a6:800:1ab::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.32; Wed, 16 Jul
 2025 12:46:44 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8922.028; Wed, 16 Jul 2025
 12:46:42 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "jairo.mejiaaponte@belden.com" <jairo.mejiaaponte@belden.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [scarthgap] Setting image feature dev-pkgs bring ptest
 package of libgpiod
Thread-Topic: [yocto] [scarthgap] Setting image feature dev-pkgs bring ptest
 package of libgpiod
Thread-Index: AQHb9jn87hm3Fc9vZUKmNztiu4duY7Q0imOAgAAP1ACAAAw5gIAACr4AgAABrgA=
Date: Wed, 16 Jul 2025 12:46:42 +0000
Message-ID: <595B455D-6F51-405E-ACCA-155DE70B3AD4@arm.com>
References: <B2AA36EC-743E-4DA5-B022-9F037BB42072@arm.com>
 <24418.1752669632403386029@lists.yoctoproject.org>
In-Reply-To: <24418.1752669632403386029@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.600.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|VE1PR08MB5856:EE_|AM4PEPF00025F9A:EE_|GVXPR08MB10585:EE_
X-MS-Office365-Filtering-Correlation-Id: e4a07068-efcd-4479-2242-08ddc466e5f9
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?ucXheNe9hFIEh3KGlX/9+Yl+sOQ9H5hy6X4T9IZaBiF43HJAsOQAbWnxX6Bh?=
 =?us-ascii?Q?UgiKVHMk7tkG+MXpP3NOtnH44GvyxoqXRGgY+oDS79XSRUNYmxLzj72UgOrA?=
 =?us-ascii?Q?zL+ZEsA6fxkxWl21roBOWBMBpPEpBAJgUaL29Yi3V/bbaL3U2kGzvcBNqxTa?=
 =?us-ascii?Q?kEK8bcEnTnqUbi8uXwaJc2aVAGWWR6wBlOvFjeUSjuV9NmXY2bmp4DzjENz9?=
 =?us-ascii?Q?rOIEYkgF6LosEBYg7iNoLWOAc4UiMyRB5g1wLAowcLD3sNmW4ap1c84+JOHP?=
 =?us-ascii?Q?serL3npEBtG9QKgGEeRqQPzdMjRxyqUjJCEtBnDC3yrGXIN3iPiPKWfp9fBs?=
 =?us-ascii?Q?PPfmephgHqLsLCT/KBh2QAN39H0gl/KBlmB/SHeJSWTo5kcBeAufzomA/JSw?=
 =?us-ascii?Q?sblCyOTrXRrqLRydM5O/VB7ma0B30uAuRYYe08DmouyG61/DXO7o/9XMIQ+Q?=
 =?us-ascii?Q?NvgIzTI/hFRF5yUVW29QmWpF04dV1kDnkKpt0kVwdQ51FgqjA90oTCfUCen+?=
 =?us-ascii?Q?s8zCecbKSeFKiAm8tXtobtQBVz4Y4HZvI5B4tuuvlSjYVmoLNUI92RshS/vd?=
 =?us-ascii?Q?eljSPV3ZrimJFFbSEF9O+cVtvKv+OdaTiRR8G6KfDtFOddazw5LK6Dnpp7J+?=
 =?us-ascii?Q?m36jp+ZeMFlFP6y5cHDrSg6CBfXnioJ2TlnjVyzSEFqdDztmQDVHvLuFEcc9?=
 =?us-ascii?Q?cKvGDizpjtnwNP9tWCBV/JkOX6wsSuawQzljFuriNxdUpZ2VBCSNVAA3IK75?=
 =?us-ascii?Q?vl/3EA0Dzq47WFADrlZXel0teyoglkv5MxGILTkY/IKTLTl3eI4+WeZehnEv?=
 =?us-ascii?Q?y98Iem2QMttKzIS3EEzlrql/dC4iguJ2vm/LNerOLFXmH6QTNapHgnk5ueAB?=
 =?us-ascii?Q?yyLxnvi+9awni6S8D4ZqgcOJOJYjh0orBJQ85XTNH8ljVvvcnmFiyftE9Tzf?=
 =?us-ascii?Q?XrDRQZDwO9CAlXoC+xdmAvW2zrhwM8eMkZ5is+Sk9eJU3DIxe2H7GYYxBdpT?=
 =?us-ascii?Q?EhI8LivQlRYl07+VCs0O46X5n+5cV/ddQGT04eTa+u4fB+43szmEXQX1C27x?=
 =?us-ascii?Q?z8b/ngpbPhZzc6Lgu4/U4N3BVHfpVWIJUkKRX7M85+WK6Hpo1B7WaWtJ8RYw?=
 =?us-ascii?Q?OyCtf9tUuRJ+GCkUGQCr4hIcQpNy5AUeIq2AXRvGqtXxUTS+ShQsDqW9Swvj?=
 =?us-ascii?Q?e51jlElOe7iFEDU/sy1IvKPrkdk6SLR07Dqun9BSwrrsDMVF4A00T0UFBD7Q?=
 =?us-ascii?Q?bG609YrvgEcv1S7cXpK0WMvu/PXKHExyPTE98ggjYSy39d51y+/uye23xBRB?=
 =?us-ascii?Q?SwBlaqK04Jb917Z96O8ay3fp3e3yxxxUDllA7Xe+XqAe2ZfVnTqgqOHZnboj?=
 =?us-ascii?Q?mfIdPwug5DgUZXfspR8afHk58+U+M8lWrEbat3UBn+G7VgyxWPS8MBcf/a9G?=
 =?us-ascii?Q?X7Tmx9k7oE02En4OJZCL5h2r0LD4shDVIIGxd+Uz40kMDtyTCgD69w=3D=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <189B78316E35CA49AABE5BF4E3355202@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5856
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM4PEPF00025F9A.EURPRD83.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	e773b82a-5da1-4c34-7c38-08ddc466d0f7
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|14060799003|35042699022|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?PjBByIgRv8pniHsaLW7FEY8huu+Y1sWtuSozR5O434KFnjaQZcdewGcGrxzg?=
 =?us-ascii?Q?hPjEYDUhhsV8dDLMSMRwc31+C7YbaWkxc+9cLJCL8HrRP+wpuQYg6T5jAFyY?=
 =?us-ascii?Q?n+QNepAW/v65MmpLllZsovs3UUvOgNNrtUxNQg4p9/HgPSHbP9RgN1QC9hkT?=
 =?us-ascii?Q?cyJvGHTTAiQIxB6FvjkE2wjER2ROQEyffLDrshxrm+bQyCHwk2PL8qVR99fH?=
 =?us-ascii?Q?lbd47f7e2QI/b86ykx6yMHz+eUF8xxFbEhw8xhnQEGewI3IA+7Dq7it3d6bf?=
 =?us-ascii?Q?T6gu7xXgZ91uRDi8cobDgToGJ8xZtjH3hzuH7SGGRTnWvxB7Yk+QA/ltw2ZD?=
 =?us-ascii?Q?uYJaibl9UJuZZ7HC8oOAz3rd5mhe1srnF2ytNvDZrD/U4BI+ICglbwIHyu3m?=
 =?us-ascii?Q?JGBXq7XXXBvPaTFAfWJX7LIP0Pykw5QQSJ0PFDeom0cA7h3x8p4EdFgbOAVf?=
 =?us-ascii?Q?QDCwzvR9aOJzlA51oOvxRLACCaJXJB408NU6yTzPtsruh/96CMdgmgCiMzzR?=
 =?us-ascii?Q?uosoaULMLxo+SHUMC7uS5wmmh6QP9pU7u2wNe8jSIXz4oXpXaQ02Z92a4dik?=
 =?us-ascii?Q?InRz1p00Z27xGo+LJDyR3CyKmVXetshVYJ7BMfu0ZTJ0xIXpFVCEKhRfDOlZ?=
 =?us-ascii?Q?YfIMjlPhQlFQUm3xZb22yH3kLRt25bm6PWB/4W059Z2D3KwHFwPtISNWCPvl?=
 =?us-ascii?Q?4Dwh5IrnlaFe5dnxbC7a1FDaUhtFnAgs5eHjf4b/Vgo49ntyvLCmSVcexVcE?=
 =?us-ascii?Q?VNHRWFDbqbS4cuYYgh+gJxVUt2uor+j21KaAk3HIj6R9x9k0FPY2x0MCadIM?=
 =?us-ascii?Q?pk9ghSq3MS6h1RaG1Z5EZ32QN6CxIqbUzi2dMm6AXDLXUWV/oXiNEjaRLsB3?=
 =?us-ascii?Q?0iQACPnineFBRcaBl4Sgn52AB/AXUUFkNNaVspQuMfuo2My3YYE5RA7frnYc?=
 =?us-ascii?Q?x1pHq4OXPioCh72wojSos4UxiFhVQQrRzXakzRepiYmOldbHYIS/2vBADR/t?=
 =?us-ascii?Q?LWotgGlm6EL1XPT9rhvkTOpDJUb6bWF9V77TenMtY0VL1gUaTt9bPGs4sD1C?=
 =?us-ascii?Q?JVuipAd+7D2HmVUlCY/9uwueVWOhZ4VCQl/PM/poChKjyd8wI027LzpnJD34?=
 =?us-ascii?Q?4jlTChLDswsXOVvLBVTdm7iL7lBeHQulnJtiDMqLhsyDd1+NKYAt54SgDXxr?=
 =?us-ascii?Q?uu7erLnoVPyY8SnLHsg5zgH0TX6jQlgU8J9NvrOyKObcKTk4RrPraX85MSlc?=
 =?us-ascii?Q?bcC400P04UVWvMrnEe6mViruSS7kcTeaCHe//uHLwCvClKt3/bTV2fB01pdF?=
 =?us-ascii?Q?kNZhtKtExuxFAFE3L/Kf5MKzDC6AwAh0UFOKJXl2NDZRJRMHBOtBt0lRgDMU?=
 =?us-ascii?Q?zgyo068zol0sSM5QuxGGnH+EENISjxnXZJ4uOtEb7DVofBtxd/6RZz+ov887?=
 =?us-ascii?Q?FOgaOyMTTY/bFzDck7miPsctYJTUCL20+bDAhmfYl7+1026QM+c5gg=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(14060799003)(35042699022)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 12:47:18.0112
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e4a07068-efcd-4479-2242-08ddc466e5f9
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM4PEPF00025F9A.EURPRD83.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB10585
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Jul 2025 12:47:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65667

On 16 Jul 2025, at 13:40, Jairo Mejia Aponte via Lists.Yoctoproject.Org <ja=
iro.mejiaaponte=3Dbelden.com@lists.yoctoproject.org> wrote:
>=20
> Hi,=20
>   I was looking the code in more deep and I found out that even though th=
ere is a ptest and ptest-dev defined on the recipe and the folders are crea=
ted as such in package-split folder, at the end the package name change to =
a package that is named after a shared library that is added in the ptest p=
ackage. This is the line that makes the RPM package to change the name:=20
>=20
> FILES:${PN}-ptest +=3D "${libdir}/libgpiosim.so.*"
>   This seems to trigger a change of name for the ptest package to the nam=
e of the library. Because the new package name contains the -dev, this is a=
dded when setting the dev-pkgs in the IMAGE_FEATURES. If I remove that line=
 for the ptest, the name of the package is the ptest expected and it is not=
 added to the image at the end.

Looks like you need to upgrade, or backport some fixes from meta-openembedd=
ed, specifically:

commit 0718d6e84d59ac84d47e3093280fa5369bf4c435
Author: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date:   Fri Dec 6 12:11:29 2024 +0100

    libgpiod: minimize intra-recipe dependencies for ptest

    Make the packaging a bit more fine-grained. Create separate packages fo=
r
    the libgpiosim library and gpio-manager configuration files. Make the
    ptest package run-time depend on only the gpio-manager config. This way=
,
    we don't pull the entire daemon infrastructure if all we want is to run
    its test suite.

    While at it: add GPIO udev rules to the gpio-manager config package.
    Currently they are in the main libgpiod package where they don't really
    belong.

    Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
    Signed-off-by: Khem Raj <raj.khem@gmail.com>


Ross=

