Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654ECC4167B
	for <webhook@archiver.kernel.org>; Tue,  5 Dec 2023 21:10:42 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.6202.1701810640358112896
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Dec 2023 13:10:40 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=Em3KiAKB;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=0703f7b7ea=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3B5KPIEq012290;
	Tue, 5 Dec 2023 21:10:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:subject:to:cc:references:from
	:in-reply-to:mime-version; s=PPS06212021; bh=nLj1bfXl2n61jAVqInw
	uYjTbQ8riuzDOMXN35qM9K24=; b=Em3KiAKB7N+38gn0+9n/haYY0NGcbNDnuTh
	1jCxmlhKMT+VkPAQIMNq43gX3qn8FXw+Arpy4WI75waLC3k6i/n7YVm+9IPn43gE
	B12OVnZpa814SJ+sK3PfW1S9Zja/1AgVrHRk3p3OvWjxs4X0y8qUnafR0KdP2R6o
	tE/1Qv956DEy4ep9ZMRtrdt0HWWvH3boVylwjzwEX+CAYVoSWE8pRUXffzPA29Uo
	vGAd/LHYYOg137dj0hBjgmcqcvQwgJO9XtYhP853C2dhFtXP+MN0Bvizd0vzy3p0
	jRmQDDYtMgK9ndRuXQ99mZt1RwJud4nS8fpaH4BLFr5IAuUsnXg==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3utavh015y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 05 Dec 2023 21:10:38 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M4vPOKzHjZJHeMFMLAm3b022Yfrs62oMKThuzicU3cx4i71U4hXStfRBf6DP0/kW9vOEfTJhnZaTOem4N/c3MFVCe9WEu00csID7v1xf36Qmv35fPfWxV8rd5qAFg9OvkTFkrWuLTWoJ+OS6y5K8sFbPDeGXzMpiqWktnV7XNvFYCmuxZ7Oo79zPmlBPrEWM3H4n5mND2xVZXdEeWHGw2oL2xuae6FwYzUsrfzdPrJkjIk4TLCq4EesGyz0FsN5IQOr7kReNWYMWYz2ImQpdD47dnIjzVkblFsHgZqoXcXLQmBhlQ/LuiOALfJS02BDXzfXKKV7fjj8BtlD8xLpAsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nLj1bfXl2n61jAVqInwuYjTbQ8riuzDOMXN35qM9K24=;
 b=WAcl6T690r78OobfB191RB4gsyhRLcLDdNZZqTmN43SiRTEig8pEuJohROd+kS+mHQ1r2P1aUf1lrWCrU0FwQI3vR/Yzy+SxbDs20OFbe4PZIKYmnrwPhTA2xnJtP+ksBar5bq8cqRW7iuCB6H7luIkRJ9SQeljyU1Wq6WZgijXEC7TlzOAgGOHaq3SEqvp7NPXqLYXUSwclYr7YubOw94SZNUzKpt8Yjz1kb4Nj3lTWOYzi4kWqG2FEF8G43k/ZQEqc/mXbEYlRVJytLc6WXeAodvDCMsDKSXqkIqH8tyjTkOhumGf2l7Fk9x/KMx9u5swKmu/sikC/cTrJM3Jh7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by BN9PR11MB5241.namprd11.prod.outlook.com (2603:10b6:408:132::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Tue, 5 Dec
 2023 21:10:36 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::b0b6:b188:9e9a:2c2a]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::b0b6:b188:9e9a:2c2a%4]) with mapi id 15.20.7046.034; Tue, 5 Dec 2023
 21:10:36 +0000
Content-Type: multipart/alternative;
 boundary="------------zzWVqnDk1UuLuX7PdKzqP8le"
