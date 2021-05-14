Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.4738.1620966919805077606
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 May 2021 21:35:20 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=dlOozOdI;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2056.outbound.protection.outlook.com [40.107.244.56])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D45E438C05B5
	for <yocto@yoctoproject.org>; Fri, 14 May 2021 04:35:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EA9oetrdNEM7YKHgWcm9c+eD0fFB5vj5N8i3vK+aErD06aO1nn5i8eiIgoF6CpaPY2xTPcwWhHtntv1jG/X1AvaJtzW2waCnnDyrE/4rDlEa3louCz+0QSVI1tiP8oXjjwooFQ7bJHejdNgILbbhD7Qu03nWZTSvEauVEXhE/RvpPt7FCXbIhe+IEMie5kKHsR8/uLEvWECdJGcYWadqKcUkgVbYGuk42kdCnuBKsjwjalNNvviI1Kuvq5An4y+lWT2rzXq0dQncPTPigRe2R7gmXqYAKVkagaDNZX/Y9bSyhtDfk3p7dn494LLYS3CQadHxDfzC8AJJTcZ0XvY9LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Br9jz5rTsmly7x75QSIwVEycgEl1mVXxp06ARSKlT+k=;
 b=E6NsiSVwPUnPeRbw75HBE8wmqJ79SquZM6D5w+xoZpXwbXd06mFbvssvLn+FxAJCrlaQfZTp3oickA43HQ67e0+luUTfb3o2kGEvdcboXKdvyu2qAYtFDWhM374mIopzleLu3M/UbWjyHaXMpVpewwlfQfWg8B2gtySFaBi6YvlYOi4ryxHzzUUiQxLsM3DGIHYsTQq90ixJ+WxoKGdeilqF6GPo2HVH3j5JniAvrY9fIDVYyRjaTXQUaqUarTGsqGK5uBQDevNirX+QAqRn3LArYIiwHkoJIFienRmtQMqvkaQhiymwGMs4h9YkfPcwX9DSAeFOA9FKWTnu+U01Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Br9jz5rTsmly7x75QSIwVEycgEl1mVXxp06ARSKlT+k=;
 b=dlOozOdIQUmcCAfTJMjmlV3TlIn1+cMyAH4TLDzUW7DvwWy/aauianm3AF9KwmCyP0qmfSL4nFt88J6P6lW7SjPlQZlSBIApU2lxSbwpYu5QjDkfoeTwDpQ8ly6melXIeE6Bn+oTrHxGF95wg47LhxglgjJFk63+vSFrDhcpJJQ=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Fri, 14 May
 2021 04:35:15 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf%4]) with mapi id 15.20.4108.036; Fri, 14 May 2021
 04:35:15 +0000
