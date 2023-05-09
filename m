Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DB81C77B7C
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 22:04:05 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.2427.1683669840646476376
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 15:04:01 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=LIrGJpaS;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=449368d770=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349LWxXC026802;
	Tue, 9 May 2023 22:03:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : subject : to : references : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=aIm82Gry3/8OcbwrRuqPX4QfI+VPgQx8SVox8tvxRrc=;
 b=LIrGJpaSW/KBQEZRiwSUFQQac+olCxawqppGQ8nxrVBuTPeNQwlH2IRQPRXedF8I3rLO
 8EVsr/0bvw1y8PVzbk0zCG8JKMGr2HgHu4cz5qpLYK2uBS9XPe8ti0Ay+QaNEGF6Bu8p
 RSKeMhlfZol17Y6ZIx+5ph6hmPKz4fHatabHt2kMYie4fY1pxGutnDpHGHu2UmmuSF/p
 fIF7hYoUAa8LAN8IqgJyXcDZ+FrKm5s/U+/2snPOXPuAu//96cy1g/WJ7rsvd0Gz6VuX
 jabT9xoN6oE86vznEPVunSfQGehxZksTt7tEkmePQm3WSTqUL1rthkViaoyk8n2dxm3D Yg== 
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2104.outbound.protection.outlook.com [104.47.55.104])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3qf82x14eh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 22:03:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TgCRphoJuWR/TYOqQwwaboA8l5az3v1+YcnWINZ7xGRggLHjHx3VjBO/uWYC1y+7P09VZoQtxL5EDeXzRv3QejpIBBqrDGPxvd5eHxkryZ6HVYgcrM6aO5Z50tg+qy5cWCp4ImUtTjbw74eACmf7KSVs55M5Bq5zDRU7YY3hn1SJ4fCYrWgedG7RyZVzZ0vawLaj5iTNx5bN3FVjNuW4expMkUiColfmMufyV+1KYciawB8Zut5GsyfK/z3lmyKXvOQfn0JEJv/vJEIt9yNzGfUjwnGxJ4ls4lW0jD3yoKDfMSCjaEN6htlf623okFUrypki4vAr2i0xWen8rWEQmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aIm82Gry3/8OcbwrRuqPX4QfI+VPgQx8SVox8tvxRrc=;
 b=IGHZj2xEUp4qNMD/K8kkV0MM9BMuKfcsw/z9heuHyphdCIoWV60imk7ZW66l/jIGvBn9j6KAh7aMJqHXs1ViuLLTaaI3ASFEVBhHFOKT8C8piEI9untAcYRe7AGWscaRgchIvl09gRbwps9y7O+B1EPa9Jg0RkrMjRYsfGLdJKTwAtNBQJwl420CjKWkzkP2zWXbVh46av01przpqhfXF7s4NNiUVDihLo1SlzmUzYv6no1vhOygYkvo3H8GnmaEvLXCjudE4cGavK1vujwZXaLXhAOnagj/VbxekOTcqn/Nj2zVX+ahuaTj2IpIpYaC1NuWK4JUNdGKUZnGMD1t5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by CH0PR11MB5442.namprd11.prod.outlook.com (2603:10b6:610:d1::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33; Tue, 9 May
 2023 22:03:45 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::1450:e2a0:f220:b6eb]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::1450:e2a0:f220:b6eb%5]) with mapi id 15.20.6363.032; Tue, 9 May 2023
 22:03:45 +0000
Content-Type: multipart/alternative;
 boundary="------------qauxkcK3aJzPLUCf0z000xWN"
Message-ID: <350515d8-3ebe-42e4-1e62-0dd9070aa64f@windriver.com>
Date: Tue, 9 May 2023 18:03:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] Install complete Rust and toolchans for image? #rust
 #yocto #sdk
