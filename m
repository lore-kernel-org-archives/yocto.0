Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28C2AC41513
	for <webhook@archiver.kernel.org>; Thu,  9 May 2024 18:58:49 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.40])
 by mx.groups.io with SMTP id smtpd.web10.3895.1715281121839339981
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 May 2024 11:58:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=iXGs8C/p;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=iXGs8C/p;
 spf=pass (domain: arm.com, ip: 40.107.241.40, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=FG1Y4cZ36YxKMV8GJnAvcMy1wChAuChAtqszapfeoJuhHKqCnZjo9AeA+azZnHfEUstnVpJ4Uz0aaENZpkbUAfWdgb64FXbOh57Gw5iYH+dEgGcgEMg9pTk8Y00j/keP9LGWRMTLaF0FMk1g8WGsDEYRh6IE0TCxLVHaTxJT3NjXZJBRVMX2xG296jjsTflcsl2c2sOW2H5RpEkKdF8gP0BNGtH3p5pYN7ouqDrkCdAh+pZtpwp1KQZcOWIkJSi3+/4jPuouCbLgmHJie96pRFOSvtjDQjCKC43xwSOjVazYsywRRaJb826Jc9r7dTw9KN+GiVhYnryFQ1f/NDCxCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hDaq94/vlQC+400xzRjwEAq0vS5QHsF0nqQHj3SMx0A=;
 b=FVpgWbb2cROkmIf3W5B+dBsOviQprEcAPDFtaTDpZSzqoBdWkP/8Da/l3NVjc8xwQEESJI7mayfmhhbUpY+x4w4GK/cMrzz+qOX9SxZqSCbZVCxLGj7TFcDpJmLFm0U90ipN35tq6NpN4gFsDvkv3/UO8bmzUYwrtgZrTq/sKqHWiZgyHBWWjYvHhhlkkxPdcmi+WQfh+NBxjUbBC7rxmPj8dBHi0uwblBGLLdBmrRvxVnwTsRRWfUEi+orpjsdYhkZ4VLcwmc6SkWDpxR02wxKkaufnTA8ckRCiIJAK7L/DoWbqAFVcUHXic3aQh8MSMXggBsFAYekHegtsJ8v7eA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hDaq94/vlQC+400xzRjwEAq0vS5QHsF0nqQHj3SMx0A=;
 b=iXGs8C/pNUWRXnNWs9E1AlBnFJq05OQYtD7o8jqTnA5IyQYkk4hV9u6ZEDSemw8Ij/bbbnnx3eeqcZtQ1G+OPAbQPG7DygCAUsuemfaA2X/zvEC7OECe687Ybre/z+dk5VA9cTGAi3wImkdJC0vUsqiJDyj5qhSD5t9j9zSlFSo=
Received: from AS8PR04CA0105.eurprd04.prod.outlook.com (2603:10a6:20b:31e::20)
 by GVXPR08MB7847.eurprd08.prod.outlook.com (2603:10a6:150:17::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.49; Thu, 9 May
 2024 18:58:32 +0000
Received: from AMS0EPF0000019F.eurprd05.prod.outlook.com
 (2603:10a6:20b:31e:cafe::f3) by AS8PR04CA0105.outlook.office365.com
 (2603:10a6:20b:31e::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.42 via Frontend
 Transport; Thu, 9 May 2024 18:58:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF0000019F.mail.protection.outlook.com (10.167.16.251) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7544.18
 via Frontend Transport; Thu, 9 May 2024 18:58:31 +0000
Received: ("Tessian outbound 9d9bf1c5d85a:v315"); Thu, 09 May 2024 18:58:31 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 25699e9efe9f992f
X-CR-MTA-TID: 64aa7808
Received: from 056ae248c8f2.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 7AF50CAB-A7CE-4415-8531-995A5FF2C7CB.1;
	Thu, 09 May 2024 18:58:24 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 056ae248c8f2.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 09 May 2024 18:58:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h90CVzvn5NjYDqiZaIpyGIknz+SG6JzCRaepJ7HrK53TFlyV5HtARZLU+ifbwY9hAbHtoMXBC8bbmEQII1JIx211sc6QQq5Ei2Aj2KdD4og4ZsdV9NbqE37fx1nn8pdi08B7NjVQE0T/is5ccDJSMiQPNWkKUArpWFBt1P03VucQvMNtoEZjHuklZ0gqilmnQb/3AN3Gvu/+EpvpY5L3UlMBP7ofsPiydJyOPfhq0x7CEWAnwwblsNzrShbW/Dn0j2hslnak6Kk/ErGw9wko91SbBhLQh9adc4yn4447+nfn9E9YCvdVbCk2KoqxzmRbnXAk1B8n/G8A95iKvpbVHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hDaq94/vlQC+400xzRjwEAq0vS5QHsF0nqQHj3SMx0A=;
 b=LWheqX3m+6BI0ejlO0dCL5WjQQNzcOO88l95Jhnlkf9PfMOATeYMb3fcF6K8QYwz24hT4MXWS1qlyW5TDz6aNlOFl8dMEv7nKA0VsopjuQGLd9QY7pDL/Pn6VAaa9pnTRNWEu4/AqSgDdtmDVKU4jM65/DK6AxPaHjg+1Q8hRsLPziNLXE0m6F5Tau3/gv+RKomu7uqsH/rTcEXerzVu1GYxGbxtvyGorX4uJrFllUmbIn5NWkLiS2TDdVMz08Hg4vbvbB8/n/HQI5hfDnl0pLrAohu4HgC7T5Y9mKJ8JGodF5Big5V11rdV7vBzMYm4ErY5EUScllDlqwf4b5496g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hDaq94/vlQC+400xzRjwEAq0vS5QHsF0nqQHj3SMx0A=;
 b=iXGs8C/pNUWRXnNWs9E1AlBnFJq05OQYtD7o8jqTnA5IyQYkk4hV9u6ZEDSemw8Ij/bbbnnx3eeqcZtQ1G+OPAbQPG7DygCAUsuemfaA2X/zvEC7OECe687Ybre/z+dk5VA9cTGAi3wImkdJC0vUsqiJDyj5qhSD5t9j9zSlFSo=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VI1PR08MB10008.eurprd08.prod.outlook.com (2603:10a6:800:1cb::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.47; Thu, 9 May
 2024 18:58:20 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7544.041; Thu, 9 May 2024
 18:58:20 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
CC: openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>, openembedded-core
	<openembedded-core@lists.openembedded.org>, "<yocto@lists.yoctoproject.org>"
	<yocto@lists.yoctoproject.org>
Subject: Re: [OE-core] Where are we at?
Thread-Topic: [OE-core] Where are we at?
Thread-Index: AQHaofSE+u4q9fNfIUW//cVS7PAdFLGPQcGA
Date: Thu, 9 May 2024 18:58:20 +0000
Message-ID: <DD5F76CF-3124-4673-A394-91EF62CFE5A9@arm.com>
References: 
 <737087f797ecd87620bc96abab014d4fac6bb1e5.camel@linuxfoundation.org>
In-Reply-To: 
 <737087f797ecd87620bc96abab014d4fac6bb1e5.camel@linuxfoundation.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.500.171.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|VI1PR08MB10008:EE_|AMS0EPF0000019F:EE_|GVXPR08MB7847:EE_
X-MS-Office365-Filtering-Correlation-Id: ff7229dc-2032-4d4d-2e5d-08dc705a0557
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230031|1800799015|376005|366007|38070700009;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?bVd1SHl4MFFQbzhVeG1EYTV6WWVLZFoydHoyaDZVTGRPMzIzazBlQ2RYbjRY?=
 =?utf-8?B?WFFmRmVQQmd6cXVURk5vUnhGUUVCSUtqVEZnUnU4cTdvU1p0V3Z6bzh0SGc2?=
 =?utf-8?B?enQ0QkU4S3VyZFMxTUtUS3g3bGxDcUJtUDlIM3JyS21pMzEwdHA5cmM4bEkz?=
 =?utf-8?B?TWpVZ2lJZ1M0ZG1QT0xJNDV2L1NwKzdsY1pJbURONCtlWW5pOHErOURLZTdB?=
 =?utf-8?B?ZmI0VWRKRkxodFRHdUxCRnUxL1FsUFlDL1VjZ21MN2hyZ3ozSit6TmMrOWZy?=
 =?utf-8?B?cU5LV3lOQXc0V0dOeXdqS2RLbXNjVTZjK2J0MCtMMEkweFlQdlNGaGJFSnZJ?=
 =?utf-8?B?U01sNzNFWVJid3JSbHNIN3VSOXplMGo1VWVDTS9kc1VuQ3k2QWNrS2VrYWJn?=
 =?utf-8?B?U0Q0N1dRaFVvR2lRQkorVncxanp0OGlZRjZCRTFHQWxLVGp5QzM5UlhTSGF6?=
 =?utf-8?B?QnFsOVNHY29QVDhYcGo5ckpqV0FXSmdVV3ExUWJOdnVQZXA0cEYrZkNMZ0Iv?=
 =?utf-8?B?b0FZMDJDQVpkVTRkL2FJWTRhWStuSFl4WlhRNlJ2ZndUdUpnSTZMb1Bucks3?=
 =?utf-8?B?TEdXQzcvdGxvd2J0djd5OEM4RkVZTjdsNG14UTlseklMWkdlK2JTOTlxNEND?=
 =?utf-8?B?a05GQiszdEc2Tk82eXJBVUM0WHFnazB6Z0VZS0NpMGxHeTRyRFd1dUpzM3FY?=
 =?utf-8?B?UnU0ZUxKanlMeW9oeWt4OVdEUzhzK3NpU2FJVnduUXA5Q3RLakdSSHY2cGFi?=
 =?utf-8?B?OTNENkNSNlE2c2FreEpQNEJmeEh6eW1DUExlNkppcWZZOEd1Y1MyY3BFOU1Y?=
 =?utf-8?B?SDV1bFBvbld0V2hSN3NWaCtQWHoyVUJDdERaVjUxSjVDb2gyR2VvUHg2UUU2?=
 =?utf-8?B?THZCNVA0VnNTOVpwTVhySEpDZ2ZSbVpwdm1nWUdyREMwT2lzZXpoMXlNVVND?=
 =?utf-8?B?amJiamtrQWJGb3dmcjRXVWlxQzhnVmdZZDFqbC9RUXNlaWhkbloyano1K2lw?=
 =?utf-8?B?aUo2Q2VrdzdCYmZtbEduYVptcTl2YmhDSGRjVWJwTm5JRkczRi9ZQWhEWk9a?=
 =?utf-8?B?aGdrZEdRdEVaR3d2WVQ3eEVxYkE3OUlUMlk5ekdscjBkVi9uL2ZzaWlvU3Ax?=
 =?utf-8?B?dmgwVkE0VG95VFFGajQ5MkJKL2czVDR5bzhtUjJ1R24vL3dPRG9ZME80OEMx?=
 =?utf-8?B?bjlTanB2cHFqcVQxRVprNTJtMDhKVWpYOWJnMEFTVzJvMVJpcjlQTDZHVzZk?=
 =?utf-8?B?cmdQRHhqcGU5NXBOTmQ1NTEzbDcrSDN6YXh5RGVHdStnU1dmM2lUT3JqbTdX?=
 =?utf-8?B?ZzVSQXJhTE5SKzcvWEJPQ2Vlc3ladHFkaVdZaktGKzRoaG5XSzJ1dkhOTjZw?=
 =?utf-8?B?WmVqMTNXVktXbkx0MjBpRHI4SEpJZjBhaFZRWGRnamVzNTVMSVBPa0hLUCtQ?=
 =?utf-8?B?RWxacU9GeDBDYXNFdnFzSEJUcUo0SDZCVFhBdG54TFpRSzZLU0JYZnNLd0RI?=
 =?utf-8?B?WlFPZG0rbXJubWdKS29JUGVVcmcyTVozUEhhM0JRZjNGNno4RXovcWlCeDdn?=
 =?utf-8?B?eGo1VVpucFNXVmJsSC9KWm45RTR3MUlDS054QzlRSkx2dE9sa0RLelFWdkFx?=
 =?utf-8?B?NkJBaGUyOXF1UlpSbHV2Q2NwU3c4Q05zWE9ERVNRT3VzdFNaeER1ZkNPd3p4?=
 =?utf-8?B?M2o0Mm51ZUl3bUNwR0YxdFlUSTBoOUsrUDJxWWxPTDhUeVgwUnVpb3dBPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <24480A8CCC3274498A856E12C9CFBA78@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB10008
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF0000019F.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ddfcae60-253e-49c9-e579-08dc7059fe6f
X-Microsoft-Antispam: 
	BCL:0;ARA:13230031|376005|1800799015|36860700004|82310400017|35042699013;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SUJvcEkzNTd6N1VmUVJQcTFHL25kUXFraE15eWhVRkZhcXkvbmU4cW9rOU0v?=
 =?utf-8?B?RktMSUVVRWZKK0NucVFmblNDbjhraDFKTEdWNThZWm9pRTg4dkYwTDdvaGwy?=
 =?utf-8?B?emZiSitGd3JDT01pek05RkRhamk0OWxScU4xN3J1djE1M1FjdFFEdDJBWFh2?=
 =?utf-8?B?UDE5T1I4d0JIZll1NTU5WjJPRTlFYU1acGxUU1dBak9KRGwwTEtHRm0rdExV?=
 =?utf-8?B?REFIUlduMWwrOEgxSEtoVXIyY0h4a0Y2azVTMlQya29xenU0MFg1RGVnVFhN?=
 =?utf-8?B?dXVheUF2MmxnZjZSOW9QdmVsbGRrWS96T08wUlFkaDRuVjJ2Wnh0K0Y5b0x6?=
 =?utf-8?B?djNmZVJlYTR2Q0RrTlkxTGYxYk1zUEJNVllEeVZSTDJ3cXhBdkNwVEZNUWph?=
 =?utf-8?B?YXNodC9OMzd1MEREa3dmeFJvQTYxeWxMZmZwTUhJTGVpOFpkcGFvMGpWNGtQ?=
 =?utf-8?B?WFRkL1JOdGZtZWlhNzdIbHd1MXlCdDRHS2Q4ZWhsSFE5UUVTdEFMaVhoSXFL?=
 =?utf-8?B?aUdhYW10SFBJQ1llVWoxWHA0UjVJay8reFlvYWdScUR5RVNBaVBKTkg5dHdp?=
 =?utf-8?B?TTYxeVRMR1hVbUFZaW5GTUw4RHhyNTN5SVFweDBHMFpDaVJIaGs2TUxyS0Iy?=
 =?utf-8?B?RnhSY2p6T2xwazRKd1F5RXF4ei8rQWh2MlJldXZUQ1VsOGsrYXlsYy93TGhO?=
 =?utf-8?B?ZFBGWGJpUGZraHFoMU8vcUpnNWFRMXV4TklBNm01aG9EY2dOWE1mR1N2M2VN?=
 =?utf-8?B?dWV5QjRQM09SaCtna292Sk82dkh3OW5SVGZwS1hkdHA0ZDFKa3Q5UHhxMmpi?=
 =?utf-8?B?UjRZNkJzZFRqSldNVzI3bmNlUGxVdnlrcnRPaWZHRnJHaUJqV1A2UzVzTXR0?=
 =?utf-8?B?YzY1TzBqVkY4U2hUV0EwT0h0NGdrajN6Q0cxSUdBRXVrc1kyNUVZTnF3dGZG?=
 =?utf-8?B?a3N4ZUdtQmtvWEZmNlZ4SENZTmZteUlrV1FIYVZKU0VTZkk2SEd0dHk2V0V6?=
 =?utf-8?B?T2RjcEprMmxXNlJpdDlDOWRLK0dQSmIwSEJFMUE5THU1TkxPS2FUbGZsZmVT?=
 =?utf-8?B?Ri9BdHJhdjhJN216eTFIRitxbzRBMHJxQ3R2MTFleUs1RDdYcUNOdUV5eWtr?=
 =?utf-8?B?TU5RZGh1V3R6dENCQTQ3eEY5MjMvMnVQQ2I5QVZpVnAvL1RZdTFQQ05DZUxt?=
 =?utf-8?B?YTBFejJ6Q0hzYjZ1cDJ2TU9HVjZwVUdwRXBuSFNtMU9abXhteDVoSGlOZzBh?=
 =?utf-8?B?ZGo2NUJacXZ2WlQ5MnlqTVdreHM5V0FEUzhucDhDdGVLMFI4STRKRjlQdldi?=
 =?utf-8?B?NEx5TE52VVVPV0hmYnIvTVk5U055UmdlY0dkMDJrQ1ZaRVIvNE1zNjhrRjZt?=
 =?utf-8?B?MFRLWmZ3Wjgva3hnUDI2bnA3ZXVLSjRyVHYxeXBDUElrejRLU0k4S0lvN0pz?=
 =?utf-8?B?OHV6TWJCcTEwWWJnb2FxQ3R3d1FPcW1zMWhDRnNOVzlUN1l0RVBBYlZiTmlP?=
 =?utf-8?B?TlR3cVhlZW9nU21NQTg4QXFMSEdpSmR0VUpQQm9FSGlITkprdjVGREZmcHNH?=
 =?utf-8?B?ZDR1NDZteDRtUVFCWXpaK25DUG9LTmdhcGZtNGNMS1N4RlRyakpzQU9JYi80?=
 =?utf-8?B?N0FSWGFWTlI2d0pMV1BvZjg0OVlyclBmRDdrRWJNQ09RbVREZFVXNHZKUUIr?=
 =?utf-8?B?bkI3YjNWalZEMnkwVzh4MVhDZTdFRmpSeGwvZlFkSGpwQjBCRWZnbGpoVVlw?=
 =?utf-8?Q?MauyIl96DgdvGP8+YGuZqAfWqlbzsyi77aO0CZ6?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(376005)(1800799015)(36860700004)(82310400017)(35042699013);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2024 18:58:31.8109
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ff7229dc-2032-4d4d-2e5d-08dc705a0557
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF0000019F.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB7847
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 May 2024 18:58:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63066

DQoNCj4gT24gOSBNYXkgMjAyNCwgYXQgMTA6MzcsIFJpY2hhcmQgUHVyZGllIHZpYSBsaXN0cy5v
cGVuZW1iZWRkZWQub3JnIDxyaWNoYXJkLnB1cmRpZT1saW51eGZvdW5kYXRpb24ub3JnQGxpc3Rz
Lm9wZW5lbWJlZGRlZC5vcmc+IHdyb3RlOg0KPiBJbnRlcm1pdHRlbnQgZG9fY29tcGlsZSBmYWls
dXJlIGluIGxpYnBvcnRhbDoNCj4gaHR0cHM6Ly9hdXRvYnVpbGRlci55b2N0b3Byb2plY3Qub3Jn
L3R5cGhvb24vIy9idWlsZGVycy8xMTcvYnVpbGRzLzQ3NjAvc3RlcHMvMTIvbG9ncy9zdGRpbw0K
DQpSb290IGNhdXNlZCB0aGlzLCBmaXggaW5jb21pbmcuDQoNCj4gZGVidWdpbmZvZCBrZWVwcyBi
cmVha2luZzoNCj4gaHR0cHM6Ly9hdXRvYnVpbGRlci55b2N0b3Byb2plY3Qub3JnL3R5cGhvb24v
Iy9idWlsZGVycy8xMjcvYnVpbGRzLzMyOTkvc3RlcHMvMTQvbG9ncy9zdGRpbw0KPiBodHRwczov
L2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTE0OTM3DQoNCkkgcmVh
bGlzZWQgdGhhdCBJIGRpZG7igJl0IGRvIHdoYXQgSSB0aG91Z2h0IEkgaGFkIHByZXZpb3VzbHkg
c28gdW5kZXJzdGFuZCB0aGlzIG5vdywgaG9wZWZ1bGx5IGZpeGFibGUgdG9tb3Jyb3cuDQoNClJv
c3M=

