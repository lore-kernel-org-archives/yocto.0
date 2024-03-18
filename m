Return-Path: <mingli.yu@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C1DC54E60
	for <webhook@archiver.kernel.org>; Mon, 18 Mar 2024 02:24:21 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.34121.1710728656083771788
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Mar 2024 19:24:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=A2rcyI5H;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=38074007b8=mingli.yu@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42I204GD018056;
	Sun, 17 Mar 2024 19:24:14 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=message-id:date:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	PPS06212021; bh=2Aqz0MtnKOZkOZZv+F5ABMdjKQZsMD0mmrKrY2iZ3f4=; b=
	A2rcyI5HPh6G2ZZBkIYw99b3CMlJA31vfLUW54pOGhPOkLP5TwjAfwQqQdvm2Ost
	JHNCHRq+Vg8IINOrQPaRJs8RdjMG21f6c5QvEoVH45uWm57x3Dt80KjMUW/+DYo+
	f9NydqTpjQbm2rJsEGasI9dke7eAqXwfrnlxxcTDowNHkPCDu+bKJmoszFnvZJ/1
	IyyrDKMSZ5N82Oad+ZIn1trO/uvxjxTkqev4FA4uxE+7RdjjKmOfndKif+yFU1yM
	j/GfqlCZJeHgYqj1er3xnqfFZlXPEygoIiNQv3f9MKzSdATZiL/7Z0meMVD/c/Nv
	goULgoBmw94LYqdqqgpckA==
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2041.outbound.protection.outlook.com [104.47.66.41])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ww6q0h49a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 17 Mar 2024 19:24:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lz5KtK1HNkTNS9CWLalTnl4/2D4dLAAx6fkwc1i7QDPnJRUL5E43p2yAt1z8esYUI8jgXGMXRh5Hao8dPyQILdxPyDdgUn7kZDdBvIETRd8w2uRDvHH7uUqyPneliMSkOrQegjDz3BlabOkjEdQn7PDS7gYS9gyzflftOFg1prga9h3Ajy7KTIAtCv5XzR0/jvjX1piJQPush2Ff2TrK73AvRaqs46xBe/3fe+y8A1xJlx6cziEu0IwzmIyi/kJcXyGlYCEZLtrDdqNZmyMuc4Oz+XBAcbfkcO08fxnYveOurFINotJhXe2WRDadYfzDVg6bAgCcSalDgTy4ngKaYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Aqz0MtnKOZkOZZv+F5ABMdjKQZsMD0mmrKrY2iZ3f4=;
 b=Tkfqo3qUSVYOTkQVPCC2s6/QadKjZMiWy7O9x3nklBo3COp95LVR6alPnkT+PRwIduMm6+vimmsmo4yrt5Gm7h1wOs/vKrC/TmL9Qt4FZWxreyWPfGFkEzgS1qhuumQPqgSZ30DwGdhIZrY2jsC2F1NghKmljK/p8ROkWnl2fFHSNZZjDF9bt7QmtJ9lo6Lifk9nKQgoIOXoUqPZ00D3QCO2QlaH4bpeAlbJeUgx0x0TRyxfc5TBzbdtN3E57W2KG13JXdP+NbtRllDvPne7FegOv12uARi83jkNY6o6rDaq3OThc4q91Eup6AS2snUjXl9dMRCiG/MvbBBwj8NedQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11)
 by PH8PR11MB6998.namprd11.prod.outlook.com (2603:10b6:510:222::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.22; Mon, 18 Mar
 2024 02:24:09 +0000
Received: from CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b792:3207:f838:98a1]) by CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b792:3207:f838:98a1%4]) with mapi id 15.20.7409.010; Mon, 18 Mar 2024
 02:24:09 +0000
Message-ID: <90a03270-fb83-428d-9256-1b41d0a44ac7@windriver.com>
Date: Mon, 18 Mar 2024 10:24:02 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-security][PATCH] python3-pyinotify: do not rely on
 smtpd module
Content-Language: en-US
To: yocto@lists.yoctoproject.org, akuster808@gmail.com
References: <20240123143851.2026645-1-akuster808@gmail.com>
From: "Yu, Mingli" <mingli.yu@windriver.com>
In-Reply-To: <20240123143851.2026645-1-akuster808@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SG3P274CA0007.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:be::19)
 To CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5009:EE_|PH8PR11MB6998:EE_
