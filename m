Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 744B9C433EF
	for <webhook@archiver.kernel.org>; Fri, 28 Jan 2022 21:12:19 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.90.1643404337478483984
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 13:12:18 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com
 header.s=pps06212021 header.b=ls69osQZ;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=9027d8ef58=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 20SKpqtD017731;
	Fri, 28 Jan 2022 13:12:16 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=message-id : date
 : subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=FNtPtGJnZDRYNW24TvsFPwq7OhKPCxgvCRz5pHFPCkY=;
 b=ls69osQZJSbYUFsg8hgrwNGsvr2HON0C0d1D8hZHKo96Yx55d3DebERZ7bZpdo/MNfQY
 f4Vck31symY/TYonlx+Nt1rAZYh6AJiR0P3gZfdevoLVDk4w/zOKCUnUK0nayBrbkEPw
 wWaVMvzBL3CC/M7Zzokn6VtKe0KK3jkC4ikwCmIWsTEdy3cpQg3ZEsSobhpddhsKDaHb
 /f5INLN+v4CfEnGpLYj6qsKWJnC4SQ1pWlBcfTrbAl1e/m9HEIBuSYyOEHm/ClmWe66L
 cEvjV51hmLC1KQ4vuNKlhwwIOA5BwBSTLNrLDG/wSCfosAaYbT0wQ3DOzQupVuNInGwy uw==
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2171.outbound.protection.outlook.com [104.47.55.171])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3dugc9hjy3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Jan 2022 13:12:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kQvrAmQY3OPk2Cw2j5oLSmJNJ+be3FkHcGFV2pRBvMjngpU0xnoatuwdevFtTyGTfa3jpw1B3RXscqJwLd3oXP+aBphr0FykQ66P1vVHwHQub2qYM/T30bCuIz0br9IK5WCCZVGpoiQi3R70NHOFpCuwOT1K2uOZDZmyKiK7/EDMwu7dM7TgDf5E+rJBQsEvqwCBmPaKhmWnnao+QBShJ5IHxtphZ1NZ4VlTK28jMQUtWNhaqdZWW379d9PpZTuAdc3K5uZtJp3a05eOC/cCwcp4jZDgRmGbvAAWyqkBuv8H80diM9Szn0ucaKmeXtSbD/SpfEOFrr1hCEUUqTTLGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FNtPtGJnZDRYNW24TvsFPwq7OhKPCxgvCRz5pHFPCkY=;
 b=dgp+qglomKaVrKCfIHBeQSSHzb6gQC/gxBKfWiva2xoGN2phKL2ch04cQvG69l/9Doi8q3zckFgJb5BXee4TUGn98Q7m+QziX0FZdNNqUO6aomliRU90UC1qfdLhnttga7l8cWdvosRCgP0cEG6KEmVGl2eczKzBeSfv3RZaCCz1TTNajkQmJRQesNm/xh4xYfir3eXb8m4KX6L3kIclTI4XiQl3GO7VuTDnOstLXiBsoN9J3SGAym96xBxeU0dyKMJ8medPRv36EHyFkVKrwQVKnulgMHpulW0bZdO8U2MKXuDd7t84XtmmIX+bjSwZzFDdmk9zKb5628AQ0ojzaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM4PR11MB5374.namprd11.prod.outlook.com (2603:10b6:5:395::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.17; Fri, 28 Jan
 2022 21:12:13 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f4ad:a867:7f2:8958]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f4ad:a867:7f2:8958%6]) with mapi id 15.20.4930.015; Fri, 28 Jan 2022
 21:12:13 +0000