Content-Language: en-CA
To: egyszeregy@freemail.hu, yocto@lists.yoctoproject.org
References: <idEi.1682895691085663545.uid1@lists.yoctoproject.org>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <idEi.1682895691085663545.uid1@lists.yoctoproject.org>
X-ClientProxiedBy: BY3PR10CA0014.namprd10.prod.outlook.com
 (2603:10b6:a03:255::19) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3994:EE_|CH0PR11MB5442:EE_
X-MS-Office365-Filtering-Correlation-Id: 53fe3c7a-ee3f-4d2d-bd79-08db50d94203
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	FSUIh5OfrXNqmlRV3Ay89bTuEnbBnQM0ZhHt2wlyOordtNw/gxEGZgr1CCRm9fDhRBzp7R0eIm6ftvv49um6aE4hWq078lbLiv4BwjH2aYc49KAT3wTx4hteU4p6Dm6txd5uaBHKW3wL8Ua0XVdQi3j83NGjlvfSRjbFu9shZkXfyFg3ftOmagXjfA04ZC5ctehikSkVQUIESXjCEz9+x8pD+/Q9wYYkoi1YeaVPg/cx83GIQkYKzMWaH1lTBpfMXziqevAU1FYngQmoj8HW+2TJZd58oFH8R3Cv9M77TKCaMI0q7U6J1d2s12DykxYErw/66Jd5lZUxKT5ZK6WLrtL6XAW3y/DMs5k/VChFOQ/KSvFgqAWQlT8hCDokPXpkOuXgDEU4ERHFL9RpY4MGEVpX3LA+XcKvW7pRsAsw9Kn24QA+tvpVwll6xuKB8T+avgPsyT/rnPH+jlLI/XDQzQji6wdLojkarkHajyfjDtSEFPCbSr8vU2j7Ehbvh3eA+RKkKhkdcf5uhmZL5FNDHVqwlENHXNzmojJkblwzceGocJtr3+XWz00gUJWUlIo9otngcXlZDufZ6XkOrkvwlQCmGhR4EAKAAJh17wK3mVXaeI8NMb8BltijY+3Pv8YWPHv3pqTGek+pCDE99eDew7AIbT898u8xTlbv2T+zgc4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(376002)(39850400004)(346002)(366004)(451199021)(83380400001)(186003)(2906002)(2616005)(38100700002)(166002)(36756003)(86362001)(31696002)(5660300002)(8936002)(966005)(8676002)(66946007)(66556008)(66476007)(478600001)(6666004)(33964004)(41300700001)(6512007)(6486002)(316002)(31686004)(53546011)(6506007)(66899021)(26005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MjNlM2dzQ2EyL0J5aGk1MGFXUWsyWnRrSFh2UnFuRGlpU29ZQ2ZOYTFjZTNM?=
 =?utf-8?B?di93K2t6eE5kSEo5TmpZQ1Zyd1RBbXdPNEV0N2lPYkxhWXVOTXkzRVEzK0Vp?=
 =?utf-8?B?cWMrMmVTWndsUThSWFVCenVremc2c0tyTFp5Qkc0ZzhSWWNVMWZxVDNLM1hv?=
 =?utf-8?B?Y3B6c2QzeUR1cEhFVnJENXkyTkpxd3FGd1JOQmRxVWxVZDdxNHNid3NBdHN5?=
 =?utf-8?B?anV0RklPRU5icGhoN2FLMUZhMTRkWHlzMDI5dER3SmZKSWhkU0lKRzJMaXpD?=
 =?utf-8?B?dDFYekx1Q0l2a0lOdkRYeml3dm1kdkIxUjRSWXBWSlo4bXB3WWhac1NGYjRt?=
 =?utf-8?B?TDVZZmpIb0VEd0xITUJaV09ud245ZFQ1ejMwdlRmZFAzaUlMVVcxay9xQjZP?=
 =?utf-8?B?UU9PZmtka0ZVZUVuZnZPTUZBVUhVV0NYTGtoUnNCZEpNVGRBc0RkQWhhMytI?=
 =?utf-8?B?dmpMdHc2bjRLZ1pUelNGcFYrWTRkOGJZMVJoS1JYdlBqd0NHR3d0RlFzL1FP?=
 =?utf-8?B?ZXFUUC9qWmxVcVRBVnBmbk9YZmpHWXpnMmhwRjJ4YjNUTXZ1ZkZvb0cvRlYx?=
 =?utf-8?B?RW0rNWl4UVhQdTJUVzVsMVhWeFFVSzNGR0ZwaWRvSGlKTTNTZUJvTUMxQUxo?=
 =?utf-8?B?bnh3Qm10b3IwNmd2a09sdC9aeWFKMjhUVE9EZG1RR1V2T0dvSkVnc3BSNDhF?=
 =?utf-8?B?QTM3NnZOaUZOdHJReGJxYzhOaklxb2V5MXpmRW84K0t3ME9QZUVJbHhsR2dn?=
 =?utf-8?B?T3lxam1zYmFXUlZpbTE2YThkQ25BWmVlTTJFc2VqM3JYcHpUS2FNb1huY2lM?=
 =?utf-8?B?T1JCWUc3b3JBcENuZHZqVGhCaEF0UXB0WlpkVDRjUDF6QUl5WDdaRnV6M0ln?=
 =?utf-8?B?WG1KVjFJNFlBMTZWQmkzL2FaTWZIY3N0VENIZGQyejFLR05qMzI3N0lSR2F3?=
 =?utf-8?B?VXV1eVQzOW5jZ0c4eU5adWpMWmFIWkRocWFqdTl2cjM2elRNbDlzUVNWa0gx?=
 =?utf-8?B?RnF2RHFOZVVIZlpYbVhYUmlRODRLYXZEMnplS3QwazhNZyt4NFpwSnplemF4?=
 =?utf-8?B?VDlXelFvTlZqNkN3alBheW96aTkwYXV4VFFZZWFOUWVoaytTSTJJRzZrSHBq?=
 =?utf-8?B?TGpxZzJBMys3ZTl1SGlTYjZNRkg3N0YwYmpRZVpRUkRZY1BlK0NCSWVHR1lQ?=
 =?utf-8?B?d0dLNlFneEhlTDZYQjlVTFdiTHJTc0k0OFp1S0d1WG1PZjJQaENydWppRm41?=
 =?utf-8?B?ejVMbk9wTHlabVVra0hlcHgraEFCbTNldFFzSXExSFZqODVpKzg2djJyQU9t?=
 =?utf-8?B?NmN1U0ZCWENlekdXRmhJRkJjcmlVVXlaQ3BvVUpwZUhvUmNnUTVQdEs4dk1k?=
 =?utf-8?B?bGREMFdlb1h2U0NwSWJ2ZCtDT2F5VXFHM1ZHcUVQSnNwOUFVc0djYlJFZ2hj?=
 =?utf-8?B?NGdpVXpCQnFDdmdEa3MzUUk2eGI1WE0yZm45ZjRZYThhRE1yOWJTUjhObWtn?=
 =?utf-8?B?YXdPdmFDMWJsZzNwcXlVL0g5Q3dtZkkxQnJuaTlidVBMSDVtTWdWYmdHd1Jt?=
 =?utf-8?B?QWVxbzltMGRmQzBpZEcwKzZwakR1NVd1MWVOQU13eHgwQTdTKytab3Ura3Bz?=
 =?utf-8?B?WlFoeUZuWG9PMndQNG5EaTIzajB4L2h3TGlzWGVSSTlFQUZJTEFVUFZ2TzFT?=
 =?utf-8?B?S1FPTkF5dUNkSzhYZmtheXVBdzA0TUl6dk16VmhRRzNIR1V4dzZYa2lJQ3l0?=
 =?utf-8?B?K2JpYmhpekZSMHU1cVkxYnQxQTQvKzViR1RkdkgvY05meVNKVXl2TEVRRUJa?=
 =?utf-8?B?UzFWR09FenAyZ1A2eWJFeXh1aHhOSFJWaDBaOVBlTzZqOUZYVml0RUlzaXlU?=
 =?utf-8?B?NEpiUFhjcDZSdGxJalVqM0NVNlRHVU95S1BYUVhKb0ZXdXJBOUptRmFZcG9B?=
 =?utf-8?B?UlZTbGVpREVWMVk1VGVIN1ZPdUFONlphT1E4QkttbklKRy9Ud2FGMG56RnRp?=
 =?utf-8?B?cDdpNi91ZzZ2dThJclduRUU1MThyR05lRFV5dWw5ZVBsVGd2VmtPdExZZEky?=
 =?utf-8?B?RVl4Vkw3d1krZGFQOEpjTTM0RUdEMVpJUkFTMjJmVXJwckZSUnVlZzY1MUdF?=
 =?utf-8?B?MmRpRldleWE2RUh2R1dKaWV1cFFxZExjUmp1elBES2plcTEvWG52Uk9hbWJa?=
 =?utf-8?B?clE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53fe3c7a-ee3f-4d2d-bd79-08db50d94203
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2023 22:03:45.0547
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GTpWEnZla0UXTA5lG26Nv3w1mIXiR6McEchLc8CZ0R6cmEYloRfHbzUufs9LFCZ5gs9y7gydKxJ1YhyQL+gOqAK5nz3CgGZF4s+I+nDikVk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5442
X-Proofpoint-ORIG-GUID: gaNCCsGT_qPIsbn8CktjJZyDjx1iiXKU
X-Proofpoint-GUID: gaNCCsGT_qPIsbn8CktjJZyDjx1iiXKU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_14,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 mlxlogscore=502 lowpriorityscore=0 adultscore=0 spamscore=0
 phishscore=0 mlxscore=0 clxscore=1011 impostorscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305090180
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 22:04:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59956

--------------qauxkcK3aJzPLUCf0z000xWN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 349LWxXC026802

On 2023-04-30 19:01, Livius via lists.yoctoproject.org wrote:
> Hi,

Hi,

I'm a bit late but here is some of what you were looking for:


>
> What recipes should I use in IMAGE_INSTALL to install all of Rust
https://git.openembedded.org/openembedded-core/commit/?id=3Dbb781f452299c=
fa6ec7fffd215b0af3149178f32=20


> and toolchains things for it on my target ARM board?
That's not a very specific question but there is:

meta/recipes-core/packagegroups/packagegroup-self-hosted.bb

Rust is not in that list yet and I suspect most people are not ready to=20
add it either.
Once (if?) the kernel requires Rust, then we'll cha

> What Yocto release was started to support Rust?

Started in=C2=A0 honister:

=E2=9D=AF git log --reverse --oneline=C2=A0 --grep=C2=A0 rust: | head -1
61e1570c6a rust: initial merge of most of meta-rust

poky.git on master-next [$]
=E2=9D=AF git branch -a --contains 61e1570c6a
 =C2=A0 honister
 =C2=A0 kirkstone
 =C2=A0 kirkstone-next
 =C2=A0 langdale
 =C2=A0 master
* master-next
 =C2=A0 mickledore

but there were significant improvements in Aug 2022 and later,
specifically the ability to put the rust toolchain on the target MACHINE.


> Is ti possbile a make an SDK image with a Rust cross compiler like it i=
s possible with GCC via mingw for Windows 10?

Likely but I'm not aware of anyone having done that.

Please let us know if you try it and if it works.
If it's important to you, a test case might be useful.

../Randy


>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59825):https://lists.yoctoproject.org/g/yocto/messa=
ge/59825
> Mute This Topic:https://lists.yoctoproject.org/mt/98604334/3616765
> Mute #rust:https://lists.yoctoproject.org/g/yocto/mutehashtag/rust
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #sdk:https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [randy.macleo=
d@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--=20
# Randy MacLeod
# Wind River Linux

