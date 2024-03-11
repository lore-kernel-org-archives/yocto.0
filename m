Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA095C5475B
	for <webhook@archiver.kernel.org>; Mon, 11 Mar 2024 07:12:07 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.56599.1710141119049893430
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Mar 2024 00:11:59 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=Ri7hTF2J;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=3800ec773b=qi.chen@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42B6YZYa032304;
	Mon, 11 Mar 2024 07:11:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:subject:to:references:from
	:in-reply-to:mime-version; s=PPS06212021; bh=84eXyjNVI2dk5+5sMg0
	p3SBb1HlIyvE+44UHqsuSuBc=; b=Ri7hTF2JSXFrjyLH21GU2vIxf6Xi0htKLRW
	uCdDfas19je32JcDZDf5vfWJVUGdvj0/7m1d9IcGjuRzIjTr7beSznX3wCXf6GK2
	2EAbYij3EEASyO++84TNXrvem10vVf9Sz6132Qi2klQqMgXYm72lV21jHkJxFE1l
	Pc6B95QdWynlb9nbPeYlzUsN9Wdcy04+6XWqOrUPyEeJnu2K35k8Cvgo2Ih5ac0/
	FLNbTcJcEtb3+RykkXa2D/FmMIkB8W4fvwN2HXBoqK1myI4D9rJbSH73emdcuYjH
	bJHmFsua44wHm3Az3rdEju1dwmW9qjPISrGXf00XbM+f2tZ6ZGA==
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2169.outbound.protection.outlook.com [104.47.57.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3wrcyxsewv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Mar 2024 07:11:57 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S8sLuvFwrXnpygDfPFlu/vbz6WPLRFg/cJu2NTXhdbjRqC+dkEi7+j7xYZizQd4lq+4dOzGQk5pX+Ic7o7it4sgv81SkWFUqCZNWsqWftR8PqaerwQkW8kZfeDHg5wL83Xw+2MnaYfxGpbU2j+BRog8iiE4BQ76Milw5lSl/Hw3h1Y2TG60PhwUzinYPRxR5+sxC30UqzpS+AXuBDrsX6TTXcD/WUftynOWSzaHM6sHMTNH3iDuFS2Tpy1AtC/Of3aawmsaRjdaKykmmgrc2zwShMKqmu68fdKsaj8SPD1EXfl4KEAZaqDzLzvdlZVg/SUf+jm+Xry2sVkC7VLUgEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=84eXyjNVI2dk5+5sMg0p3SBb1HlIyvE+44UHqsuSuBc=;
 b=O3ffDChi/vuiDDN7KlZSk2CKcC/f8aWPN3MYSjBf7HLl1P2ETkHbeMtC9/fvG6FjGaGX+L3HYTI7XLkFDsGZ7JIHlV9yytjOKlBuOj4WuTQPeDaMJt9xOM5JnNA8v/ZUBbE+yQ4n7y7Voxduo8AttYUu4iCWElTOiuUa2y5D/49XFGgLIVzm8PpENYyA5IWdfglkBxxxIBXRtsD9MAqrXYVeLzrg3M3f5SbereMmOgEMuC6oQ5cV960u9frzMBzIbVrtbApN38ppNoMUZdvxq/c4fOJEkQO+z2D7sjhPquhHKHMper43tW8RboIyUS/BzBsTmqJcqEY2QnGQwAqXMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by CY8PR11MB7921.namprd11.prod.outlook.com (2603:10b6:930:7d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Mon, 11 Mar
 2024 07:11:54 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::7bce:b7a0:1830:98d0]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::7bce:b7a0:1830:98d0%4]) with mapi id 15.20.7339.024; Mon, 11 Mar 2024
 07:11:52 +0000
Content-Type: multipart/alternative;
 boundary="------------kBflsffaM2zFx2dAFoTBd54W"
Message-ID: <899dda60-1a74-a5b1-0a23-38f4eff50b84@windriver.com>
Date: Mon, 11 Mar 2024 15:11:47 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] Cannot ssh into qemu guest
To: yocto@lists.yoctoproject.org, xylopyrographer@gmail.com
References: <ZMbp.1709938683080134225.bPqU@lists.yoctoproject.org>
Content-Language: en-US
From: ChenQi <Qi.Chen@windriver.com>
In-Reply-To: <ZMbp.1709938683080134225.bPqU@lists.yoctoproject.org>
X-ClientProxiedBy: SGAP274CA0012.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::24)
 To CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|CY8PR11MB7921:EE_
