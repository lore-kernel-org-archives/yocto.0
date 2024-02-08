Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 796A5C48260
	for <webhook@archiver.kernel.org>; Thu,  8 Feb 2024 23:13:58 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.4150.1707434035991427779
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Feb 2024 15:13:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=hneHfX4T;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=2768cd1389=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 418D0hKJ008601;
	Thu, 8 Feb 2024 23:13:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:subject:to:references:from
	:in-reply-to:mime-version; s=PPS06212021; bh=Ry0U/W76IArNNxVTn5K
	kJdqqmhPaBkL9pRwR98ggm90=; b=hneHfX4TyWtf7YXOGWuRKRSvj73LsL8KwaF
	ef5ZS0EmF8HYmEre1tSLYNSudASMIXYtfinWFr6NjovuHeRP6M7oFspZCzElhP9U
	OwVPowFxFc9IbMiW50diqLMPfeLsSZInGES2Au7YdIKMpOEiIhOZrHahswHSt6Tg
	1ZEv4DFaL1JvNrnyxx0kDSD77mI+WlzT+vFKfnsCncgleqFa83ceUv6RcOU+EB5t
	ziC1tf9/UAac9ZCrmUoMyAiOrUTNuaRTAvdlHYPAlxUVUEEg0j4L8g+DoW8ws24B
	2muQJu6rwfvBuDhSBBhJtue55WkDsBO7rMBbCaMcxcc5YRCSB0g==
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3w1cq0npdh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 08 Feb 2024 23:13:54 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l+wj/FfLNmozyl6mXNGhnJyUyBH2Q4zuPrfWpaXJ9ziwuEo23ia3x6XCypkvUSv6bSC66UrQHcUuDtDzCTr77LFGZamG2WGeK36hKb+ucka7dVFReTF4JsYEPoqda4+9GSYJOlbFdmREMPA5jAvEkiRyiTFJqnq83swBCprGF5IGg2x2f710hTdfYaBjYoGHGqwQhbqFEeD37kzIIv8RJwMLTwyB8yCorNMNBmCVm9ZnrmndK0LGEBOfTUf2KRG6MaNjTTKy0cL6xSeYtOiD8zluIy61zuS+PgLSHhV6q7ZOxP8IcgX6iWwXBugnx+lwVXtuue0SJvbYkzTLYavQgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ry0U/W76IArNNxVTn5KkJdqqmhPaBkL9pRwR98ggm90=;
 b=OJYkRqhxcXRonO4E7PQSr5C9T1298XS6cbYUfPE4syiMKjFRzb57TjpKT5tzOTBgb+YeibpA8eRhf+dPe2fuA6tbkSamz+XlSAht8qxNDV+Fw85QI/Omzvowa0WHCz6jSjVa8TshFmT6Bwyacyo6TUgwVAnTUdCkTnEcs+AYPXpGy/CF5FDz5NyxnlXdt3vCiFIpXpWdg/A9QsE9Uv997PCVKjDy+3cJLd05Uxcm3+MKx8FMVmAan3VEPG3gwSZyNUnozChpcyGIyY6+Rmsy04G8SLwqfywMrH1BWwI4cIhcPMlJyEdkboThkJkPnlcwx7OmYHpfa/XFJ47NCU9RzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SJ0PR11MB5920.namprd11.prod.outlook.com (2603:10b6:a03:42e::9)
 by DS0PR11MB7768.namprd11.prod.outlook.com (2603:10b6:8:138::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.39; Thu, 8 Feb
 2024 23:13:51 +0000
Received: from SJ0PR11MB5920.namprd11.prod.outlook.com
 ([fe80::f3ba:ff33:12be:cff7]) by SJ0PR11MB5920.namprd11.prod.outlook.com
 ([fe80::f3ba:ff33:12be:cff7%7]) with mapi id 15.20.7270.024; Thu, 8 Feb 2024
 23:13:49 +0000
Content-Type: multipart/alternative;
 boundary="------------OewSK5ZXKg3SnzrI0CTv25mS"
Message-ID: <a86c1fd2-f341-4575-9da0-6ab08d40539f@windriver.com>
Date: Thu, 8 Feb 2024 18:13:47 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto-autobuilder-helper] [PATCH] config.json: Try allowing a
 bit more parallelism
Content-Language: en-CA
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
        yocto@lists.yoctoproject.org
