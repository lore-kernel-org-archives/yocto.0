Received: from NAM10-MW2-obe.outbound.protection.outlook.com (NAM10-MW2-obe.outbound.protection.outlook.com [40.107.94.52])
 by mx.groups.io with SMTP id smtpd.web11.489.1610134475202859483
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Jan 2021 11:34:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=MDAgjRZM;
 spf=pass (domain: windriver.com, ip: 40.107.94.52, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jPPU2kpmfze08jGS47Oq4ChB6YWHVdEmmGqqzXDVQklM67vUC11fuXFxtGe+hz4MvrGkz31iRH1dmxeIsR/knI58Q5+clwf8GMeRuC+jAEoxpDCGk4Jj2p0MF+K/V871iRAwdp37bQ/uTmJsu9ElsKMlAJGYi5LHdzi2QBHkm2s8Q1lz9yTtn1Wk97ioXva4o+ZbEPnDElXWDKX0xnYzOkmiEA47ttRlILfD0HkwgifeKlrfK6+TyO9/L1Ei/x4wDuHXLHabnir9KSOfSg/kbKgAzpEWY08BpiyO/nKpb7Sr5uTS6IO0AB9AUUL02l9Y4ywX99Hp8TMlpo61867HwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/9VJL5HwPr7h3i4p04tG5IN7Ewz+M4FEEO2lqyh2YX4=;
 b=ogsm04+NdnOMowxkQAVIy61XTsKr7I25aZ2e0c+oJxTIHeEXu6N38195eyF56s9NV/juaZoMtbtolvqQmmrg3ochs4KU4CrcgqtAnjsmFzoHbq0Etv4krJ+JslI12PrmYYORYfYHA4SfCZ6ZJGuZcWk4r+XgLqi6Z8BE4RFKmqvlcpNg1Fl+pxnOAlrktZpSBiUlIyDn07lGMYLI+U0tBloKGngYlRBCoMnxcKZt/sbxdiTVjHVp/ULdV7x1i7Jw7RO8vqBxBAFlyGpaIQq4h50G391cq1o+/o1NoSuqpCHVZ4pI6LFnPN89aWbeoRqS7A/OL+bOdU6lK2NvL75Kpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/9VJL5HwPr7h3i4p04tG5IN7Ewz+M4FEEO2lqyh2YX4=;
 b=MDAgjRZMxYwwfh+SXAYfkvmHi/hsR8FG2ZGMHnRf/bJibOm3Amf2tkBjxi0GefGlARR9wHz+HR9w7NrUcaBCFFl7RQ72pFfHW13VNZLNVrJRZGAAvCrEoJUTbBEZg07TI8sf5ls/njYqsn0wk4YQ4zlXsrM0mxg9NYZJYKLxd+U=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR11MB1675.namprd11.prod.outlook.com (2603:10b6:4:d::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3742.6; Fri, 8 Jan 2021 19:34:32 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e%7]) with mapi id 15.20.3742.006; Fri, 8 Jan 2021
 19:34:31 +0000
