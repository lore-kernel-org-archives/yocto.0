Return-Path: <mingli.yu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D87F2ECAAD4
	for <webhook@archiver.kernel.org>; Mon, 29 Aug 2022 08:47:34 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.68475.1661762847793565006
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Aug 2022 01:47:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=KzT3dP7v;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=6240b32d85=mingli.yu@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27T8ZIow023172
	for <yocto@lists.yoctoproject.org>; Mon, 29 Aug 2022 01:47:27 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=message-id : date
 : subject : from : to : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=osjXp1Yrce0YPmYl8xJLwMHog04j2NjftOcgjpSSJfc=;
 b=KzT3dP7vqWOsrZWcUpYQMVKRTtosAGwlo/LtJWEhMw75bCrqX3m58DmCR5ZHEO/l2Uz8
 NANJLvVmvasnjKe7iFm3J+2e2xwRKZyBs9WiwT8ui6JMT1uiwSXMvuMZRmqHQaA8WjwB
 DBAsSZ6n4EDzcb8ueIcT60Q91eAO9Oy1ZEZ/EkheN8aM/oUMMnaxMtM5JmeVdB1j9k4U
 xovchu2R2dz3jV/eP3wRX2SIwuf78PsfqancBdz4NX3CBNedymS2Zs8mfZQpxjmS52jt
 A56aCT7WGMRic3kvxqFaSIJjw4bT2IFhYs2pf+4NAao86XzV3u7vzc6Wjwi/F1E/6BwC MQ==
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2107.outbound.protection.outlook.com [104.47.70.107])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j7jsk97rn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 29 Aug 2022 01:47:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G2LIORuBDY0GFQw3EQfKClq+ZlHtdJFbW9yZtP9zEYWFowAHinz6RXXP42tS1cNuDEHBLyzNEH8w6L7Zm+2MRmKj/hfcElRF3Kvholb3O1PJVzGzfvCyUvaac0fUp0+qwuZ1obJoUImKH8MnanLwRwPgk1SiRqkDEB7ORAvhCz0Iczok97DTvRQiIh6aKQrfq3Lu10qFZmTlVAuw3djXIGfeSt9o2/uX/MicWl9uKGTqZDUx0paYcD3vyUUq6wWej+jlBAyb9shuTSjI9WDQmZNmsK/kEFjiTzr2/m6IwxIiZRTUlPR6tOmKFC0801GgQEPO0N2VoXWCFqYWlooWYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=osjXp1Yrce0YPmYl8xJLwMHog04j2NjftOcgjpSSJfc=;
 b=iKTMtW0RmhBgWk7HyDcoIiDoooXELzbQfv7FuZqfwmbfXuyR2NWI0tYdFKgQjB75/hpaz1NCy1PKY+ToFpJoExa/fh0XOPrkFFXQRZCV3u96XBcp8BFFidCA++o8wVrdkomTkvdYdiA6zq9rOz7QclV08wPZFL0NBaOM/xr/Q1+xZcGsnovzKP1wm1SDILwuGAiDVAS1F1OtdYHVgtggFGZXLDGawaDeI1kwnUuasuvALyHYIUQMn160MlIsbFijx54d6EIRs7xc4qWRNZwD747S4QqCvPu+j0envDq3/6kJdpYr6iEA/BQ5eUMseeHTP3uy+3CK2xe33zPuA+YSag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11)
 by BN6PR11MB1410.namprd11.prod.outlook.com (2603:10b6:404:4a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Mon, 29 Aug
 2022 08:47:23 +0000
Received: from CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::fb:42c3:2c21:391a]) by CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::fb:42c3:2c21:391a%3]) with mapi id 15.20.5566.021; Mon, 29 Aug 2022
 08:47:22 +0000
Message-ID: <49a13783-b871-4472-eed5-031651f0de44@windriver.com>
Date: Mon, 29 Aug 2022 16:47:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [yocto] [meta-xilinx][PATCH] Use new variable
 LICENSE_FLAGS_ACCEPTED
