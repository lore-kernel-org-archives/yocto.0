Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FB7EC4345F
	for <webhook@archiver.kernel.org>; Tue, 30 Apr 2024 10:36:48 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.79])
 by mx.groups.io with SMTP id smtpd.web11.12005.1714473398001983784
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Apr 2024 03:36:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=mTwVeL1+;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=mTwVeL1+;
 spf=pass (domain: arm.com, ip: 40.107.7.79, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=M1pIzfWBCrYb89texrkTTJ1byrG/gMIl9QZR7MxSwywRzY9G1+ry0n3MbwJEAjP/CwfoX0ZmopGzIl42ywJaQ1k6HiKkCzfGeoR7SGwvaYjOcMaFF2JWoZ/6RmaQgEWUFO/Z0qOPa6SaDsshtlFwgRNRiqmES3Q8mrHIjzp0RJFayAarTSF0PnYQ2O01xt55vYtruLjTx1LRj4DHe4rK0DjJGeBjs+wAY/BgW36sVn7tKQgvRxp+4lezr6J3DBm3+k41uWHTaC1IxVyJBqRcs2QQVicW+THF1LW5tlLnPgtKO80RGT+onMiK/WkoJOK1IxnyCDFzCO0FKjKBP48V5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i/faSeivR47FAX8Qcct8tfO4Sr+4++Q/K9/7nhXTTvs=;
 b=M8WiSUKEKIAOiMOpK7a9BZu4SI/plEUnrHv6+jpKQmYiutooFk95MEXRe4SlPX2NejiDMkQgvYWxS8HB1wFEGEQygv+/6I8MM2bMgxV6Xrg5foGlU+C2zSF7euuFP7rdaWezn+tpat6JgLYaRxNWLhcfoVCnKRRC2mvudBEq1PY84Vese54RMQxIc1/+0J7eZzJWeAUyiv2Dwv6/hv+wxLwzbFSlHkebYpCyoWYnFK9H1Mavtnej0CU9Y18bNP2sfzh7TlBNB2WjjhNByZoodKoqbbfmMNChy9c7ltGpCFNavzMRKk6h/wXvHWo/5q8dERLTw2Z1/A4x6p0e6L2NZg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i/faSeivR47FAX8Qcct8tfO4Sr+4++Q/K9/7nhXTTvs=;
 b=mTwVeL1+ucMtZTjryuG9dEzHtVnzH47gomQJFlFN9pbbdGzggMwzIrESxRJ9iH/rHVpyW9voo07/fGMTeMYMWk4kvyPWH2sR9JrATmQ///J4+SWZm0zTJMSCpyZVk4KQ3DvMm0NE0eQUZXBgMqQ8TIiKG9KdXAzE/xpScWg+UAM=
Received: from DB8PR06CA0042.eurprd06.prod.outlook.com (2603:10a6:10:120::16)
 by GV1PR08MB7346.eurprd08.prod.outlook.com (2603:10a6:150:21::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.24; Tue, 30 Apr
 2024 10:36:31 +0000
Received: from DU6PEPF0000A7DE.eurprd02.prod.outlook.com
 (2603:10a6:10:120:cafe::92) by DB8PR06CA0042.outlook.office365.com
 (2603:10a6:10:120::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.36 via Frontend
 Transport; Tue, 30 Apr 2024 10:36:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF0000A7DE.mail.protection.outlook.com (10.167.8.38) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7544.18 via
 Frontend Transport; Tue, 30 Apr 2024 10:36:31 +0000
Received: ("Tessian outbound 9d9bf1c5d85a:v315"); Tue, 30 Apr 2024 10:36:30 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e85ad7b5b8485cf4
X-CR-MTA-TID: 64aa7808
Received: from f6fc81dfebed.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id FD3A5A54-2915-45E9-8277-8614D467DACA.1;
	Tue, 30 Apr 2024 10:36:24 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id f6fc81dfebed.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 30 Apr 2024 10:36:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z0kwQTxoha062lN00o1uJ0YukXyhheMwgw6I1m+wD9+Och8AybDjxwQBNHRt41pvOw0CZvREIAqHpjaGVnW+tzY0F0tuNK4q1GMJws6gP0XYDoBeLXyaArCtPns6ISaysI1G3bFGZqDh1uou76dgQY47TNcOiOCaTv9BigbgHur3ImPFIsSbZcjYPKoe39+WqTnCS5pBp9dT5Gf5C2PpWb8dTsEqSJZy+vP97c50HlF0Z7wxddfAs+QgM17kgUQ/URCbVY6K/GDmM1c2j2qjpVzj+nOVJ+Iq2g1iMMFZLHLoV6cKqKgLnHDwlRIhA6nfXlW5g0w1WYv0BJmbapxCWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i/faSeivR47FAX8Qcct8tfO4Sr+4++Q/K9/7nhXTTvs=;
 b=dZBFm0Vhcoz2xM8OZcTIWXGDos2kpqjIctsSsuZDDv9wTHJGOLSH8FqdDwim0Si5S2vbZyCSqoAsdXKyHDcSmRKyDUJhLWOv5IxRS8S3G3+O/OO6kOSj9H+PEWT2ezdeE2D3IUgWNVRqUNsof7T1JYK5OAP2PYyGqDiHmsXEP8RxCSGV2oqmXB8pXVdKeJWRlhEmP7Ey0o8L5+MxsH5qngctq2kqfmjcBZf0n1WiMUBnPC2krg5kKC0MUQmwF2Zjyq18yIJL80t14nJDJjnLyb8muDyqfIwYT1VhwHuMJKQs1X8mW3ymC+gl4Hmm2aXHhulGLSV+nAOlIZ1mFCY4Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i/faSeivR47FAX8Qcct8tfO4Sr+4++Q/K9/7nhXTTvs=;
 b=mTwVeL1+ucMtZTjryuG9dEzHtVnzH47gomQJFlFN9pbbdGzggMwzIrESxRJ9iH/rHVpyW9voo07/fGMTeMYMWk4kvyPWH2sR9JrATmQ///J4+SWZm0zTJMSCpyZVk4KQ3DvMm0NE0eQUZXBgMqQ8TIiKG9KdXAzE/xpScWg+UAM=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB8897.eurprd08.prod.outlook.com (2603:10a6:20b:5b8::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.36; Tue, 30 Apr
 2024 10:36:22 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7519.031; Tue, 30 Apr 2024
 10:36:22 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"richard.danter@windriver.com" <richard.danter@windriver.com>
Subject: Re: [yocto] Forbidden host packages?
Thread-Topic: [yocto] Forbidden host packages?
Thread-Index: AQHamlOCZALFbpX0mUeWM+F5vSXzVbF/dt6AgAAEVgCAASSVAA==
Date: Tue, 30 Apr 2024 10:36:22 +0000
Message-ID: <BF35EDE7-E641-4A67-9503-3757509B760D@arm.com>
References: <eb057a01711559ff9b6afc949bdebe9636a311c2.camel@windriver.com>
 <3e66a8b6b8bd016cb04cf87abd6a3fd6146d507d.camel@linuxfoundation.org>
 <5099ede3b255d8d36fdec025c39b466aa8bd31ef.camel@windriver.com>
In-Reply-To: <5099ede3b255d8d36fdec025c39b466aa8bd31ef.camel@windriver.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.500.171.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB8897:EE_|DU6PEPF0000A7DE:EE_|GV1PR08MB7346:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c529c04-ca0f-471f-74ff-08dc69016644
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230031|1800799015|376005|366007|38070700009;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?Cab2vrFr36gKWUdqGNWP5sHH2XKBEmPzsj8N0apgICSPrW0gijl5L46Zuury?=
 =?us-ascii?Q?arGYKfBbISOGZorc1e45R9iMHl0PgnOMQuEbZ/QAZPfnbPqzorsr5GtqXP3/?=
 =?us-ascii?Q?roY7XgxfBxzNPA3EyL69O9iCaO8a7+Egg7huPk+51fSp2EzcKlZLukc1vNo/?=
 =?us-ascii?Q?Wl6yW8ggnjK5MAqbWBOwtSuuW6QglrniSnhklIza0YoKSMumm7KGQGzyaDrC?=
 =?us-ascii?Q?vdowdJn0r4PKHvCyK0GNXNPxjDKIdv/7KXHnNAd30+DBzN4auKfiaRLeztLt?=
 =?us-ascii?Q?/thmbXk1urus6OShQr9yFOwPyr21mcmbYE6LAeQ96eClK5S3cXi4UmuDLjgN?=
 =?us-ascii?Q?evd92hDLY0i81tzPP7pfGMq1SmK7UFX9XiyH+211WIzoqonB/luKi4xPm9xr?=
 =?us-ascii?Q?5d4IxS4yIOsS08xKTTjvwoSQsrq6R/hcWIhFYb9Q1f6TBh2XrJWhu2tOukkX?=
 =?us-ascii?Q?x1s3aXH4aukNRqM8dP7LqlbuFoQpiX9isc/sXGRypLO6BuoGJq/mDdKvQb2F?=
 =?us-ascii?Q?Xx7c/3SrQK6nVmV7mdsWvJ1VnNrrZbqKjs0K8S1LsrlTRD2Ouu0XFFKVmczJ?=
 =?us-ascii?Q?g9ysq7bIwblhefBm80GfSCHbEqcafFLy7dvU0lDo0fr9bCe2pYT+I0EqYOGk?=
 =?us-ascii?Q?h6BB/dk0j42Zs5gZx2gW3059l/gpwnZjpaXodI+TC/TFPfocwsSULX0RQW89?=
 =?us-ascii?Q?CGaj5UH7uLtiTbCa7wPIp1OqgaEMO4Q5TomlzGF2uUmm0HGK2M3V/fkRgZEN?=
 =?us-ascii?Q?JeIRHxfls0zxgik8gWzxwBWt6AOeELNOhhAuUL1vvW6CGTrv50m7ycoIJU89?=
 =?us-ascii?Q?OFMQri7PywiNFn0ULtfWB/jLoTy6OjiXzkueY7Zofkqf3JL6/J8JM+0DPwak?=
 =?us-ascii?Q?AJQvSkFml2Xgiw09rHBCyvckIhIupPXmQFj6fIszxGixkhiG+tRLHoiFwTbC?=
 =?us-ascii?Q?J+xyawUQWTNu9cki2oTDagx5oLRQzdOLbh2RUb+IXLamGur2G1GSZxHrVF5+?=
 =?us-ascii?Q?IeN2cnJjtWpys0PcALqg/TWDSVigQz1YANSStpfLnMu/jok5LQbltRHu4yog?=
 =?us-ascii?Q?SQainIuVV8aT80pcS6UShBVkleOgLvw1uBsOGy/onbOhJggM+0hbsPvAJlNd?=
 =?us-ascii?Q?RV/+TlEikNEdQ9AjYzc9vjZquQ/0E+sk8VFnm+dv+F3eNA11QTNU6PTU5g6B?=
 =?us-ascii?Q?9U4ND92HHMjpt7EQY4pY9XhJH+rP/DaPDWi3CSyg0rOR/RLKP9Mh8d2Ib1Py?=
 =?us-ascii?Q?ysRFdhVVYf58duswwNkr5z94rInqd3QPoyJcN4A2Jg=3D=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <CE8663A153EEEE44ABF39B750B2C6AE5@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8897
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000A7DE.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	3bec662d-ef25-40a6-c281-08dc69016110
X-Microsoft-Antispam: 
	BCL:0;ARA:13230031|82310400014|35042699010|376005|36860700004|1800799015;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?U2eRhfTYZCQ8MoaUjB4m1MvbmFNHy5R0DcAGP1BlOKKouQa41ou1EVUbiGQX?=
 =?us-ascii?Q?GVEFnsJEriio9MWwH2YRUfJnTJ1xgXcZUCWeyD6wQlDwjq+4La+5rIrXIW1+?=
 =?us-ascii?Q?YAHLCl4s3BNpw/S7o4h4YKxZ3DzCBACrGpWqrA+MAnc/yRFRSNuyUIFM3wym?=
 =?us-ascii?Q?PzOECzLSF2TQjzYdZUbQpPpF3QO+Dafo8vvjhiVOJqrAcumlaXq43PjSrlWB?=
 =?us-ascii?Q?ARG1uuQT+UtmsdWQifINJ6BKhelnG1GJDLhVyzeoo2KruILpQROfWAyANof9?=
 =?us-ascii?Q?WLi/VVFy6BsxKc/wPiGFlsnPJVEz9w1gyVCDKQsRKO5zLPi9fbbhx1gz/Da7?=
 =?us-ascii?Q?gnHbkj6NVJZUjn3lQtTyw09joJAIP66cduipyIPsLXQRaOlQdsdjV6Y5Nlca?=
 =?us-ascii?Q?o5PMiwxmvKdwm7KVz0m9gwIPrqkZoHARpNuZrFQbuuJqjI+jmN62JXwGNsuo?=
 =?us-ascii?Q?s4Nc+onaQhys20IvPR2f5xbvCCmvAa9+vOmjrQCPB4gmMpPoK4vHHAd5Zser?=
 =?us-ascii?Q?nNhu+vgKS3xllf84myNCc28JXHInF1Kyp4c3+BgISf+LuJnvfRiLGIuyyagv?=
 =?us-ascii?Q?Gs3b6Cm6AJknBYCRMOKmHLTXisMR8Bce34zEuSKj9wG/dW6+dbWLAo6CJF6O?=
 =?us-ascii?Q?IcvTsxeHYfDcsAsAQKGaESKtR6/lwsaPCDdxPergZPyPIIocZAkTPkE710HF?=
 =?us-ascii?Q?4l7MiifnYe8SUoapkQmuuqcZE6/N2f/1HU+JRxotGdzwMV/LK2H2wQMa2Vs5?=
 =?us-ascii?Q?sDppdrSzTn/PV/522Ereeye0Hp2y/5peGEvZ4FFSuDnKYsCmJWzkXsEPcvcI?=
 =?us-ascii?Q?z2xeDZUgdSFeQGIMMxRpn//LqKxc9hjMF0TXk3BBvXaWHiwl8El3SDw8AmgS?=
 =?us-ascii?Q?WXfGg6GQ3qkZTmcN4wajWATQ2m9ksQNunLp4y8ZxyQ8KrR7no83CUQa5bhl2?=
 =?us-ascii?Q?kckYP71i/8R1y1spo1JXFBjUapVsjxWOYTP/QOi5nYvoOAcEc2o7o2eiMurp?=
 =?us-ascii?Q?p6yx+EGP/5ub1UiGC/apUhTtp0Mw3bkBmrqN/W6Tp5b2ZVFlf6VaNfJBIlTc?=
 =?us-ascii?Q?sProoz6JA+P816qDR10MAL3wap64BrdaRfe2+8/z29dgYc/SO9ACOfZBcRHd?=
 =?us-ascii?Q?COBiZTzZupq3+7N48aDqVIivTq20ZMkHkI2KLwMfVxWziXn2mf+4S64pYM2t?=
 =?us-ascii?Q?c/9SMud6wO0vIQ8Hbit7vBn1GTMvcQgDk2blFEqHgu11/r70bGm72ayTThSe?=
 =?us-ascii?Q?EOu0MlVgt5SGzNielJDy5OEnhUgdHCs+ps9hH5cdOiBMTJ3dAWYaTrAzycae?=
 =?us-ascii?Q?IRx13m01AvYLKEvOZlSJoxIx?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(82310400014)(35042699010)(376005)(36860700004)(1800799015);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2024 10:36:31.1414
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c529c04-ca0f-471f-74ff-08dc69016644
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000A7DE.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB7346
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Apr 2024 10:36:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63015

On 29 Apr 2024, at 18:09, Danter, Richard via lists.yoctoproject.org <richa=
rd.danter=3Dwindriver.com@lists.yoctoproject.org> wrote:
>=20
> On Mon, 2024-04-29 at 17:53 +0100, Richard Purdie wrote:
>> CAUTION: This email comes from a non Wind River email account!
>> Do not click links or open attachments unless you recognize the
>> sender and know the content is safe.
>>=20
>> On Mon, 2024-04-29 at 16:37 +0000, Danter, Richard via
>> lists.yoctoproject.org wrote:
>>> I know there are host packages which are required in order to build
>>> Yocto, but are there any that are forbidden?
>>>=20
>>> For example, I have encountered a build issue on a RHEL host, but
>>> only
>>> if the daxctl-devel package is installed on that host. Without it,
>>> the
>>> build works fine.
>>>=20
>>> The failure is in building qemu, see below.
>>=20
>> qemu-system-native is a little special in that it needs to interface
>> to
>> the host graphics so it has wider search paths than most packages.
>>=20
>> We try to explicitly disable dependencies we don't use so this sounds
>> like some configuration for this one is missing.
>=20
> Thanks, we will investigate further.

This is usually solved trivially by adding another PACKAGECONFIG to the qem=
u recipe, and not enabling it (so it gets disabled explicitly), for example=
:

https://git.yoctoproject.org/poky/commit/meta/recipes-devtools/qemu/qemu.in=
c?id=3D9a02fb66c23b40911b5b431b348a2e7f8a2fedfc

Ross=