Subject: Re: [yocto] meta-selinux issues. Depending on what I put in my local.conf, I get boot loops or can't log in.
To: Brian Hutchinson <b.hutchman@gmail.com>, yocto@yoctoproject.org
References: <CAFZh4h9LFAduG7dAS8=5stVuE2x3RWcVz3zy5rTmPPshEY+AiA@mail.gmail.com>
From: "Yi Zhao" <yi.zhao@windriver.com>
Message-ID: <f557832d-7de2-b752-d18f-38fb951dfa69@windriver.com>
Date: Fri, 14 May 2021 12:35:08 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <CAFZh4h9LFAduG7dAS8=5stVuE2x3RWcVz3zy5rTmPPshEY+AiA@mail.gmail.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: SJ0PR13CA0021.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::26) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.174] (60.247.85.82) by SJ0PR13CA0021.namprd13.prod.outlook.com (2603:10b6:a03:2c0::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.11 via Frontend Transport; Fri, 14 May 2021 04:35:12 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 09ebfd1d-1c6f-42b8-d889-08d91691aa47
X-MS-TrafficTypeDiagnostic: MW3PR11MB4554:
X-Microsoft-Antispam-PRVS: 
	<MW3PR11MB4554726AA91598D7F3A20DB4F9509@MW3PR11MB4554.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:913;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	t7Tw7z8Tr1p5otUHA9eB3YDlZpGa+TAoyx9DT87z1L/cltu5pOl5hrYQY261x4vCQq7BWm3d9WT5WUpCfS8dspMHhfaJ1VzHKZKkEUxtKG/18pZbp7V9KbiM9djUsNiWFBUhr1RCnMrcP+4VwBopHxLwwXcyP4+j3VTORMj8dlOdlvlqN6VSfd6E/y1uHz96TTGGNgRIkEf/YVjJsMCdPeq0CTGUHMM+GgfhKU5tKNOrTt1OWcQ5g+nvc7gahKwk8mn/rqesr29cVVorUznJtTrXkjXjDDyU5CdE3fGWqGFwBD32Mpm8YU3az3yabOM/kY/JSkddVHde2n0/wdn0qVu5ZE8Wqees4c9R6N06sH+201sVPCS5sdg9m4hmmZknL0rYcrk+zpLx6YfE/vl6TeXNuQC8EJLW24dI356E2V89NlGcl+ZZ7tby42dC+WZJHzWt6oDyVQuvTYfPdKqY1Ulfxch2Og2wybXxQLtbEXNmG6PynoehkvzXjrRqU8+PQKaxr/4n6wgBpSjmLKRIU25XPzhioSHx4VSF/YdhxcpkUWpxHScjF84uj7ubhfAKQNkEWGUBhFU6TQusQc53LibV2dJER68bPpZguOuIYHz0CDP3iFMcSohXr/EBcAR8vtRzvZmqdr1xSHfECDXCjdQmxHB/W/G6Tl/6AFnfPD96RN0dyoux/FvplWuuCw5E9yKtiJllS6e8AL5lJvD9y8TetLROniwCcNaKFnIuq6r/5M+UL2tK/zCteb+As0pQI0lnfpNXvHR0RstWzonAWse1MKpfjydMAGxNI0yiDxyr1Hs/nziGlzvN5lHjumSwPg4g2zhx8O863+JPo3E8x752l8d16zcES3pgqDXmwl8bs0R9LrArZuDAtxKuBtgW
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(376002)(396003)(346002)(366004)(136003)(31696002)(166002)(2906002)(86362001)(6486002)(186003)(83380400001)(6706004)(5660300002)(6666004)(52116002)(44832011)(316002)(956004)(38100700002)(2616005)(30864003)(16526019)(478600001)(38350700002)(966005)(66476007)(33964004)(31686004)(8676002)(66946007)(26005)(53546011)(16576012)(66556008)(8936002)(36756003)(78286007)(43740500002)(45980500001)(559001)(579004)(139555002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?R1hycTNuQXVYaFNNb1ZqdGpDaGhnb2xoTWtaYndKOXo0aVY4N29VQXozcWs3?=
 =?utf-8?B?aFRZckY3eTlRVmpkUEc3WnlVbnN6WldFSnEwR2h2QkpYSThBbXAwZ3hzYmRD?=
 =?utf-8?B?K3pJV2tSVDJ5V1J2Q05kVWNVNWVMcUN1MC9WVDhTWGhKWEMyeUZwMlhpaEhU?=
 =?utf-8?B?QmV6ajcxZVZuc3Brd1dTeVVBa25FczBVZVRmUnFSbC9pd0x1OHQ0UW5xY0hS?=
 =?utf-8?B?bEdpWWlTemFNNEdKZkdGNThkZDU1bStjWW1rVTVLWmhXa0FyRTE5QlhzdmFH?=
 =?utf-8?B?NTU4TVhmbmNFQjgxUG04NUVTTFNqUXBSK2FyQ2xZQXNBbGRDZXhHUWh0MUNL?=
 =?utf-8?B?ekk5MmtzbDh5ckdSWGsxR2Vlb0RTSmtNMFk3V2F3M2dTVU92d2NoWnZZSHc5?=
 =?utf-8?B?QzhCZGp5YkpEQXF2THcwTFgwaDVQTmlic3RGSTVYdURva0VyRkRkWWcwMXcw?=
 =?utf-8?B?Q0lSTmJoZUxFMVNkNmdJRk04SUtVcHVldUhGNUZqaHV4NlNUN0VrY0tMcElX?=
 =?utf-8?B?eldxdisrTW1JcTJhMzEyNlliV3lwbDd0eGQyeHhFTWJnMDlyOEdidmFqZmtO?=
 =?utf-8?B?RlNvaXRkUDk2aDBhbFpYV0pkZlE3VlROSDV6V0EveDg4YlNxZEF1bExxN1Fx?=
 =?utf-8?B?elYweVJ6MVJlczJHWGk2azEwZXVNNUZvQUZLVGQ5UTVUSTFpSGxXK0hlQU90?=
 =?utf-8?B?bnJ6WGFEaVpkcDJNMjhKbnEvR3ErdVg0Q1FHc01jQ2Fwd1JEU0hVZUdVT09j?=
 =?utf-8?B?eVdzRHA4THc2ekZTK3FCVkNOSnRleklFVnExR2x6R3N1bWtKZDhqSzdiQUdK?=
 =?utf-8?B?RUlRVlRQenVzWDB3RW1uTEsvdDJOZVNyQ1BJQkMwSUluU2pCT2gzcDdBeUM2?=
 =?utf-8?B?R3ducGVnVnZTZ01WSTFGOG9RSXBobjRLZ1d2a1kvak9zOWRNRkdDcUZtME5K?=
 =?utf-8?B?NjhmdWt1N21uVVJvY2VvZlluMmRHZ0hHUlBiOTFIVllnK3oxY0RSSHUvazl3?=
 =?utf-8?B?SzlmTTRRVFhtMUhyL2lYTTRXK0FLNmJtazgwSGQ2YytPTlVwQVMxK1hSb1dR?=
 =?utf-8?B?ZlJCZ1dSbVJoNnRsR2dLWkJEQm5HSmh5ZmlNbmhWVExhU2IxeEFDMmovREl3?=
 =?utf-8?B?WThCaUJYeENCRExROWJyek13bVdDK1R1azBlZUNoS3NXZGJsTTRueWZOaGdu?=
 =?utf-8?B?OHJaWlZYVlRaMjdsVWo4cCtGaGlFaHM5UjVnUUdxZng3UEI1U2N2cG9VeVd4?=
 =?utf-8?B?QjBXdkpnbFUyMStwQjZEMkJuVXZpTC90SitQTGthd05KV0xUdlU2bmVLUWtZ?=
 =?utf-8?B?b1ZlSm9QV2YrNFRxS3VUbUtWd0ppdEFPUlZ6NHBIbjBpZ3ZRSDNjMjRIWVAv?=
 =?utf-8?B?T0xCSmd2YWRmQVVpWlZkakUxQXV6SGFhZnpvSFpGUExwRHozN0hVWVBLdUpk?=
 =?utf-8?B?T2RoZ3BOdnlBVzRteDh5eTkvd0tPYldBQ24zSUgzU21NdEVMOEhZVGFBRkJU?=
 =?utf-8?B?R252QUdqS2wwT2dOak8waHg1UHFUZmdkdXo5SXhWdjF0YVlQWERSYnFrTnAy?=
 =?utf-8?B?K1NOaVp0NkZKMyt1TzJJTHpRWjZjeU1ON3hxdXMzV082bXBzWCsvdjlxK1B0?=
 =?utf-8?B?dXpmU3Q0WVNaRGh5YXliRERMSkQvOWtTMjlMdnQ0eVFLSkdtb0lyUHBXd0tJ?=
 =?utf-8?B?dTYxaDRTVWdYdm4zOGlBSFFLZ2NXSVdUWE92eVdQOXZZcThDQ0xtNkdWY29W?=
 =?utf-8?Q?OfMz+16Hqsl7NtCw4+Oi4YwKLhFv+aInZgMYJQE?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09ebfd1d-1c6f-42b8-d889-08d91691aa47
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2021 04:35:15.2910
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9tJpQyfKLBqe9qItlUlouj6/BjUAsSfoaESMiek0eDRksprix5OysQL91U5h+TowxX3V7aEA6r4huokPTWcNUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4554
Content-Type: multipart/alternative;
 boundary="------------8AE3AE8F4DD3BBDC4DA6B41F"
Content-Language: en-US

--------------8AE3AE8F4DD3BBDC4DA6B41F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 5/14/21 9:40 AM, Brian Hutchinson wrote:
> Hi,
>
> Pretty new to selinux.=C2=A0 I've worked through a lot of issues to get=
=20
> this far but am stumped at the moment so any pointers, clues are=20
> appreciated.
>
> I'm trying to add selinux to my custom image.=C2=A0 After running into=
=20
> problems, I decided it was best to start with building=20
> core-image-selinux for my NXP imx8mm-evk board as a reference for=20
> getting my custom image to work.
>
> I'm using fscl-community-bsp meta-freescale Dunfell release which is=20
> building a 5.4.114 kernel.
>
> My first issues were getting kernel config options right (.config=20
> attached).=C2=A0 I kept booting my rootfs and sestatus would result in=
=20
> selinux not being enabled.
>
> After getting kernel config somewhat worked out, then I started=20
> getting either boot loops or locked out.
>
> I'll stay focused on my core-image-selinux image as hopefully if I can=
=20
> get it working it will help me get my custom image working too.
>
> Here is my last iteration of my local.conf that results in me not=20
> being able to log in.=C2=A0 With core-image-selinux image, it freezes=20
> before it gets to login prompt.=C2=A0 On my custom image, I get log in=
=20
> prompt but when I try to log in a root I get audit messages and=20
> dropped back to login prompt.
>
> local.conf for core-image-selinux:
>
> MACHINE ??=3D 'imx8mmevk'
> DISTRO ?=3D 'poky'
> PACKAGE_CLASSES ?=3D 'package_rpm'
> EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
> DISTRO_FEATURES_remove =3D " sysvinit"
> DISTRO_FEATURES_append +=3D " acl xattr pam selinux systemd"
> VIRTUAL-RUNTIME_init_manager =3D "systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED =3D ""
> PREFERRED_PROVIDER_virtual/refpolicy ?=3D "refpolicy-mls"


You can try refpolicy-mcs or refpolicy-targeted. The mls policy doesn't=20
work for systemed on dunfell.

//Yi

> USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
> IMAGE_FSTYPES +=3D " tar.bz2 ext4 wic.bz2 wic.bmap"
> PATCHRESOLVE =3D "noop"
> BB_DISKMON_DIRS ??=3D "\
> =C2=A0=C2=A0=C2=A0STOPTASKS,${TMPDIR},1G,100K \
> =C2=A0=C2=A0=C2=A0STOPTASKS,${DL_DIR},1G,100K \
> =C2=A0=C2=A0=C2=A0STOPTASKS,${SSTATE_DIR},1G,100K \
> =C2=A0=C2=A0=C2=A0STOPTASKS,/tmp,100M,100K \
> =C2=A0=C2=A0=C2=A0ABORT,${TMPDIR},100M,1K \
> =C2=A0=C2=A0=C2=A0ABORT,${DL_DIR},100M,1K \
> =C2=A0=C2=A0=C2=A0ABORT,${SSTATE_DIR},100M,1K \
> =C2=A0=C2=A0=C2=A0ABORT,/tmp,10M,1K"
> PACKAGECONFIG_append_pn-qemu-system-native =3D " sdl"
> CONF_VERSION =3D "1"
>
> DL_DIR ?=3D "${BSPDIR}/downloads/"
> ACCEPT_FSL_EULA =3D "1"
>
> At first I did not have DISTRO_FEATURES_remove =3D " sysvinit" or any=20
> systemd settings.=C2=A0 This is when I started getting boot loops as=20
> described here:
> https://patchwork.openembedded.org/patch/164274/=20
> <https://patchwork.openembedded.org/patch/164274/>
>
> The board would boot and I'd get tons of these "/sbin/restorecon:=20
> Could not set context for " bla, bla, bla "Read-only file system"=20
> messages ... but then I'd get a login prompt and I'd be able to log in=
=20
> as root and run sestatus:
>
> Poky (Yocto Project Reference Distro) 3.1.7 imx8mmevk ttymxc1
>
> imx8mmevk login: root
> root@imx8mmevk:~# sestatus
> SELinux status: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0enabled
> SELinuxfs mount: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/sys/fs/selinux
> SELinux root directory: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
/etc/selinux
> Loaded policy name: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0mcs
> Current mode: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0permissive
> Mode from config file: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0enforcing
> Policy MLS status: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0enabled
> Policy deny_unknown status: =C2=A0=C2=A0=C2=A0=C2=A0allowed
> Memory protection checking: =C2=A0=C2=A0=C2=A0=C2=A0requested (insecure)
> Max kernel policy version: =C2=A0=C2=A0=C2=A0=C2=A0=C2=A031
>
> This is when I paid more attention to the meta-selinux README=20
> https://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/tree/README=20
> <https://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/tree/README>
>
> ... and added the DISTRO_FEATURES_remove =3D " sysvinit" and other=20
> systemd commands to my local.conf above since the "boot loop" link=20
> above talked about issues with sysvinit etc.
>
> This left me with a boot that looks like this for my=20
> core-image-selinux build ... which locks up:
>
> [ =C2=A0=C2=A0=C2=A00.000000] Dentry cache hash table entries: 262144 (o=
rder: 9,=20
> 2097152 bytes, linear)
> [ =C2=A0=C2=A0=C2=A00.000000] Inode-cache hash table entries: 131072 (or=
der: 8,=20
> 1048576 bytes, linear)
> [ =C2=A0=C2=A0=C2=A00.000000] mem auto-init: stack:off, heap alloc:off, =
heap free:off
> [ =C2=A0=C2=A0=C2=A00.000000] Memory: 1336216K/2064384K available (16508=
K kernel=20
> code, 1234K rwdata, 6480K rodata, 2880K init, 1038K bss, 72808K=20
> reserved, 655360K cma-reserved)
> [ =C2=A0=C2=A0=C2=A00.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObject=
s=3D0, CPUs=3D4, Nodes=3D1
> [ =C2=A0=C2=A0=C2=A00.000000] rcu: Preemptible hierarchical RCU implemen=
tation.
> [ =C2=A0=C2=A0=C2=A00.000000] rcu: =C2=A0=C2=A0=C2=A0=C2=A0RCU restricti=
ng CPUs from NR_CPUS=3D256 to=20
> nr_cpu_ids=3D4.
> [ =C2=A0=C2=A0=C2=A00.000000] =C2=A0Tasks RCU enabled.
> [ =C2=A0=C2=A0=C2=A00.000000] rcu: RCU calculated value of scheduler-enl=
istment delay=20
> is 25 jiffies.
> [ =C2=A0=C2=A0=C2=A00.000000] rcu: Adjusting geometry for rcu_fanout_lea=
f=3D16,=20
> nr_cpu_ids=3D4
> [ =C2=A0=C2=A0=C2=A00.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irq=
s: 0
> [ =C2=A0=C2=A0=C2=A00.000000] GICv3: GIC: Using split EOI/Deactivate mod=
e
> [ =C2=A0=C2=A0=C2=A00.000000] GICv3: 128 SPIs implemented
> [ =C2=A0=C2=A0=C2=A00.000000] GICv3: 0 Extended SPIs implemented
> [ =C2=A0=C2=A0=C2=A00.000000] GICv3: Distributor has no Range Selector s=
upport
> [ =C2=A0=C2=A0=C2=A00.000000] GICv3: 16 PPIs implemented
> [ =C2=A0=C2=A0=C2=A00.000000] GICv3: no VLPI support, no direct LPI supp=
ort
> [ =C2=A0=C2=A0=C2=A00.000000] GICv3: CPU0: found redistributor 0 region=
=20
> 0:0x0000000038880000
> [ =C2=A0=C2=A0=C2=A00.000000] ITS: No ITS available, not enabling LPIs
> [ =C2=A0=C2=A0=C2=A00.000000] random: get_random_bytes called from=20
> start_kernel+0x2b8/0x43c with crng_init=3D0
> [ =C2=A0=C2=A0=C2=A00.000000] arch_timer: cp15 timer(s) running at 8.00M=
Hz (phys).
> [ =C2=A0=C2=A0=C2=A00.000000] clocksource: arch_sys_counter: mask: 0xfff=
fffffffffff=20
> max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns
> [ =C2=A0=C2=A0=C2=A00.000003] sched_clock: 56 bits at 8MHz, resolution 1=
25ns, wraps=20
> every 2199023255500ns
> [ =C2=A0=C2=A0=C2=A00.008459] Console: colour dummy device 80x25
> [ =C2=A0=C2=A0=C2=A00.012580] Calibrating delay loop (skipped), value ca=
lculated=20
> using timer frequency.. 16.00 BogoMIPS (lpj=3D32000)
> [ =C2=A0=C2=A0=C2=A00.022844] pid_max: default: 32768 minimum: 301
> [ =C2=A0=C2=A0=C2=A00.027543] LSM: Security Framework initializing
> [ =C2=A0=C2=A0=C2=A00.032140] SELinux: =C2=A0Initializing.
> [ =C2=A0=C2=A0=C2=A00.035681] Mount-cache hash table entries: 4096 (orde=
r: 3, 32768=20
> bytes, linear)
> [ =C2=A0=C2=A0=C2=A00.043062] Mountpoint-cache hash table entries: 4096 =
(order: 3,=20
> 32768 bytes, linear)
> [ =C2=A0=C2=A0=C2=A00.052070] ASID allocator initialised with 32768 entr=
ies
> [ =C2=A0=C2=A0=C2=A00.056440] rcu: Hierarchical SRCU implementation.
> [ =C2=A0=C2=A0=C2=A00.062118] EFI services will not be available.
> [ =C2=A0=C2=A0=C2=A00.065893] smp: Bringing up secondary CPUs ...
> [ =C2=A0=C2=A0=C2=A00.070649] Detected VIPT I-cache on CPU1
> [ =C2=A0=C2=A0=C2=A00.070672] GICv3: CPU1: found redistributor 1 region=
=20
> 0:0x00000000388a0000
> [ =C2=A0=C2=A0=C2=A00.070703] CPU1: Booted secondary processor 0x0000000=
001 [0x410fd034]
> [ =C2=A0=C2=A0=C2=A00.071102] Detected VIPT I-cache on CPU2
> [ =C2=A0=C2=A0=C2=A00.071119] GICv3: CPU2: found redistributor 2 region=
=20
> 0:0x00000000388c0000
> [ =C2=A0=C2=A0=C2=A00.071137] CPU2: Booted secondary processor 0x0000000=
002 [0x410fd034]
> [ =C2=A0=C2=A0=C2=A00.071503] Detected VIPT I-cache on CPU3
> [ =C2=A0=C2=A0=C2=A00.071518] GICv3: CPU3: found redistributor 3 region=
=20
> 0:0x00000000388e0000
> [ =C2=A0=C2=A0=C2=A00.071533] CPU3: Booted secondary processor 0x0000000=
003 [0x410fd034]
> [ =C2=A0=C2=A0=C2=A00.071584] smp: Brought up 1 node, 4 CPUs
> [ =C2=A0=C2=A0=C2=A00.126889] SMP: Total of 4 processors activated.
> [ =C2=A0=C2=A0=C2=A00.131608] CPU features: detected: 32-bit EL0 Support
> [ =C2=A0=C2=A0=C2=A00.136780] CPU features: detected: CRC32 instructions
> [ =C2=A0=C2=A0=C2=A00.148803] CPU: All CPU(s) started at EL2
> [ =C2=A0=C2=A0=C2=A00.150075] alternatives: patching kernel code
> [ =C2=A0=C2=A0=C2=A00.155994] devtmpfs: initialized
> [ =C2=A0=C2=A0=C2=A00.163617] clocksource: jiffies: mask: 0xffffffff max=
_cycles:=20
> 0xffffffff, max_idle_ns: 7645041785100000 ns
> [ =C2=A0=C2=A0=C2=A00.170570] futex hash table entries: 1024 (order: 4, =
65536 bytes,=20
> linear)
> [ =C2=A0=C2=A0=C2=A00.194282] pinctrl core: initialized pinctrl subsyste=
m
> [ =C2=A0=C2=A0=C2=A00.197368] DMI not present or invalid.
> [ =C2=A0=C2=A0=C2=A00.200798] NET: Registered protocol family 16
> [ =C2=A0=C2=A0=C2=A00.212024] DMA: preallocated 256 KiB pool for atomic =
allocations
> [ =C2=A0=C2=A0=C2=A00.215321] audit: initializing netlink subsys (disabl=
ed)
> [ =C2=A0=C2=A0=C2=A00.220974] audit: type=3D2000 audit(0.160:1): state=
=3Dinitialized=20
> audit_enabled=3D0 res=3D1
> [ =C2=A0=C2=A0=C2=A00.228526] cpuidle: using governor menu
> [ =C2=A0=C2=A0=C2=A00.232929] hw-breakpoint: found 6 breakpoint and 4 wa=
tchpoint=20
> registers.
> [ =C2=A0=C2=A0=C2=A00.240041] Serial: AMBA PL011 UART driver
> [ =C2=A0=C2=A0=C2=A00.243431] imx mu driver is registered.
> [ =C2=A0=C2=A0=C2=A00.247320] imx rpmsg driver is registered.
> [ =C2=A0=C2=A0=C2=A00.256460] imx8mm-pinctrl 30330000.pinctrl: initializ=
ed IMX=20
> pinctrl driver
> [ =C2=A0=C2=A0=C2=A00.277607] HugeTLB registered 1.00 GiB page size, pre=
-allocated 0=20
> pages
> [ =C2=A0=C2=A0=C2=A00.281501] HugeTLB registered 32.0 MiB page size, pre=
-allocated 0=20
> pages
> [ =C2=A0=C2=A0=C2=A00.288221] HugeTLB registered 2.00 MiB page size, pre=
-allocated 0=20
> pages
> [ =C2=A0=C2=A0=C2=A00.294958] HugeTLB registered 64.0 KiB page size, pre=
-allocated 0=20
> pages
> [ =C2=A0=C2=A0=C2=A00.302578] cryptd: max_cpu_qlen set to 1000
> [ =C2=A0=C2=A0=C2=A00.308925] ACPI: Interpreter disabled.
> [ =C2=A0=C2=A0=C2=A00.310647] iommu: Default domain type: Translated
> [ =C2=A0=C2=A0=C2=A00.314984] vgaarb: loaded
> [ =C2=A0=C2=A0=C2=A00.317796] SCSI subsystem initialized
> [ =C2=A0=C2=A0=C2=A00.321638] usbcore: registered new interface driver u=
sbfs
> [ =C2=A0=C2=A0=C2=A00.326821] usbcore: registered new interface driver h=
ub
> [ =C2=A0=C2=A0=C2=A00.332166] usbcore: registered new device driver usb
> [ =C2=A0=C2=A0=C2=A00.338386] mc: Linux media interface: v0.10
> [ =C2=A0=C2=A0=C2=A00.341521] videodev: Linux video capture interface: v=
2.00
> [ =C2=A0=C2=A0=C2=A00.347069] pps_core: LinuxPPS API ver. 1 registered
> [ =C2=A0=C2=A0=C2=A00.351999] pps_core: Software ver. 5.3.6 - Copyright =
2005-2007=20
> Rodolfo Giometti <giometti@linux.it <mailto:giometti@linux.it>>
> [ =C2=A0=C2=A0=C2=A00.361194] PTP clock support registered
> [ =C2=A0=C2=A0=C2=A00.365250] EDAC MC: Ver: 3.0.0
> [ =C2=A0=C2=A0=C2=A00.369031] No BMan portals available!
> [ =C2=A0=C2=A0=C2=A00.372241] QMan: Allocated lookup table at (____ptrva=
l____), entry=20
> count 65537
> [ =C2=A0=C2=A0=C2=A00.379650] No QMan portals available!
> [ =C2=A0=C2=A0=C2=A00.383528] No USDPAA memory, no 'fsl,usdpaa-mem' in d=
evice-tree
> [ =C2=A0=C2=A0=C2=A00.389580] FPGA manager framework
> [ =C2=A0=C2=A0=C2=A00.392665] Advanced Linux Sound Architecture Driver I=
nitialized.
> [ =C2=A0=C2=A0=C2=A00.399103] Bluetooth: Core ver 2.22
> [ =C2=A0=C2=A0=C2=A00.402325] NET: Registered protocol family 31
> [ =C2=A0=C2=A0=C2=A00.406776] Bluetooth: HCI device and connection manag=
er initialized
> [ =C2=A0=C2=A0=C2=A00.413165] Bluetooth: HCI socket layer initialized
> [ =C2=A0=C2=A0=C2=A00.418063] Bluetooth: L2CAP socket layer initialized
> [ =C2=A0=C2=A0=C2=A00.423145] Bluetooth: SCO socket layer initialized
> [ =C2=A0=C2=A0=C2=A00.428729] clocksource: Switched to clocksource arch_=
sys_counter
> [ =C2=A0=C2=A0=C2=A00.434318] VFS: Disk quotas dquot_6.6.0
> [ =C2=A0=C2=A0=C2=A00.438147] VFS: Dquot-cache hash table entries: 512 (=
order 0, 4096=20
> bytes)
> [ =C2=A0=C2=A0=C2=A00.445173] pnp: PnP ACPI: disabled
> [ =C2=A0=C2=A0=C2=A00.454071] thermal_sys: Registered thermal governor '=
step_wise'
> [ =C2=A0=C2=A0=C2=A00.454075] thermal_sys: Registered thermal governor '=
power_allocator'
> [ =C2=A0=C2=A0=C2=A00.457567] NET: Registered protocol family 2
> [ =C2=A0=C2=A0=C2=A00.468500] tcp_listen_portaddr_hash hash table entrie=
s: 1024=20
> (order: 2, 16384 bytes, linear)
> [ =C2=A0=C2=A0=C2=A00.476800] TCP established hash table entries: 16384 =
(order: 5,=20
> 131072 bytes, linear)
> [ =C2=A0=C2=A0=C2=A00.484830] TCP bind hash table entries: 16384 (order:=
 6, 262144=20
> bytes, linear)
> [ =C2=A0=C2=A0=C2=A00.492297] TCP: Hash tables configured (established 1=
6384 bind 16384)
> [ =C2=A0=C2=A0=C2=A00.498720] UDP hash table entries: 1024 (order: 3, 32=
768 bytes,=20
> linear)
> [ =C2=A0=C2=A0=C2=A00.505415] UDP-Lite hash table entries: 1024 (order: =
3, 32768=20
> bytes, linear)
> [ =C2=A0=C2=A0=C2=A00.512695] NET: Registered protocol family 1
> [ =C2=A0=C2=A0=C2=A00.517249] RPC: Registered named UNIX socket transpor=
t module.
> [ =C2=A0=C2=A0=C2=A00.522882] RPC: Registered udp transport module.
> [ =C2=A0=C2=A0=C2=A00.527598] RPC: Registered tcp transport module.
> [ =C2=A0=C2=A0=C2=A00.532323] RPC: Registered tcp NFSv4.1 backchannel tr=
ansport module.
> [ =C2=A0=C2=A0=C2=A00.539172] PCI: CLS 0 bytes, default 64
> [ =C2=A0=C2=A0=C2=A00.543460] hw perfevents: enabled with armv8_pmuv3 PM=
U driver, 7=20
> counters available
> [ =C2=A0=C2=A0=C2=A00.550860] kvm [1]: IPA Size Limit: 40 bits
> [ =C2=A0=C2=A0=C2=A00.555419] kvm [1]: GICv3: no GICV resource entry
> [ =C2=A0=C2=A0=C2=A00.559628] kvm [1]: disabling GICv2 emulation
> [ =C2=A0=C2=A0=C2=A00.564099] kvm [1]: GIC system register CPU interface=
 enabled
> [ =C2=A0=C2=A0=C2=A00.570004] kvm [1]: vgic interrupt IRQ1
> [ =C2=A0=C2=A0=C2=A00.573975] kvm [1]: Hyp mode initialized successfully
> [ =C2=A0=C2=A0=C2=A00.581824] Initialise system trusted keyrings
> [ =C2=A0=C2=A0=C2=A00.583614] workingset: timestamp_bits=3D44 max_order=
=3D19 bucket_order=3D0
> [ =C2=A0=C2=A0=C2=A00.595759] squashfs: version 4.0 (2009/01/31) Phillip=
 Lougher
> [ =C2=A0=C2=A0=C2=A00.599368] NFS: Registering the id_resolver key type
> [ =C2=A0=C2=A0=C2=A00.603857] Key type id_resolver registered
> [ =C2=A0=C2=A0=C2=A00.608041] Key type id_legacy registered
> [ =C2=A0=C2=A0=C2=A00.612067] nfs4filelayout_init: NFSv4 File Layout Dri=
ver=20
> Registering...
> [ =C2=A0=C2=A0=C2=A00.618796] nfs4flexfilelayout_init: NFSv4 Flexfile La=
yout Driver=20
> Registering...
> [ =C2=A0=C2=A0=C2=A00.626246] jffs2: version 2.2. (NAND) =EF=BF=BD=C2=A9=
 2001-2006 Red Hat, Inc.
> [ =C2=A0=C2=A0=C2=A00.632759] 9p: Installing v9fs 9p2000 file system sup=
port
> [ =C2=A0=C2=A0=C2=A00.650797] Key type asymmetric registered
> [ =C2=A0=C2=A0=C2=A00.652038] Asymmetric key parser 'x509' registered
> [ =C2=A0=C2=A0=C2=A00.656972] Block layer SCSI generic (bsg) driver vers=
ion 0.4=20
> loaded (major 244)
> [ =C2=A0=C2=A0=C2=A00.664383] io scheduler mq-deadline registered
> [ =C2=A0=C2=A0=C2=A00.668932] io scheduler kyber registered
> [ =C2=A0=C2=A0=C2=A00.677135] EINJ: ACPI disabled.
> [ =C2=A0=C2=A0=C2=A00.685891] imx-sdma 302c0000.dma-controller: Direct f=
irmware load=20
> for imx/sdma/sdma-imx7d.bin failed with error -2
> [ =C2=A0=C2=A0=C2=A00.693543] imx-sdma 302c0000.dma-controller: Falling =
back to sysfs=20
> fallback for: imx/sdma/sdma-imx7d.bin
> [ =C2=A0=C2=A0=C2=A00.710746] mxs-dma 33000000.dma-controller: initializ=
ed
> [ =C2=A0=C2=A0=C2=A00.714250] Bus freq driver module loaded
> [ =C2=A0=C2=A0=C2=A00.722266] Serial: 8250/16550 driver, 4 ports, IRQ sh=
aring enabled
> [ =C2=A0=C2=A0=C2=A00.727674] 30890000.serial: ttymxc1 at MMIO 0x3089000=
0 (irq =3D 34,=20
> base_baud =3D 1500000) is a IMX
> [ =C2=A0=C2=A0=C2=A00.734595] printk: console [ttymxc1] enabled
> [ =C2=A0=C2=A0=C2=A00.734595] printk: console [ttymxc1] enabled
> [ =C2=A0=C2=A0=C2=A00.743235] printk: bootconsole [ec_imx6q0] disabled
> [ =C2=A0=C2=A0=C2=A00.743235] printk: bootconsole [ec_imx6q0] disabled
> [ =C2=A0=C2=A0=C2=A00.755182] imx-drm soc@0:bus@32c00000:display-subsyst=
em: no=20
> available port
> [ =C2=A0=C2=A0=C2=A00.773488] loop: module loaded
> [ =C2=A0=C2=A0=C2=A00.778553] imx ahci driver is registered.
> [ =C2=A0=C2=A0=C2=A00.785346] spi_imx 30830000.spi: probed
> [ =C2=A0=C2=A0=C2=A00.790183] spi-nor spi3.0: n25q256ax1 (32768 Kbytes)
> [ =C2=A0=C2=A0=C2=A00.795277] 7 fixed-partitions partitions found on MTD=
 device=20
> 30bb0000.spi
> [ =C2=A0=C2=A0=C2=A00.802157] Creating 7 MTD partitions on "30bb0000.spi=
":
> [ =C2=A0=C2=A0=C2=A00.807477] 0x000000000000-0x000000200000 : "U-Boot"
> [ =C2=A0=C2=A0=C2=A00.817371] 0x000000200000-0x000000202000 : "U-Boot En=
v"
> [ =C2=A0=C2=A0=C2=A00.822696] mtd: partition "U-Boot Env" doesn't end on=
 an=20
> erase/write block -- force read-only
> [ =C2=A0=C2=A0=C2=A00.833323] 0x000000202000-0x000000204000 : "U-Boot En=
v 2"
> [ =C2=A0=C2=A0=C2=A00.838819] mtd: partition "U-Boot Env 2" doesn't star=
t on an=20
> erase/write block boundary -- force read-only
> [ =C2=A0=C2=A0=C2=A00.853314] 0x000000204000-0x000000205000 : "boot.scr"
> [ =C2=A0=C2=A0=C2=A00.858463] mtd: partition "boot.scr" doesn't start on=
 an=20
> erase/write block boundary -- force read-only
> [ =C2=A0=C2=A0=C2=A00.869306] 0x000000205000-0x000000210000 : "Device Tr=
ee Blob"
> [ =C2=A0=C2=A0=C2=A00.875150] mtd: partition "Device Tree Blob" doesn't =
start on an=20
> erase/write block boundary -- force read-only
> [ =C2=A0=C2=A0=C2=A00.889320] 0x000000210000-0x000000e10000 : "Compresse=
d Kernel"
> [ =C2=A0=C2=A0=C2=A00.897335] 0x000000e10000-0x000002000000 : "SquashFS"
> [ =C2=A0=C2=A0=C2=A00.906575] libphy: Fixed MDIO Bus: probed
> [ =C2=A0=C2=A0=C2=A00.911375] tun: Universal TUN/TAP device driver, 1.6
> [ =C2=A0=C2=A0=C2=A00.917133] thunder_xcv, ver 1.0
> [ =C2=A0=C2=A0=C2=A00.920386] thunder_bgx, ver 1.0
> [ =C2=A0=C2=A0=C2=A00.923649] nicpf, ver 1.0
> [ =C2=A0=C2=A0=C2=A00.927576] pps pps0: new PPS source ptp0
> [ =C2=A0=C2=A0=C2=A00.944110] libphy: fec_enet_mii_bus: probed
> [ =C2=A0=C2=A0=C2=A00.948923] fec 30be0000.ethernet eth0: registered PHC=
 device 0
> [ =C2=A0=C2=A0=C2=A00.955395] Freescale FM module, FMD API version 21.1.=
0
> [ =C2=A0=C2=A0=C2=A00.960856] Freescale FM Ports module
> [ =C2=A0=C2=A0=C2=A00.964517] fsl_mac: fsl_mac: FSL FMan MAC API based d=
river
> [ =C2=A0=C2=A0=C2=A00.970260] fsl_dpa: FSL DPAA Ethernet driver
> [ =C2=A0=C2=A0=C2=A00.974714] fsl_advanced: FSL DPAA Advanced drivers:
> [ =C2=A0=C2=A0=C2=A00.979684] fsl_proxy: FSL DPAA Proxy initialization d=
river
> [ =C2=A0=C2=A0=C2=A00.985344] fsl_oh: FSL FMan Offline Parsing port driv=
er
> [ =C2=A0=C2=A0=C2=A00.991426] hclge is initializing
> [ =C2=A0=C2=A0=C2=A00.994751] hns3: Hisilicon Ethernet Network Driver fo=
r Hip08=20
> Family - version
> [ =C2=A0=C2=A0=C2=A01.001977] hns3: Copyright (c) 2017 Huawei Corporatio=
n.
> [ =C2=A0=C2=A0=C2=A01.007347] e1000: Intel(R) PRO/1000 Network Driver - =
version=20
> 7.3.21-k8-NAPI
> [ =C2=A0=C2=A0=C2=A01.014400] e1000: Copyright (c) 1999-2006 Intel Corpo=
ration.
> [ =C2=A0=C2=A0=C2=A01.020176] e1000e: Intel(R) PRO/1000 Network Driver -=
 3.2.6-k
> [ =C2=A0=C2=A0=C2=A01.026012] e1000e: Copyright(c) 1999 - 2015 Intel Cor=
poration.
> [ =C2=A0=C2=A0=C2=A01.031967] igb: Intel(R) Gigabit Ethernet Network Dri=
ver - version=20
> 5.6.0-k
> [ =C2=A0=C2=A0=C2=A01.038938] igb: Copyright (c) 2007-2014 Intel Corpora=
tion.
> [ =C2=A0=C2=A0=C2=A01.044545] igbvf: Intel(R) Gigabit Virtual Function N=
etwork Driver=20
> - version 2.4.0-k
> [ =C2=A0=C2=A0=C2=A01.052378] igbvf: Copyright (c) 2009 - 2012 Intel Cor=
poration.
> [ =C2=A0=C2=A0=C2=A01.058433] sky2: driver version 1.30
> [ =C2=A0=C2=A0=C2=A01.062933] VFIO - User Level meta-driver version: 0.3
> [ =C2=A0=C2=A0=C2=A01.069701] ehci_hcd: USB 2.0 'Enhanced' Host Controll=
er (EHCI) Driver
> [ =C2=A0=C2=A0=C2=A01.076239] ehci-pci: EHCI PCI platform driver
> [ =C2=A0=C2=A0=C2=A01.080767] ehci-platform: EHCI generic platform drive=
r
> [ =C2=A0=C2=A0=C2=A01.086146] ohci_hcd: USB 1.1 'Open' Host Controller (=
OHCI) Driver
> [ =C2=A0=C2=A0=C2=A01.092348] ohci-pci: OHCI PCI platform driver
> [ =C2=A0=C2=A0=C2=A01.096826] ohci-platform: OHCI generic platform drive=
r
> [ =C2=A0=C2=A0=C2=A01.102542] usbcore: registered new interface driver u=
sb-storage
> [ =C2=A0=C2=A0=C2=A01.108613] usbcore: registered new interface driver u=
sbserial_generic
> [ =C2=A0=C2=A0=C2=A01.115159] usbserial: USB Serial support registered f=
or generic
> [ =C2=A0=C2=A0=C2=A01.121191] usbcore: registered new interface driver f=
tdi_sio
> [ =C2=A0=C2=A0=C2=A01.126952] usbserial: USB Serial support registered f=
or FTDI USB=20
> Serial Device
> [ =C2=A0=C2=A0=C2=A01.134291] usbcore: registered new interface driver u=
sb_serial_simple
> [ =C2=A0=C2=A0=C2=A01.140836] usbserial: USB Serial support registered f=
or carelink
> [ =C2=A0=C2=A0=C2=A01.146944] usbserial: USB Serial support registered f=
or zio
> [ =C2=A0=C2=A0=C2=A01.152619] usbserial: USB Serial support registered f=
or funsoft
> [ =C2=A0=C2=A0=C2=A01.158641] usbserial: USB Serial support registered f=
or flashloader
> [ =C2=A0=C2=A0=C2=A01.165010] usbserial: USB Serial support registered f=
or google
> [ =C2=A0=C2=A0=C2=A01.170946] usbserial: USB Serial support registered f=
or libtransistor
> [ =C2=A0=C2=A0=C2=A01.177489] usbserial: USB Serial support registered f=
or vivopay
> [ =C2=A0=C2=A0=C2=A01.183513] usbserial: USB Serial support registered f=
or moto_modem
> [ =C2=A0=C2=A0=C2=A01.189801] usbserial: USB Serial support registered f=
or=20
> motorola_tetra
> [ =C2=A0=C2=A0=C2=A01.196438] usbserial: USB Serial support registered f=
or novatel_gps
> [ =C2=A0=C2=A0=C2=A01.202809] usbserial: USB Serial support registered f=
or hp4x
> [ =C2=A0=C2=A0=C2=A01.208572] usbserial: USB Serial support registered f=
or suunto
> [ =C2=A0=C2=A0=C2=A01.214508] usbserial: USB Serial support registered f=
or siemens_mpi
> [ =C2=A0=C2=A0=C2=A01.223211] input: 30370000.snvs:snvs-powerkey as=20
> /devices/platform/soc@0/soc@0:bus@30000000/30370000.snvs/30370000.snvs:s=
nvs-powerkey/input/input0
> [ =C2=A0=C2=A0=C2=A01.238238] snvs_rtc 30370000.snvs:snvs-rtc-lp: regist=
ered as rtc0
> [ =C2=A0=C2=A0=C2=A01.244505] i2c /dev entries driver
> [ =C2=A0=C2=A0=C2=A01.252447] imx2-wdt 30280000.watchdog: timeout 60 sec=
 (nowayout=3D0)
> [ =C2=A0=C2=A0=C2=A01.258987] Bluetooth: HCI UART driver ver 2.3
> [ =C2=A0=C2=A0=C2=A01.263444] Bluetooth: HCI UART protocol H4 registered
> [ =C2=A0=C2=A0=C2=A01.268589] Bluetooth: HCI UART protocol BCSP register=
ed
> [ =C2=A0=C2=A0=C2=A01.273925] Bluetooth: HCI UART protocol LL registered
> [ =C2=A0=C2=A0=C2=A01.279069] Bluetooth: HCI UART protocol ATH3K registe=
red
> [ =C2=A0=C2=A0=C2=A01.284486] Bluetooth: HCI UART protocol Three-wire (H=
5) registered
> [ =C2=A0=C2=A0=C2=A01.290836] Bluetooth: HCI UART protocol Broadcom regi=
stered
> [ =C2=A0=C2=A0=C2=A01.296520] Bluetooth: HCI UART protocol QCA registere=
d
> [ =C2=A0=C2=A0=C2=A01.303494] sdhci: Secure Digital Host Controller Inte=
rface driver
> [ =C2=A0=C2=A0=C2=A01.309687] sdhci: Copyright(c) Pierre Ossman
> [ =C2=A0=C2=A0=C2=A01.314212] Synopsys Designware Multimedia Card Interf=
ace Driver
> [ =C2=A0=C2=A0=C2=A01.320736] sdhci-pltfm: SDHCI platform and OF driver =
helper
> [ =C2=A0=C2=A0=C2=A01.327135] mmc1: CQHCI version 5.10
> [ =C2=A0=C2=A0=C2=A01.331200] mmc2: CQHCI version 5.10
> [ =C2=A0=C2=A0=C2=A01.366866] mmc2: SDHCI controller on 30b60000.mmc [30=
b60000.mmc]=20
> using ADMA
> [ =C2=A0=C2=A0=C2=A01.376165] ledtrig-cpu: registered to indicate activi=
ty on CPUs
> [ =C2=A0=C2=A0=C2=A01.383297] caam 30900000.crypto: device ID =3D 0x0a16=
040100000000=20
> (Era 9)
> [ =C2=A0=C2=A0=C2=A01.390069] caam 30900000.crypto: job rings =3D 3, qi =
=
=3D 0
> [ =C2=A0=C2=A0=C2=A01.404678] caam algorithms registered in /proc/crypto
> [ =C2=A0=C2=A0=C2=A01.410556] caam 30900000.crypto: caam pkc algorithms =
registered in=20
> /proc/crypto
> [ =C2=A0=C2=A0=C2=A01.420079] caam_jr 30901000.jr: registering rng-caam
> [ =C2=A0=C2=A0=C2=A01.429895] caam-snvs 30370000.caam-snvs: can't get sn=
vs clock
> [ =C2=A0=C2=A0=C2=A01.435783] caam-snvs 30370000.caam-snvs: violation ha=
ndlers armed=20
> - non-secure state
> [ =C2=A0=C2=A0=C2=A01.444200] usbcore: registered new interface driver u=
sbhid
> [ =C2=A0=C2=A0=C2=A01.449780] usbhid: USB HID core driver
> [ =C2=A0=C2=A0=C2=A01.455330] No fsl,qman node
> [ =C2=A0=C2=A0=C2=A01.458228] Freescale USDPAA process driver
> [ =C2=A0=C2=A0=C2=A01.462416] fsl-usdpaa: no region found
> [ =C2=A0=C2=A0=C2=A01.466254] Freescale USDPAA process IRQ driver
> [ =C2=A0=C2=A0=C2=A01.474284] optee: probing for conduit method from DT.
> [ =C2=A0=C2=A0=C2=A01.479448] optee: revision 3.2 (6a22e6e8)
> [ =C2=A0=C2=A0=C2=A01.480265] optee: dynamic shared memory is enabled
> [ =C2=A0=C2=A0=C2=A01.489481] optee: initialized driver
> [ =C2=A0=C2=A0=C2=A01.495289] mmc2: Command Queue Engine enabled
> [ =C2=A0=C2=A0=C2=A01.496837] wm8524-codec audio-codec: Failed to get mu=
te line: -517
> [ =C2=A0=C2=A0=C2=A01.499792] mmc2: new HS400 Enhanced strobe MMC card a=
t address 0001
> [ =C2=A0=C2=A0=C2=A01.506505] OF: /sound-bt-sco/simple-audio-card,cpu: c=
ould not get=20
> #sound-dai-cells for /soc@0/bus@30000000/sai@30020000
> [ =C2=A0=C2=A0=C2=A01.513508] mmcblk2: mmc2:0001 DG4016 7.49 GiB
> [ =C2=A0=C2=A0=C2=A01.523248] asoc-simple-card sound-bt-sco: parse error=
 -22
> [ =C2=A0=C2=A0=C2=A01.523265] asoc-simple-card: probe of sound-bt-sco fa=
iled with=20
> error -22
> [ =C2=A0=C2=A0=C2=A01.527908] mmcblk2boot0: mmc2:0001 DG4016 partition 1=
 4.00 MiB
> [ =C2=A0=C2=A0=C2=A01.546163] mmcblk2boot1: mmc2:0001 DG4016 partition 2=
 4.00 MiB
> [ =C2=A0=C2=A0=C2=A01.547285] pktgen: Packet Generator for packet perfor=
mance=20
> testing. Version: 2.75
> [ =C2=A0=C2=A0=C2=A01.552232] mmcblk2gp0: mmc2:0001 DG4016 partition 4 3=
.52 GiB
> [ =C2=A0=C2=A0=C2=A01.565904] mmcblk2rpmb: mmc2:0001 DG4016 partition 3 =
4.00 MiB,=20
> chardev (237:0)
> [ =C2=A0=C2=A0=C2=A01.566798] NET: Registered protocol family 26
> [ =C2=A0=C2=A0=C2=A01.578184] NET: Registered protocol family 10
> [ =C2=A0=C2=A0=C2=A01.582998] =C2=A0mmcblk2: p1 p2
> [ =C2=A0=C2=A0=C2=A01.583960] Segment Routing with IPv6
> [ =C2=A0=C2=A0=C2=A01.589559] NET: Registered protocol family 17
> [ =C2=A0=C2=A0=C2=A01.594201] =C2=A0mmcblk2gp0: p1 p2
> [ =C2=A0=C2=A0=C2=A01.594430] Bluetooth: RFCOMM TTY layer initialized
> [ =C2=A0=C2=A0=C2=A01.602179] Bluetooth: RFCOMM socket layer initialized
> [ =C2=A0=C2=A0=C2=A01.607335] Bluetooth: RFCOMM ver 1.11
> [ =C2=A0=C2=A0=C2=A01.611099] Bluetooth: BNEP (Ethernet Emulation) ver 1=
.3
> [ =C2=A0=C2=A0=C2=A01.616414] Bluetooth: BNEP filters: protocol multicas=
t
> [ =C2=A0=C2=A0=C2=A01.621653] Bluetooth: BNEP socket layer initialized
> [ =C2=A0=C2=A0=C2=A01.626623] Bluetooth: HIDP (Human Interface Emulation=
) ver 1.2
> [ =C2=A0=C2=A0=C2=A01.632549] Bluetooth: HIDP socket layer initialized
> [ =C2=A0=C2=A0=C2=A01.637554] 8021q: 802.1Q VLAN Support v1.8
> [ =C2=A0=C2=A0=C2=A01.641764] lib80211: common routines for IEEE802.11 d=
rivers
> [ =C2=A0=C2=A0=C2=A01.647544] 9pnet: Installing 9P2000 support
> [ =C2=A0=C2=A0=C2=A01.651845] tsn generic netlink module v1 init...
> [ =C2=A0=C2=A0=C2=A01.656632] Key type dns_resolver registered
> [ =C2=A0=C2=A0=C2=A01.661668] registered taskstats version 1
> [ =C2=A0=C2=A0=C2=A01.665794] Loading compiled-in X.509 certificates
> [ =C2=A0=C2=A0=C2=A01.692510] usb_phy_generic usbphynop1: usbphynop1 sup=
ply vcc not=20
> found, using dummy regulator
> [ =C2=A0=C2=A0=C2=A01.701297] usb_phy_generic usbphynop2: usbphynop2 sup=
ply vcc not=20
> found, using dummy regulator
> [ =C2=A0=C2=A0=C2=A01.733590] random: fast init done
> [ =C2=A0=C2=A0=C2=A01.738992] LDO6: supplied by regulator-dummy
> [ =C2=A0=C2=A0=C2=A01.743499] i2c i2c-0: IMX I2C adapter registered
> [ =C2=A0=C2=A0=C2=A01.749209] i2c i2c-1: IMX I2C adapter registered
> [ =C2=A0=C2=A0=C2=A01.754765] i2c i2c-2: IMX I2C adapter registered
> [ =C2=A0=C2=A0=C2=A01.760259] i2c i2c-3: IMX I2C adapter registered
> [ =C2=A0=C2=A0=C2=A01.765281] imx-cpufreq-dt imx-cpufreq-dt: cpu speed g=
rade 2 mkt=20
> segment 2 supported-hw 0x4 0x4
> [ =C2=A0=C2=A0=C2=A01.777862] mmc1: CQHCI version 5.10
> [ =C2=A0=C2=A0=C2=A01.781506] sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
> [ =C2=A0=C2=A0=C2=A01.817451] mmc1: SDHCI controller on 30b50000.mmc [30=
b50000.mmc]=20
> using ADMA
> [ =C2=A0=C2=A0=C2=A01.826135] imx8mm-pinctrl 30330000.pinctrl: pin=20
> MX8MM_IOMUXC_I2C4_SDA already requested by 30a50000.i2c; cannot claim=20
> for audio-codec
> [ =C2=A0=C2=A0=C2=A01.838253] imx8mm-pinctrl 30330000.pinctrl: pin-140 (=
audio-codec)=20
> status -22
> [ =C2=A0=C2=A0=C2=A01.845397] imx8mm-pinctrl 30330000.pinctrl: could not=
 request pin=20
> 140 (MX8MM_IOMUXC_I2C4_SDA) from group gpiowlfgrp =C2=A0on device=20
> 30330000.pinctrl
> [ =C2=A0=C2=A0=C2=A01.858357] wm8524-codec audio-codec: Error applying s=
etting,=20
> reverse things back
> [ =C2=A0=C2=A0=C2=A01.865856] wm8524-codec: probe of audio-codec failed =
with error -22
> [ =C2=A0=C2=A0=C2=A01.876549] input: bd718xx-pwrkey as=20
> /devices/platform/soc@0/soc@0:bus@30800000/30a20000.i2c/i2c-0/0-004b/gpi=
o-keys.1.auto/input/input1
> [ =C2=A0=C2=A0=C2=A01.890300] snvs_rtc 30370000.snvs:snvs-rtc-lp: settin=
g system=20
> clock to 1970-01-01T00:00:00 UTC (0)
> [ =C2=A0=C2=A0=C2=A01.899718] cfg80211: Loading compiled-in X.509 certif=
icates for=20
> regulatory database
> [ =C2=A0=C2=A0=C2=A01.911354] cfg80211: Loaded X.509 cert 'sforshee: 00b=
28ddf47aef9cea7'
> [ =C2=A0=C2=A0=C2=A01.917963] platform regulatory.0: Direct firmware loa=
d for=20
> regulatory.db failed with error -2
> [ =C2=A0=C2=A0=C2=A01.923612] ALSA device list:
> [ =C2=A0=C2=A0=C2=A01.926586] platform regulatory.0: Falling back to sys=
fs fallback=20
> for: regulatory.db
> [ =C2=A0=C2=A0=C2=A01.929550] =C2=A0=C2=A0No soundcards found.
> [ =C2=A0=C2=A0=C2=A01.947317] EXT4-fs (mmcblk2p2): mounted filesystem wi=
th ordered=20
> data mode. Opts: (null)
> [ =C2=A0=C2=A0=C2=A01.955496] VFS: Mounted root (ext4 filesystem) readon=
ly on device=20
> 179:2.
> [ =C2=A0=C2=A0=C2=A01.963119] devtmpfs: mounted
> [ =C2=A0=C2=A0=C2=A01.966900] Freeing unused kernel memory: 2880K
> [ =C2=A0=C2=A0=C2=A01.989378] Run /sbin/init as init process
> [ =C2=A0=C2=A0=C2=A02.059403] audit: type=3D1404 audit(1.969:2): enforci=
ng=3D1=20
> old_enforcing=3D0 auid=3D4294967295 ses=3D4294967295 enabled=3D1 old-ena=
bled=3D1=20
> lsm=3Dselinux res=3D1
> [ =C2=A0=C2=A0=C2=A02.199361] SELinux: =C2=A0Permission watch in class f=
ilesystem not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.206919] SELinux: =C2=A0Permission watch in class f=
ile not defined in=20
> policy.
> [ =C2=A0=C2=A0=C2=A02.213885] SELinux: =C2=A0Permission watch_mount in c=
lass file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.221377] SELinux: =C2=A0Permission watch_sb in clas=
s file not defined=20
> in policy.
> [ =C2=A0=C2=A0=C2=A02.228601] SELinux: =C2=A0Permission watch_with_perm =
in class file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.236441] SELinux: =C2=A0Permission watch_reads in c=
lass file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.243935] SELinux: =C2=A0Permission watch in class d=
ir not defined in=20
> policy.
> [ =C2=A0=C2=A0=C2=A02.250819] SELinux: =C2=A0Permission watch_mount in c=
lass dir not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.258216] SELinux: =C2=A0Permission watch_sb in clas=
s dir not defined=20
> in policy.
> [ =C2=A0=C2=A0=C2=A02.265361] SELinux: =C2=A0Permission watch_with_perm =
in class dir not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.273105] SELinux: =C2=A0Permission watch_reads in c=
lass dir not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.280520] SELinux: =C2=A0Permission watch in class l=
nk_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.287830] SELinux: =C2=A0Permission watch_mount in c=
lass lnk_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.295669] SELinux: =C2=A0Permission watch_sb in clas=
s lnk_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.303239] SELinux: =C2=A0Permission watch_with_perm =
in class lnk_file=20
> not defined in policy.
> [ =C2=A0=C2=A0=C2=A02.311429] SELinux: =C2=A0Permission watch_reads in c=
lass lnk_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.319266] SELinux: =C2=A0Permission watch in class c=
hr_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.326585] SELinux: =C2=A0Permission watch_mount in c=
lass chr_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.334416] SELinux: =C2=A0Permission watch_sb in clas=
s chr_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.341994] SELinux: =C2=A0Permission watch_with_perm =
in class chr_file=20
> not defined in policy.
> [ =C2=A0=C2=A0=C2=A02.350172] SELinux: =C2=A0Permission watch_reads in c=
lass chr_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.358021] SELinux: =C2=A0Permission watch in class b=
lk_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.365332] SELinux: =C2=A0Permission watch_mount in c=
lass blk_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.373171] SELinux: =C2=A0Permission watch_sb in clas=
s blk_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.380742] SELinux: =C2=A0Permission watch_with_perm =
in class blk_file=20
> not defined in policy.
> [ =C2=A0=C2=A0=C2=A02.388927] SELinux: =C2=A0Permission watch_reads in c=
lass blk_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.396765] SELinux: =C2=A0Permission watch in class s=
ock_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.404171] SELinux: =C2=A0Permission watch_mount in c=
lass sock_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.412088] SELinux: =C2=A0Permission watch_sb in clas=
s sock_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.419757] SELinux: =C2=A0Permission watch_with_perm =
in class sock_file=20
> not defined in policy.
> [ =C2=A0=C2=A0=C2=A02.428022] SELinux: =C2=A0Permission watch_reads in c=
lass sock_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.435953] SELinux: =C2=A0Permission watch in class f=
ifo_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.443350] SELinux: =C2=A0Permission watch_mount in c=
lass fifo_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.451275] SELinux: =C2=A0Permission watch_sb in clas=
s fifo_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.458933] SELinux: =C2=A0Permission watch_with_perm =
in class fifo_file=20
> not defined in policy.
> [ =C2=A0=C2=A0=C2=A02.467206] SELinux: =C2=A0Permission watch_reads in c=
lass fifo_file not=20
> defined in policy.
> [ =C2=A0=C2=A0=C2=A02.475450] SELinux: the above unknown classes and per=
missions will=20
> be allowed
> [ =C2=A0=C2=A0=C2=A02.482716] SELinux: =C2=A0policy capability network_p=
eer_controls=3D1
> [ =C2=A0=C2=A0=C2=A02.488638] SELinux: =C2=A0policy capability open_perm=
s=3D1
> [ =C2=A0=C2=A0=C2=A02.493612] SELinux: =C2=A0policy capability extended_=
socket_class=3D1
> [ =C2=A0=C2=A0=C2=A02.499534] SELinux: =C2=A0policy capability always_ch=
eck_network=3D0
> [ =C2=A0=C2=A0=C2=A02.505375] SELinux: =C2=A0policy capability cgroup_se=
clabel=3D1
> [ =C2=A0=C2=A0=C2=A02.510776] SELinux: =C2=A0policy capability nnp_nosui=
d_transition=3D1
> [ =C2=A0=C2=A0=C2=A02.551944] audit: type=3D1403 audit(2.461:3): auid=3D=
4294967295=20
> ses=3D4294967295 lsm=3Dselinux res=3D1
> [ =C2=A0=C2=A0=C2=A02.560140] systemd[1]: Successfully loaded SELinux po=
licy in=20
> 501.858ms.
> [ =C2=A0=C2=A0=C2=A02.585453] systemd[1]: System time before build time,=
 advancing=20
