Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26611C369AB
	for <webhook@archiver.kernel.org>; Tue, 15 Apr 2025 14:44:19 +0000 (UTC)
Received: from DU2PR03CU002.outbound.protection.outlook.com (DU2PR03CU002.outbound.protection.outlook.com [52.101.66.34])
 by mx.groups.io with SMTP id smtpd.web10.21978.1744728254767784685
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Apr 2025 07:44:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=J2SZq4MW;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=J2SZq4MW;
 spf=pass (domain: arm.com, ip: 52.101.66.34, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=w6yrlNYeygpL4MX37BfPm90FwVg9R+P/tJEXv8L4e2DgmcYdrl1QvFqUHJQi8xyN5H/sprBhLvx17zIjxWsUzRjDjBgwczAJAZdctyLzmO7rjS7x8NpwDEtgrZS3u0RNkE228YhCc/66cGg5I4P1Whc61It7mpCK+VxhzzpXg1W7a/qHZhcHrj2HqIlsCN0gLnhDxg60F6MpXaJVV28DMGpczG0qu5SdfdX6pPa4Ejb2Vf5VLg11Uc3+CsD0bth9SnvhzS8Vctb7m/4Ri6A+Ezw5em+S6MmtKon66DCSEFAxAMCbcFnh44VrdG2zrxZoJJtve3AbPOCUlLjiN0+//A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c+Qvmmer0hbuGYUl9eDVUE+GkBpv/4TNLujKOeSvHlw=;
 b=HdQe9JjVmxMsjUV4U7mbLkoVcREOYMStPayM0BLZ2Yoh2toJ7Nyk1AiJYJZVBGsQsf5HJ4voXyWGmzNhrUiumGEuanUIwPi6dCpuIcRH74GZ7K1vgdzObzSUHI+fqtW7m7eCGNh14YUReqOeofBaSd1oll1gPMPrYTLQ+Sf/piM0NENaL42N98AzzrT45pK4IoHqxOrdjbuXPgZl+QVeE0nwFnidBM+A0bcZCze1JSI3JGVXQAjAgOQQG8phqqyZNgdTfpImjcb7zqItNYuPv6kcLYsOX1AZ7nVQhXv3v8tzrNhMFbqnnq2eUd8H7MMTUWuhEsx/803A3A6kqedIww==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=siemens.com smtp.mailfrom=arm.com; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=arm.com; dkim=pass
 (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c+Qvmmer0hbuGYUl9eDVUE+GkBpv/4TNLujKOeSvHlw=;
 b=J2SZq4MWpYsd+TETbV+InpIETKOe9zGOS+BWXnzb6cqtL1GrvoE5vgGcZWfpY018PYI3vv6bP4+feO/0VgvAACafIfCGoKlOPc1imsyUbbkIwtiZfVkNUzTex+JwQFZdbB876ZR/9JIsj1eJQREMbj95tHbNXV6G7cbdzLW+YI0=
Received: from AM8P251CA0006.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:21b::11)
 by GV1PR08MB8667.eurprd08.prod.outlook.com (2603:10a6:150:85::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.33; Tue, 15 Apr
 2025 14:44:09 +0000
Received: from AMS0EPF000001B6.eurprd05.prod.outlook.com
 (2603:10a6:20b:21b:cafe::b9) by AM8P251CA0006.outlook.office365.com
 (2603:10a6:20b:21b::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8632.34 via Frontend Transport; Tue,
 15 Apr 2025 14:44:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AMS0EPF000001B6.mail.protection.outlook.com (10.167.16.170) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8655.12
 via Frontend Transport; Tue, 15 Apr 2025 14:44:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TsrNYJHX9Q8b9d40ovtO01u0h+ICEUwqALPESwkmOSDzK5e0eiWJ40I3N+pWv3Cd71WEMz8YjdrlLbj7cozGs7l3BdHF2h7H1ZKdlmikgunmH1frnhEHj5uTynRwVXiD43z++8BYwK4uLtq+3HThjpOIMe/KLxFIRzpF6A4CUM7/LhomfGTH3lm2jfF2gG48/AygpWx0A2vpViS8AZcVE9VO5wauoG8gV1VGYygeOWbxZl3HNa9jSBWSKZXPAJQvo+yRw5qVc0UXUtXeiz64chAo6CjwARN/6lG+gyovuXlV0R4FcFgLvYWnpy+Ze0cFUP6kSAFt7+G2e9dmOy3OYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c+Qvmmer0hbuGYUl9eDVUE+GkBpv/4TNLujKOeSvHlw=;
 b=fNeX30DuwASglbeYLM0fuvSbTbp5hdTk5uq4wgQ0UKWEO7+Mwq3jTSz8mT7NrQ10ldrSvpEJnCe8d1J24FtT7aBCIpwL6f20gSrxSb8fEBt5+dYm57f/EETYowYaV4iwrfA14No800oADh5Z+3zTDBThEQ1uI/h9i5/+exREszYTIblRk9ukm1XDdV4WKQHMcFhkAJt21K/xDFxv6oqslyPjvmDj7Tvde3i+kNxUxTZYOA4bRZd67OdWnkDmZc/MwNbdc7bTNl/dd+cQGgFFAfK+7VFmV22feVAwhFz1QeYQgDesmyurXxEW8kjlR3ijY1+Ycf7JtWcGD3glw/Ym0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c+Qvmmer0hbuGYUl9eDVUE+GkBpv/4TNLujKOeSvHlw=;
 b=J2SZq4MWpYsd+TETbV+InpIETKOe9zGOS+BWXnzb6cqtL1GrvoE5vgGcZWfpY018PYI3vv6bP4+feO/0VgvAACafIfCGoKlOPc1imsyUbbkIwtiZfVkNUzTex+JwQFZdbB876ZR/9JIsj1eJQREMbj95tHbNXV6G7cbdzLW+YI0=
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com (2603:10a6:20b:4e1::9)
 by AS8PR08MB10078.eurprd08.prod.outlook.com (2603:10a6:20b:63c::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.30; Tue, 15 Apr
 2025 14:43:33 +0000
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::8db5:7772:a426:2afe]) by AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::8db5:7772:a426:2afe%4]) with mapi id 15.20.8632.030; Tue, 15 Apr 2025
 14:43:33 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "kumar.manu@siemens.com" <kumar.manu@siemens.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Curl 7.82 not supporting protocols smtp smtps
