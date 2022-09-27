Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12BEBC07E9D
	for <webhook@archiver.kernel.org>; Tue, 27 Sep 2022 16:11:25 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (NAM10-BN7-obe.outbound.protection.outlook.com [40.92.40.82])
 by mx.groups.io with SMTP id smtpd.web08.12837.1664295083513228011
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 09:11:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=GRa0kzDt;
 spf=pass (domain: hotmail.com, ip: 40.92.40.82,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D2NGm6Rsoi7obAjw88+3+YZ6ktvKBagW56Cvn7Wvxl251OdkSu5gn2zdi3g++9bMLuWBi+sZL8879WjMoU9NZ0z5pboW/80GanOno2RwvNd46Igl89Qd4emey0i/nWiwOg6iqli/99crZOAFdMs1QLKZAw26YiYd0icV8KLzfofCradAp96T9kAgZlygtdPLbCwWWyaXe+BkkDvn54NTrmhWy/SrMj/igWq6wxRpmzqpPoopqHrphfCBc0dHKkFfK8P9R78yYFZGvrPnhWmGfz9wH87ZB3MlkylmnqBCnd1IXm5Oo36zJVvi7QXCipa9a3S4lMgVarMEsT0zSg8SbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=znBmgnLixxlRGzfc1ImQyQ58SqDMoE9DuxrJKKvJWWQ=;
 b=dfLJardirDmbPgLpZBRTXHMVdrM+YdKCco1ojf5q+xLmNXBoK8Zavk1i9juLMxF+rf6J4KS7LCmD1f4m1U5bHXHyqQRwTC1SWJAiHi3b2yPHBTylMhCg/uDqVqiIGpkgVXpIi+puZab4LtAoTLScmJbxN8rr8/BqWm2CurbukigGBQxw1Tk58xSycwsbtYOpaKPZDtkgymWjtw5mqh0ExXVeA77NdHMVWtKI7p8VH4SQLBi0/wFrt6ClASNoCiM5ag+DkJipyZkTdTDPdYwz/ubfBWaB/blxCvojEUpAohCvsIdxWur6CsJf7HQgAXgTwy8VH0fE+UO7p75JVy1QPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=znBmgnLixxlRGzfc1ImQyQ58SqDMoE9DuxrJKKvJWWQ=;
 b=GRa0kzDtgGp9paGh+l2Hr56ayS+dmutDCoOYa7zimNiBI3VL+5y7dwWbKEksL6FAbqfJX1WqKfjGl3d5m4ONVH75S5S5uyhWYFDW5C4OhKtJBZ37YWVuwY+hpIqVvkDR8Uxg3B2bPwX+Je4pdnl+NDVfc/0tsfg4EUKkOr5MwdZmkHgVgc5HhLprpnBD4id3LYd4NtMvq167S7HIAojRZTnRg7otlkC6sDaSltXhelMmHgC8LN9BBH8aq+dVxSa3A8p0veguXyXVetwf3xuuLK0Fvb9hpul/y4HkfuGpZ88B3lxBjZg728MmEZQLBfxFH9dTF8L3lXRIESK+LGECyg==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by MW4PR84MB1684.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:303:1a7::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.24; Tue, 27 Sep
 2022 16:11:21 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%5]) with mapi id 15.20.5654.024; Tue, 27 Sep 2022
 16:11:21 +0000
Date: Tue, 27 Sep 2022 18:11:13 +0200
From: PHIL <heideggm@hotmail.com>
To: yocto@lists.yoctoproject.org
Subject: Builing Gcc fails Poky
User-Agent: K-9 Mail for Android
Message-ID: 
 <PH0PR84MB1835B452A0D3EC6E973596CAC7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary=----YG9EQJR06SGYO9WGF63JAXB8PM3SSU
