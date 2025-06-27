Return-Path: <thomas.de_schampheleire@nokia.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C324C77B7F
	for <webhook@archiver.kernel.org>; Fri, 27 Jun 2025 12:27:47 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (AM0PR83CU005.outbound.protection.outlook.com [52.101.69.31])
 by mx.groups.io with SMTP id smtpd.web10.12451.1751027261286492360
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jun 2025 05:27:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@nokia.com header.s=selector2 header.b=jbEQLUlu;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: nokia.com, ip: 52.101.69.31, mailfrom: thomas.de_schampheleire@nokia.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vTvS9nwqQx1zNj1DFQogUnAvr4N7QORgem85Xik3kDieQvE4IvZaCgBcNjEy4ylyz51y4eag9kpyJRE80ch2SKeIm8tR57JHiUmwST5cs2vBdtcg1GnztfeqQhmSRGil/TtswSWWfdWc0iHdmMrl9j4ykx2+uFE0pMusvaEDamvKjs9faDxO6cY4pLX004U/PkuTxN5nqGgOZR6ODZuAqB1BEzdmWP13MA0Rma1RPrAYtTolYSsgnpVD93Mh3vMgMCJyET59ANKPH5EFkLdVwXt/fLDUxVSjDl0EsFDa3AgnS1QDW3p+5mT8npAvSaPi1grhOECkGAQ19GLc5aR1yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A13iRALCvTpY74s2Ps8rPie+in64TI9SbXbwZKAQh2w=;
 b=mMGlQ9WKx0uIon3NnpdEdFVoRnM0mrdOXPfYPYLUt4KK+C5Xv8asv9pXi+WdRDemkE57jMUHCqovnVvKnFTgxWb1Ovde5KCG8803dF1Vn8mIGlaFH3tNrMp/vpB1AUNTZ1l+I/eCyuYX16qG/XrWK1+OclgbzVRoFnPde7qyOX976yFf0Rw35DUuPbRvYeCKbHgu8weYuBO4fJnvqGnnBli5KaWfhHU0s3fXAB7KHNexdofZQSQg9TfC8aDfMjbZdbJO3Yn6q+VkkYZbzQ8w/2bEXd+wbhX1pPCUelw+/GeoM1NpPMI95SMVDDCT64HI2zdxgYa3WM3ondFLYWem5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nokia.com; dmarc=pass action=none header.from=nokia.com;
 dkim=pass header.d=nokia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A13iRALCvTpY74s2Ps8rPie+in64TI9SbXbwZKAQh2w=;
 b=jbEQLUlus+OGfqxqzXVVluoBTeeAVIqc8VVKAyuSbJRRE3uqagUx5aeUBgx3QrAHY16y8YzIF3id87K10dKUhx0r3a+9rXOB8Nj+wG6jjSPxSQJRNXiLms3n+qSKhkkLj3HAEyOf2qn8M/v1rLAn6YYiMmIsAbQNn5f7giYixEz5USdBZ3jobbOI3+ynEclK5nbO0+lJQnzscy1RM3XNCE6x15jbbytoLDXR1QuSx8ndT2xIT+ULfNHvm+VzUxU+oSHiehlCok6o1bn1SonfNVWGt6MIF2h48N6OcgmVXnux7MaRY/9jPJfCze0/ZBm/zgnU27B/ECZzwwiIMp2K/w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nokia.com;