X-MS-Office365-Filtering-Correlation-Id: b803f40c-2974-40d5-ab02-08dc419a86dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	C81KxOCiijHJ2PnS7Hi7wc9KQruNAkX2uzlvUA9uYghTraVEHHhqI6xqQKNAnTfKAdBXlAKWbJAbHneNYysVDXzaR7UrsRE7CTl7QGJ1Btsm1NbMdaT+6xu25JFRUhHqGDN5D+vW9Ak1aHqGUmq8LJEqc8JxqYJgwh3neswWZMSz4Q/M5XktLf/yWON5jg/7H9JFhN8j36PEoLDdlV1vZ23ftTRm3LjZyJLuA0OC/uzo1sc7gaN6AYQbnqp11jSrQswITXfAAu6/B1Fz8du5H6wjaoiGPQdXVqAYIUG9kDwzT1M/DyGzJMT/ssktoyocWv39ifJGJZnDP/7RTOkt/lAFUEEPnK0M2SFa4LQKzR6L0bPiMHbCd3HlGLApQxzpjj7omavY72vj6AMBakEmekExjvY9FwsAyrd+FP4YGNFtQygek5zEX8Ffu4hItco6Tv6bUNHY7vLIDrG98GfEcQTa6R+FCrDF3rHnKTln3EdJYUfFAjN8hVjkdXIWDLABj4PIYQeNXpeTifmRYX0vEOYgP3HGwYGsdQwAJA9JKADEqSAdHmDu04ljnY7DCmEA+qjm/oZk+13B2KQ4wf2dQT99n+9MiN7/A48il8EhjhY=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZjFDY25YaUJlaTB1SGlHM1hlaFh3MHh6bWVscmk1UVR5RUVyQytDaEtMYytm?=
 =?utf-8?B?cWFDMjFjOGxmQUhNS0RiU3ZpV3pWZWh4STViNzZiZjlHTC81Z1BNSGJWekhj?=
 =?utf-8?B?SzM4Mzc5NHVLNXhjTjBWOW5CdEY4STNybGdYS2dWbnNuUG9lb2NkOUNuUHpE?=
 =?utf-8?B?UEZqV0QzNmNocGpROHQyT0JIVmQrYk13alhSWGlzTTMzSkFzbFA5WTBFckJz?=
 =?utf-8?B?TDh4emhIU2YxaW5pYm1HQW5HYjNWUVM1K044eHFxckhFWGp2Vks1d25UNUV4?=
 =?utf-8?B?dnpKQzFzUUw3Nm9tT2lmMG4zeDBZU1kzZ3hWV0ZyVWMzSDhMQ0ZEL3lXMS9R?=
 =?utf-8?B?bzlTbXJoQ2JyR2Z0QVFkR1lXblEvYlpKazFuZ3NxcDVvTU9iOE9renNTTTlP?=
 =?utf-8?B?TFdzdTQySmlHWFNXWTdJSUZhVGU2bEpGRDIvbE92Y2xOUGhJalB5SDFLNzdY?=
 =?utf-8?B?UC8rRjJaVzQ1L1ZlakdxOW1rVmFZaXVzcUpZa2ZJRWhramRBR200aUxHdjNo?=
 =?utf-8?B?NkhSREI3alBvZlo1cnpVSGFWNHZoaTE5eElrRTBpTmxLNS9MWXpiQWt1bjlK?=
 =?utf-8?B?Q3VxOG9JWGx3SW5DK1ZnK3JueUpCeVhoY2NPVktralZYV21sOHFocjE0ek11?=
 =?utf-8?B?ODdnSUZDTlNRdDdSUFRxSit0RjYvMEYrR2tPbWNwNGI4MXZtWXM1VGwySGlq?=
 =?utf-8?B?aXRrYWJtd3ZJaUFOSHN4TWpTTzkyaCtPdFNzei9ML0xuZXhXdlgzVEN6dXhh?=
 =?utf-8?B?WUE1RldnTXlMRHIwak4zNWhvVEl4ajd6emd0T1JZSXU4SGEzc0YrbjY2WjMx?=
 =?utf-8?B?VVNlR2pxOWpiK1M5MVp6Z0UxWjN2NFJTWEU1dmYwOUxLL1d6R04wOVVSRThT?=
 =?utf-8?B?a21DMVgvTlBMYlFUNFFtaktHd2lmcktGaGsyQTBJUWpqa1VQUDFBSDk4c09K?=
 =?utf-8?B?TDllS0ZkRjdGQjFQMCswN2VieWZybVU0MG9uTFVNT3l4dm1ZbG5QeHFWb2VT?=
 =?utf-8?B?bUdyZEljWndhZzRveTV5QlFqRUgzbDY1SGo3V3lYc2RKUlllSU1veWYrL2hz?=
 =?utf-8?B?RmkwcWxZZ3ZDWE1TbVRlQno4NWFHV1dMZnRUeTNHUjloSktvWjczOTBBYzZW?=
 =?utf-8?B?bWVWZ2VlbHpoMWxzTVAvTGhlRzB1OFJMaHpJRHg4NzVibGZsOUZXTEFWWnBR?=
 =?utf-8?B?bndDS2EvTzgwVm52Y2xXMzVJSWNvUWxnVXZwU3JhYXp6Q2VBZnU4R2xHaGo1?=
 =?utf-8?B?UkFncXFJTFVuNUFrdVZBd2c2Q3R0ZTd5Y2RzYjYvWjgxMEtxYVlHbDA1cFBM?=
 =?utf-8?B?QWI0RE8yeUtRNFMvYXZoQzM4bDljRTI2T2dYNTJVcEMzU3dBN2xiOEFrOSt5?=
 =?utf-8?B?MUs3ZDl4aGZUaXYzdHQ3aHFpczdOOE5PTjhkTW1hTGtoMGRWdWNpdmd6UzBj?=
 =?utf-8?B?Y3p0SnRZSXM3TEwzKzNVVFk3bnY5d09JK2JwMHNZNSs0eEM4bzA1eTh2N0VU?=
 =?utf-8?B?eG1ETXlSNS9qNWV2Q1BJWEp0QmlEemEwU2JoaGo4QlBwRVM4MVZyVTFMZU5J?=
 =?utf-8?B?TVJwMVpsYTJidkFuV3dhVzhUQmdkV2NaQTdmWnRETUZaT1lDeWtwRUMya3px?=
 =?utf-8?B?NmFSSnpyRngrdnhqR0dkcWhiVjlQN0RmUkYwQlliV01jb00vWGNlZldXOGU3?=
 =?utf-8?B?UUp0eGZwd21ZTGdPTWxqc0RKU3Z5N29UcHNkZGdYaTBpMDBMWks3aVdFZWU4?=
 =?utf-8?B?Y3N0YVN3REFWNnRPOUtpREZTNVM5Yk5uTmxmY2RYRXhyN29aKytobm1qV0hO?=
 =?utf-8?B?RnhjWXlkdjlkaUpEVVhObDAvclZrWjRQdUZxZzA1MTdIVy9KZWRoRGpOaGRW?=
 =?utf-8?B?UVF2akNKcHNoWjI4djg5QSs0V05lZ2hDRzFCMkJKMU81eVQvRUVmc3YrbjEz?=
 =?utf-8?B?ZEM2VUFSaFkweklCVVRYaHJpTjg0SE9XeGJzRkZiUmxEMXRucHlSZkZtYVNB?=
 =?utf-8?B?ZXdFdUw4d2RwMXZrZ1d6M2ZNRW95NDFOVmdaempyQ2Q2cjExMzZqNW9VN2hU?=
 =?utf-8?B?a3JtbFRhZ3pwU0NOT1Y0bGFBZHV4c0FjRlVBT2dsZldCaDArS1M5VVo1Z003?=
 =?utf-8?Q?9UjTMr+a8V310hrFZY5l4KBQY?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b803f40c-2974-40d5-ab02-08dc419a86dc
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 07:11:52.7417
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LXdF7Yz/R4dEzlLKqFrjfHutCye0+ooWYpS22zTrXq3iW5RvWRBamTm4enRbN2koHraqnJGgiho+MoFdAu44Zw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7921
X-Proofpoint-GUID: sFunT-HmigBxd4orKjDi2sS4XHPWlVem
X-Proofpoint-ORIG-GUID: sFunT-HmigBxd4orKjDi2sS4XHPWlVem
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-11_04,2024-03-06_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=999 adultscore=0 spamscore=0 clxscore=1011 suspectscore=0
 phishscore=0 mlxscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2403110053
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 07:12:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62722