Message-ID: <94290825-2d1e-ade7-93c8-ff55d1ffa992@windriver.com>
Date: Fri, 28 Jan 2022 16:12:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [yocto] libquadmath
Content-Language: en-CA
To: staticd <staticd@gmail.com>
Cc: Konrad Weihmann <kweihmann@outlook.com>, yocto@lists.yoctoproject.org
References: 
 <CAFC2zY1xWRvmZ75r6JG=3ZZ4xX83584Q1RDXgdGEBCi4Gr+gSw@mail.gmail.com>
 <CALpKvHrow01J=5XCgJHyeNK8DXApsOOXwjUyUOA6jMP204YpiA@mail.gmail.com>
 <CAFC2zY1RbDGbeZZD7YtzKBFF66aSo8qiXfn3tFCujAEWqqk_oA@mail.gmail.com>
 <CAFC2zY10Hi9mT03biAvbsyfmPjvNNukmOCrwH1-mYKAG4NT9qA@mail.gmail.com>
 <AM9PR09MB464282949C9AB4859002D0BFA8489@AM9PR09MB4642.eurprd09.prod.outlook.com>
 <16C68A3757A696DC.7129@lists.yoctoproject.org>
 <16C693CC9204E930.9481@lists.yoctoproject.org>
 <CAFC2zY17A-Om6hp0C--MEqp7HU8UAPsmOsgqnnJtV0odLxqzUA@mail.gmail.com>
 <CAFC2zY130AVMz6mUsJup_1RqSfRENWhLxcEGH5SyTX1vWz+8qA@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: 
 <CAFC2zY130AVMz6mUsJup_1RqSfRENWhLxcEGH5SyTX1vWz+8qA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: SJ0PR03CA0193.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::18) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 87f6fced-5d7f-4302-4e68-08d9e2a2da8a
