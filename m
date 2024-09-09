Return-Path: <sandeep.gundlupet-raju@amd.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB514ECE58C
	for <webhook@archiver.kernel.org>; Mon,  9 Sep 2024 23:03:47 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (NAM10-MW2-obe.outbound.protection.outlook.com [40.107.94.44])
 by mx.groups.io with SMTP id smtpd.web11.9813.1725923019628788952
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Sep 2024 16:03:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amd.com header.s=selector1 header.b=GHN3ULUs;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: amd.com, ip: 40.107.94.44, mailfrom: sandeep.gundlupet-raju@amd.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mLFp73UyFgdA7aFoXEkHwtJeAeQSwgo+6RRPbXcjsVKyGcav8/CKUSwzDBs3YwEG4iNKRlO6krbV5FFjNA2uibBSeFXjJ3Z3XHYtt55BrDKsvIM7Kv/KychAbhuTHnXK6Is2TxFmGIP1N9CpVLNlkj6goVqvrYsb9YrKmk81+PZ8PoccFxOw+3uZACqoxtuu7fJGHSSGQGkUY9LI/ZOHb0vcLd2TleSb2b9gVDPjCrECpJFbbk7/dSfsHxWteEKpB0IYQ8kXtxifrRePChlorwhG44EXyo6dgisiXedylngHBbSDxUvyAhWMV8PDsOJq4YGYMrPXuxEh+foQFxzjPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KM3z6Tg0vDE52+tT18XLCUGMfUTGbMZnDBHnNkrywQY=;
 b=Ql0azvt6v8+1B+MiUeE4OsLVfp0hI1hpwzw++Zo6Q8EG8eu7GJYi34ATZH66CBLYbxFpcwBrxaJ9HUP2aZStrI6O9uf6tYhXR/rDCNNWWzlHr1rSDYuHUNEpysiSKFQPRO0ysmf5ns9/AiTjzVcK6CkcYjxkUiqqZSBgmqGzyA+STDiTl162TAr406OdQVQvAaBn67t2h/ZnA4b/KchWLEgnqJxLskfn4o02IZ4Itn4lV8whRalOtKjl6dUvrVad+oTf3J+vK+hpWmvz/C3JJciPFZGIRkPACdEvTbMmDQSUjCe5IOuPz0Jwn3OlodYyXj5ZqplZ0hve2dq/crfd4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KM3z6Tg0vDE52+tT18XLCUGMfUTGbMZnDBHnNkrywQY=;
 b=GHN3ULUsPdp/nK4Ki9xGM4hODJuNOtYrwNrKdilUyhZsSDtx3oHnH2DLUAhLbthuY/12jiOUIQQHJqimRokOoW6XUgji3ujg81JLdtr/V6BkcrH6LMOerPB/jz8jSh1b5qy+I1gPn7ymJnwOfkAsI1q+jpk9kDm/v3zxZWUJ2j0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from SA0PR12MB4367.namprd12.prod.outlook.com (2603:10b6:806:94::13)
 by DS0PR12MB8200.namprd12.prod.outlook.com (2603:10b6:8:f5::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.31; Mon, 9 Sep
 2024 23:03:34 +0000
Received: from SA0PR12MB4367.namprd12.prod.outlook.com
 ([fe80::dfc2:2c4:b68b:3f76]) by SA0PR12MB4367.namprd12.prod.outlook.com
 ([fe80::dfc2:2c4:b68b:3f76%2]) with mapi id 15.20.7918.024; Mon, 9 Sep 2024
 23:03:34 +0000
Message-ID: <2f593c2b-e666-40fe-842b-60001753c42a@amd.com>
Date: Mon, 9 Sep 2024 17:03:31 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: "Gundlupet Raju, Sandeep" <sandeep.gundlupet-raju@amd.com>
To: yocto@lists.yoctoproject.org
Cc: "Hatle, Mark" <mark.hatle@amd.com>
Subject: devtool support for multiconfig
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0295.namprd03.prod.outlook.com
 (2603:10b6:303:b5::30) To SA0PR12MB4367.namprd12.prod.outlook.com
 (2603:10b6:806:94::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA0PR12MB4367:EE_|DS0PR12MB8200:EE_
X-MS-Office365-Filtering-Correlation-Id: c61bfbd8-fc30-4008-9dee-08dcd123a141
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Q042OWo1UWlmYjB5VmpDYWpLWHpLVGlqc2c1QUU5dERjdUloVVlVNTBKZG9q?=
 =?utf-8?B?UlUxamNwQzFPR0NQWVpTR3A4K2txRDl6STVIdWV5SVlEV2szNjArUlh5TndX?=
 =?utf-8?B?RUJSZ3JUL29IdENxV21vQmJrTzZaRU9GK2wwMmtOVmQ0ZG41Mnk2TmpEQkgr?=
 =?utf-8?B?Qi9zUll5Q0xVZktOajY4eUF5WHZ2cStoZnN3NXRuK0tncUZBNHRFckRCaXBv?=
 =?utf-8?B?S2Q0UkVKUXpFdXNKUytDc3MvYWF3QmJ2b3ZmM3FQdmNoeTRzSVBjZEVCNUc4?=
 =?utf-8?B?UThuRHlaa2FEanBtWHBpc1BxdG1DRC94ZEcyVE5LSWlncVBVSFZEM1dTanNO?=
 =?utf-8?B?S3hLZS83aVZHWmhMRHpvVzhyamxsMTFKYm9nUzRqckNPa0hSc3J6YWN0cEdi?=
 =?utf-8?B?M20ydTRURGd1NklYM3NjcjRvR3lzVUZoYXBLdnF6eXI3N2tpMEFPaEN3OUpC?=
 =?utf-8?B?RzFpM1ptU1lkM3M0NnFLYVEvNnhGZlJjdUdyeUdjNCs1UVNKOE9NU1JjczlZ?=
 =?utf-8?B?dDJqT2M5MzVXbzRKM2tsL3JDeVhBSi90YjFJMjU3MjVzcFNtamhzU2p3dHFG?=
 =?utf-8?B?QTR5d0dYUjdUQlhGVzBNUFJET2YzdnZpQnFCRnFLZmxNUmZSV3pnb3lTdEgx?=
 =?utf-8?B?aGZCZ2xEcFNiT0RDanVRSVN0cHd3clZ2QW5HV0h6YzI2V1VyTkx4NjBpdXJu?=
 =?utf-8?B?NlIwd1BBa1hnRG9SWTBUTUZmcCswTHBVK1o1THFhaGtCeEZVbU9YYy9UbEVF?=
 =?utf-8?B?a2lVUy8xZU1lV0RCU2JYMjlBZ2pzb2FKcTJ1cVJ5MCtobUIrWk1oQk51Mnpo?=
 =?utf-8?B?VzFGTjNKcmQydlNhekRqQyt3QjBSakxla1lSNFE4UEJxdDNYbWNEVk9qS0U5?=
 =?utf-8?B?OHRCWXZsUU1BNG9Yc2dTTFVjMG9HT3N2dlZxS0NyWlV3Q1pnWHBsOUtwU015?=
 =?utf-8?B?djVPUUxmNlI4YW43VDhmb2w3RW9aSGhKbldhNEhnYjlwL1NGR1NNVlFRaXc2?=
 =?utf-8?B?MVhhVk0xbjAweTJ3ckUxWGl6bEtBRERpRlF4cDhNVHVqb1gveVB5UTgycXZ5?=
 =?utf-8?B?ZmVXa04zR3FlSEFDNklIUWxZbDdlNW0zWGNBNWhNTVU5SHRoVWVMajB0VVo5?=
 =?utf-8?B?SEFKS1JRQjFnLysvRGgxMnZxZFFvL3NtT3NhSkZSM1RZYjRYaDU4ejVPcHpt?=
 =?utf-8?B?TEgvR2tnN0dLbVNsQ2ZpaHo5U2ZnZUFSS0FETElyREdoNm9Sd2lLVnZIN2xH?=
 =?utf-8?B?WGxBREVLVFBiVDNST3RMZ2w0cFppWDlKTWVpSFkyTEwrV054SXFVb0hKeStN?=
 =?utf-8?B?K3cwdXdISGl4UTFlam1WU2ZjdUNubDlwSFc2NHBCR1hPZ0ZicnZETUg0NXUx?=
 =?utf-8?B?MFNHa0xHU1ZqVHVKai92dG1uM1Fva01FUCtzOSsrNDJUTlcrYXlHZFcwcEF6?=
 =?utf-8?B?NFFFL2lmZHkyNVBqSmJ1VjdLT0ZPVjZ4MHVQSGNsN2hJY0xkcU1ic1U3ZlE4?=
 =?utf-8?B?Q0orMkIrL3YrMzgrWDhVWDI0RjJ6eWR6Y09oRVJkTUJydmJzQ3BJR0tjK2kx?=
 =?utf-8?B?a3kwQlpDYkt0NDN5b2J1RWpsQzZYb3lEYWZhMUxlUlZFOFFJUUIrS3FBNVNM?=
 =?utf-8?B?ZytxUk9mM1hsVE00R0NibHBUWnVDR0ZQT1VTYXNqN284K2dSUTVCSytzSHps?=
 =?utf-8?B?YXBtN00zRnpJK2drYURxeGVHK1V5WVNLenBPRGU4OExhRnFBc09zUDlWWDFh?=
 =?utf-8?B?R2pCNGdmVW56eXFoYTRLNlNyMmRENFBlZitYSHUxeVhLLzZxMDNYRmJpM3ZK?=
 =?utf-8?B?Vm9kYStRSFJKVkVJcFRZUT09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR12MB4367.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eTgyUGx1NEtVc1JtR3hLRVRpd3FRNlE1T0sxNld5N0ZFampUbjdmbHQ4Ymts?=
 =?utf-8?B?SlVZREtLK0xzODFlQ2RXODY3R3JIYzFqNUpKV2VtZzlmc05CaS9yS1ZqeDZz?=
 =?utf-8?B?ODFxK1BYQUhKakRwYzJCOWZ5cnBNbkQ2dGIyQ0NDN2RVUXZJd0N3eXdXNWNh?=
 =?utf-8?B?b3BZZkxMM2lsUUlIV1h5TStTc1BBY2ZCcU03ei9YNkYwZUkrNUlLYlA3VGZ1?=
 =?utf-8?B?ODBra28wbEF3cnE0SFVBQ2NQU2M0QlBCd2RYY0RaY1N3eVN3NUtnZE1uU0hW?=
 =?utf-8?B?dVhnMmVjb1V2Q282ZnVVNXNiTlVySGdwZW55ZUxsdGFqT1o0b0I4TGpNb0pq?=
 =?utf-8?B?N2ZMNGFGSHdkNk1sVUswaDFNcXBRcE1WNHl2SUdWRnh5eGMwYlN1UHlTMFg3?=
 =?utf-8?B?RDNLZktqcHVKNkVVZmd0dmUzT0FWazBNRFErLy9ab0lJTDZpdnpEUk9ZWFlu?=
 =?utf-8?B?RlJqYk02M0tNYXkwQTg4c092SlNOQVordWFYNWFuaENIcHJhMERrbWJJcDJh?=
 =?utf-8?B?WkN4NUJUa2FYVzhlN1dyaWdORHAycnBHSy8rR0lSNXpYUHhHR3pmbzNhL2c1?=
 =?utf-8?B?aVE3YUU5NVJEN1Nac2Y5NEswZEo2dHFHNmNVemxxVHlWdVBTSmZBVm5QdnIz?=
 =?utf-8?B?SytBVnh0dFZ2Ym14WWFubjNlR2tjckYyM0Mvc1hoa1FZUUg1U0d6Nkx3SmVw?=
 =?utf-8?B?ZjNvMExQWk5NcS8ySDZKaW9jMG4yS3poN2V0V3JQSUlobTBVNzRHd0h2NGRQ?=
 =?utf-8?B?cVp1ZnhDQzNmSUxqbEZzZjV2UFN4a0FKK1JYYno3dmE1VGtyNDIyS1lsWWIx?=
 =?utf-8?B?YStNSFozdzBTMzEyZWFMZlZnZWU3SFVNd0JRRVB6OVdaRzlvWm1RTmg4bXdB?=
 =?utf-8?B?UDduU0hBNFd3anhLVno5dVYxNGN0UmlzSFkzeGtGQ0xLMDkwVGZlTmNnYVdT?=
 =?utf-8?B?MUduWExrR2NhVkp3VEQ3ZTc4U0NCc3d6UGhxbTJoZGxoYi8wSmVuTHhhU1lP?=
 =?utf-8?B?OExCYiswRWZtT0ZBTHNRdjFSYnUwK2tFWW1MTHdmb0h0Wmt4bWtXZlBHRGZ0?=
 =?utf-8?B?VyszSlpydDl4TWZWZFc4RDNvZFZINlE5dWhYdjR4NEVEczhFR3A1ZHJTNTR0?=
 =?utf-8?B?bzZzdWdiYXMzengwbXFmSEg2cENnNGk0dXF5SGNvS3ZQM0YvVzB1a2NuMFRR?=
 =?utf-8?B?NXZTQ3crNTZlSDBqK2g4bXFIZlRpRGFLZnBuMS81UnVjaC9sdlprUlhVSmdQ?=
 =?utf-8?B?NFdWR2F4bHJnaE9KY3lKOFlLREFBWEFlRmxJbFc5UEdTWk8yZ1RyYlM2d0hG?=
 =?utf-8?B?SkFreGw3Zjh5eW1SVkpnQm9LMkd2YTlQb3BtanF0cno1VFlJV0lWRnZSM1ow?=
 =?utf-8?B?YzJHeWtaTEJ1N1dWU1B1VGliTWZMOVRmNUQraFF5MUE2WmJQVERHNTBiRnh4?=
 =?utf-8?B?Z3VucG1oSE9vbHE2LzNhNWZvcE9LSVpGRXIwUzFkdnBXanB3TndCelZnazNi?=
 =?utf-8?B?NUYxamN1YTRLWUZqeGhvSTROYTlncmt2Tmh1WEpIenl0NXcxZ2Q1dmNHSHpM?=
 =?utf-8?B?WDcwNUNKZExmQnd3K3VSZkVGN1Z3UjFkZFlIZzQranRNYmdtQ3FmaFhlNUll?=
 =?utf-8?B?Vi85MlJMb2FNN21wMFZCMVlKcnJTVmozV2NNWnZmczJyaWQ4WjFSbkRjaUkx?=
 =?utf-8?B?dHFTMGNzd0VncGZwb3FKNEhvMElBM0M0ZmdkYUdNQkgzZm9PaTc5ZEx4RG9V?=
 =?utf-8?B?eVhnR25scXdjUVZPeTdDN0pzc01MYTl0Sy9vaXlEbEZrYWNoc2VsUG5IZ1la?=
 =?utf-8?B?VGR0YzZYMkF0cjhyZVdVdWN5Mm8vUGxpU2RPb29ZdGNrSElVRnRNQ3JqcU51?=
 =?utf-8?B?TTgwYzFndlJIbzVlZHVOcWhJN1ZCK0VLb0pLVU1EK2x4djgxeS9kZWkwckxy?=
 =?utf-8?B?MXIvOVRPVklXek56YXdrYzNBQW9wV1pvZ2FoRnZyU0JEb1JncWM0eGE1V09u?=
 =?utf-8?B?dHhNZDA1NGFBRHpQVGlSaTUyNXRhaENhSTJ0K01wb01pa0ZuQ1BvVXdOL29v?=
 =?utf-8?B?SHZQbStjbDROb2I1TTlKVTI2cjFZdldMcE9UbHI5TC9qWmV1d00yemRWOHV1?=
 =?utf-8?Q?G4fTa3rKYxovcM8nM9aOzJO9M?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c61bfbd8-fc30-4008-9dee-08dcd123a141
X-MS-Exchange-CrossTenant-AuthSource: SA0PR12MB4367.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2024 23:03:34.1274
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8jbULyvz0isfQ+m70ANYYQ5mHO5e73D5+5uAughq13gXH6dTWb2QL0NHQWDh1yEFALs3POPPxs8lbaTc63wGmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB8200
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Sep 2024 23:03:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63804

Hi All,

Does devtool supports building multiconfig libraries?

Thanks,

Sandeep


