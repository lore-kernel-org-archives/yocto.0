Return-Path: <tom.hochstein@oss.nxp.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CBEFCD3423
	for <webhook@archiver.kernel.org>; Sat,  2 May 2026 16:24:05 +0000 (UTC)
Received: from DU2PR03CU002.outbound.protection.outlook.com (DU2PR03CU002.outbound.protection.outlook.com [52.101.65.27])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.9353.1777739040545633418
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 May 2026 09:24:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=HotfUNif;
 spf=pass (domain: oss.nxp.com, ip: 52.101.65.27, mailfrom: tom.hochstein@oss.nxp.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=saojZycMVbyOEDGo4aArCIYcGtA9rRPNR5jjq+pGxxWyayOLK5Ybrk4aUBKl1K08DlUYxZCpGCA0Bmno75eqH1+K5XYY6tNRdgjA9Vn1gD0b11LmMkDph/RhAciNO7BJlA9czUDezNvg3H3sPeEdKd9rgHjDkCGWiINYAbXc+4BLi0P2+2dDeQDHi969S+yraPhDoMd3+U2C3yq78aBZNAPUOwRWFRqU4qQoeGA6eApaJ1qf0Lb7eFOLefonrV6L7czBmfAJTsjhollwmIojIi1f856AYsffnIb7aF4lHIrA+QZksr8UdiFc6/lFjNqNn4k9aB7M27SKwSjUkx4n5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GoGiVT3/wteAu38MxiNPdDxHn4H/RtSLyyiq6Vk2Ut4=;
 b=UwnKu+BVu8yfnB7zH7IxdBI8BTRVRtWRX5ws+9TVaXDSgAudfLN1X3x6DwNojPWTZbstvVaaUp/fNuUvn4G+B2Kj+VxgCCqLYRmoA5TUit36oT2FC2Tcm0ukJOWFJRcEBz9lfsmW/vZJQutjAS4odyEMSP22Ukf/9abTbaJzLAe9pXWlVfJevSb+3sQulK47xMqB18lgqsqcBaXqpEdllylutyYMTgSbOXSNqGTd8LpvvMb9WaeM9h5dtivYbgDUdaX2zsj/SN63x/3N9i4MrPDVc390Rm8skwsw6kmRVqyCByxAAuwc1xl7jmEARI8UvP70ewreQYVCH9vEkQS9lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GoGiVT3/wteAu38MxiNPdDxHn4H/RtSLyyiq6Vk2Ut4=;
 b=HotfUNif/UUM4Q68MfABS9FLla2vat01j6XChttteYOxAJR8gFvdeNXIbu2OHwq+MWciL4ICDBoP6UQOh3CsXrT3oJ3a3S3Yd4bcbVsMk1ItTx+G6LxexMjRJqmmDQIuWQ87rWQ7hfLt4oJySCXI/Qf0h+CNTS3e3fwuDe0Jd1OOcpuI4KzI1W3xLhh3Nc1Y+Hx+ixEZOeG4vSgjVup0Q+sNlmuhNW2xbsMQJuK15HJhnjtjWDQF5V983ju5lh7AyXIA7ImcQaV/A9/ZiNhrxPAOn0Tuqn/TwZRpkEPQoq4ffTM6t0X1wnNcxHaGr0c3hIT2whfRtjInZ6sbvfyLhg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from AM0PR04MB11965.eurprd04.prod.outlook.com
 (2603:10a6:20b:700::20) by DUZPR04MB9983.eurprd04.prod.outlook.com
 (2603:10a6:10:4d9::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.23; Sat, 2 May
 2026 16:23:54 +0000
Received: from AM0PR04MB11965.eurprd04.prod.outlook.com
 ([fe80::1afc:70db:92fb:7f2]) by AM0PR04MB11965.eurprd04.prod.outlook.com
 ([fe80::1afc:70db:92fb:7f2%4]) with mapi id 15.20.9870.023; Sat, 2 May 2026
 16:23:53 +0000
Content-Type: multipart/alternative;
 boundary="------------U8YjwzuS3yYJc00BASkuaBgW"
Message-ID: <21dd98ea-10fb-43cf-8717-0a9aa5f69776@oss.nxp.com>
Date: Sat, 2 May 2026 11:23:29 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.0.rc1)
To: yocto@lists.yoctoproject.org, peter.kjellerstedt@axis.com,
 "ycnakajsph@gmail.com" <ycnakajsph@gmail.com>,
 "vlad.pruteanu@p3-group.com" <vlad.pruteanu@p3-group.com>
Cc: "danorris@gmail.com" <danorris@gmail.com>,
 "yann.cardaillac@balena.io" <yann.cardaillac@balena.io>
References: <0101019dbe9ab5c7-d6cb6dd9-d52a-4c28-8ce2-236bee8e31ae-000000@us-west-2.amazonses.com>
 <41bc2926a6e99fa9e1f24d4bf7df486a6f489adf.camel@linuxfoundation.org>
 <CAC3TgALNd8yFbHO7vqnSwYPggczp1gmMrAgCoXoWbW_i6FVs9w@mail.gmail.com>
 <53c2c6f263b874cbf8382fa7d5993aac51835cbd.camel@linuxfoundation.org>
 <1637251.1777280730612486891@lists.yoctoproject.org>
 <1665690.1777326933976571713@lists.yoctoproject.org>
 <1670816.1777359973403332268@lists.yoctoproject.org>
 <CAC3TgAJg-z_DsZUZjV8pkKsW4AKAkgQF4tPO7eJU3mf0fj_zYg@mail.gmail.com>
 <DB5PR02MB102134C2502801169544F1C99EF372@DB5PR02MB10213.eurprd02.prod.outlook.com>
Content-Language: en-US
From: Tom Hochstein <tom.hochstein@oss.nxp.com>
In-Reply-To: <DB5PR02MB102134C2502801169544F1C99EF372@DB5PR02MB10213.eurprd02.prod.outlook.com>
X-ClientProxiedBy: PH7P221CA0023.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:510:32a::34) To AM0PR04MB11965.eurprd04.prod.outlook.com
 (2603:10a6:20b:700::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB11965:EE_|DUZPR04MB9983:EE_
X-MS-Office365-Filtering-Correlation-Id: 0aaf7cbc-61b8-4008-77f6-08dea86733a0
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|4022899009|366016|376014|19092799006|1800799024|13003099007|8096899003|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	1NfW4sH9kBa24Sw3b9RqAHrIlrnOZFpSkTnL7y+T+254hXGlXNmBr+35yESZLPv56fQVCUw1swBsqtJ5Yk6XoPaVX1u3CHW8YEqZYSWu9zyZJXBOYEaaQlNikISZ/xviXtKpNdX88QLwBeWj3U+wZeRvUQ6lmh1FgEsv86IRVuzB6oueJt0OljtrEpW0Nqi+/VdVZWaY6ga1s96KbNzsb3ZRN6ANb9N9fiX/LsCt5S8rhRj/m+spkbrlK157UU5ngQuwrWnYcD/zLYj1Ui3keq9r4GJT8kE0EPVTW03HXz2pa1Gdt+2dKEJdLit89MRzY5WmMDtDtLouVs537dg0ROUuxFVG8RXTgpmI/v62pUGerhAwiHZQhbGFeVLYveqJYVCEfeL+mp7Vb/jsyD0ul/cJBcIWqZOb/PftDFflRhM5KDx+EgY9A9wAsPOGM4r/e2T+lz/pNXExsvTvCgK1IUvea+D5NyXEhlFOJzi1jvqURy4jKqkwlow27998qovwJS0XuuglU4s49rPM8W1MlyHzQmSYnC3yolyZZamjrFqt6z1umvFHVbUOI+7qXXO0kG/H+FcXlmeorps50XxcjogXBMIV61pGXLcllFvb8J8YGUenOvYS7wQwGhJdBBMilX/T3thcimS0LG1vLP7sBw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB11965.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(366016)(376014)(19092799006)(1800799024)(13003099007)(8096899003)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QkVzYVNXZk96OU1MUlJWb2s1NmV3TUphWXFnRXd1TGNCWHZZVi9UeGY2RDdx?=
 =?utf-8?B?dXJzUlN0bmFjM0cwZnIzSklscVg3amE0MkwwbHdVelpZcGFOdnpwaHN5bEQ2?=
 =?utf-8?B?cDZ0SWNzREd1ekdKbzlUSCs2c1BxcU01Uk9DRU5PNWIyclROQnlDblRzREJ6?=
 =?utf-8?B?cWhWNHZGYWNrc0c1UzM1RUY0NFN5WmZMVkJxRlZkR2NWLzF4RFZvb3JKMUc1?=
 =?utf-8?B?eXhpYXJoYS9vZUhWRlBzMi81U0FBSmpHUm9EV1FCakQ2M3ZPU2NuNEZYZHZR?=
 =?utf-8?B?TTZBeVFlYzU1V3N2enhmcXA5SExVSGxNUmY2aWc3d1pvTmkwWHIvNkJLcW5D?=
 =?utf-8?B?NWxReC9udlZDREJxRFUySnk5eUZCaG9QYmNBd2l3dTdKV2JjQWR4M2FQSk1T?=
 =?utf-8?B?ZDJzQlBuTWlpdlFwWS96WXFQZ2ZZNVNWbzM1Vys1SEw4Q3N6YmsxRUZGci9m?=
 =?utf-8?B?S2EwcVpEWDFlSzljY2R4OVI0TVN5Q2lCbjFOWEFyU2VSNmtxTkxoMVREK3VK?=
 =?utf-8?B?Wktyd1ArQXNFK2NQN09FQjJPNnBLd3B1b0dmcDZIbDNGV1pQSWRLcHFHNlhQ?=
 =?utf-8?B?a0ZOSlJGYStkcnFhWHIyZmprNzVVMGs4M3ZnM0NLNEN3a2g1eGhPNWY0dGky?=
 =?utf-8?B?Y0loSEdQV1AxN1VPVElwY0ZPd3cxenlnSUUzdzd2MDdOd3NOMStGNjA2L0Jh?=
 =?utf-8?B?cWs2d0pabVh3MGdNMS9YZ2o3aFZMSk1XSXhMclZGN3IyaDJTZ3lhWEVUWGZS?=
 =?utf-8?B?R2U4QVpkaHg3eC8vUGhNTnBuMDM1VVJraWtFQlEzdlZvQ0JWSHlsN3psdmdV?=
 =?utf-8?B?U1lYNnVNLzhiYmN5bkROdUZ2ZFFYbmZ4bnhtNXM2ckVPR29BT2pWNk9sY2Uv?=
 =?utf-8?B?OU5DV3ZlWng2K05XY0IzSVV6UGpkbXVTOURoQXBrK2luQjlMMEJZRVhvS1ds?=
 =?utf-8?B?aC8yZ2gyQzRzaklISWZlSWxHbERRa0pEc3lIWUhWMzZsblNzU1pvVytwckFK?=
 =?utf-8?B?NE9yblpkOUZOd0R2T09jVVdoTlJmdHJBQjVsSStBRjBZMFo0M2tkZjF6UlVx?=
 =?utf-8?B?WjFyNWJ3eE4vQS9NRlkydlFJdVBrNDVCeVdELytEQmlmalZMbnhlWmZzdTdw?=
 =?utf-8?B?eGhKa1lBUkovdkt5TzdDUUUxTDBJQmgwN1BBSEc2aDZCa3ZidkZZY1lqNm52?=
 =?utf-8?B?NFdDZjl4THJLVkFGNEZxak52QzhZU3V1cloxV2VDMHV2dGFxN3ZKTndpNXMw?=
 =?utf-8?B?dDlIQlIvZ0d2ckN6eDcxL3JNeTZ2SUtodnlHWm9Pd1JJbDlnRERMYVVqN21U?=
 =?utf-8?B?amFVQm92RU5ua3JhN3kyWTNrMExQUDZ5RExYNk1yOFZSUDI1THRJZGZjVGVS?=
 =?utf-8?B?VHM2UDZpWDRjdmN2WVZFc1VpQW1Wc25XVjNvSU5YY3ZLYnVJMTM3Y1I4U0dY?=
 =?utf-8?B?QmRDaFdRMFV3emlvRU96d1AvV25oRzBnWmxtNG5NMU1QaHBJZzFHakU4S2Uw?=
 =?utf-8?B?cnJjNXliRlVMTzVlUjBYYlRmWmpmUnRHT2NMU2U0MGpoTXRxdFNGTkJEdnhH?=
 =?utf-8?B?Z3hQSzNjNXhGOGlIeTdhc1dRZ2JMKzdBWFprNVJkd0kvandoMTZQS0Z3ME1D?=
 =?utf-8?B?SDhlWjNLRmNGQ09jQnlsVHpQMGhIQjk5L3luL01Id3RZazZ1RWJWUENlTjFp?=
 =?utf-8?B?dytlMjEvTlJTNVBzbUNpdkpaTUErSWNka1dteTZCYnpieGhIN3lhaWkrWGNM?=
 =?utf-8?B?ek5XN29CUWg3L25tVENadlZ2SU12OUNkT3N1STA1cVVscmc1aTZhMFhtc1M5?=
 =?utf-8?B?UFZTM3RENlByUGJ4RkFtNFRsSzJtRU9zT0hDS0N6dUpDRkhieURrMzE1RjFG?=
 =?utf-8?B?WVNsZzFxeVEyZEcrb3ZxNUx3cGVvQkc5TkQwQWFtcGs3YU1GVzhNRjVJMWt4?=
 =?utf-8?B?eVdnd0ptWWQ2RStpWWhwL0h0WVpJaTdLQUExQWNFa2NXUzhGTnNjejN3YVpJ?=
 =?utf-8?B?OG1Fakl6R1dJUjM0SUZNR2owbEh2aEdBN1h6djFQNEJjVXhDWEl3RDFzZnlp?=
 =?utf-8?B?b3dKT2xSQXdqQUp0REd0WkpmNmhzTzIxaUN3SXNlcUNzSnlCTSttRFQrVFdj?=
 =?utf-8?B?VWgyRFhUZ09oMXRpdW0wRUN4MzlJZUVLdzlFeklubWFWN1dta0VOelVuMFdZ?=
 =?utf-8?B?Y3hraWpvYmcwamNNNWI5dmVhQVkwSFNuTHpBY3dnMWI2eTRQL0NlMklBK25P?=
 =?utf-8?B?cGN3WHlpVnpnbVRvZkU0alpXdU14RzNNcVJyL1JCbEtTMHMxUVJtdUluYkZL?=
 =?utf-8?B?YkR2RHR5VHhHd21GZlFmaWV6ZmIveVh0NzVIWVRUejBGYVRVdFR2UT09?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aaf7cbc-61b8-4008-77f6-08dea86733a0
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB11965.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2026 16:23:53.8584
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qaTB2B5fSb47+N4sId6KpY/Mz+MoF+6WZRVTT2RRip4Tb0mYMMYvFNF1+yroQsTbvhCBReXWnl5FRvTPw2xldw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DUZPR04MB9983
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 02 May 2026 16:24:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66466

--------------U8YjwzuS3yYJc00BASkuaBgW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Will the fix be backported to Whinlatter?

Tom

On 4/28/2026 11:57 AM, Peter Kjellerstedt via lists.yoctoproject.org wrote:
>
> It has been backported to both the 2.0 branch (kirkstone) and the 2.8 
> branch (scarthgap) now.
>
> //Peter
>
> *From:*yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On 
> Behalf Of *Yann CARDAILLAC via lists.yoctoproject.org
> *Sent:* den 28 april 2026 13:30
> *To:* yocto@lists.yoctoproject.org; vlad.pruteanu@p3-group.com
> *Cc:* danorris@gmail.com; yann.cardaillac@balena.io
> *Subject:* Re: [yocto] [qa-build-notification] QA notification for 
> completed autobuilder build (yocto-6.0.rc1)
>
>
> 	
>
> You don't often get email from 
> ycnakajsph=gmail.com@lists.yoctoproject.org. Learn why this is 
> important <https://aka.ms/LearnAboutSenderIdentification>
>
> 	
>
> Hi guys,
>
> Thanks for the patch Vlad, I see it was integrated in bitbake's master 
> branch, do you have any idea when we would be able to have it 
> in Scarthgap or Kirkstone?
>
> Can we do something to help integrate the patch?
>
> Regards,
>
>
> Yann CARDAILLAC,
>
> --------------------------------------------------------------------------------------------------------------------
>
> On Tue, Apr 28, 2026 at 9:06 AM vlad.pruteanu via 
> lists.yoctoproject.org <http://lists.yoctoproject.org> 
> <vlad.pruteanu=p3-group.com@lists.yoctoproject.org> wrote:
>
>     Hi,
>
>     This patch solves the issue
>     fetch2/crate: use CDN for fetching crates
>     <https://patchwork.yoctoproject.org/project/bitbake/patch/20260427135122.1504143-2-johanam@axis.com/>
>
>     Best regards,
>     Vlad Pruteanu
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66455):https://lists.yoctoproject.org/g/yocto/message/66455
> Mute This Topic:https://lists.yoctoproject.org/mt/118986370/3617670
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub [tom.hochstein@oss.nxp.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
--------------U8YjwzuS3yYJc00BASkuaBgW
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <p>Will the fix be backported to Whinlatter?</p>
    <p>Tom</p>
    <div class=3D"moz-cite-prefix">On 4/28/2026 11:57 AM, Peter
      Kjellerstedt via lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:DB5PR02MB102134C2502801169544F1C9=
9EF372@DB5PR02MB10213.eurprd02.prod.outlook.com">
     =20
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered mediu=
m)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Aptos;}@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#943634;
	font-weight:normal;
	font-style:normal;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#943634;mso-fareast-lan=