--------------qauxkcK3aJzPLUCf0z000xWN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 349LWxXC026802

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2023-04-30 19:01, Livius via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:idEi.1682895691085663545.uid1@l=
ists.yoctoproject.org">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hi,</pre>
    </blockquote>
    <p>Hi,</p>
    <p>I'm a bit late but here is some of what you were looking for:<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:idEi.1682895691085663545.uid1@l=
ists.yoctoproject.org">
      <pre class=3D"moz-quote-pre" wrap=3D"">

What recipes should I use in IMAGE_INSTALL to install all of Rust </pre>
    </blockquote>
<a class=3D"moz-txt-link-freetext" href=3D"https://git.openembedded.org/o=
penembedded-core/commit/?id=3Dbb781f452299cfa6ec7fffd215b0af3149178f32">h=
ttps://git.openembedded.org/openembedded-core/commit/?id=3Dbb781f452299cf=
a6ec7fffd215b0af3149178f32</a>
    <p>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">and toolchains things for =
it on my target ARM board? </pre>
      </blockquote>
      That's not a very specific question but there is:<br>
      <br>
    </p>
    <p>meta/recipes-core/packagegroups/packagegroup-self-hosted.bb</p>
    <p>Rust is not in that list yet and I suspect most people are not
      ready to add it either.<br>
      Once (if?) the kernel requires Rust, then we'll cha<br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:idEi.1682895691085663545.uid1@l=
