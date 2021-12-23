Return-Path: <mingli.yu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D03C433EF
	for <webhook@archiver.kernel.org>; Thu, 23 Dec 2021 02:25:38 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.28277.1640226338217057945
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Dec 2021 18:25:38 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com
 header.s=pps06212021 header.b=srngeYwg;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=79914c8961=mingli.yu@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1BN2CKeA024793;
	Wed, 22 Dec 2021 18:25:36 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=subject : to : cc
 : references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=0t1YhI8sjGrQw1gQjOdQvCmskpeZSCglsoHwYYYRr28=;
 b=srngeYwgMM01lWJQcZAioUoSDc6sXSGRroMKuHSze2ee0U4DER8UlYxbWNhkLq6si44q
 v9Dtza/sNtuPRA9nxPgwB5LJE57Siv520esWiuDReAJrDOOk6IZDUZon0595yN8Fsef+
 THGaE5/ffOBTqaAJ0kKQKIxnF4Sq11TG8llXTNgh8BlNtg2NI+rgounsJk606HCSMsYm
 8qKk3lrwZciE1YpxtHEzoy8iZN0uO+VGJ7tkwgwCov3DX090YhTQ+JnLYBFuyMzkL9FL
 v3s9r2AeQiv9Zypj/k5Qlipe+hl6aQ5uGZrE/gghSsPS4hQbM5rY14X4cABBiRrRmQoS aw==
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2172.outbound.protection.outlook.com [104.47.59.172])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3d3vk4rs77-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 22 Dec 2021 18:25:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gacVg5MpEO3Feal5fEb+DQI3B2/frEvB1kPfA0psgetZ/1P7oLEbkI74CbnhPHQY1SCc4UPcqLddKkZCDjKgERDB2PSTc+q3LhGc6yMVIa1JKqTYp/TFg+jZVEV2e06nTlBzTYu/2hs7YIjHaSVzpOImb2qVYFoDAEXQ/7GPilPtL9SmEcvs7FGBxFePHlzPbTYBjT2TH4LPiEX6IXZIMbmD0W7mLu2F8yE9GY9nXDzGFMErDN0qeiVJRHaVPUqVpniwDZ/LFVBCYCKb9oT8wUwuLEb5PJxM8azijS2Bpw6mJ+fP0YlvdumBlaAL1hl5utjoz+8fUO6O8WeIHNJnxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0t1YhI8sjGrQw1gQjOdQvCmskpeZSCglsoHwYYYRr28=;
 b=MxUJi7Ac3+YafOeU9b7NlNKzWM4PLIkR+esTEZl1OZM26+Kw1jW0PJR7QjaXkbAAr4p5SHbyMRmzPzkHcTHNk5cePi2UniE0GI1qBmlNJ41f2+1G4z5gEgTStRDaz5u91vVVEKiszWUlOM2QwsCR4DUxaFIq30PT4RL1/Svl1ZPaSe09P/F1WjQ8KpHd2XzoX1qnMJ5TMTeZr+OQFOmC8lPovdYl2borUAxvS9v9YgvP8SLFs6Ca4o6+meWq+2fNjW4CNb3Kg/PjvOcS72Tkz9EhUf1RA7PRMqgsK1xEcw0AXhGpYAcpDHxsXu4XEBjHIlaziv5V9+RzlmcYPidRTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11)
 by MWHPR11MB1854.namprd11.prod.outlook.com (2603:10b6:300:10c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.15; Thu, 23 Dec
 2021 02:25:32 +0000
Received: from CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::3d37:c25a:72c6:6601]) by CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::3d37:c25a:72c6:6601%5]) with mapi id 15.20.4823.019; Thu, 23 Dec 2021
 02:25:32 +0000
Subject: Re: [yocto] [meta-raspberrypi][PATCH] xserver-xorg: remove xshmfence
 configure option
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20211209025956.41679-1-mingli.yu@windriver.com>
 <CAMKF1spEXRKjDgoC9AA42=yitDtWO8YYPhuLnuCKsRzTBdJN9Q@mail.gmail.com>
From: "Yu, Mingli" <mingli.yu@windriver.com>
Message-ID: <13128829-b222-869f-944b-268df6482711@windriver.com>
Date: Thu, 23 Dec 2021 10:25:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: 
 <CAMKF1spEXRKjDgoC9AA42=yitDtWO8YYPhuLnuCKsRzTBdJN9Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