guage:EN-US">It
            has been backported to both the 2.0 branch (kirkstone) and
            the 2.8 branch (scarthgap) now.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#943634;mso-fareast-lan=
guage:EN-US"><o:p>&nbsp;</o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#943634;mso-fareast-lan=
guage:EN-US">//Peter<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#943634;mso-fareast-lan=
guage:EN-US"><o:p>&nbsp;</o:p></span></p>
        <div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm =
0cm 0cm 4.0pt">
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;paddin=
g:3.0pt 0cm 0cm 0cm">
              <p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-=
size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">From:</span></b><sp=
an lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;=
,sans-serif">
                  <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yoct=
o@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a>
                  <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:yocto@l=
ists.yoctoproject.org">&lt;yocto@lists.yoctoproject.org&gt;</a>
                  <b>On Behalf Of </b>Yann CARDAILLAC via
                  lists.yoctoproject.org<br>
                  <b>Sent:</b> den 28 april 2026 13:30<br>
                  <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a>;
                  <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:vlad=
.pruteanu@p3-group.com">vlad.pruteanu@p3-group.com</a><br>
                  <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:danorris@gmail.com">danorris@gmail.com</a>;
                  <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yann=
.cardaillac@balena.io">yann.cardaillac@balena.io</a><br>
                  <b>Subject:</b> Re: [yocto] [qa-build-notification] QA
                  notification for completed autobuilder build
                  (yocto-6.0.rc1)<o:p></o:p></span></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          <table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" ce=
