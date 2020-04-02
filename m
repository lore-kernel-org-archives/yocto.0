Received: from EUR03-DB5-obe.outbound.protection.outlook.com (EUR03-DB5-obe.outbound.protection.outlook.com [40.92.71.86])
 by mx.groups.io with SMTP id smtpd.web10.2304.1585817062242732690
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Apr 2020 01:44:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=uNxmJZxK;
 spf=pass (domain: outlook.com, ip: 40.92.71.86, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M/ejiT1WOZ3Pn5QLPTpB7Yns2X3OxxTxM3mw7yvowTWLf3qEIIs2M0CtsldnnRomXYx4xOH9LzAbVPcpJ+TlOAVu1pZtU8zfDTN2ISMEahDZnSKZHQHv95l+VeMbw9WjnOgcNd54AupKKvwpuDKaMLzHSM6d4uKwUtFzOVQNcCdUxTJg02o5i0WkZE5bplhms1DURJEfP+m8omf8cVKVHxrl2KigmS8JXBcfnVJsgVlfLqz9yl20ckL1xzyGW54YOaBjESGRl41hU54S5IXQi1VG8EeieuCxr140//OmOn9kLdJukR3pBDUuHQZ0ESPFQIwKinqSA1lCgKPDq2iOvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bOv3iXuk1fh2OAf4btieQ0BQCt27XQhNqIUdjA29nHg=;
 b=Fv49/SOeeSlolmt2ijNCKCYPECovM2S0dhinJX+Z99+d9w+pEvmUe37Wd+TgMOP2sZx4TQkiwdeEQnMidi4L/uo/GRK2lm2lUaBB1Gaq1RMftXCYartHknIerqPIX8CL7sdgjlec9hVe0Qy876uqX6lplJufOaEgC7/KWAVbcheE8v7QZAxibFaQV2hZduEC4ovCGVIsfyeyXQLEKypq6OT/ZU/uK3mkmfsiENWCeqJlg7DYm2fQ9bKSev1e05nMhERjlfF+oigGmhTfCQV8RB98MNTY0G2mkRs8bdnHrVwktfVrhsGDASRtyR5rrySmtDZsPhXYnhd9H6CD5IeWSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bOv3iXuk1fh2OAf4btieQ0BQCt27XQhNqIUdjA29nHg=;
 b=uNxmJZxKcQWjSHRnWDiRd1AmRUL/gpXlzAQJgmwBYFdTGGLMD+/UNjQJuGMacYcYCjFq3Bd5WyXCC7ydKtK/KqbGxhOUMuFmtoYhzZwx3HxQVc2MlH14sN1flpsK0l3qGKMtdRnicq0YuwHmcyRIFfWll7jCmLatFDYeJI84lNrYNIaBsUaXqI09kTAntIVKQu7Q3lZeL6aV5DtvHQmtoVy9MttJMyKarerGeuBopQ0U43IibL25nskW6GpyE1udtg5Z288RV4IUA2iOiS6lMaFrXFJ9qZhnkxafwHVMJFY4YxMy0mzu3ZibEFK3Pnc67HdR2YDuFm3CyHtib5O2CA==
Received: from VE1EUR03FT033.eop-EUR03.prod.protection.outlook.com
 (2a01:111:e400:7e09::43) by
 VE1EUR03HT231.eop-EUR03.prod.protection.outlook.com (2a01:111:e400:7e09::313)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.17; Thu, 2 Apr
 2020 08:44:19 +0000
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com (10.152.18.60) by
 VE1EUR03FT033.mail.protection.outlook.com (10.152.18.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Thu, 2 Apr 2020 08:44:19 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:22586BFF38648436A2FF90B9C159F34E8A830185C47D808A5E9CE54DFF87F822;UpperCasedChecksum:02780BA8B20BDAFDDD87D065C5AA428752AA62BCFA663578C3C57E15E53246CA;SizeAsReceived:8843;Count:48
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131]) by VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131%4]) with mapi id 15.20.2856.019; Thu, 2 Apr 2020
 08:44:19 +0000
Subject: Re: [yocto] Files get sporadically lost for native packages
To: yocto@lists.yoctoproject.org
References: <VI1PR05MB428643D97A9A175005473BDEA8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
 <3d12b857-51ef-7266-23d1-805fa1d256f8@windriver.com>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <VI1PR05MB428668BF04B6CC7F617C1FA2A8C60@VI1PR05MB4286.eurprd05.prod.outlook.com>
Date: Thu, 2 Apr 2020 10:44:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <3d12b857-51ef-7266-23d1-805fa1d256f8@windriver.com>
X-ClientProxiedBy: AM6PR08CA0001.eurprd08.prod.outlook.com
 (2603:10a6:20b:b2::13) To VI1PR05MB4286.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::27)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <b55f6948-417e-2d61-f69c-c82dbd4fd39c@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (87.150.34.83) by AM6PR08CA0001.eurprd08.prod.outlook.com (2603:10a6:20b:b2::13) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15 via Frontend Transport; Thu, 2 Apr 2020 08:44:19 +0000
X-Microsoft-Original-Message-ID: 
 <b55f6948-417e-2d61-f69c-c82dbd4fd39c@outlook.com>