X-MS-Office365-Filtering-Correlation-Id: 79b28bcf-a922-4ba1-591b-08dc46f27df7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3Q7FwgSJ3DQvne4VKQJpuXl5DUcJ5V6w76E/JQAzq1IMzhqQTTAVfr171XBWyEZxha69c5W44z+nwnOUQ26/P85E9kuFrkzkRa63PlJtD1XGN7iztzGLr80tFRUWbrkzKz9sfg4PKqsW5oRtGwRz9rz4Psav9egv7dHNV2oygY61SG8lTYqw6eeqOmv1aApa4tINn98gPFCYwLVERFjE38GTsw5tQKkOdfERZQjGPV9SNdep5d/zkLqHtxaHOfjWG/kO1LS8xKetK4g6Qb+ugBH1lxXF6x7t+/nx6ujmMy7NGrp8F++WYxDxezwMCNYZrE1oVhNYGKAxlnRUVEhCozmiCWa0ip+0bVUIG/pO6ncYpmkaD2j7FDXysb8cZyNDkFmu4JTq2mFyyoya2x86qq6Ibi8egPyoH88bk7mkzKwzdyGRCp+Uf4NhbVOwfV0yJoVwPEhLsUGmWt0hjj/tOO+KAAe6QGN2LsiF5aO7sbTZyXp9hGKz6tG308cjRyMLM9oMwsyX5V5SRMoQS7uRIm35Mbj0BuvuMDwH2htNgasHJiAPpMHHibNMr9u+HLO044Ll+KGV0dXgD3ZGCGRaG7X9JA/+PxnDbdB6/EJIcU4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5009.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cXJDUlRaWkxEb0tDaEdnK2ZOSGJUZWlyUXdBZ3NvcHRGcStpeStvdFN0Smk1?=
 =?utf-8?B?ZFRGdHR4eHNjejdyYndwYlN6Smd6WlY0VHNVMUVnc0NTblFEc2NCcXdkaUpS?=
 =?utf-8?B?VDRJc3JFSFlTRTMvczJ4Nm54WHlLZEplUEJCNEdZSStaUnVZMUQrZFZZSlBE?=
 =?utf-8?B?cGpRRGd6MXZpbUlZQ1NhM0NqSExKbWFIUlRoQW1GeHJqS0Q3d052RnEvYmVS?=
 =?utf-8?B?Z25rSWJxa2lpcE5vZ3FXYXYxSGkxS1R3V0RwTEZMb0VYdVBYcVZzTTlSK2Rl?=
 =?utf-8?B?SDM2bXNTNTRoYzNwQ0FnajZCVk55MjhuRDBlSmg4NmVZamVSdFBrOXRSdE5a?=
 =?utf-8?B?c056bzMwbHp4NVBKSm9uN09zd2h3cGdFamc2RkJkRVFvVDU1aFEvWkJRSjhl?=
 =?utf-8?B?UHFEOGVUanhvOVJ4VVc0d3U3SWVQckdoVHFzdFkzYi9JbHNCMkgxQ3RHTUo3?=
 =?utf-8?B?clRkQktoT2FnSUp2MGJXR2hERHVYZmcrR1VCdU1mTlNSU1BTRUJjYVA0ajBR?=
 =?utf-8?B?MWxjeWU1SmRNRkdRYnVXN1IwT2tGZktnNmhRZU12Ti8yakdxSVpnSE9Qd2dR?=
 =?utf-8?B?WE9FYnVza2lLREtBS3UwMnIrV3c3b0l4enlXR25HWUNGRVlXSlYvNjNpTGp2?=
 =?utf-8?B?NDZwandrejc5ZmhNRUhBOFRETlZVL3k1RktsdTJxb2thdzZyck5ISHVEcDBD?=
 =?utf-8?B?QU1TY3dFc3doZnZmbS9DOU9STVJYNzF6ZWs0UVM3SElGcis2WnZhNlhNV2lh?=
 =?utf-8?B?WVpkUzBkTTZFc3BIdHV6SDUyVVptZmpRK0VrM2xuN2FpK1pkb0R5TUEyTjlG?=
 =?utf-8?B?TzJmcTJHWkJ4cmJ4SlZOQ2tuNzNmM29LR0F0aURXQ1lmTXZ3Rnk3VGZ1ejZT?=
 =?utf-8?B?cFJQR2Rkak5Jdk54WW9kRXVoNW5jR0UzNmVaMGcxRUl4OGJlSzNocmhpWkJG?=
 =?utf-8?B?NmNCckx5cW9VZnpqeVdUSFVyUkFXOHh2WC9Sa2NhU0pvQ2wrakt1YS9hMXNt?=
 =?utf-8?B?akI5bGFFbEhVVHdYVnNpa1p5c1NocW44NHNpOVlBOFRySlNGZ0thS0NMYk83?=
 =?utf-8?B?Q3JVdTRGeVdMMjFBN0lHSGVEb0VpQklJMXBKMDVMM0YzZ2pxMjlzN29EL0da?=
 =?utf-8?B?emlQbG9DZFpSMHdDWXlaL0ZJZjhKUWdPOEUvYmZYOFFNL0E5WUNZSzZhYkd6?=
 =?utf-8?B?OWFpdWZBME9naFJBWXdPTFJMaDZzcCt2M2M3VklabXB4elovcnQ1MkN6TVFz?=
 =?utf-8?B?NE9QR1IxRWJOV2pDMGlEd2tyZXZzTnlJRDNUSjJNanVOdkhOREltWlgwYmpF?=
 =?utf-8?B?dldabE5ESU9ycStZQ2dFY05LN3U3d1FaWnAvaDlJWHBzQ0ZWUFNKYWJ4dUVW?=
 =?utf-8?B?UU9rQzBiM2lyUWQzLzdLV3pKSjR0RFI3MjlzRU1EU0JSUW5mVHY1bmZta1pV?=
 =?utf-8?B?SVFPNmg4M3dFL0FvODUwMENqamxkZ2ZDaEdJTkRkVHZjUUVsai9RRTU5bFAy?=
 =?utf-8?B?bUk1VXEwS25WQi93ZWV0WGtFZGhPM1VBc20wYllvZWUyOHBudTBOVUdvbEJD?=
 =?utf-8?B?anVTSVo3aUU3VjRPQXZpNTNaMWt0OWxxSjUzTUMxdkRxTStUQUVualMyaita?=
 =?utf-8?B?QTBpVUNjOFRvRGRnY0d3R29jdFJRL0xkTGFFTnJGUURlcC8rMmFzOHhVMkRy?=
 =?utf-8?B?azVjR0l1QjZ3dWRhRUxSTXVUd0w2ejVmMk14eURLTi9rQVBzVWpaRGR3MGIw?=
 =?utf-8?B?d3VpS2JETmtRaGY0QXBoUTJNcGZMdDdXcWxicHpzbWRWNEFjODRZTTZQSTRi?=
 =?utf-8?B?Tm9GYWJ2cEpiWGEvVUxScWpNc050NDM2NkVuNmV4MnhGazJBY1VpSUt4S2pN?=
 =?utf-8?B?cHNzQjFuM0lCdmZRUDdZMzJJeUwrMWsxMEVFOWZhN0FTUEdmMFZDSUcySUpk?=
 =?utf-8?B?ZFZPWmdhZjRoY0RySHhReUltTkFQUDNLMUtweTBQNXdsZDlMWDZPUGNBbm1O?=
 =?utf-8?B?RHNZN3NMVTN0UUkvZmN0MmtBMGRFTjRSTXV0K1hOeUNjM2VrS2YwQ0JqSEFS?=
 =?utf-8?B?VWRHK3hCdWM1eE4yNWJqUGJlZVV6dkpEK1RyM1FSR1BIaTgvZk5IemozVStV?=
 =?utf-8?B?REpCYyt6cEtCUkJWSUxKY2kwMWdkUWRpQzJiUTVrTmZvR0czeVphUVdHTDBJ?=
 =?utf-8?B?blE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79b28bcf-a922-4ba1-591b-08dc46f27df7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2024 02:24:09.1604
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u/2bEvj/fbTnP6X9L8NvVNmeYKDqV/5j6AgR6CDcAwT3gGia8YA1bjsYTym17nx1S/+RQmjlH4bWv7rdpLfoEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6998
X-Proofpoint-GUID: 6JOsk_yoMKkNvBYAoVhgUtsleujjLZhs
X-Proofpoint-ORIG-GUID: 6JOsk_yoMKkNvBYAoVhgUtsleujjLZhs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-17_12,2024-03-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1011 suspectscore=0 phishscore=0 impostorscore=0 bulkscore=0
 spamscore=0 adultscore=0 mlxscore=0 mlxlogscore=955 malwarescore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2403140001 definitions=main-2403180017
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 02:24:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62775