Received: from AM9PR07MB7282.eurprd07.prod.outlook.com (2603:10a6:20b:2c6::9)
 by PR3PR07MB8036.eurprd07.prod.outlook.com (2603:10a6:102:14f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.17; Fri, 27 Jun
 2025 12:27:38 +0000
Received: from AM9PR07MB7282.eurprd07.prod.outlook.com
 ([fe80::554e:4916:29d6:da3b]) by AM9PR07MB7282.eurprd07.prod.outlook.com
 ([fe80::554e:4916:29d6:da3b%4]) with mapi id 15.20.8880.015; Fri, 27 Jun 2025
 12:27:38 +0000
Date: Fri, 27 Jun 2025 14:27:49 +0200
From: Thomas De Schampheleire <thomas.de_schampheleire@nokia.com>
To: yocto@lists.yoctoproject.org,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>
Subject: PR Service version instability with multiple build types
Message-ID: <aF6ORUyR-YGOQy9O@L-PF2SHBMP>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-ClientProxiedBy: FR4P281CA0306.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f6::17) To AM9PR07MB7282.eurprd07.prod.outlook.com
 (2603:10a6:20b:2c6::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR07MB7282:EE_|PR3PR07MB8036:EE_
X-MS-Office365-Filtering-Correlation-Id: 41514504-b8e6-4859-0938-08ddb57600fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TG5yVC9GbEhtL1dJYlJJTUlSZVNWK216Y3JTbkpMRGlJMHhSeldhbEpST1hi?=
 =?utf-8?B?NW5jdVdFZjNCVTVkbkdJaG01aWZETERZSHYvZm9XSjRyQmo0MzBnNkl3RUp4?=
 =?utf-8?B?RjR2VFJzdTIxdlZ1WWxrVjlSc1h1ZDdqV3puaU9Md1dieFNyK0pVMURVaUxJ?=
 =?utf-8?B?aTU0ZlViYXhENUlwd2VkTjFkSksrd0J5ZDhveU1VVlpQY3F1VjhtbElybXRL?=
 =?utf-8?B?U0ZSR3RRbTdLR3J0cTNNSDMxd2tiYVNjQmVKNWk4ZmNITlFHQmZWVGtrMUdi?=
 =?utf-8?B?V1U1UTNmay83blMzOTc1UmJOQWsrcE1pZk91Si9YNXFaaEJMQlZNWnZidlBn?=
 =?utf-8?B?aG1UVkpGdzlVSEhRZkI5L1NBVTlsMW44UXRVUDNSMUhXSDlMbllKS3ZZNE5s?=
 =?utf-8?B?VWtjbXkrZkJZYklsTkRvaDlta0FJNlFxSTVLcXI1akdpanB4bXlOSnJmWHVP?=
 =?utf-8?B?cDdWQU96V2hyeWNQT2grWXBEV0xYQUFLQ29jQ1NSMjluditSUGZiQXB1cWhr?=
 =?utf-8?B?NUN0Q21ydDVWWVZCNGN2TFk2QUhtNEJIUU1GUmRlMTFhd0hjc3BVRnJSVEtM?=
 =?utf-8?B?UmxQZnZONzdmY2x0QzkweDVuVEdnVkx6WkFNYkNxWkJiUUhkM3FrckwxczFK?=
 =?utf-8?B?RVVldC9ydHJqTG9mYjlBYmdXY2hYZEVvSTBmZit2UnV3SFZONFlQUGo0UkFE?=
 =?utf-8?B?QkZDdWE4R2M2d09VRTN3TG9nU3puWlJ5c1pTeXVvVktZaDRQMTA5YS9VTHlo?=
 =?utf-8?B?elJ3eXlRODRDNTlPV0gyTDZYMDRkcGN1a3FTN2pxeTBCTEQ5cGRaZTA0eDFy?=
 =?utf-8?B?VkRFMUcwMkxNbUhyaFhVUDM1ZEFhQkFqOW5EdFBjUk11ekVrbVgxTnlpTUJj?=
 =?utf-8?B?b3FNbitBYnZXTWJKUFI2WURSWGNVcGJqQ2l2bjMzQVdrdDE3aWttc1ZxeFVJ?=
 =?utf-8?B?ejEyU0NaaDhQNWZrZ0lEZzB5dis5cTlsU2xmb1BqWk5GK3c3MkhaVXpzQkMy?=
 =?utf-8?B?RGVXLzVSR3FkL0JiaU1LSmtoZFFPMHRkYWsycXpoS1RnaE82d3NVekxoanly?=
 =?utf-8?B?eDEvdzg2WHZZeWRNS1ZTSUpueExqT3BPb3dJSVJDN3RFOUZNL0xSNUVlQnRR?=
 =?utf-8?B?VDVEbk9iZ1FON2Q2M0tSSjVKYjRsYWc4ZVI3SDRXN1A1MHhEUFZzWDZtWVp0?=
 =?utf-8?B?Sll4bUdnWFNtV3RqVmowdHBnVnZFbHY3VnlaNHBhdzNoSmZpOXNjdmROWHNO?=
 =?utf-8?B?cktZcVpFQlFQaVVUeG8zQi9BZHcyUW01aFVnRzlDRTJEc1VRQnoxaTliU3BN?=
 =?utf-8?B?QklCQnBpWTd0U1gxclRGTEQ0YVE5RENZRlRGUFJ4V2NPRHY5TjJ5NTNsTHc5?=
 =?utf-8?B?SUlFT2d1L213bWMvR2wxRHFxMTduMkVGdHB0OTdHczRMZkRuK0dtRXg5Smlv?=
 =?utf-8?B?R2Q2ek9yV3ZtZ2N3WldxMDdGY3I4RXp0K0I2N25sWXU2RjRLeXN2Y0RmVmYx?=
 =?utf-8?B?ZHJlUVNrbVJuTXlaSFFOM1E4dll2VktWSExBWHE1VjdnNG42NmlWeCt0UGNn?=
 =?utf-8?B?NnVaSXlVSTc5R3FHZ0IvNjhLaWdXTEN3SnRXZS9pNFB0L21RajRIQ3pYZUVs?=
 =?utf-8?B?UzQ1cVduU095N3NiOXFubE13c1h6Z212cUVyRXZDZlBERkRNQ0FJTDBqdnlX?=
 =?utf-8?B?T0FaM2tXRldYbHlJYXJUd1FNQ2M0NSs4eDJmNGI0S2E5QnlIZHgrNDF0NEQ2?=
 =?utf-8?B?a0VnTFMrQ3BuTlF6RDZTTWFmQVpRUldvcEdFYVRJNjNxS2E2QmpaQ1U0WjZZ?=
 =?utf-8?B?R24xR2dCUEJZWEZ3d2p2YStsWENERU96T0VEN3hNYk1yRFFsMFRpQmhqL0RK?=
 =?utf-8?B?RjZzZmdMakRHWWdGOTZNemN6bjRIVW9VVFZRd0tldUFEL2tMS2NjbWZ3QTNO?=
 =?utf-8?Q?tLHKla6B5Fc=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR07MB7282.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Y0wwNldUNGdJZGtTeHJ6OVpudlpNTzVpQVRsWHNvT2RmU0FlbXBLb1o1d0pV?=
 =?utf-8?B?SXllbUYxNnlMK1JpSmNWemc1NkluYWFYaXRYblZVQWg3eGJBUFU1Zyt5U3Fu?=
 =?utf-8?B?K0w4TlJGMWZFcVRUZUtNOXF0YllIWFJzNk5MR1Q5NytTV25yZkFBU2VlYTQz?=
 =?utf-8?B?NGVsdjZ1MmpGQjFRZ3hyZmtnZjZyNGFJQUhVZWZ3c2ozUFJRUkpxQ2dhc0xW?=
 =?utf-8?B?bENyQmpNaFZBRHljcDRtL2dHMjJyY1V6bGU4VkEwZzZpcGpmSmRORzhSTVR0?=
 =?utf-8?B?c2NjYWdWc1BFb1VxenIzaHJXV2Z1NGtnejlEV3p4L3U0bFhzY3VqdXpySmgv?=
 =?utf-8?B?eGxnbHJwclJqc2dhL0F4MVI5cHU1S3JQUUpvdFh0V3IxYTlUK3VYWXVjRmdE?=
 =?utf-8?B?b0JtZ09OclZNZXZhcExYT3BXOERNU2xhRGZ5TzB2T0N1alV6OEYvZ3F0d1VP?=
 =?utf-8?B?a1d5K0xZcXhoTU0vR3VMR0JnYVhWUGNCdURYMXgvc1NiZXFPdkdZUjNRSUxq?=
 =?utf-8?B?YWp0YXlVQitpQU0rYllkczZaeXh2Qzc3THRDbXRXb2JTU05YNmNUalpQYWJk?=
 =?utf-8?B?ektBTHcwdktnZVQxUnJwZUZDVEFKR0dleTN4bWdlRnFobEVERm9PNkdyL2NR?=
 =?utf-8?B?dnRXK3ErUTh1bDV5ZjlkUkFheGNTNm02YlA0aHhwM2RrR1UxMnRWS2Robk5L?=
 =?utf-8?B?RFFwY0hObHRkcE5IUGMyNnFqdEtWM2pvWUg3Zm9aektIQ2R5d0svaDlvUjVy?=
 =?utf-8?B?OXZpbXJmZGgxZWVOQU5wYitsNHdWMG93QS9uOVFLdm5KbWs0Zlo5SXgzM2xr?=
 =?utf-8?B?S01JNEwvUmp0OCttTWtrNEJzdlFNa09Qbk9JekFGOEkvWE1TY0s4ZjFIb1dU?=
 =?utf-8?B?V3RVMFF5L0ZRZUg4ZzJsV0dYYU1jVC95Z04rVVF2bFZVWUlhUkd5NHZlelg4?=
 =?utf-8?B?NWxJSEtRbk50cko0MDlkKzhFRkk3YnhUR3JVdU8zaklyQjAxMEhTR3g5OUow?=
 =?utf-8?B?T2drODhqK0ttU21CalpkMEpSL0pIU0VneUEvYUNWaHJ5cm8rcStudXhVYk5R?=
 =?utf-8?B?WDQ0UWE4dGpMNUU3ZUhQU3JqUVlVbURCd21ZMnNzVCtORTlyelpvcmdza0J4?=
 =?utf-8?B?bER0elZjamxEbEp1Zi9TMmdmQk4rOEpsWC9WWEVFb3o3M2RHUnhHNWZnRGJQ?=
 =?utf-8?B?NThlS1lnT2IrajluQUdYTEFrbks2azZoaVlTQXRIelNtQlpYVFBPR2k1b2x0?=
 =?utf-8?B?d2VsWXlHeXVha2N5dGlQZDVnRlBvbDhPTlg4bmJ0L0hkSnpMMWdXZ0QyWk8w?=
 =?utf-8?B?NnNTVEEwOHR3Y3psa3VJbDRuOW4zWCs4UFRMVVpicllZbVY5V00vdCszUGtm?=
 =?utf-8?B?WVN1MFJXeXRTbFpLdnVGTk5ObUlUN2VONnkzRUdsNlJ4R1NYZWRHN0xqYXQw?=
 =?utf-8?B?ZTlzTjUxbkdrUllmS2luUFEzQk04WUdtWm5sZzdFbFhJZk5IL0o3Mnh3OGs2?=
 =?utf-8?B?YzhIVWh1ZlYrbXlmTjNxaUt4bGV4OU5vakFKV040T2lFOWNta2RJN1lGc2hG?=
 =?utf-8?B?b3RPb1ZNSUdkRnlaRC9wM0tTV2pNdjRvZlVFN1lPUllpaGkxcU9ZZGRNZkVK?=
 =?utf-8?B?Q2xncUthTFlQRUJHYlVLcTBWeC9tcXNwenV3QmFTb0p4eC9rRXc5M1hMRUVK?=
 =?utf-8?B?ZmNOSGZLb3dIblpjbktWMWlhTHlhUWQwaGNFRWZheTFpa2F3RjlERWNKQ3Zl?=
 =?utf-8?B?b3cyVFRETXJvME0ySHZpaVYycnF0dXlrbUtJRjF6S3kwaFR4SXpGQXVJVDRs?=
 =?utf-8?B?bkRsc1ZaZWc3cnBkeG4yUlk1QWNLY1huL2RnaHhjMG9JUGNtMU0zR01BNmZ0?=
 =?utf-8?B?QlFZQ3dNTUhJOG5lZUlwSUhkYlRZcVh6dHhyL3B2bjY1c3BSZkFQOEJONUl6?=
 =?utf-8?B?QkpxUjIxQkJ4K2lzR3ZVRm1ZZXpJR3crbEZPNDhpMnpYNXBFZlhTajhGVCtW?=
 =?utf-8?B?N1Z0b2hqNmtQc3R1bUZzWFh3YU1JTnl0RFlSN0FWajBSUnhQb00zNFVJOFcv?=
 =?utf-8?B?Nm1nVjNxOTU1bnA1R09WNTIxdFNjRDVqUXBRU0I2ZnVoNm9HbXJFanlpQTkr?=
 =?utf-8?B?QU1aVWg3Z2JOUzZtZktmWmlES2svWlprdWV6Sk0zdDM5M0RTOGg2RDBGL1Bh?=
 =?utf-8?Q?kBOBe/vEfwivUz3LZIN4028=3D?=
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41514504-b8e6-4859-0938-08ddb57600fd
X-MS-Exchange-CrossTenant-AuthSource: AM9PR07MB7282.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2025 12:27:38.5240
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: daxZf1MzG88yPDcjBVhJfK9T4puAhxsQpmvp9WQ+DN9RpCJtpGenVJHuOF9CgRhHNlMQXOw7orfI/VN/xLa1Pe/zTfxKW3SVpUgb1VGx5RXPrZR7Ki9fSe/FpmPwG8eJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR07MB8036
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jun 2025 12:27:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65554

Hi Michael, all,

I have been exploring the PR Service concept for our builds, and am bumping into
a problem.

I ported following patches from master onto our scarthgap-based branch:

39400c4a2b Michael Op.. 2024-10-11  bitbake: bitbake-prserver: use PRSERV_UPSTREAM as default setting
de29354e84 Dan McGregor 2024-09-12  bitbake: prserv: increment 9 to 10 correctly
fa9689923f Michael Op.. 2024-05-21  bitbake: prserv: add bitbake selftests
ae0725577d Michael Op.. 2024-05-21  bitbake: prserv: import simplification
3be2201de5 Michael Op.. 2024-05-21  bitbake: prserv: store_value() improvements
0d6dd343de Michael Op.. 2024-05-21  bitbake: prserv: avoid possible race condition in database code
65757c9e20 Michael Op.. 2024-05-21  bitbake: prserv: enable database sharing
4cbce9cdf7 Michael Op.. 2024-05-21  bitbake: prserv: add "upstream" server support
5f99010e41 Michael Op.. 2024-05-21  bitbake: prserv: move code from __init__ to bitbake-prserv
48d38aef22 Michael Op.. 2024-05-21  bitbake: prserv: declare "max_package_pr" client hook

In local.conf, I enabled the PR service as follows:
  PRSERV_HOST = "localhost:0"
  PRAUTO = "1"


I observe that subsequent builds of different types for the same architecture,
cause QA issues, for example:

  ERROR: gcc-runtime-13.3.0-r0 do_packagedata_setscene: QA Issue: Package version
  for package gcc-runtime-src went backwards which would break package feeds (from
  0:13.3.0-r0.1 to 0:13.3.0-r0.0) [version-going-backwards]


What happens is that the first build stores a PRAUTO version 0 in the database.
The next build of a different type but for the same architecture, stores PRAUTO
version 1 (some change in configuration will cause a different signature for
this recipe). When you then repeat the first build, the above QA issue appears,
because the signature for that first build still matches version 0.

I think this is a limitation of the data that is currently stored in the
database. It contains:
- version (package name and version)
- architecture
- recipe signature

As a result, different subsequent builds for the same architecture, package name
and version, but different signature, will cause version instability.

And even adding 'machine' in the database will not be enough, because you can
still have different build types for the same machine.

One workaround for this problem will be to configure a different database for
each build type. But this is not very convenient.

Have you considered this situation before?
What are your ideas about it?

Thanks,
Thomas