llpadding=3D"0" align=3D"left" width=3D"100%" style=3D"width:100.0%">
            <tbody>
              <tr>
                <td width=3D"0" style=3D"width:.3pt;background:#A6A6A6;padd=
ing:5.25pt 1.5pt 5.25pt 1.5pt"><br>
                </td>
                <td width=3D"100%" style=3D"width:100.0%;background:#EAEAEA=
;padding:5.25pt 3.75pt 5.25pt 11.25pt;aspect-ratio: revert !important;backg=
round:revert !important;block-size: revert !important;border:revert !import=
ant;bottom: revert !important;color:revert !important;color-scheme: revert =
!important;content-visibility: revert !important;cursor:revert !important;d=
irection:revert !important;display:revert !important;font-size:revert !impo=
rtant;height:revert !important;hyphens: revert !important;letter-spacing:re=
vert !important;line-height:revert !important;margin:revert !important;opac=
ity: revert !important;order: revert !important;outline: revert !important;=
overflow:revert !important;padding:revert !important;position:revert !impor=
tant;resize: revert !important;rotate: revert !important;scale: revert !imp=
ortant;tab-size: revert !important;table-layout:revert !important;text-alig=
n:revert !important;text-indent:revert !important;text-orientation: revert =
!important;text-overflow: revert !important;text-shadow:revert !important;t=
ext-transform:revert !important;text-wrap: revert !important;top:revert !im=
portant;transition: revert !important;user-select: revert !important;vertic=
al-align:revert !important;visibility:revert !important;white-space:revert =
!important;width:revert !important;word-break:revert !important;word-spacin=
g:revert !important;writing-mode:revert !important;zoom: revert !important"=
>
                  <div>
                    <p class=3D"MsoNormal" style=3D"mso-element:frame;mso-e=
