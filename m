Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A35AECA0FFD
	for <webhook@archiver.kernel.org>; Mon,  1 Sep 2025 11:22:09 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.43])
 by mx.groups.io with SMTP id smtpd.web10.48814.1756725727828009383
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Sep 2025 04:22:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=WRpYAtIn;
 spf=pass (domain: cherry.de, ip: 52.101.70.43, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OwXjp8H9Lie+LkITYcvoAWeAun5NhQxRvgsSk5htity/QfLlEOs2i080Pa6cIB9isSYPAhOBsCtLCDpGa6fgtJyk65WCuIbpR3jRSZnj1heJm8LQHyKsDa6Katiqmobt556aIvYdHFsMwlPzTEJE91AhXljDrB0K+m2vamUTDr7xhJGqMKTZK6HawZqBRdd46QJQOgvvOKQQggLCqEXpZcvy6Vi9Ki+slJtT0RBAzAc8C6BoE7W95e2MtbXTtogJxcu+964eECda3rZlZpb3UVnrHtYuEeHNksapKT2hGFiFqecSygZdWmtdDyRDJIuFqDL2DcEprGvEnfO0pFSq4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kHd7McRUH/5VGV/FmYCXpA2QDFl0zn+DoJWupkXvXB8=;
 b=kbQ8tO+c6QAel9hFh+Khvt+weKNrz02g1cUe/5toQ8Aziv/oWEhzD5SsHFqWQGDQa7k2J6sawdgYmY+1Zd+LNDq23dGUJgcO71rU0ls7+UHMV/VjtsUKHvM7g2XdE1+MrUa1Z0ZhqzjLrG63bXeTxbxzDdEF+IZS4P3aUX4QDTKOkjtLGmtGRAZEDqjD6isAXBnVQg2Vo7U/qE6hqkyGJaxktNcG2/7g8Aq86BPPaOnMIkVVCNC0uTuHK9m1OHh1uvYZd0I/mXjX3hSM+UYFYkw5K9CRBmDD/D3j10PQHwP5/+ra9HuiQaxtycei/tlJY4n7kYF1WKzYo/BTOMMpHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kHd7McRUH/5VGV/FmYCXpA2QDFl0zn+DoJWupkXvXB8=;
 b=WRpYAtInUGm4EQR+KXCvy+cpGoVbdZWXe85wZv3y/9k7fFh/sCzu6T2TCVLXlJ4ev0HcD+JdLMB6JcBBxoS20IqAHM5wCbn9OQcYN5BymcG/ekQSPZLfCjPdLhuE2XuCaqmHx0EdrNJse8R9JUwPrs45ph0DD8pwMRzBGF2VENU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PAXPR04MB9643.eurprd04.prod.outlook.com (2603:10a6:102:241::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.21; Mon, 1 Sep
 2025 11:22:03 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1%5]) with mapi id 15.20.9094.015; Mon, 1 Sep 2025
 11:22:03 +0000
Message-ID: <d2d26a8e-790a-4b74-b3f1-80d60cd894d1@cherry.de>
Date: Mon, 1 Sep 2025 13:22:01 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] GNOME GDM X11
To: yocto@lists.yoctoproject.org, jarno.katajainen@solotop.fi
References: <XsDW.1756294656184641004.K8h1@lists.yoctoproject.org>
 <16397.1756405340910529907@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <16397.1756405340910529907@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0902CA0048.eurprd09.prod.outlook.com
 (2603:10a6:802:1::37) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PAXPR04MB9643:EE_
