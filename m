Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00A02C77B7A
	for <webhook@archiver.kernel.org>; Thu, 20 Apr 2023 19:24:16 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.201.1682018646811704683
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Apr 2023 12:24:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=KDnlNaKP;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=3474091b06=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33KGjfBP019049;
	Thu, 20 Apr 2023 19:24:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : subject : to : references : cc : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=bbXdMc1SUSMIc8GHLxpWKQPNZ7MGRKtFYaMMwvfWn5k=;
 b=KDnlNaKPhGMj6jTjkTOfbN33bvapclq1IUXPzHYxqK98ebUNau7f90DYEdfvAszQ9mX8
 DUWcvlTr2IcdE4NgYeRFtVw9rhd4nIOkyQ2pomnAlvG1YBh1s3VXhxit7v/3blfWiK2j
 ws1Lwy+IqVG6vIuE5Y2EzVNz+KVXXFLXPNoGCzDHPRfu5XXQuwpwY1kI1+fHmw899lbN
 j7Rbz2gV9+TV5m6HY5ayZ/rff6i0itbeJFgj4sD4KNInUGbCiWkm1ujFSWpEvy/Eb2aW
 QTRG4uP4AewcIfW0ypzL470rpwYaC+3Y8iiYp5Jdn6x6F3mrzeruS1s7I/KN7YGBi/bi Xw== 
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2177.outbound.protection.outlook.com [104.47.59.177])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3pyjway8hv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Apr 2023 19:24:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mqJmKdU9FYEA8ak8fJQiThiqCx53R2QfU11Su4LW0uk0OUvCMogggFOUTvTMuau1RTU8UmhF4IGVYUieyohUHzxsy9DaRgqV+UxumxNtTLqjrS4haODL9Yrizdm3v2x145flDezmsM+WCubGHqr61FVnILuN8vrHo6/sF4cB+MI9rePk0dKa9pgoNDMHc20H6J7SBJxdgK7ubsqNjsbjvG2GcaHD7Yj04GlQbpKJ4ID1rLtW7PZa+WmIFhjBPdreLTfCO4w0ZzX2jeOHewk5oElz78HWymU+q/0MeXjroLdGPTPVLgE08yr68YTIhPPTzxYiC5uWCLe69LH0z4CT6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bbXdMc1SUSMIc8GHLxpWKQPNZ7MGRKtFYaMMwvfWn5k=;
 b=gXjcua3+bKiGcEyNbk6UOEuFDGmOfnxlbGqbhgaTKPSMvmuGeN9Pk17A5X+bTvC4McqJSt2a0vayhL+95mU4ZKT/mG0SPH6b2Il++FgFaSvDAHrem3WiU8gRhoPyLEUaYDIPX7ERbhzk1gNT7di0PEvTktmaWe8Qx61g9z7ooDAj4E0r94JUrfPKdDvSHwLT2jZZmj7fsTpHXk41mXcbU58/n458F2IcHybeWOtcSMLT2pj1SerinTqqXyO/yDVhiFkXSzkcw/0xipL2AzUkK+XiLFS7DwsQoyX4wymWOLfAnaYFu3k2TzGLpU46d1cl7YluRoPbIymwbqtdULFMIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by CH0PR11MB5508.namprd11.prod.outlook.com (2603:10b6:610:d7::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Thu, 20 Apr
 2023 19:24:01 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::6e26:7321:99ab:72ab]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::6e26:7321:99ab:72ab%3]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 19:24:01 +0000
Content-Type: multipart/alternative;
 boundary="------------kzxru0gbnnDP90gskNDRhynC"
Message-ID: <8446f49d-d1ef-ac3b-2061-173b33f05b0d@windriver.com>
Date: Thu, 20 Apr 2023 15:23:57 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [yocto] [kirkstone] `rustc` executable missing from sdk
Content-Language: en-CA
To: yocto@lists.yoctoproject.org, danny@sizethreestudios.com
References: <mail.63fcde23.64c0.25550c0e0edee261@storage.wm.amazon.com>
 <0100018693c3bf2d-41ceabc7-ef97-4442-80e9-9d9092ab0edd-000000@email.amazonses.com>