lement-frame-hspace:2.25pt;mso-element-wrap:around;mso-element-anchor-verti=
cal:paragraph;mso-element-anchor-horizontal:column;mso-height-rule:exactly"=
>
                      <span style=3D"font-size:9.0pt;font-family:&quot;Sego=
e UI&quot;,sans-serif;color:#212121">You
                        don't often get email from
                        <a href=3D"mailto:ycnakajsph=3Dgmail.com@lists.yoct=
oproject.org" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ycna=
kajsph=3Dgmail.com@lists.yoctoproject.org</a>.
                        <a href=3D"https://aka.ms/LearnAboutSenderIdentific=
ation" moz-do-not-send=3D"true">Learn why this is
                          important</a>
                        <o:p></o:p></span></p>
                  </div>
                </td>
                <td width=3D"75" style=3D"width:56.25pt;background:#EAEAEA;=
padding:5.25pt 3.75pt 5.25pt 3.75pt;aspect-ratio: revert !important;backgro=
und:revert !important;block-size: revert !important;border:revert !importan=
t;bottom: revert !important;color:revert !important;color-scheme: revert !i=
mportant;content-visibility: revert !important;cursor:revert !important;dir=
ection:revert !important;display:revert !important;font-size:revert !import=
ant;height:revert !important;hyphens: revert !important;letter-spacing:reve=
rt !important;line-height:revert !important;margin:revert !important;opacit=
y: revert !important;order: revert !important;outline: revert !important;ov=
erflow:revert !important;padding:revert !important;position:revert !importa=
nt;resize: revert !important;rotate: revert !important;scale: revert !impor=
tant;tab-size: revert !important;table-layout:revert !important;text-align:=
revert !important;text-indent:revert !important;text-orientation: revert !i=
mportant;text-overflow: revert !important;text-shadow:revert !important;tex=
t-transform:revert !important;text-wrap: revert !important;top:revert !impo=
rtant;transition: revert !important;user-select: revert !important;vertical=
-align:revert !important;visibility:revert !important;white-space:revert !i=
mportant;width:revert !important;word-break:revert !important;word-spacing:=
revert !important;writing-mode:revert !important;zoom: revert !important;al=
ign: left !important"><br>
                </td>
              </tr>
            </tbody>
          </table>
          <div>
            <div>
              <div>
                <p class=3D"MsoNormal">Hi guys,<o:p></o:p></p>
              </div>
              <div>
                <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
              </div>
              <div>
                <p class=3D"MsoNormal">Thanks for the patch Vlad, I see it
                  was integrated in bitbake's&nbsp;master branch, do you ha=