X-ClientProxiedBy: HK2PR04CA0088.apcprd04.prod.outlook.com
 (2603:1096:202:15::32) To CO1PR11MB5009.namprd11.prod.outlook.com
 (2603:10b6:303:9e::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ada8a7ce-8d69-44d3-8a3a-08d9c5bb7e5f
X-MS-TrafficTypeDiagnostic: MWHPR11MB1854:EE_
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1854654B5A6A3B5D34D4B99DF17E9@MWHPR11MB1854.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1284;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/W/NfH6fLZHPwk9gw0WZYZHX3hlhtkZH2s71hxh1oZzEi6H7NbEJm7y7S8mDleAb7litHB/oD+HeKbrG8HgJJsOzQCtO1UTmsgPeuShvK1hj/UgN9Y68lU51pJXZAufqCmhsa0XRFQshJuCw+Lylz/c791WveP0+y2JEsVW1UtzaUni+7wKCBHjtZI5SwxdMLlFQ0IN88lXc1obOe117ghBSmyASQyF0zLg4M90dMfgrBgJztZZz6lORXJza1F5t/q3U/FBRjqindY5VRJ5cjQiPe7mPsvgHFEIXrAEOA40fwFg6TDRR6hNWaoEat00jekwF1pciDnKDOgEwGs06aW3+yrGSNz08dY5swP1otKAT2n0cRNr1ebBSaTOHvRCfc8ccDx6vcajNxc5FS4ldR6FwUlfBPWT0jT6KCswzAiOoHOPIT9Uw/UQ0NHtU1rMNRF3aDlxTEsfTwnkMjXs1El9SWlq25WNVXRia4b0rY1/O18gTsdHiyGw3iOkdmLZn1PVE1t8ZTTc1LPqYn7ivGT1xFhsB12qruY5LfBaA7G2BxgcoUtZHEj4Sj9FKgV3Ug1V3pmL7BBjbJ4F8IlUJgksBM6ibYgA3daW7zMNCig/gJ1M7LHE3BDyr2g3+ndMr5do1t/3Vsgvisc+mGjMUGN1MKsYgVkbYrWSkrEITSrpqT0JP0d/MukM8OHc2q4pkF1h07w8h0Zz71pPbBJJKWnKrhWMgIa8VTDhV9RtJl/0g2HqEgkeSPmZxU2ABVLAsB4mT39GhyDw73a+Tp410BKP7v1mAJAKhmTVR0nlgzgUv7t0nr61ViBVcQikJfisrpYiTPct1t295cpPSIVE91cPq3vJSBSTVkwar1seDC+yd/BmDM6hTrN3WWOEtA2TZ
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5009.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(83380400001)(4326008)(38350700002)(2906002)(6666004)(31686004)(38100700002)(66476007)(66556008)(186003)(316002)(5660300002)(6486002)(53546011)(6512007)(31696002)(26005)(2616005)(508600001)(6916009)(8676002)(966005)(8936002)(36756003)(86362001)(66946007)(52116002)(6506007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Z0x3RTc1WE4wTzczQXlQejB0SFNQa3hQMmVienY5S2hnVXZwQkNOQVVQZ1NN?=
 =?utf-8?B?M1FRU0p6RVo2SjJuWjFqa2xNeWlEWnJvUkU3Sjk1T3d6Q0VUNkp2QkVhWlJL?=
 =?utf-8?B?eVRTTHFLWjVvWG53aXNjSXhETndlWGwwdERUMWE2TXQ0d0RFNzdjT2psVndE?=
 =?utf-8?B?TWhTRkRiWklYNXJXeXJOUEdKVjJ0ZGFwd2hpSjJubEhOMGJxNDlpdGVrUzRR?=
 =?utf-8?B?S0hZUENPanZBb2ZtdTMrMlBoSFExZGczVFBHemV0ZXVTNVcxQmlibDc0Tlkx?=
 =?utf-8?B?OTBKOWdlOUJMRlQ1Wkkyb3dKUklQNGc4elg1RnlLbWhWZDB4bjVJcElQVUh2?=
 =?utf-8?B?bTdxSlNlaHZZZ3JZUjJ4UW5qc2JPVnFaRFVxNG1ZWkVVUzcydjFodGluVmI0?=
 =?utf-8?B?bVNOaGxOZy8wajJ4Y1JDMTFWRTBISlBwMkkyRHB6WGd2VSsyeFB4UGR3SGQ4?=
 =?utf-8?B?SEtXc2dzZHp1dVpLY2Q3QlR6WHNUR2dRU0ZiMWV3eXAvNDFkcmlTaWY4RjZp?=
 =?utf-8?B?cFRMZlN5WTlPZlMvSjlEbjVjRzBNcHpSSng2ck1iV3NvaUN2NHJNVWRiZFZU?=
 =?utf-8?B?Q2laZHd4dTZHcHN6NUg1ZlJFeSthRkJlWjlsOTlFTDVDbXNtRXlsTS9CSFNr?=
 =?utf-8?B?Qi9FbWRWM1N6SnY2L2RoK3h5L2dqc1g5OHhqVmJNY2tQWmhMZVV4Z1VlQS9H?=
 =?utf-8?B?bGJmQm5QUjg1VVhLOVorY2VSWTROenpvY2F5R3Avb3dCSFVMNUlaRFJjN2U3?=
 =?utf-8?B?QTFzYlVlVktwL1Ixb2FlMDZkdElEQ2VXSzRJNE81dVp0cGRielpndzVmdW15?=
 =?utf-8?B?QVJmUnBjcGs4UHZ1dk5OOGdxTFlxclNpaEx2ZnJBcElQYWtqdlZiazJWNmwy?=
 =?utf-8?B?Y3RRblB3eDhPUTVSM1A1cEZZWklnT3NTOVJDdnRVYVBrMW4yOFh0aXB0ZHlE?=
 =?utf-8?B?MktLMjhkanIySkltNC9naVdXaENud2N2bU5GRjgyNE9Yc2JmQkJpOHlwWTVn?=
 =?utf-8?B?OTZmZ3JGMk5UZEp4WDJOTG5FRkFHZVpGQWwxb3RSWkMySHFkaGRJVUFtaUsw?=
 =?utf-8?B?TS8vKzNxaGx3RnFkQm9yRFJPWDFsYlYwbGQ5QWhza2R4OTQ1akU2Q0lFc3hw?=
 =?utf-8?B?M2JSMDdYUW04a2dHZlhlUU9yR3FIYUpHaEJwdlFjQkFkVS8yL1NMS1hDWmZB?=
 =?utf-8?B?RzYrTEFWOGp5ZFdTNTU1ckRIT3lKRlFmS1pYRFNVbUpBNHlyQ3RicFlraklk?=
 =?utf-8?B?YmZBaWJJNWhyZFBZeFZBRWZCYklWbFIzS3VBZEFqa0FsTWFzNHdFcUJybkFp?=
 =?utf-8?B?MzE3S1VKaEdjQTRKWkxiT0crVTNFUXh0QnN0VTRMY1ljMGkzRGxya3B5a3Yw?=
 =?utf-8?B?ZDhIekErc0RJVS9wZ1JtOUlteDdGbnc4M0xzMlV5ZkUvYkJ6bTRzZE91TG1K?=
 =?utf-8?B?d080SGpmTEMrUVVSckNnc1RDdy9BaUhrT2dnck01ZGJMalBBc3J0M1dSUVJF?=
 =?utf-8?B?QjFzWXFLT2FZTzM2ZU84Z250R3NPT1M5T1dxM1FmR0hiSFdkTmN2Ui94ZVI1?=
 =?utf-8?B?Q3J6VFVyMVNFbFc0M2cxbUN2dTY2WXlDYnBaVmhKekZ0SVVkaEFNVHl2TDlG?=
 =?utf-8?B?bXZKWEF1UTA2clN0R29zQldXc0hRN2lRdkRmYzJ3Vzc3ek5TcjQ2Z0JkaW5z?=
 =?utf-8?B?WXBlT2o5TEY4cnhLSDFNRGpWcFM4dGY5SUFuRnFobXd6VGZOcER6eWdmejUz?=
 =?utf-8?B?Z2hxYmtPbDA2WERIaW5GZWN5UmFvN2Q4Ym9LVEEyMEVHaThoK3p0bUdqQ2ZU?=
 =?utf-8?B?SElpMW1velJYeUNxdnN2U1NQeVNZSzhDWEhYY3FrVmJMZWNCYVUzVGd0Z3Q2?=
 =?utf-8?B?YUd0S0hzZXRyczI5MEZYWWE3ZUJjSGpDS29DekJVUmgwME9mV2RtTkI2VWRo?=
 =?utf-8?B?dnVZV0FSZUFUVGtkMDIxbURVQWNyUXRhbzFZODdPVWVKQ2grOHVlVTdNTHU1?=
 =?utf-8?B?bmpDYmU2T2ZjZ3QyQXY3a2xzVFZKWkY1OXA3REpzY3Nqb0RsUlFzdHFkMEpE?=
 =?utf-8?B?cWFRTzNETjdqV1NFMUk0cFQxYUhxZXNLMlUrLzJSWGxHRnVBM2VCQWQzTzNa?=
 =?utf-8?B?UmtndHZhc3IwL1UzUVR2czlpT01ub0VhQjJwbWRKSDMxYkJMSHZTczhqUGhZ?=
 =?utf-8?Q?o85SJToH5/yhGP2GTdJaYtY=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 ada8a7ce-8d69-44d3-8a3a-08d9c5bb7e5f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2021 02:25:32.1035
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 nMOZgSIk9xi29WOg9agn4kofJGcKz02J0wv/zGHGGkemRThKXKH5SghtcJqIa6luWi4NBxo/9Crsgwth9CvNWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1854
X-Proofpoint-ORIG-GUID: mEn_491SkKaCil59h9CP9FzXZEezM0yy
X-Proofpoint-GUID: mEn_491SkKaCil59h9CP9FzXZEezM0yy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-22_09,2021-12-22_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011
 lowpriorityscore=0 phishscore=0 malwarescore=0 mlxlogscore=816
 suspectscore=0 spamscore=0 impostorscore=0 mlxscore=0 bulkscore=0
 priorityscore=1501 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2110150000 definitions=main-2112230009
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 1BN2CKeA024793
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Dec 2021 02:25:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55647



On 12/9/21 1:37 PM, Khem Raj wrote:
> **[Please note: This e-mail is from an EXTERNAL e-mail address]
>=20
>=20
>=20
> On Wed, Dec 8, 2021 at 7:03 PM Yu, Mingli <mingli.yu@windriver.com=20
> <mailto:mingli.yu@windriver.com>> wrote:
>=20
>     From: Mingli Yu <mingli.yu@windriver.com
>     <mailto:mingli.yu@windriver.com>>
>=20
>     After the commit [1] introduced in openembedded-core layer,
>     some configure options is't carried over include xshmfence
>     option, so remove the xshmfence configure option to silence
>     the below warning.
>      =C2=A0 WARNING: xserver-xorg-2_21.1.1-r0 do_configure: QA Issue:
>     xserver-xorg: invalid PACKAGECONFIG: xshmfence [invalid-packageconf=
ig]
>=20
>=20
> That=E2=80=99s ok to remove it but more importantly does it work now wi=
thout=20
> this option

First we should keep consistent with the change with=20
openembedded-core(https://git.openembedded.org/openembedded-core/commit/?=
id=3De05abd87ee5d23750c641d0129d9c83db68ee2e8)=20
and also not found any issue related to this option until now.

Thanks,

>=20
>=20
>     [1]
>     https://git.openembedded.org/openembedded-core/commit/?id=3De05abd8=
7ee5d23750c641d0129d9c83db68ee2e8
>     <https://urldefense.com/v3/__https://git.openembedded.org/openembed=
ded-core/commit/?id=3De05abd87ee5d23750c641d0129d9c83db68ee2e8__;!!AjveYd=
w8EvQ!O1dnnmQhKwEt9e40TMNLjFCci501QrS-7Erm4Fz5co01OzoGEk8NfXDGEi2vpfa5oCE=
$>
>=20
>     Signed-off-by: Mingli Yu <mingli.yu@windriver.com
>     <mailto:mingli.yu@windriver.com>>
>     ---
>      =C2=A0recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend | 2 +-
>      =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>=20
>     diff --git a/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
>     b/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
>     index 25829c2..ee4812f 100644
>     --- a/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
>     +++ b/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
>     @@ -1,4 +1,4 @@
>     -OPENGL_PKGCONFIGS:rpi =3D "dri glx
>     ${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', 'dri3
>     xshmfence glamor', '', d)}"
>     +OPENGL_PKGCONFIGS:rpi =3D "dri glx
>     ${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', 'dri3
>     glamor', '', d)}"
>=20
>      =C2=A0# when using userland graphic KHR/khrplatform.h is provided =
by
>     userland but virtual/libgl is provided by mesa-gl where
>      =C2=A0# we explicitly delete KHR/khrplatform.h since its already c=
oming
>     from userland package
>     --=20
>     2.17.1
>=20
>=20
>     -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>     Links: You receive all messages sent to this group.
>     You automatically follow any topics you start or reply to.
>     View/Reply Online (#55531):
>     https://lists.yoctoproject.org/g/yocto/message/55531
>     <https://urldefense.com/v3/__https://lists.yoctoproject.org/g/yocto=
/message/55531__;!!AjveYdw8EvQ!O1dnnmQhKwEt9e40TMNLjFCci501QrS-7Erm4Fz5co=
01OzoGEk8NfXDGEi2vXmKGDl8$>
>     Mute This Topic: https://lists.yoctoproject.org/mt/87605115/1997914
>     <https://urldefense.com/v3/__https://lists.yoctoproject.org/mt/8760=
5115/1997914__;!!AjveYdw8EvQ!O1dnnmQhKwEt9e40TMNLjFCci501QrS-7Erm4Fz5co01=
OzoGEk8NfXDGEi2vWeRAtqk$>
>     Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>     <https://urldefense.com/v3/__https://lists.yoctoproject.org/g/yocto=
/unsub__;!!AjveYdw8EvQ!O1dnnmQhKwEt9e40TMNLjFCci501QrS-7Erm4Fz5co01OzoGEk=
8NfXDGEi2vSS7YAOE$>
>     [raj.khem@gmail.com <mailto:raj.khem@gmail.com>]
>     -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