> clock.
> [ =C2=A0=C2=A0=C2=A02.596311] systemd[1]: Unable to fix SELinux security=
 context of=20
> /dev: Operation not permitted
> [ =C2=A0=C2=A0=C2=A02.596451] audit: type=3D1401 audit(1600598638.004:4)=
:=20
> op=3Dsecurity_validate_transition seresult=3Ddenied=20
> oldcontext=3Dsystem_u:object_r:device_t:s15:c0.c1023=20
> newcontext=3Dsystem_u:object_r:device_t:s0=20
> taskcontext=3Dsystem_u:system_r:kernel_t:s15:c0.c1023 tclassr
> [ =C2=A0=C2=A0=C2=A02.606247] systemd[1]: Failed to mount tmpfs at /dev/=
shm: No such=20
> file or directory
> [ =C2=A0=C2=A0=C2=A02.627743] audit: type=3D1400 audit(1600598638.016:5)=
: avc: =C2=A0denied=20
> =C2=A0{ create } for =C2=A0pid=3D1 comm=3D"systemd" name=3D"shm"=20
> scontext=3Dsystem_u:system_r:kernel_t:s15:c0.c1023=20
> tcontext=3Dsystem_u:object_r:tmpfs_t:s0 tclass=3Ddir permissive=3D0
> [ =C2=A0=C2=A0=C2=A02.637910] systemd[1]: Unable to fix SELinux security=
 context of=20
