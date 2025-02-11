Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A481EC0219B
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 10:52:59 +0000 (UTC)
Received: from OSPPR02CU001.outbound.protection.outlook.com (OSPPR02CU001.outbound.protection.outlook.com [40.107.159.29])
 by mx.groups.io with SMTP id smtpd.web11.9621.1739271177583845320
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2025 02:52:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=YupL2jMC;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=YupL2jMC;
 spf=pass (domain: arm.com, ip: 40.107.159.29, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=kINiwFDDkCIuUyfOJKXC8pzDq3FthBmFuLqcNJy+eSwTFSvB+4g5AzasqiIO+SvEYHSQSeqqreJzSC9KTWkGa3YabNk9E+qASQt9Aj/CoVBa102FWtPUcHMuN3StzHR4mKNAm7c3QlkMLbCzRDR9S6jnG/pKDjrvNa5yuF1D6453wwpepxX2hW9PEnZEgCT5zazEwAWwkbh6SMSDFWO1Efh6WSYpq1ILJiui8SzturI0E1sXTst5IWOtJNx06p6/Ayxma8LWIY2Gvw/CbMPDaoQz2En/iXIAcrVBY9sxpx+wusTrh4X+qOFscFurOCdgVDdN/uO58NctzDis+baKCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a4KTn3tZii/ADuYE8vWuYlR31Qc0OkAd+hfSLqYxGu4=;
 b=RHjaBTo5EHGJ742gKZ8I+U79Utb9xjhLikNpxWF8te0fyAsiwkDFjILotfQnRkPi/odUk01/owj/6CIHF1GZehoyPdoOSqbZyeRTmiMy+S4prSluQwvewnwJd/FTg0Pex4fy8wUWW9FgEcON76AQDdM6Zg6r5pBd7m2dd+en4/frAi6vxG77UmFTvtRSi92NvAFshGfqD3pp8RGxPU9Hdlj4sD9lDTi+DRho/4Z85YDMe0TvUIRVuqDO6LGxmSAelyNs3NclfNVeaqcxdpEtGaC/qVzJGAqiP1Qo5GUIsJQ7BjlnThP//IU6eSieabaM+zrWJXZpSyazGT9JsDRuPw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a4KTn3tZii/ADuYE8vWuYlR31Qc0OkAd+hfSLqYxGu4=;
 b=YupL2jMCvKasZC7ZVGpLwR1dJN5ii9KnxGsU7txZUk8vE0sy8KzMSB3Jo/g8DXRF2vjlZRyNyGn6s/O3xKpGJ3HB37OhlzlYC4MAqkzaloP7BzIylryfy1flZWaCYTQrVBqOiyKnLfHGZqo56xYdLYlt4eyHh6BEs3xYOIxAs8c=
Received: from AM0PR01CA0179.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:aa::48) by AS2PR08MB9295.eurprd08.prod.outlook.com
 (2603:10a6:20b:599::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Tue, 11 Feb
 2025 10:52:51 +0000
Received: from AMS0EPF00000193.eurprd05.prod.outlook.com
 (2603:10a6:208:aa:cafe::b7) by AM0PR01CA0179.outlook.office365.com
 (2603:10a6:208:aa::48) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8398.30 via Frontend Transport; Tue,
 11 Feb 2025 10:52:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF00000193.mail.protection.outlook.com (10.167.16.212) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8445.10
 via Frontend Transport; Tue, 11 Feb 2025 10:52:50 +0000
Received: ("Tessian outbound 31e949b9df6b:v567"); Tue, 11 Feb 2025 10:52:50 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 1897ed950269e533
X-TessianGatewayMetadata: InOx6BCwwkrR8H8JN9EcwttYo8FFIXocaMrDegvVVr6yOtXF5zivcQMaLA0W5X4tVK+SR3zGvMm5gG02SdfC68EEWStN+IqShnIRljIVcQ49EA1kB1F6of1xsDGpBdFWrR/BuTmLpcA8MgDHEtz8SuH66BXlQziWwnA+md2AKeU=
X-CR-MTA-TID: 64aa7808
Received: from Le638c4a862f0.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 0FC08A8F-CF8E-4806-8E2D-7D685F181CD5.1;
	Tue, 11 Feb 2025 10:52:43 +0000
Received: from DU2PR03CU002.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id Le638c4a862f0.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Tue, 11 Feb 2025 10:52:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y0KVj/pV63X5H6FTNWRHFnlczf7ykKwa+XotFgfKVEgOHKDKv8vMqAv5ZuXc0sMh5U6ln9v6YuGdMWg4YIseDs7SKLClZMGObDvtvknAqkoWHYRYEcVZ7Jr8BsGKUeSzwSLFmFxNwdH842tV8f4oASnoRp9UaiMjLRmVbUEx130qXhwXEw1DgGEBuY5LXik3I0CUwAbbY95eLBcvn08LmTK1lhtxFKxE7ZDOml4evOjMffcsF1IX03Kl14wKC/P+36iC4S3BDpgrO9ioF0RInkrEcKSuej9/Qg1nSoSdF7NF9hYSVf/edxjgk7XY/0jQG8jI3owohVeJr/j/UpvRIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a4KTn3tZii/ADuYE8vWuYlR31Qc0OkAd+hfSLqYxGu4=;
 b=sAA824p+hhiNogFGsKyUqxSsZYv4OruBVQLXG41+W8l95G4Xi6AhQ7kEnsnwl8is3lZHUGVlyGKc1NI0Prn+dN3IU9LjTVQv1HfyP1yr/OrBBYkVSh53+i+iE3Us1S+MZOVYR3PTOrAGVDQhaMQko/6XsCoG8YYjmh2u04GuRp009h/g7jTtCIHqDJH+nR05b36SEZviK0O6rsozqccixoiajgj+ZL8MawlcS+s30OdZFMCL53PcARKTJ8UqbpZnqsHeR8Z64SHeRnliEnwWrMS2mwo9XFLQ5xLBnh/P9WNuPE/zU2oLRqZ/JeTZ9CnlkdgPepar1tAIEqC3NzhMQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a4KTn3tZii/ADuYE8vWuYlR31Qc0OkAd+hfSLqYxGu4=;
 b=YupL2jMCvKasZC7ZVGpLwR1dJN5ii9KnxGsU7txZUk8vE0sy8KzMSB3Jo/g8DXRF2vjlZRyNyGn6s/O3xKpGJ3HB37OhlzlYC4MAqkzaloP7BzIylryfy1flZWaCYTQrVBqOiyKnLfHGZqo56xYdLYlt4eyHh6BEs3xYOIxAs8c=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB8567.eurprd08.prod.outlook.com (2603:10a6:20b:566::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.11; Tue, 11 Feb
 2025 10:52:41 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 10:52:41 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"emailaddress.ashish@gmail.com" <emailaddress.ashish@gmail.com>
Subject: Re: [yocto] Help to understand buildhistory
 installed-package-sizes.txt
Thread-Topic: [yocto] Help to understand buildhistory
 installed-package-sizes.txt
Thread-Index: AQHbeSosHfzBCiIANkq4nGL97DoIELNB88SA
Date: Tue, 11 Feb 2025 10:52:41 +0000
Message-ID: <862163C7-5F1A-44B9-A455-2DC71CBC68DB@arm.com>
References: <tQXD.1738909987245736479.Qv8u@lists.yoctoproject.org>
In-Reply-To: <tQXD.1738909987245736479.Qv8u@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.300.87.4.3)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB8567:EE_|AMS0EPF00000193:EE_|AS2PR08MB9295:EE_
X-MS-Office365-Filtering-Correlation-Id: bc18913c-24da-4c3d-8a98-08dd4a8a3a62
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?3HKeG8KiU17SB+GYSqUpPdTGZ4fF7y1suzAmjYQfhWH0iKYL3l6Oj/+CA/S1?=
 =?us-ascii?Q?h7bOVM3WL94nlDKRbiUEMUi9zUx3+6iZox+mkv7UHk9au86mk1HvOWV3W1zt?=
 =?us-ascii?Q?FmKNRxGeW8L2a+wy0r6U4GerWR/x0UQzkHCtfnV0PBdsSbNR04NU32EEM5Dv?=
 =?us-ascii?Q?AGjeovqxgC2l/WtnF1RB7i69neFCqQlxMwu3WDU2MKFmuO58BwqY2PAucyMU?=
 =?us-ascii?Q?Ro+J+feUeY24HzgtaZWrj9mLnNJh8buEiNrHlKcyjnDMOwk6Rv4YlFOrKHc6?=
 =?us-ascii?Q?4xZYKQHdJbmpPzW+Y/tZ4Leiuhl+hEVsfkKhefa8QsirPNeD5a02Mm8E3fK7?=
 =?us-ascii?Q?ahmUD5N15v1RrjAm8h0jtsgOGryk9ushO6dBjwYLWKQ51oRuW3sMSG1aMnJ2?=
 =?us-ascii?Q?/BuC+LlA6nnWEtRHisqgeRSwf5dyUMfEyT2/8xWlTDr3UwLs8O/qAH+1aOo+?=
 =?us-ascii?Q?fn6v8H7KnAZcwjHlOd9he3XJfiW6w4epbwA5wR/0e+wwXMxwlaPNnYG2gIvj?=
 =?us-ascii?Q?b97gYtDvCazJb6CCHidweuVVqekJAroq6OjCexAOrX+aEGjpvZAboxlZfJsA?=
 =?us-ascii?Q?kNmF0WGrYZ++Sbcpk1ksZkk1rRnauXzpVugQpuHytly/+ioxKwNawjw+xw4N?=
 =?us-ascii?Q?bAhhT4mfUu0DBuTT96mpaTfeZgv1aTh2OxYo+uPFMGj0ETvbvxsNrpSQTBfj?=
 =?us-ascii?Q?ytxVa9X61R18qV2m2agqPBByk5gjpmV9qEeCqtkPXIbALy/DfThdKDNzsO0J?=
 =?us-ascii?Q?FB/pPO+kETJLbi90HTvnA9HBOLie3TQEph2M9mZkmos9+NojcpjPN7+SpMmw?=
 =?us-ascii?Q?ER5Ne3LesibB2TRddVF26BJbiUoPlFv1o2i4q7v5LvrCyi+ZmUCxwik6ce7p?=
 =?us-ascii?Q?onje8naOd5+Uvie6ud4hrxDuBhvu7fRS4kwF7JofHqsnYMsp128m+uXr4dUH?=
 =?us-ascii?Q?1j8+4UZkodzH6eJFEYRB0vYGDJD7OeZoekojkVU2nUG+yj9PKMUz6dvyPRwB?=
 =?us-ascii?Q?WGqN0aOSaCSTx9ioVyLkO6+pSvY/k1QyfVSyvoDyAAZkINgqDZadl69cHwlE?=
 =?us-ascii?Q?Us9BUdjKHAwr+p8zJ0PlJkXbZaJ4OIMbgf9Ys11TYgOQXhQDwxjfJt+oLhMx?=
 =?us-ascii?Q?lFfIdpqHQZ86T1PpymGqufrhHXnczw6QjDH3ju17wjNarUhdedPOCiCyqQs1?=
 =?us-ascii?Q?BECtpm3dshSbHijByG1qj/nEIlx5NEfK0PN2DOwGZwkYCqQU/ZHQQI9P2bsK?=
 =?us-ascii?Q?jEi0aNi5fipZMNexq8zWiaYh/1qsSsWYcAIT4JwpqiDiHyLWBw3zLWpjyR5P?=
 =?us-ascii?Q?yHvu7ZTErb+X0GEj0fIFxXgOp6dJnxZwbKflejP5N45lsNUo1t6mLCmDsnkM?=
 =?us-ascii?Q?9EOzG2c8m1rbPJZpt7VK5r3y9pW5J8UeKecJAX0WM4/H+BTYGMbDvHnmC3l8?=
 =?us-ascii?Q?y3dy0G9HpGarT+ZnOOVyKPXkABYkZZ5S?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <6BB9B77D2162A4499AEFE9BE472C3968@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8567
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF00000193.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b3bdc0b8-b30a-4df7-8a4a-08dd4a8a3563
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|36860700013|82310400026|35042699022|1800799024|14060799003;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?Q9ulpK0iiGA9JhiiMp11Cns8YgQ5xmRzc3WgAMGE0U28REMCXnPQtdwKdr0j?=
 =?us-ascii?Q?QUdn6CvvIu1MXbFaIa80jj53+EaMqSKGKHdBVEkkjWgizz9tl3yZEBV8lRzw?=
 =?us-ascii?Q?Ow84o2I9pp1AhOrVRKIIYlwCaLyToGT/BtBzleMQXEr+Y14SIhEvkrAgRsT6?=
 =?us-ascii?Q?X/9nJxg2N9R7Ga9Vla+/173n5pAXvianR7EAPPdYVTdjFeYpRWRCD4W9SXMn?=
 =?us-ascii?Q?+hpM5pHZl7I0kCK7iAMbO1DTErsesIX11m40Fg9lu/MtIJnKqk8EIfYewAr1?=
 =?us-ascii?Q?jM/utHThvgZGjlG4MrYzwA0hf4JVOlJiQuOoiJbbqhqcAqlRBBYGKArnw0R0?=
 =?us-ascii?Q?RVeNTctxSGI90aLu4mDgA5z8uwiwhiVDFKKOS69b3pJSRd78ocWlaICrNnYS?=
 =?us-ascii?Q?gRqt9SkuVlCbQihGM0a/2s+i/jmDAuTriTVLmv45jtWM7JmbVsU1c8O3C6Df?=
 =?us-ascii?Q?13oJapR4C218vEgwkeYZnmMABfIJs6ST1y51dXiDjX3M+5e8Sme/tJmSkDZs?=
 =?us-ascii?Q?P2cupUQnCRl/d7UbagQ7IB9VrsxEejxHkiGp+O/A0PWVzaWLE+j3A4XAiSfL?=
 =?us-ascii?Q?x0scimKg4wtE10WVddrUoF4dUnjcUBEpqj8Ci7zeooNZJV+XdSXYH8SbCQ2F?=
 =?us-ascii?Q?OQGwMHf5hF/vGN60SKXNA7DUba4SDykmtSeIzTL0BeJA9RrL72AetXA5S31B?=
 =?us-ascii?Q?85HrzMxSksjJW2xghEBPh3kvVKlPc/TxkLm2dFbL/H55iOq2MFx7jHcapUAI?=
 =?us-ascii?Q?5Pg+p/Sfiwf+awKggV3XIxIq0L7f76UDEbkdCTwTdoPk1Pi2/UhAiTV8w+YC?=
 =?us-ascii?Q?4xELveSMYWu7grVj/h8rMzAIAimISnHhPGxoewnI5kIYE/B2L5zimtVRU9er?=
 =?us-ascii?Q?JmJkkUWpohaECf2RzSEdNgyzB6cqbqFJDw1oAY59Z6g/B47KQbwKWBATqaXo?=
 =?us-ascii?Q?taFI5BduF6TsKtyS+m44Iz1wDQ2s5ctooaPYrtU/z37cGh1UHTOCqc49E964?=
 =?us-ascii?Q?Yj5Wht2tado1D++qmarcspSMegZcGTSnW6mjuO9lgcOhQGvDdW2992oQr+H+?=
 =?us-ascii?Q?VSAgigu4Y9B9SZya5BteT36ZQJTqSpGiQtUV0QpfU1TGSnb6ZxtuxJjhhlPH?=
 =?us-ascii?Q?XpNBSq5fANswXCVh7s8o66fwwwhg7eY7D8Etnom+wH/NOQt+TQqx38jJ8bwy?=
 =?us-ascii?Q?csSS/q0h5aD3bjaNyKU6DdBjf4v4wBHBz4x+kv61cIpq2kpxjyC7oX9G3c2L?=
 =?us-ascii?Q?FwjJc5NMKEPSsZDc3h9DzfZOly/Xsq+qG69Iv3br3KvVwxcM9ef8Pqu1O39C?=
 =?us-ascii?Q?LoIXLwKzH2iRMEmXM5QTnKbW58uKolyBp3YMuz5NJDUepeeKp6JmUFIlj9tR?=
 =?us-ascii?Q?zFV7rS5WVJOdxvbGvXTcOHXra4Ttu7xYO5mbDOJv9nHpYzKcGhyRSE5OVonp?=
 =?us-ascii?Q?7lnWQFGjxIVZWTKlAyE1d4zHm2Y+johvLSXb+fNkwOKBxmfSII2/aq/7mLIg?=
 =?us-ascii?Q?aEVOpq08dXg4mm0=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(376014)(36860700013)(82310400026)(35042699022)(1800799024)(14060799003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 10:52:50.1488
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bc18913c-24da-4c3d-8a98-08dd4a8a3a62
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF00000193.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9295
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 10:52:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64762

On 7 Feb 2025, at 06:33, emailaddress.ashish via lists.yoctoproject.org <em=
ailaddress.ashish=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> Hi Members ,
>   I am tying to reduce the RFS for one BSP  and making use of  buildhisto=
ry / installed-package-sizes.txt=20
> I was expecting this file will have all user-spaces packages only.
> But i do see kernel-image-uimage & many kernel-modules also in the file.
>   Hence wanted to understand why this "RFS package list" has kernel and k=
ernel modules also included.
> Any pointers will be helpful to understand things better.

Have you checked that those packages are not in fact installed into your ro=
ot file system?=20

Ross


