Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE060C87FCB
	for <webhook@archiver.kernel.org>; Tue,  5 Aug 2025 06:26:43 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.15963.1754375190896038393
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Aug 2025 23:26:30 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=0312acd637=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.8/8.18.1.8) with ESMTP id 5755v2684117063;
	Mon, 4 Aug 2025 23:26:28 -0700
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11on2065.outbound.protection.outlook.com [40.107.223.65])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 489dy129vd-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 04 Aug 2025 23:26:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IXk1NRotoC4E9Nyjt1F/uSU0659Rpfoiqpb6IQGYcbrgxSFDjPtz03jWZZwWLOVV0MzeoqS7KiKvF5mK6ilMYkp17AMMYfvyFL1LLz7jFi4u8+Cw2Z19fN2p/HY0mnAoUZbX/iy9VsmKjNP2IccL3pyk8eYGSGikx4alcbQP6sOr+MIfZnUbNLD7BM5EU4Hd3843XvdRQbJuzD0kvYZt3LtZnktC3sxGQo3fjKhdXsJVZRE69vYxjotVeG8bkd6RWJBhtiZRRO4DujcpXfaXad5yE3V0dFdFXUsdScAXRvV2qHhYfmKyiyseLnwRNXWpzhfUuWYBMYyCU6TCE2pEAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7PeHTm4z0NXGX693HheDl0G4VwcS3FMQM9CCsnKhnLQ=;
 b=g3jGH9GuE44zFlO525fPemj9889itg2k4Gd0LYC+j/DlIJzAzTYiTNw8zK/680CgSIv57T40hUWYnVq3XIr6qDUmI+9N6g+jj8lNxVBltMwuNS1+8c5JdsH5iUxZrm1x0/8fgPqlLczIS5H8W2b0qXoiGCN925WR0Nw0H5qDN4GQKGwB/yrk+Ey3vseyMDYhHJgixiD6A7qj1C04Nb3DVdF3V0PEI4Vt0+dsBQ0EE1AVuqRlkJ374q0gKCYwtszQDfcMu8+Dz7I4YxC/SeVXz4M51xOUfbHrC58eYispuitV1xRRMc1jAx5nIhakr1Y4vHuxLu5h90I/XFMKf7lAOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB6399.namprd11.prod.outlook.com (2603:10b6:8:c8::5) by
 DM4PR11MB6431.namprd11.prod.outlook.com (2603:10b6:8:b8::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8989.22; Tue, 5 Aug 2025 06:26:27 +0000
Received: from DS0PR11MB6399.namprd11.prod.outlook.com
 ([fe80::2b44:787c:e7ee:bfad]) by DS0PR11MB6399.namprd11.prod.outlook.com
 ([fe80::2b44:787c:e7ee:bfad%3]) with mapi id 15.20.8989.018; Tue, 5 Aug 2025
 06:26:26 +0000
Message-ID: <0327b988-48fd-4af8-bc06-c91cd7f95734@windriver.com>
Date: Tue, 5 Aug 2025 14:26:15 +0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: yocto@lists.yoctoproject.org, Scott Murray <scott.murray@konsulko.com>,
        rybczynska@gmail.com
From: Yi Zhao <yi.zhao@windriver.com>
Subject: Yocto compatibility for meta-security layer
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: SI1PR02CA0012.apcprd02.prod.outlook.com
 (2603:1096:4:1f7::8) To DS0PR11MB6399.namprd11.prod.outlook.com
 (2603:10b6:8:c8::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB6399:EE_|DM4PR11MB6431:EE_
X-MS-Office365-Filtering-Correlation-Id: 7960bc70-a726-42da-f4e5-08ddd3e901b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Z3YxdzhBREEyL0t0T0tJTGtrU2pHbEg5MmtUcFdnY0ZzeGlGTS9LN3NGbmQr?=
 =?utf-8?B?N3dRYmJXeGs1YUs3dkoxRThPbUV0MTNyNE5jM21OczhKd1hIVlc3TVVvc1ZB?=
 =?utf-8?B?WjZ4QU5EQUw4RkovenpzdDc1VmpJRlRjT2Z5NFB4ckQ3a0ppUE5ZbTN0Qkd1?=
 =?utf-8?B?aCtlcnU4Z3RxM0RzMmxsbW91QTh0TkRTNjFpUnNTV1RzWWErUVRQcFBqVGht?=
 =?utf-8?B?bE0xTUd0b3ZqMFFzaTJFNHRQT0FkcFl0eHVoaGZudERBNk5qMFpHRXo2TjIr?=
 =?utf-8?B?dUVCckVMVjliNjlQU2E5V2hObHhvT0RaL0lhK09hdXhSTEludkNDczNONlZF?=
 =?utf-8?B?Rkh3VU9DNHdscUtCK0NueXdyT3N2Q0NBSE5mVUp6YTkyZVRVcFJ4Vk90Mk9p?=
 =?utf-8?B?dDJESngxQy9wMExNU3FiRHd0UGRFSTRzaFgybElocXlHY3ltSUsxaGFhZ1hI?=
 =?utf-8?B?UzREYUFnWmptRFF6VEhoZ3NWWXRsUzQ1K05zOXdJTC9KcVdJQzhrTjlzUEVM?=
 =?utf-8?B?SWdVcDk4b2RBM1VjSk1qQU5hQjgrT0wweFBlcnIvRU5lNEt2di9yeFhLbVNF?=
 =?utf-8?B?aXRXaXZ0NXR3RXRNc2JkeGkranFaQ1lhZmRXdmgzczN1dzZuaE1MdEZTbE9W?=
 =?utf-8?B?RllycTRicVRaODQ0dTFTbFpxYTQwcVZPNHdOcHBIWmR1YnlaZ0V6N1VnTUl0?=
 =?utf-8?B?bUJZY2F5cDdCNUVwOU1EeUZpN0prVGtQQWp6M1dFN255VmFSalNzTW5PMFly?=
 =?utf-8?B?Z0lueGU0NG85cmRjSnFDWkdacHF0cWNMNE0vZ2xWNno2UDBSOWEvTE1wV3kw?=
 =?utf-8?B?WnNGd1pyS0lYSjJaZWpOZWxqTG1pZEdpSFNQVkppUXRaOXBFU3FRT3F6TTJI?=
 =?utf-8?B?eXc3S3REamFDNnp2QlE0WnZqK1IvQ2FPL2RjMnRMWE5Xa2tjWlhNdm10aE9F?=
 =?utf-8?B?azFBanVyNDBBK2FVdU82dlBUbDBmQjA2QTlEWFJzUEh2RHpoTnVSY2dRTklV?=
 =?utf-8?B?YVFaYVQ3TEp1eDNLamtRckZ1NFUwdDc4UTJCaUdHUnd4cytqYnkvT3VmMUg0?=
 =?utf-8?B?S3djdnZWZkU1MUt3N3RLQzVwdVpKby84ZTVnMnlRZHNkNG5GMnB4T3AzcTYz?=
 =?utf-8?B?Vm9sa1JKc0JidWtIY0w4Q1FzQWlwRy8xQVV1bWJPZlpwclN2Q1ZqbUdNMEpC?=
 =?utf-8?B?Umg1cXpvWStmZTNuL0FqMWxIZm1aczB3N2ZiOUljaVRuUG5IdTZoM1JoSFQ3?=
 =?utf-8?B?anpPRkU4Q0ZHY2tpbHpEVXpZSHFRT3Q1c1k3NG91R05qY3MxcjZoc3lYaTF3?=
 =?utf-8?B?bnZyTWptL2x6T0h6TGpOVWo3TlBtK2l0TjVIQVdaMzFTL1VRbUszVTVvRnZX?=
 =?utf-8?B?a0NyL2FkL1hsbHQrQ1Q4TmdBRlpSU3lQWEM1d0d0UzBjeW9wSFlaWktVV0Nh?=
 =?utf-8?B?S25zL0xTYXBoWXBSaGlwbjdQZGUzbExLbmRNL3lweWVlTmI2K1F4bFd0eHQz?=
 =?utf-8?B?c1FSaU5Ia2JXcmhhRDNFUG9odldOTTQ0UTBERktRemY5a29aOFg4eUxFWE5P?=
 =?utf-8?B?ekd0M0hHRW0ySUE2ekJwNFBHVG9oN1lrVHRSQTh1ak5MRXpjSnNZT3p0T01X?=
 =?utf-8?B?dEVZeVJRN2IvRFdKU2NkT1M3TkE3ZHdTajRYV2IwYWFoVTQxSW9yQlJ1bDlv?=
 =?utf-8?B?bE9aQ2IraHBtQWgvWTlreTVjZGFMekxELzFEL2hCY2lnc0VUT1BqZEFPTG9W?=
 =?utf-8?B?RkZQWmlSbWEwK0piT0s0bkNTdno2RXVGZVhiRnNJOFNDVzVnNzk5SUZBMVF0?=
 =?utf-8?Q?eZvRnIeUelg6bqNDyB1PxJ9G68FBfMpCtAg5c=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB6399.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?c3FUUjh1cktXRURxQlZxbU1UMmtGaWhaUElpaytBekgvTlNBRWRXaDZGcTJI?=
 =?utf-8?B?Sk5CYVlSNDFiOS9tNmtFNS8rV2ZMRkhiK29UeFdPWjd1T3RrbnBiWEJRWjBo?=
 =?utf-8?B?VGYvdnV4VWZhcStURnFjTFdoUWU4bTJLeFY5QkZVYm04K3NRdnJhYUdITDRR?=
 =?utf-8?B?bEk0bXNlYk5SaEFFSFQwdmNqMG1kVE1rZ0hvL09OWnlvYXQ3UXhaK0Z5UDlt?=
 =?utf-8?B?VzlOT3grQTJCQVhmS2YzUXA0T1RsdWRGL2xzYVkwYWxaR28vVVJ4UVBvempR?=
 =?utf-8?B?UzRibW96ckFiQldGVzVuai9WWVgyRyt0bGJ5aUNDbmhBNW5xeUFXSEtkc0M3?=
 =?utf-8?B?aDZZU0dXcC8wYWtQVFRsRjEvR3ZTNERUazdhWkdSQnhnNmpGMjNJN2MvaVBv?=
 =?utf-8?B?QXl6MDBkaHU1eUtncnhTZ0VLSThzUHY5QWZraTZOT0lDbzlxL1hFNkYrbThs?=
 =?utf-8?B?cU1PTjJzNk5LaXVuMWtneE1ZSGQ5bktJaEhPZHFTSjJXOHlOMldGekEwZUlU?=
 =?utf-8?B?K3ZNdmQwRHdOVDFuc2ZFWmVIT0lRem9HajlSaTJoeHhiWHRjRy8wcnhnNXdQ?=
 =?utf-8?B?a0t5TUczWHpiaVowNVY1cWxpQUlKN2lJRytrL3V2bkRTY1dOWmVWeGE4Tjdu?=
 =?utf-8?B?L0p1S3p5a25hN0JST2RGNmZkSmk1ZlpjSDl4b0dzMVp0Ui8wQVhteDZ1U0pG?=
 =?utf-8?B?QVhPdzJnN3QvQ24xVDVMOXNWSGtzUDZFSy8wVGMwakM5cFhpTGVKbG5hUXBu?=
 =?utf-8?B?MTlIUlZxSTRIVUFhN1YrVFpEaUJyVkVjZjZiV2swOHlrVVd2QndKMHVKb3Zv?=
 =?utf-8?B?bForN0ZETktvT2NFdlQ1dUhyN1lxanNwOVNwazIvbUNRb3NpeTZMejBqTCti?=
 =?utf-8?B?aE1Va2I2dC80OEJSdkZ1MDFrZC9sVGFqRFgwOFpJOG9kNk8vb0prZHFrMnpY?=
 =?utf-8?B?b0l4VUJRQkJwbmNXRHRBN0pZTlRuTms2SU4xK1ZidWdjUmJFa2hEaVpxNjNT?=
 =?utf-8?B?OHVITVlidlBzcFE3eStkRlRNTklJTk5NZ0FHOW1iS3Noamp1RlpjRW51d3ox?=
 =?utf-8?B?eXpPSFdmZVRSVjVOaHFBZDN2V1lDRTVPaTdsRWpHYjBBdTJRMm0xQ2xtN1FY?=
 =?utf-8?B?a3ZEdVVxcUVVQ1B2MlhQYWh0NFB6N2JnZTlOeVlyZkp2Yld2UlpMOTZxRDlo?=
 =?utf-8?B?ZlR4Mit0aW41ZDVQMnQwaUxWZW1vSktQa2lOT2szd2VPSVMrRUVhMXh3QUVV?=
 =?utf-8?B?Ly8ydGJWK2lBSEVvTnZlU1lnL2V6YmR5VXNaUlZQTWhCdEhEZzJBU3M0Y2dy?=
 =?utf-8?B?Rytva1hmWE1CS0NMS01nOHZzSGtJMjBHdnUyV1RHUzMrUElJWUFFeEpSMEt5?=
 =?utf-8?B?eXpqNEtyL2lqcGRSRjI2N0VDWUJzbE5Gc3dKaTNhVnoxcklUbG16aGs5VFJW?=
 =?utf-8?B?bSt3ajMrSFRsaFhabDVZU0FXcjR4cDlnVUVlSXBaS1N3My85aC9jVDh3UDFF?=
 =?utf-8?B?NTFJOEczRUtFRm4vTkhCTkdLSXU1OVNqZnJwS0hBSGdqaHdmNm9tNDBzdmt6?=
 =?utf-8?B?Uk1kTUI0Q0ZELzdvUHVFRzRLY09sWldOeHNWaU15KzBMUDkyRDJhSTlKanRw?=
 =?utf-8?B?UGpoeXNSYkpnOHFXVExaMGl3aWVhZ2RCUzRTMEhzY1JhN0FDbFNJZTRUVXdP?=
 =?utf-8?B?U0FaeXRTb0lJWUJXeFRyb2h0SzZWRmsxZjlIQUVVRnNPT0lURlpmWTF5N2lx?=
 =?utf-8?B?TnJ2Sy9BNDFBdXhPUC9BU1dqaWxDSVdTYVp0aTNwd1oxTmhtMFB6TFZ0OVd6?=
 =?utf-8?B?d0hpNEt6RjlCeTRpSHRKZWErN0UyQkdNZjh5WWJPZ1ZiK25IWm5DcGc5L3JD?=
 =?utf-8?B?RG9hdG56Q2JqTWdLY2Fna0U1Ymo4RUhXL3NEM1VuSnhTSm1uNzlSS0dhYlZa?=
 =?utf-8?B?WjZyeWp3ckpRdGwzSUNDYVRyclZkRnFLcjQzZlZyaGtPS0VjQmdTTDJzRGlt?=
 =?utf-8?B?c1podFBRQzFxekFGRGl2QUh2ckt6a0RVZnk0cEVMVG50eG5PZWdnS0FZUDJi?=
 =?utf-8?B?Q2NwWWVwanpWWFZacW9lOEMrM0NQZ0NmeExSY1ZJYi9LcHJNWDNtbVBwWHdy?=
 =?utf-8?Q?0mhlFT1fs2jB1nHJdq20X0HcA?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7960bc70-a726-42da-f4e5-08ddd3e901b1
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 06:26:26.8913
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CoQa6dST497IF72hSi47Qyk+Otqxrq1IUNru4EZunHwqu8WarsGMu4wymxX15crZdIf5gP1F6fOffKwR64lW5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6431
X-Proofpoint-ORIG-GUID: ccFKhNqxKCs0B60dSi8J7wAs-qkpQt7s
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDA0NSBTYWx0ZWRfXzBE3AuBhbdwK
 OraXYJolbrSF6QEQbD1CN6vCOV7klsxYsplWTMqSVh/eXTQbe90kzbF7j8iENdLSBgMliqKnpOt
 hBqQ63/YYPy1bsDsr6nR59KvWfgMe7RX6sxC0VwKRp624rs/R2E3fkKcJK00xDWsxWHVi3lmCP9
 x+mgptZWAXuztFjQmen0O80Cd9/IEs0/6g6sA/8OBPvpYjfBhCUv3WsLS086m5ZdbdbHSSq0+G0
 8BKpwTpZ+a7EtQ5mBfmCStTXWhBbZH6rytucrg2UV9kITYo58L44REg9ffGsKQN3ILajktYMxjs
 3lH1mOcfh5TSZqdid4G6JWUxnlCEeg+PCxo43oewjy3aq6mP1SlAwCNbOtA1W6ZnhJknCutmaPi
 itX6/7DE
X-Proofpoint-GUID: ccFKhNqxKCs0B60dSi8J7wAs-qkpQt7s
X-Authority-Analysis: v=2.4 cv=LtOSymdc c=1 sm=1 tr=0 ts=6891a414 cx=c_pps
 a=cwm4V9kIV149ZnrMCXrCJA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=vlfEKXvPAAAA:8
 a=NEAV23lmAAAA:8 a=7nhfhXV0xEV6DYmKOY4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PnTDuSQR5rMvcWp5Oz0h:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_01,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 malwarescore=0 impostorscore=0 spamscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2507210000 definitions=main-2508020059
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 5755v2684117063
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Aug 2025 06:26:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65731

Hi folks,


I used yocto-check-layer to check Yocto compatibility of meta-security.=20
The tool reported the following failures in meta-security layer:

INFO: FAIL: test_security (common.CommonCheckLayer)
INFO: -------------------------------------------------------------------=
---
INFO: Traceback (most recent call last):
 =C2=A0 File "poky/scripts/lib/checklayer/cases/common.py", line 70, in=20
test_security
 =C2=A0=C2=A0=C2=A0 self.assertTrue(filename, msg=3D"Layer doesn't contai=
n a SECURITY.md=20
file.")
AssertionError: None is not true : Layer doesn't contain a SECURITY.md fi=
le.


INFO: FAIL: test_signatures (common.CommonCheckLayer)
INFO: -------------------------------------------------------------------=
---
INFO: Traceback (most recent call last):
 =C2=A0 File "poky/scripts/lib/checklayer/cases/common.py", line 130, in=20
test_signatures
 =C2=A0=C2=A0=C2=A0 self.fail('Adding layer %s changed signatures.\n%s' %=
=20
(self.tc.layer['name'], msg))
AssertionError: Adding layer meta-security changed signatures.
32 signatures changed, initial differences (first hash before, second=20
after):
 =C2=A0=C2=A0 libmspack:do_recipe_qa:=20
c95ae911bfeba96c673fd11d13933da5bee4df3a21e93b6b764ad47b7bceeaca ->=20
2381779674028e9ef4608e56fb2159dc11f37d0c6b24050dc5da7069cdb25505
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bitbake-diffsigs --task libmspack do_reci=
pe_qa --signature=20
c95ae911bfeba96c673fd11d13933da5bee4df3a21e93b6b764ad47b7bceeaca=20
2381779674028e9ef4608e56fb2159dc11f37d0c6b24050dc5da7069cdb25505
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 NOTE: Reconnecting to bitbake server...
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Task dependencies changed from:
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ['HOMEPAGE', 'INSANE_SKIP', 'OE_SHARED_UM=
ASK', 'PACKAGECONFIG',=20
'PN', 'PR', 'PV', 'QA_ERRORS_FOUND', 'RECIPE_MAINTAINER', 'SRC_URI',=20
'SRC_URI[sha256sum]', 'SSTATECREATEFUNCS', 'SSTATEPOSTCREATEFUNCS', 'SS
TATEPOSTUNPACKFUNCS', 'SSTATE_BUILDDIR', 'SSTATE_INSTDIR',=20
'SSTATE_MANIFESTS', 'SSTATE_SCAN_FILES', 'SSTATE_SKIP_CREATION',=20
'SUMMARY', 'do_recipe_qa[network]', 'do_recipe_qa[sstate-inputdirs]',=20
'oe.path.copyhar
dlinktree', 'oe.path.copytree', 'oe.path.remove',=20
'oe.qa.exit_if_errors', 'oe.qa.exit_with_message_if_errors',=20
'oe.sstatesig.sstate_get_manifest_filename', 'sstate_add',=20
'sstate_clean', 'sstate_clean_manifest',
 =C2=A0'sstate_init', 'sstate_install', 'sstate_installpkgdir',=20
'sstate_package', 'sstate_state_fromvars', 'sstate_task_postfunc',=20
'sstate_task_prefunc']
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 to:
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ['HOMEPAGE', 'INSANE_SKIP', 'OE_SHARED_UM=
ASK', 'PACKAGECONFIG',=20
'PN', 'PR', 'PV', 'QA_ERRORS_FOUND', 'RECIPE_MAINTAINER', 'SRC_URI',=20
'SSTATECREATEFUNCS', 'SSTATEPOSTCREATEFUNCS', 'SSTATEPOSTUNPACKFUNCS',
'SSTATE_BUILDDIR', 'SSTATE_INSTDIR', 'SSTATE_MANIFESTS',=20
'SSTATE_SCAN_FILES', 'SSTATE_SKIP_CREATION', 'SUMMARY',=20
'do_recipe_qa[network]', 'do_recipe_qa[sstate-inputdirs]',=20
'oe.path.copyhardlinktree', 'oe.path.c
opytree', 'oe.path.remove', 'oe.qa.exit_if_errors',=20
'oe.qa.exit_with_message_if_errors',=20
'oe.sstatesig.sstate_get_manifest_filename', 'sstate_add',=20
'sstate_clean', 'sstate_clean_manifest', 'sstate_init', 'sstat
e_install', 'sstate_installpkgdir', 'sstate_package',=20
'sstate_state_fromvars', 'sstate_task_postfunc', 'sstate_task_prefunc']
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 basehash changed from=20
7389c2b644a0cbe3efb08eb36e79682648583737171690342d91f61f860d82b9 to=20
3c44df2e06825629c6dd1be4b7e660fda1c4dc9155908baef64f3cb366cf42c2
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 List of dependencies for variable SRC_URI=
 changed from=20
'frozenset({'SRC_URI[sha256sum]', 'PV'})' to 'frozenset()'
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Dependency on Variable SRC_URI[sha256sum]=
 was removed
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Variable PV value changed from '0.11alpha=
' to '1.11'
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Variable SRC_URI value changed from=20
'https://www.cabextract.org.uk/libmspack/libmspack-${PV}.tar.gz' to=20
'git://github.com/kyz/libmspack.git;branch=3Dmaster;protocol=3Dhttps'


INFO: FAIL: test_signatures (common.CommonCheckLayer)
INFO: -------------------------------------------------------------------=
---
INFO: Traceback (most recent call last):
 =C2=A0 File "poky/scripts/lib/checklayer/cases/common.py", line 130, in=20
test_signatures
 =C2=A0=C2=A0=C2=A0 self.fail('Adding layer %s changed signatures.\n%s' %=
=20
(self.tc.layer['name'], msg))
AssertionError: Adding layer meta-tpm changed signatures.
22 signatures changed, initial differences (first hash before, second=20
after):
 =C2=A0=C2=A0 systemd-boot:do_configure:=20
1ac6cccd94f468f2c258666e57b8f57338e63a85ba293abe360bd9440852da93 ->=20
376daf18bae87ebdfddd9c9ab6bf95bfe06a830eea45bb8ade914de66e3f4fae
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bitbake-diffsigs --task systemd-boot do_c=
onfigure --signature=20
1ac6cccd94f468f2c258666e57b8f57338e63a85ba293abe360bd9440852da93=20
376daf18bae87ebdfddd9c9ab6bf95bfe06a830eea45bb8ade914de66e3f4fae
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 NOTE: Reconnecting to bitbake server...
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 basehash changed from=20
5af44540c3f151f0ffc33e381a6694b6b193b0494207170656323588ee0ccc4c to=20
236e8f11f35d1dfebcb81c286f3ac82353cb92c78835a4064888a8a0c7aa405c
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Variable EXTRA_OEMESON value changed:
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 @@ -1 +1,2 @@
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - -Defi=3Dtrue -Dbootloader=3Dtrue=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 -Dman=3Dfalse=20
${PACKAGECONFIG_CONFARGS}
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 + -Defi=3Dtrue -Dbootloader=3Dtrue=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 -Dman=3Dfalse=20
${PACKAGECONFIG_CONFARGS} ${@bb.utils.contains('DISTRO_FEATURES',=20
'tpm2', '-Dtpm2=3Dtrue', '', d)}
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +DISTRO_FEATURES{tpm2} =3D Unset


INFO: FAIL: test_signatures (common.CommonCheckLayer)
INFO: -------------------------------------------------------------------=
---
INFO: Traceback (most recent call last):
 =C2=A0 File "poky/scripts/lib/checklayer/cases/common.py", line 130, in=20
test_signatures
 =C2=A0=C2=A0=C2=A0 self.fail('Adding layer %s changed signatures.\n%s' %=
=20
(self.tc.layer['name'], msg))
AssertionError: Adding layer meta-integrity changed signatures.
209 signatures changed, initial differences (first hash before, second=20
after):
 =C2=A0=C2=A0 linux-yocto:do_kernel_metadata:=20
3a727f91c23ce583b5fc28f0e052fb118a79ce2f2bcc70e36db9774a2d7b3be0 ->=20
6b3ea68b9a0f4feb86e074801010f82bcd0b0024ee25ea654b5c81bbb566a382
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bitbake-diffsigs --task linux-yocto do_ke=
rnel_metadata=20
--signature=20
3a727f91c23ce583b5fc28f0e052fb118a79ce2f2bcc70e36db9774a2d7b3be0=20
6b3ea68b9a0f4feb86e074801010f82bcd0b0024ee25ea654b5c81bbb566a382
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 NOTE: Reconnecting to bitbake server...
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Dependency on checksum of file ./audit.cf=
g was added



Here is the command I ran:
$ yocto-check-layer-wrapper ../meta-security --dependency ../meta=20
../meta-openembedded/meta-oe ../meta-openembedded/meta-python/=20
../meta-clang --no-auto-dependency



Thanks,
Yi


