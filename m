Return-Path: <mingli.yu@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE80AC32793
	for <webhook@archiver.kernel.org>; Wed, 18 Jan 2023 08:43:52 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.11033.1674031422998020738
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Jan 2023 00:43:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=IDbFIwXc;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=038298c7c5=mingli.yu@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 30I7vLkc024899
	for <yocto@lists.yoctoproject.org>; Wed, 18 Jan 2023 08:43:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=message-id : date
 : subject : from : to : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=sdOZ4+2bWThQGQJvWWkJlzkaQWU9xXIYsqwyO+ovFMA=;
 b=IDbFIwXcFPrJdupTdhfvtBKN2ZRZt0Wt4HsetF0RJMuZA47KzOLfeRGRCiYuNTOJFLeZ
 VTjLfeRxSLhmVnqmTu7jVTocbZJh2j4p8qzWS6AIykKrnDbkQXbTf72SwjuWfNv7vh27
 jxYVGu19QxOItEhpTa++8gPtxBIcFl5nZQ/AXce439knZjFlABNUA4qjjwGKCsl5ZcNu
 ydgnCY8kbRF4pDKNiSbk2K+bUfi+b5iTW3DdtDjGqX1idZk4aPtP3Nv/bEoqMnlFl8Ji
 B5ked8/vXYFiIsF0LzURikpgRNVt9wQjiT/bqU4YcvK5XckeHd5VMvXr2TXAsYdoMLs0 QQ== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2043.outbound.protection.outlook.com [104.47.66.43])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3n3jx6kv4h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 18 Jan 2023 08:43:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iNqkKgeOrZvvBp6/NI+k7LjZLgEamkgHGzbi47eEq8ZwtRzrvKIzQZXIt7KNAsmchH4Be3oDJBO5xo3tp+IgOMBmAMC6AhMVvPPcf34Hcp9nhM/+23OY/vnIQhcUnmgtmlSgPUCq4c+OGsXetIYrsdIsSQqsv5fSxkE6HJ3Ph5DY+A09kN5Y3rDU57S+PIh5K0eSidHfHCk8DD+jSUdf5eKcolttkD83HIfWd0aHMFAayd++uIcADLPKWsFHJnwfWbVO0cw122BhJn0aJunALLpROkrvH0mGck9J4uQL5GcY/PaagQ5RqMS6YQbs21Umph/Q94HtrFu7N5qEvmOOhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sdOZ4+2bWThQGQJvWWkJlzkaQWU9xXIYsqwyO+ovFMA=;
 b=nDqhzJzSYLqiIY1FcFVIDqrEBZPpcQLD8TJbfsy/dt3TZh4ZjSSid8qe4pK8ECMig2BUBisyeug0FqxZcDLiAXCIiR7cSfYULs3/LGYIvdiU6QVEggipXki7+oHiZjZzNFor7bPfWfOd2Hx5hzhQxLz92mRkhTbqOXCvkZuoU1XnApSUKsvUOk2QJvXuf63iyt4c+N55c2Z4L0LS3fao/Mq8kdBFrcgwzjxNfmNQt0C4bgFCJBTjb645eN1TzQx41lwF7pWm6uxLFNa+pOrFtdk8Ik69TY0ij/r5d7GybhSjG0Z5+WOqAxx7VIBGWjxhYAj0NhfEUz7WbPPrF5ou0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11)
 by PH7PR11MB6524.namprd11.prod.outlook.com (2603:10b6:510:210::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.24; Wed, 18 Jan
 2023 08:43:38 +0000
Received: from CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::c0fd:6b71:8808:4c21]) by CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::c0fd:6b71:8808:4c21%6]) with mapi id 15.20.6002.013; Wed, 18 Jan 2023
 08:43:38 +0000
Message-ID: <a9a02594-cf52-8c2f-758a-4f0cf2bb3ec1@windriver.com>
Date: Wed, 18 Jan 2023 16:43:33 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [yocto] [meta-gplv2][PATCH] readline: add config file for
 pkgconfig