Subject: Re: [yocto] rebuild issues using sstate mirror
To: Markus Volk <f_l_k@t-online.de>, yocto@lists.yoctoproject.org
References: <dIdz.1610104601246301759.o5My@lists.yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <70a889cc-8621-c098-4cce-a82dd0a74d08@windriver.com>
Date: Fri, 8 Jan 2021 14:34:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
In-Reply-To: <dIdz.1610104601246301759.o5My@lists.yoctoproject.org>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BY5PR13CA0019.namprd13.prod.outlook.com
 (2603:10b6:a03:180::32) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BY5PR13CA0019.namprd13.prod.outlook.com (2603:10b6:a03:180::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.3 via Frontend Transport; Fri, 8 Jan 2021 19:34:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8d6e8567-cd9f-4954-73e9-08d8b40c6b9e
X-MS-TrafficTypeDiagnostic: DM5PR11MB1675:
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB1675A524EAEB11F60B6B209BF8AE0@DM5PR11MB1675.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+pOXwgU/w+KDdkVlLq8yyX7AqWbiWxaIUgR+W7KcS2iWu6peiR6MOELgqcFpk/idJQGdPv4WwlMa9Q0WZ82spxb/TLc+dkJB22WA9l7aaTeWp6vTvGiSh3WXA2446ShsV/4mgzgT5RQyW/wS8B8v/h4igLilefMDxwIOwjpnxbko499KmRWUyKsK322uJGig4vjYoRGdSh1UhA3PZl1JlgvbMUB1TDMFCpMY97LZWlN8IqBRylcMUsC7xbuoMWbDO5huHHzlFGNUak8wx+6bNXVR7QaATa1bJmNv8dhqiiQsYlGLQXcACynRmkOjqx+wCmOj2FdEOrRhkIu/l65gxxMbXIv4TA+th6I5byLJ+AnNsGNWIK3HO0wokzk4+g4ULoaGJ3QCPlkf9O5fTLhURJTG2Oc/GoTlOfxZF6rkzbF/JL4WoyVwha82f/ri/MUDkeLVvyRO82tvKVkfswZLVkA7lWbs+KPb0v5a8Xb1/eMTmdp/wJGYij5qVhVaf1wgal3t9TRjMSuKwYYiuGmqY9w3gUE8cDbRNFxV/NeAu8Ra3m3C+BDJzrtEjiJYGSMJ
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(39850400004)(346002)(136003)(366004)(66476007)(66556008)(53546011)(31686004)(2616005)(83380400001)(16576012)(33964004)(52116002)(2906002)(166002)(66946007)(956004)(316002)(478600001)(31696002)(5660300002)(8676002)(36756003)(26005)(966005)(86362001)(186003)(8936002)(16526019)(6666004)(6486002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?cHRJVGcxbGhqN0xUUWhGOEFSUzNwR3JoTVd4eG8vR0xpSk0xMllwb3BGRHdy?=
 =?utf-8?B?ZUNsSU1LWmhYZEhWS2RacXRiM3RSZElYbnRtSWM4cWxERWtFYmFWbURUZHRR?=
 =?utf-8?B?WkVnSVVDcWlyaHBjSlhSdG1KckZIOGVwTlp2OHNWc0FsUCtmOEcxM2MwRmJL?=
 =?utf-8?B?a2dCZWJ3ZFRjM1pONmt1YTJRem9aUXZSUis1SWRZaWpkMnJ4ZFVRWElSM2hT?=
 =?utf-8?B?anQxRHZBdEJ3NUF2cnhlbGZ4U3FWNHlaWUtVakdmRHNkV1QwVjE2REY3Y3hw?=
 =?utf-8?B?bkdOYlJCTDBqa1BDZERlRU5OSEFUVWpBSXdHeWppcmRkTmxWaTY5a2hKZFMy?=
 =?utf-8?B?ajltRy9aWWd2bmJqNnE5UDBib3FpdjA3eTdJOVNoMVF5Z0xTanVDb0hSNUs3?=
 =?utf-8?B?VlU1WEZMT3IzNm9YaTRXMDY3SHpQcHpkUldzVVNRdDNXM0ZYbnpjK2FCVUZp?=
 =?utf-8?B?SDV2V0dBbzVMZ1hMQWR3d09tb1dYTHBhQm1zbGlza1FnNExkamo2TkNMZnlO?=
 =?utf-8?B?aXNQVTFlUmZIR2ZZaStXRzRERDRZUHQwTEYwVmE0bzJRUktjaHJUd2hWTVN5?=
 =?utf-8?B?cERpaitjTGhxc2hqZ2l3VG51ZkVKKzA3YUFYUVAyQ1NCRlNkU0laSzdUK2ZQ?=
 =?utf-8?B?dTBIcGJTbGRuKy9jYkpIOElPNmRBRVNZYThHVUZMZlpIVUdOWHlFb0dtalVU?=
 =?utf-8?B?Y0Z0a2NrdE5SQUlaSCtiblUxWkQyNGhxeVlSTE11YkF0ZkoycnR6cXkrWURV?=
 =?utf-8?B?ZElvNVFZM3kzb2JWY1kxT3NJZDE4b00vQkxzRVpGelR1M3VuZ21NMUc1MVZ3?=
 =?utf-8?B?MExOZEdQbkpyWFdMcWl4cFlCbklwUm9HMUVrenNqQXhrekExWjJmMFhDelRB?=
 =?utf-8?B?cDB2TE03VGN3TGF6djNWQ0Zxd2hRODNRSVArVDgvM1V2Q0Fmd3VoMEU0RFZa?=
 =?utf-8?B?bXJvRTFYV2I1REVpcmFrTmk3NTNydDNUK0MxV0ZzckMrM0ZqZ2JZWnBRRXJ3?=
 =?utf-8?B?TEg2N1l6c0xlRXc4WTlwRmVUeUNYU281RmM2Q3doZVFqNFZoeFJCQ0pNZFlM?=
 =?utf-8?B?V0tHQ3dCQlZMc2tpaExEK2tjTGVUWjltaHFmRXJrcW4xVUhnVjB0cFFSb0Vi?=
 =?utf-8?B?My9lZ0MzcmR2NitObnVIVHJDaFlnWDNKdjhYLzhKVjFYSE5aRUtHN0FkRGJZ?=
 =?utf-8?B?WmVIUEMyY0QyUnp5THoyUzVSb1lkK1RvWjlhTldIWVhxeWhPbUlKOEJuNzRU?=
 =?utf-8?B?eWJZVVVZd2dkdm81ZkdvZ2FSQno1VGZmRDNjV0FlZkxhNVl4SEMrSVRHVGtt?=
 =?utf-8?Q?r3T2sB8yRzBlFuj8FeyJWgWVuadAGUCwyO?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2021 19:34:31.0319
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d6e8567-cd9f-4954-73e9-08d8b40c6b9e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gizsJSxMfcYfdu+HeSAxR3RESrO4Jilu5xq/XKQ+q9IvJAGnCfvPWqJJNa2iugN9xcciYJKk+XA5fMkiGkV9Y1xWkCiLQ89es7vl6NoN0+0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1675
Content-Type: multipart/alternative;
 boundary="------------8C12AA1DF65D31F7EEA2998A"
Content-Language: en-CA

--------------8C12AA1DF65D31F7EEA2998A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2021-01-08 6:16 a.m., Markus Volk wrote:
> Hi Folks,
> i did some research on building a custom yocto image using gatesgarth 
> branch. The testcase was building an image on one machine and rebuild 
> it on another using sstate mirror.
> I encountered two issues witch i was able to fix in a way that may 
> also be interesting upstream.
>
> The first error:
> | 
> /home/flk/yocto/build/poky-3.2/hd51/tmp/work/cortexa15hf-neon-vfpv4-oe-linux-gnueabi/gobject-introspection/1.64.1-r0/recipe-sysroot-native/usr/bin/bison: 
> error while loading shared libraries: libreadline.so.7: cannot open 
> shared object file: No such file or directory
>
> the solution for me was to add 'readline'  to DEPENDS in bison_3.7.2.bb .
>
> configure log for bison-native changed from:
>  checking for readline... no
> checking readline/readline.h usability... no
> checking readline/readline.h presence... no
> checking for readline/readline.h... no
> checking readline/history.h usability... no
> checking readline/history.h presence... no
> checking for readline/history.h... no
>
> to:
> checking for readline... yes
> checking how to link with libreadline... 
> /home/flk/yocto/build/poky-3.2/hd51/tmp/work/x86_64-linux/bison-native/3.7.2-r0/recipe-sysroot-native/usr/lib/libreadline.so 
> -Wl,-rpath 
> -Wl,/home/flk/yocto/build/poky-3.2/hd51/tmp/work/x86_64-linux/bison-native/3.7.2-r0/recipe-sysroot-native/usr/lib 
>
> checking readline/readline.h usability... yes
> checking readline/readline.h presence... yes
> checking for readline/readline.h... yes
> checking readline/history.h usability... yes
> checking readline/history.h presence... yes
> checking for readline/history.h... yes
>
> and the error disappeared
>
> The second error:
>
> ERROR: neutrino-image-1.0-r0 do_rootfs: Unable to update the package 
> index files. Command 
> '/home/flk/yocto/build/poky-3.2/hd60/tmp/work/hd60-oe-linux-gnueabi/neutrino-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg 
> --volatile-cache -f 
> /home/flk/yocto/build/poky-3.2/hd60/tmp/work/hd60-oe-linux-gnueabi/neutrino-image/1.0-r0/opkg.conf 
> -t 
> /home/flk/yocto/build/poky-3.2/hd60/tmp/work/hd60-oe-linux-gnueabi/neutrino-image/1.0-r0/temp/ipktemp/ 
> -o 
> /home/flk/yocto/build/poky-3.2/hd60/tmp/work/hd60-oe-linux-gnueabi/neutrino-image/1.0-r0/rootfs 
> --force_postinstall --prefer-arch-to-version   update' returned 127:
> /home/flk/yocto/build/poky-3.2/hd60/tmp/work/hd60-oe-linux-gnueabi/neutrino-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg: 
> error while loading shared libraries: libcharset.so.1: cannot open 
> shared object file: No such file or directory
>
> after some research why libiconv libs are  being used (which i didn't 
> have installed on the rebuild machine) i found this in libarchive:
> configure.ac 
> <https://github.com/libarchive/libarchive/blob/858fa8eaa9435340d2bda988715e0d9023089bec/configure.ac#L380%20>
>
> and was able to avoid the error by including 'gettext' to the inherit 
> line in libarchive_3.4.3.bb


Hi Markus,

Thanks for reporting these problems.
The additions that you made also seem to be missing on the master branch.

Could you send a patch to the oe-core list :

    openembedded-core@openembedded.org

as explained here:

https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

Thanks,

../Randy

>
> Kind regards
>
> 
>

-- 
# Randy MacLeod
# Wind River Linux


--------------8C12AA1DF65D31F7EEA2998A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2021-01-08 6:16 a.m., Markus Volk
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:dIdz.1610104601246301759.o5My@lists.yoctoproject.org">
      
      Hi Folks, <br>
      i did some research on building a custom yocto image using
      gatesgarth branch. The testcase was building an image on one
      machine and rebuild it on another using sstate mirror. <br>
      I encountered two issues witch i was able to fix in a way that may
      also be interesting upstream. <br>
      &nbsp;<br>
      The first error: <br>
      |
/home/flk/yocto/build/poky-3.2/hd51/tmp/work/cortexa15hf-neon-vfpv4-oe-linux-gnueabi/gobject-introspection/1.64.1-r0/recipe-sysroot-native/usr/bin/bison:
      error while loading shared libraries: libreadline.so.7: cannot
      open shared object file: No such file or directory <br>
      &nbsp;<br>
      the solution for me was to add 'readline'&nbsp; to DEPENDS in
      bison_3.7.2.bb . <br>
      &nbsp;<br>
      configure log for bison-native changed from: <br>
      &nbsp;checking for readline... no <br>
      checking readline/readline.h usability... no <br>
      checking readline/readline.h presence... no <br>
      checking for readline/readline.h... no <br>
      checking readline/history.h usability... no <br>
      checking readline/history.h presence... no <br>
      checking for readline/history.h... no <br>
      &nbsp;<br>
      to: <br>
      checking for readline... yes <br>
      checking how to link with libreadline...
/home/flk/yocto/build/poky-3.2/hd51/tmp/work/x86_64-linux/bison-native/3.7.2-r0/recipe-sysroot-native/usr/lib/libreadline.so
      -Wl,-rpath
-Wl,/home/flk/yocto/build/poky-3.2/hd51/tmp/work/x86_64-linux/bison-native/3.7.2-r0/recipe-sysroot-native/usr/lib
      <br>
      checking readline/readline.h usability... yes <br>
      checking readline/readline.h presence... yes <br>
      checking for readline/readline.h... yes <br>
      checking readline/history.h usability... yes <br>
      checking readline/history.h presence... yes <br>
      checking for readline/history.h... yes <br>
      &nbsp;<br>
      and the error disappeared <br>
      &nbsp;<br>
      The second error: <br>
      &nbsp;<br>
      ERROR: neutrino-image-1.0-r0 do_rootfs: Unable to update the
      package index files. Command
'/home/flk/yocto/build/poky-3.2/hd60/tmp/work/hd60-oe-linux-gnueabi/neutrino-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg
      --volatile-cache -f
/home/flk/yocto/build/poky-3.2/hd60/tmp/work/hd60-oe-linux-gnueabi/neutrino-image/1.0-r0/opkg.conf
      -t
/home/flk/yocto/build/poky-3.2/hd60/tmp/work/hd60-oe-linux-gnueabi/neutrino-image/1.0-r0/temp/ipktemp/
      -o
/home/flk/yocto/build/poky-3.2/hd60/tmp/work/hd60-oe-linux-gnueabi/neutrino-image/1.0-r0/rootfs&nbsp;
      --force_postinstall --prefer-arch-to-version&nbsp;&nbsp; update' returned
      127: <br>
/home/flk/yocto/build/poky-3.2/hd60/tmp/work/hd60-oe-linux-gnueabi/neutrino-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg:
      error while loading shared libraries: libcharset.so.1: cannot open
      shared object file: No such file or directory <br>
      &nbsp;<br>
      after some research why libiconv libs are&nbsp; being used (which i
      didn't have installed on the rebuild machine) i found this in
      libarchive: <br>
      <a href="https://github.com/libarchive/libarchive/blob/858fa8eaa9435340d2bda988715e0d9023089bec/configure.ac#L380%20" target="_blank" rel="noopener" moz-do-not-send="true">configure.ac</a><br>
      &nbsp;<br>
      and was able to avoid the error by including 'gettext' to the
      inherit line in libarchive_3.4.3.bb<br>
    </blockquote>
    <p><br>
    </p>
    <p>Hi Markus,</p>
    <p>Thanks for reporting these problems. <br>
      The additions that you made also seem to be missing on the master
      branch.</p>
    <p>Could you send a patch to the oe-core list :</p>
    <p>&nbsp;&nbsp; <a class="moz-txt-link-abbreviated" href="mailto:openembedded-core@openembedded.org">openembedded-core@openembedded.org</a><br>
    </p>
    <p>as explained here:</p>
    <p><a class="moz-txt-link-freetext" href="https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded">https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded</a></p>
    <p>Thanks,<br>
    </p>
    <p>../Randy<br>
    </p>
    <blockquote type="cite" cite="mid:dIdz.1610104601246301759.o5My@lists.yoctoproject.org"><br>
      Kind regards
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------8C12AA1DF65D31F7EEA2998A--
