Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB57BC46CD3
	for <webhook@archiver.kernel.org>; Fri, 29 Dec 2023 07:59:14 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.141618.1703836753048883954
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Dec 2023 23:59:13 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=U0RRSUbt;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=1727e084dc=qi.chen@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BT7GoQu028547;
	Fri, 29 Dec 2023 07:59:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=message-id:date:subject:to:cc:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	PPS06212021; bh=7c/qbmbO4zrC3hwWKgyhfRXMukAip+nOXl7/GmFm3LM=; b=
	U0RRSUbtBOeuUb7IClUiFgING9INQYhK+kCiBwPHOuYWQGAMfBEaQu24cgfIevgh
	JrSIY8wS7XaCLjO8xkGCpdNTGdc1UoqzINOsdwWLiUak2myVng/7juO2E4QsFe4x
	GUx+lzEjol+mUhPHY33VFMOhKSJ+B6gg5+JY9QZ5tAmtn26fkl+JkN8+ncqi0dBS
	OEncYAI4tHV6C5xzp6XQvnrJryySrA9+bYNkUX3c2jwiWIMak0KcXv/ojGZl4rgt
	njxHjx5baJI9sv5JCb8bBUtC+im27T3Tyrr/0cpAx32Ad3BZ9YKH0AkPEKi5N/HD
	lAnAgnMp0Mqms5De3GA6Lw==
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam02lp2040.outbound.protection.outlook.com [104.47.51.40])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3v5ph651am-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Dec 2023 07:59:11 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D2b/L5aYBV9r553k/MXb1hkh4hwK+NLLx69mmrj2AcQ+dDuq9nk1rj/adjYlq5Q+0GzMXBAVw9/fb6ZZNXY2+NdiRcn8k2VMPK2JVaNWCLdlwI5R3paMLFJGq08tdJI3K8vUHOZWvWgEGuIZvLlnhu1L2DwBR/30BUEdmbtDsKhvGrcdikTXEiNg/1mC4F2ysjAQpSsZJ30Omp0tJl6+3F/mgCyo2JNSffxnelJ9yyzOmga0HI+jBdcTnL1E1Wh1+4+UayhgDqWevFS1yLTIpQpqcFAw/+FjRfD4QQjwvDUAI2VvZJVhHAVZ7a0UD65LDEvvTeJDfRu7qEn7rcbUGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7c/qbmbO4zrC3hwWKgyhfRXMukAip+nOXl7/GmFm3LM=;
 b=ggRnX1UxklghGNGuUYWQ71aajg6xFjJSF14+1Z6VTvG33NMERuD2ZZYY4rXsTsRs8QL1isaJWM3CUcC2jMrTHtRsU9OfbOt/2exv/FjSLy9Wx+zYhX2sTceDxM4hj0z0KLu4AJ18ou6n7pu3GCGEsYfcnOZ74W43agoAM04FJpEj+jLNoThPezinddlfLIox+1F0Qz4Jby9DDF/ia90P4ZfQ7iu38IuBrZw2gAFbRGlVp+5654Dx8u7M1cs8HxSba3SxjqIPDZX04nwh+DsQt95pwM3NFe+75cyrKGpofLjFSWwxk4iKWo2IQamrHWAUEeM0dg2LaqQ76TnpROn6yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by DM6PR11MB4724.namprd11.prod.outlook.com (2603:10b6:5:2ad::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.21; Fri, 29 Dec
 2023 07:59:08 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::5d84:2b01:5029:9315]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::5d84:2b01:5029:9315%6]) with mapi id 15.20.7135.019; Fri, 29 Dec 2023
 07:59:07 +0000
Message-ID: <95fbd1d1-5098-a951-6d21-3c2ee293934c@windriver.com>
Date: Fri, 29 Dec 2023 15:59:02 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] How to generate a random number for all recipes?
Content-Language: en-US
To: Gileon Chai <tyrocjl@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <CANzPQ-CLdx1y_skPWVvQBSpZpYEQLGvOsNJn5smG2P0du=t7Cg@mail.gmail.com>
 <4dd9ec90-0b93-9f69-2b7d-0466f05122e0@windriver.com>
 <CANzPQ-CF5gpPkQc8kMn71ZLvP75kh6p5JtnKE4wuD=0MP=1ELA@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