ists.yoctoproject.org">
      <pre class=3D"moz-quote-pre" wrap=3D"">What Yocto release was start=
ed to support Rust? </pre>
    </blockquote>
    <p>Started in&nbsp; honister:<br>
    </p>
    <p>=E2=9D=AF git log --reverse --oneline&nbsp; --grep&nbsp; rust: | h=
ead -1<br>
      61e1570c6a rust: initial merge of most of meta-rust<br>
      <br>
      poky.git on master-next [$] <br>
      =E2=9D=AF git branch -a --contains 61e1570c6a<br>
      &nbsp; honister<br>
      &nbsp; kirkstone<br>
      &nbsp; kirkstone-next<br>
      &nbsp; langdale<br>
      &nbsp; master<br>
      * master-next<br>
      &nbsp; mickledore</p>
    <p>but there were significant improvements in Aug 2022 and later, <br=
>
      specifically the ability to put the rust toolchain on the target
      MACHINE.<br>
      <br>
      <br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:idEi.1682895691085663545.uid1@l=
ists.yoctoproject.org">
      <pre class=3D"moz-quote-pre" wrap=3D"">Is ti possbile a make an SDK=
 image with a Rust cross compiler like it is possible with GCC via mingw =
for Windows 10?</pre>
    </blockquote>
    <p>Likely but I'm not aware of anyone having done that.</p>
    <p>Please let us know if you try it and if it works. <br>
      If it's important to you, a test case might be useful.<br>
    </p>
    <p>../Randy</p>
    <p><br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:idEi.1682895691085663545.uid1@l=
ists.yoctoproject.org">
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#59825): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/59825">https://lists.yoctopr=
oject.org/g/yocto/message/59825</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/98604334/3616765">https://lists.yoctoproject.org/mt/=
98604334/3616765</a>
Mute #rust:<a class=3D"moz-txt-link-freetext" href=3D"https://lists.yocto=
project.org/g/yocto/mutehashtag/rust">https://lists.yoctoproject.org/g/yo=
cto/mutehashtag/rust</a>
Mute #yocto:<a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoct=
oproject.org/g/yocto/mutehashtag/yocto">https://lists.yoctoproject.org/g/=
yocto/mutehashtag/yocto</a>
Mute #sdk:<a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoctop=
roject.org/g/yocto/mutehashtag/sdk">https://lists.yoctoproject.org/g/yoct=
o/mutehashtag/sdk</a>
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

--------------qauxkcK3aJzPLUCf0z000xWN--