X-TMN: [pKKXaghJhGcTtVg2heIVldUM5R02BmvE]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 88fdc8d6-caed-4186-d6cf-08d7d6e208d4
X-MS-TrafficTypeDiagnostic: VE1EUR03HT231:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	t9YXkXQcZGqMKt3ztUpaEEiOL0OEkyW9fOT5CfT2cqLbnL0ZMAwv2Gw9BrgblCD+4oMx6nANDf2Nb/7UBG1+hutp8y/K85eqv5OUyQdfw3WJe2h35eI55EzG0gHAiB2NmZafU7fjd7h9ErRgEO4lndjeBUgpdjkZpsFBQ/Z+QudVsxGcm6fAYUcd4RAEQlU7HtTdGQuKD5HzpkbDREiAB8hhH08fvmJTBtXoLPidD+Y=
X-MS-Exchange-AntiSpam-MessageData: 
	JU69I+kLH02Gc/tv3HG2bW+2yvlybH5Ol5l7JgnwEjAdlcfJ5iHsUl/MLIzCm7+J7wwzlQeAptyPJ5G+LXXzqxLaBBqTcR4CSCgJR4s20uA8ixs3ImoQsWRsyme4+NLxfUtNHLYPyPhGC+3Lz5w/3g==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88fdc8d6-caed-4186-d6cf-08d7d6e208d4
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2020 08:44:19.7732
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT231
Content-Type: multipart/alternative;
 boundary="------------2BDBE54343E9E87FB24E4B1B"
Content-Language: en-US

--------------2BDBE54343E9E87FB24E4B1B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

To answer your others questions... see below

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
Since the start of the test distribution I'm working on. But also for 
plain poky builds if I forcefully inject all of the python-native 
site-packages via local.conf (DEPENDS_class-native += "..."), without 
actually using them in the recipe scope
> How often do you think it's happening: 1 in 3 builds, 1 in 10?
See the other mail - looks like it heavily depends on the host
> Tell us about your machine: OS,version, disk, CPUs, ram
See the other mail
> Do you do anything special in your conf dir? Send local.conf perhaps.
No custom modification (just for testing the DEPENDS-injection)
> Do you have any local bbappends or commits on top of poky or
> in other layers?
No
> Have you tried to simplify the build to eliminate problems
> potentially caused by other layers?
I did - see above
> Are you able to reproduce the problem on more than one build machine?
See the other mail
> Are you able to reproduce the problem on a different Linux distro?
Not really - Debian 9 was fine all other Hosts are Ubuntu based
> Are there other builds or users on the machine that may be causing
> extra load?
No the hosts are just being poorly equipped - at least the ones that 
produce this issue
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

--------------2BDBE54343E9E87FB24E4B1B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>To answer your others questions... see below<br>
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
    </blockquote>
    Since the start of the test distribution I'm working on. But also
    for plain poky builds if I forcefully inject all of the
    python-native site-packages via local.conf (DEPENDS_class-native &#43;=
    &quot;...&quot;), without actually using them in the recipe scope<br>
    <blockquote type="cite" cite="mid:3d12b857-51ef-7266-23d1-805fa1d256f8@windriver.com">How
      often do you think it's happening: 1 in 3 builds, 1 in 10?
      <br>
    </blockquote>
    See the other mail - looks like it heavily depends on the host<br>
    <blockquote type="cite" cite="mid:3d12b857-51ef-7266-23d1-805fa1d256f8@windriver.com">Tell
      us about your machine: OS,version, disk, CPUs, ram
      <br>
    </blockquote>
    See the other mail<br>
    <blockquote type="cite" cite="mid:3d12b857-51ef-7266-23d1-805fa1d256f8@windriver.com">Do
      you do anything special in your conf dir? Send local.conf perhaps.
      <br>
    </blockquote>
    No custom modification (just for testing the DEPENDS-injection)<br>
    <blockquote type="cite" cite="mid:3d12b857-51ef-7266-23d1-805fa1d256f8@windriver.com">Do
      you have any local bbappends or commits on top of poky or
      <br>
      in other layers?
      <br>
    </blockquote>
    No<br>
    <blockquote type="cite" cite="mid:3d12b857-51ef-7266-23d1-805fa1d256f8@windriver.com">Have
      you tried to simplify the build to eliminate problems
      <br>
      potentially caused by other layers?
      <br>
    </blockquote>
    I did - see above<br>
    <blockquote type="cite" cite="mid:3d12b857-51ef-7266-23d1-805fa1d256f8@windriver.com">Are
      you able to reproduce the problem on more than one build machine?
      <br>
    </blockquote>
    See the other mail<br>
    <blockquote type="cite" cite="mid:3d12b857-51ef-7266-23d1-805fa1d256f8@windriver.com">Are
      you able to reproduce the problem on a different Linux distro?
      <br>
    </blockquote>
    Not really - Debian 9 was fine all other Hosts are Ubuntu based<br>
    <blockquote type="cite" cite="mid:3d12b857-51ef-7266-23d1-805fa1d256f8@windriver.com">Are
      there other builds or users on the machine that may be causing
      <br>
      extra load?
      <br>
    </blockquote>
    No the hosts are just being poorly equipped - at least the ones that
    produce this issue<br>
    <blockquote type="cite" cite="mid:3d12b857-51ef-7266-23d1-805fa1d256f8@windriver.com">
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

--------------2BDBE54343E9E87FB24E4B1B--