X-MS-TrafficTypeDiagnostic: DM4PR11MB5374:EE_
X-Microsoft-Antispam-PRVS: 
	<DM4PR11MB53749BA82D168A10594EEDC8F8229@DM4PR11MB5374.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	BYWiCrqwpyGilfdGAAlEbRK8EUl+OdozUIC+7qCtUuG/+SjjBbu16GjWK4vLfgUSypGmsmYpyyITG1xb8xIW/oiQh4M7GhH5ns0pWM5yAAJ7ROFU+gNOG9CTR7VzDzxdqK70PR4YtXa9O4U/6MyW0ZIZu575XhSNXc0BWT7K7aN291DKfF4BSwDFg5ZhfJLpq1+iV2pkIUOMcl84oFtb54OuRtSgcfosYavVif2e7Lh3JqIEJJRStXo8ZHOhZ78IrCGj+OqOxf9U3/X294y/ZNZNaEJ6/vHh/lpf9/X9jlNwv/dUh2q4T4SQ7GZKmYF0g9x/XWtyxRVmYmHwKrj2ISc3wk5DVslxLllWWngBPDtudz19AvenynrPFAaPjjlXGkw9A55O8OSoxtPIBYjEUIWBPIkDM7OsEfECs1IsMOU5d39EQmsPbEQMu6UUdaukcXfY6BrSeI7heR1aQm0D6ILqgIxhU35ely9LXpC9w9c0eUXpNom5tZ6jfLQjAK23UUGX70X4JhABK1E8K8ZofHXjVBI1VGRHrCBeINcC4TMnGgEBogDbxRkTZCs66RBVJpqp2n578Nj0UFpNPaNWHPrqYSrD48HZUVKGEBE5rvDX+l0bSXP3bJVoFboWTYxmIpKx/+dp9WFZoRSigh7BRyVM59qw1EEFCqE1KKOOjnQezb9qIAms458liDFDuOWePzfCrjKBQ1CwmSODe7o+/xDI6BmBuke8QBDZjQp2x9e4my2WUB0swyyahIvOmiE03rjf4VAlU/a9VfN3IICWv5uzVBk3i2dJ7DP1UxR0IGCNobUwLmPDYAT6LH/SQuy3XPT12me3xuX2VPy2ytY9oRWNpDmXpLb2xYhmFnBSPDJHqqPt8RX2ir0Syhs/D9SozRQ7185e9/+CaD1c9+35vw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(45080400002)(508600001)(6916009)(6506007)(31696002)(4326008)(2616005)(6486002)(966005)(83380400001)(86362001)(6666004)(53546011)(52116002)(36756003)(66476007)(8936002)(38100700002)(8676002)(26005)(38350700002)(30864003)(316002)(66556008)(2906002)(186003)(31686004)(5660300002)(66946007)(6512007)(45980500001)(43740500002)(20210929001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?M2xuT2l2b0NnZFFDOEt0a2hmYXVIc0RVY2V4aW5KNnAyWCtMMFl6OStXWnFi?=
 =?utf-8?B?SkVTb2FXQng5c3kwYWlua2kzQjJneTZlcnFrSVhjdU1TcG5kd0ZrNTFWMjAv?=
 =?utf-8?B?bTk5Zm1ZbUJYL294Z1A4QXhXMkx1U0hPZk1PazgzUzVJcVNjRDJPMDRKSVor?=
 =?utf-8?B?ZkpYazNMUUxNTjNYWTkrRzY4QzU3OStwUlN5YzA0amd6UW9uWTFGcENsYjB3?=
 =?utf-8?B?TzUycWhyNHhhcGJyYSt0NjdCVnJyc0VBbnBsdU1USmNLRWJSdUJLYjJPOVJn?=
 =?utf-8?B?MUpuYUZXRXl5SWJ1QkFjMnZ5UWYwOXBmWGJiR1NNb005Snl4aWNQUlhja1BN?=
 =?utf-8?B?Q3kzMHNsQjFyZWdlWVZwaVl5cmluWjR5MTdtWjFFeHpRUzMwMS9ldWZYcHZV?=
 =?utf-8?B?RFAxTzF1WnhWMDA1NExmZmtzR0xYT3QzTTJrcHZqZWxpUjNxOW9leVpSRjJm?=
 =?utf-8?B?QlBnSDJOTE1vUnQ0dldXbTg5YTk4NW5oaUtQRC92Rmd5ZEF5cDdrejh3NXpr?=
 =?utf-8?B?VUtWYTc0L3MwNVFCUHJVd24ydzIwaWVjeHBqZTd3NDN3UmZldTJCbGFJN0Ji?=
 =?utf-8?B?UUpLWmVHdEh5MGQvay9ZSVJBNWl0RDNkOW1LMm9HNjJUQ1JCdnFFZ1hrQTEx?=
 =?utf-8?B?TitEZVF6ZnlONm9ZVHUxVFlsbnc0aDA1cTBVYVhqRitBMHg5NnpBWWdpTWpG?=
 =?utf-8?B?LzRySVFSd3ZLR1VRQitnYlVPMG81M3docUZIbEoxV3BMKy9IU09KUjFLZjZa?=
 =?utf-8?B?cW54VWVmYS9NMEVqQVEvWFVsMUtNUTR1YWFtTmtYc1FCckprM2h2MVBvc2Zy?=
 =?utf-8?B?TGhhRFl0TGdlQldLbW9MTUZBdnZCRUpLT2pLV3NrUk5YSENkTElFcURJWVUz?=
 =?utf-8?B?aHAyRlMvL0pLSWtudndHbWxvZUE3d1RBdFJPSHZWaUdwekt2bTI3M2diaFFC?=
 =?utf-8?B?cEtSdlR6UjN6cFdyM3FTUnR3NnlZU3htYTU5Y3Jub003c0d3RTVoSndoQzJS?=
 =?utf-8?B?R2kxLzlSWk1ZQlVvelY2TGRnS0s0UGt3K3FxMHBvTFFVNmk4dGdhR2J5bWUv?=
 =?utf-8?B?Mnd0eEM4TlRkYkdYYWMzYlltbFNJTmE4cUxkejg4T05lUEYralQwbnl4TkRC?=
 =?utf-8?B?cWZ2SGJld3JRUFFzTElIWjBpNnVZZHp2aFBFUUJiK0ZWdWovQTQ4V0U4bE8z?=
 =?utf-8?B?T1g4NE1PNnk1ZkhyaXQzTmkxVmpKWmYvSlFzaUFRbDIvUHNDS0crRHd3Nk50?=
 =?utf-8?B?QUdCdUVwZXpIQzB2dnpnT2h0MDZyMEVxN0FtMXVPTDE5RGZhL290L2s1MUZU?=
 =?utf-8?B?Z3djcDJKNnlDNGM1R1VnaHJCdWpEaFJlc2d4bzVjU25RQk92OHZWMW5WOHBk?=
 =?utf-8?B?ZjhPVnBiZXF3M29sM2Zydy93czA4Qy9uaFNYM0VXZm9sSFdnbGd1VGk0ZnlR?=
 =?utf-8?B?a0ZNZWVPdjZTUEVvR3lpc3lqRkpjaU03c09XajVLajM1TVFXdGdOTXZOQjcy?=
 =?utf-8?B?cERRelBNUVhINW5BMmtRSy85M0dkS0xUSW15ckNqM1hXYm8vaWZoeXNiTis0?=
 =?utf-8?B?Qk9WaGQwMnVBekpaZE1YNXRzKzh4aHVtWHNtb3FnZDhxSkdPUDNVYTFHMmM3?=
 =?utf-8?B?VEpuZ1RXZFdkL0RqL0RYSXRXeTBNaHhBRW9QeDJuTUtJYWdKSzhUVCsyWnM0?=
 =?utf-8?B?aHBZMlBVTnJHU1FkVFk1bHI0bFoxSG5nYVVYR29vNGtRajA4YVI1RXNmME5w?=
 =?utf-8?B?T056dURkMlJiSkVUVmFiUXAxRnlueTFtb3Rma3hnRThvTWtSdzdlWUNTN1or?=
 =?utf-8?B?bzJpK3F0V1lYT09HNXFSMVllcWVDMmUzWEE4QytvbVk5L0FjS2FBcVVIUlZa?=
 =?utf-8?B?S0lwS2N3c0hOdjFKVjJpVW8wby8rd0Vnc2xwMlN0SzNmRlQrSWl3S0R2UmlZ?=
 =?utf-8?B?M0pzZHBZSGhHYURzVnY2M2R2enZrTnV2QlBZM3A5Nlc3T243RFNodHBRb3Fr?=
 =?utf-8?B?OGRsKy9YM0JwdUNMSWdQS1kwSkJ6am9BYlJiNlNwMDA1VXRSQ3hJaXp1RUZs?=
 =?utf-8?B?Y0VOMmlPeUQrakNpY0FZV0FMeDZaL2I1OUFqTmZFWDFGdGJ0YUNRRVZtdHMw?=
 =?utf-8?B?emw1N3JJZHR4SHBscVFMNC8vNGc5TzNFSjBTYWNWL1pGVk5uRDBIc0VWbGVJ?=
 =?utf-8?B?Y2Y3cVJ4bncxVnRtRGxpczJnOS80V2xIS1Z3VWZ0cHdiQXlRYVN5U1FsMUJN?=
 =?utf-8?Q?erbBUgOILSViBzbcmstyIet4YzlhYDh70XGuqz8rr4=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 87f6fced-5d7f-4302-4e68-08d9e2a2da8a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2022 21:12:13.1837
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 wrFLi3L77Mhp69m0jKM3tJ+p8TtmtBrudlWqNizaGykKI1FLD3/7LC31zbJor/jU0HZSAH5fPSe38TMk+lJ/mUSaXVhc6KvFoPrTZHpB+N8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5374
X-Proofpoint-GUID: 3DjviFsXvDKeOHMIY3Lf3CgW42Ve9dGd
X-Proofpoint-ORIG-GUID: 3DjviFsXvDKeOHMIY3Lf3CgW42Ve9dGd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-28_08,2022-01-28_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1011 bulkscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 mlxlogscore=999
 malwarescore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2201110000 definitions=main-2201280121
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 20SKpqtD017731
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jan 2022 21:12:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56016

On 2022-01-04 10:00, staticd wrote:
> One final update for anyone who might run into this problem.
>=20
> With all of my fiddling/twiddling I failed to get libquadmath to build=20
> under the `zeus` branch.=C2=A0 Unfortunately, my other layer dependenci=
es=20
> only support `zeus` so it seems I will have to wait until they support =
a=20
> branch that can build `libquadmath`.
>=20
> I am fairly certain there is just a simple mistake somewhere but, alas,=
=20
> I have been unable to find where that is.

Hi,

If you can come up with a reasonably simple reproducer and
it fails on a supported branch:
    https://wiki.yoctoproject.org/wiki/Releases

then we'd appreciate if if you could report the bug in the YP Bugzilla:
=20
https://wiki.yoctoproject.org/wiki/Bugzilla_Configuration_and_Bug_Trackin=
g

Don't worry too much about getting every field right if you aren't famili=
ar
with the overall project.


There's no guarantee that we'll get someone to work on it but
at least it's tracked and we might get to it at some point.

../Randy


>=20
> On Mon, Jan 3, 2022 at 4:55 PM staticd <staticd@gmail.com=20
> <mailto:staticd@gmail.com>> wrote:
>=20
>     I made some progress...
>=20
>     It turns out that libquadmath is failing to build.
>=20
>     When I goto the
>     `build/tmp/work/...../gcc-runtime/9.2.0-r0/gcc-9.2.0/build.arm-oe-l=
inux-gnueabi.arm-oe-linux-gnueabi/arm-oe-linux-gnueabi/libquadmath`
>     directory, the only files that are there are:
>     ```
>     libquadmath =C2=A0] ls -l
>     total 476
>     -rw-r--r--. 1 2017 oe-builder =C2=A0 4433 Jan =C2=A03 16:17 config.=
h
>     -rw-r--r--. 1 2017 oe-builder =C2=A069297 Jan =C2=A03 16:17 config.=
log
>     -rwxr-xr-x. 1 2017 oe-builder =C2=A077122 Jan =C2=A03 16:17 config.=
status
>     -rwxr-xr-x. 1 2017 oe-builder 267083 Jan =C2=A03 16:17 libtool
>     -rw-r--r--. 1 2017 oe-builder =C2=A057241 Jan =C2=A03 16:17 Makefil=
e
>     -rw-r--r--. 1 2017 oe-builder =C2=A0 =C2=A0 23 Jan =C2=A03 16:17 st=
amp-h1
>     ```
>     In the config.log, there are errors, some of which are expected, bu=
t
>     still:
>     ```
>     libquadmath =C2=A0] grep -i error config.log
>     arm-oe-linux-gnueabi-gcc: error: unrecognized command line option '=
-V'
>     arm-oe-linux-gnueabi-gcc: fatal error: no input files
>     arm-oe-linux-gnueabi-gcc: error: unrecognized command line option
>     '-qversion'; did you mean '--version'?
>     arm-oe-linux-gnueabi-gcc: fatal error: no input files
>     conftest.c:11:10: fatal error: ac_nonexistent.h: No such file or
>     directory
>     arm-oe-linux-gnueabi-gcc: error: unrecognized command line option '=
-V'
>     arm-oe-linux-gnueabi-gcc: fatal error: no input files
>     arm-oe-linux-gnueabi-gcc: error: unrecognized command line option
>     '-qversion'; did you mean '--version'?
>     arm-oe-linux-gnueabi-gcc: fatal error: no input files
>     conftest.c:28:10: fatal error: ac_nonexistent.h: No such file or
>     directory
>     configure:12551: arm-oe-linux-gnueabi-gcc =C2=A0-mthumb -mfpu=3Dneo=
n
>     -mfloat-abi=3Dhard -mcpu=3Dcortex-a9
>     --sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9t2hf-neon=
-oe-linux-gnueabi/gcc-runtime/9.2.0-r0/recipe-sysroot
>     -c =C2=A0-O2 -pipe -g -feliminate-unused-debug-types   =20
>     -fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9=
t2hf-neon-oe-linux-gnueabi/gcc-runtime/9.2.0-r0/recipe-sysroot=3D
>      =20
>      =C2=A0-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/c=
ortexa9t2hf-neon-oe-linux-gnueabi/gcc-runtime/9.2.0-r0/recipe-sysroot-nat=
ive=3D =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc=
/work-shared/gcc-9.2.0-r0/gcc-9.2.0=3D/usr/src/debug/gcc-runtime/9.2.0-r0=
 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work-=
shared/gcc-9.2.0-r0/gcc-9.2.0/include=3D/usr/src/debug/gcc-runtime/9.2.0-=
r0/libstdc++-v3/../include =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/oe-bui=
lder/build/tmp-glibc/work-shared/gcc-9.2.0-r0/gcc-9.2.0/libiberty=3D/usr/=
src/debug/gcc-runtime/9.2.0-r0/libstdc++-v3/../libiberty =C2=A0 =C2=A0-fd=
ebug-prefix-map=3D/home/oe-builder/build/tmp-glibc/work/cortexa9t2hf-neon=
-oe-linux-gnueabi/gcc-runtime/9.2.0-r0/gcc-9.2.0/build.arm-oe-linux-gnuea=
bi.arm-oe-linux-gnueabi=3D/usr/src/debug/gcc-runtime/9.2.0-r0 =C2=A0 =C2=A0=
 -Werror =C2=A0conftest.c >&5
>     glibcxx_cv_system_error10=3Dyes
>     glibcxx_cv_system_error11=3Dyes
>     glibcxx_cv_system_error12=3Dyes
>     glibcxx_cv_system_error13=3Dyes
>     glibcxx_cv_system_error14=3Dyes
>     glibcxx_cv_system_error15=3Dyes
>     glibcxx_cv_system_error16=3Dyes
>     glibcxx_cv_system_error17=3Dyes
>     glibcxx_cv_system_error18=3Dyes
>     glibcxx_cv_system_error19=3Dyes
>     glibcxx_cv_system_error1=3Dyes
>     glibcxx_cv_system_error2=3Dyes
>     glibcxx_cv_system_error3=3Dyes
>     glibcxx_cv_system_error4=3Dyes
>     glibcxx_cv_system_error5=3Dyes
>     glibcxx_cv_system_error6=3Dyes
>     glibcxx_cv_system_error7=3Dyes
>     glibcxx_cv_system_error8=3Dyes
>     glibcxx_cv_system_error9=3Dyes
>     ```
>     If I check out another library that I expect to get, like, `libitm`=
,
>     I see:
>     ```
>     libquadmath =C2=A0] ls -trl ../libitm/
>     total 2872
>     -rwxr-xr-x. 1 2017 oe-builder =C2=A097435 Jan =C2=A03 16:17 config.=
status
>     -rw-r--r--. 1 2017 oe-builder =C2=A047665 Jan =C2=A03 16:17 Makefil=
e
>     drwxr-xr-x. 2 2017 oe-builder =C2=A0 =C2=A0 22 Jan =C2=A03 16:17 te=
stsuite
>     -rw-r--r--. 1 2017 oe-builder =C2=A0 =C2=A0162 Jan =C2=A03 16:17 li=
bitm.spec
>     -rw-r--r--. 1 2017 oe-builder =C2=A0 5251 Jan =C2=A03 16:17 config.=
h
>     -rw-r--r--. 1 2017 oe-builder =C2=A0 =C2=A0 23 Jan =C2=A03 16:17 st=
amp-h1
>     -rwxr-xr-x. 1 2017 oe-builder 274850 Jan =C2=A03 16:17 libtool
>     -rw-r--r--. 1 2017 oe-builder =C2=A0 =C2=A0868 Jan =C2=A03 16:17 gs=
tdint.h
>     -rw-r--r--. 1 2017 oe-builder 119521 Jan =C2=A03 16:17 config.log
>     -rw-r--r--. 1 2017 oe-builder =C2=A050080 Jan =C2=A03 16:18 alloc_c=
.o
>     ...
>     -rw-r--r--. 1 2017 oe-builder =C2=A0 =C2=A0931 Jan =C2=A03 16:18 li=
bitm.la
>     <http://libitm.la>
>     ```
>=20
>     Have you seen something like this before?=C2=A0 I am not sure how t=
o fix
>     this...
>=20
>     Any help is greatly appreciated.
>=20
>     On Sun, Jan 2, 2022 at 5:13 PM staticd via lists.yoctoproject.org
>     <http://lists.yoctoproject.org>
>     <staticd=3Dgmail.com@lists.yoctoproject.org
>     <mailto:gmail.com@lists.yoctoproject.org>> wrote:
>=20
>         So, I built the latest poky and created the example recipe with
>         the `DEPENDS` from my recipe and indeed, I see `libquadmath.so
>         <http://libquadmath.so>`
>         in `sysroots-components/`.
>=20
>         I am really scratching my head now.=C2=A0 I must be missing som=
ething
>         silly somewhere...
>=20
>         My build environment=C2=A0is running `zeus`=C2=A0 and the lates=
t `poky` I
>         grabbed is `honister`=C2=A0 Perhaps something changed that I am=
 just
>         overlooking somehow.
>=20
>         On Sun, Jan 2, 2022 at 2:18 PM staticd via
>         lists.yoctoproject.org
>         <http://lists.yoctoproject.org>
>         <staticd=3Dgmail.com@lists.yoctoproject.org
>         <mailto:gmail.com@lists.yoctoproject.org>> wrote:
>=20
>             Thank you, Konrad.
>=20
>             I have tried both of the approaches (local.conf and
>             gcc-runtime_%.bbappend/gcc_%.bbappend), still
>             `libquadmath.so
>             <http://libquadmath.so>`
>             is not being built.
>=20
>             I will keep fiddling but I think we are onto something.
>=20
>             The interesting thing I found is that `libquadmath.so
>             <http://libquadmath.so>`
>             IS being built for the nativesdk but NOT when I add `DEPEND=
S
>             =3D "virtual/${TARGET_PREFIX}compillerlibs"` to my recipe.
>=20
>             Perhaps, because `FORTRAN =3D ""` is in the gcc_%.bb, maybe
>             that should be something less strict?
>=20
>             I might be screwing up my bbappend too...
>=20
>             My append is in
>             `meta-mylayer/recipes-devtools/gcc/gcc-runtime_%.bbappend`
>=20
>             Which is mapped correctly to $BBFILES n my layers `layer.co=
nf`
>=20
>             On Sun, Jan 2, 2022 at 2:07 PM Konrad Weihmann
>             <kweihmann@outlook.com <mailto:kweihmann@outlook.com>> wrot=
e:
>=20
>                 The following I just found in local.conf.sample.extende=
d
>=20
>                 # Enabling FORTRAN
>                 # Note this is not officially supported and is just
>                 illustrated here to
>                 # show an example of how it can be done
>                 # You'll also need your fortran recipe to depend on
>                 libgfortran
>                 FORTRAN:forcevariable =3D ",fortran"
>=20
>                 guess that will solve your issue without the need for a
>                 bbappend.
>                 Just inject that line via distro or local.conf
>=20
>                 On 02.01.22 18:31, staticd wrote:
>                  > I think to clarify...what I need are these files:
>                  >
>                  > --- snipped from gcc-runtime.inc ---
>                  > ```
>                  > FILES_libquadmath =3D "${libdir}/libquadmath*.so.*"
>                  > SUMMARY_libquadmath =3D "GNU quad-precision math lib=
rary"
>                  > FILES_libquadmath-dev =3D "\
>                  >=C2=A0 =C2=A0 =C2=A0 ${libdir}/${TARGET_SYS}/${BINV}/=
include/quadmath* \
>                  >=C2=A0 =C2=A0 =C2=A0 ${libdir}/libquadmath*.so \
>                  >=C2=A0 =C2=A0 =C2=A0 ${libdir}/libquadmath.la
>                 <http://libquadmath.la>
>                 <http://libquadmath.la
>                 <http://libquadmath.la>>
>                 \
>                  > "
>                  > ```
>                  > ---
>                  > to be in my $STAGING_LIBDIR
>                  >
>                  > So far, I have been unable to figure out how to do
>                 that, unfortunately.
>                  >
>                  > On Sun, Jan 2, 2022 at 12:23 PM staticd
>                 <staticd@gmail.com <mailto:staticd@gmail.com>
>                  > <mailto:staticd@gmail.com
>                 <mailto:staticd@gmail.com>>> wrote:
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0Thank you, Michael.
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0I have `DEPENDS =3D
>                 "virtual/arm-oe-linux-gnueabi-compilerlibs"`
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0and `do_compile[depends] +=3D
>                  >=C2=A0 =C2=A0 =C2=A0"virtual/arm-oe-linux-gnueabi-com=
pilerlibs:do_check"`
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0However, libquadmath.so
>                 <http://libquadmath.so>
>                 is still not present in `recipe-sysroot/lib`
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0I used the `do_check` task from g=
cc_runtime but
>                 that still isn't
>                  >=C2=A0 =C2=A0 =C2=A0providing `libquadmath.so
>                 <http://libquadmath.so>`
>                 in my $STAGING_LIBDIR, which is where I
>                  >=C2=A0 =C2=A0 =C2=A0need it.
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0Many=C2=A0thanks.
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0On Sun, Jan 2, 2022 at 12:17 PM M=
ichael Ho
>                 <michael.ho@ieee.org <mailto:michael.ho@ieee.org>
>                  >=C2=A0 =C2=A0 =C2=A0<mailto:michael.ho@ieee.org
>                 <mailto:michael.ho@ieee.org>>> wrote:
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Not familiar with F=
ortran but maybe it helps
>                 to know that this
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0is normally handled=
 with the DEPENDS
>                 mechanism. When you add
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0other recipes as de=
pendencies to your recipe,
>                 the task
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0do_prepare_recipe_s=
ysroot (run before
>                 do_compile) will make hard
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0links to the files =
from those dependency
>                 recipes into that
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recipe-sysroot dire=
ctory.
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0See:
>                  >
>                 https://docs.yoctoproject.org/singleindex.html#do-prepa=
re-recipe-sysroot
>                 <https://docs.yoctoproject.org/singleindex.html#do-prep=
are-recipe-sysroot>
>                  >      =20
>                  =C2=A0<https://docs.yoctoproject.org/singleindex.html#=
do-prepare-recipe-sysroot <https://docs.yoctoproject.org/singleindex.html=
#do-prepare-recipe-sysroot>>
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Kind regards,
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Michael
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On Sun, 2 Jan 2022,=
 6:06 pm staticd,
>                 <staticd@gmail.com <mailto:staticd@gmail.com>
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<mailto:staticd@gma=
il.com
>                 <mailto:staticd@gmail.com>>> wrote:
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0okay.=
..I think I have a more interesting
>                 question now...
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0In th=
e package I am building I have some
>                 Fortran code that
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0requi=
res `libquadmath`
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I see=
 that `gcc-runtime` provides the
>                 library but I need the
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libra=
ry present in `recipe-sysroot/lib`
>                 when my `do_compile`
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0runs
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Is th=
ere a way for me to do that?
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0My cu=
rrent approach is to build my image,
>                 copy the
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libra=
ries/includes to my recipe and
>                 `install` them in
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0`reci=
pe-sysroot` before `do_compile`
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This =
doesn't seem like the correct
>                 approach but I am not
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sure =
how else to do it at this point
>                  >
>                  >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Any h=
elp would be greatly appreciated.
>                  >
>                  >
>                  >
>                  >
>                  >
>                  >
>                  >
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55722): https://lists.yoctoproject.org/g/yocto/mess=
age/55722
> Mute This Topic: https://lists.yoctoproject.org/mt/88095036/3616765
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [randy.macleo=
d@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


--=20
# Randy MacLeod
# Wind River Linux


