Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79B84C46CD2
	for <webhook@archiver.kernel.org>; Wed, 31 Jan 2024 02:18:44 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.5434.1706667514675207843
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jan 2024 18:18:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=KP90tc/j;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=27603b54c3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40V1URdl022251;
	Wed, 31 Jan 2024 02:18:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:subject:to:references:from
	:in-reply-to:mime-version; s=PPS06212021; bh=tfXdO/zZ7cOgmOIm0F9
	xS46FvOUt4ccCFK5tEhh5iws=; b=KP90tc/jBZRCOJGg2qXUBfKr3FSSdsRy2fS
	C0ftY3LnCvI/Tw2mXidwFtILpylDTcmkCglr0NLZDp4LQul2ZpUmMDBqxDdWdDZ8
	s/Aoums4U9WPqRDFafvGi91AHH0WHL94HEWQa9OKSVecZBfsLIocm5IuzkHuW42f
	QBpHVMxLH6CAJm+IOTIfFx1CYrUKrPnzelC1dNRRpOuGo58mclB1uUWcUdFAfXX/
	jX2UEg2mRjEd0U6WIxlxc4NWedv+6fActZhfSOFijfiUozceFbzeWFCt5ieB+4Xr
	jKhbWnp+pn4ko+jzTojQtNCjmOHelZ+5kKIWOGrdB8IoN//rWjg==
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2100.outbound.protection.outlook.com [104.47.55.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3vyatvg37d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 31 Jan 2024 02:18:29 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mZUxgm8YLAa5yM5uXylg7NmxiIAIpzbWVYJ+Qw6JTy8sZ8ymsASkkjKGNNNutA0JWYuyGxBAQvjDSoB+J8XR3pXrSNcvfD7UfqOzRtPRGdqYHbHDNrxRuXnPwwqL7CxtHxUQuBrqRutAyHFNiMGppcWh4juB4cNJ7po2yFRey+wwjsCCwbpoSSYiBubsV/aoxEiTqgNLgqEp0BjjzDeMyuJCW09GfsodkCod43j13vI3FBHOS2rIvg/2GbZv7Rnb+d1CvT3IWckt5TKUaGKx0Vt6bYS6IfStx1ByzJNCWcTxc7CdSKWFnj/VV2uV1dq1x3BQegvCoAvdb6NvKfUkzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tfXdO/zZ7cOgmOIm0F9xS46FvOUt4ccCFK5tEhh5iws=;
 b=jXoCjLyD0nn9qUEOOG5niBBEs9PTEXms84IAJ3DD2LYTsSw12uYe3QlYVjr8KiDWYcY5t2TFkTs/vJDpnCXK0zvcv3kCr2hqxe8RhNfUuH+Cf0ep8AuqWZmy+sPmLeo9StomxG8dghbRduwwmXhU1il3m6vdI3X+8ATKKHTLRZl/k8RmifDDIYj87hkiC0um4ehrkZ8daDBb8yJ1IkoolKMx49cQCc94Gx09C7+TzlObauPqJwQd1Rm1CWE4TInvkkdWjKNVKbxFWfrPEZxtR5f5JlyrvHw96dvI/RXdc9mnXLp6d8q9ur0P6Sb6e2RDWUlnbnLvREO8dhT7yeHjrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by CY8PR11MB7732.namprd11.prod.outlook.com (2603:10b6:930:71::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Wed, 31 Jan
 2024 02:18:26 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::6633:7d9f:8d6b:247b]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::6633:7d9f:8d6b:247b%7]) with mapi id 15.20.7228.029; Wed, 31 Jan 2024
 02:18:25 +0000
Content-Type: multipart/alternative;
 boundary="------------jJyS8aHfWdZQIOfjZAIfrIjT"
