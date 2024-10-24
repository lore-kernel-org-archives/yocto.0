Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1B77D2E00F
	for <webhook@archiver.kernel.org>; Thu, 24 Oct 2024 11:02:56 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.59])
 by mx.groups.io with SMTP id smtpd.web10.12105.1729767768603158932
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Oct 2024 04:02:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=o/6eB3Zn;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=o/6eB3Zn;
 spf=pass (domain: arm.com, ip: 40.107.21.59, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=FOdZq8KCRMAJSddRQ1pzmwzNqL120Mxzc6FjKZb+yOI/2Gkhy5eiqDwvg0GaYLFPyT2y1LS3lwDoAipk8iuyNjuhbHvkf6/id2BmUZ/y3+5Un0hbRauZekI9umuvIKCnnqYlZfjKbVLOPo7d9eiNa+2VmygrXMs7OQV235ZN1Cnec9i+j0CGbQi69TM3Xxn/jAAGzZg36F5TSclK8Cz8OCAibiiGL3qzmNeC/FxbwCMIc9sQLrs8f3CimLzFMO3l9r8bPDwXxiBH1+UVTox4oGxHG23ydJfv2tWRyOiA8fkt8AXOXEbP/Lo/SznwzYBIO1xsIkOMRhbgVypvhcUy8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aSBXbzJ67aswtpFrxLV/houpFONvMTCrvp1IFxMOSWY=;
 b=PxkC27/NHhdtYsDQDGwghBgt421otuy3AGseHqpEo6cEYA/vermwWUP66NH30c3Sb+JlEBpmtN33EiYRp3GlK3BGN1Nw8n1+3TO0ce44xEwngIJeOz1TIQo4rKKdbW/SpOrafd3bBClL2lnVN490RfP81giNrquUCSML7R4sWvztDOBHgUsDdF2e1f1PamhKQV4uDcrPHXOMu0WAV8chQKpy6DZ2RtZXAdXHZKaydqRfGaIG9BSPbyJepFKaNKNZ+Vh3oniiVWNmBZmjMIIeek3gQnrA7efl2GSrmIYNfDmH0eVZqLBgcxixnwR9ECj77mUkjF56WlZZ/M7JveiWsg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aSBXbzJ67aswtpFrxLV/houpFONvMTCrvp1IFxMOSWY=;
 b=o/6eB3Znh68bvdQMD02s6vSpPKBNXBpN28gHXftir8mG9TSms45h0/bHCt4RPCW92o5yDtmvdWKI3EyWIEczlp0fYTlQliSLnaXa1qKZVCdsVLWBRIbiLw2KGwYgKsqYpKF4X2qY47tJ4bt2IAD8y6VVyC5a1iI0v8voRqbBmuA=
Received: from AM9P193CA0002.EURP193.PROD.OUTLOOK.COM (2603:10a6:20b:21e::7)
 by GV1PR08MB11091.eurprd08.prod.outlook.com (2603:10a6:150:1f4::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Thu, 24 Oct
 2024 11:02:44 +0000
Received: from AM3PEPF0000A78E.eurprd04.prod.outlook.com
 (2603:10a6:20b:21e:cafe::ac) by AM9P193CA0002.outlook.office365.com
 (2603:10a6:20b:21e::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.29 via Frontend
 Transport; Thu, 24 Oct 2024 11:02:44 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM3PEPF0000A78E.mail.protection.outlook.com (10.167.16.117) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8093.14
 via Frontend Transport; Thu, 24 Oct 2024 11:02:43 +0000
Received: ("Tessian outbound 4a86a9c66651:v490"); Thu, 24 Oct 2024 11:02:43 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 988e553e7451c19a
X-TessianGatewayMetadata: e8l+qKHAnz4deOit8gtp+DeSdHXUH5dxtQ1TYxp0Zii+DFHo6fCM5qb1XW5z58e70egqW+V0gEJoyAI777hvIVQHPMbL9fMV6pM42RT6I/Q5qpNd0zhaEP9R0XIzkMzuvbu6XaVRTSEFczJp11z5TWjisMei3ceV1cZ37ENAQ8s=
X-CR-MTA-TID: 64aa7808
Received: from Lce593d4ed8b7.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 0A5FE409-7603-4A3B-AD61-5B4EFBD6A370.1;
	Thu, 24 Oct 2024 11:02:35 +0000
Received: from EUR02-AM0-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id Lce593d4ed8b7.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 24 Oct 2024 11:02:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AnmFPQH8AMaPRbhn4qEJYFVfFhWdyMH6ISxBXoDVfnlEMmYN7EczhLaNFOFl3RDAAbnnain1lph4UEjcyB++GvHjGtMwa8qpDDkAdNXz8SXLepHh+VkP7MhRxwSFV0ro86JrEgH9oaYVJ7EDMS+NY4PKqpXLbklRTWW/4rpNLpANapvUO2XEJzrI2rYKMb+zh5Su1H3gmaeRhP2ytPHEZg165kmbY9iL1FB3NPIteqWnWr/Gu49rU4atSt+cGJTyp6zmzA9aG1TE6nN6J7VmOJc8+GYteeOwXMXsAF/BoQqfBsUGRbCgZNFMx/Zze2pJbvQsoX7161fNNmUfrQIM9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aSBXbzJ67aswtpFrxLV/houpFONvMTCrvp1IFxMOSWY=;
 b=WMtcdDqywq9sgsO0AaJrEdL3txZlFuq/T5FoJCjwptg62NT+Xd/uz3CsDm1flDqjoZkHKOsDDblYNhVtQvtzhrCRnMvzWQLZWfOi9aEIjTAUooQVHdgaAAxVYJ6v23LElVtvMs3yca/6t6jzipS+TFTn3h7ujOMG6u96bNUQv1GGsI9JgtdWiowhcFAn9Y31LrJaNW5bQXsq+IrYCgZtxNXwZbkwDfEbuzBXBQ1r/qJFetm8SxAdfSN3HTjCsKDD36kXIRztEoaYZGUJBpNAD32H/DqQIheTCqNv/EpBDpQQuMDrid/wn7tIXXZJaLC8Q6lQrA7zjuflCqsc5o5QxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aSBXbzJ67aswtpFrxLV/houpFONvMTCrvp1IFxMOSWY=;
 b=o/6eB3Znh68bvdQMD02s6vSpPKBNXBpN28gHXftir8mG9TSms45h0/bHCt4RPCW92o5yDtmvdWKI3EyWIEczlp0fYTlQliSLnaXa1qKZVCdsVLWBRIbiLw2KGwYgKsqYpKF4X2qY47tJ4bt2IAD8y6VVyC5a1iI0v8voRqbBmuA=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAVPR08MB9404.eurprd08.prod.outlook.com (2603:10a6:102:30f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Thu, 24 Oct
 2024 11:02:33 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%3]) with mapi id 15.20.8069.027; Thu, 24 Oct 2024
 11:02:33 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, "jmeyron@gmail.com"
	<jmeyron@gmail.com>
CC: Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [yocto] bitbake: enforce variables to be defined?
Thread-Topic: [yocto] bitbake: enforce variables to be defined?
Thread-Index: AQHbJdto+wvDnQUul02QfN3/VgDpALKVloUAgAASpwCAABOEgA==
Date: Thu, 24 Oct 2024 11:02:33 +0000
Message-ID: <9B89F23C-61C1-4C50-B70A-03DE4A61F825@arm.com>
References: <567180e3-3c9c-4422-9e93-b8b206ade10c@cherry.de>
 <16955.1729763552548028616@lists.yoctoproject.org>
In-Reply-To: <16955.1729763552548028616@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51.11.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAVPR08MB9404:EE_|AM3PEPF0000A78E:EE_|GV1PR08MB11091:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f580c0e-73e0-4b58-6ccd-08dcf41b62ba
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?bHhZa2RKbk1XNUZnaWxWWXJPRFBJNkFKazROQXFMVTBldDNrdmlUemxLNzRz?=
 =?utf-8?B?bHljS3YzUjYyQ0Z0eEJXL0ZwMldmOGhSYk1COVcxdU5IdVV2Q2Q4aXRsNnBP?=
 =?utf-8?B?U3ZUdHVFcEpwemJRRGdVWkRWVFZXWHlXWFFxR25PRlA4R2FUNDNNbklHZk9v?=
 =?utf-8?B?UkZoaHJTYm03OWhqN0lQeGxFL2lsZXRMdG9UcXVjdWI2YlVDQ3FEZFNyNjNG?=
 =?utf-8?B?VlphN3hoeGRxQVZIamFOSjBTWGg3YVh0dlhqMnhCaHNLSnJZbGF5WkR0MVFJ?=
 =?utf-8?B?QWRJMTJoRlMyS0ZEZnZZUHcxY1Y2dGtnSmtPc1hjMGU0UFptbGV0NnNTdDRt?=
 =?utf-8?B?NEh2eml1eWw5bGdSeFcyczdwbEUrVFREK01PdVllRFMxUkRYWmY4K0ZlcXlU?=
 =?utf-8?B?QVMzRXJGRFNvS2pDNUkxczc5OVc4cjFGZWNCRERHL2gyYlYwbG5oNHE5Tnoz?=
 =?utf-8?B?cGVtVzJ3VWprcVFuQWdKdTgyb293TU8xV2IwdG9sTVhIM3pHMEcxMDlhMFRD?=
 =?utf-8?B?Q0szeVp0SDhIeGo5dTNrQ3VINE4yVmpWc0F2QnlKdGQ0SmxUNmpqeW5jNkYv?=
 =?utf-8?B?UVNqeVdNbnhJU1VWNTRiakQ1QzFRK3lJYmhyeTUxT1l5c1hUenNmL0xqeFpP?=
 =?utf-8?B?cWp0c2cwVVQyM29HZW1HNEpIenNDYXJVUk0zcFJjNi95ZjdtNTgrREwwcmRH?=
 =?utf-8?B?K2FTa29lSFY5NWlFdEpOUXgwaXkyN2hnRTltcnpXTzArWmN1dXZ0blUxT2xT?=
 =?utf-8?B?Y3hlVm9nUy9yQlplZ3E5S0lxWmM0UzgvYVIwL1FYK1pGZmplNlBQb3Fubi9V?=
 =?utf-8?B?MnNieFIyVFJNK1A0WGY3bEo5MkZKN2k2VmhqWE1WbFVQWDR5VVFucXlFYjZT?=
 =?utf-8?B?QjdRNUJ4dVJTYlJreWp3bUJBQi9ESW9sWFdRYlJZUkk1SGFaRXp1SEJkdTZm?=
 =?utf-8?B?NGkvMndaWUdXSUxNWnV3L2FwelZVSFh5Q2ZCZVo5Z1VsUWs0aHFOYkF0YklB?=
 =?utf-8?B?UHI1NmVZMVpvV3JmYW9kU01ycGVFTEIyc2hpTnY2MFhyVHdqRXZlSkNmZ2dQ?=
 =?utf-8?B?eFpxL2FWNHVEaEQyQUZ5L3AyR3EzczYzSWptaWErSjgvZ2xtVHV0L29DWjN3?=
 =?utf-8?B?MzBmOEl1ZUk1VUd1OHRBK0QrZEdnQStsdjdITFBTUWJjRXFTVjFHa2t1MmZR?=
 =?utf-8?B?djEzc1FlOUZyUjBUSXR0MlQrL1VMRFc3RXRzcTd4cjZNTGYrVnJSc0N3eXJl?=
 =?utf-8?B?Vllpek9sYzVPbnlIUm9tbStVYkRoWFI4aTBjUmxDL2tUQUVOUFRHaG5Lbndn?=
 =?utf-8?B?RlkyZUhQblZsQWIrMnBFai9MTi8yTEZGaWxEM2NVQ1VuR1ZscmJuMXpLblJN?=
 =?utf-8?B?ckcvc1JKdVlucHpHWTdRU2ZZamtMVGdObFNBekltMzF6RklFYlFLRHZTNHcx?=
 =?utf-8?B?TGNDdU12MUdVdjBxN0FRZUJYam91a1ZnSWM0MzZONWdxSWl1SlFxV1c3cWxB?=
 =?utf-8?B?NDlMS2hXbTFYMXZTUFNBczNVNThrZWkyT2dSK2F3ajBVdjlWQURSNGIwaEJS?=
 =?utf-8?B?L05kVitCbE1lNTI1Q1JVL3RMcmhmS09DR1gvTFMzbFZSRlNHbzNoUE5OMTdW?=
 =?utf-8?B?OGp5U1dpZFhReXZQc21ISmpBTGZNTVBZTXArNlJmMERvUm5FMWZRc0tOeHRp?=
 =?utf-8?B?d2lLQXFuUGNnMzVlR3IwbDRqdGJGdElKNlRqZ0RRcC9TYXFGQmY5TTZvNStX?=
 =?utf-8?B?aVJCVmVvTjZNKzVnTHFTeXovRGtGL2dIdGg4VVlvTzFmaTR3TUZIaUc1bWNp?=
 =?utf-8?Q?KrhdUPZ84eila7zFal93vqJN6X3KU23wf+fOo=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <39D4814B4352D342A85F31CA0B923693@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9404
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF0000A78E.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	fe591988-0737-42ed-aff3-08dcf41b5ca0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|82310400026|35042699022|36860700013|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?dnc0cGsxdmtnRTlzMzRwVUtPZ0t4NmNvc3ZLR2wxUG0wRmN2TWlhMnRkL0tk?=
 =?utf-8?B?VWhtODQrblF6SFZuWUxNajh2bUhCaTA2WkFYc1NVVDF1c1FGUFlHR0pXSFBq?=
 =?utf-8?B?OHhOOWRIYWRtaW1aM2VIa1BqRVpMNDBEUHpSZDhncnBtcEJ0TUR6Rm5Lc0lP?=
 =?utf-8?B?UDZ4U0ZpLzZHWWFXRTh6eTBMUjVoZEFqYU9tNUVXQnExOUkxKzFWZ3MzUHVV?=
 =?utf-8?B?SGMrd0xtMEl3eTdFZGdXYUU2SHZrTTN6SEFjUVhRQVI3RGRtd2FaWlNMV2xC?=
 =?utf-8?B?TXFHbVI4LzdrT1VaQjcxOHI0ZlUvQUZzQVRSeWVRRmVleThidVpzUFpqQ1Z2?=
 =?utf-8?B?REJMeUk3a0J3NkhxTmpJZGVLNEdIOG5jQnhnRkgvaFlCWFJwa3NBVUJTR2tS?=
 =?utf-8?B?M0xtdE15NVhtcUhvQlZ0aElvV3JhdCtGMGdPM21veHJRZUNISFB4VlFGVW1h?=
 =?utf-8?B?bURHRURZcXpadENwYkRJQnBzeis3R3pRL0NCYStlSVZidk1oc3Y2dlFuQ2M4?=
 =?utf-8?B?Wlh2bGt6bThTYkJIYVpHc252YmtBaGdXMldUOE1rQ3VxVEd3Tm5lNFdhVk93?=
 =?utf-8?B?UVFoMGRIU2k4bVhXU3paQUNXekdIN0pIRmhpMjRPVmppei91MmF2RmRQVndp?=
 =?utf-8?B?OXUxNXcxRzRMNG5hTytFZXVFRzQwNmhGMzhEZTVjTE0yVUNHUDdkdUEydTE2?=
 =?utf-8?B?ODd4U01OYU83amIwQkJqQktJUFJNeGo0VGRnd2M2dUNDQ1V1U3VrenhnaUpq?=
 =?utf-8?B?MENSM1lCYWVPQWJiOGZwRnl1cUZGaWIvb2RqSUxvMkQwZzJCNjY5L0I3S1l3?=
 =?utf-8?B?UXIzNUFFbWhVWUsrUjEyYWxqNmtjYkoyYnhKUnZnaWVlbWlVblRVK1d3Tmhp?=
 =?utf-8?B?WFh6a1VmckNOSDk0NTh2ZEZRM2Q4Q2xtU3RaUGVaL1hCSFhVQ2Q4alRjOVoy?=
 =?utf-8?B?TDk4c3ZyeVJuMnJrUTVFQ0tidG1Db3BkN29DVExIR3pLaGszMFhoUFBzWHZT?=
 =?utf-8?B?b29TSnF1OG5saGhPWjBTdXdKSUZFL2VBV1VKaW5kOXVNREZwRUN0dnJpbHhi?=
 =?utf-8?B?MTl2U0ExRE1nM1FseVVRbXJzSHFGTEJZZXhkc2g4cmh3cGhRS29EemV2RWRG?=
 =?utf-8?B?RGpRWGhyellhbkF5ZWFNN21pTnptMG01OCtxTTc2VUFMYVlDQll4U3k4dng0?=
 =?utf-8?B?dmZRN2Jjc2dQdVJOU0dNdzk4ZnVTeWJ0VllOYnRDTFBZdDhCdzRUK0dpQnNK?=
 =?utf-8?B?RGRRUGVCdklHOGdyYU9NRUY5WDBEa0JwdzVnV2ZmTUNPWVRQN3gvNGRFL1VE?=
 =?utf-8?B?WUxxeFl2VlU3TDRwVDRWQU9nK0FqUldVTldBZHhtdGE1aCtsM2RrM0pGRHpI?=
 =?utf-8?B?L1phNmRZVGJvL2VzNDF6WlFFMFF6K3l0ZGRyTm1iTXdXR2ZJNjZzNnN2elNO?=
 =?utf-8?B?ZmFrVXZtUEtlTnhMb2dRM2xpY0hZbVNobmVtNnI4Skp2UlBCekhNSFg2Z2h4?=
 =?utf-8?B?RTh4UHVaRUJleGJ2azViQk80SmEwR05MeVRRbXk5T0pRby9QRHFQNDRncGcy?=
 =?utf-8?B?YW0rbmhMd2JJMWlkYXh0K1F6aktWb1cwNDNTTTMrZHVrcGs4R0pLRWFqeEdn?=
 =?utf-8?B?MWtqODc1RVplOUJibHpzK3hGbWhWQ1gvMmN2REo1NkJYZUpFaW9JcE9TYlhH?=
 =?utf-8?B?UWpiVzl0OWczcWtrQzlab1puQitlOWozcklYcytTTndpYm5YMm9JbzVuWFZN?=
 =?utf-8?B?UmJmYi9VMGV4akR5OW8rM1Z6Wmd3SnczSCtNeTc0ODBFNmpoZm05dUF0ZzBD?=
 =?utf-8?B?VitZNU1TMHlka3FPMDhJbFdNMWorWUdMSmNaV0lXSmJSS0NRTzNyUUZlK1d5?=
 =?utf-8?B?dlVCbFVtaENYNnBjMm5oYWRFMUgrQkNIUDhqY3gwZEl5MEE9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(35042699022)(36860700013)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 11:02:43.6978
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f580c0e-73e0-4b58-6ccd-08dcf41b62ba
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF0000A78E.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB11091
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Oct 2024 11:02:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64108

DQoNCj4gT24gMjQgT2N0IDIwMjQsIGF0IDEwOjUyLCBKb2NlbHluIE1leXJvbiB2aWEgbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZyA8am1leXJvbj1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zz4gd3JvdGU6DQo+IA0KPiBUaGFua3MgUXVlbnRpbiBmb3IgeW91ciBhbnN3ZXIuDQo+ICAgSSBr
bm93IHRoYXQgSSBjYW4gZG8gdGhhdCBidXQgbXkgcXVlc3Rpb24gd2FzIG1vcmUgdG8ga25vdyBp
ZiB0aGVyZSB3ZXJlIHN5c3RlbWF0aWMgd2F5IHRvIHRlbGwgQml0QmFrZSB0byBpbnNlcnQgInNl
dCAtdSIgaW4gYWxsIGRvXyogdGFza3MgaW4gbXkgbGF5ZXIuDQoNCkZvciB0aGF0IGV4YWN0IHF1
ZXN0aW9uOiBuby4NCg0KVGhlcmXigJlzIGFuIGFyZ3VtZW50IHRvIGJlIG1hZGUgdGhhdCBtYXli
ZSBvdXIgdGFza3Mgc2hvdWxkIGJlIHN0cm9uZ2VyIGFuZCBkbyB0aGF0IGF1dG9tYXRpY2FsbHku
ICBJ4oCZbSBjdXJpb3VzIGhvdyBtdWNoIGV4cGxvZGVzIHJpZ2h0IG5vdyBpZiB5b3UgZGlkIGl0
IGdsb2JhbGx54oCmDQoNClJvc3M=