Content-Language: en-US
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: yocto@lists.yoctoproject.org
References: <16E8B6F637C41AF8.27774@lists.yoctoproject.org>
In-Reply-To: <16E8B6F637C41AF8.27774@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SG2PR02CA0053.apcprd02.prod.outlook.com
 (2603:1096:4:54::17) To CO1PR11MB5009.namprd11.prod.outlook.com
 (2603:10b6:303:9e::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d8407109-56ae-4bc7-31af-08da899b16fa
X-MS-TrafficTypeDiagnostic: BN6PR11MB1410:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	6GHsmD0BraVgN3Pp/briHraLhu3QGkocDdvPCcFg+7xll6IpYAVoy/QJD75WRtr7VLCFBTsKCQvuz9KfKDMxe3JjIp+r69ECoZ00Aa7ryqt+1gb8YL6659kNPur3zjpJHQumwsQjz37Zn4ZQ9oV7kV4t0CmXkVjbf+wrdOrIi9tLbTJ7Mk7JFlnuqkQVfcgPMAMzBTCFg71ESx967RMCyGcm2x7AWrPbv32IkiCv/PglIBuwkDEflZoj6ezexevIG89rql9vkoLv8XmxnN+ZVZKfD6VocYOQHaTQleDyapvn9oVxtvKmRsZN6U7hAu7FO6HasGHABNN3WToG/Pj4fdnzAApzgYKcLgrvTTknv6XGYcZeagcLPgx/g/WsexfFzy1buRYeljqwDVa5yQFTsP0GlOVLXTffCvT/RW2QVI+6Ai6OAigG8ygugC6DX4sviBpwgNoghxOw8HPZPQhQNQkXLoagpDnWI0wLqoMrHjqVN//Nj7sncLfu6H2CoKvni2mVUGJJmCzAkS05AX+l2ZPR09pGnbzQf08zR7imAzbr2rqFo4vo6BSDor9O1XJXU+GDZrmSiQC2EC1E/LlBoFL9PQLJpacgAOVo3/v/wx4FObNp2tyOLsECQsdEbo+kqWrFXZKa7R6tZ+eorl28CgORV84kleGAuIeVr5nhLvKhLN+EPwmdIPEgON2+v0Xy+d3BX4qgJ4bdsH5482MNfPPd5jPibwMbg2LWTgcvv0oI5aX6RNVNjrbH7WHYSQiI9K/FaaEFHPk7hej8/LJSQngh2wEM3gK86jDH7RNnwzNMZfDm010JdMFVK+D4jNEFLlG7xJcj8ZHsrxOJOSv7IQQUniDyDl7E6wAXmu0TC9g=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5009.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(346002)(39840400004)(366004)(396003)(136003)(2616005)(6916009)(316002)(26005)(36756003)(6666004)(2906002)(83380400001)(53546011)(6506007)(6512007)(186003)(31686004)(86362001)(31696002)(966005)(6486002)(478600001)(5660300002)(41300700001)(8936002)(38100700002)(66556008)(66476007)(66946007)(8676002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OHo1NWJaNkVwaG1ncDlycnRXckpwdzAzY3ZESEhyNFM1TEYvTUdSRXhyMEcx?=
 =?utf-8?B?dkVWNHMrWkpBM1VVOWZIc0tCUlZwQmN6dlNHWlN2ZWlrUzJ6bEZ5QXNnVU85?=
 =?utf-8?B?MjdycXVJUDIvMjBsU0tabkU5R1c4RlBIU25xUmNQcXB0VFJ3RUNxL3FXU0kw?=
 =?utf-8?B?RDVpWktUdW4yQ3RNODhEMnNYaUMvYmk3OXMzMm0xbmVhVzZtWFZGK01EaTNt?=
 =?utf-8?B?QUEvT0lYZWNoYndQM0JndWUySHBXMFpRcURHdnFTRDhJVGNCQyt5RE9LUit5?=
 =?utf-8?B?SmVKdTVmOXpaWWxQSll4QzF6NGRablZDajQwWXlvUW00ZHRQUndWZ1NmTXV1?=
 =?utf-8?B?SlB0MzZlUFBadUlMeUt3VXFwWllMRHlmZTZYWnNLdTlxSzFLL1ZxUUQwSUdM?=
 =?utf-8?B?Nm4wSlFxTitrZkVzZ09aTGZCY3dTcGFKNkROV3RSM3NvKzZnQXNFdmprUG1s?=
 =?utf-8?B?eGQ4citXQVR1OGJHOVlpSXhxcGh5azlKU0FDUjJNUHFDbjVjMEszTm9sZ2tF?=
 =?utf-8?B?R1BqZTYvaE5HWC90dHh2L3l3UmUxRVB0WWdqS1cwdFV4bkl3SE9xb2Qwam82?=
 =?utf-8?B?MjFmeERPV1U5N0lrd1pVV1BIb0hWLzFvcTcrVkVzZE0zUTBDNk9VclZqeG5n?=
 =?utf-8?B?bDF4aU85Zkt3NTVPWFNMTC9WWDNzamY5L1MrbG9sNmVQWU56aTY4ZjQ4TGNE?=
 =?utf-8?B?cHd4bTJXdTdiaEdaUTNlTERpNzhSUGQ2RHBuemVlZ29leTh2ZDh4bS9GcGNt?=
 =?utf-8?B?WDk5WDdZeUxxeXhXaDRnNm00UVpVQUhISG5WaENvWEV2MExzNm1QVWZWRVM2?=
 =?utf-8?B?QlREUGJGbkR6b3BqSnVVRkFBUHNWRGM2bDE1NTZLRnZtcUtKTElpZXFpYjRq?=
 =?utf-8?B?ODZhcHNvUDZDTTgrL0piRkxQOUZsR0pZQlh5YnpwanlnNHdxcmpLTWg1MEE5?=
 =?utf-8?B?SW5QRXBmdHdVNmRnOUpVbk55aUROaUJ1QzFQd3hWWFl2UFlJWXFVYS9neVB1?=
 =?utf-8?B?WExoN0ZXRnFtWEZYYVhheE9nekdueExHcFBJSk1OYnJtc0VhZmRxODZ3VXlJ?=
 =?utf-8?B?dFRsMTFGbCt5NjVucXEraisyK3FwdDBVM0tjL2ZlVStMYVhrZGF0STF2d1pm?=
 =?utf-8?B?c0ZOWC9sSVRqZlZSRzh3elpRL0pHazJwK3ZlM3hJNy8vVDZQM1JScGZReWtQ?=
 =?utf-8?B?U2IyRDlUTjdUamNCZXZCazl3RnZpdW1zZURLQ0ZiVVQzVWh6ZnhLSU9KRFJu?=
 =?utf-8?B?WlVWem5qMjU0RnkvQ2p5ZDgrSlJJSHBpbVJkbGJaUGYvVWp6Y2M3cmNPWHo4?=
 =?utf-8?B?N0RYUFFzcHdkSjN5aEZxTmlFWU9KNFZ1aEdNaVIwY29RaW4wYnR5cDVCNXkr?=
 =?utf-8?B?TGxXUXpRd3psdHRvOXFPY0pDVUlTM3F1TGhqRGFGNmJnbjMxVEVHY2VNd1hw?=
 =?utf-8?B?WHN0bFQzcUFqcVJsL1BBWkQ3UndycjlpRU5YcVk5Q1VydFRMVXhaSCtFdUVH?=
 =?utf-8?B?OEk2SFkrMitIbDFGODRSMDRXbGRVYzg3aUNFMms3S2IrUHZSMHRCdFNsU0J3?=
 =?utf-8?B?ZDJrTnlYcFhYb0k4U2JrK1h2MExsR2hZT1NNRDNtVUo4S2xNcE0wNXBnR21Q?=
 =?utf-8?B?alFWckdSekdabjQveVdaWUtUVk5TSDVVNzdqMUI0YXhjOEdJRjB2b0J0STlZ?=
 =?utf-8?B?SEZSR2pxL2Q4VmFQeUZRQVJYbk1xZm1DRk4xU29jaUo0MHk2L1lzUjM3a1Rk?=
 =?utf-8?B?K0syaUlHNDJzcGdMNVRBMkh4N1ZMVVhtdXRoWGtyYjlUWVdySG5ZNWpCWEFR?=
 =?utf-8?B?NWxTZkdyci9UV2gzWGYwemk4dGcwZW5iTFdScTZmL1g3dHJCOWlwaEhJK2Zq?=
 =?utf-8?B?eS94UnBPL2ltbVVoTURzREl4WFA2Y29hRXMwa3cwaWNhNDhtK2lCQ0pwOXlJ?=
 =?utf-8?B?eUZpeEovSVA3RGVGelNvb3FMOHhKMDE1aVFkL1cza2VhbitLR1B1dkN6b0I2?=
 =?utf-8?B?a1A5ajl6cVNmdWhLQy9QNy93YzRnMy9iYVJ1bjMwd2phRVFNOFhuZGdoakk2?=
 =?utf-8?B?alJBU3gvcnF3K01FdDdKaEhHZFlPMis4bjB4akI4TWUwZ0F0Wk9jSGJVdXR5?=
 =?utf-8?Q?Prfz5yvuuZjOYv2Wb8JT7VmLJ?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 d8407109-56ae-4bc7-31af-08da899b16fa
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2022 08:47:22.7746
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 szS+DRer1BZhlP5m4Pc8LRJqce3nCYpfrNDyXH+J8JM46GpCZh6DZSBcZP29cU1xcaVhgCoAZmTtrncx8KL32A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1410
X-Proofpoint-GUID: Z9LgZ8vvWdaPpNwDLEWu7mdAHkLgIgGh
X-Proofpoint-ORIG-GUID: Z9LgZ8vvWdaPpNwDLEWu7mdAHkLgIgGh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-29_04,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501
 malwarescore=0 adultscore=0 suspectscore=0 impostorscore=0 mlxlogscore=805
 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2207270000
 definitions=main-2208290043
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Aug 2022 08:47:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57933

Ping.

Thanks,

On 4/24/22 11:20, Yu, Mingli wrote:
> From: Mingli Yu <mingli.yu@windriver.com>
> 
> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> ---
>   meta-xilinx-bsp/README.md       | 4 ++--
>   meta-xilinx-core/README.md      | 4 ++--
>   meta-xilinx-core/README.qemu.md | 4 ++--
>   3 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/meta-xilinx-bsp/README.md b/meta-xilinx-bsp/README.md
> index e4142861..85a5b38f 100644
> --- a/meta-xilinx-bsp/README.md
> +++ b/meta-xilinx-bsp/README.md
> @@ -73,11 +73,11 @@ In order to use recipes that rely on restricted content the `xilinx` license
>   flag must be white-listed in the build configuration (e.g. `local.conf`). This
>   can be done on a per package basis:
>   
> -	LICENSE_FLAGS_WHITELIST += "xilinx_pmu-rom"
> +	LICENSE_FLAGS_ACCEPTED += "xilinx_pmu-rom"
>   
>   or generally:
>   
> -	LICENSE_FLAGS_WHITELIST += "xilinx"
> +	LICENSE_FLAGS_ACCEPTED += "xilinx"
>   
>   Generally speaking Xilinx content that is provided as a restricted download
>   cannot be obtained without a Xilinx account, in order to use this content you
> diff --git a/meta-xilinx-core/README.md b/meta-xilinx-core/README.md
> index 8997760c..3fae999f 100644
> --- a/meta-xilinx-core/README.md
> +++ b/meta-xilinx-core/README.md
> @@ -72,11 +72,11 @@ In order to use recipes that rely on restricted content the `xilinx` license
>   flag must be white-listed in the build configuration (e.g. `local.conf`). This
>   can be done on a per package basis:
>   
> -	LICENSE_FLAGS_WHITELIST += "xilinx_pmu-rom-native"
> +	LICENSE_FLAGS_ACCEPTED += "xilinx_pmu-rom-native"
>   
>   or generally:
>   
> -	LICENSE_FLAGS_WHITELIST += "xilinx"
> +	LICENSE_FLAGS_ACCEPTED += "xilinx"
>   
>   Generally speaking Xilinx content that is provided as a restricted download
>   cannot be obtained without a Xilinx account, in order to use this content you
> diff --git a/meta-xilinx-core/README.qemu.md b/meta-xilinx-core/README.qemu.md
> index d0040b09..5cc599a4 100644
> --- a/meta-xilinx-core/README.qemu.md
> +++ b/meta-xilinx-core/README.qemu.md
> @@ -10,11 +10,11 @@ The PMU ROM is available for download, and a specific recipe has been created
>   to make this available: pmu-rom-native.
>   
>   The license on the software is Xilinx proprietary, so you may be required to
> -enable the approprate LICENSE_FLAGS_WHITELIST to trigger the download.
> +enable the approprate LICENSE_FLAGS_ACCEPTED to trigger the download.
>   The license itself is available within the download at the URL referred to in
>   meta-xilinx-core/recipes-bsp/pmu-firmware/pmu-rom-native_2022.1.bb.
>   
>   Add the following to your local.conf to acknowledge you accept the proprietary
>   xilinx license.
>   
> -   LICENSE_FLAGS_WHITELIST:append = " xilinx"
> +   LICENSE_FLAGS_ACCEPTED:append = " xilinx"
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56854): https://lists.yoctoproject.org/g/yocto/message/56854
> Mute This Topic: https://lists.yoctoproject.org/mt/90659700/3618448
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mingli.yu@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

