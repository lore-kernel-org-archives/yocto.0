Return-Path: <liezhi.yang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2BEC4332F
	for <webhook@archiver.kernel.org>; Wed, 21 Dec 2022 04:01:40 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.11409.1671595295490483554
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Dec 2022 20:01:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=OhskCWjh;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=9354952c09=liezhi.yang@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2BL3eXZ1025148;
	Wed, 21 Dec 2022 04:01:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=message-id : date
 : subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=vqM6qhF12f18diEYhC66ihyCzzr2Ulna8vrh0jnkUR4=;
 b=OhskCWjhvazQ0fFKuHgRrn++LuJoXf+/F6FmP2YVt7hi6FC9VEVSmfKBmjLR86g8vya8
 twS86csCmel4F0KyxZzuSNHoE/iciXGHatRPM/ZoA1eSsopuedpTImO63e+w0jePPUAC
 V48gdqOG63+wrmYSkw2fS08QUXhJu/v9gSzeKowIiQtC56hKMIlvrtfiuYkzlXXmIEai
 gf+kHT0H8GY3mrV5td1vgpd9wQ12EapM18LostRRMvLsuuq3IuFd2B4jRej/LpgT6V+G
 /usIg/1s1u1ybZ3tqQHO8UMSHesCMssdO42N4bg/y1TCdCbtEaJlvNFZvVqGr3gWKS89 xg== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2103.outbound.protection.outlook.com [104.47.58.103])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3mh4r9avbe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Dec 2022 04:01:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R7JP8gpIoPsABa/wnjLhlZ85g45Lk04F1KAw/aZK5lEYggjzSRcy55RVXFN6RIcmS4C1+1JAYzcxO7LmUIMUD0KlTTvluPIJDvD/tl7ZxzXdtlj9MX8zvu3CEMc/8h9oS555pXgZP6JOoNvKiQmfd8dKQk+2yh0n8l8co1YGYem8EjvYECHY40HhxstljE5hiJcKOlpZH84pVcm4K5Oyx+Pf5Ei8hV7wepfDfCC8uWfXt2UzJzOFrJCpEOZuLzSWucOD5/9RbVJrI7xnpepBf99BTWHhRRB71DsYG6SUrrdIsArErXZLP2kSuxjYxWoj+5XVCB3qGzrB/EC7ieK+lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vqM6qhF12f18diEYhC66ihyCzzr2Ulna8vrh0jnkUR4=;
 b=H/UxoNF48oGGSm82uQhH84HLKzz470buwp2hptNZCCw/Vlr9eBF9ajmuspba5eY70BT+PWhQG6JpQ03d1qNnZCK+aMRN2wmKeVjiOshVZwkSGuyDtnRm5oXb92BbJol5K3/NbwkrLEQlHvzfGxNPOF1LxzaOkpaTjvSVD1rVlr25RlrEgUrB2xbIBWmAJF5f9BpNKpMXYHFB7YpkTgYvq4eSuK2HjhH7YBVfVlarnUTi0em3O63/ofx0+wYc9uWefEvPs3280myats4HJ/pvbAv5mQeYgZZvvYDA3XbSFmaF96+lnGxg41uzCezdSTLajZERJ8oYO4a3Gf/IlJiEEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BYAPR11MB2789.namprd11.prod.outlook.com (2603:10b6:a02:cc::11)
 by CY5PR11MB6259.namprd11.prod.outlook.com (2603:10b6:930:24::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Wed, 21 Dec
 2022 04:01:30 +0000
Received: from BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::6736:bbc7:d903:a7bf]) by BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::6736:bbc7:d903:a7bf%7]) with mapi id 15.20.5924.016; Wed, 21 Dec 2022
 04:01:30 +0000
Message-ID: <2ec1b2c2-ef91-f8a1-176b-efbddf40ffc7@windriver.com>
Date: Wed, 21 Dec 2022 12:01:19 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [yocto] [layerindex-web] [PATCH] layerindex/utils.py: Add to
 baseconfig=True for bb.parse.handle()
To: Tim Orling <ticotimo@gmail.com>
Cc: yocto@lists.yoctoproject.org, tim.orling@konsulko.com,
        martin.jansa@gmail.com, richard.purdie@linuxfoundation.org
References: <20221220072619.104336-1-liezhi.yang@windriver.com>
 <CANx9H-DG4fiWcp_YahKF_ZScvSz5ZCJczE3F7e2pNHf0wfTLsw@mail.gmail.com>
