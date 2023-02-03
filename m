Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D05C61DA4
	for <webhook@archiver.kernel.org>; Fri,  3 Feb 2023 15:34:30 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.13690.1675438461925961676
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Feb 2023 07:34:22 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=C5dsxWYB;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=1398862e34=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 313CkcvR029164;
	Fri, 3 Feb 2023 15:34:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : subject : to : references : from : cc : in-reply-to :
 mime-version; s=PPS06212021;
 bh=+he0qZD64FGRyzt1bF+Lh1QmSZcu8Vk7ncHx85FNoY0=;
 b=C5dsxWYBHrC1yT0yH+EqEPRuiGUoEnlUALB8jVJ5F89ZU1+GP5X3c2GmqMWaCi6D4A5X
 F3/QQe7AiU6nKb0AvC0FZmMl3QGlAnJ4QO7zZOitLWDtrKKoLttShKjoT6m8qj4/6tRq
 gJdN7TxD+/NDnN8TsaE+E+ope9savwoECaVathV7q9aD+efkAk0vUm2CeYyYkZ6dipWR
 ywAp3QuyKp++LhEKobu+zdPngZG6BKPzprbG97a4vUcxF4xfsj/5G+T4y2pqLS1ZzTBk
 VLd0zos2G0+JBp90ZDeh1zPSAbcjSvK34Whd4msn91lVlarDqjv1WNedqQz3VRF1wXYQ Og== 
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2175.outbound.protection.outlook.com [104.47.59.175])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ncrx3eks9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 03 Feb 2023 15:34:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XR0yQk/qg3qg0Xqai4jD/XHbzjVT4oEnLufgfP7rbnxAgA9/5N4zAC5aRDJF71qdeg/HC+bD+SXiPtIIVT0en/H/st251m/CG5nMEYWhR8uRl/BgZj2yTvg2DgpWjih8ReWaSWBykx93qa9dm/Zm76Jc4Q6jCJ8fJ4/7LuCYRiWSJaZUumb+V9B9mB9HBd/lSOM+ygqoq930UzyFKt9gTHgzXaVAV0PrvJ10G9OndZ69AghdWE9+0mE7LSvfm68lBYVH4u9LE6nX1ftQWPHOW6CTMjhud1NqFfPzQVeBwe1ASmoQQmo6yie1WEDEfeqEH7gnEcSYBA/KX1/kG+RRLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+he0qZD64FGRyzt1bF+Lh1QmSZcu8Vk7ncHx85FNoY0=;
 b=LArZJXt4xb8vOLZ2wk+3zYb8htN1QUdJbQQd1pCBHUiJot43yeBhM0vVU/G9OhSroiIX6THYPM9lrbsPe+XvxMfVFc0P7Fg63tbAujCGsmBldRiAq5m9j+9pcv9dl/NZFd27q3yyJE3wJOuOUPu63oX+RCRF9e5ejFwYxlJlBF3XvXR/Blugp20Qdd2UcXads8KWayZBbIQCJU7ke2B4kTSDdVkcq741UdFRh/NEg4w7MspD34VGO5waXj2yRzcd+QoSwkp0D273wnFS6SUpEfw0SNjqDMtRMKcI8oS8zIeviiMRdl2qDuGb80rPmYNq3U/vsYxe7m7pk1sIzQAUyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by CY8PR11MB7800.namprd11.prod.outlook.com (2603:10b6:930:72::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.29; Fri, 3 Feb
 2023 15:34:18 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::119d:6114:994a:b87d]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::119d:6114:994a:b87d%5]) with mapi id 15.20.6064.022; Fri, 3 Feb 2023
 15:34:18 +0000
Content-Type: multipart/alternative;
 boundary="------------lUlsIr80J8b03BI0Vhk4iw3c"