In-Reply-To: <CANzPQ-CF5gpPkQc8kMn71ZLvP75kh6p5JtnKE4wuD=0MP=1ELA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: TYCPR01CA0152.jpnprd01.prod.outlook.com
 (2603:1096:400:2b1::6) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|DM6PR11MB4724:EE_
X-MS-Office365-Filtering-Correlation-Id: d97a9fc8-8d33-4d30-3ddf-08dc0844088b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	4C6dASYD7eSL4Jrx8oTltDs1w/VBcDm/17njwZJhc/g2wrrWcSqtys26EWs4Sf9pARz7uR2eG9OWmdfUYXYf1CI2DL1LHb1H5nJT7zmz+6EIwOS8MoqJWn1+iOwXwwT8Nxj9mAHpaheL2vZteYYwchvfouPSDPEYi4Nxn3Qoak258xxCoQihusH14KdOFkv2PglJ2sMuzCcsD33ymhw5HBgxrzm5mIEWN2pFKQnotoQn3HuRJcYHCTCAHcv5uMVHGbk+ZyQfBdJU52LlhoUwFdqAOYsOZo3BjO6Yab2FG0nmVEZ5CtSKgd8ZkUFe6L7ofooX0wyINX50We1JR8uHYTwFwsFvf2UHtmJHLbl1Low/qh6qqIjA2q87P4DGcBa0QypQdkT6OM67XJGMisXLbOWZPWi8dLkzdcTyHh8X4dJ4sKSce9uM9+GDCwBXvSbpp1DUF2s43CBTiYcfGEf8/t0WT5RMqRRAupO5TDmh0b+UNaEpWLuY7t78fV5nCe3F47AaRFDBA5dVmwIMRwJuaoKBY8A57hB1HTdEQWDPBTmnYJ8Et80anpKsQKKfiNWxcRWVqXzWi9ZsF8UnVPYiiiw/OvTR0KL0lFYsz1KPv2AI+ljUCBUrXKkufVhNJ9F4
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(396003)(39840400004)(136003)(346002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(5660300002)(36756003)(66556008)(66946007)(66476007)(6916009)(4326008)(8936002)(8676002)(31686004)(86362001)(31696002)(2906002)(316002)(478600001)(6486002)(6666004)(6506007)(6512007)(53546011)(26005)(83380400001)(2616005)(41300700001)(38100700002)(966005)(66899024)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZXY1M3NFUnYwaG5aWXFaZnkxQmdRYnNjTlFBTUxDOGYxNFg4c0ZMYWlPSzFI?=
 =?utf-8?B?TThTbzJmZ0JwREpJenUzMHNvWUJXN3JlcU9kQkY4K1JpYVFHL0VhOUlQQ2g3?=
 =?utf-8?B?dFRyREp0TDlRRm1paGo2ZjZaUVRTU0d6Y3JXRjhWSVdWNXJSWHNuV2I2bWFm?=
 =?utf-8?B?RmJueUtISFRkeFdxSEE0RGlkeVF0OFIwWFFUaTFDb0RGOEZIcnpIVlJOK1c1?=
 =?utf-8?B?NEw1bnM1TTE1bGppQ3dTaUZyTnZjR0FTMlhlOGdYajFjcCtaeWtLdk95Y3B2?=
 =?utf-8?B?S0RFUHJNczUySmRCczJWT1JJcjVoWEJGUU9YSWVRamhyNzVxZzMzTDFlZ2pm?=
 =?utf-8?B?dFFmUW42S1ZxQklBWWJXYlFrbXRDSDVybW9kaU5CTTIyK1ExZTRJYkY0MFpE?=
 =?utf-8?B?MGJyUkMzVHNjMHBUVWlsK0FJRkV3QTdhM3lWTzFBN29MZGpWc01CTTlZQTFH?=
 =?utf-8?B?elZZcHZpRE5DSkdxS0luSFhxQkk2OHhPZ2QzUkVJejdBZnBsU29TaXNDVVdn?=
 =?utf-8?B?QWF6dDhkMFlVVkhjdXZGYzNnQ1lObGRxMnI1bFMxMHdsd2t4MGhTQytmRlhP?=
 =?utf-8?B?cEw4ZHM2b1FIcXp0Y0t6SUsrYUhXcjhpc2dhRDIzd3BZK2F2TytJM3pFYTN6?=
 =?utf-8?B?VDMxcVJOWS9nWUpZVnBuZlhxeEl6a2tVb3hja3A1RCs1emJHanl6Vy85cU91?=
 =?utf-8?B?RG1BaFg1TWo3bFp3TklqbzRILzVHV1JOZG11c3IwTEloalhVVG43cDBRempH?=
 =?utf-8?B?TmNVK3drdkdPejNnYW1ySmFwR1RBS21HcERIZGEzYjJaSldrenRzVlB1UUor?=
 =?utf-8?B?TUZrc2RlbEVzUUN0aTlkRFVPM0JjdEwvU1hDdWdHbEZWU0lpNTUyZWp2a0dx?=
 =?utf-8?B?SjYxdnFNRkFMaDFHMjZNc3lnbW96OUszTVR1c3ZZSndWQitXdGc3S2RyNzdr?=
 =?utf-8?B?d0RaaVgvbkp0MHg5a3pudHB4QkJSK0JaSnk5MFZiRXM2Q2hLa2t2blVSUXFq?=
 =?utf-8?B?allPMGFhdDRxN1N1cEhhZVdEZVh1QmxTQ0w0ZFlQMmdqVTdQYktKcFFmRE9s?=
 =?utf-8?B?bTlaOFo1NXBmcG1jTHp2L2VPM2lreTF6eGlpRytjaS9JV25VYUdHVmNva0dE?=
 =?utf-8?B?Nis1ZWdEUFd0KzJ2NGdyV3VBcTFSNnFONUpTYW9ldERxdzdRL3NJQ1haajQ1?=
 =?utf-8?B?ZkE3cWZYRm9SL1NEQXFOOUN2R0VNVDB5dDF0WEg1MXhLSWNmcDUzaHpGa1ZH?=
 =?utf-8?B?TGlsL2taS0hhaFF0QVFZZ0J1ZUxZNzZ2bEZJbmx5TjErTnJNWVlSM2R1MzJ6?=
 =?utf-8?B?TnN5K3FwK3Z6WkVOd2w2QTVzWGdpQTk1djA5MEFFNGNnckxtT3BJd2Z6Rmxu?=
 =?utf-8?B?WGVNazU5dVlVQ1dEOWU0ZmpDaVdCcFVPRWVNSG5Ob0hiS25NbkJxS1lsNjV1?=
 =?utf-8?B?OWp5SzBpbitFZnZ5M0dDOHZvNmJCOUlzMURRZk1Gd0pjalJia2ZXWUJEbTEx?=
 =?utf-8?B?U3FOQWRJTUx5UWV1WVdCZVZ2K0FsUFplS3lFSXM3NnAyVlk2aFdjVnVwUWda?=
 =?utf-8?B?M3pweUVsREFjakhoRHhYby9MRlpQMVNid0RlYVgwK0o1ZnBzRXJXUDB0djZT?=
 =?utf-8?B?OUhCUGp5T1o5cnkzSHpNbjBpMXoxRFpwbHhJMWtwdDNiSncxRmpQaHlzMWdi?=
 =?utf-8?B?RElPK2J2T2c1TUZBV2NDeUZUU29HVGtUcW04enQybmJxRU9Qa3c4WEc2Qnh5?=
 =?utf-8?B?ZHJSYjFnMFJBNlUzZkJYeEZmMmNFSlFCSmF6RkViTi9nTWZraWlvWTE4Um1N?=
 =?utf-8?B?dFlaWllOUTNFR0l1RmdMQ3czeXA3TXZ4d0t4SElrcGQ1MjNqbW1uay94SnRI?=
 =?utf-8?B?NEFxTW96V3NrdDBpTkI3OEU0L2JWOG9tNW5qWC9wdnlNSE9UM2tVZHFjMkYr?=
 =?utf-8?B?emhNYlR3WkRqVEp1elc2MkFjdmp2OFdzbUpIWGt0dkRLUFFIM2JtMXg0YlYx?=
 =?utf-8?B?dGtQVE50aUZPN1J3ODY5ZlNEdWtkTUJCZkdkUEkwbUdyL1A0NFRWaVl3V2ZZ?=
 =?utf-8?B?MmhSZHVYMlM4L2pWajhUYWtHSUhJaG5ia2hSYmpWR0xacWpmdWVvSCtZV2tl?=
 =?utf-8?Q?CVEnNUlokFZUx99+VLIcuk6lX?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d97a9fc8-8d33-4d30-3ddf-08dc0844088b
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2023 07:59:07.4906
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8kAUH+1c0IzrDQp17hKitsfRMf7aylOWownwFjoXEXXJBapEz5LIAdGxtsoQVFlzuh4Eh8OG4EHiC+ClYLGDtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4724
X-Proofpoint-ORIG-GUID: -oWu2WBsWypFsVcjyo4B09cAyaMLLsj5
X-Proofpoint-GUID: -oWu2WBsWypFsVcjyo4B09cAyaMLLsj5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 suspectscore=0 spamscore=0
 adultscore=0 mlxscore=0 mlxlogscore=898 bulkscore=0 impostorscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312290060
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 3BT7GoQu028547
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Dec 2023 07:59:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62050

On 12/29/23 15:38, Gileon Chai wrote:
> Thank you for your reply.
> HELLO's value in two bbfiles is same when using ':=3D', but it brought =
new errors:
> ERROR: When reparsing a.bb and b.bb: the basehash value changed from
> xxxx to xxxx. The metadata is not deterministic and this needs to be
> fixed.

This problem could be solved by using something like below:

do_mytask[vardepsexclude] +=3D "HELLO"

You may also consider using 'nostamp' flag for these tasks, depending on=20
your final goal.


>
> What could be the reason? My guess is that, during reparses, bitbake
> also calls the random_number_function multiple times, causing
> different random numbers to be generated each time and thus resulting
> in different hash values.
>
> I am a beginner, and this issue is a bit complex for me. So, I took
> the following approach: I wrote the random number to a file using a
> recipe, and other bbfiles use it by reading the random number file.
>
> Is there a good idea? Thanks again!

I think anything that achieves your final goal is good.

Regards

Qi

>
> ChenQi <Qi.Chen@windriver.com> =E4=BA=8E2023=E5=B9=B412=E6=9C=8829=E6=97=
=A5=E5=91=A8=E4=BA=94 14:12=E5=86=99=E9=81=93=EF=BC=9A
>> How about using ':=3D'?
>> e.g.,
>> HELLO :=3D "${@random_number_function}"
>>
>> Regards,
>> Qi
>>
>> On 12/29/23 13:49, Jiliang Cai wrote:
>>> I define a global variable in config like this:
>>> HELLO=3D${@random_number_function}
>>>
>>> Then I print HELLO's value in two bbfiles. I found that the value of
>>> HELLO is different because the random_number_function was called in
>>> every bbfile. How to fix it?
>>>
>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>> Links: You receive all messages sent to this group.
>>> View/Reply Online (#62046): https://lists.yoctoproject.org/g/yocto/me=
ssage/62046
>>> Mute This Topic: https://lists.yoctoproject.org/mt/103413529/7304865
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [Qi.Chen@en=
g.windriver.com]
>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>