Content-Language: en-US
From: Robert Yang <liezhi.yang@windriver.com>
In-Reply-To: <CANx9H-DG4fiWcp_YahKF_ZScvSz5ZCJczE3F7e2pNHf0wfTLsw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SL2P216CA0206.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:19::9) To BYAPR11MB2789.namprd11.prod.outlook.com
 (2603:10b6:a02:cc::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2789:EE_|CY5PR11MB6259:EE_
X-MS-Office365-Filtering-Correlation-Id: 35b8aa1e-b04b-40aa-f9e8-08dae3080a56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WC7n9kbRCfYtzck67S8ZQhKKgelXHM5PvTKDDx2O8/yjGSluoTiVD1Jcotr7nGCDhIM2bv9iNbRGn2uCelRvwlRDoI5rLktewG97EB1CLBIEx7X33IXHyV1W74Rcs2HyYwrxSfxMKyyhTVwpYYMvw9Ow991p441MBvVPXkY8cZRacOcQDl5QaEhJyTQbHeU8TuoRkNxnsStfReaetH+0G8M7vZof9yS/3iMENAwDBUY2kDN4NTF5E3hIKslK5iParHD/RJ5Lug6vfYocUkE6YlyaDYm/Do6PyTQUHSBY0SClNj3xK0JPILbdeQEUD+Tg/o2kvJ0FN3EFED8356fzf0ZXT/SfiQ1v4hvzhPK+yJvMFoXPkOWh/nYNfk7EtyMI3rGV6K8l1uMAcdbaN1khtC0CyyCCMbqXepP+TA2FtXiF86uX5zvy6nmZUb0gHLlVpA/9l8G8RmdXGnLVb0BT2eaa0g2Aoturbxvh4e3Qmxoweu2evCH6Zhf8xe6Qo0ZC91rMsKYEXbKN5M3cInyRTR9aqxuQxDN9PyoW9E4/fbH1NEiTi+vRO8VGKLYXNJWdK5mpzD3RZjz62YPf+sLF6P5rLcgko2Kkq6qzgOzZvWLNh+79Iyyl5ZFwu0fvtFc7EQKGYxzXX/7SKFWpGHvV0Ys7947CGLrMiAOpwdevhyPd3o6ArfWwnYWjDTFYOp2XdNmvN687JUJ9QpooP/6urGbMYS1uoEjXQN9AdxNGdNlDBdVJJhYsrOnCWs4yjL0glWno0gRT0LKk3TezKdD6yD+9qY3D9LwGm69owWcV13kAF73qc03FmV2lLj3NKSNc
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2789.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39850400004)(346002)(376002)(396003)(366004)(136003)(451199015)(478600001)(966005)(36756003)(6486002)(38100700002)(86362001)(31696002)(83380400001)(53546011)(6506007)(6666004)(26005)(6512007)(2616005)(186003)(66899015)(66556008)(66476007)(8676002)(4326008)(66946007)(5660300002)(31686004)(8936002)(316002)(2906002)(41300700001)(6916009)(9126006)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?azFzNVcvWnRVUHB1SVVEeWVxeUJFVWcxdFJhQ2pzYWRkdWRRR0lOTXhGWVkz?=
 =?utf-8?B?YkhsMXNkTXEwVUUxdmhBUHZ2dFBjdDVBcDdJNU95WGZIbk01RGQ1RXVweWdD?=
 =?utf-8?B?elBaMUpyYkhPWjFkSlAxNDU4bWNCQ0pWa1N1cXJMbzNIS0g4KzVDNUp5eFFD?=
 =?utf-8?B?QWk3dGtLemduczlVd0hiWHpnTy9zNDRrd250ZHBuanBnK21uYlc2SFRlM0Jr?=
 =?utf-8?B?bkdlZUx6Wlp3cWRiY3RqM3lubFdpL0lCTVFBNEl3NmQzM1JGRy92dlQwNmU2?=
 =?utf-8?B?YjRGV00raVF1V05vb0V0UVB3LzNBWTRseFhQUlBTL2VyaFRONHhwOEk3WWdT?=
 =?utf-8?B?NE5PeWhvWFRORU03NWg0NHVzZmNoR2RZdnMzTlZOSW9xUGM5alNhTzcrTk1m?=
 =?utf-8?B?NlpUb1g1SDhPVXNkanF1NnRWRER4RDNLb1RCaTJXZjFlcUhyd2ppcmowblVM?=
 =?utf-8?B?TUxpWDlzei91QjBXZmkrb1IwaDB2dDZleU9nVWlqZlZ2b09tdktUdjZGLzhX?=
 =?utf-8?B?MkFYY014WnNCREtoSFVCeDN5OE5yTmFzK3BHWVhTU2prRkQySUx6eHlFeGRW?=
 =?utf-8?B?SkRKYk9lVHlGaDdoK05PVlFZRm9sQzVrdmRXQUJJMDYzRGYybGtITHord3ds?=
 =?utf-8?B?NFFSY0crWGp1UTZ3K0MzUk1xVnVkZi9sdk93eXBQZDdOMW9GbWZGWFBIQWtW?=
 =?utf-8?B?MUx2eVcvMzZYaXhoWFFqRGJFTC9NZER6REdPWlZOWUNNUEUvajAxb25vWlFH?=
 =?utf-8?B?TTRaT0dyUjBVZldlSHRNZFlzQ0g3OEMybTEwb0FZUGFBZFYyUXM5NUt2Tm1Z?=
 =?utf-8?B?UWFPd3FZOGthV3AwRHkxbyttYVJMbVdrbldLeWVrV2NSTFFyazdOcy9Wb2Mw?=
 =?utf-8?B?cDBQWmQ2QzlFdUVpTC8ybDhVYnVHNHFEc01DbldQMHJHc2Nka1BCNmE0S3h5?=
 =?utf-8?B?b1FtaXVHRnR6bmZmQ2ZCaFRCVXpicVVLT09iaVd1QTZvS2hFQ1orV3NqR3FR?=
 =?utf-8?B?NlYwemxtNWVYNVlxalNoTGVxQUUzZnR3SmhoSloyaHhxRG5qZ1R0bzlUNjJp?=
 =?utf-8?B?T2R1VWZOQmJTM2hOUWplRS9hMUozczVPWFB4ZC9ScW9oN3FzQ0hXUjRYU0FH?=
 =?utf-8?B?RGRZRmVxZ2ZuM3Z5NDRWYzRzN3g2aFExYXI1Uk1URUU4UE14VmVndjRRV2Vx?=
 =?utf-8?B?SVQ1MGFDaGlwNlVJRU5Xb3orRzBCYTZmc3F3RDVjbzdWeDRwQUh5NG0zbnJi?=
 =?utf-8?B?dGhNNXp1R1RlVXZhOVlLZTR2TU1mNk1Yb2lmZkZuYm8xUlJGMy9sLytBZWdY?=
 =?utf-8?B?bUhEWmRET0FnMW01akVGRFdReDZSNitKSFE5OERTcjg0V2JYVU01U3RDTmV4?=
 =?utf-8?B?bTFsYUNOVVpvenFYWDJ5NjROb1hxOEx5LzZtSzNjbGVhMWo3NXhXZlB0eGl5?=
 =?utf-8?B?Rko5TUpTdU5YYkV2OXVYS2QyVDFTZDhZM0xCSk5EaE5VSU45cFNMWGRTZEFx?=
 =?utf-8?B?bDd4VnBNclZQUkg0QnNabEZ6MXIzU2UrSnBBMElwVW5kRmxKVFBjZnNhdDNM?=
 =?utf-8?B?SlU2YWxrSm8zZDJTMm9OUndycEw0WHFaQjBDTlFEbTBvbnhpTEZWY0FaS0NN?=
 =?utf-8?B?dVQrSER0Y3lPL3N5eUNJNFUwWFB1bHdzTFFRQlhXcUc1QnFqL01nU2lldytE?=
 =?utf-8?B?WTZhc01HdE80UHlZQ2pUMm1obFdHUkdBV0RzZmJhb3Mrc3ZmTUFZOXBHS25o?=
 =?utf-8?B?VTFIcElySDB6TlJhMks1V0QwRjZ4NjFES2l1OTRyNXd0RFJOdnhNZHE0a0Np?=
 =?utf-8?B?NkNINnFEazY2OSt1QkptV1l3aHlaNHp3MHEwZnJFc0Q2YkV0Vk5kYkFrZE4y?=
 =?utf-8?B?VXdYRm16ajF2UUlWejN3aVdQRFU2SUJIN0VoWVB0d3ovTFhkallDQmpMcU1S?=
 =?utf-8?B?VjJHeWVKRnUyZE9LQTdUQUVrcWk2S1dCaUJJSFdqQnJIZ0oyNkpNdm51QUN2?=
 =?utf-8?B?YThyaGxweFhPY0xlVWlDY1FUUm42QUE1aEgrVjVBTHZxVFROZTJLNTZhZ1ZY?=
 =?utf-8?B?aU9FS1BULzFmRGZmMWRiY1JhTmZ1SUdsZmYzdDRsbngyTlBsT29WRHErSnFB?=
 =?utf-8?B?WEI1Rk84NEJhdlZzSTdKQWszc3c3Qno1WUFNcG0vSjNJR1lmRExIeUxRbEJn?=
 =?utf-8?B?b3c9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35b8aa1e-b04b-40aa-f9e8-08dae3080a56
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2022 04:01:30.0624
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6x71JTNsfX537KqtUJBeOnFCnEhpTmTwgEZJZUdV7EvBPnUIzXR6XuQM273hLxOfmxdnyDNj+RabPiBtDCjJDPIVayuo/zzJQBsal+ACkaY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6259
X-Proofpoint-GUID: 8OP8AFDTu-0An9ydfgRImUbD5LSe-ArP
X-Proofpoint-ORIG-GUID: 8OP8AFDTu-0An9ydfgRImUbD5LSe-ArP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-20_08,2022-12-20_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 spamscore=0
 mlxlogscore=989 priorityscore=1501 clxscore=1011 phishscore=0
 lowpriorityscore=0 impostorscore=0 mlxscore=0 malwarescore=0
 suspectscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2212210024
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Dec 2022 04:01:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58849