X-MS-Office365-Filtering-Correlation-Id: 95ab3b6e-326a-4df2-bb0f-08dde949c68a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TTZTWENFNGIyRkMrVURsWkhWQTAyakhhU3AvTkpnMWpKVWZPRG1NMWJidnRP?=
 =?utf-8?B?dDVIcFdBaDRFK1lvMERXSnVmNGZvbUtHUnhwN1I1djVtazNsbnhJOWk0SG1m?=
 =?utf-8?B?TVhqeGF6b3BackhsNlp1ZE5hb3Uva2oyTVlIcEwwNkRVbGVvSytqYmVPcEVC?=
 =?utf-8?B?amtOSGI0b05uWkdjVVI0QnJyRUg1Z1dOMXp0ei9sK2FBNnlVRXFDOElKUlRt?=
 =?utf-8?B?Q2wySVNSMFpGNUc5SmloUE5iQkRoTVBJSEg1Y0pETHVNcXlHY2J6Q2x0ZEtp?=
 =?utf-8?B?SnRINnJycXgyZGliay9rbWRTc0RLSVVsQnkrSngwdWhpYm9JOHFzS0k5MUla?=
 =?utf-8?B?MzBUd0hhb3ZOYjlsa1UxT2pXcHJ4MFFlcUJIQk81R1NLSEJOYWx0SjlYdko2?=
 =?utf-8?B?RkNEYnNvbFdCNEd5aUR2K1o4clk4dGUzd0UyR01oM1hJTytTZ2tRN1FmdEp4?=
 =?utf-8?B?QmNlb1llVm5EWWNIVThaMk92N2cxUWlHM2E5TUUyS3dKdi9GV2V0TkxnaW81?=
 =?utf-8?B?UFQzSGdXb3pWMXFhRUo3RHVMN0ZTeFdEZld3bmZQT3A5TkwzMTNIS3pzUDRI?=
 =?utf-8?B?eEc2eHM3TDExWmUrb3hTdlY2Tm95ZUloQVRQaklydTlDenpLV1RFb284b3VF?=
 =?utf-8?B?Lzk3UlVCQ1pCVVBxZ1RVTlB1TXl2enpxNEZwbi9aTmRCWUJFM2pJYlZLR0cy?=
 =?utf-8?B?bm1mc0RUUk1WWWdMRFdMa09pU2ljOXQ1N09WcnhMMWhnbGcvUU1NMGFwUG02?=
 =?utf-8?B?dUp0eVExcVZXejE1djhmNkRUMmhFa2dwcDloYWhRakNpbjRYdDVvOEwrWUdL?=
 =?utf-8?B?eEFQbGI1cU5CNXpHUGkwQXpFcjYrVUFCalVlMlFXQnViRkhMU1VzdU9EUVpJ?=
 =?utf-8?B?dHNabWk0Tmg4SGRJZ2c1cFRLaGdLV1RaYzF4dXBFM2Fla1RPdGVWTDQ1VHg2?=
 =?utf-8?B?WGhjbThGblhSTXlXRnl5VFFyQTJxRVpvQ1VKaVRIY0RFSWsvNFF5L0xYa3Y5?=
 =?utf-8?B?OTVYU01aVTJ6VStkN3Zpb0V0YTQzYkN5YXlnaGUxRk92ZlBLa1NEeHJDbWpm?=
 =?utf-8?B?QmJ5c2dSSzhpMXJXZkhlVi9zSVlyS250VU1yUEs4QldEOWgvQnZGOW1NZFp3?=
 =?utf-8?B?SDNYU3FmZzI1d1UzOEVsTGdtNjJVblVqMEhlMVk2ak45QXQyZHUzU3FmZkd2?=
 =?utf-8?B?ajBLSkk0a2RKdzZRNStzdFJMRVZWQzdHYTYzMGZBSXlEbnB0ZUFVQUpUNW9N?=
 =?utf-8?B?dk9ES3BhbjN3SUttVGZaTC9sbmUweGNaR0ZBbXpTNFlHeTNyQ1Vvb2Z5RFQ1?=
 =?utf-8?B?QjBIMWVIQmtvUFc3RmwrUzYwYkRCanVGRVBJTndncFZEbGFZa2Y4WkRtbmNa?=
 =?utf-8?B?REl6b1RTY1lZU2ViMWZOc2lBcnJzbTB5TkgxR0FSWWF3NjV0dUxKc0xKaG9K?=
 =?utf-8?B?dDlXZzZNcTBUWUlqS2ZiemlBbnFvc3N5RXBtVkxjTzNvZlJNUmpZY0VTR0xs?=
 =?utf-8?B?TmVpWE4wcjRIbXBGU2ZJaVRxMkJ6OGZWTXRrbjY1WFgwb0hHL2dkZ3RoT25p?=
 =?utf-8?B?aktFbnRtdjVzOTFSWE5NM29QUVYxaFJxanVCa0kyblIvNS93R1JCN2VqOEs0?=
 =?utf-8?B?KzhXUzlXVWlHOUh5S0NaY0VsRElMenR5endWZmdja3ZVdkgxR0E5RVloSitC?=
 =?utf-8?B?Q2t1UC9lR3YwYlNBQW1PVExsRmFxWVZ3enRTaXhFZXVNSjFOd2dqZUZXSHNv?=
 =?utf-8?B?RGFRbEo3NFNEM3NUWFBpQ3hkallrOWxRallBczdWMkZ1VmlmSmY2anE0S09z?=
 =?utf-8?B?ZnZUai9mMEpUcHZCTUYwZitjR1RmaUcybTA2NGJBczUrNjdxM25sbWlaR3V6?=
 =?utf-8?B?MzRUV1lKYzhpczVmNWFwcG5vYTBQVE5vOXNScm1JZi9kSzJ2aFQrT2ZWSlR0?=
 =?utf-8?Q?RqXEZCcNelk=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Q3AvRmlWTFlrYlZXU2swdUJaQ3VTWGlqNXJlUlNDZHJ4bEM3VU5Ea1B3MkUw?=
 =?utf-8?B?ZmcvS296MGExeFRZZEtDVFpxQm5IYlVCTENjWEZzOUNJOEtGaDFrMHc1Q3V2?=
 =?utf-8?B?QnJiRlNIeWFadG1TYmF6cWM5amFMU1dSOTdzMnVyaDZnVjVINmxyamZ5b0h3?=
 =?utf-8?B?dGY4YmlTYzY2bk82Ryt6em84NGxLYTRZN2h1c3lrT0VTZm1jeEZiS3N2alpH?=
 =?utf-8?B?d1Jub2RiZ1NmWS9nYzUvMUZyUjlWRi9qUnpSZFRCY3I3UFFxakc3TjBIMStJ?=
 =?utf-8?B?WjJlVVZZak5IZTV4QnFFaHNUelVHNFVxSlNHQUkxaE5uVVRiQncxdTFDa004?=
 =?utf-8?B?ajd6S1I1cUc1TEFwRHlYVy9yM0ZKZ3JsZllJaWVydy9sTDZaMCs0WVMxTjFM?=
 =?utf-8?B?RGNvUmdYOVE0bDRWKzdwOWFSeWh2M3pSZFRSZDdmanFlWnBsMmVZVWc5cmMy?=
 =?utf-8?B?UGhyNUl2WTZZY1dvSzNnTXlNNkNxc0d5NU1zbUFRdGI2SUhhNE9nSkFjNW00?=
 =?utf-8?B?Z2UwSXVWZTVzSlo2QmtHMjJIVzFMcG45RTBUaVZBd3pwWkQ1aXREbjlOaU5w?=
 =?utf-8?B?S3NXREtSUmFHRG1Xd3lLYlNlbTdKY3FhL0NNV3JTY2pvV1VaSVM1cHVyZ01H?=
 =?utf-8?B?Zlk0Wm1ISDJEbFlLODZMTWovUzd3cTBiWC94emR6N3UzNXoxbUxKd1RmWDk4?=
 =?utf-8?B?U0E2MUE5NXBmeWRsY3NNczRvbVJ4OENXRWY2MXROVTZ5VHk0dWhTZ29QS2FT?=
 =?utf-8?B?UGRER1NnYlNRWmZjWmVUb2ZCLys4Z1o0T0M1bzZhb2xKbGVYbjJyTVorMG1Q?=
 =?utf-8?B?ck50RnppOUlxWmlOVTRJeStrS1lEMEFoOUJyQlJjeGVqOFgyL3F3NVVveG9Z?=
 =?utf-8?B?OUJ2aWJRVjNYSEtnSFNDMUMrS3JYSFdZZ2V6TU9rTkZPR2hKYjNjWHhSVWNs?=
 =?utf-8?B?WUZEcmk4L29VS2JONVk5cnk1ODIwRWJGUVl5WXpzVFY5VkdVTXd0US9VZTBw?=
 =?utf-8?B?S3JRdEtPVmJYUFdMN3JIam9uS0VFYk81NE5ZYjhtRjFySjgyOThCcWM5Y3Az?=
 =?utf-8?B?aEdONmV2eFVJL2FJWGpyUzVqQ05tenVNYVRtSXpmWXMvNlpyYVg2blpRcDBw?=
 =?utf-8?B?UC9HaWJhY1Uxb1U5OWc3aFQyUlZxYnovb2FqaVNSUjU5UlZ4dktQNVN0bmI1?=
 =?utf-8?B?M21zNUFqejVSbWVoWHRuUGJEbEQzdW8yWHhmaGpSVEdJM01jTFJkWUthVXEv?=
 =?utf-8?B?WmFsSnBFM0Y1RCtLc04xL0JGeVlQSUxqeEhvYXBMNlV6Q1N3MmZVcGQySDRq?=
 =?utf-8?B?QmFkVktBSndXWGtnZ0NTcXc4ZzQ0MjE5U0x3UjB6ZTc3YmFZaXFocVVqOFpW?=
 =?utf-8?B?R1pGMGtPNUExb01pRU4za0hyWWgvOHErVURoSTVDUkREMmtQS3lCcW5WcXZE?=
 =?utf-8?B?S3M5end6TE54cVptc3N1YjJHM0NUeEdPTVJxNys5Y0lFSjI4elR5N1UrMnE4?=
 =?utf-8?B?Uk5pTFlTQ3d1S1ZrbkwyZjBHckNQTTRpckw4M3BlNGFWSVNRa2tvNEtHSVNr?=
 =?utf-8?B?Q2FpV3dOT1Vua1NzMU9vN0c2aXcvdUNKenpmNmdEZE1kUlVFQ2E1djllRlNr?=
 =?utf-8?B?WlVtQkVqbHpKdUszbmZha0hOQi8rWVdaQmtKWm54dXlSeWpJZnoyOVVpTWVl?=
 =?utf-8?B?YTVCbFJ1NFR2eFZnZTV5QnNzejNielN0VlUya2dSS1ZNT3lNV0t3cFUrUkt0?=
 =?utf-8?B?QzJ0eXBDeDFSM2l6M3BzZUhiV0pjOTdlMmpBbmtyOVJyZkNLQTZnWmdMdWsv?=
 =?utf-8?B?RHI5TW8xSHJtTURvVGpZMjE2OFVIR3drNEs4UmxEYjY2NzlVQnc5Sm5sNkNL?=
 =?utf-8?B?b0RlSVRFWUNrSUZNUVdpbHJ0UHhhRkgvUnVocHI4bTFpVDFtcmxkd0Rxbnpx?=
 =?utf-8?B?cmRxaGdMRlpZMCs1d1YvRTZZNkJodVpFeFl2bFFwTzRORkFGZFNCRXhEZmtX?=
 =?utf-8?B?bWdRSnhqR2xyVkdtK2NoOFgySWY0WlhsN0FlUmJIVUlVQUtOT2FFMlRGR1NY?=
 =?utf-8?B?MGY4QzR0UXE2TnNTRk5TUDA5RnNNUmVrNm16WjVVSkE5TmozMXBLSWRIRWJk?=
 =?utf-8?B?NDNrOFlOWjFZOG9DeFE4eklsa28zL3dxV3dGd1F2OUtaY216UVBhekNEUVRT?=
 =?utf-8?B?OXc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 95ab3b6e-326a-4df2-bb0f-08dde949c68a
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2025 11:22:03.3669
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xXf7yTjKx0OEolMbKlfSy7FG8vRIktwg25G9aDLNXUB+ww/yH66NuuoeYkZYYAsEbD8/8mqKXv5//TB1QxGMKCQ8SNW4ZvltbrypvP11keo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9643
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Sep 2025 11:22:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65808

Hi Jarno,

On 8/28/25 8:22 PM, Jarno via lists.yoctoproject.org wrote:
> You don't often get email from jarno.katajainen=solotop.fi@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> 
> gdm_%.bbappend wiht EXTRA_OEMESON:append = " -Dgdm-xsession=true" fixed it
> 

Thanks for the feedback.

Could we maybe have this as a PACKAGECONFIG in meta-openembedded recipe 
so that people simply have to select that PACKAGECONFIG to add support 
for it?

Cheers,
Quentin

