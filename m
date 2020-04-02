Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.92.90.21])
 by mx.groups.io with SMTP id smtpd.web11.2176.1585816578779111787
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Apr 2020 01:36:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=QprXTubp;
 spf=pass (domain: outlook.com, ip: 40.92.90.21, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yi4chiyS5uuKOBgaoNSM9HKit+pnPyaxZwy3W0oyvMgL28+kB6jWo3SSIZ8GwMkPRAkSgOlywloHXEHBa5MBjdKoDz6LW+OIrWGyhfSwUZTgZwgCuHZzj196Qiy5bB49N8Ba63Fj+ZZ6GAOT208SAn5IPVK9XaJwXKYHPuue3iZHTQ07UdC+IbRu9bg5KEDVpvLZZXpax29k+AzzKlxAAct9uPI5tKyinPn5mwCmUv2GcHK8b4fBdNFRKHiLirK1VtZ+SBPjMDqP8DPAYYdFhx2i6WzTUVkXCvh3yAXHpOGh03WHr93TKpobbn2zf+XXstXULTd0ul9BDhdsq7VlEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zpcsgaaSyDXDgTV6f4aRVqLJSjXhOtCArRovYNXw5VE=;
 b=VA2FJ5mHniQuZgyAJtYOO+YlnY3nATP8hPk0woMuIShkziaM6U4c2ZrpcNTzPaRZEVjS92m1GzJMkHHJ97Y1dBinrkmTc5Ub1/p7GMhvcoi73GpeJk/J5cJXoOhM702imZmEYeGugmJKVipJdwf64IUBJift/t/mQRZjmR4kGPiiY3/0akkbGRNlcZbZYS9nU1TylqcTLUyXvwQexIpSMLRPd/ZZMClkubQ2pgqB1LfxeifFwQbBQ955aoAjEqO/iz8G8B/m1pw3CP8r5MzSfbZK0AKe9hd9QfLfIgcA+uZUOApgVk/Q7L/1MrikUYe8VLyZXGGc6rMCQ6ep6O508Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zpcsgaaSyDXDgTV6f4aRVqLJSjXhOtCArRovYNXw5VE=;
 b=QprXTubpMmD6nkDak/IRVIZKYYnpiKyOQm7GfaUFqAoiJHkQHnwdzROUAoUJnN7db9D0QXXOUYPVxwoj/ZKk59bwNcbso3hGuU1fBX8rJ/gPGe/pKOXI3oYiQjcZfqBZGe4w1sL8wD7L5BM4bQBcxeBH5gEpu+EBOG4+GFW2mpGQP4hmMEA2DP/g4J+Xmg2cUBtJgKfVBrmdx8CI4rlCEzjpUq+tNJt036JkTXWBkqsAceSxMsgoigy+U8EzzCmru92IqNbCUosJHIS5akuoiKbB0dP1wfG2hAbqjgE2a+l4LpB8VXV/IqDg67gfR3i0o/czEiG5va4dQdPYgE4eDw==
Received: from DB8EUR05FT023.eop-eur05.prod.protection.outlook.com
 (2a01:111:e400:fc0f::42) by
 DB8EUR05HT027.eop-eur05.prod.protection.outlook.com (2a01:111:e400:fc0f::95)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Thu, 2 Apr
 2020 08:36:16 +0000
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com (10.233.238.53) by
 DB8EUR05FT023.mail.protection.outlook.com (10.233.239.43) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.15 via Frontend Transport; Thu, 2 Apr 2020 08:36:16 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:C5276D81B1813160CA95A13922675879E83C3A30199441BED46992BABE389854;UpperCasedChecksum:8A75EA9C61F9CB3598E675F3094B961D207ADCE771723C37CEBCFE1C0FB54C04;SizeAsReceived:8842;Count:48
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131]) by VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131%4]) with mapi id 15.20.2856.019; Thu, 2 Apr 2020
 08:36:16 +0000