On 12/21/22 00:39, Tim Orling wrote:
> 
> 
> On Mon, Dec 19, 2022 at 11:26 PM Robert Yang <liezhi.yang@windriver.com 
> <mailto:liezhi.yang@windriver.com>> wrote:
> 
>     Bitbake's api has been changed via:
>     afb8478d3 parse: Add support for addpylib conf file directive and
>     BB_GLOBAL_PYMODULES
> 
>     The conf file won't be parsed without baseconfig=True:
>     bb.parse.ParseError: ParseError at
>     /path/to/oe-core/meta/conf/layer.conf:132: unparsed line: 'addpylib
>     ${LAYERDIR}/lib oe'
> 
> Merged. Thank you!

Glad to see that layerindex is back to active.

I've also sent you another 3 patches just now:

utils.py: Prefer the one which matches branchname for depends layer
recipeparse.py: Checkout deplayerbranch before parsing
util.py: Fix for removing non-existed dependencies

I think that I had sent them before, but not get merged, layerindex may not work 
well without these fixes.

// Robert

> 
>     Signed-off-by: Robert Yang <liezhi.yang@windriver.com
>     <mailto:liezhi.yang@windriver.com>>
>     ---
>     <snip>
>     -- 
>     2.37.1
> 
> 
>     -=-=-=-=-=-=-=-=-=-=-=-
>     Links: You receive all messages sent to this group.
>     View/Reply Online (#58837):
>     https://lists.yoctoproject.org/g/yocto/message/58837
>     <https://urldefense.com/v3/__https://lists.yoctoproject.org/g/yocto/message/58837__;!!AjveYdw8EvQ!f82pFsZIjTXfpv3B6LSr7x_5u225kNcUYM4LAUVvBu-7OS0E-2XR9CWbMzZvGBQ8fAk7X9lL9YGOQelM8Imvyw$>
>     Mute This Topic: https://lists.yoctoproject.org/mt/95781944/924729
>     <https://urldefense.com/v3/__https://lists.yoctoproject.org/mt/95781944/924729__;!!AjveYdw8EvQ!f82pFsZIjTXfpv3B6LSr7x_5u225kNcUYM4LAUVvBu-7OS0E-2XR9CWbMzZvGBQ8fAk7X9lL9YGOQekkj_SwmA$>
>     Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>     <https://urldefense.com/v3/__https://lists.yoctoproject.org/g/yocto/unsub__;!!AjveYdw8EvQ!f82pFsZIjTXfpv3B6LSr7x_5u225kNcUYM4LAUVvBu-7OS0E-2XR9CWbMzZvGBQ8fAk7X9lL9YGOQekx9xA53A$> [ticotimo@gmail.com <mailto:ticotimo@gmail.com>]
>     -=-=-=-=-=-=-=-=-=-=-=-
> 

