Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC144C5B543
	for <webhook@archiver.kernel.org>; Thu,  5 Jun 2025 19:51:03 +0000 (UTC)
Received: from DU2PR03CU002.outbound.protection.outlook.com (DU2PR03CU002.outbound.protection.outlook.com [52.101.65.61])
 by mx.groups.io with SMTP id smtpd.web11.17494.1749153060441738556
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Jun 2025 12:51:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=OgAXV3UX;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=OgAXV3UX;
 spf=pass (domain: arm.com, ip: 52.101.65.61, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=PDf9O6QXxpwTCMbOS8q1M+c+BWDljxSit8OUqAfkwRGqlfzNABb8rraOo3kF7jWcJgqvQIZvdO9uvODAMU5aOhTfaZXobAB3V+JVNJFowbLk7jcQtHWqLg295IKOgZZBRd2iTqaMzjBSSjO1FiTmK8NquG1GdM72BV/qUL8vq8euKfpCQKBCQiPcm0MIWeJYZ2eU8hNTzCfFgmbipN5zRH6cWCjvkk3ltz3wIur0FTpCEmhwTgZqHXFSlYh3LgWPPXZX8W5bQBoREbe7nPXjdK9pxxkXDycvi7DazRsnpJSC6R+BBjg72id498GYEP9n0COwXK+P5XiRlWoG5GHqGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P6AP8qJ8n9nLMcFLTj/dy+rV83i89QoFrOgIUohlFdI=;
 b=ZqaZKmWNa7J6BVziKM8io5H2FvFp2hvY1gYVBhPPilV4qtIYlKIYPFN2feucJoubRecGdCCJWbkrAGAKtu8ssMJaBCVRcxSrY0M2pxqX0njZEBouNoHXqMWf2uoYtlLH4UK6WKrLUg/QWPthPxKCVwwovH6HGB0DHWOqACBAxG1snNpztDiaepL5C318hpTx5cpLXL+6qpwTaJqZHLxAF0UcKFSr+kVxm2IUuFtZFOhTW8KsaomB2+eBjj28mD3bwuvAOoWNcVufKoypYrn5MGfv02K1iA56Lo2ztL1RkG1iZHGm91qucol5YtVe11vhBsJ/P4hCRPCFn+gzov/jiQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P6AP8qJ8n9nLMcFLTj/dy+rV83i89QoFrOgIUohlFdI=;
 b=OgAXV3UXX7Eafr5THfzVS+nPDRX2RVTiPd8BZOR3nq7nsJDbBXvN+LhSVRrikfTHyV3GI3LTW79NfVNdj5pE0ah0BnqEUK28bEJ03YOUKUXYweHRHBPN8Sz8E2lndyZ/g8oW2BTvc6zlMVr2Jrg3wxJxE5s6FjCsoS5/5pD5G40=
Received: from AS9PR05CA0203.eurprd05.prod.outlook.com (2603:10a6:20b:495::13)
 by VI0PR08MB10446.eurprd08.prod.outlook.com (2603:10a6:800:206::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.20; Thu, 5 Jun
 2025 19:50:56 +0000
Received: from AM3PEPF0000A798.eurprd04.prod.outlook.com
 (2603:10a6:20b:495:cafe::dc) by AS9PR05CA0203.outlook.office365.com
 (2603:10a6:20b:495::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8792.35 via Frontend Transport; Thu,
 5 Jun 2025 19:50:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AM3PEPF0000A798.mail.protection.outlook.com (10.167.16.103) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8792.29
 via Frontend Transport; Thu, 5 Jun 2025 19:50:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IYLKBwkK6MeyYaubG5YwzfViaywgHxBtpOcydiE49HP04BFoAfiMZPMampeqGaCarlnEfielZxtVrIq6lBAYuMZprQiSHyFWwpz7PhUgMDzqHKUhS35ntauyFyE+JCxxUfLmhuKBD/8Ad5dU+ayUT4UR55XF/rz5T4wwUOmUS1/YW9aBwcxgBUgAblcF1ZQf4xU7m/vRhOKnqAshNC/QTnH9P8oS5OYHlRxGoHjgLikTlLz/oHRx1/QEqrbEAznmugtEJoaaiFhIYQ3c485cBYh60bBmdh96YM9gn3tsuJbJBhsUtw765+dkw+oXsRdv+0zI4XJN/+v+Me59NfkFZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P6AP8qJ8n9nLMcFLTj/dy+rV83i89QoFrOgIUohlFdI=;
 b=ywEJ3c9vNYQ/jnMA9L40La9DogGP7y2pqWzN5llk4+TlM7yY51jVN470H17mpwkwRhcLwUO6dsl0ismIqz3Fompq8HYUX9gro/KgweMDBCsnYCr2nUU/yqC/F0HOJ8g6eqtJPHdjT/WaqTZJ+xkA463J7kjPROa45hE7BBEJF5+Y+mBubaPU9EJi4ciZl7a8/3rGM/KZqROxi5fnTootak9+eqnRFNHQuZl/zXZwQA34A8xCeZJngGD9VP4EtMTnMR4Md6EhEuWnySJRwIt7Md8UNl2WUd5ectzslWbY68oGZhiVFE9ovO+2ayFKZlfnPQX/FJ3V0/+xx73gQJuOAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P6AP8qJ8n9nLMcFLTj/dy+rV83i89QoFrOgIUohlFdI=;
 b=OgAXV3UXX7Eafr5THfzVS+nPDRX2RVTiPd8BZOR3nq7nsJDbBXvN+LhSVRrikfTHyV3GI3LTW79NfVNdj5pE0ah0BnqEUK28bEJ03YOUKUXYweHRHBPN8Sz8E2lndyZ/g8oW2BTvc6zlMVr2Jrg3wxJxE5s6FjCsoS5/5pD5G40=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU0PR08MB8788.eurprd08.prod.outlook.com (2603:10a6:10:477::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.21; Thu, 5 Jun
 2025 19:50:22 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8792.033; Thu, 5 Jun 2025
 19:50:22 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"joseph.maniaci@seagate.com" <joseph.maniaci@seagate.com>
Subject: Re: [yocto] Native recipe still contains non-native compilation flags
 #bitbake
Thread-Topic: [yocto] Native recipe still contains non-native compilation
 flags #bitbake
Thread-Index: AQHb1kzSsUl99oChLU6KSdd42sCqlLP0+X8A
Date: Thu, 5 Jun 2025 19:50:22 +0000
Message-ID: <61CD6AD9-E354-4DF9-9CBB-7EE0AE4BB3EB@arm.com>
References: <ew0F.1749150330205576658.cCBA@lists.yoctoproject.org>
In-Reply-To: <ew0F.1749150330205576658.cCBA@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.600.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU0PR08MB8788:EE_|AM3PEPF0000A798:EE_|VI0PR08MB10446:EE_
X-MS-Office365-Filtering-Correlation-Id: 56231b00-fb8f-4008-ebbb-08dda46a4962
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?cVROVlU5RFFraXc3eU1zckU4U1FDc2ZKN1lLL2dTTmFUT1dOUmdKOWo4NVpy?=
 =?utf-8?B?by9oVE12cmpEUmladmxES2RtUEtBcVJKYUJ5cG1LWWdLQk1EdVgwMDNIZW1o?=
 =?utf-8?B?TXJENUdWQnZ3MmFCTnREdFhNTFp6K1N2YWIzaUpwQ3l4cFlpYjk5TVFLdmM1?=
 =?utf-8?B?NmdlTm9NWlVJWE1iMG5FR0hNeElHOTFRSkFVWVNMQU5mS0ZxU3IrbGxLeFd4?=
 =?utf-8?B?NG9VL2M4bE1xNjBGVk5xZ0QzNVQ1dmFoL09EcHJnVjVVRnBpZGJLTTVOZS9q?=
 =?utf-8?B?VWdmVHB0RHJPbHFFdlRocm8wMWU2bi9SMkpBYVNTbkpHZE9LNEdQQjU5eTFZ?=
 =?utf-8?B?L2REZHMvdVpvcnZhcGVTWmdqYTNnQ05hQ0FuSUprZkZkQ0JYMUZXaVFyQmN6?=
 =?utf-8?B?TTJuOTh1enlCWU1LOTlvK1VpZW81Q0l2d25zQ0RVbkhVNForU0ZEOUpPckM0?=
 =?utf-8?B?SlFBeG5BQVMxOEtWZFVDVzdZbmlib1dJbXFvT0lBRXJnSzJSbkxGWGI4NlRE?=
 =?utf-8?B?UnBnYVpoaTNNTjBsWjhNRmJ4S3I4VDZTbWpja0MzYlkyYjBlN3JFcFp5WTFI?=
 =?utf-8?B?bjV0aXJzQy85aGd3OFZ1dVo3WUYxeS9rTytwZmZOK0o0NnYrL3BLK1kyQWxI?=
 =?utf-8?B?Wk9KYkI0bnJBTkZMVUlrZHZCeW1NbC9ZcE5kckl0TWpOUk52eHFwSW5mNUcr?=
 =?utf-8?B?WDdZL2hLT1lHNE5jTXA0TlpZTVgxbVVVSTRWT2I4dFEzZHRIamxTdS94VVV6?=
 =?utf-8?B?YnZTWmlYUTFrUWZqbDBDOWVOdk00Tk8yT0xaN1FuTitNT1hNQi9aUTZHandS?=
 =?utf-8?B?VWd2MkVkWitiUE1VSUdVcnR5ZTM2R0hjQTJ1MllsTkxObThWYlZuNFEyS2NJ?=
 =?utf-8?B?aDUwcGhtQkhvRmZmSk9oRS84NXhQWEtTTXQyZEJCVlFZcnlrQVdKa2pPTm55?=
 =?utf-8?B?SHE5RnJ1aHhQOEpudGp6ZU82alJFaWVjZllpOGEwWjBPWlFKZTcvS3BvNHZK?=
 =?utf-8?B?d3pMS0FDUmd6MlhLR3hxNnlrZGUyN0dvZjFkWTZHeEFWb3FDV3puU3RFemJ6?=
 =?utf-8?B?c1dCRm4ybEZjN3BEb0IwRFlMekVSV2x2eittSHk0UlFCbkVRUkxGMVJTTHpw?=
 =?utf-8?B?dEtFR29QWW13T3dUeFZGQ2pTVDVtMGxUVzU4M0F0Kzllc1BDTTF2TjN6aXZa?=
 =?utf-8?B?cDcxYkVlSWNOYTg4a1FSamp0bGFPU3NCNlRPeXFYTHl4MWtWRlFYaitKWXJs?=
 =?utf-8?B?MTN1Ny9qQXFaMGV5c08xWXA5NncyMUdIYWxJU25lRkFwRGlsdlp3enpNZlBQ?=
 =?utf-8?B?Y012bU1uTjdJbGRzMzlLU0ZRb3o5OWl5L2p3Y0ZraUNRZ3dEMWloOW1CeGt3?=
 =?utf-8?B?MncrVmRkakxOYWJaM0tMNXduZ0NoeWZBNXBZVGVCUHM1eGJORkVpWFNMRzgw?=
 =?utf-8?B?emhZOUh6S2VzMDMzT0luZ3ZDZVhCUThFZnlRSlE2Z2VwSjZDMXhhSFFLb0M2?=
 =?utf-8?B?NjdyNXpPQmxJTDBmUHZBbG5PQUs3bmVYLzhnNFhmZlJwVFd6Z3hBbGJGdXlO?=
 =?utf-8?B?SGF3NzFBY3JNWTlBOWV1WGtQMnBXc1dzMDFHekRrNFhiYWJSRXVoNU1RLy9H?=
 =?utf-8?B?TnVNWmV0bStrYlJxN0JYWXlYRW50QnpVZEJTM05XOWd6MVhpekI0MWlUcWhy?=
 =?utf-8?B?YWtOejVuaWFOMkpQYlRtVk9HSXNhbHRWSzE5TUhnR0NKQTZ5SzhPRktZaXh1?=
 =?utf-8?B?REdtVHg1eGJrQmpPRlRTUDJpeDRYVDg4a3RLRUUybjVqSTJRRGxNUHlUS0w2?=
 =?utf-8?B?cEJIejlhWnRVaWtRMFNMU0IwZTZSQmVPd1hyYWdZcXQwMzc2LzBEZjlZdGRI?=
 =?utf-8?B?bGkzYlF3MDlQaERENGJONzQ3emxZSDh6TkFtUzhML05vd0xlZ1dLZlhuY3RB?=
 =?utf-8?B?MC82OU55d3BUNzBmRytzNDJZZmo0RzBiQmRiMFBhMEp0S3M2SXRoUm92Nyt4?=
 =?utf-8?Q?Nix7b6G1cTiIai2/gXvr6hdBbBJRjM=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <2884C6E45DF94646ADE836B88EB09DD0@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB8788
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF0000A798.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	e661c28e-bbf1-4d17-f7c0-08dda46a3582
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|376014|35042699022|14060799003|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?QjFaeStNaG5TQytqckZoOWdzSUZ3OXlNM05YZ2N1QlNJQzg0VUdzcU9rODFy?=
 =?utf-8?B?aEVUc0IxbStOaUtUbkdYWTB5R0hUc0h1UVlHZHM0SmhFa0NTYWVIczNBTzhz?=
 =?utf-8?B?eTM4bWdvN1ZkdE1VbFNuVEMrZjhvYWdCMFF6QXk5NzNPdmUyZU1jSVdWTG1Y?=
 =?utf-8?B?YTdaUEIzSFhocnk5R0g4UWt0T0M4RGFlbU5qYndIcDA3VmNEblpaTmxIKy9O?=
 =?utf-8?B?elRHS3JCZThRT0xSSUVKY20xU3RDN0F2bnJVdmF0YU9DWXlxTVlKcThwR2FD?=
 =?utf-8?B?eXZmYkpFOExMbzhkbXdjQ1prL0FDeldJL2g0U3B5RHBMRVBURW1LU0RGRm9N?=
 =?utf-8?B?RXd3elBoMis3cDVSTXl5QkdnUHQzNzUxOUVWUlRPYzNhR3NmRzhWbGpQZkFa?=
 =?utf-8?B?N3h2M1RvcHZPdWFkZWx1ZncvSTlNNWNkQmNBNUxLRHpmQVNvcDhxcFRxZGp3?=
 =?utf-8?B?STAzNWp1bnRsU0xWdTFCazNHSnF1TEVaM2VNRUEyZXMrM3VjQVJSUGl0SDNN?=
 =?utf-8?B?VUI3ajJ6WWJLMklib0tEUitHVmxsY3ZpY2RVN0ZWWDJWTVRGekpreTkzMDdx?=
 =?utf-8?B?czZURjFtL0tmTzZCaDIvMnc4VjYxWjZKd0trOUhWc2Vyd1dmSXd2dmorcm5O?=
 =?utf-8?B?Ukk1Q0dpaGpuQU1pNytoTTFja0VNMXE3ZDVrL2dCSEF4MnRaMTYzSUlub3JB?=
 =?utf-8?B?SXpXMzM5Wkl4RnZQL1JMbmgrbHhYMHAzVHZkUHNLSVFId0VPRkV6NExxVXRL?=
 =?utf-8?B?OWs3anRQM04vdUh3bDRwLzNMTXh0RGExcTBzOVJrZzR4Rk9vdXV5aW1lUm1L?=
 =?utf-8?B?Qm9DeGZxZklHTWF3enJsNUlaTWNBZ1A5dC9ZQzYvNnVuZkcwMURya1B6bTd5?=
 =?utf-8?B?STlYdnVuQzVLUVFGeVB5clpZa3ZOZEo3UENiL3h6UGI3WGIzUDFRNEhLdTVT?=
 =?utf-8?B?Uzc0dGIwVk1YdGFrNG5JZkVSKzZGQU9XbjhLS0FMVjBwVzg4ZGtTcVJHSVQr?=
 =?utf-8?B?Y1NlVThXTkEzaDJrUFY1aDMxWS9KY0lobGJCdVZCS1lLVXQ2bXYxY3NLVFRV?=
 =?utf-8?B?cXVZMGs0MXliVms4TVZGSllXWEQxZnRRZUN5cGQ4ZVBNWm9Qd3Y2NGNxcVBR?=
 =?utf-8?B?Z0lYczN3WW94Sk5hQVk3Ym5kSE9sdytoRUo1Mi9GNHpiK2lHN1pzSFhyZDJD?=
 =?utf-8?B?MCttN1c4NTdQQ1UrTFJNUWUyYTBiRmE2czhRUGtEVldlYnBmcXF3SWxTSFoy?=
 =?utf-8?B?dUJYYzhpL0JKU0gvK0Y2Ty91NGU1TVZTOFdiWVhhYzBoNlFpVk0vM0hYZmpp?=
 =?utf-8?B?OEV0OGNpWmg4QXhxYWlkSXAvYm5pNVEzVE1yb1NncEVBOUpUTlo1N2lqSGU5?=
 =?utf-8?B?T1BjbVFRZHpMM21jSW1zL05GQXFFdzlkdE13ajJEdzZ3Y0c1WWdXcGxMVEJD?=
 =?utf-8?B?ekxpUDF0VTNGaTdPN1lpU3BUUFF0V3JML0JVYXhuQlRrYkswdmNRdjR1SEZv?=
 =?utf-8?B?MHlQRE9tMmpKNG41TmxES2pVUzdGemhpb0Ftb1R2RlhzUVNzN2dOcW9jZmJX?=
 =?utf-8?B?cTRQSktTOTJxc2dIVFBGN2R0NGtYWlhrZ0JpVGZwZkdqODNHTFZJd0o4THY2?=
 =?utf-8?B?U3VoNFRMaEppOGxWZVBmeDREZ1YyOXVaQTY0Smd3N08xUk51OURPUTVTb0s2?=
 =?utf-8?B?TlFldCthVklCaDRsaXJTSW44WHJTQ2puWElmRUR0NUdBd3lLOVRBT20vb1ds?=
 =?utf-8?B?a0ZqNHhZMWoyWUZtMFZiZ1pXQUo1QUJhVkVPUmpiWG11eDRHQkRvUWxvSWpq?=
 =?utf-8?B?RHFUTWNqRDFKYktoNjVOWXNVeW5Mdzh4eEExRUtYRXlEbWJDVStCVk5uL2Nm?=
 =?utf-8?B?N3F1a2xSNHBET002U3NpSHI2NFRkNmx6dmRiT1orenI5VVphcHZYSVNWZzdW?=
 =?utf-8?B?UHhtYTR4eTAzNkpjWnlNajNWVFR6azBFNkVEM1M0L1FvNTJSS3lkeXV0TGR2?=
 =?utf-8?B?UVR6KzF4bUw0RTcvQ2FOdXlaU1FmZTZhUmRzRm5vVERtQVBmT28wZ1Y0eU1R?=
 =?utf-8?Q?nA/BSn?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(35042699022)(14060799003)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2025 19:50:56.0873
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 56231b00-fb8f-4008-ebbb-08dda46a4962
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF0000A798.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR08MB10446
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Jun 2025 19:51:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65478

T24gNSBKdW4gMjAyNSwgYXQgMjA6MDUsIGpvc2VwaC5tYW5pYWNpIHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIDxqb3NlcGgubWFuaWFjaT1zZWFnYXRlLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPiB3cm90ZToNCj4gDQo+IEluc2lkZSBhcHAtbmF0aXZlLmJiIEkgaGF2ZSBCQkNMQVNTRVhU
RU5EID0g4oCcbmF0aXZlIg0KDQpUaGF04oCZcyB5b3VyIHByb2JsZW06IGlmIHlvdSBoYXZlIGFu
IGFwcC1uYXRpdmUuYmIgcmVjaXBlIHRoZW4geW91IHNob3VsZCBqdXN0IOKAnGluaGVyaXQgbmF0
aXZl4oCdLg0KDQpXaGF0IEJCQ0xBU1NFWFRFTkQ94oCcbmF0aXZl4oCdIGRvZXMgaXMgdGFrZSB0
aGUgY3VycmVudCByZWNpcGUgKGFwcC1uYXRpdmUpLCBjbG9uZSBpdCB0byA8bmFtZT4tbmF0aXZl
IHNvIGFwcC1uYXRpdmUtbmF0aXZlLCBhbmQgaW5oZXJpdCBuYXRpdmUgaW5zaWRlIHRoYXQgY2xh
c3MuICBZb3UgYnVpbHQgYXBwLW5hdGl2ZSB3aGljaCBtYXkgX2xvb2tfIGxpa2UgYSBuYXRpdmUg
cmVjaXBlIGJ1dCBpcyBqdXN0IGEgdmVyeSBiYWRseSBuYW1lZCB0YXJnZXQgcmVjaXBlLg0KDQpN
YXliZSB0aGVyZSBzaG91bGQgYmUgYSBRQSBjaGVjayB0aGF0IHRoaXMgaGFzbuKAmXQgaGFwcGVu
ZWQuLi4NCg0KQXMgS2hlbSBzYWlkLCB5b3UgY291bGQganVzdCBwdXQgdGhlIEJCQ0xBU1NFWFRF
TkQgaW5zaWRlIHRoZSBhcHAuYmIgYW5kIHVzZSBvdmVycmlkZXMgdG8gY29udHJvbCB3aGF0IGhh
cHBlbnMgaW4gbmF0aXZlIGJ1aWxkcy4gIEJvdGggYXBwcm9hY2hlcyBhcmUgdmFsaWQ6IGlmIHlv
dSBqdXN0IHdhbnQgdG8gYnVpbGQgYSBzaW5nbGUgc21hbGwgYmluYXJ5IGluc3RlYWQgb2YgYSBs
YXJnZSBhcHBsaWNhdGlvbiB0aGVuIHRoZXJl4oCZcyBhbiBhcmd1bWVudCB0aGF0IGEgc2VwYXJh
dGUgYXBwLW5hdGl2ZSByZWNpcGUgaXMgZWFzaWVyIHRvIG1hbmFnZS4gIEJ1dCBpZiB0aGV54oCZ
cmUgYmFzaWNhbGx5IHRoZSBzYW1lIHRoaW5nLCBCQkNMQVNTRVhURU5EIG1lYW5zIHlvdSBkb27i
gJl0IGR1cGxpY2F0ZSBhbnl0aGluZy4NCg0KUm9zcw==