> /run: Operation not permitted
> [ =C2=A0=C2=A0=C2=A02.655581] audit: type=3D1400 audit(1600598638.044:6)=
: avc: =C2=A0denied=20
> =C2=A0{ create } for =C2=A0pid=3D1 comm=3D"systemd" name=3D"pts"=20
> scontext=3Dsystem_u:system_r:kernel_t:s15:c0.c1023=20
> tcontext=3Dsystem_u:object_r:devpts_t:s0-s15:c0.c1023 tclass=3Ddir=20
> permissive=3D0
> [ =C2=A0=C2=A0=C2=A02.665724] systemd[1]: Unable to fix SELinux security=
 context of=20
> /sys/fs/cgroup: Operation not permitted
> [ =C2=A0=C2=A0=C2=A02.685536] audit: type=3D1401 audit(1600598638.048:7)=
:=20
> op=3Dsecurity_validate_transition seresult=3Ddenied=20
> oldcontext=3Dsystem_u:object_r:tmpfs_t:s15:c0.c1023=20
> newcontext=3Dsystem_u:object_r:var_run_t:s0-s15:c0.c1023=20
> taskcontext=3Dsystem_u:system_r:kernel_t:s15:c0r
> [ =C2=A0=C2=A0=C2=A02.719230] audit: type=3D1401 audit(1600598638.076:8)=
:=20
> op=3Dsecurity_validate_transition seresult=3Ddenied=20
> oldcontext=3Dsystem_u:object_r:tmpfs_t:s15:c0.c1023=20
> newcontext=3Dsystem_u:object_r:cgroup_t:s0=20
> taskcontext=3Dsystem_u:system_r:kernel_t:s15:c0.c1023 tclass=3Dr
> [ =C2=A0=C2=A0=C2=A02.741846] audit: type=3D1400 audit(1600598638.108:9)=
: avc: =C2=A0denied=20
> =C2=A0{ create } for =C2=A0pid=3D1 comm=3D"systemd" name=3D"bpf"=20
> scontext=3Dsystem_u:system_r:kernel_t:s15:c0.c1023=20
> tcontext=3Dsystem_u:object_r:sysfs_t:s0 tclass=3Ddir permissive=3D0
> [!!!!!!] Failed to mount API filesystems.
> [ =C2=A0=C2=A0=C2=A02.780814] systemd[1]: Freezing execution.
>
>
>=20
>