ve
                  any idea when we would be able to have it
                  in&nbsp;Scarthgap&nbsp;or Kirkstone?<o:p></o:p></p>
              </div>
              <div>
                <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
              </div>
              <div>
                <p class=3D"MsoNormal">Can we do something to help
                  integrate the patch?<o:p></o:p></p>
              </div>
              <div>
                <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
              </div>
              <div>
                <p class=3D"MsoNormal">Regards,<o:p></o:p></p>
              </div>
              <div>
                <p class=3D"MsoNormal"><br clear=3D"all">
                  <o:p></o:p></p>
              </div>
              <div>
                <div>
                  <div>
                    <div>
                      <p class=3D"MsoNormal">Yann CARDAILLAC,<o:p></o:p></p=
>
                    </div>
                    <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">-=
---------------------------------------------------------------------------=
----------------------------------------<o:p></o:p></p>
                  </div>
                </div>
              </div>
              <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
            </div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
            <div>
              <div>
                <p class=3D"MsoNormal">On Tue, Apr 28, 2026 at 9:06<span st=
yle=3D"font-family:&quot;Arial&quot;,sans-serif">=E2=80=AF</span>AM
                  vlad.pruteanu via
                  <a href=3D"http://lists.yoctoproject.org" moz-do-not-send=
=3D"true">lists.yoctoproject.org</a>
                  &lt;vlad.pruteanu=3D<a href=3D"mailto:p3-group.com@lists.=