Message-ID: <8ddc0850-dcda-4c9a-a3f4-92763d6be27b@windriver.com>
Date: Wed, 31 Jan 2024 10:18:19 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-selinux][PATCH] rpm: update PACKAGECONFIG for CMake
Content-Language: en-US
To: yocto@lists.yoctoproject.org, denis@denix.org
References: <20240130205042.2641514-1-denis@denix.org>
From: Yi Zhao <yi.zhao@windriver.com>
In-Reply-To: <20240130205042.2641514-1-denis@denix.org>
X-ClientProxiedBy: SI2PR02CA0017.apcprd02.prod.outlook.com
 (2603:1096:4:194::17) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|CY8PR11MB7732:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ff86feb-f6c4-434f-e49c-08dc2202e7ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	RWN72z+7xs8EWmto1rv/WU/LQq9bv+b5zGqSWIGNb2pph6yplvxNq6fU1ICz4TgFFOoqc/Wwub32FrqzonpPf86SElpwXk6giGSpCnzgltwaJlad0OM3laq6/acsmIRUTpBzVaBgL8ri6a/3XmLjgN7iwrFUgl+dQxMTI3Dn6neQxsvKKIuAh4Pq0QFk3szAxQ0SZA1x8t/hJ68SjoQE1zXL2gTGdljDCohwLStQHJRXk5hi5HluOoiCWnyDNzgIGGjytTI7tYj0UbSfn5lGd1aD0gRwl+SPzW/XAyJeUdaPUMLImVgqZQw5dvuIwLoPMVlF0dwZR7+329A5jMhK8yV4K9SmWylyU2oDd99jQCw5XV9N+E5WlEImet4AnOCT+naIQt6wh1f8OBvTdvJBbLOqSX61Vr/N/9m1VYHNn2/JLZFGZjpeO8YOVV7AOxm9NgaGlss5ceK1/ILI33KLjRDqjJNkoSmIqNqwRPD0l78Ae7LUiuWaw4afpESwK9mmDoL2A/5+QQepixaNaVEMmTEjBRvoWab0Pee++aoLfg0SkPHeZjk2UgmO/c070VO0vVeUkjxxiPINvAGgEIN78Zc4w0yX1hvAehbPe08+mlbIMqiHevr/lFTmfkQBYHJN
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(366004)(396003)(39850400004)(346002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(316002)(66556008)(6666004)(86362001)(31696002)(66946007)(66476007)(6486002)(83380400001)(966005)(478600001)(33964004)(53546011)(38100700002)(8676002)(166002)(31686004)(26005)(2616005)(8936002)(6506007)(6512007)(44832011)(15650500001)(5660300002)(2906002)(41300700001)(66899024)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cVdSYlhtK3F4NmhNd1dhUXFTOWRzcGxlRlRURnVWcmVWdHlRRzkwN1VJRmFT?=
 =?utf-8?B?YmdMRjJMZnVJZnZIVGprNTEycUloSjhacUVVcisxV1V0SGFxWHhaZUpTOUE0?=
 =?utf-8?B?YVlRTU5Vd3owZ1QzNlQ3c0N0UHZWTmYyUDlLQUdRUzNXeVllM3hxSjhFREtk?=
 =?utf-8?B?T2dDbnNrSFlycXE5Q21FS0hGQ0JMQUo0SGlpWDdMUlZoNmFLeEZBNlRuTzFL?=
 =?utf-8?B?ZHVHNnBqK0F3em1yckJ0bzR0cWUyV1UvREpYT1NkcjNBUGRWalpEZy9WMWpK?=
 =?utf-8?B?RDZOM1I0SVN0ZzYyWUpWUjJGNW1tc0NHUDlNQkpMUnF4YXRlNlRNVVVyQWx4?=
 =?utf-8?B?azNNT2NFZHhlNHhlNGF4ODZ5YnRaSm9FZkVtbFJINW0ySS9DejM0U1g5UlRy?=
 =?utf-8?B?RGdzZjJRalkrT1UvSEZVUm9pUTNiR0tMVlZEdGVTWFY3SEVySWdCVXJiT2E3?=
 =?utf-8?B?Z0p4SmlMOEQ0U1BoUTZ3VzNYc2J6UzFid3Y3bG9QWDRjT28yb3VtZTFRRDIv?=
 =?utf-8?B?LzZ0OGl5L3YyZ2VDdmc3MFc4TVBNZG1tWUZPUUtyamZ0bzlzbGV6UUh2dms5?=
 =?utf-8?B?S0FDbktLUmgyRzhqV0tidnZNYm1WVmg3QzRDbnc5MFBGck5tSG5TTHdoZUZ2?=
 =?utf-8?B?Z1VWQ01lV2k1YW8zNzJaRnA2RCtQa092TnBlcFpmSC9lSkxBQ0pXVzVYc3Bt?=
 =?utf-8?B?WnhQNmJ0SFhWUWtDOEdyMk52YUM3bG9MbVpDbnZ2bEc3MU03OGtuQ1lLbHQ0?=
 =?utf-8?B?bEdCMFVLZnpSakJBbE95VHNTZjhKdUJscENZQzJ1V0oyN2sxbklyWDZ0QVJ4?=
 =?utf-8?B?SCtSaUZJOUJSRSs0L0hsYmZ3VjlobGkzUzAybHgvdHZiYVpWM0JhUmx3S1FO?=
 =?utf-8?B?LytCRUMzcWhCYmFON2FZeitQSnBVS0tjeXNDTnhJQUlRaDNKVTBTTjJKbW1J?=
 =?utf-8?B?bG5KWUFNbFJQb0U2VmZQTllFNVhqUzJ4Zzl3alI4WHNLQWRXMmxqNllnallQ?=
 =?utf-8?B?bjdCaEZaWXNLb01mUWRTVUZLMno2TXRzT2U0OHRJeTQwemNjcHNaZ3h2Y3hK?=
 =?utf-8?B?WnRKVWpSZU9aOW0yaTIvWmE0RVp5OURtS2srR0tSeEFaT2JhZ2JheGlPRHJ3?=
 =?utf-8?B?NkhYTGFWNmxwRW1ydUZNRHpUU21SN1JGdVc3NzNCc3BNTDdJZGErSTVxK3V5?=
 =?utf-8?B?RCtzWDdZNWYyYXAwMlc1U1YrZzNaNDVMcEZBNk1NYkFkSjVjRG1mWWV6SHJp?=
 =?utf-8?B?ajhIUndRb0FNMU1Sb2xYQitQbnVCSGYwdXR0QnNmYjFZci9oelI3bWU0MW1z?=
 =?utf-8?B?YjNqZ05Gb05HRkFPK2RDVnV1cnU0RDBmUElJYWxxYzM4RmFYVU9tSm9hN0M1?=
 =?utf-8?B?Q0ZZb3hJQjgyWHgxWFV5MW5BSDhGMndFd1gzV1k1QWxXNFNKNlNLQjJQNElM?=
 =?utf-8?B?RWlENjN2akNBdU1IR2Jid3h1MURjVUU5eDFzRW1YR0pneHgvaUZ0VDhJVWE3?=
 =?utf-8?B?ZCszelZvdFZzMGlSQkZVU01PL0dyM2ozMkQycXo2WGhVdUdTOVhLY3BYWmMr?=
 =?utf-8?B?bzdGdTI2Wk1tYzhtOGdFbldkR1owbjY5cFdnYjVYUWlzWHJlR2pjcG5MbUZt?=
 =?utf-8?B?UVlrRG1UbHVhTjRneHhiQ0hYeHBpaythcDRCU0RYY0NBNzRDeDBZbTdRdURI?=
 =?utf-8?B?Wis3Si9GYnFHdWppRlJFVTduZ0YwaUtYbmV3Zk5EZVlYVm1hVWtlMnIzS0pR?=
 =?utf-8?B?N3ZXT1hpRGFSdnJLS1ZIaXB6WEtEcjJXNkF5SmhSNjRqb1kxNEpIemtqa2do?=
 =?utf-8?B?VUgrSldqZHAxMUU2RWRuS2VwckZrelJ4N3J2SXRBdlR4K2tCY3J4T2xvZ3R5?=
 =?utf-8?B?R2ZpQnlaYnBnbThGdEhITHVsd2c3WStoZEtrUm9aaDE4NEhiSldTMVF5UzNu?=
 =?utf-8?B?dTJUVmVsZEJCK0E4RVRjZ0lPSVJpTW0rdklIY3k2Z0c2YloxTlE3L3VYRHpF?=
 =?utf-8?B?T3lIbTJtelprS0hSM3VQSzNVK2hHQU1obi8zMHprbUpTK0Vua1dzYWFZSklq?=
 =?utf-8?B?RHM0c2V2UE9yaHlER3pnSVhiUncwdFZCN0VyNkhqVHpVU2VaWGZ4aHFXQ3Aw?=
 =?utf-8?Q?DIQ0UOFI1aFZDJfKDytxISsq7?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ff86feb-f6c4-434f-e49c-08dc2202e7ce
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2024 02:18:25.7177
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 87Jhg+KUBJERNiSYz5jlr4zwVhvKQA8qU0Toa9F/ZVaQn1pUYZL8BbmiJ9eAF3WbHa3CeW5cnPj6BThLf7U4XQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7732
X-Proofpoint-ORIG-GUID: D-zZ3VlnBWgZODocvUqfR13rM03h7Ohh
X-Proofpoint-GUID: D-zZ3VlnBWgZODocvUqfR13rM03h7Ohh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-30_14,2024-01-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 adultscore=0
 priorityscore=1501 spamscore=0 clxscore=1011 lowpriorityscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 mlxlogscore=762 mlxscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2401190000 definitions=main-2401310018
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jan 2024 02:18:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62343

--------------jJyS8aHfWdZQIOfjZAIfrIjT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 1/31/24 04:50, Denys Dmytriyenko wrote:
> Version 4.19 has migrated from autoconf to CMake, update PACKAGECONFIG
> accordingly.
>
> https://git.openembedded.org/openembedded-core/commit/?id=38549d462b399e3a63335f60a44c8bbced98639a
>
> Signed-off-by: Denys Dmytriyenko<denis@denix.org>
> ---
>   recipes-devtools/rpm/rpm_selinux.inc | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-devtools/rpm/rpm_selinux.inc b/recipes-devtools/rpm/rpm_selinux.inc
> index b6e0e7c..29eefbf 100644
> --- a/recipes-devtools/rpm/rpm_selinux.inc
> +++ b/recipes-devtools/rpm/rpm_selinux.inc
> @@ -1,2 +1,2 @@
>   inherit enable-selinux
> -PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux"
> +PACKAGECONFIG[selinux] = "-DWITH_SELINUX=ON,-DWITH_SELINUX=OFF,libselinux"

I see that PACKAGECONFIG[selinux] has been added to rpm recipe in 
oe-core. We can just remove this line.


//Yi

>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62340):https://lists.yoctoproject.org/g/yocto/message/62340
> Mute This Topic:https://lists.yoctoproject.org/mt/104062620/7283133
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [yi.zhao@eng.windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
--------------jJyS8aHfWdZQIOfjZAIfrIjT
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 1/31/24 04:50, Denys Dmytriyenko
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20240130205042.2641514-1-denis@denix.org">
      <pre class="moz-quote-pre" wrap="">Version 4.19 has migrated from autoconf to CMake, update PACKAGECONFIG
accordingly.

<a class="moz-txt-link-freetext" href="https://git.openembedded.org/openembedded-core/commit/?id=38549d462b399e3a63335f60a44c8bbced98639a">https://git.openembedded.org/openembedded-core/commit/?id=38549d462b399e3a63335f60a44c8bbced98639a</a>

Signed-off-by: Denys Dmytriyenko <a class="moz-txt-link-rfc2396E" href="mailto:denis@denix.org">&lt;denis@denix.org&gt;</a>
---
 recipes-devtools/rpm/rpm_selinux.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/rpm/rpm_selinux.inc b/recipes-devtools/rpm/rpm_selinux.inc
index b6e0e7c..29eefbf 100644
--- a/recipes-devtools/rpm/rpm_selinux.inc
+++ b/recipes-devtools/rpm/rpm_selinux.inc
@@ -1,2 +1,2 @@
 inherit enable-selinux
-PACKAGECONFIG[selinux] = &quot;--with-selinux,--without-selinux,libselinux&quot;
+PACKAGECONFIG[selinux] = &quot;-DWITH_SELINUX=ON,-DWITH_SELINUX=OFF,libselinux&quot;</pre>
    </blockquote>
    <p><span class="HwtZe" lang="en"><span class="jCAhz ChMk0b"><span class="ryNqvb">I see that PACKAGECONFIG[selinux] has been
            added to rpm recipe in oe-core.</span></span> <span class="jCAhz ChMk0b"><span class="ryNqvb">We can just remove
            this line.</span></span></span></p>
    <p><br>
    </p>
    <p>//Yi<br>
    </p>
    <blockquote type="cite" cite="mid:20240130205042.2641514-1-denis@denix.org">
      <pre class="moz-quote-pre" wrap="">
</pre>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#62340): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/62340">https://lists.yoctoproject.org/g/yocto/message/62340</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/104062620/7283133">https://lists.yoctoproject.org/mt/104062620/7283133</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:yi.zhao@eng.windriver.com">yi.zhao@eng.windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
  </body>
</html>

--------------jJyS8aHfWdZQIOfjZAIfrIjT--