Below error issues once the RDEPENDS removed.

# python3
Python 3.12.1 (main, Dec  7 2023, 20:45:44) [GCC 13.2.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
 >>> import pyinotify
Traceback (most recent call last):
   File "<stdin>", line 1, in <module>
   File "/usr/lib64/python3.12/site-packages/pyinotify.py", line 71, in 
<module>
     import asyncore
ModuleNotFoundError: No module named 'asyncore'
 >>>

Thanks,


On 1/23/24 22:38, Armin Kuster wrote:
> CAUTION: This email comes from a non Wind River email account!
> Do not click links or open attachments unless you recognize the sender and know the content is safe.
> 
> It's not mentioned anywhere in source code, and python 3.12
> has removed it.
> 
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>   .../recipes-devtools/python/python3-pyinotify_0.9.6.bb           | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb b/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb
> index 8dd5e15..963fcfe 100644
> --- a/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb
> +++ b/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb
> @@ -9,7 +9,6 @@ RDEPENDS:${PN} += "\
>       ${PYTHON_PN}-logging \
>       ${PYTHON_PN}-misc \
>       ${PYTHON_PN}-shell \
> -    ${PYTHON_PN}-smtpd \
>       ${PYTHON_PN}-threading \
>   "
> 
> --
> 2.34.1
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62244): https://lists.yoctoproject.org/g/yocto/message/62244
> Mute This Topic: https://lists.yoctoproject.org/mt/103910351/3618448
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mingli.yu@eng.windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