References: <20240208152707.2849716-1-richard.purdie@linuxfoundation.org>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <20240208152707.2849716-1-richard.purdie@linuxfoundation.org>
X-ClientProxiedBy: SJ0PR03CA0299.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::34) To SJ0PR11MB5920.namprd11.prod.outlook.com
 (2603:10b6:a03:42e::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5920:EE_|DS0PR11MB7768:EE_
X-MS-Office365-Filtering-Correlation-Id: 38fb2992-d6b7-47ac-8185-08dc28fb9be1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	RPXrAiKge+gEn59uuscliQo3ICnym/jPPj/VdMUWlyTt4gHjsvKeqxeRCmE7KGZUjPJc+pIYxnAnFLhD3NW9QmU7wKXZ8DQ0Inb6Hb90VAyMVafHEwGptkv47rtKcmdvRFIL2vsMQNNKE2gjcKPfkHkE7KS+7B+oXZ7ZocXDRYspRVe3jazkdE+avw18SpM6eO8kbITmmhIzbaAw0lMssvtayW27Nn46QmhhKMDmPx9r2Oz67by9YBzJfByG+El/aRLmUzjXTAr8h/3ITI0ZtYsVeRonI5kEfJwU4QSbZI4Ax5D0v2kjZOB4hpu+EX8/ylt5bl4ruydYL+5btsBElJKOhkDOGPov0GNitfGFcaUtoR/RWExDfQPJEP4uL+IHPYo0SddFaNSrAnbLc2Id1yLL4E6FOo9EFmJLwDwtpTEJJQH1tP5BBS3nAdv7CZ87zIFzQgWVW8qX6URYtb11SHAxLwoQBp8jMWWixoE5hPG7y0J26bCFMP6HTmJpnZs/v84oM0ruSe2+FGiha1cCsfM9jplksx6wGoxVR4MyXk7OnPOS83A5RYd7TsBnX/78
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB5920.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(346002)(396003)(376002)(366004)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(31696002)(86362001)(83380400001)(6486002)(53546011)(38100700002)(478600001)(2616005)(66476007)(66556008)(26005)(33964004)(66946007)(6506007)(316002)(6512007)(36756003)(5660300002)(2906002)(8936002)(8676002)(41300700001)(31686004);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?M2JpSTN6dlB4VS9jZzYycHlkdmRGd1p0clc3VXg3a0ZZOWVPRUVkUUJVVGxt?=
 =?utf-8?B?WG9JQng4WDMyMXZmamdWZ1RpeW1BWENwZHpXT0dQSFF1WS9kcW1PTWlMelZK?=
 =?utf-8?B?VWFjcTJBUVhsU2l4SERmWUljdnFmRkJLVmJua3RFYmZCeHEvT1dybVJjMkY4?=
 =?utf-8?B?cUc5bE5QK2prR1FBekhUR3hHQ2RkUFYyRGpJVDJJOWoxYXluVzk4VXVhemlR?=
 =?utf-8?B?WHJlN0k3U0xuZS8rVkZiZ2dxa29rekM2eHBGTjEyQUpDenpQRWp1VGViNmxN?=
 =?utf-8?B?Ym96NTErWWc1RUlEa3F4WWZVZUw2WkJEUERXcFFZQTg0ODU1aFBFRjhuOXJ1?=
 =?utf-8?B?VXJJQUUwVHFNR3d1QW4xZmNDMDMwSUF1KzE5bEZlZzBEa1YxdWdqRnB3MUVv?=
 =?utf-8?B?UDBXOWZXNDRTbGdnY1Z4VTBoQlp2dkZWeDY1Ni9uUEdUbVBVc0JzMGdBWk9C?=
 =?utf-8?B?L3VJVGR3QjgyWkEzZ1J5M0xxenMwUWkySkNrVGlSYnZFNXF3QUJwSGlBeGFx?=
 =?utf-8?B?UGsvNEhzT3RBSFVqcDdNblpuaWxDKzhEaWxjYzNJaWZKY1JhWTEvVWpQZUV6?=
 =?utf-8?B?YWwycVYzVGU3dU1icjVUa0Y5dmFTZm1ibTM1cTA4NHJYc21tUFFhRjNlV3hi?=
 =?utf-8?B?Ni9BZjdjMERvQXV2cVJPMFdEN0lJaDdscEVpcklKdFlSS3dPWmdEcE5qQXhI?=
 =?utf-8?B?QUJ0NStGeUpmTlF3RHU4V1VEK1BxR2FZZHBmMGpZcFNWRzY5TkZJRkh3cElY?=
 =?utf-8?B?WVFlSk1JY3h3dlNyQTBsVWZEVzhNTS9McHZCelBhY3hPRnoyNmJYRitpbnlV?=
 =?utf-8?B?VDB0LzFwbVA2aWdnZkg3V0xHZEI0MVY5enRWKytMUTVBQUVTZTlpTlFHM21F?=
 =?utf-8?B?QkZwVWErR2FuaHgrenFCb3dUMGZWL000aFJvaEhqNktFRm1QdXh6N3UwdXZN?=
 =?utf-8?B?ZzB3RjZoUGlhbHNOWWtJTklrTXV0bytENEoyNWNvM1V6R3F6TVN6ZGFpbXAv?=
 =?utf-8?B?ZFpyNGpXSzBKblk0a1FZcXYvcDA4VXM0VVZXWnlMRkNvaFpHSlVZMFVvVFZY?=
 =?utf-8?B?ZE1KOS9TbWVld0lhcCsrL1cyVWkwM0RFaG1IL0wzZ2xRc1c0WVJyTXlzbi8r?=
 =?utf-8?B?VE9TQy9BV2ZiRkZjbUFKNmxEN1F1T0c2cXJyRFlBbHR0MFZjR2FIWVBlM1FG?=
 =?utf-8?B?QW5WbldrQ3lURjhqNy9BdmlBSmVETXZuL2JLOHFoNE1VWTRaYmRDTFp6bUYw?=
 =?utf-8?B?MlQ4V0RGYklTOGdvdU5uYU5LNmgwUlJCV0ZpbHNOQ2tsNGlIcHBuZVovMGRT?=
 =?utf-8?B?R0JJcmZqSTFWZWl4YnM2aCtCNG50bEZKWjAzYTB4ZjF2VGhKa0ZHL2pRbk1t?=
 =?utf-8?B?dmhvNDVQeUxneklPNjl3ZlFIQVlBTjVsVzYrRmd1K0NZeUVGL0dOTG5PMHl5?=
 =?utf-8?B?bjJqRkwrOGliakIrai9zV1h6Z2F3c0hheUdlTzZnclNWTTdMSTVGQWRLb1Np?=
 =?utf-8?B?R0RhaUhBR1dpcXJWUGxESkxzdkIwL0RFYU41TUswQ2F4TzI0ZHFoZUQxKzlT?=
 =?utf-8?B?c2k2TEVRenYySUtabVBxckVWbXFGeGtXeFExUkhhdkNGbmRaL1pESDljK0dh?=
 =?utf-8?B?bUNJQkI5OUQzTDRMRzBObmlhczkxMGZqdHMwbTBQNkhaZkQyTmdEeTAvci80?=
 =?utf-8?B?R0JZa240UytXdEloZEV1UlAzWXB0V2JBL2I0Yko2WE55M1ErYTlaNndqR21o?=
 =?utf-8?B?L2U2UXdHbWpoU1dJc0ZkZmMwUlRqNlF0ckpZcWRMVTJrTDZqRTZjdk5XaDcw?=
 =?utf-8?B?L2gvZ3VGNi8xbzYyODh1SmdyaHZSVXNSVUxQb3NmL0RUalVqSG1lNFpIU3Ar?=
 =?utf-8?B?eFVmVXdGbTQ4ZEpFdnJneE1kakNubWFORzZwTTN4LzlHYXlEQmVDWGx2MFVq?=
 =?utf-8?B?U21QMjdoL0szdDB6c0hlMC9BdW56RWZQcTF0elYrK3pPbnRiaWRTWVVDRWNG?=
 =?utf-8?B?MDFCRzJGL1VHTjJuTTljc1JmRHJJbFZlMFZnaVlMeEczQzZEVmgrdXJ5Y2w5?=
 =?utf-8?B?OGRVMktBUE5tRDhWT1haanQ4QWNreG9qV3lKeDh5c2J4MHRaOThzL283WUVa?=
 =?utf-8?B?MW9Hajc0Ynd4SmwzZHQ3T2ljUUVUdFV6MWF1aEkvKytGai80Yk1PVXNWMEQ3?=
 =?utf-8?B?OVE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38fb2992-d6b7-47ac-8185-08dc28fb9be1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5920.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2024 23:13:49.8112
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Uz74sr0JwkrXJ3LDdMHdl/aH6os30XzGx97i3tE3i3Z/kJlZ2hCHV2g5bNqBWbQDT0HmUJTBeBg2oie6bIaxIvyzvHwskiFv6KZNHLz7zic=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7768
X-Proofpoint-ORIG-GUID: E7iRRw3QjDgn_02ahQK9hOgeY3bGz8Pz
X-Proofpoint-GUID: E7iRRw3QjDgn_02ahQK9hOgeY3bGz8Pz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-08_11,2024-02-08_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 malwarescore=0
 phishscore=0 mlxscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 spamscore=0 mlxlogscore=999 clxscore=1031
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2401310000
 definitions=main-2402080131
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 23:13:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62438

--------------OewSK5ZXKg3SnzrI0CTv25mS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2024-02-08 10:27 a.m., Richard Purdie wrote:
> Currently the autobuilders seem to run at 25% idle at times. We see a lof
> of bouncing on IO load and it appears the systems could cope with higher
> values.
>
> Increase the make load average, cpu and IO pressure limits a bit to
> see if build times improve.
>
> Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
> ---
>   config.json | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/config.json b/config.json
> index e8b51cd..7539aeb 100644
> --- a/config.json
> +++ b/config.json
> @@ -49,9 +49,9 @@
>               "BB_GENERATE_MIRROR_TARBALLS = '1'",
>               "BB_NUMBER_THREADS = '16'",
>               "BB_NUMBER_PARSE_THREADS = '16'",
> -            "PARALLEL_MAKE = '-j 16 -l 52'",
> -            "BB_PRESSURE_MAX_CPU = '10000'",
> -            "BB_PRESSURE_MAX_IO = '10000'",
> +            "PARALLEL_MAKE = '-j 16 -l 75'",
A value of 75 for the load average limit seems a bit high given that 
there are only 56 v-cores on these machines
but maybe that limit won't kick in if the pressure regulation works.

I really need to fix and write tests for the pressure regulation but I'm 
just not able to make the time these days. Sorry.

I guess this change is worth a try to get more data.

../Randy

> +            "BB_PRESSURE_MAX_CPU = '20000'",
> +            "BB_PRESSURE_MAX_IO = '20000'",
>               "XZ_MEMLIMIT = '5%'",
>               "XZ_THREADS = '8'",
>               "ZSTD_THREADS = '8'",


-- 
# Randy MacLeod
# Wind River Linux

--------------OewSK5ZXKg3SnzrI0CTv25mS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2024-02-08 10:27 a.m., Richard
      Purdie wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20240208152707.2849716-1-richard.purdie@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">Currently the autobuilders seem to run at 25% idle at times. We see a lof
of bouncing on IO load and it appears the systems could cope with higher
values.

Increase the make load average, cpu and IO pressure limits a bit to
see if build times improve.

Signed-off-by: Richard Purdie <a class="moz-txt-link-rfc2396E" href="mailto:richard.purdie@linuxfoundation.org">&lt;richard.purdie@linuxfoundation.org&gt;</a>
---
 config.json | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/config.json b/config.json
index e8b51cd..7539aeb 100644
--- a/config.json
+++ b/config.json
@@ -49,9 +49,9 @@
             &quot;BB_GENERATE_MIRROR_TARBALLS = '1'&quot;,
             &quot;BB_NUMBER_THREADS = '16'&quot;,
             &quot;BB_NUMBER_PARSE_THREADS = '16'&quot;,
-            &quot;PARALLEL_MAKE = '-j 16 -l 52'&quot;,
-            &quot;BB_PRESSURE_MAX_CPU = '10000'&quot;,
-            &quot;BB_PRESSURE_MAX_IO = '10000'&quot;,
+            &quot;PARALLEL_MAKE = '-j 16 -l 75'&quot;,</pre>
    </blockquote>
    A value of 75 for the load average limit seems a bit high given that
    there are only 56 v-cores on these machines <br>
    but maybe that limit won't kick in if the pressure regulation works.
    <p>I really need to fix and write tests for the pressure regulation
      but I'm just not able to make the time these days. Sorry.<br>
    </p>
    <p>I guess this change is worth a try to get more data.</p>
    <p>../Randy<br>
    </p>
    <blockquote type="cite" cite="mid:20240208152707.2849716-1-richard.purdie@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">
+            &quot;BB_PRESSURE_MAX_CPU = '20000'&quot;,
+            &quot;BB_PRESSURE_MAX_IO = '20000'&quot;,
             &quot;XZ_MEMLIMIT = '5%'&quot;,
             &quot;XZ_THREADS = '8'&quot;,
             &quot;ZSTD_THREADS = '8'&quot;,
</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------OewSK5ZXKg3SnzrI0CTv25mS--