--------------8AE3AE8F4DD3BBDC4DA6B41F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 5/14/21 9:40 AM, Brian Hutchinson
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:CAFZh4h9LFAduG7dAS8=3D5stVuE2x3R=
WcVz3zy5rTmPPshEY+AiA@mail.gmail.com">
      
      <div dir=3D"ltr">
        <div>Hi,</div>
        <div><br>
        </div>
        <div>Pretty new to selinux.&nbsp; I've worked through a lot of iss=
ues
          to get this far but am stumped at the moment so any pointers,
          clues are appreciated.</div>
        <div><br>
        </div>
        <div>I'm trying to add selinux to my custom image.&nbsp; After
          running into problems, I decided it was best to start with
          building core-image-selinux for my NXP imx8mm-evk board as a
          reference for getting my custom image to work.</div>
        <div><br>
        </div>
        <div>I'm using fscl-community-bsp meta-freescale Dunfell release
          which is building a 5.4.114 kernel. <br>
        </div>
        <div><br>
        </div>
        <div>My first issues were getting kernel config options right
          (.config attached).&nbsp; I kept booting my rootfs and sestatus
          would result in selinux not being enabled.</div>
        <div><br>
        </div>
        <div>After getting kernel config somewhat worked out, then I
          started getting either boot loops or locked out.<br>
        </div>
        <div><br>
        </div>
        <div>I'll stay focused on my core-image-selinux image as
          hopefully if I can get it working it will help me get my
          custom image working too.</div>
        <div><br>
        </div>
        <div>Here is my last iteration of my local.conf that results in
          me not being able to log in.&nbsp; With core-image-selinux image=
,
          it freezes before it gets to login prompt.&nbsp; On my custom
          image, I get log in prompt but when I try to log in a root I
          get audit messages and dropped back to login prompt.</div>
        <div><br>
        </div>
        <div>local.conf for core-image-selinux:</div>
        <div><br>
        </div>
        <div><span style=3D"font-family:monospace"><span style=3D"font-fam=
ily:monospace"><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255=
,255)">MACHINE
                ??=3D 'imx8mmevk'
              </span><br>
              DISTRO ?=3D 'poky'
              <br>
              PACKAGE_CLASSES ?=3D 'package_rpm'
              <br>
              EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks&quot;
              <br>
              DISTRO_FEATURES_remove =3D &quot; sysvinit&quot;
              <br>
              DISTRO_FEATURES_append +=3D &quot; acl xattr pam selinux sys=
temd&quot;
              <br>
              VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;
              <br>
              DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;&quot;
              <br>
              PREFERRED_PROVIDER_virtual/refpolicy ?=3D &quot;refpolicy-ml=
s&quot;
              <br>
            </span></span></div>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>You can try refpolicy-mcs or refpolicy-targeted. The mls policy
      doesn't work for systemed on dunfell.<br>
      <br>
    </p>
    <p>//Yi<br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:CAFZh4h9LFAduG7dAS8=3D5stVuE2x3R=
WcVz3zy5rTmPPshEY+AiA@mail.gmail.com">
      <div dir=3D"ltr">
        <div><span style=3D"font-family:monospace"><span style=3D"font-fam=
ily:monospace">USER_CLASSES ?=3D &quot;buildstats
              image-mklibs image-prelink&quot;
              <br>
              IMAGE_FSTYPES +=3D &quot; tar.bz2 ext4 wic.bz2 wic.bmap&quot=
;
              <br>
              PATCHRESOLVE =3D &quot;noop&quot;
              <br>
              BB_DISKMON_DIRS ??=3D &quot;\
              <br>
              &nbsp;&nbsp;&nbsp;STOPTASKS,${TMPDIR},1G,100K \
              <br>
              &nbsp;&nbsp;&nbsp;STOPTASKS,${DL_DIR},1G,100K \
              <br>
              &nbsp;&nbsp;&nbsp;STOPTASKS,${SSTATE_DIR},1G,100K \
              <br>
              &nbsp;&nbsp;&nbsp;STOPTASKS,/tmp,100M,100K \
              <br>
              &nbsp;&nbsp;&nbsp;ABORT,${TMPDIR},100M,1K \
              <br>
              &nbsp;&nbsp;&nbsp;ABORT,${DL_DIR},100M,1K \
              <br>
              &nbsp;&nbsp;&nbsp;ABORT,${SSTATE_DIR},100M,1K \
              <br>
              &nbsp;&nbsp;&nbsp;ABORT,/tmp,10M,1K&quot;
              <br>
              PACKAGECONFIG_append_pn-qemu-system-native =3D &quot; sdl&qu=
ot;
              <br>
              CONF_VERSION =3D &quot;1&quot;
              <br>
              <br>
              DL_DIR ?=3D &quot;${BSPDIR}/downloads/&quot;
              <br>
              ACCEPT_FSL_EULA =3D &quot;1&quot;<br>
            </span></span></div>
        <div><span style=3D"font-family:monospace"><br>
          </span></div>
        <div><span style=3D"font-family:monospace">At first I did not have
            DISTRO_FEATURES_remove =3D &quot; sysvinit&quot; or any system=
d
            settings.&nbsp; This is when I started getting boot loops as
            described here:</span></div>
        <div><span style=3D"font-family:monospace"><a href=3D"https://patc=
hwork.openembedded.org/patch/164274/" moz-do-not-send=3D"true">https://patc=
hwork.openembedded.org/patch/164274/</a></span></div>
        <div><span style=3D"font-family:monospace"><br>
          </span></div>
        <div><span style=3D"font-family:monospace">The board would boot
            and I'd get tons of these &quot;</span>/sbin/restorecon: Could
          not set context for &quot; bla, bla, bla &quot;Read-only file sy=
stem<span style=3D"font-family:monospace"></span>&quot; messages ... but th=
en
          I'd get a login prompt and I'd be able to log in as root and
          run sestatus:<br>
        </div>
        <div><span style=3D"font-family:monospace"><br>
          </span></div>
        <div><span style=3D"font-family:monospace"><span style=3D"font-fam=
ily:monospace">Poky (Yocto Project
              Reference Distro) 3.1.7 imx8mmevk ttymxc1
              <br>
              <br>
              imx8mmevk login: root
              <br>
              root@imx8mmevk:~# sestatus
              <br>
              SELinux status: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;enabled
              <br>
              SELinuxfs mount: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/sys/fs/selinux
              <br>
              SELinux root directory: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;/etc/selinux
              <br>
              Loaded policy name: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mcs
              <br>
              Current mode: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;permissive
              <br>
              Mode from config file: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;enforcing
              <br>
              Policy MLS status: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;enabled
              <br>
              Policy deny_unknown status: &nbsp;&nbsp;&nbsp;&nbsp;allowed
              <br>
              Memory protection checking: &nbsp;&nbsp;&nbsp;&nbsp;requeste=
d (insecure)
              <br>
              Max kernel policy version: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;31
            </span></span></div>
        <div><br>
        </div>
        <div>This is when I paid more attention to the meta-selinux
          README <a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/met=
a-selinux/tree/README" moz-do-not-send=3D"true">https://git.yoctoproject.or=
g/cgit/cgit.cgi/meta-selinux/tree/README</a>
          <br>
        </div>
        <div><br>
        </div>
        <div>... and added the DISTRO_FEATURES_remove =3D &quot; sysvinit&=
quot; and
          other systemd commands to my local.conf above since the &quot;bo=
ot
          loop&quot; link above talked about issues with sysvinit etc.<br>
        </div>
        <div><br>
        </div>
        <div>This left me with a boot that looks like this for my
          core-image-selinux build ... which locks up:</div>
        <div><br>
        </div>
        <div><span style=3D"font-family:monospace">
            <div>
              <div class=3D"gmail-im">[ &nbsp;&nbsp;&nbsp;0.000000] Dentry=
 cache hash
                table entries: 262144 (order: 9, 2097152 bytes, linear)
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] Inode-cache hash table entri=
es: 131072
                (order: 8, 1048576 bytes, linear)
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] mem auto-init: stack:off, he=
ap alloc:off,
                heap free:off
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] Memory: 1336216K/2064384K av=
ailable
                (16508K kernel code, 1234K rwdata, 6480K rodata, 2880K
                init, 1038K bss, 72808K reserved, 655360K cma-reserved)
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] SLUB: HWalign=3D64, Order=3D=
0-3,
                MinObjects=3D0, CPUs=3D4, Nodes=3D1
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] rcu: Preemptible hierarchica=
l RCU
                implementation.
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] rcu: &nbsp;&nbsp;&nbsp;&nbsp=
;RCU restricting CPUs from
                NR_CPUS=3D256 to nr_cpu_ids=3D4.
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] &nbsp;Tasks RCU enabled.
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] rcu: RCU calculated value of
                scheduler-enlistment delay is 25 jiffies.
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] rcu: Adjusting geometry for
                rcu_fanout_leaf=3D16, nr_cpu_ids=3D4
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] NR_IRQS: 64, nr_irqs: 64, pr=
eallocated
                irqs: 0
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] GICv3: GIC: Using split EOI/=
Deactivate
                mode
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] GICv3: 128 SPIs implemented
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] GICv3: 0 Extended SPIs imple=
mented
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] GICv3: Distributor has no Ra=
nge Selector
                support
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] GICv3: 16 PPIs implemented
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] GICv3: no VLPI support, no d=
irect LPI
                support
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] GICv3: CPU0: found redistrib=
utor 0 region
                0:0x0000000038880000
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] ITS: No ITS available, not e=
nabling LPIs
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] random: get_random_bytes cal=
led from
                start_kernel+0x2b8/0x43c with crng_init=3D0
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] arch_timer: cp15 timer(s) ru=
nning at
                8.00MHz (phys).
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000000] clocksource: arch_sys_counte=
r: mask:
                0xffffffffffffff max_cycles: 0x1d854df40, max_idle_ns:
                440795202120 ns
                <br>
                [ &nbsp;&nbsp;&nbsp;0.000003] sched_clock: 56 bits at 8MHz=
, resolution
                125ns, wraps every 2199023255500ns
                <br>
                [ &nbsp;&nbsp;&nbsp;0.008459] Console: colour dummy device=
 80x25
                <br>
              </div>
            </div>
            <span class=3D"gmail-im">[ &nbsp;&nbsp;&nbsp;0.012580] Calibra=
ting delay loop
              (skipped), value calculated using timer frequency.. 16.00
              BogoMIPS (lpj=3D32000)
              <br>
            </span>[ &nbsp;&nbsp;&nbsp;0.022844] pid_max: default: 32768 m=
inimum: 301
            <br>
            <span class=3D"gmail-im">[ &nbsp;&nbsp;&nbsp;0.027543] LSM: Se=
curity
              Framework initializing
              <br>
              [ &nbsp;&nbsp;&nbsp;0.032140] SELinux: &nbsp;Initializing.
              <br>
              [ &nbsp;&nbsp;&nbsp;0.035681] Mount-cache hash table entries=
: 4096
              (order: 3, 32768 bytes, linear)
              <br>
            </span>[ &nbsp;&nbsp;&nbsp;0.043062] Mountpoint-cache hash tab=
le entries:
            4096 (order: 3, 32768 bytes, linear)
            <br>
            [ &nbsp;&nbsp;&nbsp;0.052070] ASID allocator initialised with =
32768 entries
            <br>
            <span class=3D"gmail-im">[ &nbsp;&nbsp;&nbsp;0.056440] rcu: Hi=
erarchical SRCU
              implementation.
              <br>
            </span>[ &nbsp;&nbsp;&nbsp;0.062118] EFI services will not be =
available.
            <br>
            [ &nbsp;&nbsp;&nbsp;0.065893] smp: Bringing up secondary CPUs =
...
            <br>
            [ &nbsp;&nbsp;&nbsp;0.070649] Detected VIPT I-cache on CPU1
            <br>
            <span class=3D"gmail-im">[ &nbsp;&nbsp;&nbsp;0.070672] GICv3: =
CPU1: found
              redistributor 1 region 0:0x00000000388a0000
              <br>
              [ &nbsp;&nbsp;&nbsp;0.070703] CPU1: Booted secondary process=
or
              0x0000000001 [0x410fd034]
              <br>
            </span>[ &nbsp;&nbsp;&nbsp;0.071102] Detected VIPT I-cache on =
CPU2
            <br>
            [ &nbsp;&nbsp;&nbsp;0.071119] GICv3: CPU2: found redistributor=
 2 region
            0:0x00000000388c0000
            <br>
            [ &nbsp;&nbsp;&nbsp;0.071137] CPU2: Booted secondary processor=
 0x0000000002
            [0x410fd034]
            <br>
            [ &nbsp;&nbsp;&nbsp;0.071503] Detected VIPT I-cache on CPU3
            <br>
            [ &nbsp;&nbsp;&nbsp;0.071518] GICv3: CPU3: found redistributor=
 3 region
            0:0x00000000388e0000
            <br>
            [ &nbsp;&nbsp;&nbsp;0.071533] CPU3: Booted secondary processor=
 0x0000000003
            [0x410fd034]
            <br>
            [ &nbsp;&nbsp;&nbsp;0.071584] smp: Brought up 1 node, 4 CPUs
            <br>
            [ &nbsp;&nbsp;&nbsp;0.126889] SMP: Total of 4 processors activ=
ated.
            <br>
            [ &nbsp;&nbsp;&nbsp;0.131608] CPU features: detected: 32-bit E=
