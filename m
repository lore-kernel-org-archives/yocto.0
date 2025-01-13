Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA953C02186
	for <webhook@archiver.kernel.org>; Mon, 13 Jan 2025 17:11:57 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.45])
 by mx.groups.io with SMTP id smtpd.web10.22873.1736788313489738464
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jan 2025 09:11:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=cFoggIpT;
 spf=pass (domain: cherry.de, ip: 40.107.20.45, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qQN+JbxsCCq4NiR1j3EZOY5HQRh1BlvgdXgzm2rB7DrFXHJRtgCO29UMt+l/0jk5wPxri7aGSGeQbRQ/j6IqUkkuByJMctYbWit/c1rzXiMdqmN4P7eGSgLiNwxa+qTnd0SNVA+Q1RsZfmH25cx1dbH16+PPRyYfDSnu/2fr28vdgEFGyMg/tl7793me+kO8GnB3yue7o41urSTZpCHQn6aC7V38cUh5lX83+ihIJwO+SaYJ8eTbNsBXvX9yOrh/SsvKFza2X3zDCgoJ3xPLPhmLQVBJKRi/QkafygNU8QFsDutzIL3unbmD95jBb0NScaIPU+bz6BC0G3eS5qV1cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i+Crr+yDN92Rm9RcHFJscuXLWzJscrwvOzQo4gK/lPw=;
 b=UoaTBVftNePsUqLlMOwzUo5I3NPVJpkA2HYTta5tfn9LiI7hBfYhRtNMLoaLlDvFk1W88qfZkCZ1FYEN6VncL7HuKQqWC1Alexiw1azccbdjEY8RVF5rPshn9JD+/W5slNGrc+VtDrPMH2HuI2mS/aojV1maqehhH2b29IK87kq66S2WsIzEVG32r2IP1Y4ooXAWasO3wbHN7EUTjjtxls2goLzMdCkcSTk17uLpMVSgdVh6j09sjCjqzkDdQCCwSWqCDeEE3O7nHpMt+uAQ/KeJS2upV/rCAxA5kLZzrDP4Opq9T40R7t42pc2+McPSAjNx1/YPA4eulfVdr7nTpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i+Crr+yDN92Rm9RcHFJscuXLWzJscrwvOzQo4gK/lPw=;
 b=cFoggIpTdLVXuZViKhYCsywgfRWvh3qHv46hMZlG3jxPY4snWEnhMBt5WAVuW+xDSCGHNK+hcDpiADGfQzUM3zSghNcR59O4Z2DCEr+5dxNfCKpgSy1CmSdSme0sVdALOmnHcjtoXK2GQ59eKkL9otdDNaZSie4MBmvdH94FCOU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by VI1PR04MB6784.eurprd04.prod.outlook.com (2603:10a6:803:13e::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 17:11:49 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%3]) with mapi id 15.20.8335.015; Mon, 13 Jan 2025
 17:11:48 +0000
Message-ID: <085a5e57-faff-4dbc-93d1-fba12ab7552e@cherry.de>
Date: Mon, 13 Jan 2025 18:11:47 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [HELP] Building custom kernel with different GCC version
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com,
 fran.millocs@live.com.ar
References: <PH7P222MB1231FED1441DBB6B8B869A22D00F2@PH7P222MB1231.NAMP222.PROD.OUTLOOK.COM>
 <CANNYZj8ZEX2mwKLQ2Kxo4MOWeLqGVrADUTP-v21R9y_8CUnY6A@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CANNYZj8ZEX2mwKLQ2Kxo4MOWeLqGVrADUTP-v21R9y_8CUnY6A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0176.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::14) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|VI1PR04MB6784:EE_