Cc: "Kokkonda, Sundeep" <Sundeep.Kokkonda@windriver.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <0100018693c3bf2d-41ceabc7-ef97-4442-80e9-9d9092ab0edd-000000@email.amazonses.com>
X-ClientProxiedBy: SJ0PR05CA0116.namprd05.prod.outlook.com
 (2603:10b6:a03:334::31) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3994:EE_|CH0PR11MB5508:EE_
X-MS-Office365-Filtering-Correlation-Id: bb1dbe93-f311-47c4-ecf4-08db41d4cbda
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2TMaS9NQeRDp1Af2YtE8OyyQbW4dr8n3nRt6jRi8eG9Wa0dLwZtahND+PGVoLd32nhIx6H08WUfF4JXdFIK6f9dAwsAvpIWEH+99Lu9NE4UPb2kyiqtvp3EqZY7MqKojvN50tPLnhPK3vBWxqkv42y8mAojsUkt5Dt9oih648I7hSVULM3rjtg73i5Dj1KGLnlFNml5PxewK3y62+lZvnU2qiAlQQSJX3tWf22PHh4KlHy1P3BD7nd/ZUBVj3nNKHUs/mEuxCAchazN/EVBbuep3589/iPY6AgtBdChbUmHoXhElZZD80ef811WN2PtXPchAuKeVwNTiBB9qk7jjPgXACR6DVSO/7y4v4BaPXwIJCYIuezx9RC8rLl48dRPRL10he09Gv/dsjbY7JzI0kNa1dvvlLgH82/z3hasttsxr1At7DMbJWphvHKqf0VKA+u2cFEMTaryQ9EZDDHdx49mRrRv4j6t1MvCCV5tKHvYTKBDvM6/pQ68IUsf8res9WB49RXEWbf/RN/bHomIZiF+EksM676/7z9qSOZSaR/1CXfDnGeJYLcMJOZhEJqD60za6R93C/THPYPtfEWW3Jd+SCJbk6AObk433Rr0T3iTMuYVnuLyqB/MrdsjRy/gTa8WL56fBajyKde6P+MliFuJFdTMl3IX8F6ZTsIhScN9yvs3G1KCS+vJNWNitw3c7Qy2SNRvkZlKgMdjlhp2Kxg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39850400004)(396003)(346002)(376002)(136003)(366004)(451199021)(83380400001)(31686004)(478600001)(2616005)(31696002)(6506007)(6486002)(33964004)(6512007)(107886003)(26005)(966005)(6666004)(66476007)(66556008)(41300700001)(66946007)(4326008)(53546011)(316002)(186003)(5660300002)(38100700002)(66899021)(8676002)(166002)(2906002)(8936002)(86362001)(36756003)(81973001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RUxHTkZqdVZvVEpiYjhwaFozR2F1MDE2ZVQ3d3R6TzFNQTFTcW96Rk9uczN2?=
 =?utf-8?B?Sjh5WUs4N0RGRWxOVWFKZFJoTk9aOEVsbWZ4My9ZRmpUak53NHRNWFIwNnNi?=
 =?utf-8?B?S3Fjb1NWWm9LVm42cTYyR2JiZHNLRS8zRTE0Wk1aZUxlL1RGT2pJZU9GaE9B?=
 =?utf-8?B?bkR4K2JwWjh4cnhiRHVBbjU2RXN0UHoxYjlZcUN2dzBxRSt0b3RMV2RkZWF1?=
 =?utf-8?B?S0V2a3B1Ymh4Y09VKzBqbXpwK2VER2k4TUtvbVhVRkhlMlpUVW5uQVB2U1VG?=
 =?utf-8?B?aWVWdzBhRWJtMWdHTHdYU3RnNjNiODk4N29FUERnbnJLMmJvU3FJQ1lYbFhs?=
 =?utf-8?B?TjR6bkVjVU52SDl4R0doRUhmOHdTeDFSM1BoYTBrVUN2NjBWb0lwOHd3SzVY?=
 =?utf-8?B?cjY4NnRmQXRLWk11RXMrT2I4aXhrSXdFZmlVWUJzYk1qenFyMG8zRUV0d1Ew?=
 =?utf-8?B?UzRoanIxV2ZtQU1uVDlDeDZnQkRXeXJha0RzMlNxOHR5TzA1SHFUN293YVho?=
 =?utf-8?B?UmRzWXJpK2FtcWVFT0puUjBEeEtvVFVCeENlKyt1NHZ1L25lSGIzUUdEV3Ny?=
 =?utf-8?B?ZlhYSkFVMjdGRWRyT09sa3dEM2hsSTVCNzRUKzJWOGwxSkhXU1pkNHZpb1Z1?=
 =?utf-8?B?TFFlR2NMSjhGS2JCVWMxOUdPN3VsdHhDRmg3eFNmQzlhb2J6TXlsNm1Td1Q4?=
 =?utf-8?B?bDNqVHgzaWJ3VEo1RzlxQWxpN01uUzdiWjM1VXViNUEyN3E5dS81UGtSN0h1?=
 =?utf-8?B?N2Z4U3FKZVV2WXdqM0VzczgyYXUrWEJQN2JCdFZQa0pzTW40RC9RbEVFTGdy?=
 =?utf-8?B?cTFYRWwybDhQOVNrTGJSNFJWWTYrYnlmVmNYT3laOHpnMDA4Y0tzSCtOOFh4?=
 =?utf-8?B?YkwzWU9WL1dwT2Jmd21QdmVXVEp6TzZCeldDRC9PVXBaRWhQZDM5RGJkcmF4?=
 =?utf-8?B?STRpNEdDeWNpdFZaZWpyZjNPTVZRQ2l4ajBpVm9oSEE0bzVOSkxMc3J5Y3BQ?=
 =?utf-8?B?R3d5U1Q1cndBQlBwSDA0RUFlckxPSFlnVGl0TDFMS1lneTBvdnB3Nnovc3NJ?=
 =?utf-8?B?aUQ1dmpIc0Vxek41V0tiRDNiY1hVS0FuT1ZncmlrU2tBNmM3MCt0eFlVK09I?=
 =?utf-8?B?azJxbUExMFB6L2ZSUXgxM1VwWnVqSXdlUWN4SjNBWG9vYWkyUHdtV0FXS2pi?=
 =?utf-8?B?S0lSRFNCRjRYNS9hTSsrbloyd2xvSm03SkR5VVNHTWdteTl2V0tMbkh3MThz?=
 =?utf-8?B?Um1PR0pRNzFIcW9QMWJ4a2o3ZzdoMGtxNWs4VE4vb09PeEVpbU40ZGFlLzhr?=
 =?utf-8?B?SG0xWCthSU45c2hCakNiQ2p1QXg0RFBwTGMvZHhoMmJWVDZlb2QwWFlQazZr?=
 =?utf-8?B?U1BCc1V5S1FZamhoN3oxMnlmd0toYmdGaVI3M1htYnJuanBHOWFwZklPYXh1?=
 =?utf-8?B?MXp2aUt0SXNDTnVITmNYWDJka0xYamN6WnF6MzRmYm82djlwWGhyM2tNR0c3?=
 =?utf-8?B?V1BzTUNITGluUTVsQmhkSmI5ZUM0aWs1WU1kVW1KY3dFV1JaaDJTbEV0bVhF?=
 =?utf-8?B?Vm9sQjhhaFhrNUpOS3FXZ3B2aUdiU3A5RXYvck9GejNDeGZWL1VRVkpwbE9M?=
 =?utf-8?B?R0ZBOEduVnVqUGlCVDFEb0FTdnNuRGpOci9BZFFsMzR0TjB3ZXRWQklQVUFR?=
 =?utf-8?B?YU5BaVFJQ2pKaVpKYWhWdTVZMnY2ZDluOWJJenlQT1pVeHovbUFDT1RvQWZh?=
 =?utf-8?B?TGg5akNmZ083M2oxeDloaGQzV0poVkZOUDRIcHM4cHFVejNOa3JCTW9uOFRy?=
 =?utf-8?B?MTlOdXBmZ2RTR05VUmpzeU9SMFYvU1k3b2xyMG9lTGJjMmtMSk5mQ0wrdmxL?=
 =?utf-8?B?OWtiODJidHU3SkNzMk5NM05oUHVZNE9yNklpQWkyUEtiQWg1blRiMHg2VlJG?=
 =?utf-8?B?eVRzTG9KY1F4ZGt4UmhERFlFeFBEeGQwTnFPSTlkNkUxYkpXYlljU2ZsZDZx?=
 =?utf-8?B?TDJrMHhRU2pSVmk4eHRreGgyR21GTk4xdG4xeHdGOGlFeHcvZEhVTVNZVG5I?=
 =?utf-8?B?U3hIeVBPVmJLc01QSVJja3ZuUEwxYnVZNXlGMUlaQyt1NzN1YVZLazhoeW9q?=
 =?utf-8?B?cDRxNnp5Z2tmSENyT0FhR1VVYW83RWpmaVJBOHF2U2plY3paQWEvUzdSTCtq?=
 =?utf-8?B?a0E9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb1dbe93-f311-47c4-ecf4-08db41d4cbda
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2023 19:24:01.4437
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ou4+0gVjheuK5F7g4ENNTNk2sbx8wRYrwtwrFVSZridRqlbsM59o4ZbFAA6IxTZqS6e7pA2E2QA54hzN5IxPVVUyvwjwGO9dO9DSN6hpkac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5508
X-Proofpoint-GUID: MYBw_Rez-8yNRqBXQ7pD8DiloAWEqMbi
X-Proofpoint-ORIG-GUID: MYBw_Rez-8yNRqBXQ7pD8DiloAWEqMbi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-20_15,2023-04-20_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 clxscore=1011 phishscore=0 mlxscore=0 bulkscore=0 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304200162
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Apr 2023 19:24:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59742

--------------kzxru0gbnnDP90gskNDRhynC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 33KGjfBP019049

On 2023-02-27 11:45, Danny Hadley via lists.yoctoproject.org wrote:
> [kirkstone] `rustc` executable missing from sdk
>
> Hello all! I am working on integrating my application CI pipeline with=20
> the SDK generated by our yocto CI pipeline. So far, I have been able=20
> to build an SDK with cargo included by adding the following=20
> `TOOLCHAIN_HOST_TASK` assignment to our local.conf:
>
> ```
>
> TOOLCHAIN_HOST_TASK:append =3D " nativesdk-cargo"
>
> ```
>
> and building the SDK via
>
> ```
>
> bitbake -k -c populate_sdk <our image name>
>
> ```
>
> However, when our application CI picks up the SDK, it looks like it is=20
> missing the underlying `rustc` executable; a `cargo build` command=20
> fails with:
>
> ```
>
> error: could not execute process `rustc -vV` (never executed)
>
> ```
>
> I've manually sourced the SDK environment in a shell and confirmed=20
> that `which` does pick up cargo but not `rustc`:
>
> ```
>
> $ which cargo
>
> /<SDK installation path>/.sdk/sysroots/x86_64-pokysdk-linux/usr/bin/car=
go
> $ which rustc
>
> $
>
> ```
>
> Has anyone been able to populate the SDK on kirkstone with a working=20
> rustc/cargo toolchain?
>
> I've also tried comparing langdale and kirkstone; it looks like on=20
> langdale some work was done to add `nativesdk` support to the rust=20
> recipe itself (via BBCLASSEXTEND=C2=A0in rust-target.inc). I've been tr=
ying=20
> to mirror those changes via `.bbappend` files but haven't quite=20
> figured out what strings to pull.
>
> I'd be happy to provide any additional information that'd help triage.
>
Hi Danny,

Sorry for the long delay in replying. Did you ever get this to work?

Sundeep is CCed and he can help a bit if not since I'm away next week.

../Randy

> Thanks!
>
> - Danny
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59310):https://lists.yoctoproject.org/g/yocto/messa=
ge/59310
> Mute This Topic:https://lists.yoctoproject.org/mt/97270242/3616765
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [randy.macleo=
d@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--=20
# Randy MacLeod
# Wind River Linux

--------------kzxru0gbnnDP90gskNDRhynC
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2023-02-27 11:45, Danny Hadley via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:0100018693c3bf2d-41ceabc7-ef97-4442-80e9-9d9092ab0edd-000000@email.amazonses.com">
      
      <meta name="Generator" content="Amazon WorkMail v3.1.1463.0">
      <title>[kirkstone] `rustc` executable missing from sdk </title>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">Hello all! I am working on
        integrating my application CI pipeline with the SDK generated by
        our yocto CI pipeline. So far, I have been able to build an SDK
        with cargo included by adding the following
        `TOOLCHAIN_HOST_TASK` assignment to our <font face="Courier
          New, Courier, monospace">local.conf:</font><br>
        <br>
        ```</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;"><font face="Courier New, Courier,
          monospace">TOOLCHAIN_HOST_TASK:append = &quot; nativesdk-cargo&quot;</font></p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">```</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">&nbsp;</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">and building the SDK via&nbsp;<br>
        <br>
        ```</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;"><font face="Courier New, Courier,
          monospace">bitbake -k -c populate_sdk &lt;our image name&gt;</font></p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">```</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">&nbsp;</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">However, when our application CI
        picks up the SDK, it looks like it is missing the underlying `<font face="Courier New, Courier, monospace">rustc</font>`
        executable; a `<font face="Courier New, Courier, monospace">cargo
          build</font>` command fails with:</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">&nbsp;</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">```</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;"><font face="Courier New, Courier,
          monospace">error: could not execute process `rustc -vV` (never
          executed)</font></p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">```</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">&nbsp;</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">I've manually sourced the SDK
        environment in a shell and confirmed that `<font face="Courier
          New, Courier, monospace">which</font>` does pick up cargo but
        not `<font face="Courier New, Courier, monospace">rustc</font>`:</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">&nbsp;</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">```</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;"><font face="Courier New, Courier,
          monospace">$ which cargo</font></p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;"><font face="Courier New, Courier,
          monospace">/&lt;SDK installation
          path&gt;/.sdk/sysroots/x86_64-pokysdk-linux/usr/bin/cargo<br>
          $ which rustc</font></p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;"><font face="Courier New, Courier,
          monospace">$&nbsp;</font></p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">```</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">&nbsp;</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">Has anyone been able to populate
        the SDK on kirkstone with a working rustc/cargo toolchain?<br>
        <br>
        I've also tried comparing langdale and kirkstone; it looks like
        on langdale some work was done to add `<font face="Courier New,
          Courier, monospace">nativesdk</font>` support to the rust
        recipe itself (via <font face="Courier New, Courier, monospace">BBCLASSEXTEND</font>&nbsp;in
        <font face="Courier New, Courier, monospace">rust-target.inc</font>).
        I've been trying to mirror those changes via `.bbappend` files
        but haven't quite figured out what strings to pull.&nbsp;<br>
        <br>
        I'd be happy to provide any additional information that'd help
        triage.</p>
    </blockquote>
    <p>Hi Danny,</p>
    <p>Sorry for the long delay in replying. Did you ever get this to
      work?</p>
    <p>Sundeep is CCed and he can help a bit if not since I'm away next
      week.<br>
    </p>
    <p>../Randy<br>
    </p>
    <blockquote type="cite" cite="mid:0100018693c3bf2d-41ceabc7-ef97-4442-80e9-9d9092ab0edd-000000@email.amazonses.com">
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">&nbsp;</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">&nbsp;</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">Thanks!</p>
      <p style="margin: 0px; font-family: Arial, Tahoma, Helvetica,
        sans-serif; font-size: small;">- Danny</p>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#59310): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/59310">https://lists.yoctoproject.org/g/yocto/message/59310</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/97270242/3616765">https://lists.yoctoproject.org/mt/97270242/3616765</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------kzxru0gbnnDP90gskNDRhynC--