Message-ID: <fc721b58-7a30-60a4-61a5-4375ef72ad79@windriver.com>
Date: Fri, 3 Feb 2023 10:34:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [yocto] chrony pkg-config backport fix #kirkstone
Content-Language: en-CA
To: gary@missionsecure.com, yocto@lists.yoctoproject.org
References: <T4br.1675350923784122575.80tS@lists.yoctoproject.org>
From: Randy MacLeod <randy.macleod@windriver.com>
Cc: Armin Kuster <akuster808@gmail.com>
In-Reply-To: <T4br.1675350923784122575.80tS@lists.yoctoproject.org>
X-ClientProxiedBy: SJ0PR03CA0166.namprd03.prod.outlook.com
 (2603:10b6:a03:338::21) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3994:EE_|CY8PR11MB7800:EE_
X-MS-Office365-Filtering-Correlation-Id: e465991c-2612-480f-d41e-08db05fc1d2f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LU6kmRstgaZHFwC8xcy9DQng1KvkD4gaDoeN9byU0PTwB2Hi11SQhm/1FE7uivDv+TvppHSSHTNyhe6uzAtOizSsyQD4jyT4K9WtcU7wvp/qe31dCEPQaBwJ1nLiF2XHxpZNpHgsuZXBVQmRdUXEHW5lrlSe9wVADjJkh8OkA/sinMbeWxGrel/uGLI2Zw5h/bvNn8fKDKINcRF+cIAFhUfyOdz50BsmygAUSgdFVNMvE0KQI3JSL7hbLQjn63F+9jwQ23ZfjTWaoViR1HhW+zizyz0Yd5Xto71TvabHp3JDe7tQOG/56aU7PuSp9jt9PX5S6+6WNwW5TAjLU8uAEdGzYEAushmnLeikpuuVvT7d1ndp1Ezn6lsWeNhsGsbVN4k2XHvmc0mHWY4J1KW1TCBaFcpwFcYHuLAHo7698qj751Uh1STnU7jIjoLKFFL1pZpsZDsQz7FhuUqMoKBdkdfXrnW/wwUvmmhjTUXPyIaGtImUbg/ZPyXvsAVv0FfmLeJjzLIJ0lt6y3UMq++LeQTXWlKpHK52qYgVQsF5Ue7ceQQUIJ2UEBJOoznQY/iwKUxc/DoT2+mlr0mZ0OMIhr/Lzot0UzTC1aHLn3R8TKiMLIMoVP1Yp/jMjElsNpmE5/+RFAyYy3BN1yvULkmuocosvr/CVubY0MRuWxHleTF6d+9fHg9ViQkesUHsZ16ME1f/dt0Laj0Q7+UkH8VCFKCw74SzaLflkpyGWOxcwvnmOOjF9sPHqFj8vywRG5vEHjDKAfJ1gq4whGjxc1VBtGRydI+37msQC+UvZy1ntLk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(39850400004)(346002)(366004)(376002)(136003)(451199018)(41300700001)(6666004)(66946007)(4326008)(66556008)(66476007)(6506007)(8676002)(31696002)(86362001)(2906002)(2616005)(83380400001)(8936002)(5660300002)(53546011)(33964004)(186003)(6512007)(38100700002)(26005)(36756003)(966005)(6486002)(478600001)(316002)(66899018)(166002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QThuOVRScG9XNXNrTFkwY3F5L2ZRcUJRaDBVYjBBZ3VwY3BIa2FXL0UyaE1U?=
 =?utf-8?B?L3VzcnVEMFZWd29OWnhhWUp3bHo2Z2tNanJsK1IwVW1ZeUxYdkw4cWE3VkUr?=
 =?utf-8?B?TVFkdFN6b1YzZkFmVC9EdVpqWGlONkgxZHFFTGNwekE2NDhLbVhLbUpZaHdq?=
 =?utf-8?B?Rkt0cWMwWTlPTzJBZkcrYXZFSmxCaTNyVjB5TllLd2I0TDBscjdrQXYyb3R3?=
 =?utf-8?B?dHJXRHhrbEI2VXNIRWNRU3RpbzYwQXVPK0w1bDVLaWoybDJOL2xxbEZHYnpE?=
 =?utf-8?B?dDByS1R3bWtBeVJ5cDZVTVdaK2hLMW12K2NpOUJ1Qm9lSGp5U0gxOW5RS242?=
 =?utf-8?B?aGVMMHFCVnhlRlhGWDJ6NjFHMWhlNmZJcVIwcDN1bXZiUFdxei91UVFWaGh4?=
 =?utf-8?B?K3BndDZLaGdHbnJOVWlxZ2wxK3dhUHVSb2ZxRlZpOGpJMlhxNThjc3Y4WUJn?=
 =?utf-8?B?bFEybXk3SWNDSTdneVN2VGxsODlTSkpveEJZZnNkS0VqbG9WeURHUU5uNE52?=
 =?utf-8?B?eXdDSmNkUlNSRGkzT1B2SXhXc0JTNlRCRGpaSTIzZjNqS0M1VVNHa1VJbE1o?=
 =?utf-8?B?eHRHV1o3WXZwUkIzeWdiYWVXbnc1N3ErSGhSeDZYSExCck0xS0o2S3ZJN2pI?=
 =?utf-8?B?a1dZZmVTTVlRdkxRbEpjSXYwWmNRRlQ5VC80aTNrWUpid1NhV2orZ2dXZ0ND?=
 =?utf-8?B?N3I5VHhKQ2NERGY3LzVUMk0yVnR1WnpGWWJVY0RqampRcVJMVTYza2hlMWxW?=
 =?utf-8?B?ckdyU2RZNHpyZkR1Smw1Q3QzZStDbzVVTUNvSnJSNmhtd0VrdlVsYTBiMTBr?=
 =?utf-8?B?dEpRMWJRM0JXMGg3VCtURFlNb1IwTWszU0hOSFFUWExzL1RwUmJkWDE2cTg5?=
 =?utf-8?B?ekFON0gzMFBqMmkwb0l1aEtqUHBtNXFDQSt5SkhrN200MkhLTWNFalltdXBh?=
 =?utf-8?B?YWlDTVpSZTR4NnlpM1A4K0QyVHdGc042RWg5REtzdnJjTWtMOTlTanA1Mkpx?=
 =?utf-8?B?MXltaTJldjh5UTQ2UW1yQWFOVUZZQW4vakNhbHp2T0Z3bG5TRjBVMlZxdVdR?=
 =?utf-8?B?Z2lsaEdSa2VJRFUyNy9VZmZReDdDYTF0OGtUeU9qcWlrY2Y1Zk8zZEZ1emxv?=
 =?utf-8?B?cHY2WnZXcDgrRGRhRXNOTWhJSkRsUFphMzdUMTJ2cnE2bWRCVmtGNjJiV3lr?=
 =?utf-8?B?ZkduUTJodnBiUWVZcWdpTXpFWkxxSzR1VmFVZ0RwNVpCYm5SYXMrb3ZxRkQr?=
 =?utf-8?B?SjNLR0dzZ3NtaGVhYy93Q0ZXQVJ2VjcvNElxeE5saDljYXZaWUp3RlNYU1J0?=
 =?utf-8?B?anVJVUZIT2Q1dmo4N3NuRGZVUDlBbUVRelhhRGJ4dTVuWjFCZTRYc3YwbVJ1?=
 =?utf-8?B?emt3NlVGMzFjQjQ0Sk5OWXdrblkvVmV5alA3NmRvUWJJSVJmZERmTTJyampE?=
 =?utf-8?B?SVcvdE1EeTcyVjc4eXArMFN3bGc2aHJTcitTb2JlYkVBK2VnT0pFUDBiNk4r?=
 =?utf-8?B?L1lNeVlKMHZ4eldUNUlBQjZQTG5ZaS9xa096aDNjZGZLa2c4eVIrbzJxWkRa?=
 =?utf-8?B?dzk0SnVkM2dPaW41MTRzSHZzVEdLZkZuaUFMWnB6UGdzWGJCUllmalpGN2Qy?=
 =?utf-8?B?VXNmWmd4UGFCSXZoRXdoaU5DbVJPc1JWU3N2VDl3RWJrdFJrYmMzQzdwUFFh?=
 =?utf-8?B?anhES214N1oxcUpYRVp4Zk1UcWtBVXFrNkNDUmh2MVRlL2F1dVVJd2R2MUFj?=
 =?utf-8?B?aFY4ZTJDV2RMSE9tVVYreW1EU1BoRUpRUUNLcEhGanFvMjBRYzN1WVJZR1FX?=
 =?utf-8?B?ZkxRbDhmVkZVQnk1eEFKcW1SSDlxSHJ3cFpNQWlrZHNFNFAwQTV2V1U1ZDFM?=
 =?utf-8?B?Q3dhK0c2ajcvOFBTM3JDNU5KVTdtSXFpWVFzMXVmbnNFZWZuYndHeGJ1SEpO?=
 =?utf-8?B?ajhIbC83RUllVGM0YkNySTdxM2c1cFZjdXdQaGc2OWx6RGVOWjBJdU5KRnZo?=
 =?utf-8?B?RS9EMmphQzBxUUtOZVlhUXcyK0lTZGFCQUdiQS8rYk9INWZlRFFzNU14V1dK?=
 =?utf-8?B?UHBpUWcwaFY5RG5BcHh3N2tUV0pvNjZWUTVSUVdJa2F3aDhyMFFLVkh2RGlT?=
 =?utf-8?B?bkJyYmg0d0xsNENMTVRvT05KYVRCbkFPdzlRekZqQ1lxajJPN2F5K3lLaElx?=
 =?utf-8?Q?TsAE5NiIMIOy2XUDpx1nn4Q=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e465991c-2612-480f-d41e-08db05fc1d2f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2023 15:34:18.4034
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hLSQe9hqGN2NGJ+AMLK9jWpgoXoGs8hAsE8lxLVKHV66nVqr82m6PtJqHrLkCybXgldDRV9qNhgkbt+Oa6G0I8oJcVpsfxLa8N5ceh5aBB8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7800
X-Proofpoint-GUID: nUbvArvtLp-Iep6XfcUHs0s_ph79ccKf
X-Proofpoint-ORIG-GUID: nUbvArvtLp-Iep6XfcUHs0s_ph79ccKf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-02-03_15,2023-02-03_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 impostorscore=0
 adultscore=0 malwarescore=0 clxscore=1011 mlxlogscore=949 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302030142
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Feb 2023 15:34:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59159

--------------lUlsIr80J8b03BI0Vhk4iw3c
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 313CkcvR029164

On 2023-02-02 10:15, Gary Huband via lists.yoctoproject.org wrote:
> There is a bug in the chrony Kirkstone recipe that was fixed in=20
> Langdale but has not been fixed in Kirkstone:
> https://lists.openembedded.org/g/openembedded-devel/message/99080?p=3D%=
2C%2C%2C20%2C0%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2Cchrony+pkg-confi=
g%2C20%2C2%2C0%2C94155994
> This adds pkgconfig to the inherit line to allow configure to find=20
> pkg-config.=C2=A0 Without this fix the recipe cannot build some feature=
s=20
> like NTS.
>
> How to get this fix into Kirkstone?=C2=A0 Do I submit a patch?

Yes please, it does cherry-pick back cleanly but I didn't take the time=20
to build/test.

FYI:

https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

../Randy

meta-oe.git on kirkstone

=E2=9D=AF git log -6 --oneline langdale ^kirkstone=20
meta-networking/recipes-support/chrony/
c354f9277 (langdale-next) chrony: Remove the libcap and nss PACKAGECONFIG=
s
aa811aa77 chrony: Make it possible to enable editline support again
aa20821f1 chrony: correct parameter to configure to disable readline usag=
e
22682fdfb chrony: add pkgconfig class as pkg-config is explicitly=20
searched for
fca74376e chrony: upgrade 4.2 -> 4.3
517c9dab9 chrony: add support for config and source snippet includes

=E2=9D=AF git cherry-pick 22682fdfb
Auto-merging meta-networking/recipes-support/chrony/chrony_4.2.bb
[kirkstone d4cc4f260] chrony: add pkgconfig class as pkg-config is=20
explicitly searched for
 =C2=A0Author: Federico Pellegrin <fede@evolware.org>
 =C2=A0Date: Thu Oct 6 14:17:21 2022 +0200
 =C2=A01 file changed, 1 insertion(+), 1 deletion(-)


> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59148):https://lists.yoctoproject.org/g/yocto/messa=
ge/59148
> Mute This Topic:https://lists.yoctoproject.org/mt/96701548/3616765
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirk=
stone
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [randy.macleo=
d@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--=20
# Randy MacLeod
# Wind River Linux

--------------lUlsIr80J8b03BI0Vhk4iw3c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 313CkcvR029164

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2023-02-02 10:15, Gary Huband via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:T4br.1675350923784122575.80tS@l=
ists.yoctoproject.org">
     =20
      There is a bug in the chrony Kirkstone recipe that was fixed in
      Langdale but has not been fixed in Kirkstone:<br>
      <a href=3D"https://lists.openembedded.org/g/openembedded-devel/mess=
age/99080?p=3D%2C%2C%2C20%2C0%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2Cc=
hrony+pkg-config%2C20%2C2%2C0%2C94155994" target=3D"_blank" rel=3D"noopen=
er" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://list=
s.openembedded.org/g/openembedded-devel/message/99080?p=3D%2C%2C%2C20%2C0=
%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2Cchrony+pkg-config%2C20%2C2%2C0=
%2C94155994</a><br>
      This adds pkgconfig to the inherit line to allow configure to find
      pkg-config.&nbsp; Without this fix the recipe cannot build some
      features like NTS.<br>
      <br>
      How to get this fix into Kirkstone?&nbsp; Do I submit a patch?
      <br>
    </blockquote>
    <p>Yes please, it does cherry-pick back cleanly but I didn't take
      the time to build/test.</p>
    <p>FYI:<br>
    </p>
    <p><a class=3D"moz-txt-link-freetext" href=3D"https://www.openembedde=
d.org/wiki/How_to_submit_a_patch_to_OpenEmbedded">https://www.openembedde=
d.org/wiki/How_to_submit_a_patch_to_OpenEmbedded</a><br>
    </p>
    <p>../Randy<br>
    </p>
    <p>meta-oe.git on kirkstone<br>
    </p>
    <p>=E2=9D=AF git log -6 --oneline langdale ^kirkstone
      meta-networking/recipes-support/chrony/<br>
      c354f9277 (langdale-next) chrony: Remove the libcap and nss
      PACKAGECONFIGs<br>
      aa811aa77 chrony: Make it possible to enable editline support
      again<br>
      aa20821f1 chrony: correct parameter to configure to disable
      readline usage<br>
      22682fdfb chrony: add pkgconfig class as pkg-config is explicitly
      searched for<br>
      fca74376e chrony: upgrade 4.2 -&gt; 4.3<br>
      517c9dab9 chrony: add support for config and source snippet
      includes<br>
      <br>
      =E2=9D=AF git cherry-pick 22682fdfb<br>
      Auto-merging meta-networking/recipes-support/chrony/chrony_4.2.bb<b=
r>
      [kirkstone d4cc4f260] chrony: add pkgconfig class as pkg-config is
      explicitly searched for<br>
      &nbsp;Author: Federico Pellegrin <a class=3D"moz-txt-link-rfc2396E"=
 href=3D"mailto:fede@evolware.org">&lt;fede@evolware.org&gt;</a><br>
      &nbsp;Date: Thu Oct 6 14:17:21 2022 +0200<br>
      &nbsp;1 file changed, 1 insertion(+), 1 deletion(-)<br>
      <br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:T4br.1675350923784122575.80tS@l=
ists.yoctoproject.org">
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#59148): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/59148">https://lists.yoctopr=
oject.org/g/yocto/message/59148</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/96701548/3616765">https://lists.yoctoproject.org/mt/=
96701548/3616765</a>
Mute #kirkstone:<a class=3D"moz-txt-link-freetext" href=3D"https://lists.=
yoctoproject.org/g/yocto/mutehashtag/kirkstone">https://lists.yoctoprojec=
t.org/g/yocto/mutehashtag/kirkstone</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a> [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@=
windriver.com">randy.macleod@windriver.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------lUlsIr80J8b03BI0Vhk4iw3c--