Content-Transfer-Encoding: 7bit
X-TMN: [9o2B3eDCs9Ze5AZD8AZGughWCRP/yLNA]
X-ClientProxiedBy: FR0P281CA0081.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::7) To PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:510:162::16)
X-Microsoft-Original-Message-ID: 
 <6EDDF97F-D5F3-4B09-AF5C-3171A24189D8@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR84MB1835:EE_|MW4PR84MB1684:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d8992c4-1678-45d4-c074-08daa0a2eae1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ojTi1MccfFsNf3v59l/6HzmYMt89hEg+DRqFTSavcaQB68S0pRA8ysZk7HPwhRkxwnoctdK3Zhc2kxYAe1pu5x3Yp7IDtyJGA3+0fP4h8VNjcDB4dkBMd9rfAFy1ppcGr9rcpwtbnVAvyx5fCgC/IS3mLNQV0eCyDGxk49kVVPS86WY6rXVvay/z0DfRms63UMqFb0GsPBxcpv6ScCd39zABBRvQZtu9hmqHNGyYgXEgB4ZiC8uWqRD/yTX7AzpkjLG+Gm+J1tgNAKGCVc/qdOWY6eSFo12tnPHJnFuWtksyRu6Ms7qE5LPmXT+n16SsSXPs9vsYOLfWQRipuKBbno/JgWYq30h/9rFYyDOiG37+gHIdzEwVd6vCKfzR8lwdBk5RSDvfCbE0ETFX/c6DvkRti4NTTSI90j6zTCbMQJ+ORKt23WqaeiVnVBNI38Nt8IU/e6d5bOHaOAgddjrWYtQtoK1/l34ISOqHWOkhHEgc7/2IKIS7PHrfuQ/rLNSc/tf40FR2fstGFBiH5gWYcWvNHdCV4WsP8aAoBr0aoPKeucEzN8WBBF/+pXWlqUUh80hio4RJ68R8CbHWoBTO47bE+3DOqqP/j0hTD4kue6p8SjuDqkgLAZfWibvhu8tP
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OEQrZnpCUmpwODZucVgzaVNpM1R5Zi9ERFlOMFZCUlQwdlZXQnBtRkJFcXEz?=
 =?utf-8?B?akJJdnp0YVFXY1IwTjUvZzJic0pOcUowRXpuYmp0SGhvdDhUenhOaEJxNUdE?=
 =?utf-8?B?NFZuNkIybU53SVkrQVF1RnZ5SjBRbWJ4ZkMzdzE3SDBDU2lNQUtCWDRFSFRX?=
 =?utf-8?B?NGJ0ZEJKbE1kOUtxWlMrSjM1dHdpUWJGaGttWGNGdnpWdWVDSWUwdmpsY1Fz?=
 =?utf-8?B?aHEyN2Q1SFFOOEk3dG9DU3FYc3BXbHNCekV3Ulo5bmVxa1BXOUJqTktqRzk1?=
 =?utf-8?B?bW03RFdDcEIvYVBybVIwUFh4UVVrK0tXUWVRMGMvTHRTMWJCcXo5YjNQc3ZI?=
 =?utf-8?B?RGtKOWoyUk8yRDNxSTRxYXdrWFRTVjhwVHpvZ0k0T0lHcHByS1UrV2VuQysw?=
 =?utf-8?B?OWdmQUJ2WmlqOTU5MUtHWFFrWWJaTnlCNVlIUFZKYU55WkpFQVdnTmZ3RXkx?=
 =?utf-8?B?Qi9YcnBpRDhtWFQwRURXTyt6MGd5cFk1TkREWlpMV0JXVHFTTW9LNy9JdjNl?=
 =?utf-8?B?NUFxRFUyVkdsK1lnRWw4OW9WcEVCUjdPOS9QUzZrNlZmcXdzdFVqRXFHUkdY?=
 =?utf-8?B?enFHcnZpMG9MTkVOc0NoNGJGTTFORVBZektGT3JYZlVpSjlmVnNkMUI0MlVj?=
 =?utf-8?B?OFd3Mnd5dDRjZXZwSS9iSUw4aU1mQ3B4ZXRqYUo3SC9aYXY0VW9TRktEMUZj?=
 =?utf-8?B?ejJaQStiRUNvS00rclBQcnJyNFErZFh2Zldjb2pvT0FZNERVUUx5dHFDbWRk?=
 =?utf-8?B?aVZaOWNWSlQxaFdrOS9ST2dIZGNKSWUzbmE0ZXlOUXRaRktjaUkxL3lDd2RX?=
 =?utf-8?B?bkxWWks3dnRUbC91NXk5UEtUamlJOEtpQ3MxblBySTJnL0pqYmVTVk9ZdCtS?=
 =?utf-8?B?ajJJSzVHaDIrMWdyUEZZQWMyWXVJVERKUmxsZHlIU1hFVGlFc0tBT1ZuV1B6?=
 =?utf-8?B?QmdCc29DcjhqSkNDNVczY042VHduanlUbytVa3dqTzJIV1cwREE5c2piVmZj?=
 =?utf-8?B?WWZ1SUpuMjZwVjROQ1RWOGhIdVlDNEloMTZQRnpoR3M3MjBVUnk5bGp6RmhL?=
 =?utf-8?B?MGJjQVJhQXpqOUlvaTJnQUFLdVBUeW5IMlJnenoyanlVeDNGWVoydVhMOVM0?=
 =?utf-8?B?d0UrZktiQlEyQnhyTnh4WVJwczN4WFg5NnJVVFNveXJEQzUwZ2c3dmtlZzZ0?=
 =?utf-8?B?ZjRsR2ZhZGR1eHZMNllwekt5cmtoMUNUZGJ3enNQeUUwRWtlcGYycnNaY3lo?=
 =?utf-8?B?SEJ0V1ZPZHdQZXdvUVJXbGlQU3R0S3hUZllXRGIwbDdvTW1vSTl2RmFiaCs5?=
 =?utf-8?B?MkN5RXNvR1ZZTWh6eE5nL0RhZjBzNFE4d25VRk0vWUx5THRDWHMvOHpLVHhV?=
 =?utf-8?B?SWtkM3NOVk9iTFYvakJMVjZxUGIwUFIyODNHb2QxL0h0MXE4OG0yd3BSc3Mr?=
 =?utf-8?B?T2J4ajRtWTlFV1M1clVZT1NKR3VTTEFMYW5SNU1nVlN4NTF5L1NLejNhaVgv?=
 =?utf-8?B?bzVsemVBN1AwOHdsOWRITU1IdlZxeHREVWorRlVIb3NiVTVTRisycndhNmdm?=
 =?utf-8?B?N3U2STlMQVloNXNvT2Q2NDZyVnNTeW5raEJiSjloejFVbDNOa1hqOHF5Znlm?=
 =?utf-8?B?VXV6REFDY3d5Q2duYnM2Q3RaUzA5UjdSU1U3ZU1ua3R6RXVFR3NBV0ZSYlAy?=
 =?utf-8?B?bHVwRGRUc2JVaEtJa21nUmtRdEE5c2d2bkFmcFI3UE9Pa3ZPWEhWS01RPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 4d8992c4-1678-45d4-c074-08daa0a2eae1
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 16:11:21.4342
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR84MB1684
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Sep 2022 16:11:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58184

------YG9EQJR06SGYO9WGF63JAXB8PM3SSU
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Greetings,
Trying to build core-image-weston from current master fails for gcc 12=2E2=
=2E0-r0 with lots of linker errors=2E

Names of missing functions are strange ala gen_cmulvnx16qi3=2E
In insn-output=2Eo

System is an ubuntu 22=2E04=2E1 LTS Build Target is qemuarm64

Any idea?

Regards
--=20
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
=2E
------YG9EQJR06SGYO9WGF63JAXB8PM3SSU
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head>
<body>Greetings,<br>Trying to build core-image-weston from current master f=
ails for gcc 12.2.0-r0 with lots of linker errors.<br><br>Names of missing =
functions are strange ala gen_cmulvnx16qi3.<br>In insn-output.o<br><br>Syst=
em is an ubuntu 22.04.1 LTS Build Target is qemuarm64<br><br>Any idea?<br><=
br>Regards<div style=3D"white-space: pre-wrap"><div class=3D"k9mail-signatu=
re">-- <br>Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail=
 gesendet.</div></div></body></html>=

------YG9EQJR06SGYO9WGF63JAXB8PM3SSU--