L0 Support
            <br>
            <span class=3D"gmail-im">[ &nbsp;&nbsp;&nbsp;0.136780] CPU fea=
tures:
              detected: CRC32 instructions
              <br>
            </span>[ &nbsp;&nbsp;&nbsp;0.148803] CPU: All CPU(s) started a=
t EL2
            <br>
            [ &nbsp;&nbsp;&nbsp;0.150075] alternatives: patching kernel co=
de
            <br>
            [ &nbsp;&nbsp;&nbsp;0.155994] devtmpfs: initialized
            <br>
            [ &nbsp;&nbsp;&nbsp;0.163617] clocksource: jiffies: mask: 0xff=
ffffff
            max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
            <br>
            [ &nbsp;&nbsp;&nbsp;0.170570] futex hash table entries: 1024 (=
order: 4,
            65536 bytes, linear)
            <br>
            [ &nbsp;&nbsp;&nbsp;0.194282] pinctrl core: initialized pinctr=
l subsystem
            <br>
            [ &nbsp;&nbsp;&nbsp;0.197368] DMI not present or invalid.
            <br>
            [ &nbsp;&nbsp;&nbsp;0.200798] NET: Registered protocol family =
16
            <br>
            [ &nbsp;&nbsp;&nbsp;0.212024] DMA: preallocated 256 KiB pool f=
or atomic
            allocations
            <br>
            [ &nbsp;&nbsp;&nbsp;0.215321] audit: initializing netlink subs=
ys (disabled)
            <br>
            [ &nbsp;&nbsp;&nbsp;0.220974] audit: type=3D2000 audit(0.160:1=
):
            state=3Dinitialized audit_enabled=3D0 res=3D1
            <br>
            [ &nbsp;&nbsp;&nbsp;0.228526] cpuidle: using governor menu
            <br>
            [ &nbsp;&nbsp;&nbsp;0.232929] hw-breakpoint: found 6 breakpoin=
t and 4
            watchpoint registers.
            <br>
            [ &nbsp;&nbsp;&nbsp;0.240041] Serial: AMBA PL011 UART driver
            <br>
            [ &nbsp;&nbsp;&nbsp;0.243431] imx mu driver is registered.
            <br>
            [ &nbsp;&nbsp;&nbsp;0.247320] imx rpmsg driver is registered.
            <br>
            [ &nbsp;&nbsp;&nbsp;0.256460] imx8mm-pinctrl 30330000.pinctrl:=
 initialized
            IMX pinctrl driver
            <br>
            [ &nbsp;&nbsp;&nbsp;0.277607] HugeTLB registered 1.00 GiB page=
 size,
            pre-allocated 0 pages
            <br>
            [ &nbsp;&nbsp;&nbsp;0.281501] HugeTLB registered 32.0 MiB page=
 size,
            pre-allocated 0 pages
            <br>
            [ &nbsp;&nbsp;&nbsp;0.288221] HugeTLB registered 2.00 MiB page=
 size,
            pre-allocated 0 pages
            <br>
            [ &nbsp;&nbsp;&nbsp;0.294958] HugeTLB registered 64.0 KiB page=
 size,
            pre-allocated 0 pages
            <br>
            [ &nbsp;&nbsp;&nbsp;0.302578] cryptd: max_cpu_qlen set to 1000
            <br>
            [ &nbsp;&nbsp;&nbsp;0.308925] ACPI: Interpreter disabled.
            <br>
            [ &nbsp;&nbsp;&nbsp;0.310647] iommu: Default domain type: Tran=
slated &nbsp;<br>
            [ &nbsp;&nbsp;&nbsp;0.314984] vgaarb: loaded
            <br>
            [ &nbsp;&nbsp;&nbsp;0.317796] SCSI subsystem initialized
            <br>
            [ &nbsp;&nbsp;&nbsp;0.321638] usbcore: registered new interfac=
e driver
            usbfs
            <br>
            [ &nbsp;&nbsp;&nbsp;0.326821] usbcore: registered new interfac=
e driver hub
            <br>
            [ &nbsp;&nbsp;&nbsp;0.332166] usbcore: registered new device d=
river usb
            <br>
            [ &nbsp;&nbsp;&nbsp;0.338386] mc: Linux media interface: v0.10
            <br>
            [ &nbsp;&nbsp;&nbsp;0.341521] videodev: Linux video capture in=
terface:
            v2.00
            <br>
            [ &nbsp;&nbsp;&nbsp;0.347069] pps_core: LinuxPPS API ver. 1 re=
gistered
            <br>
            [ &nbsp;&nbsp;&nbsp;0.351999] pps_core: Software ver. 5.3.6 - =
Copyright
            2005-2007 Rodolfo Giometti &lt;<a href=3D"mailto:giometti@linu=
x.it" target=3D"_blank" moz-do-not-send=3D"true">giometti@linux.it</a>&gt;
            <br>
            [ &nbsp;&nbsp;&nbsp;0.361194] PTP clock support registered
            <br>
            [ &nbsp;&nbsp;&nbsp;0.365250] EDAC MC: Ver: 3.0.0
            <br>
            [ &nbsp;&nbsp;&nbsp;0.369031] No BMan portals available!
            <br>
            [ &nbsp;&nbsp;&nbsp;0.372241] QMan: Allocated lookup table at
            (____ptrval____), entry count 65537
            <br>
            [ &nbsp;&nbsp;&nbsp;0.379650] No QMan portals available!
            <br>
            [ &nbsp;&nbsp;&nbsp;0.383528] No USDPAA memory, no 'fsl,usdpaa=
-mem' in
            device-tree
            <br>
            [ &nbsp;&nbsp;&nbsp;0.389580] FPGA manager framework
            <br>
            [ &nbsp;&nbsp;&nbsp;0.392665] Advanced Linux Sound Architectur=
e Driver
            Initialized.
            <br>
            [ &nbsp;&nbsp;&nbsp;0.399103] Bluetooth: Core ver 2.22
            <br>
            [ &nbsp;&nbsp;&nbsp;0.402325] NET: Registered protocol family =
31
            <br>
            [ &nbsp;&nbsp;&nbsp;0.406776] Bluetooth: HCI device and connec=
tion manager
            initialized
            <br>
            [ &nbsp;&nbsp;&nbsp;0.413165] Bluetooth: HCI socket layer init=
ialized
            <br>
            [ &nbsp;&nbsp;&nbsp;0.418063] Bluetooth: L2CAP socket layer in=
itialized
            <br>
            [ &nbsp;&nbsp;&nbsp;0.423145] Bluetooth: SCO socket layer init=
ialized
            <br>
            [ &nbsp;&nbsp;&nbsp;0.428729] clocksource: Switched to clockso=
urce
            arch_sys_counter
            <br>
            [ &nbsp;&nbsp;&nbsp;0.434318] VFS: Disk quotas dquot_6.6.0
            <br>
            [ &nbsp;&nbsp;&nbsp;0.438147] VFS: Dquot-cache hash table entr=
ies: 512
            (order 0, 4096 bytes)
            <br>
            [ &nbsp;&nbsp;&nbsp;0.445173] pnp: PnP ACPI: disabled
            <br>
            [ &nbsp;&nbsp;&nbsp;0.454071] thermal_sys: Registered thermal =
governor
            'step_wise'
            <br>
            [ &nbsp;&nbsp;&nbsp;0.454075] thermal_sys: Registered thermal =
governor
            'power_allocator'
            <br>
            [ &nbsp;&nbsp;&nbsp;0.457567] NET: Registered protocol family =
2
            <br>
            [ &nbsp;&nbsp;&nbsp;0.468500] tcp_listen_portaddr_hash hash ta=
ble entries:
            1024 (order: 2, 16384 bytes, linear)
            <br>
            [ &nbsp;&nbsp;&nbsp;0.476800] TCP established hash table entri=
es: 16384
            (order: 5, 131072 bytes, linear)
            <br>
            [ &nbsp;&nbsp;&nbsp;0.484830] TCP bind hash table entries: 163=
84 (order: 6,
            262144 bytes, linear)
            <br>
            [ &nbsp;&nbsp;&nbsp;0.492297] TCP: Hash tables configured (est=
ablished
            16384 bind 16384)
            <br>
            [ &nbsp;&nbsp;&nbsp;0.498720] UDP hash table entries: 1024 (or=
der: 3, 32768
            bytes, linear)
            <br>
            [ &nbsp;&nbsp;&nbsp;0.505415] UDP-Lite hash table entries: 102=
4 (order: 3,
            32768 bytes, linear)
            <br>
            [ &nbsp;&nbsp;&nbsp;0.512695] NET: Registered protocol family =
1
            <br>
            [ &nbsp;&nbsp;&nbsp;0.517249] RPC: Registered named UNIX socke=
t transport
            module.
            <br>
            [ &nbsp;&nbsp;&nbsp;0.522882] RPC: Registered udp transport mo=
dule.
            <br>
            [ &nbsp;&nbsp;&nbsp;0.527598] RPC: Registered tcp transport mo=
dule.
            <br>
            [ &nbsp;&nbsp;&nbsp;0.532323] RPC: Registered tcp NFSv4.1 back=
channel
            transport module.
            <br>
            [ &nbsp;&nbsp;&nbsp;0.539172] PCI: CLS 0 bytes, default 64
            <br>
            [ &nbsp;&nbsp;&nbsp;0.543460] hw perfevents: enabled with armv=
8_pmuv3 PMU
            driver, 7 counters available
            <br>
            [ &nbsp;&nbsp;&nbsp;0.550860] kvm [1]: IPA Size Limit: 40 bits
            <br>
            <span class=3D"gmail-im">[ &nbsp;&nbsp;&nbsp;0.555419] kvm [1]=
: GICv3: no
              GICV resource entry
              <br>
            </span>[ &nbsp;&nbsp;&nbsp;0.559628] kvm [1]: disabling GICv2 =
emulation
            <br>
            [ &nbsp;&nbsp;&nbsp;0.564099] kvm [1]: GIC system register CPU=
 interface
            enabled
            <br>
            [ &nbsp;&nbsp;&nbsp;0.570004] kvm [1]: vgic interrupt IRQ1
            <br>
            [ &nbsp;&nbsp;&nbsp;0.573975] kvm [1]: Hyp mode initialized su=
ccessfully
            <br>
            [ &nbsp;&nbsp;&nbsp;0.581824] Initialise system trusted keyrin=
gs
            <br>
            [ &nbsp;&nbsp;&nbsp;0.583614] workingset: timestamp_bits=3D44 =
max_order=3D19
            bucket_order=3D0
            <br>
            [ &nbsp;&nbsp;&nbsp;0.595759] squashfs: version 4.0 (2009/01/3=
1) Phillip
            Lougher
            <br>
            [ &nbsp;&nbsp;&nbsp;0.599368] NFS: Registering the id_resolver=
 key type
            <br>
            [ &nbsp;&nbsp;&nbsp;0.603857] Key type id_resolver registered
            <br>
            [ &nbsp;&nbsp;&nbsp;0.608041] Key type id_legacy registered
            <br>
            [ &nbsp;&nbsp;&nbsp;0.612067] nfs4filelayout_init: NFSv4 File =
Layout Driver
            Registering...
            <br>
            <span class=3D"gmail-im">[ &nbsp;&nbsp;&nbsp;0.618796]
              nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver
              Registering...
              <br>
              [ &nbsp;&nbsp;&nbsp;0.626246] jffs2: version 2.2. (NAND) =EF=
=
=BF=BD=C2=A9 2001-2006 Red
              Hat, Inc.
              <br>
            </span>[ &nbsp;&nbsp;&nbsp;0.632759] 9p: Installing v9fs 9p200=
0 file system
            support
            <br>
            [ &nbsp;&nbsp;&nbsp;0.650797] Key type asymmetric registered
            <br>
            [ &nbsp;&nbsp;&nbsp;0.652038] Asymmetric key parser 'x509' reg=
istered
            <br>
            [ &nbsp;&nbsp;&nbsp;0.656972] Block layer SCSI generic (bsg) d=
river version
            0.4 loaded (major 244)
            <br>
            [ &nbsp;&nbsp;&nbsp;0.664383] io scheduler mq-deadline registe=
red
            <br>
            [ &nbsp;&nbsp;&nbsp;0.668932] io scheduler kyber registered
            <br>
            [ &nbsp;&nbsp;&nbsp;0.677135] EINJ: ACPI disabled.
            <br>
            [ &nbsp;&nbsp;&nbsp;0.685891] imx-sdma 302c0000.dma-controller=
: Direct
            firmware load for imx/sdma/sdma-imx7d.bin failed with error
            -2
            <br>
            [ &nbsp;&nbsp;&nbsp;0.693543] imx-sdma 302c0000.dma-controller=
: Falling
            back to sysfs fallback for: imx/sdma/sdma-imx7d.bin
            <br>
            [ &nbsp;&nbsp;&nbsp;0.710746] mxs-dma 33000000.dma-controller:=
 initialized
            <br>
            [ &nbsp;&nbsp;&nbsp;0.714250] Bus freq driver module loaded
            <br>
            [ &nbsp;&nbsp;&nbsp;0.722266] Serial: 8250/16550 driver, 4 por=
ts, IRQ
            sharing enabled
            <br>
            [ &nbsp;&nbsp;&nbsp;0.727674] 30890000.serial: ttymxc1 at MMIO=
 0x30890000
            (irq =3D 34, base_baud =3D 1500000) is a IMX
            <br>
            [ &nbsp;&nbsp;&nbsp;0.734595] printk: console [ttymxc1] enable=
d
            <br>
            [ &nbsp;&nbsp;&nbsp;0.734595] printk: console [ttymxc1] enable=
d
            <br>
            [ &nbsp;&nbsp;&nbsp;0.743235] printk: bootconsole [ec_imx6q0] =
disabled
            <br>
            [ &nbsp;&nbsp;&nbsp;0.743235] printk: bootconsole [ec_imx6q0] =
disabled
            <br>
            [ &nbsp;&nbsp;&nbsp;0.755182] imx-drm soc@0:bus@32c00000:displ=
ay-subsystem:
            no available port
            <br>
            [ &nbsp;&nbsp;&nbsp;0.773488] loop: module loaded
            <br>
            [ &nbsp;&nbsp;&nbsp;0.778553] imx ahci driver is registered.
            <br>
            [ &nbsp;&nbsp;&nbsp;0.785346] spi_imx 30830000.spi: probed
            <br>
            [ &nbsp;&nbsp;&nbsp;0.790183] spi-nor spi3.0: n25q256ax1 (3276=
8 Kbytes)
            <br>
            [ &nbsp;&nbsp;&nbsp;0.795277] 7 fixed-partitions partitions fo=
und on MTD
            device 30bb0000.spi
            <br>
            [ &nbsp;&nbsp;&nbsp;0.802157] Creating 7 MTD partitions on &qu=
ot;30bb0000.spi&quot;:
            <br>
            [ &nbsp;&nbsp;&nbsp;0.807477] 0x000000000000-0x000000200000 : =
&quot;U-Boot&quot;
            <br>
            [ &nbsp;&nbsp;&nbsp;0.817371] 0x000000200000-0x000000202000 : =
&quot;U-Boot Env&quot;
            <br>
            [ &nbsp;&nbsp;&nbsp;0.822696] mtd: partition &quot;U-Boot Env&=
quot; doesn't end on an
            erase/write block -- force read-only
            <br>
            [ &nbsp;&nbsp;&nbsp;0.833323] 0x000000202000-0x000000204000 : =
&quot;U-Boot Env
            2&quot;
            <br>
            [ &nbsp;&nbsp;&nbsp;0.838819] mtd: partition &quot;U-Boot Env =
2&quot; doesn't start
            on an erase/write block boundary -- force read-only
            <br>
            [ &nbsp;&nbsp;&nbsp;0.853314] 0x000000204000-0x000000205000 : =
&quot;boot.scr&quot;
            <br>
            [ &nbsp;&nbsp;&nbsp;0.858463] mtd: partition &quot;boot.scr&qu=