Content-Language: en-US
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: yocto@lists.yoctoproject.org
References: <16E4FF25202E130D.32496@lists.yoctoproject.org>
In-Reply-To: <16E4FF25202E130D.32496@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0115.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::30) To CO1PR11MB5009.namprd11.prod.outlook.com
 (2603:10b6:303:9e::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5009:EE_|PH7PR11MB6524:EE_
X-MS-Office365-Filtering-Correlation-Id: 39c3c977-8d9f-4b8f-43d3-08daf93017bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Hm82an0anNKiRI/M8r8AXvwSIjHZErI7Jc5Uw0WnjHCMK0PCcvAXc3E7fjJrR488jwepXdZLh+qtiGgppbkiWIBTeImCqvfJq4FQoyqjh4e8Y4lM/Rry7zG1Mc3AOD0n342E368A02puN9Bjwom12aLZWzQ1xKUTPJf/w29acJDt5Ev94JbCrr8TPByQQWGVJhq/vDsn/GhpObDszAnWbG2pu4d2otfw0IWjCdmZzBd/9rTWXjO0KRb3Iz6/o0gO6PB9IKXuY8w9aU+kmfH91WQD5BAMna7xBc7uy4jxn+tMd3gnQidEA7MRIo+9X1D9BEVnemWhcFGlTgqTYK82m2b+oluqfRPmpYV1ypl/H8Xbs1wC3oH7U/WqnUY20X+f3PvMuPffLTxbqwZjbehTFzFOGx6SGnYVYrwmfR2cd3XdwjQOqBJB5RZG9XJfHR2pmoPU7rHcrY1g6F1pYEy7WVw5wqdOyL0ky/scS8AZOPZQI7mm7V8fKG4n3aIvHLwOWiKZeBcaCltx/VokoMNeQe5MTrLZNphLJI30fJueyizakTqEaYzytQtoUcj9tRry9aPa3nPXfq8Kto8TK5xIZ54Km4D2JKlW08oAP7HJ9OqTsL78XmbMru+3WvnRBpo62UNWuQ7DTTrJJN2CtX7aYnAixA5mC094R8rQZ6tSpdKaGeL8j8mG/gjFUi/2svaSeWYYwfjDbZA7vH+J15CAOiCVzTuchdFE7lfr1DchvLTp0Uq8hRTRiE2htjoMh94GzVpyZ7V6ck47jPRbWlzxb8BKYFhteN5U4VHcPydQenlqjsHJKPRCplE7JR2dhnfsyprWNRwLIUR5lnGl7ZdbY6w0vGVVje2l2WjytjMaR4qQ63WLxhhlX+gmJvwJhTbjf0ovXbzypiNbcdJIWJFDHg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5009.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39850400004)(376002)(136003)(366004)(396003)(346002)(451199015)(66899015)(31686004)(86362001)(2906002)(66946007)(66556008)(66476007)(5660300002)(8936002)(19273905006)(31696002)(38100700002)(316002)(6666004)(53546011)(6486002)(966005)(6506007)(478600001)(36756003)(41300700001)(8676002)(6916009)(186003)(6512007)(83380400001)(26005)(2616005)(43740500002)(562404015)(45980500001)(563064011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?N0tpdlcza2cxK1pyc29EU0Y0VGFQbVg0VWxuTm9rbG8rQmJXN1ZTaHFwRStn?=
 =?utf-8?B?ZDZUR25MU0tURkM4eVVhUXo3MWNrbkVDcWsxbnVSSWdvNG1lZXEyb2hIMjJN?=
 =?utf-8?B?U0ZMYlI0dWlSTTdBWE1yK3JRVSt3bmIxSHpNUlVVeVg5SDgrQklkSTdGTFFz?=
 =?utf-8?B?UXpieXI3UXFMaGtKdGN4ZzRJZXNidjRGbUdIcGl0K3dSOGxoQ0dOb3dydlpt?=
 =?utf-8?B?Ni9OanhzMm1sb1VtcjZNWVBaQzc0M0w3UE1IMHZKdDhJZnRPKzUrKy9HTFhu?=
 =?utf-8?B?STRpU1pOVmdMZ2NyYUx5L0dTUnNydFk2VG9pdFVDeGt1bUorcXhGNzNvOG9E?=
 =?utf-8?B?cmp2NU0waFZuR01BR0plN1RpNzRjQ1lkRFVORm9qZW1sS3czaHp1TE5jVjRM?=
 =?utf-8?B?ME96Sjh6Qm5Ba2NMT3o0dG5aS050ekN6UVgyUm51dlBYOXNVdmt1QWo2Wm4x?=
 =?utf-8?B?Wjhyd3RSUlgvRG1wdlFHRDdGQU9PM0drdW5jZnlJMUQvcEl5Uzk3WnpFWVli?=
 =?utf-8?B?YVpoaVdWZG13U2d3ZVp0KzM1aDFqWEs3ZVpqYnB2SzFnREdHWlVJZVZncTcv?=
 =?utf-8?B?UG56RDFCV2xxWnhOS0JIeUI0azU0b2tWZVZ2MFZ6TzdCbncvb1hhOTR0WDV2?=
 =?utf-8?B?MXNOZ2d6cUxYNThiSUZnajczZmJ4WFJKemtRUExzejhZeVdnYllwYWd0S052?=
 =?utf-8?B?eUg1T1RrUlc3ZWZ5bTk1VzVycjcrenpCYldhbElTTXN6bi91WTNoNk1ka2hY?=
 =?utf-8?B?eTczQ05GUWhXRTAzWnJYaGdtNnVINytVWElCSkpnZHdOR2QybmtGazVkU2VN?=
 =?utf-8?B?NmlTd0lMQTVRbGlHTmdsTHVuRnpGM2d4OFFETEtFemlqQU8wL2haTmFLc2Zh?=
 =?utf-8?B?Lzh2U1JWZjh0QlVqMkdOcm5uc0ZQQjluVm1Jei8vSjlqOGZ6Qys1bmZqNHFT?=
 =?utf-8?B?M0lDZzl4WW1iNDFPM0JiU0U5QnhRQ0dNb0xoMk5vMkd0SjlQWm4xTENpRktr?=
 =?utf-8?B?ZXgrcHhMcDBBWVZkU2hGbDdrRU5ncTlEMG55VEJkY2Naa0pIcHNRM0hveDlR?=
 =?utf-8?B?ekErS3Nob3FRdkJMbWVxTHJDZlNsSUdLNFRzVEduL3djYlUxT21hN3ROWC9Q?=
 =?utf-8?B?UXJMdXdWM29GMm5PMG9taGFIOXo3Vm1jYThJeTdETysycjNIdUkyMGpLdEhV?=
 =?utf-8?B?OXdsK1ZHbUtwZVBWQjR1YmRFYVBubllsMkhrQ1h3YWRJMzllSDk1eExXZGRD?=
 =?utf-8?B?MXNocUNZV0ZtakdGY1BMUWg0ODgrOUptZzkrYUQ0NjRuMGZPZ1FYY0lSakx4?=
 =?utf-8?B?YXdpOGtqMjBmdVRZUXlDTEYyMGZrcUIvTlZYelhqRnRJdGNlSXNUUlRmcHYw?=
 =?utf-8?B?UGdTb1JQTW5FY3hrZkxsS2xldHJaRWJIZy9Fb0hMK0hWTmswY28zcjFySzhZ?=
 =?utf-8?B?azZqTnc4cHIrS2k5aEwxSTRubFNCL2tZcEsrdk0yMUxFTWQ4Q3JsTGZzTTF1?=
 =?utf-8?B?M1JLTnM5S1JNaFpYYkJjU2prM1U4YXVmT2VHcEZjSXV2NWQvbzdDb2g5VFlC?=
 =?utf-8?B?VE5UWFZ3U0U0MVphamcyMDBHQjlDcFY2V3dFN2VYdXl1MFA2RDhuTFNGeGNQ?=
 =?utf-8?B?U25na21ZdEpNUTJMZFZWTUxzaTFlWWJHWDJIMWtpQ3MwNDFmSDRtQnhSZmpi?=
 =?utf-8?B?bGtDak92ek9Rb2FxSVRhVHJubm5TcnA3bkQycWpmREhSZmFzY2ZBeFRUN2xo?=
 =?utf-8?B?TFZRb1JkSnY4NmVVZjZib0tRRlRwVFZJZzNCZ3pqMzN1VkFxcGcvTFhycWRk?=
 =?utf-8?B?SFM1b3hYdlpkdS9RcC9nYTJObS9JZVU2V082ZzBxWU9sY2tYbTc0L0trU3FH?=
 =?utf-8?B?dHNEbXBTTHlrTnpHMkFkZEMrYmxIV1E0eGRpc2ZkZnJYSzYzZ1BuVWFKUmlk?=
 =?utf-8?B?Z01MMWtNdkhhT3NOQkFDSG9JN2pQK0dFc1c4cXZ1c3A2RGJQVXZzWVJNYzhU?=
 =?utf-8?B?NW8rSmJIOUg1c1R2K0VQTDFWaFJpajJXNHEyY093U3JhZ0JwekpzdGhWZGdI?=
 =?utf-8?B?U0ZGbG1lbDVuRFM5WlovdzNJeUovb3Q4ZUwyaUNITm5jZkMyTytiYVV5ZGM3?=
 =?utf-8?B?SkNGM21URGZUZzF5TWNSYkxZZ2ovV2JPa3pyVWRleTBPY0N2SkRXMUFsam9E?=
 =?utf-8?B?Y2c9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39c3c977-8d9f-4b8f-43d3-08daf93017bd
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2023 08:43:38.0090
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cJqig5hXAshJ7qZnECJ5JovuZV9db+r0A7JjmmmUmpKWNxvKvrDd6Iy+pWtQQy/kEolLof2VF/krEhXNaeGz1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6524
X-Proofpoint-GUID: -nV1pwFr5Id1fqQzGjYp_YotcPBgiZX4
X-Proofpoint-ORIG-GUID: -nV1pwFr5Id1fqQzGjYp_YotcPBgiZX4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.923,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-01-18_03,2023-01-17_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 phishscore=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1011
 malwarescore=0 adultscore=0 mlxlogscore=999 suspectscore=0 impostorscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2301180075
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Jan 2023 08:43:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59016

Ping.

Thanks,

On 4/12/22 08:38, Yu, Mingli wrote:
> From: Mingli Yu <mingli.yu@windriver.com>
> 
> After bind upgrade to 9.18.x, the below change introduced [1],
> all supported libraries have accompanying .pc files now.
> ba2376b9e0 Update and cleanup the readline library support
> 
> Otherwise, there comes below error during do_configure.
>   $ bitbake bind
>   | configure: error: Package requirements (readline) were not met:
>   |
>   | No package 'readline' found
> 
> So backport patches [2] to add support .pc file for readline to
> fix the above issue.
> 
> [1] https://gitlab.isc.org/isc-projects/bind9/-/commit/ba2376b9e03b9bd214242c987609a658ef24ec41
> [2] https://git.savannah.gnu.org/cgit/readline.git/commit/?id=d49a9082c0e15bba8cd3d8cc0a994409cf823cac
> 
> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> ---
>   .../0001-Makefile.in-add-readline.pc.in.patch | 135 ++++++++++++++++++
>   .../readline/readline-5.2/readline.pc.in      |  12 ++
>   recipes-core/readline/readline_5.2.bb         |   6 +-
>   3 files changed, 152 insertions(+), 1 deletion(-)
>   create mode 100644 recipes-core/readline/readline-5.2/0001-Makefile.in-add-readline.pc.in.patch
>   create mode 100644 recipes-core/readline/readline-5.2/readline.pc.in
> 
> diff --git a/recipes-core/readline/readline-5.2/0001-Makefile.in-add-readline.pc.in.patch b/recipes-core/readline/readline-5.2/0001-Makefile.in-add-readline.pc.in.patch
> new file mode 100644
> index 0000000..d9d36a0
> --- /dev/null
> +++ b/recipes-core/readline/readline-5.2/0001-Makefile.in-add-readline.pc.in.patch
> @@ -0,0 +1,135 @@
> +From 20141946db72908e23c11d946937e945fb7e527d Mon Sep 17 00:00:00 2001
> +From: Chet Ramey <chet.ramey@case.edu>
> +Date: Mon, 11 Apr 2022 18:06:03 +0800
> +Subject: [PATCH] Makefile.in: add readline.pc.in
> +
> +Add config file for pkgconfig.
> +
> +Upstream-Status: Backport [https://git.savannah.gnu.org/cgit/readline.git/commit/?id=d49a9082c0e15bba8cd3d8cc0a994409cf823cac]
> +
> +Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> +---
> + MANIFEST     |  1 +
> + Makefile.in  | 26 ++++++++++++++++++++------
> + configure.in | 11 ++++++++++-
> + 3 files changed, 31 insertions(+), 7 deletions(-)
> +
> +diff --git a/MANIFEST b/MANIFEST
> +index b288fb6..f5b583b 100644
> +--- a/MANIFEST
> ++++ b/MANIFEST
> +@@ -19,6 +19,7 @@ config.h.in	f
> + configure	f
> + configure.in	f
> + Makefile.in	f
> ++readline.pc.in	f
> + ansi_stdlib.h	f
> + chardefs.h	f
> + history.h	f
> +diff --git a/Makefile.in b/Makefile.in
> +index 87df428..e4233f7 100644
> +--- a/Makefile.in
> ++++ b/Makefile.in
> +@@ -57,6 +57,7 @@ mandir = @mandir@
> + includedir = @includedir@
> + datadir = @datadir@
> + localedir = $(datadir)/locale
> ++pkgconfigdir = ${libdir}/pkgconfig
> +
> + infodir = @infodir@
> +
> +@@ -133,7 +134,7 @@ DOCUMENTATION = $(DOCSOURCE) $(DOCOBJECT) $(DOCSUPPORT)
> +
> + CREATED_MAKEFILES = Makefile doc/Makefile examples/Makefile shlib/Makefile
> + CREATED_CONFIGURE = config.status config.h config.cache config.log \
> +-		    stamp-config stamp-h
> ++		    stamp-config stamp-h readline.pc
> + CREATED_TAGS = TAGS tags
> +
> + INSTALLED_HEADERS = readline.h chardefs.h keymaps.h history.h tilde.h \
> +@@ -217,9 +218,18 @@ uninstall-headers:
> +
> + maybe-uninstall-headers: uninstall-headers
> +
> ++install-pc: installdirs
> ++	-$(INSTALL_DATA) $(BUILD_DIR)/readline.pc $(DESTDIR)$(pkgconfigdir)/readline.pc
> ++
> ++uninstall-pc:
> ++	-test -n "$(pkgconfigdir)" && cd $(DESTDIR)$(pkgconfigdir) && \
> ++		${RM} readline.pc
> ++
> ++maybe-uninstall-pc: uninstall-pc
> ++
> + install:	$(INSTALL_TARGETS)
> +
> +-install-static: installdirs $(STATIC_LIBS) install-headers install-doc
> ++install-static: installdirs $(STATIC_LIBS) install-headers install-doc install-pc
> + 	-$(MV) $(DESTDIR)$(libdir)/libreadline.a $(DESTDIR)$(libdir)/libreadline.old
> + 	$(INSTALL_DATA) libreadline.a $(DESTDIR)$(libdir)/libreadline.a
> + 	-test -n "$(RANLIB)" && $(RANLIB) $(DESTDIR)$(libdir)/libreadline.a
> +@@ -230,17 +240,18 @@ install-static: installdirs $(STATIC_LIBS) install-headers install-doc
> + installdirs: $(srcdir)/support/mkinstalldirs
> + 	-$(SHELL) $(srcdir)/support/mkinstalldirs $(DESTDIR)$(includedir) \
> + 		$(DESTDIR)$(includedir)/readline $(DESTDIR)$(libdir) \
> +-		$(DESTDIR)$(infodir) $(DESTDIR)$(man3dir)
> ++		$(DESTDIR)$(infodir) $(DESTDIR)$(man3dir) \
> ++		$(DESTDIR)$(pkgconfigdir)
> +
> +-uninstall: uninstall-headers uninstall-doc
> ++uninstall: uninstall-headers uninstall-doc uninstall-pc
> + 	-test -n "$(DESTDIR)$(libdir)" && cd $(DESTDIR)$(libdir) && \
> + 		${RM} libreadline.a libreadline.old libhistory.a libhistory.old $(SHARED_LIBS)
> + 	-( cd shlib; ${MAKE} ${MFLAGS} DESTDIR=${DESTDIR} uninstall )
> +
> +-install-shared: installdirs install-headers shared install-doc
> ++install-shared: installdirs install-headers shared install-doc install-pc
> + 	-( cd shlib ; ${MAKE} ${MFLAGS} DESTDIR=${DESTDIR} install )
> + 	
> +-uninstall-shared: maybe-uninstall-headers
> ++uninstall-shared: maybe-uninstall-headers maybe-uninstall-pc
> + 	-( cd shlib; ${MAKE} ${MFLAGS} DESTDIR=${DESTDIR} uninstall )
> +
> + install-doc:	installdirs
> +@@ -281,6 +292,9 @@ distclean maintainer-clean: clean
> + 	$(RM) $(CREATED_CONFIGURE)
> + 	$(RM) $(CREATED_TAGS)
> +
> ++readline.pc:	config.status $(srcdir)/readline.pc.in
> ++	$(SHELL) config.status
> ++
> + info dvi:
> + 	-( cd doc && $(MAKE) $(MFLAGS) $@ )
> +
> +diff --git a/configure.in b/configure.in
> +index 9d1f3fb..1186fc3 100644
> +--- a/configure.in
> ++++ b/configure.in
> +@@ -191,6 +191,14 @@ if test "$TERMCAP_LIB" = "./lib/termcap/libtermcap.a"; then
> + 	fi
> + fi
> +
> ++case "$TERMCAP_LIB" in
> ++-ltinfo)  TERMCAP_PKG_CONFIG_LIB=tinfo ;;
> ++-lcurses) TERMCAP_PKG_CONFIG_LIB=ncurses ;;
> ++-lncurses) TERMCAP_PKG_CONFIG_LIB=ncurses ;;
> ++-ltermcap) TERMCAP_PKG_CONFIG_LIB=termcap ;;
> ++*) TERMCAP_PKG_CONFIG_LIB=termcap ;;
> ++esac
> ++
> + BASH_CHECK_MULTIBYTE
> +
> + case "$host_cpu" in
> +@@ -288,8 +296,9 @@ AC_SUBST(host_os)
> + AC_SUBST(LIBVERSION)
> +
> + AC_SUBST(TERMCAP_LIB)
> ++AC_SUBST(TERMCAP_PKG_CONFIG_LIB)
> +
> +-AC_OUTPUT([Makefile doc/Makefile examples/Makefile shlib/Makefile],
> ++AC_OUTPUT([Makefile doc/Makefile examples/Makefile shlib/Makefile readline.pc],
> + [
> + # Makefile uses this timestamp file to record whether config.h is up to date.
> + echo > stamp-h
> +--
> +2.25.1
> +
> diff --git a/recipes-core/readline/readline-5.2/readline.pc.in b/recipes-core/readline/readline-5.2/readline.pc.in
> new file mode 100644
> index 0000000..ff79d71
> --- /dev/null
> +++ b/recipes-core/readline/readline-5.2/readline.pc.in
> @@ -0,0 +1,12 @@
> +prefix=@prefix@
> +exec_prefix=@exec_prefix@
> +libdir=@libdir@
> +includedir=@includedir@
> +
> +Name: Readline
> +Description: Gnu Readline library for command line editing
> +URL: http://tiswww.cwru.edu/php/chet/readline/rltop.html
> +Version: @LIBVERSION@
> +Requires.private: @TERMCAP_PKG_CONFIG_LIB@
> +Libs: -L${libdir} -lreadline
> +Cflags: -I${includedir}
> diff --git a/recipes-core/readline/readline_5.2.bb b/recipes-core/readline/readline_5.2.bb
> index d42ce8b..5ce1d3f 100644
> --- a/recipes-core/readline/readline_5.2.bb
> +++ b/recipes-core/readline/readline_5.2.bb
> @@ -29,7 +29,9 @@ SRC_URI = "${GNU_MIRROR}/readline/${BPN}-${PV}.tar.gz;name=archive \
>              ${GNU_MIRROR}/readline/readline-5.2-patches/readline52-014;name=patch14;apply=yes;striplevel=0 \
>              file://configure-fix.patch \
>              file://config-dirent-symbols.patch \
> -           file://fix-redundant-rpath.patch"
> +           file://fix-redundant-rpath.patch \
> +           file://0001-Makefile.in-add-readline.pc.in.patch \
> +           file://readline.pc.in"
>   
>   SRC_URI[archive.md5sum] = "e39331f32ad14009b9ff49cc10c5e751"
>   SRC_URI[archive.sha256sum] = "12e88d96aee2cd1192500356f0535540db499282ca7f76339fb4228c31249f45"
> @@ -66,6 +68,7 @@ SRC_URI[patch14.sha256sum] = "6f1a68320d01522ca1ea5a737124ecc8739f3dcbfea2dee21e
>   inherit autotools
>   
>   EXTRA_AUTORECONF += "--exclude=autoheader"
> +EXTRA_OECONF += "bash_cv_termcap_lib=ncurses"
>   
>   LEAD_SONAME = "libreadline.so"
>   
> @@ -73,6 +76,7 @@ do_configure:prepend () {
>   	if [ ! -e ${S}/acinclude.m4 ]; then
>   		cat ${S}/aclocal.m4 > ${S}/acinclude.m4
>   	fi
> +	cp -r ${WORKDIR}/readline.pc.in ${S}
>   }
>   
>   do_install:append () {
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56736): https://lists.yoctoproject.org/g/yocto/message/56736
> Mute This Topic: https://lists.yoctoproject.org/mt/90409313/3618448
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mingli.yu@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

