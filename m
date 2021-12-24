Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48B9CC433EF
	for <webhook@archiver.kernel.org>; Fri, 24 Dec 2021 18:48:35 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.49016.1640371714265862141
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Dec 2021 10:48:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=g1wMF2a1;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=799255c497=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1BOImWj0027150;
	Fri, 24 Dec 2021 18:48:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=y8wibUJ8xUfdvvjpLbxgOYOJ2ZjCFdw0+ts80ECkzZk=;
 b=g1wMF2a10f9nCVkbR/9o4cvzCdiqjO0FHeQ34H3TuHW6H2oGR8yHk7RvXw8MZCxlHnzu
 xkqedmZM5cLxtEEKEITzVBH55aLWzIg3rKnoHtYfNjpsl3PSgd5NR6llrqok17UvBDYR
 OjYk+LQWY4eu+36s/k+mx2/ID9ZJ1MCBIIcXtxCgxOfPYu9J3LxhHVF+hPFVL7fxxQnp
 SQH8lyHXKxMY8cgvPJCPYCOO38Lzn1zA3M49/ACeOUNrUwrSGs0e167xVt/JaY+M1ENF
 vcodw7gyoATsA7HniM+fC4gNi20UiWxBRkBT375plaAqikOXGuIqnKwuZcgh0qQaSjOs Mw==
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2176.outbound.protection.outlook.com [104.47.56.176])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3d535e8gmx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 24 Dec 2021 18:48:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bGGu0k7CQozh1NsI++z4DHwvIEmTW9eqmffxtyLDpfBksKUBzFHTXFRjlNtWHVO7Q4rQDk+0K1FhtgN42sVWLQ1jhSPDZj7WWrtAe9GxV2Rri2mp7X564o7AOg3JxjKeVyw3MD4j5OZCV1oatH4A1+GghqjRx4IJ1yOCs5LjmgPHZQ2t1y7eCicP3VMNPFq9QrHBwqXm5HNLKQ70rY43S8OPOXoi96LQUd8x42VD+RM8SkdsNlyaPDvDEI/9FXefH8KVBqkFOo9sG7gFGu0wgraOnUBbopipf8A+yq9yZ6LwjAar7/gv/SNR3JN63z3VfB+6RFTWSJ5M3Xsm2V4C9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y8wibUJ8xUfdvvjpLbxgOYOJ2ZjCFdw0+ts80ECkzZk=;
 b=mv9t9q2k7d0Rb2MgATD0hbCYEVxDtJToRGHEQQSQAtLwvBTfXnRnS+kUd2oPPerJpYG3nMx33A0K+YY/FElaeOXuNF0HiRL7TtQ8+zz16jtbHT8PmrxCNGXqR/IcK6wveK2OoiStL+p/TG6fT7wMPgVkF6BZzAfPk91SbvntyM6P+lhN1WQfEsXK1QQXx0+jUzVvTsvbvAaYaKycii3boWG3Riln81onkYyEvGP+6Ps4feU0/3W2zPfSlv+gOH/DpcvZ7WPCyuiRQO0sY1be5QzCW4X8u/m8ahFSEaOH+s7zVcsxYcyOEKjKO/TrsmALMqddkDrZ14B2xmOCJrXDnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4724.namprd11.prod.outlook.com (2603:10b6:5:2ad::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.17; Fri, 24 Dec
 2021 18:48:30 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::2df5:9c7b:a045:37d8]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::2df5:9c7b:a045:37d8%5]) with mapi id 15.20.4823.021; Fri, 24 Dec 2021
 18:48:30 +0000
Subject: Re: [yocto] [meta-tensorflow][PATCH 3/3] tensorflow-lite: add recipe
To: Julien STEPHAN <jstephan@baylibre.com>, yocto@lists.yoctoproject.org,
        "Jia, Hongxu" <Hongxu.Jia@windriver.com>
References: <20211221084222.1442456-1-jstephan@baylibre.com>
 <20211221084222.1442456-3-jstephan@baylibre.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <9bf97639-b046-435a-434f-739f393f11b7@windriver.com>