ot; doesn't start on an
            erase/write block boundary -- force read-only
            <br>
            [ &nbsp;&nbsp;&nbsp;0.869306] 0x000000205000-0x000000210000 : =
&quot;Device Tree
            Blob&quot;
            <br>
            [ &nbsp;&nbsp;&nbsp;0.875150] mtd: partition &quot;Device Tree=
 Blob&quot; doesn't
            start on an erase/write block boundary -- force read-only
            <br>
            [ &nbsp;&nbsp;&nbsp;0.889320] 0x000000210000-0x000000e10000 : =
&quot;Compressed
            Kernel&quot;
            <br>
            [ &nbsp;&nbsp;&nbsp;0.897335] 0x000000e10000-0x000002000000 : =
&quot;SquashFS&quot;
            <br>
            [ &nbsp;&nbsp;&nbsp;0.906575] libphy: Fixed MDIO Bus: probed
            <br>
            [ &nbsp;&nbsp;&nbsp;0.911375] tun: Universal TUN/TAP device dr=
iver, 1.6
            <br>
            [ &nbsp;&nbsp;&nbsp;0.917133] thunder_xcv, ver 1.0
            <br>
            [ &nbsp;&nbsp;&nbsp;0.920386] thunder_bgx, ver 1.0
            <br>
            [ &nbsp;&nbsp;&nbsp;0.923649] nicpf, ver 1.0
            <br>
            [ &nbsp;&nbsp;&nbsp;0.927576] pps pps0: new PPS source ptp0
            <br>
            [ &nbsp;&nbsp;&nbsp;0.944110] libphy: fec_enet_mii_bus: probed
            <br>
            [ &nbsp;&nbsp;&nbsp;0.948923] fec 30be0000.ethernet eth0: regi=
stered PHC
            device 0
            <br>
            [ &nbsp;&nbsp;&nbsp;0.955395] Freescale FM module, FMD API ver=
sion 21.1.0
            <br>
            [ &nbsp;&nbsp;&nbsp;0.960856] Freescale FM Ports module
            <br>
            [ &nbsp;&nbsp;&nbsp;0.964517] fsl_mac: fsl_mac: FSL FMan MAC A=
PI based
            driver
            <br>
            [ &nbsp;&nbsp;&nbsp;0.970260] fsl_dpa: FSL DPAA Ethernet drive=
r
            <br>
            [ &nbsp;&nbsp;&nbsp;0.974714] fsl_advanced: FSL DPAA Advanced =
drivers:
            <br>
            [ &nbsp;&nbsp;&nbsp;0.979684] fsl_proxy: FSL DPAA Proxy initia=
lization
            driver
            <br>
            [ &nbsp;&nbsp;&nbsp;0.985344] fsl_oh: FSL FMan Offline Parsing=
 port driver
            <br>
            [ &nbsp;&nbsp;&nbsp;0.991426] hclge is initializing
            <br>
            [ &nbsp;&nbsp;&nbsp;0.994751] hns3: Hisilicon Ethernet Network=
 Driver for
            Hip08 Family - version
            <br>
            [ &nbsp;&nbsp;&nbsp;1.001977] hns3: Copyright (c) 2017 Huawei =
Corporation.
            <br>
            [ &nbsp;&nbsp;&nbsp;1.007347] e1000: Intel(R) PRO/1000 Network=
 Driver -
            version 7.3.21-k8-NAPI
            <br>
            [ &nbsp;&nbsp;&nbsp;1.014400] e1000: Copyright (c) 1999-2006 I=
ntel
            Corporation.
            <br>
            [ &nbsp;&nbsp;&nbsp;1.020176] e1000e: Intel(R) PRO/1000 Networ=
k Driver -
            3.2.6-k
            <br>
            [ &nbsp;&nbsp;&nbsp;1.026012] e1000e: Copyright(c) 1999 - 2015=
 Intel
            Corporation.
            <br>
            [ &nbsp;&nbsp;&nbsp;1.031967] igb: Intel(R) Gigabit Ethernet N=
etwork Driver
            - version 5.6.0-k
            <br>
            [ &nbsp;&nbsp;&nbsp;1.038938] igb: Copyright (c) 2007-2014 Int=
el
            Corporation.
            <br>
            [ &nbsp;&nbsp;&nbsp;1.044545] igbvf: Intel(R) Gigabit Virtual =
Function
            Network Driver - version 2.4.0-k
            <br>
            [ &nbsp;&nbsp;&nbsp;1.052378] igbvf: Copyright (c) 2009 - 2012=
 Intel
            Corporation.
            <br>
            [ &nbsp;&nbsp;&nbsp;1.058433] sky2: driver version 1.30
            <br>
            [ &nbsp;&nbsp;&nbsp;1.062933] VFIO - User Level meta-driver ve=
rsion: 0.3
            <br>
            [ &nbsp;&nbsp;&nbsp;1.069701] ehci_hcd: USB 2.0 'Enhanced' Hos=
t Controller
            (EHCI) Driver
            <br>
            [ &nbsp;&nbsp;&nbsp;1.076239] ehci-pci: EHCI PCI platform driv=
er
            <br>
            [ &nbsp;&nbsp;&nbsp;1.080767] ehci-platform: EHCI generic plat=
form driver
            <br>
            [ &nbsp;&nbsp;&nbsp;1.086146] ohci_hcd: USB 1.1 'Open' Host Co=
ntroller
            (OHCI) Driver
            <br>
            <span class=3D"gmail-im">[ &nbsp;&nbsp;&nbsp;1.092348] ohci-pc=
i: OHCI PCI
              platform driver
              <br>
              [ &nbsp;&nbsp;&nbsp;1.096826] ohci-platform: OHCI generic pl=
atform driver
              <br>
            </span>[ &nbsp;&nbsp;&nbsp;1.102542] usbcore: registered new i=
nterface
            driver usb-storage
            <br>
            [ &nbsp;&nbsp;&nbsp;1.108613] usbcore: registered new interfac=
e driver
            usbserial_generic
            <br>
            [ &nbsp;&nbsp;&nbsp;1.115159] usbserial: USB Serial support re=
gistered for
            generic
            <br>
            [ &nbsp;&nbsp;&nbsp;1.121191] usbcore: registered new interfac=
e driver
            ftdi_sio
            <br>
            [ &nbsp;&nbsp;&nbsp;1.126952] usbserial: USB Serial support re=
gistered for
            FTDI USB Serial Device
            <br>
            [ &nbsp;&nbsp;&nbsp;1.134291] usbcore: registered new interfac=
e driver
            usb_serial_simple
            <br>
            [ &nbsp;&nbsp;&nbsp;1.140836] usbserial: USB Serial support re=
gistered for
            carelink
            <br>
            [ &nbsp;&nbsp;&nbsp;1.146944] usbserial: USB Serial support re=
gistered for
            zio
            <br>
            [ &nbsp;&nbsp;&nbsp;1.152619] usbserial: USB Serial support re=
gistered for
            funsoft
            <br>
            [ &nbsp;&nbsp;&nbsp;1.158641] usbserial: USB Serial support re=
gistered for
            flashloader
            <br>
            [ &nbsp;&nbsp;&nbsp;1.165010] usbserial: USB Serial support re=
gistered for
            google
            <br>
            [ &nbsp;&nbsp;&nbsp;1.170946] usbserial: USB Serial support re=
gistered for
            libtransistor
            <br>
            [ &nbsp;&nbsp;&nbsp;1.177489] usbserial: USB Serial support re=
gistered for
            vivopay
            <br>
            [ &nbsp;&nbsp;&nbsp;1.183513] usbserial: USB Serial support re=
gistered for
            moto_modem
            <br>
            [ &nbsp;&nbsp;&nbsp;1.189801] usbserial: USB Serial support re=
gistered for
            motorola_tetra
            <br>
            [ &nbsp;&nbsp;&nbsp;1.196438] usbserial: USB Serial support re=
gistered for
            novatel_gps
            <br>
            [ &nbsp;&nbsp;&nbsp;1.202809] usbserial: USB Serial support re=
gistered for
            hp4x
            <br>
            [ &nbsp;&nbsp;&nbsp;1.208572] usbserial: USB Serial support re=
gistered for
            suunto
            <br>
            [ &nbsp;&nbsp;&nbsp;1.214508] usbserial: USB Serial support re=
gistered for
            siemens_mpi
            <br>
            [ &nbsp;&nbsp;&nbsp;1.223211] input: 30370000.snvs:snvs-powerk=
ey as
/devices/platform/soc@0/soc@0:bus@30000000/30370000.snvs/30370000.snvs:snv=
s-powerkey/input/input0<br>
            [ &nbsp;&nbsp;&nbsp;1.238238] snvs_rtc 30370000.snvs:snvs-rtc-=
lp:
            registered as rtc0
            <br>
            [ &nbsp;&nbsp;&nbsp;1.244505] i2c /dev entries driver
            <br>
            [ &nbsp;&nbsp;&nbsp;1.252447] imx2-wdt 30280000.watchdog: time=
out 60 sec
            (nowayout=3D0)
            <br>
            [ &nbsp;&nbsp;&nbsp;1.258987] Bluetooth: HCI UART driver ver 2=
.3
            <br>
            [ &nbsp;&nbsp;&nbsp;1.263444] Bluetooth: HCI UART protocol H4 =
registered
            <br>
            [ &nbsp;&nbsp;&nbsp;1.268589] Bluetooth: HCI UART protocol BCS=
P registered
            <br>
            [ &nbsp;&nbsp;&nbsp;1.273925] Bluetooth: HCI UART protocol LL =
registered
            <br>
            [ &nbsp;&nbsp;&nbsp;1.279069] Bluetooth: HCI UART protocol ATH=
3K registered
            <br>
            [ &nbsp;&nbsp;&nbsp;1.284486] Bluetooth: HCI UART protocol Thr=
ee-wire (H5)
            registered
            <br>
            [ &nbsp;&nbsp;&nbsp;1.290836] Bluetooth: HCI UART protocol Bro=
adcom
            registered
            <br>
            [ &nbsp;&nbsp;&nbsp;1.296520] Bluetooth: HCI UART protocol QCA=
 registered
            <br>
            [ &nbsp;&nbsp;&nbsp;1.303494] sdhci: Secure Digital Host Contr=
oller
            Interface driver
            <br>
            [ &nbsp;&nbsp;&nbsp;1.309687] sdhci: Copyright(c) Pierre Ossma=
n
            <br>
            [ &nbsp;&nbsp;&nbsp;1.314212] Synopsys Designware Multimedia C=
ard Interface
            Driver
            <br>
            [ &nbsp;&nbsp;&nbsp;1.320736] sdhci-pltfm: SDHCI platform and =
OF driver
            helper
            <br>
            [ &nbsp;&nbsp;&nbsp;1.327135] mmc1: CQHCI version 5.10
            <br>
            [ &nbsp;&nbsp;&nbsp;1.331200] mmc2: CQHCI version 5.10
            <br>
            [ &nbsp;&nbsp;&nbsp;1.366866] mmc2: SDHCI controller on 30b600=
00.mmc
            [30b60000.mmc] using ADMA
            <br>
            [ &nbsp;&nbsp;&nbsp;1.376165] ledtrig-cpu: registered to indic=
ate activity
            on CPUs
            <br>
            [ &nbsp;&nbsp;&nbsp;1.383297] caam 30900000.crypto: device ID =
=
=3D
            0x0a16040100000000 (Era 9)
            <br>
            [ &nbsp;&nbsp;&nbsp;1.390069] caam 30900000.crypto: job rings =
=
=3D 3, qi =3D 0
            <br>
            [ &nbsp;&nbsp;&nbsp;1.404678] caam algorithms registered in /p=
roc/crypto
            <br>
            [ &nbsp;&nbsp;&nbsp;1.410556] caam 30900000.crypto: caam pkc a=
lgorithms
            registered in /proc/crypto
            <br>
            [ &nbsp;&nbsp;&nbsp;1.420079] caam_jr 30901000.jr: registering=
 rng-caam
            <br>
            [ &nbsp;&nbsp;&nbsp;1.429895] caam-snvs 30370000.caam-snvs: ca=
n't get snvs
            clock
            <br>
            [ &nbsp;&nbsp;&nbsp;1.435783] caam-snvs 30370000.caam-snvs: vi=
olation
            handlers armed - non-secure state
            <br>
            [ &nbsp;&nbsp;&nbsp;1.444200] usbcore: registered new interfac=
e driver
            usbhid
            <br>
            [ &nbsp;&nbsp;&nbsp;1.449780] usbhid: USB HID core driver
            <br>
            [ &nbsp;&nbsp;&nbsp;1.455330] No fsl,qman node
            <br>
            [ &nbsp;&nbsp;&nbsp;1.458228] Freescale USDPAA process driver
            <br>
            [ &nbsp;&nbsp;&nbsp;1.462416] fsl-usdpaa: no region found
            <br>
            [ &nbsp;&nbsp;&nbsp;1.466254] Freescale USDPAA process IRQ dri=
ver
            <br>
            [ &nbsp;&nbsp;&nbsp;1.474284] optee: probing for conduit metho=
d from DT.
            <br>
            [ &nbsp;&nbsp;&nbsp;1.479448] optee: revision 3.2 (6a22e6e8)
            <br>
            [ &nbsp;&nbsp;&nbsp;1.480265] optee: dynamic shared memory is =
enabled
            <br>
            [ &nbsp;&nbsp;&nbsp;1.489481] optee: initialized driver
            <br>
            [ &nbsp;&nbsp;&nbsp;1.495289] mmc2: Command Queue Engine enabl=
ed
            <br>
            [ &nbsp;&nbsp;&nbsp;1.496837] wm8524-codec audio-codec: Failed=
 to get mute
            line: -517
            <br>
            [ &nbsp;&nbsp;&nbsp;1.499792] mmc2: new HS400 Enhanced strobe =
MMC card at
            address 0001
            <br>
            [ &nbsp;&nbsp;&nbsp;1.506505] OF: /sound-bt-sco/simple-audio-c=
ard,cpu:
            could not get #sound-dai-cells for
            /soc@0/bus@30000000/sai@30020000
            <br>
            [ &nbsp;&nbsp;&nbsp;1.513508] mmcblk2: mmc2:0001 DG4016 7.49 G=
iB &nbsp;<br>
            [ &nbsp;&nbsp;&nbsp;1.523248] asoc-simple-card sound-bt-sco: p=
arse error
            -22
            <br>
            [ &nbsp;&nbsp;&nbsp;1.523265] asoc-simple-card: probe of sound=
-bt-sco
            failed with error -22
            <br>
            [ &nbsp;&nbsp;&nbsp;1.527908] mmcblk2boot0: mmc2:0001 DG4016 p=
artition 1
            4.00 MiB
            <br>
            [ &nbsp;&nbsp;&nbsp;1.546163] mmcblk2boot1: mmc2:0001 DG4016 p=
artition 2
            4.00 MiB
            <br>
            [ &nbsp;&nbsp;&nbsp;1.547285] pktgen: Packet Generator for pac=
ket
            performance testing. Version: 2.75
            <br>
            [ &nbsp;&nbsp;&nbsp;1.552232] mmcblk2gp0: mmc2:0001 DG4016 par=
tition 4 3.52
            GiB
            <br>
            [ &nbsp;&nbsp;&nbsp;1.565904] mmcblk2rpmb: mmc2:0001 DG4016 pa=
rtition 3
            4.00 MiB, chardev (237:0)
            <br>
            [ &nbsp;&nbsp;&nbsp;1.566798] NET: Registered protocol family =
26
            <br>
            [ &nbsp;&nbsp;&nbsp;1.578184] NET: Registered protocol family =
10
            <br>
            [ &nbsp;&nbsp;&nbsp;1.582998] &nbsp;mmcblk2: p1 p2
            <br>
            [ &nbsp;&nbsp;&nbsp;1.583960] Segment Routing with IPv6
            <br>
            [ &nbsp;&nbsp;&nbsp;1.589559] NET: Registered protocol family =