--------------kBflsffaM2zFx2dAFoTBd54W
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 42B6YZYa032304

I'd suggest that in the serial console you get:
1) check the ip address of the booted target
2) Run 'ssh root@localhost' on that target to check if login onto itself=20
is OK
3) If you can ssh locally and the ip is 192.168.7.2, and you still have=20
problem with 'ssh root@192.168.7.2', maybe you need to check the=20
iptables rules of your host. Is it reachable? 'ping 192.168.7.2'?

Regards,
Qi

On 3/9/24 06:58, Xylopyrographer wrote:
> I've built a QEMU quemuarm64 core-image-full-cmdline machine. Runs=20
> fine. =C2=A0I'm launching it with:
> *runqemu qemuarm64 nographic*
>
> Now trying to figure out how to ssh into it.
>
> The book I'm following simply states: "You can SSH into this VM with=20
> *ssh root@192.168.7.2*"
>
> A bit later, going through the exercise of using devtool to add a new=20
> recipe, the command line is:
> *devtool deploy-target bubblewrap root@192.168.7.2*
>
> However, both *ssh root@192.168.7.2*=C2=A0and the *deploy-target*=C2=A0=
commands=20
> time out on attempting the ssh connection.
>
>   * Host is Debian 12 Bookworm
>   * Yocto version is nanbield
>   * Using GNOME Terminal
>   * Launching qemu in one Terminal window, running everything else in
>     a second Terminal window.
>
>
> Any pointers on the magic incantation to get this running?
>
> Many thanks.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62711):https://lists.yoctoproject.org/g/yocto/messa=
ge/62711
> Mute This Topic:https://lists.yoctoproject.org/mt/104819558/7304865
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [Qi.Chen@eng.=
windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--------------kBflsffaM2zFx2dAFoTBd54W
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">I'd suggest that in the serial console
      you get:</div>
    <div class="moz-cite-prefix">1) check the ip address of the booted
      target</div>
    <div class="moz-cite-prefix">2) Run 'ssh root@localhost' on that
      target to check if login onto itself is OK</div>
    <div class="moz-cite-prefix">3) If you can ssh locally and the ip is
      192.168.7.2, and you still have problem with 'ssh
      <a class="moz-txt-link-abbreviated" href="mailto:root@192.168.7.2">root@192.168.7.2</a>', maybe you need to check the iptables rules of
      your host. Is it reachable? 'ping 192.168.7.2'?<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Regards,</div>
    <div class="moz-cite-prefix">Qi<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">On 3/9/24 06:58, Xylopyrographer wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:ZMbp.1709938683080134225.bPqU@lists.yoctoproject.org">
      
      I've built a QEMU quemuarm64 core-image-full-cmdline machine. Runs
      fine. &nbsp;I'm launching it with:<br>
      <strong><span style="font-family: courier_newregular, courier;">runqemu
          qemuarm64 nographic</span></strong><br>
      <br>
      Now trying to figure out how to <span style="font-family:
        courier_newregular, courier;">ssh</span> into it.<br>
      <br>
      The book I'm following simply states: &quot;You can SSH into this VM
      with <strong><span style="font-family: courier_newregular,
          courier;">ssh <a class="moz-txt-link-abbreviated" href="mailto:root@192.168.7.2">root@192.168.7.2</a></span></strong>&quot;<br>
      <br>
      A bit later, going through the exercise of using devtool to add a
      new recipe, the command line is:<br>
      <strong><span style="font-family: courier_newregular, courier;">devtool
          deploy-target bubblewrap <a class="moz-txt-link-abbreviated" href="mailto:root@192.168.7.2">root@192.168.7.2</a></span></strong><br>
      <br>
      However, both&nbsp;<strong><span style="font-family:
          courier_newregular, courier;">ssh&nbsp;<a class="moz-txt-link-abbreviated" href="mailto:root@192.168.7.2">root@192.168.7.2</a></span></strong><span style="font-family: courier_newregular, courier;">&nbsp;and the <strong>deploy-target</strong>&nbsp;commands
        time out on attempting the ssh connection.<br>
        <br>
      </span>
      <ul>
        <li>Host is Debian 12 Bookworm</li>
        <li>Yocto version is nanbield</li>
        <li>Using GNOME Terminal</li>
        <li>Launching qemu in one Terminal window, running everything
          else in a second Terminal window.&nbsp;</li>
      </ul>
      <br>
      Any pointers on the magic incantation to get this running?<br>
      <br>
      Many thanks.
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#62711): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/62711">https://lists.yoctoproject.org/g/yocto/message/62711</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/104819558/7304865">https://lists.yoctoproject.org/mt/104819558/7304865</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:Qi.Chen@eng.windriver.com">Qi.Chen@eng.windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------kBflsffaM2zFx2dAFoTBd54W--