Message-ID: <1470abd7-f24a-4fcf-816d-6d0603640441@windriver.com>
Date: Tue, 5 Dec 2023 16:10:33 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Mold linker
Content-Language: en-CA
To: raj.khem@gmail.com, Joel Winarske <joel.winarske@gmail.com>
Cc: yocto@lists.yoctoproject.org, "Mali, Narpat" <narpat.mali@windriver.com>
References: <CABKMkPJ3-KK_Y0tMrp2QC=K0P0hm_2-cV0UorSQOSvZ7PVub6A@mail.gmail.com>
 <CAMKF1spuPKtEPvkBZ68uPNMSQbCx4GDWC47hJGoRTW6qH0fbfQ@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <CAMKF1spuPKtEPvkBZ68uPNMSQbCx4GDWC47hJGoRTW6qH0fbfQ@mail.gmail.com>
X-ClientProxiedBy: BYAPR07CA0099.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::40) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3994:EE_|BN9PR11MB5241:EE_
X-MS-Office365-Filtering-Correlation-Id: 9aa38a68-22d1-40a6-f137-08dbf5d6a01e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WmSQqx7rj0XCauLfAq/oeWZyPCQxcHVZsKf1VSyKYODau+Q87kvYngZYAHN3obgSDldjkZkgk2ryATEUME8YwoS4xT7pf0HOAPp/Lg6zXJ08NtBdaQdqteizPpEDKU51m3Xxcl59113TgKgEfxGVo8IZICgBlh+0eEq5M+CkrGfS11dYG6sO8mJGg3tLNOfsjXbnN7KMZyvzSp42cjw0BdOj+8HJmrdyC1uq/SpIf6aa23R5gzNt37UPKOL+JGgBqXBQzZMrxlXSJ04QRmDMpCJLLO6e03/cY3elU2QKt6rSUnpyg5inItfDLTMOORpb8TkvSYmT1087CffiUSPFqtxj2aNJTcXADIkdopPkCX0Gti1Yov6EPGCzim+cHqOikVsrJZ4Gvbj0XUWZYxxF4NugxeNlSwQ+6paaXiuH6M0FBEDdBhV1BReLWTWZ9z5JVXWKFxslzDDlYZxdio8+39ofTE1Tc9DyEHdAXNZMuMcpEa0a5oEYOSYB/XMfgoD5tN5Zy2liXxAx3hT/NlSSi9wtei3Re1NKjruzsotA4GQqJVoU+UjGflCbOJgBhngi9CA92YjoPGnd73Wou5bBKmmNQToydTZEbs3vdK1Eho+COhTf1zLcBzaCz7jtJO+V8aIAprRg1J8gclSc1Skayw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(366004)(346002)(136003)(39860400002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(66899024)(31696002)(2906002)(5660300002)(36756003)(86362001)(41300700001)(6506007)(478600001)(33964004)(966005)(6486002)(6666004)(6512007)(53546011)(38100700002)(83380400001)(26005)(2616005)(107886003)(31686004)(8676002)(4326008)(8936002)(6916009)(66946007)(66476007)(66556008)(316002)(166002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cDJRRjhIQVdXUGczWXJ6QUNxWVZ6a1c1R1pBV2grajJqRFVaVkxIQjZKdjlJ?=
 =?utf-8?B?V3FYWjlVR1pKUTBZVkErSHVUUG0vYmllZFZ3YmxaM2lTMy9zemRSeVBDVis2?=
 =?utf-8?B?SkdkNjFTam9Ld0V2Q0tydjFZaVBGVTVuREJ2OHdrVzJoUXRuNldPV1k0cDYr?=
 =?utf-8?B?YkhWQm9uVEFqOTVGQ055dWVtLzJPL0FTU2pjZEc1ZStCdVZPUlA3S0x5MkVL?=
 =?utf-8?B?akNXeFJKVDFVajhSVWJzd015TWVzOE1PVUtUMkVDQUdudWJQRnI4QTRTOGI4?=
 =?utf-8?B?V2pKanlYY2ZyQkZiTEpNYWZkcEJ6dzhXdmdtK1Z1WW5FZVBOYkJRdC9ITmgz?=
 =?utf-8?B?Nkk2V3Zwb1UvVi9WakVmcGlSazBUNlBYTGdwc0FrajRrNk1oTTJuenRML1N3?=
 =?utf-8?B?SUtKMDFRejR0TlkwM3ZJVG8yQlFFc25obnVudURPRUQvbmRWZUJIRFZ3bWVk?=
 =?utf-8?B?OHhqN0xwbkV0eWQyOWY3c1I0R2I5Z0lrVEJ5RWV1dmlHVDE1Vm9GVThaSkJl?=
 =?utf-8?B?TGZXeGtGaGVQMUJ1QnlGTEY0N1FkVVJLNkxiQ29KbGNUaHBPQk5NbGxnVFJB?=
 =?utf-8?B?QTZpcnEwVlZJNFp3ZEt1dDM4TWVsL1QramlOUE1lWFNvTEwzcmdQRHlaQW45?=
 =?utf-8?B?aWR0WDdnTGdabkNIVGdvSnRybGRTWmVnYkR3VFJBMG0yRTdqYmJQa0pCMjdt?=
 =?utf-8?B?MUpsYTNPQ0sxQ2pkTnc4REdRT1hJSlRPWGxlM2dWMFQxNkJ0S2VnQjVVMzhI?=
 =?utf-8?B?clFxa0tBbVQ3enNzbUF1V2xyNkdKTGduajM0MnlheW1xMmM4L0FzZVpyR1N6?=
 =?utf-8?B?WGl3ZmZ4ekRoVHMyMWFINGpSaGhTZlpIb3IxbmpIWCtWRGRpSUpFTmtSckpo?=
 =?utf-8?B?a1NUREVKdTN2c1l3cTF0RFlneFQySTVmTzJLYWY4eDJnQW94eFJZU3lPUDRr?=
 =?utf-8?B?aDgwbkRudDhkQjA4SjFkWFRESFF4ZjJOT1F5MEpYU3gzRTdyL1Z4T05IYTYr?=
 =?utf-8?B?cnpxN3JKV2d2eE9GRCtIVjgySG01MG9IWnNNS3NoV3FYV0NUaHZOODFZWVIv?=
 =?utf-8?B?MEt1OFMrbFRSOTJhVDlDakNiWi9jMHhlcWllS29JSzZPOFZYS2prbjlmbmxu?=
 =?utf-8?B?WVNXc3RPRmhHYWpSQW9JUDRHUWdYQzVnTHc4RDNac2E3WXppNmpPZFFFc3Ry?=
 =?utf-8?B?Z1dORTduVll6dUlpaWNpbzg4c2hBQitGMytnM3E5L1REbGVnVFZwWlFCTk1w?=
 =?utf-8?B?UzlBcVRPcnV5QjVqQ1hTQ1ZBZUNqdzJrdXl2WnFIeVQzb3MwR1BMTzZiT1U0?=
 =?utf-8?B?V0t1OTc1VXpWb2g3SDVrbjVNZVk4eXN1dnQ3VzZ3S0ZTNS9ybjBvVS9IaUtJ?=
 =?utf-8?B?K1orZHZLcHVKZXN2bm1EVjBqSGNVOEtoMjBOUWVRSEFMVXdLTXp3UVJhYjNm?=
 =?utf-8?B?Ui9GeW12UC9yaERSbTRWYlBYMm9jSndlcytmS2tVeWdHK0hTOTJvK0szWXQ1?=
 =?utf-8?B?aldpQUNqdW1IOE1iRnFJMGxiY0ptd1Iyci91bXd0bERGczJpaUdRTjYyTnBv?=
 =?utf-8?B?b2xacWNRTThKb0VVaHVoSCtSSUxkMFd2ZUNXODZxWlBoZVR3bm0zVm55L3I0?=
 =?utf-8?B?Q3ZaUmFEZmY4Q2FHRHRtYk5PaURQejNQdzJwTlFMck42MXllT21wOEFuR0Z3?=
 =?utf-8?B?ZjVUNFNzS0hRaS9oSzNNYnduWnNob1p2ZTYzbXhBVEhuTmJiUG05WkJnVUU1?=
 =?utf-8?B?ditzMVlQSkIydFlpdEIraWZJM3QrYmFUa2JhczNMa2pqSzdLT3BFK2ZyYm02?=
 =?utf-8?B?L002clFKNnZyNE0yUlJiNFBkWThlYzJ6VThhcW1Xc09YellzdXBJdy93Mkd2?=
 =?utf-8?B?WlVlaU9OeEJMMG1pdVd2b3hqQnBlVEoxdzN3MXJhcUEreGxpbEVPS3BLK3dO?=
 =?utf-8?B?Q0JEOE9pai9FTkcwL2dYd2NPVmhwbkxMYVVxMnpTMEloTitpZ2NsOFRLd2h4?=
 =?utf-8?B?b1BWVUVvdUVIeGRQTDFjZFJKZXc2TlFQc29YM3hVUS9CNnRwY2pXZHVWT0JJ?=
 =?utf-8?B?SE5GRkdPSThZeGp6aDNJZ29BWjd4dFRyeTJTZDhCdUZQY3A3MjBkUFRiTmp0?=
 =?utf-8?B?TDdVSEpaTkc2RlNPTzk5N1ZsazBYOWQreHZHRUZmdEt2MHBHU0xTdloyMWpL?=
 =?utf-8?B?eGc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9aa38a68-22d1-40a6-f137-08dbf5d6a01e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2023 21:10:36.2534
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7aG7tllOSCY7bwYWnai6FFAFXNn5KFxFog1mHLwcOahb7grOEhPLhjzGurAeE+26o9HmwB72s5+hymk9oMRjwscsftc2VfQ7TZ0WZskTVMg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5241
X-Proofpoint-ORIG-GUID: CU9RD4Mzqjtz1a9ckWMX2VhvKNLVAsBB
X-Proofpoint-GUID: CU9RD4Mzqjtz1a9ckWMX2VhvKNLVAsBB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 impostorscore=0
 malwarescore=0 phishscore=0 mlxscore=0 spamscore=0 priorityscore=1501
 adultscore=0 bulkscore=0 suspectscore=0 mlxlogscore=683 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2311290000
 definitions=main-2312050164
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Dec 2023 21:10:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61807

--------------zzWVqnDk1UuLuX7PdKzqP8le
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 3B5KPIEq012290

On 2023-02-15 2:22 a.m., Khem Raj via lists.yoctoproject.org wrote:
> On Tue, Feb 14, 2023 at 9:36 PM Joel Winarske<joel.winarske@gmail.com> =
 wrote:
>> Has anyone played around with the mold linker?
>>
>> https://github.com/rui314/mold
>>
>>
>> Curious what the build time difference might be on a large multi-core =
machine.
> Yes, lightly. I found it similar to lld in many cases, only used it on
> native links for chromium
> it seems to be better at parallelization.

Has anyone checked recently, there's been quite a bit of work since Feb=20
2023 (1)

Narpat might try this out for Chromium.

I'd expect that the overall build time isn't reduced much even on our=20
100+ core systems
since there are just soooooo many .cpp files to compile but it's worth=20
checking.

../Randy


1)

mold.git on main
=E2=9D=AF TZ=3D$(date +%z) git log --reverse --date-order --format=3D"%cd=
"=20
--date=3Diso-local 9615b8b962edc659f7113029c5c85a81b173e4dc... \
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | cut -d- -f1-2 \
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | uniq -c \
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | column -t \
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | perl -pwe 's{\s+}{\t}'
145=C2=A0=C2=A0=C2=A0 2023-01
34=C2=A0=C2=A0=C2=A0 2023-02
37=C2=A0=C2=A0=C2=A0 2023-03
11=C2=A0=C2=A0=C2=A0 2023-04
12=C2=A0=C2=A0=C2=A0 2023-06
55=C2=A0=C2=A0=C2=A0 2023-07
143=C2=A0=C2=A0=C2=A0 2023-08
43=C2=A0=C2=A0=C2=A0 2023-09
105=C2=A0=C2=A0=C2=A0 2023-10
95=C2=A0=C2=A0=C2=A0 2023-11
12=C2=A0=C2=A0=C2=A0 2023-12

>
>> Joel
>>
>>
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#59230):https://lists.yoctoproject.org/g/yocto/mess=
age/59230
>> Mute This Topic:https://lists.yoctoproject.org/mt/96977773/3616765
>> Group Owner:yocto+owner@lists.yoctoproject.org
>> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [randy.macle=
od@windriver.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>

--=20
# Randy MacLeod
# Wind River Linux

--------------zzWVqnDk1UuLuX7PdKzqP8le
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 3B5KPIEq012290

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2023-02-15 2:22 a.m., Khem Raj via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:CAMKF1spuPKtEPvkBZ68uPNMSQbCx4G=
DWC47hJGoRTW6qH0fbfQ@mail.gmail.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">On Tue, Feb 14, 2023 at 9:36=
 PM Joel Winarske <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:joel.=
winarske@gmail.com">&lt;joel.winarske@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">Has anyone played around w=
ith the mold linker?

<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/rui314/mold=
">https://github.com/rui314/mold</a>


Curious what the build time difference might be on a large multi-core mac=
hine.
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">Yes, lightly. I found it sim=
ilar to lld in many cases, only used it on
native links for chromium
it seems to be better at parallelization.</pre>
    </blockquote>
    <p>Has anyone checked recently, there's been quite a bit of work
      since Feb 2023 (1)<br>
      <br>
      Narpat might try this out for Chromium.<br>
    </p>
    <p>I'd expect that the overall build time isn't reduced much even on
      our 100+ core systems<br>
      since there are just soooooo many .cpp files to compile but it's
      worth checking.<br>
    </p>
    <p>../Randy</p>
    <p><br>
    </p>
    <p>1)</p>
    <p>mold.git on main<br>
      =E2=9D=AF TZ=3D$(date +%z) git log --reverse --date-order --format=3D=
&quot;%cd&quot;
      --date=3Diso-local 9615b8b962edc659f7113029c5c85a81b173e4dc... \<br=
>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | cut -d- -f1-2 \<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | uniq -c \<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | column -t \<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | perl -pwe 's{\s+}{\t}'=
<br>
      145&nbsp;&nbsp;&nbsp; 2023-01<br>
      34&nbsp;&nbsp;&nbsp; 2023-02<br>
      37&nbsp;&nbsp;&nbsp; 2023-03<br>
      11&nbsp;&nbsp;&nbsp; 2023-04<br>
      12&nbsp;&nbsp;&nbsp; 2023-06<br>
      55&nbsp;&nbsp;&nbsp; 2023-07<br>
      143&nbsp;&nbsp;&nbsp; 2023-08<br>
      43&nbsp;&nbsp;&nbsp; 2023-09<br>
      105&nbsp;&nbsp;&nbsp; 2023-10<br>
      95&nbsp;&nbsp;&nbsp; 2023-11<br>
      12&nbsp;&nbsp;&nbsp; 2023-12<br>
      <br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:CAMKF1spuPKtEPvkBZ68uPNMSQbCx4G=
DWC47hJGoRTW6qH0fbfQ@mail.gmail.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">
Joel



</pre>
        <br>
        <fieldset class=3D"moz-mime-attachment-header"></fieldset>
        <pre class=3D"moz-quote-pre" wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#59230): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/59230">https://lists.yoctopr=
oject.org/g/yocto/message/59230</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/96977773/3616765">https://lists.yoctoproject.org/mt/=
96977773/3616765</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a> [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@=
windriver.com">randy.macleod@windriver.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

</pre>
      </blockquote>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------zzWVqnDk1UuLuX7PdKzqP8le--