X-MS-Office365-Filtering-Correlation-Id: 689cba85-47cb-4e54-0480-08dd33f55da5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eXdCVHJhUTRubTFpSm9Jc283MmI0VFlpWE1aVTFtWGVXVDFlOUtSaWppQ1Rq?=
 =?utf-8?B?VjZiTUhwQ1dQN2pRemI3b3ozY0NCQUJhRVNoM0o0US90VUxEMm03aCtVeFBV?=
 =?utf-8?B?ZXZFMUQyWUNEZmNrMzY1dGN4TXRlNmZqTFRvU29wNTd6eVpaUWM2dnlQbkcy?=
 =?utf-8?B?RzF4cmNYZGJ3dlRsMGc3bzRoSlk5SkxuUTV3SGJEL24zMUNLVkRKWGNMVENU?=
 =?utf-8?B?Y3paM1pmT1NuRmE5a3lYMSttOFRJUmZhVFVSUkpWUWZTblVuRmtiZUxnWlM5?=
 =?utf-8?B?S3lCWWV6YXFVazI4YVM5eWZBMWN6YVNvUlZrMEVRZjBlRDA0TXZEY0FxTVEz?=
 =?utf-8?B?aVo0ekdlbDFLeEFmTG1Nems0NWFHdmxIQlE3bmxyU2UwZEdRWXd4Z1VtL3Jp?=
 =?utf-8?B?UFVINGJQU2I4Rkh6a0J3NWlheGF2UnBXQUFiWTF5OTNybSt1SFNVdE9rRThm?=
 =?utf-8?B?dmpHU2F0aXMyOW9zNXR0YUZ3UWF0R2Fvc2wySURFcThHOHhSTXBxZWRpV2RB?=
 =?utf-8?B?dEFhbDVLZXBJcUxIQ3lpWE0ycTdHa3U3Yk1TUVlnQVdpdjhFQ0MyZkd4eGNx?=
 =?utf-8?B?WHpOYXJKeHNUQ1NGM1VRQklLQytuWDdBM21QWXBWc2xLYjhkY2srSTZjRUhi?=
 =?utf-8?B?NjA5MFhyb1FQU0pJOHZJRVVCaThwVnVieHNYYVZGY3RaREU1WGFTa2dlbzBU?=
 =?utf-8?B?Q0NQV1Jtc0VCRHZHMkw3QlZoZjZjK0hwb2kzNDliWXNWd3lHVGd4bXNRNEVH?=
 =?utf-8?B?WmhFb2sybk5Tcnc5ZWtXRUg5aFF4cXpyK0hOTGRBZHdyRExiNm9aK2lCNVVh?=
 =?utf-8?B?dWZkZGsyNG95S2xVTkhiRVhvRzFKMmwxME42RnFRVlpkOWw2UWZkVVE5Z0hG?=
 =?utf-8?B?LzIwekFDbG9Qa2NodkRiWXlqN3M2YUZmbXdHaW5aUHhpS0JGd0twZnhFMjdW?=
 =?utf-8?B?eEVCRmxpVm45ZCtkYUljZ3VMdStONXBzS1h2MnA2RkdGdnNBYTlwbG94NGhM?=
 =?utf-8?B?d1U1bEpDREYzK1lJOXU3ZStLdU1VUVAwcElMSFh0RTk5cW41TEJxVUlWQkhx?=
 =?utf-8?B?S3k0VHllNy9TK3pNcnlnWVVaempiZExCYWw4TDlNWnUyRHVkRlJiSVlyR2JL?=
 =?utf-8?B?QWN0MGpjeE5FRkZ1Z1Myb2gydUlqKyt2TGwwVWoyaXdXNXJTZk5yT2E2Q2g0?=
 =?utf-8?B?WDJJaWx5QXkxZUxOVi85TmMxTFpQaDAxby9yMHZOb2pYV05mWmQ4YnNteVZS?=
 =?utf-8?B?OG5TRW5DL0NHMk1FSjZWcHR6THhtcmNzVFhRVmkxN0xTaEw1Y2FjUUhwOHdN?=
 =?utf-8?B?TnllNjJQdTZ5N1ZNZUF4WVNJUzc4R00rSUNEU3NjSW5WWGkxL1VCOWFzYzlm?=
 =?utf-8?B?eWtvaVdLVnV6R0tYOUdtYklsS3prSUowU2NDNTRpeGQ5OHdCY3RKbzhzZUxl?=
 =?utf-8?B?Q3RsODhkanM5eUFYdTNjcmhScmk4OFpNR2ludjBvMzExTTRrS0o5THZla215?=
 =?utf-8?B?dnJ2VnUzY2Q0N3ZTUllGV1c0K1NQL3NhdlZXcVR1T0pBQkRPbGw3elBEQW9k?=
 =?utf-8?B?VTcvbnkxSFhzS284Q2xRN01ZY1cwWjg3R09mMk5IUGRSeDMyVjJwbjk2aWww?=
 =?utf-8?B?S1doNFg3RlRvM2V5STY0M0J0UTdLdEw3NFRwU1ZRUFF4T0pCb1lzUjZwTjV3?=
 =?utf-8?B?cjVLcUNVZWNDNjlSb2xzbkFhaHNnemhCbUZMTWlKZ1cxWHJ4ZVRyRVJXMXZ5?=
 =?utf-8?B?L3FGMHp6L1ZjRnB6MDRkOFl6RmZMRlNSUTBvM2JnWG44VEtoMHc0L2YxV0Jv?=
 =?utf-8?B?S0NjNkRheStkZUxOa3pMaFdkR255SGVzdWNQbUR1U1JHTE1aV3VzWmgyS2Qy?=
 =?utf-8?Q?QPDey/LH1D4Kb?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RlJWR0h6YStzZGplM0dxQmVUZnN6R0Z6ZlRMQUhtQWswUVJYZ2JYZzNiVkUw?=
 =?utf-8?B?RXpka1dxZnJDeVVDak1Od25zK1VaSHFLcVVaN204MTBSR1lGWDNEUkZodlBs?=
 =?utf-8?B?MkNvaWVOYWE2MGJlUThmbkcwSUgxMU9vV0ZySjB3QS9wZVk0SXBhZ1FrVis2?=
 =?utf-8?B?aG54Vk9WSzZGTFRHMWQ2Vk9sMkhLYXlvNzBSM2tUWTh5T1pSYkpsaDAyTnZw?=
 =?utf-8?B?MjI1dk5iMk02amcxRTlXU0U3RXNMUm9BVWxRLzJvMjYxQ3g1OEVEOTg5elhv?=
 =?utf-8?B?RUo4ZXdEcDN1bUxCUWt1U0xCTTg4YjJ2K1RPaDg2akRQczFJM25pNHRySmVt?=
 =?utf-8?B?d0s1WS9CTGZRSEJQZ0NyNVlxSXlPSTRNbnIwcTZ3MDU1SXI3TEdDdlYvSjEy?=
 =?utf-8?B?djExekNBVHRCVVFZVTJ5TDhhZFRLYXdzbVowWGpWdm1hMVUrbldkUktBSjJs?=
 =?utf-8?B?MmtBREtJQXVmL09DbEZWWXdnTUJjRisyQ3Q2K1Y2b1U4QTdreVVrN1lXU0ZP?=
 =?utf-8?B?MFFLOFZabisvSzJUMW0wNU1ONUxLTWR6WHRNQzhpL3o3RGlSQ3QzUGMvVklF?=
 =?utf-8?B?NndFdW9Cd0MyeXVyUXMwL1d3UVluM3JVRmMzVjFsdTB6TDVydGNjTlZWQ2sw?=
 =?utf-8?B?NGRyNm55WEdpUFYrcWFYZkRKLzVEdjdpbjFLN2RWemIxYTlIRWZoR1lLYS9B?=
 =?utf-8?B?dHJrMnlRVFZxVmVaYlVySkVvLys0eHNtSGNEcUp0dUx4eWViK1BaK1h2dlIy?=
 =?utf-8?B?YWJ0eUJJazNkZ1ozd2w1REFJOFFqOTM3TzFxczc4dVZNU1gxZkl5VmJKRjVi?=
 =?utf-8?B?U1IxSmdqSWtTZHR1Z0hPaS9rL3kwelJmNENaS0J5eDMzMWZ3OE1oQXFwczlU?=
 =?utf-8?B?a3h2VVFXUHdzcXBzUlcreWt6d01seHdZSmFBbmVxeW1ORDB1bEJnS3h5TC9p?=
 =?utf-8?B?aSswWnFCTDFGS3ErV0d2NlR2ckZnRmtzWjZSc1RpN0xhVGJLd3ZLbzlHdElM?=
 =?utf-8?B?Vk82eWQ3Y1I0bC8zNDZKbWVHZ2FhOWhIS2NlZ1RUU1l2UUpubXVINWs5VEl3?=
 =?utf-8?B?NlppNWVHbDNJalBGQmJFOC9UOE9YMXJoOW1yTlBjQUk4STQ3R05lK0RObm1t?=
 =?utf-8?B?a0NqaTJvYk44TmhlcC9JcDNEeVIzcWtscEVyR1ZadUVoTmcvQnZOSzE1ekNH?=
 =?utf-8?B?dlBpTHN3VHJPZFl2Y0YzMlZaUkZWZ3ZzcUFNR1MzS1pZaldtbkFPbDRiOHpU?=
 =?utf-8?B?V0VPM2xBRnh5VHZ0SjlMT3IvM3AyaHp5K2xWYTA2akJlRE5zazZSNU5xa0Ex?=
 =?utf-8?B?aiswdnluZlpPd29SVGJORmZxTldNOUVoUkQ1ZFBZcEpXVW9tdXJUeURyVTBM?=
 =?utf-8?B?Y3pzVXEvVU03WkVzUVJzWFRaaVNRNFM1a3NBUk1vZnZFeGJKVVBHTmVrb2Rx?=
 =?utf-8?B?aCtsekpJdzR1TXVNSHJMQis5Sjl6VzZIYUN0V1FCUnR1TmFoZzVaTlJMYW51?=
 =?utf-8?B?bGh2ZHR5eENUSkJNcU03bTQ5ejVGK0h6WUcyV0svbmtseVFWcWdPMzkvaG1Y?=
 =?utf-8?B?MGZ1aElROFlsNFlvdkl6c1RJZkJ2akRyRjd4S3htTnNUYXJsSzlTamIzWUlq?=
 =?utf-8?B?aGlIMTREMXJjd1FkTjlkeDJZUVlnUzhnbXB4WEZNeEdRdDlYVWo5Ti9wRlVN?=
 =?utf-8?B?bjlPV1g5Rm5tTjk0UU1TWENWTnptUXZzQUpLUlpxVmxaZkRva1F1ZlJmWGlr?=
 =?utf-8?B?WWpvZ0kxd2hsaTdxODNlNFRtUVNGbGN2b0dEZk94MFhrUktFbnp6MU5EaHNh?=
 =?utf-8?B?NHJQUmVrQ1NZTlBveGY1TnVRNzNDNW94V0M0aGFmNHBVekpCSU54OEtCVnBo?=
 =?utf-8?B?UWVwV1NaczRSM3VMaERTOGxrUnpKbHN3TXQrWjgvVm8rR2RlWGlIRVRyNHZW?=
 =?utf-8?B?b2lLSlNWUWFhNEN0RHZLWWZ3ZE5CdnJlWUJVMWFyY3habXZRVU1zYjNPVU5O?=
 =?utf-8?B?V25rcjRVRTVUL1pqYVRBZ2hnUXhsb3FIVjlnMjZWeGNFakNkMHBEVVBhcTZV?=
 =?utf-8?B?VE1Qd1hWZ003aDRWYXhxaCtMcEtOQXFpcVMrQjIwdmhRQzRBbDd4cGYwck1j?=
 =?utf-8?B?L2Y1dm9uMjNhZWMrYTl3dzA4OU9SMmJhZGNtYUkrL0dpdEZWWTBwNkQ2a3k3?=
 =?utf-8?B?VFE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 689cba85-47cb-4e54-0480-08dd33f55da5
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 17:11:48.9207
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OyBrg2nxHEP7oHdfQHJ80Q7FXZ/pzJxYn6hqhIm7uL9CEq1d8Ka8CmEEqmRY6ENx0j2gCvdiJVWr3pzDyzRWjSTy+WUz1bdmhJUPR+hyZ3I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6784
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Jan 2025 17:11:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64537

Hi Alex, Frank,

On 12/30/24 12:32 PM, Alexander Kanavin via lists.yoctoproject.org wrote:
> On Sat, 28 Dec 2024 at 19:38, franco ariel via lists.yoctoproject.org
> <fran.millocs=live.com.ar@lists.yoctoproject.org> wrote:
>> I am currently working on a custom project using the meta-meson layer for the scarthgap platform. The project requires building a custom Linux kernel that explicitly depends on GCC 12.x. However, the meta-meson layer (and the associated Yocto environment) defaults to GCC 13.x for both the toolchain and the kernel build.
>> I would like to configure the build system to use GCC 12.x exclusively for building the kernel, while keeping GCC 13.x for all other components in the environment. Is there any way to do this?
> 
> The quick answer is no.
> 
> I'm curious to know what specifically requires gcc 12.x, and not any
> other version?
> 

I assume an outdated vendor kernel.

Just backport patches from upstream that fixed build issues with GCC 13, 
it'll probably be much easier (and maybe consider upgrading to a newer 
kernel (or at least newer stable kernel)) than trying to figure out how 
to build the kernel with one GCC and the rest of the system with another 
one.

Cheers,
Quentin