Subject: Re: [yocto] Files get sporadically lost for native packages
To: yocto@lists.yoctoproject.org
References: <VI1PR05MB428643D97A9A175005473BDEA8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
 <3d12b857-51ef-7266-23d1-805fa1d256f8@windriver.com>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <VI1PR05MB4286F1D0AD5FBCEC177ED19EA8C60@VI1PR05MB4286.eurprd05.prod.outlook.com>
Date: Thu, 2 Apr 2020 10:36:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <3d12b857-51ef-7266-23d1-805fa1d256f8@windriver.com>
X-ClientProxiedBy: AM6P195CA0095.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:86::36) To VI1PR05MB4286.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::27)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <4eb91a3c-a5f0-3d15-f0f3-61718a43a479@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (87.150.34.83) by AM6P195CA0095.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:86::36) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16 via Frontend Transport; Thu, 2 Apr 2020 08:36:15 +0000
X-Microsoft-Original-Message-ID: 
 <4eb91a3c-a5f0-3d15-f0f3-61718a43a479@outlook.com>
X-TMN: [sQO//Ftzs+jFlQwyJ0rRIKgsIcj6Qatp]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 9a151d14-6591-4197-31b2-08d7d6e0e897
X-MS-TrafficTypeDiagnostic: DB8EUR05HT027:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	DqHJK+qAKNkY+vXFLmdmf84qYHYHf+RWozovCEL49cabMNfyaMJ5Y3yFrC9UeMih3/cvjZ8nf4HmOurGHDnQGu+16rgZoEVbE72KOwEEolUq59ygPuClsTQ1L/6D8MyvlYVbSi7z5V87zuZFFqPjOrUBa1+tOTMwWTnVcI05jXdvXXC8y8XuM0LW9Ity28D0fkYNYTZmU9DQvTftZA57plbgwB4JMovLNCWgh2Tf3OE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:0;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR05MB4286.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:;DIR:OUT;SFP:1901;
X-MS-Exchange-AntiSpam-MessageData: 
	2aGXlQ8Br18o2Qhba+HpENoWUr+JLgXgFMYTCJ1PQyOWCWmt7UYONmGSDhk6FwifVZ/OjwfleznoU0z0WQFactRrGyUbItK57Gj4npUND2c8ez90SvvTG9roJzIEdKg2CDqVJLloIF424vqn2MiynA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a151d14-6591-4197-31b2-08d7d6e0e897
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2020 08:36:16.2053
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8EUR05HT027
Content-Type: multipart/alternative;
 boundary="------------7272BBCB60F20B29AE826928"
Content-Language: en-US

--------------7272BBCB60F20B29AE826928
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

HI,

sorry I didn't specify it further.
To me it seems to be a corner case scenario.

This happens when doing a from scratch build with a lot on native python 
libraries (as it is setup in a test distribution I'm working on).
Roughly it pulls in ~100 native python site packages.

The setup where I almost every time can reproduce the issue

- Ubuntu 16.04 or 18.04 container
- 2 VCPUs (can't say what it actually is)
- 14GB of hard disk (I guess it's some virtual storage)
- 12GB of RAM

-> as offered by GitHub's Actions Azure interface

The setup where it occasionally happens

- Ubuntu 19.04/19.10
- 8 cores i7-6th gen
- 16GB Ram
- some Samsung-SSD with more than enough space

The setup where it never happened so far

- Ubuntu 18.04
- 48 core threadripper
- lots of RAM and SSD

and

- Debian 9
- 24 core XEN guest
- >80GB of RAM
- HDD doesn't matter as it was a ramdisk only build

This doesn't happen (afaik) on differential builds when the initial one 
is good (same for sstate cache backed builds).

I just wanted to know if somebody ever encountered the same issue.
As the nature of this issue is hard to catch, I'm open to ideas...
What currently works for me is to remove all python cache files before 
they are packaged - at least none of my recent build failed so far.

Any ideas how to tackle this problem, any suggestions?

Best
Konrad

On 02.04.20 05:42, Randy MacLeod wrote:
> On 2020-03-28 8:26 a.m., Konrad Weihmann wrote:
>> Hi,
>>
>> I'm facing the following error message sporadically on all branches I 
>> tried so far (master, zeus, warrior and thud)
>>
>> The stack trace of python calls that resulted in this 
>> exception/failure was:
>> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>>       0001:
>>   *** 0002:extend_recipe_sysroot(d)
>>       0003:
>> File: '/build/poky/meta/classes/staging.bbclass', lineno: 551, 
>> function: extend_recipe_sysroot
>>       0547:                    dest = newmanifest[l]
>>       0548:                    if l.endswith("/"):
>>       0549:                        staging_copydir(l, targetdir, 
>> dest, seendirs)
>>       0550:                        continue
>>   *** 0551:                    staging_copyfile(l, targetdir, dest, 
>> postinsts, seendirs)
>>       0552:
>>       0553:    bb.note("Installed into sysroot: %s" % str(msg_adding))
>>       0554:    bb.note("Skipping as already exists in sysroot: %s" % 
>> str(msg_exists))
>>       0555:
>> File: '/build/poky/meta/classes/staging.bbclass', lineno: 152, 
>> function: staging_copyfile
>>       0148:        os.symlink(linkto, dest)
>>       0149:        #bb.warn(c)
>>       0150:    else:
>>       0151:        try:
>>   *** 0152:            os.link(c, dest)
>>       0153:        except OSError as err:
>>       0154:            if err.errno == errno.EXDEV:
>>       0155:                bb.utils.copyfile(c, dest)
>>       0156:            else:
>> Exception: FileNotFoundError: [Errno 2] No such file or directory: 
>> '/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/__init__.cpython-37.pyc' 
>> -> 
>> '/build/poky/build/tmp/work/qemux86_64-mine-linux/core-image-minimal-mine/1.0-r0/recipe-sysroot-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/__init__.cpython-37.pyc'
>>
>> I already had a look at the manifest
>>
>> cat manifest-x86_64-python3-msgcheck-native.populate_sysroot
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__init__.py 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/po.py 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/msgcheck.py 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/__init__.cpython-37.pyc 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/po.cpython-37.pyc 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/msgcheck.cpython-37.pyc 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/dependency_links.txt 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/requires.txt 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/top_level.txt 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/SOURCES.txt 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/PKG-INFO 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/entry_points.txt 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin/msgcheck 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/sysroot-providers/python3-msgcheck-native 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/ 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/ 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/ 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/ 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/ 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/sysroot-providers/ 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/share/ 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin/ 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/ 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/ 
>>
>>
>> which states the file should be there, but when doing
>>
>> find 
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/ 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__init__.py 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__ 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/po.cpython-37.pyc 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/msgcheck.cpython-37.pyc 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/po.py 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/msgcheck.py 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/dependency_links.txt 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/requires.txt 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/top_level.txt 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/SOURCES.txt 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/PKG-INFO 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/entry_points.txt 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin/msgcheck 
>>
>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/share 
>>
>>
>> the file isn't there.
>>
>> This happens to random python packages compiled as native (sometimes 
>> even for python-native itself), but (afaik) not for cross or target 
>> packages (I'm pretty sure because of the different packaging applied).
>> So I digged a little into the code 
>> classes/sstate.bbclass:sstate_install, which seems to create the 
>> sysroot-component dir and the manifest.
>> There is a gap between the manifest creation (line 285) and the 
>> hardlinking (line till 311).
>>
>> Now my question is there any place where a file potentially could get 
>> lost? - at first glance there shouldn't be one - I have to admit that 
>> I don't fully understand all this subprocess magic in 
>> lib/oe/path.py:copyhardlinktree.
>> What I do to fix the issue is reopening the manifest and double check 
>> for missing files and remove them from the manifest, but this
>> feels wrong - so any advise is welcome...
>>
>> Hope that someone more familiar with the topic could have a look.
>
> Hi Konrad,
>
> I'm not really familiar with that code but it's being run buy 1000s of
> builder around the world so let's try to eliminate a few possibilities.
>
> When did you start having this problem?
> How often do you think it's happening: 1 in 3 builds, 1 in 10?
> Tell us about your machine: OS,version, disk, CPUs, ram
> Do you do anything special in your conf dir? Send local.conf perhaps.
> Do you have any local bbappends or commits on top of poky or
> in other layers?
> Have you tried to simplify the build to eliminate problems
> potentially caused by other layers?
> Are you able to reproduce the problem on more than one build machine?
> Are you able to reproduce the problem on a different Linux distro?
> Are there other builds or users on the machine that may be causing
> extra load?
>
>
> ../Randy
>
>>
>> Thanks
>>
>> Konrad
>>
>>
>>
>>
>
>
>
> 

--------------7272BBCB60F20B29AE826928
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>HI,</p>
    <p>sorry I didn't specify it further.<br>
      To me it seems to be a corner case scenario.</p>
    <p>This happens when doing a from scratch build with a lot on native
      python libraries (as it is setup in a test distribution I'm
      working on).<br>
      Roughly it pulls in ~100 native python site packages.</p>
    <p>The setup where I almost every time can reproduce the issue</p>
    <p>- Ubuntu 16.04 or 18.04 container<br>
      - 2 VCPUs (can't say what it actually is)<br>
      - 14GB of hard disk (I guess it's some virtual storage)<br>
      - 12GB of RAM<br>
      <br>
      -&gt; as offered by GitHub's Actions Azure interface</p>
    <p>The setup where it occasionally happens</p>
    <p>- Ubuntu 19.04/19.10<br>
      - 8 cores i7-6th gen<br>
      - 16GB Ram<br>
      - some Samsung-SSD with more than enough space</p>
    <p>The setup where it never happened so far</p>
    <p>- Ubuntu 18.04<br>
      - 48 core threadripper<br>
      - lots of RAM and SSD</p>
    <p>and</p>
    <p>- Debian 9<br>
      - 24 core XEN guest<br>
      - &gt;80GB of RAM<br>
      - HDD doesn't matter as it was a ramdisk only build</p>
    <p>This doesn't happen (afaik) on differential builds when the
      initial one is good (same for sstate cache backed builds).</p>
    <p>I just wanted to know if somebody ever encountered the same
      issue.<br>
      As the nature of this issue is hard to catch, I'm open to ideas...<br>
      What currently works for me is to remove all python cache files
      before they are packaged - at least none of my recent build failed
      so far.</p>
    <p>Any ideas how to tackle this problem, any suggestions?<br>
      <br>
      Best<br>
      Konrad<br>
    </p>
    <div class="moz-cite-prefix">On 02.04.20 05:42, Randy MacLeod wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:3d12b857-51ef-7266-23d1-805fa1d256f8@windriver.com">On
      2020-03-28 8:26 a.m., Konrad Weihmann wrote:
      <br>
      <blockquote type="cite">Hi,
        <br>
        <br>
        I'm facing the following error message sporadically on all
        branches I tried so far (master, zeus, warrior and thud)
        <br>
        <br>
        The stack trace of python calls that resulted in this
        exception/failure was:
        <br>
        File: 'exec_python_func() autogenerated', lineno: 2, function:
        &lt;module&gt;
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0001:
        <br>
        &nbsp;&nbsp;*** 0002:extend_recipe_sysroot(d)
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0003:
        <br>
        File: '/build/poky/meta/classes/staging.bbclass', lineno: 551,
        function: extend_recipe_sysroot
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0547:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dest = newmanifest[l]
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0548:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if l.endswith(&quot;/&quot;):
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0549:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; staging_copydir(l, targetdir,
        dest, seendirs)
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0550:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continue
        <br>
        &nbsp;&nbsp;*** 0551:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; staging_copyfile(l, targetdir,
        dest, postinsts, seendirs)
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0552:
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0553:&nbsp;&nbsp;&nbsp; bb.note(&quot;Installed into sysroot: %s&quot; %
        str(msg_adding))
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0554:&nbsp;&nbsp;&nbsp; bb.note(&quot;Skipping as already exists in sysroot:
        %s&quot; % str(msg_exists))
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0555:
        <br>
        File: '/build/poky/meta/classes/staging.bbclass', lineno: 152,
        function: staging_copyfile
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0148:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; os.symlink(linkto, dest)
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0149:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #bb.warn(c)
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0150:&nbsp;&nbsp;&nbsp; else:
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0151:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try:
        <br>
        &nbsp;&nbsp;*** 0152:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; os.link(c, dest)
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0153:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; except OSError as err:
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0154:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if err.errno == errno.EXDEV:
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0155:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.utils.copyfile(c, dest)
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0156:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else:
        <br>
        Exception: FileNotFoundError: [Errno 2] No such file or
        directory:
'/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/__init__.cpython-37.pyc'
        -&gt;
'/build/poky/build/tmp/work/qemux86_64-mine-linux/core-image-minimal-mine/1.0-r0/recipe-sysroot-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/__init__.cpython-37.pyc'<br>
        <br>
        I already had a look at the manifest
        <br>
        <br>
        cat manifest-x86_64-python3-msgcheck-native.populate_sysroot
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__init__.py
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/po.py
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/msgcheck.py
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/__init__.cpython-37.pyc
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/po.cpython-37.pyc
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/msgcheck.cpython-37.pyc
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/dependency_links.txt
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/requires.txt
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/top_level.txt
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/SOURCES.txt
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/PKG-INFO
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/entry_points.txt
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin/msgcheck
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/sysroot-providers/python3-msgcheck-native
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/sysroot-providers/
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/share/
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin/
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/
        <br>
        <br>
        which states the file should be there, but when doing
        <br>
        <br>
        find
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__init__.py
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/po.cpython-37.pyc
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/msgcheck.cpython-37.pyc
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/po.py
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/msgcheck.py
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/dependency_links.txt
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/requires.txt
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/top_level.txt
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/SOURCES.txt
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/PKG-INFO
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/entry_points.txt
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin/msgcheck
        <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/share
        <br>
        <br>
        the file isn't there.
        <br>
        <br>
        This happens to random python packages compiled as native
        (sometimes even for python-native itself), but (afaik) not for
        cross or target packages (I'm pretty sure because of the
        different packaging applied).
        <br>
        So I digged a little into the code
        classes/sstate.bbclass:sstate_install, which seems to create the
        sysroot-component dir and the manifest.
        <br>
        There is a gap between the manifest creation (line 285) and the
        hardlinking (line till 311).
        <br>
        <br>
        Now my question is there any place where a file potentially
        could get lost? - at first glance there shouldn't be one - I
        have to admit that I don't fully understand all this subprocess
        magic in lib/oe/path.py:copyhardlinktree.
        <br>
        What I do to fix the issue is reopening the manifest and double
        check for missing files and remove them from the manifest, but
        this
        <br>
        feels wrong - so any advise is welcome...
        <br>
        <br>
        Hope that someone more familiar with the topic could have a
        look.
        <br>
      </blockquote>
      <br>
      Hi Konrad,
      <br>
      <br>
      I'm not really familiar with that code but it's being run buy
      1000s of
      <br>
      builder around the world so let's try to eliminate a few
      possibilities.
      <br>
      <br>
      When did you start having this problem?
      <br>
      How often do you think it's happening: 1 in 3 builds, 1 in 10?
      <br>
      Tell us about your machine: OS,version, disk, CPUs, ram
      <br>
      Do you do anything special in your conf dir? Send local.conf
      perhaps.
      <br>
      Do you have any local bbappends or commits on top of poky or
      <br>
      in other layers?
      <br>
      Have you tried to simplify the build to eliminate problems
      <br>
      potentially caused by other layers?
      <br>
      Are you able to reproduce the problem on more than one build
      machine?
      <br>
      Are you able to reproduce the problem on a different Linux distro?
      <br>
      Are there other builds or users on the machine that may be causing
      <br>
      extra load?
      <br>
      <br>
      <br>
      ../Randy
      <br>
      <br>
      <blockquote type="cite">
        <br>
        Thanks
        <br>
        <br>
        Konrad
        <br>
        <br>
        <br>
        <br>
        <br>
      </blockquote>
      <br>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------7272BBCB60F20B29AE826928--