yoctoproject.org" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
p3-group.com@lists.yoctoproject.org</a>&gt;
                  wrote:<o:p></o:p></p>
              </div>
              <blockquote style=3D"border:none;border-left:solid #CCCCCC 1.=
0pt;padding:0cm 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
                <div>
                  <p class=3D"MsoNormal">Hi,<br>
                    <br>
                    This patch solves the issue<br>
                    <a href=3D"https://patchwork.yoctoproject.org/project/b=
itbake/patch/20260427135122.1504143-2-johanam@axis.com/" target=3D"_blank" =
moz-do-not-send=3D"true">fetch2/crate:
                      use CDN for fetching crates</a><br>
                    <br>
                    Best regards,<br>
                    Vlad Pruteanu<o:p></o:p></p>
                </div>
                <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
                  <br>
                  <o:p></o:p></p>
              </blockquote>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre wrap=3D"" class=3D"moz-quote-pre">
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#66455): <a class=3D"moz-txt-link-freetext" href=3D"http=
s://lists.yoctoproject.org/g/yocto/message/66455">https://lists.yoctoprojec=
t.org/g/yocto/message/66455</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.y=
octoproject.org/mt/118986370/3617670">https://lists.yoctoproject.org/mt/118=
986370/3617670</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+own=
er@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yocto=
project.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a>=
 [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:tom.hochstein@oss.nx=
p.com">tom.hochstein@oss.nxp.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

</pre>
    </blockquote>
  </body>
</html>

--------------U8YjwzuS3yYJc00BASkuaBgW--