Thread-Topic: [yocto] Curl 7.82 not supporting protocols smtp smtps
Thread-Index: AduuDFppE7HUg604QUqN8uz/8CP00AACGKGA
Date: Tue, 15 Apr 2025 14:43:33 +0000
Message-ID: <8E8829F2-709E-4E40-9DC3-589AFB75910B@arm.com>
References: 
 <TYZPR06MB5178F94F85D11BC311E4676186B22@TYZPR06MB5178.apcprd06.prod.outlook.com>
In-Reply-To: 
 <TYZPR06MB5178F94F85D11BC311E4676186B22@TYZPR06MB5178.apcprd06.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.400.131.1.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-mailer: Apple Mail (2.3826.400.131.1.6)
x-ms-traffictypediagnostic: 
	AS4PR08MB7429:EE_|AS8PR08MB10078:EE_|AMS0EPF000001B6:EE_|GV1PR08MB8667:EE_
X-MS-Office365-Filtering-Correlation-Id: f4ed085d-a7e5-4f27-e8da-08dd7c2bf9d9
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?TjNHSXdKbmE5MmxQSTlDS2RmUkRhUlNxRlMweURyc0l3RkxoVzc4NENoek52?=
 =?utf-8?B?dHpZUHYvM01LOUV4Vi9nMVhCcUFQaTYwaE12bnoyZHkrc0VUVzN1K2tvVHhH?=
 =?utf-8?B?WmZDS21aMjAvcGovd0lIMmk4MGhpYWM5cjZoS3VLN25tSWVrdDFHVTVuOGdt?=
 =?utf-8?B?OVNMcE1zcnV2VmtGU3YvWm5LZzQxeEs1YU9tQ2JEcFdRZkwvOGRBU1hkbFBK?=
 =?utf-8?B?NE9nZGVWSXRyS0RjK0Y4YmhrYTJrdC8zQzQ3dU5NbFc2TVdXWnppYlpQMEVH?=
 =?utf-8?B?alBGRHBOemR0ck1hVlVwb1NSNlBWRTd4UUFFTmFhd2RKc1ZLV3RwTnVYVDJS?=
 =?utf-8?B?UjNJeExyWTk3OW5ackExK3RoTVBPOG54N0FrMDB5R0dmNk0vYkJIWEhFUzRs?=
 =?utf-8?B?eGtJS3F5VVExbjgwenBheld6aFkwekF4cGJ4TlNOWGUxVTNiUWV6MG5aSzBn?=
 =?utf-8?B?UVV5aHFTYWpEOHIwcEdjZWswRVRzUDNSYTB1QUF4c1V4VDdqbUhvZDU0R3Fs?=
 =?utf-8?B?NmlKb08vTk1QcHordGJBV01QZXE2UXlXMm5PbXFpUGpzL0UzYjc2SzM5YSt1?=
 =?utf-8?B?ZUtvdWNFY3YyUWpnNkNXYVQxWE5weVk0VGsrN1BVOTNxMWlneXJmRGVhM1ZZ?=
 =?utf-8?B?eW1hTmVYV20rRzJVTjRNZFE0NHd3cTdISzZ2UHJQamc4VXI1dW1CUk9rYWp2?=
 =?utf-8?B?ajF1VEMwemNCYlhOODlSVndUSjNYU0pKWkhGZko5TWw1K2taUFdaTnlyZDdV?=
 =?utf-8?B?WU15bC84SE1BckE1Z1V5VWJ4MkhjbnBRM2d5OUlZajNMZ05KU2ZqT0J5ZEJQ?=
 =?utf-8?B?U2lGQ2lWRmdMSVpEU0JiZWMzWWxydkRjK1BuYWhML0JZbEpGUUJ1WmdJYVlB?=
 =?utf-8?B?ZHo3eDNibnBmM1h0M3NLVW5DTWdiOTdRWVRxZ1ZzSkRnVTIzOTQ3UStoNXlL?=
 =?utf-8?B?aFVPSmwyNWJVbUdENHRNaGR1S2liUjBTdVN5VUJEQjVCVFRwMDU2QzR0WlVu?=
 =?utf-8?B?d2ErSWJzZytPR0J2NklOUHdsMmgzTkpXWktJTG5mMGZzb01sQy9GdE9xbUN6?=
 =?utf-8?B?SlFxK2pLUU1pRWFpdGovRmV4d2R2aUp6L0N6Y3lBdXh4Z09xNlU3TlVSVC93?=
 =?utf-8?B?djJoYkZxVWQxZUs3QWRVdklzOTRqS2NmOXE5UVJLcTNSbWFVMzE3MXVaZEFR?=
 =?utf-8?B?MXQ4bVR1cFNWNUJKZWhubTM1bnFzS3ZxeXh2RlRzMWZ5WFQ5QkJia2l1UENU?=
 =?utf-8?B?TGF1TWtOM0xrdkt0ZmE5WUZmK2tNQytvOWw1RDNhSENKdUJGTHU2TWc2NjVy?=
 =?utf-8?B?NmdOa3BoaTR5aGhHS2hZT2VJbDRnNEJRUFlNVS9uNStMWHo0UXlTQmR6WWZy?=
 =?utf-8?B?Q3oyL3NZUWRvaC81LzBWZnNDYjM1WFFzZVowUnpyaHloVC9iY1JGVXFQWk9Z?=
 =?utf-8?B?QUJlYUVIZzJLSncxVTBQQXdubUk2dDhwdXZqamZxRTFKWkZyUkE3UTZTMHVo?=
 =?utf-8?B?SnpKeUMySmREaE1nbStHcDNKd0x5N1VaN1kwMmxXbnNhM1VpOEIvOXNkWnpK?=
 =?utf-8?B?SWJzZVBudGdBNkFoek1hK1FRTUxJd0tTaDdyU0dwa04ycFNXcktoWGtML0lm?=
 =?utf-8?B?YjQzT0dta1dneTJuVkNlaVFxazNUcnE3ZWEzZmcrMlhlTXA4VFhsYmdRaEo2?=
 =?utf-8?B?K2VGRUEzN09PR3BJeGdWZ3JBUmV3RERmTHByOGZ1NVV0T1hndG1WK1BoZ2JC?=
 =?utf-8?B?T3JXUzR6QlJiM3IyZFpqbUMwQmxkcnMwTjFvZWtkWmtZUUlTQ3ZyQ0l3U3VV?=
 =?utf-8?B?YklQUjMzOS82VndoMkVyeTVsanlWcjBhdWt2Y0xmMjhkTGtIc3RHU1d5TTgy?=
 =?utf-8?B?Y0JkakxYV05RVk9VVTFYcStiWWxuVjJKN296MmRzNVU2dzFLZ2hqMkpLcnJK?=
 =?utf-8?Q?9d95coTvX0Q=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR08MB7429.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <BBC5AA3B37AE9543863ED4F9EF0B616D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB10078
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001B6.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	200c6d5b-d798-4707-0b29-08dd7c2be5e2
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|14060799003|1800799024|376014|36860700013|35042699022|82310400026|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bkUyeDFqbTBqRFdtOEdsQi9INHlGL3VvU0xrWFFQOGtFTjRIOTB4S3dnenFq?=
 =?utf-8?B?SXNiSkJSaEdWdWNEbm1IdUJRV0xUc1NiTElMR0lrRkJncGgwaE45emRYNnBM?=
 =?utf-8?B?ZHQyWGovK2owVjN0em9wL2Fqam51d0JTall2M3FYcHBhL2lzazFXazZ3cUdR?=
 =?utf-8?B?MkdiODUxcWJ5Uk41M053RlZxRVZ1cGdqeC8yVTVvRWFWaG80NjE4a2xLNE8w?=
 =?utf-8?B?REc3c29mM0tvU2JRNHJuTWFLZEw4ZFhvcEhpN0twNWpTQktFTlFsTUwxL0dl?=
 =?utf-8?B?L09lOE85UE5ScWtGOG1PWVdDbHBISFZIYldnRStVaDkvT0JaWU94RC9wNk1J?=
 =?utf-8?B?aW5jRi9ub0RSUjR4K1k5UnN4NEZqaHhUU01WNEllbCtrclpvY2hUUWkxL1F2?=
 =?utf-8?B?NW0rLytuYTAxZ2FoNm9EaS9WY1dxc0RLS00rUHl6WUhUWGxoU0V5cWQvSzcz?=
 =?utf-8?B?cDhvMVU4bUFjNnZXQmcxM1ovVXY0dVpjTGczVllZVkxtNzlSdkZ4bkd4b2JG?=
 =?utf-8?B?ZFdrbnExR2JOQkZISXpSSHp3dHgrdUJDajE1VWpERDlvMnZ1K2VOMldMVXRk?=
 =?utf-8?B?OTJRTWZtd29pN2VPQnU4ZlRGaGlGTmlCakQ1VjZ3UmFoYUJmbTJyZUFURE1y?=
 =?utf-8?B?dHlPREhlaDZnVDNueW56VVB5NERiakFIMkFtd2RnOFF0Zk1YbFI4NzVmTkdX?=
 =?utf-8?B?OUlmMnE1bUQ5S253c0lITUlJaDdVMXlUUFd2c1ZuZDhuUnYvWEVwMnF5ZFdY?=
 =?utf-8?B?M09wTm9DekNSY2Qzd1JpR3UxMnNWRWJCbUEzNmg0V00rZU5uSUxQVFZ0ejVs?=
 =?utf-8?B?RTZqUkZScXk0U2xTSjR5YjBXTCtvcDVmTUVGTms0L05SWHJvSnBLUGdyeUc1?=
 =?utf-8?B?U2JzRkVqOXpUWk0zcXhNVXJuR3NLVjRJSDBCZUtIMzZ5K05pUnV3Q096UmNp?=
 =?utf-8?B?Qmgyc0dMYWlMOVdJSVJmT3pQREJuaU9vZ2NxdU9TVVBZRHNONzRnTFpkUVNs?=
 =?utf-8?B?aUpiWXZ5aTZOYmRoemxFQTRicEZLemhxU2ZwNzQwVkFQMFR5RWFiSUhLSFlj?=
 =?utf-8?B?UDBYRENzTlN3bHBDRG1FaTlPSjJNeEhlby81UTNVaVpGZndoQUZkV0VidE1m?=
 =?utf-8?B?RTVaRHJFUC9icHcwT015VXJNenlxcXNtd1MyOFcvU2tTQlF1ZzZzcHZDTDRy?=
 =?utf-8?B?MDVJRkVXT1dBWHc5Q2ZTT0Rwc2RaZGFHK0Nndmw4bmNnVE9JS2hrK3dRdEcz?=
 =?utf-8?B?NVF5UWw4WHd0M08yb1dCdnZKUXJSMEloSGVwUU93NU1zNE0xd0ppUHZIR09h?=
 =?utf-8?B?WldyZFZzbVJvSzRRVm1rbkpFREJTY2hmayt2WGhYeFhCaFZTMWVJUDkvMDZp?=
 =?utf-8?B?NUtkcXAyYllpV3RKc2MrenZNTGViRW11bWYwZ1d2VU1CVkdaeno2Rk9yL2xL?=
 =?utf-8?B?b0ZTQWIrNjZGSENGcWwwUi9Mc1gybUNweTNJZjJUV3NBTWFaR3RnSnRkT1Fq?=
 =?utf-8?B?UGFibUhkMVMvUXRVaW8wTzB5OCtlck83NlNiNVA0TUxvaE9IMFo5RjI3Z2lM?=
 =?utf-8?B?NDFLZndlbmdjcWFCWXdNUnN0bVh5d1NPZWw5Ry9HRkJOZjBsc3krUDVWMi9n?=
 =?utf-8?B?VHF1b0pOSUdFanIyUHFDLzdaT3FRU3B2ZHJqNUplRFpITlVTbUlLZ3ZSSFJK?=
 =?utf-8?B?Q0lYMk5QdWVrT05kenZGQVdCeWhSSGdkb1F6RG8yY2RJaElGMkNBVmZnZ2Fo?=
 =?utf-8?B?Y3NHSERZRGpUeGErMjJZQUxuYzUzV0hhNU9kVlNUSFJjSjhReDZlaEIyY3Nv?=
 =?utf-8?B?bktBcXN3azVldm1HcjJ1K2JaZ29hYzM5dEZHZzFGMVlhK0FVUFFlSmlKSWpQ?=
 =?utf-8?B?ZVU3Zm0yOENHMEYxWXFjWlVBL1FpTm93aStRNzJ0TU5ZRjJoNmZTSThZVkJi?=
 =?utf-8?B?Q29jTnZKbWdwdkdKWXNnUFl1N2wvNWJsZmdJY3M5T3AycUY1dGU1aWgzbDlB?=
 =?utf-8?B?ZzN0VlcxbHl3PT0=?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(14060799003)(1800799024)(376014)(36860700013)(35042699022)(82310400026)(13003099007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2025 14:44:07.3411
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f4ed085d-a7e5-4f27-e8da-08dd7c2bf9d9
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001B6.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB8667
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 14:44:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65175

T24gMTUgQXByIDIwMjUsIGF0IDE0OjQzLCBLdW1hciwgTWFudSB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8a3VtYXIubWFudT1zaWVtZW5zLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3
cm90ZToNCj4gDQo+IEhpIEFsbCwNCj4gIFdlIGhhdmUgb2JzZXJ2ZWQgdGhhdCBpbiBsYXRlc3Qg
dGlzZGsgOS4xKGN1cmw3LjgyKSB0aGUgY3VybCBsaWJyYXJ5IGlzIG5vdCBzdXBwb3J0aW5nIHNt
dHAgYW5kIHNtdHBzLiBCdXQgaW4gdGlzZGsgOC4yKGN1cmw3LjY5KSB3ZSBoYXZlIHN1cHBvcnQg
Zm9yIHNtdHAgYW5kIHNtdHBzLg0KPiAgQmVsb3cgaXMgdGhlIGxvZ3MgZm9yIDIgdmVyc2lvbnMs
DQo+ICBjdXJsIC0tdmVyc2lvbg0KPiBjdXJsIDcuODIuMCAoYXJtLW9lLWxpbnV4LWdudWVhYmkp
IGxpYmN1cmwvNy44Mi4wIE9wZW5TU0wvMy4wLjExIHpsaWIvMS4yLjExDQo+IFJlbGVhc2UtRGF0
ZTogMjAyMi0wMy0wNQ0KPiBQcm90b2NvbHM6IGZpbGUgZnRwIGZ0cHMgaHR0cCBodHRwcw0KPiBG
ZWF0dXJlczogYWx0LXN2YyBEZWJ1ZyBIU1RTIEhUVFBTLXByb3h5IElQdjYgTGFyZ2VmaWxlIGxp
YnogTlRMTSBTU0wgVExTLVNSUCBVbml4U29ja2V0cw0KPiAgY3VybCA3LjY5LjEgKGFybS11bmtu
b3duLWxpbnV4LWdudWVhYmkpIGxpYmN1cmwvNy42OS4xIE9wZW5TU0wvMS4xLjFsIHpsaWIvMS4y
LjExDQo+IFJlbGVhc2UtRGF0ZTogMjAyMC0wMy0xMQ0KPiBQcm90b2NvbHM6IGZpbGUgZnRwIGZ0
cHMgaHR0cCBodHRwcyBzbXRwIHNtdHBzDQo+IEZlYXR1cmVzOiBIVFRQUy1wcm94eSBJUHY2IExh
cmdlZmlsZSBsaWJ6IE5UTE0gU1NMIFRMUy1TUlAgVW5peFNvY2tldHMNCj4gIEkgYW0gYXR0YWNo
aW5nIGN1cmwgYmIgZmlsZSBwbGVhc2UgaGF2ZSBhIGxvb2suLiBhbmQgbGV0IG1lIGtub3cgYW55
IG1vZGlmaWNhdGlvbnMgbmVlZGVkIHRvIHN1cHBvcnQgc210cCBhbmQgc210cHMuDQo+ICBUaGFu
a3MgYW5kIFJlZ2FyZHMNCg0KSGF2ZSBhIGxvb2sgYXQgdGhlIHJlY2lwZSBhbmQgeW914oCZbGwg
c2VlIHRoZXJlIGlzIGEgUEFDS0FHRUNPTkZJRyBjYWxsZWQg4oCcc210cOKAnSwgZW5hYmxlIHRo
YXQuDQoNCmh0dHBzOi8vZG9jcy55b2N0b3Byb2plY3Qub3JnL3JlZi1tYW51YWwvdmFyaWFibGVz
Lmh0bWwjdGVybS1QQUNLQUdFQ09ORklHIHdpbGwgZXhwbGFpbiB3aGF0IHRoaXMgZnVuY3Rpb25h
bGl0eSBpcyBpZiB5b3XigJl2ZSBub3Qgc2VlbiBpdCBiZWZvcmUuDQoNClJvc3MNCg0K