17
            <br>
            [ &nbsp;&nbsp;&nbsp;1.594201] &nbsp;mmcblk2gp0: p1 p2
            <br>
            [ &nbsp;&nbsp;&nbsp;1.594430] Bluetooth: RFCOMM TTY layer init=
ialized
            <br>
            [ &nbsp;&nbsp;&nbsp;1.602179] Bluetooth: RFCOMM socket layer i=
nitialized
            <br>
            [ &nbsp;&nbsp;&nbsp;1.607335] Bluetooth: RFCOMM ver 1.11
            <br>
            [ &nbsp;&nbsp;&nbsp;1.611099] Bluetooth: BNEP (Ethernet Emulat=
ion) ver 1.3
            <br>
            [ &nbsp;&nbsp;&nbsp;1.616414] Bluetooth: BNEP filters: protoco=
l multicast
            <br>
            [ &nbsp;&nbsp;&nbsp;1.621653] Bluetooth: BNEP socket layer ini=
tialized
            <br>
            [ &nbsp;&nbsp;&nbsp;1.626623] Bluetooth: HIDP (Human Interface=
 Emulation)
            ver 1.2
            <br>
            [ &nbsp;&nbsp;&nbsp;1.632549] Bluetooth: HIDP socket layer ini=
tialized
            <br>
            [ &nbsp;&nbsp;&nbsp;1.637554] 8021q: 802.1Q VLAN Support v1.8
            <br>
            [ &nbsp;&nbsp;&nbsp;1.641764] lib80211: common routines for IE=
EE802.11
            drivers
            <br>
            [ &nbsp;&nbsp;&nbsp;1.647544] 9pnet: Installing 9P2000 support
            <br>
            [ &nbsp;&nbsp;&nbsp;1.651845] tsn generic netlink module v1 in=
it...
            <br>
            [ &nbsp;&nbsp;&nbsp;1.656632] Key type dns_resolver registered
            <br>
            [ &nbsp;&nbsp;&nbsp;1.661668] registered taskstats version 1
            <br>
            [ &nbsp;&nbsp;&nbsp;1.665794] Loading compiled-in X.509 certif=
icates
            <br>
            [ &nbsp;&nbsp;&nbsp;1.692510] usb_phy_generic usbphynop1: usbp=
hynop1 supply
            vcc not found, using dummy regulator
            <br>
            [ &nbsp;&nbsp;&nbsp;1.701297] usb_phy_generic usbphynop2: usbp=
hynop2 supply
            vcc not found, using dummy regulator
            <br>
            [ &nbsp;&nbsp;&nbsp;1.733590] random: fast init done
            <br>
            [ &nbsp;&nbsp;&nbsp;1.738992] LDO6: supplied by regulator-dumm=
y
            <br>
            [ &nbsp;&nbsp;&nbsp;1.743499] i2c i2c-0: IMX I2C adapter regis=
tered
            <br>
            [ &nbsp;&nbsp;&nbsp;1.749209] i2c i2c-1: IMX I2C adapter regis=
tered
            <br>
            [ &nbsp;&nbsp;&nbsp;1.754765] i2c i2c-2: IMX I2C adapter regis=
tered
            <br>
            [ &nbsp;&nbsp;&nbsp;1.760259] i2c i2c-3: IMX I2C adapter regis=
tered
            <br>
            [ &nbsp;&nbsp;&nbsp;1.765281] imx-cpufreq-dt imx-cpufreq-dt: c=
pu speed
            grade 2 mkt segment 2 supported-hw 0x4 0x4
            <br>
            [ &nbsp;&nbsp;&nbsp;1.777862] mmc1: CQHCI version 5.10
            <br>
            [ &nbsp;&nbsp;&nbsp;1.781506] sdhci-esdhc-imx 30b50000.mmc: Go=
t CD GPIO
            <br>
            [ &nbsp;&nbsp;&nbsp;1.817451] mmc1: SDHCI controller on 30b500=
00.mmc
            [30b50000.mmc] using ADMA
            <br>
            [ &nbsp;&nbsp;&nbsp;1.826135] imx8mm-pinctrl 30330000.pinctrl:=
 pin
            MX8MM_IOMUXC_I2C4_SDA already requested by 30a50000.i2c;
            cannot claim for audio-codec
            <br>
            [ &nbsp;&nbsp;&nbsp;1.838253] imx8mm-pinctrl 30330000.pinctrl:=
 pin-140
            (audio-codec) status -22
            <br>
            [ &nbsp;&nbsp;&nbsp;1.845397] imx8mm-pinctrl 30330000.pinctrl:=
 could not
            request pin 140 (MX8MM_IOMUXC_I2C4_SDA) from group
            gpiowlfgrp &nbsp;on device 30330000.pinctrl
            <br>
            [ &nbsp;&nbsp;&nbsp;1.858357] wm8524-codec audio-codec: Error =
applying
            setting, reverse things back
            <br>
            [ &nbsp;&nbsp;&nbsp;1.865856] wm8524-codec: probe of audio-cod=
ec failed
            with error -22
            <br>
            [ &nbsp;&nbsp;&nbsp;1.876549] input: bd718xx-pwrkey as
/devices/platform/soc@0/soc@0:bus@30800000/30a20000.i2c/i2c-0/0-004b/gpio-=
keys.1.auto/input/input1<br>
            [ &nbsp;&nbsp;&nbsp;1.890300] snvs_rtc 30370000.snvs:snvs-rtc-=
lp: setting
            system clock to 1970-01-01T00:00:00 UTC (0)
            <br>
            [ &nbsp;&nbsp;&nbsp;1.899718] cfg80211: Loading compiled-in X.=
509
            certificates for regulatory database
            <br>
            [ &nbsp;&nbsp;&nbsp;1.911354] cfg80211: Loaded X.509 cert 'sfo=
rshee:
            00b28ddf47aef9cea7'
            <br>
            [ &nbsp;&nbsp;&nbsp;1.917963] platform regulatory.0: Direct fi=
rmware load
            for regulatory.db failed with error -2
            <br>
            [ &nbsp;&nbsp;&nbsp;1.923612] ALSA device list:
            <br>
            [ &nbsp;&nbsp;&nbsp;1.926586] platform regulatory.0: Falling b=
ack to sysfs
            fallback for: regulatory.db
            <br>
            [ &nbsp;&nbsp;&nbsp;1.929550] &nbsp;&nbsp;No soundcards found.
            <br>
            [ &nbsp;&nbsp;&nbsp;1.947317] EXT4-fs (mmcblk2p2): mounted fil=
esystem with
            ordered data mode. Opts: (null)
            <br>
            [ &nbsp;&nbsp;&nbsp;1.955496] VFS: Mounted root (ext4 filesyst=
em) readonly
            on device 179:2.
            <br>
            [ &nbsp;&nbsp;&nbsp;1.963119] devtmpfs: mounted
            <br>
            [ &nbsp;&nbsp;&nbsp;1.966900] Freeing unused kernel memory: 28=
80K
            <br>
            [ &nbsp;&nbsp;&nbsp;1.989378] Run /sbin/init as init process
            <br>
            [ &nbsp;&nbsp;&nbsp;2.059403] audit: type=3D1404 audit(1.969:2=
): enforcing=3D1
            old_enforcing=3D0 auid=3D4294967295 ses=3D4294967295 enabled=
=3D1
            old-enabled=3D1 lsm=3Dselinux res=3D1
            <br>
            [ &nbsp;&nbsp;&nbsp;2.199361] SELinux: &nbsp;Permission watch =
in class
            filesystem not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.206919] SELinux: &nbsp;Permission watch =
in class file not
            defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.213885] SELinux: &nbsp;Permission watch_=
mount in class
            file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.221377] SELinux: &nbsp;Permission watch_=
sb in class file
            not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.228601] SELinux: &nbsp;Permission watch_=
with_perm in class
            file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.236441] SELinux: &nbsp;Permission watch_=
reads in class
            file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.243935] SELinux: &nbsp;Permission watch =
in class dir not
            defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.250819] SELinux: &nbsp;Permission watch_=
mount in class dir
            not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.258216] SELinux: &nbsp;Permission watch_=
sb in class dir
            not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.265361] SELinux: &nbsp;Permission watch_=
with_perm in class
            dir not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.273105] SELinux: &nbsp;Permission watch_=
reads in class dir
            not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.280520] SELinux: &nbsp;Permission watch =
in class lnk_file
            not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.287830] SELinux: &nbsp;Permission watch_=
mount in class
            lnk_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.295669] SELinux: &nbsp;Permission watch_=
sb in class
            lnk_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.303239] SELinux: &nbsp;Permission watch_=
with_perm in class
            lnk_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.311429] SELinux: &nbsp;Permission watch_=
reads in class
            lnk_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.319266] SELinux: &nbsp;Permission watch =
in class chr_file
            not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.326585] SELinux: &nbsp;Permission watch_=
mount in class
            chr_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.334416] SELinux: &nbsp;Permission watch_=
sb in class
            chr_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.341994] SELinux: &nbsp;Permission watch_=
with_perm in class
            chr_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.350172] SELinux: &nbsp;Permission watch_=
reads in class
            chr_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.358021] SELinux: &nbsp;Permission watch =
in class blk_file
            not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.365332] SELinux: &nbsp;Permission watch_=
mount in class
            blk_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.373171] SELinux: &nbsp;Permission watch_=
sb in class
            blk_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.380742] SELinux: &nbsp;Permission watch_=
with_perm in class
            blk_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.388927] SELinux: &nbsp;Permission watch_=
reads in class
            blk_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.396765] SELinux: &nbsp;Permission watch =
in class sock_file
            not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.404171] SELinux: &nbsp;Permission watch_=
mount in class
            sock_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.412088] SELinux: &nbsp;Permission watch_=
sb in class
            sock_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.419757] SELinux: &nbsp;Permission watch_=
with_perm in class
            sock_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.428022] SELinux: &nbsp;Permission watch_=
reads in class
            sock_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.435953] SELinux: &nbsp;Permission watch =
in class fifo_file
            not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.443350] SELinux: &nbsp;Permission watch_=
mount in class
            fifo_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.451275] SELinux: &nbsp;Permission watch_=
sb in class
            fifo_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.458933] SELinux: &nbsp;Permission watch_=
with_perm in class
            fifo_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.467206] SELinux: &nbsp;Permission watch_=
reads in class
            fifo_file not defined in policy.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.475450] SELinux: the above unknown class=
es and
            permissions will be allowed
            <br>
            [ &nbsp;&nbsp;&nbsp;2.482716] SELinux: &nbsp;policy capability
            network_peer_controls=3D1
            <br>
            [ &nbsp;&nbsp;&nbsp;2.488638] SELinux: &nbsp;policy capability=
 open_perms=3D1
            <br>
            [ &nbsp;&nbsp;&nbsp;2.493612] SELinux: &nbsp;policy capability
            extended_socket_class=3D1
            <br>
            [ &nbsp;&nbsp;&nbsp;2.499534] SELinux: &nbsp;policy capability
            always_check_network=3D0
            <br>
            [ &nbsp;&nbsp;&nbsp;2.505375] SELinux: &nbsp;policy capability=
 cgroup_seclabel=3D1
            <br>
            [ &nbsp;&nbsp;&nbsp;2.510776] SELinux: &nbsp;policy capability
            nnp_nosuid_transition=3D1
            <br>
            [ &nbsp;&nbsp;&nbsp;2.551944] audit: type=3D1403 audit(2.461:3=
):
            auid=3D4294967295 ses=3D4294967295 lsm=3Dselinux res=3D1
            <br>
            [ &nbsp;&nbsp;&nbsp;2.560140] systemd[1]: Successfully loaded =
SELinux
            policy in 501.858ms.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.585453] systemd[1]: System time before b=
uild time,
            advancing clock.
            <br>
            [ &nbsp;&nbsp;&nbsp;2.596311] systemd[1]: Unable to fix SELinu=
x security
            context of /dev: Operation not permitted
            <br>
            [ &nbsp;&nbsp;&nbsp;2.596451] audit: type=3D1401 audit(1600598=
638.004:4):
            op=3Dsecurity_validate_transition seresult=3Ddenied
            oldcontext=3Dsystem_u:object_r:device_t:s15:c0.c1023
            newcontext=3Dsystem_u:object_r:device_t:s0
            taskcontext=3Dsystem_u:system_r:kernel_t:s15:c0.c1023 tclassr
            <br>
            [ &nbsp;&nbsp;&nbsp;2.606247] systemd[1]: Failed to mount tmpf=
s at
            /dev/shm: No such file or directory
            <br>
            [ &nbsp;&nbsp;&nbsp;2.627743] audit: type=3D1400 audit(1600598=
638.016:5):
            avc: &nbsp;denied &nbsp;{ create } for &nbsp;pid=3D1 comm=3D&q=
uot;systemd&quot;
            name=3D&quot;shm&quot; scontext=3Dsystem_u:system_r:kernel_t:s=
15:c0.c1023
            tcontext=3Dsystem_u:object_r:tmpfs_t:s0 tclass=3Ddir
            permissive=3D0
            <br>
            [ &nbsp;&nbsp;&nbsp;2.637910] systemd[1]: Unable to fix SELinu=
x security
            context of /run: Operation not permitted
            <br>
            [ &nbsp;&nbsp;&nbsp;2.655581] audit: type=3D1400 audit(1600598=
638.044:6):
            avc: &nbsp;denied &nbsp;{ create } for &nbsp;pid=3D1 comm=3D&q=
uot;systemd&quot;
            name=3D&quot;pts&quot; scontext=3Dsystem_u:system_r:kernel_t:s=
15:c0.c1023
            tcontext=3Dsystem_u:object_r:devpts_t:s0-s15:c0.c1023
            tclass=3Ddir permissive=3D0
            <br>
            [ &nbsp;&nbsp;&nbsp;2.665724] systemd[1]: Unable to fix SELinu=
x security
            context of /sys/fs/cgroup: Operation not permitted
            <br>
            [ &nbsp;&nbsp;&nbsp;2.685536] audit: type=3D1401 audit(1600598=
638.048:7):
            op=3Dsecurity_validate_transition seresult=3Ddenied
            oldcontext=3Dsystem_u:object_r:tmpfs_t:s15:c0.c1023
            newcontext=3Dsystem_u:object_r:var_run_t:s0-s15:c0.c1023
            taskcontext=3Dsystem_u:system_r:kernel_t:s15:c0r
            <br>
            [ &nbsp;&nbsp;&nbsp;2.719230] audit: type=3D1401 audit(1600598=
638.076:8):
            op=3Dsecurity_validate_transition seresult=3Ddenied
            oldcontext=3Dsystem_u:object_r:tmpfs_t:s15:c0.c1023
            newcontext=3Dsystem_u:object_r:cgroup_t:s0
            taskcontext=3Dsystem_u:system_r:kernel_t:s15:c0.c1023 tclass=
=3Dr
            <br>
            [ &nbsp;&nbsp;&nbsp;2.741846] audit: type=3D1400 audit(1600598=
638.108:9):
            avc: &nbsp;denied &nbsp;{ create } for &nbsp;pid=3D1 comm=3D&q=
uot;systemd&quot;
            name=3D&quot;bpf&quot; scontext=3Dsystem_u:system_r:kernel_t:s=
15:c0.c1023
            tcontext=3Dsystem_u:object_r:sysfs_t:s0 tclass=3Ddir
            permissive=3D0
            <br>
            <span class=3D"gmail-im">[<span style=3D"font-weight:bold;colo=
r:rgb(0,0,0);background-color:rgb(255,255,255)">!!!!!!</span><span style=3D=
"color:rgb(0,0,0);background-color:rgb(255,255,255)">] Failed to
                mount API filesystems.
              </span><br>
            </span>[ &nbsp;&nbsp;&nbsp;2.780814] systemd[1]: Freezing exec=
ution.</span></div>
        <div><br>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
  </body>
</html>

--------------8AE3AE8F4DD3BBDC4DA6B41F--