Date: Fri, 24 Dec 2021 13:48:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20211221084222.1442456-3-jstephan@baylibre.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR11CA0064.namprd11.prod.outlook.com
 (2603:10b6:a03:80::41) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 364efd87-8e4f-4be0-4605-08d9c70dfa31
X-MS-TrafficTypeDiagnostic: DM6PR11MB4724:EE_
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB47247BC215A79858BB9BEC34F87F9@DM6PR11MB4724.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:224;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qPHOFI3RbvJoo+TiY2X0PjSGb4N50eGmR3I6CTvAykhwT8oh6A6qs642gFLJJrrPfY3lWyJFtGnwq3kOcdjMlGiVpj/kO7qob+tdo0P0Q1VUHZBBY8/SHdKdEe/bdlYgrK3DD1lmwHZuHWXjpUY1dDavxJxCxdmXOT+YvZFH3zPfjR5I6KNbPtx9FxdJET14SOO2WFrEIfO+YsnoHjipu58/+a4RMmfrSIWyxhCkJKXIemP3E4cYagKetAC8wZUSohfqtKxS7Y8OA4245FR6vqDSLtfyQtPeBFqL0hYlqa8SxLJd5SwEf2zxPQZvNZ6VSUbOdGVJTwEKBY1pYvmR5Zp6+jiCBS5mlPgWUmZB1xANSwxoVX6Wee4J1zqlRX3HDGHvmSOT8NbdFgl8f4G/tZH7ufG9t9YEQcwr7vFyMRGjxXMGhtu0nYPWttUT3V53+cToIwndZefmGWRM9I4dGe0WeNH4VVpnMrr5q4U4BO3xEI/KSEFUla0m/4j20tZfg7IT+mg2xCV11FxElcTJSU6VLhZlkZS2Wj5lTStJ0InwyL202EprHd+JbgW53IQxGNPsAxN+3uIFsxjeQ+MSt4pFFILcM/Q8NfjOgvmEXO80VLp294Qhr3hMWujIuzXWGscQL1+VvmTb+TP2xp3rDfEKX9moDX7IMVoo86BA2qDcXK2O0k2m0sQILyp0xkaFm7Uv69tUYp8H/8InsUnX7mKM1AibrIREOlqyM8gPdJWlsAE0XvHbrytZw+pCaGQJFPZTjTP1jFJjCcxtJq2vu9VP4bwZdsKNlt3mjmLawu8O8IUP6RZBT7brGinBv7iaeusxbbPSj/M5Ofn+p1bf9vH5jwD0kSOpLRpEcbCprmOlg/m5c+r7jOkKoYQODeTJ/hBU/XhHDDtzXcpaWSd1BjV5Mt2XH+nID3DLNtaypWE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(36756003)(66556008)(66946007)(31696002)(966005)(66476007)(2906002)(110136005)(38350700002)(316002)(6666004)(8676002)(38100700002)(4001150100001)(52116002)(6486002)(6512007)(86362001)(8936002)(6636002)(53546011)(31686004)(2616005)(508600001)(83380400001)(6506007)(26005)(186003)(5660300002)(43740500002)(45980500001)(134885004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V0V2SVN0QVpFclVLb2duck9kNXhCWEJlMjZEWm02akYyazgyZ2VwTmtGaHc5?=
 =?utf-8?B?bm40a2xRRGFESzQ5ZTBzaHhZYnZIMnI0aEVweXNqZ09rcFVpdEFZK1VEdkNK?=
 =?utf-8?B?QkJPcmtwQmxLd0VaWGhMSjljd1c2QlB6SVBoTHRUQ1dPaUIwM0t2V01OSCtx?=
 =?utf-8?B?enV2cWgwcVZlOWVxVU9xb0tWcHFLSGRpS3ROakxqU0NzQi9TOFlSS2hndnpm?=
 =?utf-8?B?eHFSTERyeHVUeXplKzhidG9Wb1UxYnVxYmM0ZERxMDdBK1ZKUGYxU28yVlRG?=
 =?utf-8?B?UlliT2luZGZtQnhBV2xBUHBING1GWXl3STk1ZlJHci84V01XNE5CWTR3ajda?=
 =?utf-8?B?YXFBdEtxYitPK0dwSnA1cTdDMXNRNFRmZ1QyemJweTQ5K0NCQ3ZoaE50Sk9x?=
 =?utf-8?B?UlRZUzFlUDR1aE5aRVNsbHhoVG5OejgydGRRaUhwZTRwSTRVeVJwUllyVVlB?=
 =?utf-8?B?K25WK3JDeXVLSStBM3hnYVpFWGxCU204REJOeXBTUzRDZWIwMThBR2ZrTWNO?=
 =?utf-8?B?RW1kMHJwQlFrOUswelFNaG1RVit3Wkp5THFpVWhBamVuMGtFNkJZRGNRVjRV?=
 =?utf-8?B?MjF2U1VJaWN0YnRHNXVhUUd3TGtnbDBmRVpGZjZtVlRXR3dKTEJkenRHZ2Fs?=
 =?utf-8?B?ZGhTZWJ0c1R2ZDkwSTZ5VjRNTXR4b1p1aG1oWitNeUpPN0twSTRDdHJGR3Va?=
 =?utf-8?B?dzY0NkF0WUJGRlJ3SHZxcFlUSGVGWEhyRzRvVVlEZ0J3eWlRNzBsZFVzdWMz?=
 =?utf-8?B?M3FPMDVLcGp1K0lMVEV1YzIrWkxPV1MvR0JYRW5GQVVHMGlWeTlUV29MUHQ2?=
 =?utf-8?B?Q1R3ZnRlcEdJQzJKYWV0OVVPR0lRSm8yaHFtRHFDaDRsdmo5K3UrOXo5MFpk?=
 =?utf-8?B?Vm9pNHIzWVZNbG1wMFhDUnBsamR2djVWWDRnVThkT25tVDV3aHgySmJ5M21n?=
 =?utf-8?B?amVvR1J5dWVudmNhQTFmTGdWQzZDblp4QTlKc1luVjYxM1ZtUnhlZm80TE9I?=
 =?utf-8?B?YWwrNUgzY2ZBanV2UEp4YkpIdDIwSlhwWlVobDVLQ0s2N2RuRWlLcDVkMHlh?=
 =?utf-8?B?Y29nbmNuOWwyWm5LRU5wY0ZhRHp1MjJ3TWwyZnVzTXJBZFNHaDBoVTczVXZ3?=
 =?utf-8?B?MzYzOW5zNFNOaDB6T0RzL1BXZjRCYW1iVysyZUdQZ1Q0Q3g2a2lISUxpV0J2?=
 =?utf-8?B?Wi8rRkNURlRPOWRvZVcwblIvUDFBb25OQnhEV0VoT092V1JTT0t6Vi80enlV?=
 =?utf-8?B?QzdBMW55ZFhFbURPcllGZHBNY3RaZEhWRGtoSmtLL1FmYUNMOWs1RXMzWTE5?=
 =?utf-8?B?d3FBOGtlOGdRVVpLSnZaY3hmb05wL1dLaGNnNWpvdVA3U1lZZ1JNQjVWL1kz?=
 =?utf-8?B?Y3NmTXZOajFraHRMRXhLVG5rOUhvMkkwVnREUXBocUxyMGxTT0c2R0ZkSHpv?=
 =?utf-8?B?Q29menR4U0pvSEJFUDVRSmUrU3lVdzBSNWtGM1pia3V3a1JyU041QndKaDZ1?=
 =?utf-8?B?SGNSMXpQUkloQ2tYTTJzcWVEUE9icUtPZXBGYVVGaThLRzFJVnIvUmk3RkQy?=
 =?utf-8?B?akdpMitWTWlJTVRHc1JsK25zVGlYaTlSeVpEbFJhTHd3eEhic01vZTNwQUhw?=
 =?utf-8?B?c1FibTJLY0lCUjk4NXZpRE9wYU84SXYxTWt3amw5Ty9zM1hKaC9Vc2JENWc1?=
 =?utf-8?B?ZmVjSmczRW1uUXJCQ1k2cUZna3ZiNElrSmdOdDZhZlJ0NkJReG0ybXQ2NXU2?=
 =?utf-8?B?WkRERDZ0d2ZXZHA2K3BSNnVydVhuWWRHbEQ5NVRwR25PTENpN2tXLzRYU1dl?=
 =?utf-8?B?SnFLNlh3UHRlSjNmbC9xOW1rbCs4UFdqSlRab091dkxZLys5TDl4a0FRT0Vq?=
 =?utf-8?B?b2ZnUkFaUktpWDBjKzViaXRRMmUxU0hFcWdSODgwcy9ZOTZHekRKbjNtUVdw?=
 =?utf-8?B?ck1zODFPYjYvU2g0TXBiZEQ3cHVNVVNZVUtKOG4wWnlmVUhoUjZwRVBKV2FB?=
 =?utf-8?B?dzlmUWJmWVp4blpUYjc2ZmcyMGQ2STlaNkpVaE5Vby9lQVFaVDVtUU9OM3F1?=
 =?utf-8?B?bHVIWmJzaG9IcWg0R1J6YU1yWUZDc0hNRVdzS25sRUp2VXhoQUx4ZWgya0VU?=
 =?utf-8?B?Zm9vQy81MDJkNnFvb2ZXVzl0UmhDV1FWMkt6bzUvVjM1RTZPUDNYWUZ3MS8x?=
 =?utf-8?B?WlVsdlQwd2poMnd1MFZ4MS9jUERWL1FqNDBqNUt0U2NPZ0hzckcxVXkvNHh0?=
 =?utf-8?B?NVZma0tLVVlVdjE2dGdIMDVzTndBPT0=?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 364efd87-8e4f-4be0-4605-08d9c70dfa31
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2021 18:48:29.8639
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 GGpTk/a/ZoQU8s2XpzO0kFlS20NprCKoPGbQ+dObVmASpR10Jy5TNZIxL/vyMHgCODsXxxe8xNtsSbZzh1WJO/AD8kW3W/oVTbIvx+yMu/4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4724
X-Proofpoint-GUID: 3fxhAahbjbG1xm0CHyo-zIOzxYiE46yT
X-Proofpoint-ORIG-GUID: 3fxhAahbjbG1xm0CHyo-zIOzxYiE46yT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-24_11,2021-12-24_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 priorityscore=1501
 mlxlogscore=999 adultscore=0 suspectscore=0 mlxscore=0 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112240091
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Dec 2021 18:48:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55655

Thanks Stephan.

Hongxu, did you miss this?

../Randy

On 2021-12-21 3:42 a.m., Julien STEPHAN wrote:
> Adding 2.6.1 tensorflow-lite recipe.
> This recipe is directly based on the corresponding 2.6.1 tensorflow
> recipe.
> 
> It has been build tested with latest honister and tested on
> several mediatek soc using benchmark_model and label_image (C++ and
> python)
> 
> Signed-off-by: Julien STEPHAN <jstephan@baylibre.com>
> ---
>   .../tensorflow/tensorflow-lite_2.6.1.bb       | 156 ++++++++++++++++++
>   1 file changed, 156 insertions(+)
>   create mode 100644 recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb
> 
> diff --git a/recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb b/recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb
> new file mode 100644
> index 0000000..104e5a3
> --- /dev/null
> +++ b/recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb
> @@ -0,0 +1,156 @@
> +include tensorflow.inc
> +
> +SRC_URI += " \
> +           file://0001-add-yocto-toolchain-to-support-cross-compiling.patch \
> +           file://0001-fix-build-tensorflow-lite-examples-label_image-label.patch \
> +           file://0001-label_image-tweak-default-model-location.patch \
> +           file://0001-label_image.lite-tweak-default-model-location.patch \
> +           file://0001-CheckFeatureOrDie-use-warning-to-avoid-die.patch \
> +           file://0001-support-32-bit-x64-and-arm-for-yocto.patch \
> +           file://0001-Revert-set-distinct_host_configuration-false-by-defa.patch \
> +           file://0001-fix-default-Bazel-toolchain-not-work.patch \
> +           file://0001-distutils-is-deprecated-in-Python-3.10-cross.patch \
> +           file://BUILD.in \
> +           file://BUILD.yocto_compiler \
> +           file://cc_config.bzl.tpl \
> +           file://yocto_compiler_configure.bzl \
> +          "
> +
> +SRC_URI += "https://storage.googleapis.com/download.tensorflow.org/models/inception_v3_2016_08_28_frozen.pb.tar.gz;name=model-inv3"
> +SRC_URI[model-inv3.md5sum] = "a904ddf15593d03c7dd786d552e22d73"
> +SRC_URI[model-inv3.sha256sum] = "7045b72a954af4dce36346f478610acdccbf149168fa25c78e54e32f0c723d6d"
> +
> +SRC_URI += "https://storage.googleapis.com/download.tensorflow.org/models/tflite/mobilenet_v1_1.0_224_quant_and_labels.zip;name=model-mobv1"
> +SRC_URI[model-mobv1.md5sum] = "38ac0c626947875bd311ef96c8baab62"
> +SRC_URI[model-mobv1.sha256sum] = "2f8054076cf655e1a73778a49bd8fd0306d32b290b7e576dda9574f00f186c0f"
> +
> +RDEPENDS:${PN} += " \
> +    python3 \
> +    python3-core \
> +    python3-numpy \
> +"
> +
> +export PYTHON_BIN_PATH="${PYTHON}"
> +export PYTHON_LIB_PATH="${STAGING_LIBDIR_NATIVE}/${PYTHON_DIR}/site-packages"
> +
> +export CROSSTOOL_PYTHON_INCLUDE_PATH="${STAGING_INCDIR}/python${PYTHON_BASEVERSION}${PYTHON_ABI}"
> +
> +do_configure:append () {
> +    if [ ! -e ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-target.h ];then
> +        mv ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig.h ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-target.h
> +    fi
> +
> +    install -m 644 ${STAGING_INCDIR_NATIVE}/python${PYTHON_BASEVERSION}${PYTHON_ABI}/pyconfig.h \
> +       ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-native.h
> +
> +    cat > ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig.h <<ENDOF
> +#if defined (_PYTHON_INCLUDE_TARGET)
> +#include "pyconfig-target.h"
> +#elif defined (_PYTHON_INCLUDE_NATIVE)
> +#include "pyconfig-native.h"
> +#else
> +#error "_PYTHON_INCLUDE_TARGET or _PYTHON_INCLUDE_NATIVE is not defined"
> +#endif // End of #if defined (_PYTHON_INCLUDE_TARGET)
> +
> +ENDOF
> +
> +    mkdir -p ${S}/third_party/toolchains/yocto/
> +    sed "s#%%CPU%%#${BAZEL_TARGET_CPU}#g" ${WORKDIR}/BUILD.in  > ${S}/third_party/toolchains/yocto/BUILD
> +    chmod 644 ${S}/third_party/toolchains/yocto/BUILD
> +    install -m 644 ${WORKDIR}/cc_config.bzl.tpl ${S}/third_party/toolchains/yocto/
> +    install -m 644 ${WORKDIR}/yocto_compiler_configure.bzl ${S}/third_party/toolchains/yocto/
> +    install -m 644 ${WORKDIR}/BUILD.yocto_compiler ${S}
> +
> +    CT_NAME=$(echo ${HOST_PREFIX} | rev | cut -c 2- | rev)
> +    SED_COMMAND="s#%%CT_NAME%%#${CT_NAME}#g"
> +    SED_COMMAND="${SED_COMMAND}; s#%%WORKDIR%%#${WORKDIR}#g"
> +    SED_COMMAND="${SED_COMMAND}; s#%%YOCTO_COMPILER_PATH%%#${BAZEL_OUTPUTBASE_DIR}/external/yocto_compiler#g"
> +
> +    sed -i "${SED_COMMAND}" ${S}/BUILD.yocto_compiler \
> +                            ${S}/WORKSPACE
> +
> +    ${TF_CONFIG} \
> +    ./configure
> +}
> +
> +TF_TARGET_EXTRA ??= ""
> +
> +export CUSTOM_BAZEL_FLAGS = " \
> +    ${TF_ARGS_EXTRA} \
> +    --jobs=auto \
> +    -c opt \
> +    --cpu=${BAZEL_TARGET_CPU} \
> +    --crosstool_top=@local_config_yocto_compiler//:toolchain \
> +    --host_crosstool_top=@bazel_tools//tools/cpp:toolchain \
> +"
> +
> +do_compile () {
> +    export CT_NAME=$(echo ${HOST_PREFIX} | rev | cut -c 2- | rev)
> +    unset CC
> +
> +    ${BAZEL} build \
> +        ${CUSTOM_BAZEL_FLAGS} \
> +        --copt -DTF_LITE_DISABLE_X86_NEON --copt -DMESA_EGL_NO_X11_HEADERS \
> +        tensorflow/lite:libtensorflowlite.so \
> +        tensorflow/lite/tools/benchmark:benchmark_model \
> +        //tensorflow/lite/examples/label_image:label_image \
> +        ${TF_TARGET_EXTRA}
> +
> +    # build pip package
> +    ${S}/tensorflow/lite/tools/pip_package/build_pip_package_with_bazel.sh
> +
> +}
> +
> +do_install() {
> +    install -d ${D}${libdir}
> +    install -m 644 ${S}/bazel-bin/tensorflow/lite/libtensorflowlite.so \
> +        ${D}${libdir}
> +
> +    install -d ${D}${sbindir}
> +    install -m 755 ${S}/bazel-bin/tensorflow/lite/tools/benchmark/benchmark_model \
> +        ${D}${sbindir}
> +
> +    install -m 755 ${S}/bazel-bin/tensorflow/lite/examples/label_image/label_image \
> +        ${D}${sbindir}/label_image
> +
> +    install -d ${D}${datadir}/label_image
> +    install -m 644 ${WORKDIR}/imagenet_slim_labels.txt ${D}${datadir}/label_image
> +    install -m 644 ${WORKDIR}/inception_v3_2016_08_28_frozen.pb \
> +        ${D}${datadir}/label_image
> +    install -m 644 ${S}/tensorflow/examples/label_image/data/grace_hopper.jpg \
> +        ${D}${datadir}/label_image
> +
> +    install -m 644 ${WORKDIR}/labels_mobilenet_quant_v1_224.txt ${D}${datadir}/label_image
> +    install -m 644 ${WORKDIR}/mobilenet_v1_1.0_224_quant.tflite \
> +        ${D}${datadir}/label_image
> +    install -m 644 ${S}/tensorflow/lite/examples/label_image/testdata/grace_hopper.bmp \
> +        ${D}${datadir}/label_image
> +
> +
> +    #echo "Installing pip package"
> +    install -d ${D}/${PYTHON_SITEPACKAGES_DIR}
> +    ${STAGING_BINDIR_NATIVE}/pip3 install --disable-pip-version-check -v \
> +        -t ${D}/${PYTHON_SITEPACKAGES_DIR} --no-cache-dir --no-deps \
> +        ${S}/tensorflow/lite/tools/pip_package/gen/tflite_pip/python3/dist/tflite_runtime-${PV}-*.whl
> +
> +}
> +
> +FILES:${PN} += "${libdir} ${sbindir} ${datadir}/*"
> +INSANE_SKIP:${PN} += "dev-so \
> +                      already-stripped \
> +                     "
> +
> +SOLIBS = ".so"
> +FILES_SOLIBSDEV = ""
> +ALLOW_EMPTY:${PN} = "1"
> +
> +FILES:${PN} += "${libdir} /home/root/*"
> +
> +inherit siteinfo unsupportarch
> +python __anonymous() {
> +    if d.getVar("SITEINFO_ENDIANNESS") == 'be':
> +        msg =  "\nIt failed to use pre-build model to do predict/inference on big-endian platform"
> +        msg += "\n(such as qemumips), since upstream does not support big-endian very well."
> +        msg += "\nDetails: https://github.com/tensorflow/tensorflow/issues/16364"
> +        bb.warn(msg)
> +}
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55634): https://lists.yoctoproject.org/g/yocto/message/55634
> Mute This Topic: https://lists.yoctoproject.org/mt/87873857/3616765
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [randy.macleod@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


-- 
# Randy MacLeod
# Wind River Linux


