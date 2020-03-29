Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.92.74.45])
 by mx.groups.io with SMTP id smtpd.web11.32545.1585504229511623852
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Mar 2020 10:50:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=EeGI/BLP;
 spf=pass (domain: outlook.com, ip: 40.92.74.45, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OnmjlQ3syvWRk7jxrqKzgpcDlBIyKYUpC7UdHWut9HxfN3h5eHJf9b+eq4EiAR9eHn+GmmIBNJ6WMe9UleAacvWe7iUKsh6TDig78EpcBPy/SdtTxycgKhTFDbIPdx+BC0fxvsX9rDe7H6BJfdIn0NulyUitENq5FQVO1Z/dV6Wu5MU229TdSMGrYVNTxIS7ZqWLZ9cRZ9PnY0kjNgncx5DrqfoDrpGFdWfuV3jaYdnLx1QPHYKKLC9Y44RmEsnP/p4whh4nabnTOT6JjKGF6TeWvuuhbS6fntL0BSTNw+TMsopGl3ZMPg641p+FkBkDpw8q0rkqpqO4OkVAvSqwVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sszR/k7Aim/jwwyUaDIczDBRhIEVpZWJVmUZFC6Fz04=;
 b=dFIJxKaGfJPTMPoTqWKpEGuQP/oXa6SrmcmA9efTGOglFNBFR8mdz0ZPuqz5DsbbPJXy6SYVLfbsNTysUzefguS3emslBDSLJV7a1o08ea9T7bfUIlfKBuDhJWTu7cWSspBr3NLb6fiJH1R8soCcwifEGdZ7zQrXizZ9BV7oixc/ts8hNTKOy9nJyhe+4SvznIYlPHR5yazNiytRp0ETmi9cXSar17Nlj0BTUzJ4dnc2fmNyXB7AyeT7mWi7OyIO5RglNKhUrBL6f5qpZw6NVBRDEgAmFPcvCEoD1L8CCutyL37zbazMcMZIlII6NOT+VdDoTyvpYdZjQD/a76zt+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sszR/k7Aim/jwwyUaDIczDBRhIEVpZWJVmUZFC6Fz04=;
 b=EeGI/BLPFSv1b0VcgenE6jEeHOCjowHGVYRpr47X+g9rI1pAz+c3WH1Vu6ljShqvg0C1xQO+ax7BJCyGJBldZpWyKMdhW2O+v2uLOKO47vx8rm6aUC1WlFQeLd1ByCbRNyyRiPrLQvZs3LgkocQf7kf+nMdEUA8kVxtnFtd7zudjVDHuQ8a3igCaADy4nS4c7LGVfhZgBlVKfT68r1cGNmrH21gG8Y+NBNMXb1JBrn9hECfI5EQt+p5VXStfovdJTuv2B33BIqXE2KiFkzctGou7ZFIwRUeVZWnXVuucK+CZn2xc2kPwcO6wSCSa50ESwXPtoFzz4Mrf0DdLt9Qghg==
Received: from HE1EUR04FT019.eop-eur04.prod.protection.outlook.com
 (2a01:111:e400:7e0d::4b) by
 HE1EUR04HT043.eop-eur04.prod.protection.outlook.com (2a01:111:e400:7e0d::198)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.17; Sun, 29 Mar
 2020 17:50:27 +0000
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com (10.152.26.55) by
 HE1EUR04FT019.mail.protection.outlook.com (10.152.26.117) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Sun, 29 Mar 2020 17:50:27 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:AFC2096FC36E059E3DEBC1721251BFBDB40417508EB5AA3D4B87A306EB487164;UpperCasedChecksum:9EF481A008039FBB29D3ABAF7C3E12B0758E65FFD36622837F1607256986BB13;SizeAsReceived:8748;Count:48
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131]) by VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131%4]) with mapi id 15.20.2856.019; Sun, 29 Mar 2020
 17:50:27 +0000
From: "Konrad Weihmann" <kweihmann@outlook.com>
Subject: Re: [yocto] Files get sporadically lost for native packages
To: yocto@lists.yoctoproject.org
References: <16007776CC746550.27565@lists.yoctoproject.org>
Message-ID: 
 <VI1PR05MB428665CED0FAEFDD87D05AD3A8CA0@VI1PR05MB4286.eurprd05.prod.outlook.com>
Date: Sun, 29 Mar 2020 19:50:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <16007776CC746550.27565@lists.yoctoproject.org>
X-ClientProxiedBy: AM5PR0701CA0003.eurprd07.prod.outlook.com
 (2603:10a6:203:51::13) To VI1PR05MB4286.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::27)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <b429f525-4a96-b5ba-3613-a7e11477c94f@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (79.215.5.195) by AM5PR0701CA0003.eurprd07.prod.outlook.com (2603:10a6:203:51::13) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.11 via Frontend Transport; Sun, 29 Mar 2020 17:50:26 +0000
X-Microsoft-Original-Message-ID: 
 <b429f525-4a96-b5ba-3613-a7e11477c94f@outlook.com>
X-TMN: [FXIesJ2K/syjmt/03LrSh0N5ufcxLZzm]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 4a90f4e1-47c1-4a06-7547-08d7d409aa1f
X-MS-TrafficTypeDiagnostic: HE1EUR04HT043:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	YaIfEN4HkI4EkUQo5Fy6fjj1uzip4jla6Rq4XmsoyLkUu+G7tacG6ihDVQtYQq4Ecw8tcnxT/qcNVx31BACyqUKs+ZmsGF30AW4hbPECdGBsltgbG5y5w/wj5bRy7xrChr1oJE6/aFFgt4qOSbxTZ8lsNKoNmYM6AxvKFsvrU47ZmiSxbXe2NJ9BBd+dGfMTgHzd/Jh9PzjMmoE9TS9amg73aMgfZmTkD9erKIXfRYI=
X-MS-Exchange-AntiSpam-MessageData: 
	dhIE+UJYqu0/T8JuVYRf2DMdpbBT4YJLzfGFSV932OWAuZQd/zKsfee6rKBfEUk5MIPt1AERGZWtRlsZHNfbb7gdtgDab2JyYRebYuRh9Q5ZKAv7ZiBmg7tVWHQ6YjUTJZmZgxkmV3M8EUir9yEEBA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a90f4e1-47c1-4a06-7547-08d7d409aa1f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2020 17:50:27.3944
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR04HT043
Content-Type: multipart/alternative;
 boundary="------------525489F7BD34F0757E0C54CA"
Content-Language: en-US

--------------525489F7BD34F0757E0C54CA
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

some updates on the issue.
I did some further investigation and it turns out that only python cache 
files are affected - not only when the manifest is created but also when 
files are being staged.

Here is a dump from one of my runs

2020-03-29T03:09:17.3893569Z ERROR: simple-c-1.0-r0 
do_prepare_recipe_sysroot: Error executing a python function in 
exec_python_func() autogenerated:
2020-03-29T03:09:17.3893931Z
2020-03-29T03:09:17.3894095Z The stack trace of python calls that 
resulted in this exception/failure was:
2020-03-29T03:09:17.3894483Z File: 'exec_python_func() autogenerated', 
lineno: 2, function: <module>
2020-03-29T03:09:17.3894608Z      0001:
2020-03-29T03:09:17.3894727Z  *** 0002:extend_recipe_sysroot(d)
2020-03-29T03:09:17.3894837Z      0003:
2020-03-29T03:09:17.3895143Z File: 
'/opt/build/poky/meta/classes/staging.bbclass', lineno: 570, function: 
extend_recipe_sysroot
2020-03-29T03:09:17.3895282Z      0566:                    if "/bin/" in 
l or "/sbin/" in l:
2020-03-29T03:09:17.3895415Z      0567:                        # defer 
/*bin/* files until last in case they need libs
2020-03-29T03:09:17.3895535Z      0568: binfiles[l] = (targetdir, dest)
2020-03-29T03:09:17.3895652Z      0569:                    else:
2020-03-29T03:09:17.3895780Z  *** 0570: staging_copyfile(l, targetdir, 
dest, postinsts, seendirs)
2020-03-29T03:09:17.3895901Z      0571:
2020-03-29T03:09:17.3896183Z      0572:    # Handle deferred binfiles
2020-03-29T03:09:17.3896313Z      0573:    for l in binfiles:
2020-03-29T03:09:17.3896429Z      0574:        (targetdir, dest) = 
binfiles[l]
2020-03-29T03:09:17.3896763Z File: 
'/opt/build/poky/meta/classes/staging.bbclass', lineno: 152, function: 
staging_copyfile
2020-03-29T03:09:17.3896904Z      0148:        os.symlink(linkto, dest)
2020-03-29T03:09:17.3897018Z      0149:        #bb.warn(c)
2020-03-29T03:09:17.3897129Z      0150:    else:
2020-03-29T03:09:17.3897233Z      0151:        try:
2020-03-29T03:09:17.3897341Z  *** 0152:            os.link(c, dest)
2020-03-29T03:09:17.3897455Z      0153:        except OSError as err:
2020-03-29T03:09:17.3897571Z      0154:            if err.errno == 
errno.EXDEV:
2020-03-29T03:09:17.3897691Z      0155: bb.utils.copyfile(c, dest)
2020-03-29T03:09:17.3897807Z      0156:            else:
2020-03-29T03:09:17.3898436Z Exception: FileNotFoundError: [Errno 2] No 
such file or directory: 
'/opt/build/build/tmp/sysroots-components/x86_64/python3-vulture-native/usr/lib/python3.8/site-packages/vulture/whitelists/__pycache__/unittest_whitelist.cpython-38.pyc' 
-> 
'/opt/build/build/tmp/work/core2-32-scatest-linux/simple-c/1.0-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/vulture/whitelists/__pycache__/unittest_whitelist.cpython-38.pyc'
2020-03-29T03:09:17.3898588Z
2020-03-29T03:09:17.3898936Z ERROR: Logfile of failure stored in: 
/opt/build/build/tmp/work/core2-32-scatest-linux/simple-c/1.0-r0/temp/log.do_prepare_recipe_sysroot.122175
2020-03-29T03:09:17.3899233Z NOTE: recipe simple-c-1.0-r0: task 
do_prepare_recipe_sysroot: Failed
2020-03-29T03:09:17.3936565Z ERROR: Task 
(/opt/build/meta-sca/recipes-sca-test/code-from-elsewhere/simple-c.bb:do_prepare_recipe_sysroot) 
failed with exit code '1'
2020-03-29T03:09:17.3956520Z NOTE: Running task 3920 of 5451 
(/opt/build/poky/meta/recipes-devtools/python/python3-git_3.0.5.bb:do_fetch)

After reading a bit about 
pyc-files(https://docs.python.org/3/library/py_compile.html#py_compile.PycInvalidationMode),
I suspect some of the files being invalidated, although I still haven't 
figured out how that is done.
After forcefully removing all cache files from all native packages, it 
seems to work - but still I think it just hides the general issue 
causing this.

Current summary:

- a lot of native python packages are required by multiple recipes (via 
DEPENDS)
- this effect is only visible under heavy load (on a 16+ core machine: 
never happened so far, 8 core: happens occasionally, 2 core: happens 
nearly every time)
- only python cache files (.pyc) are affected
- error occurs at random packages in do_prepare_recipe_sysroot
- some pyc files set in the package manifest are not present in the 
filesystem

On 28.03.20 13:26, Konrad Weihmann wrote:
>
> Hi,
>
> I'm facing the following error message sporadically on all branches I 
> tried so far (master, zeus, warrior and thud)
>
> The stack trace of python calls that resulted in this 
> exception/failure was:
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:extend_recipe_sysroot(d)
>      0003:
> File: '/build/poky/meta/classes/staging.bbclass', lineno: 551, 
> function: extend_recipe_sysroot
>      0547:                    dest = newmanifest[l]
>      0548:                    if l.endswith("/"):
>      0549:                        staging_copydir(l, targetdir, dest, 
> seendirs)
>      0550:                        continue
>  *** 0551:                    staging_copyfile(l, targetdir, dest, 
> postinsts, seendirs)
>      0552:
>      0553:    bb.note("Installed into sysroot: %s" % str(msg_adding))
>      0554:    bb.note("Skipping as already exists in sysroot: %s" % 
> str(msg_exists))
>      0555:
> File: '/build/poky/meta/classes/staging.bbclass', lineno: 152, 
> function: staging_copyfile
>      0148:        os.symlink(linkto, dest)
>      0149:        #bb.warn(c)
>      0150:    else:
>      0151:        try:
>  *** 0152:            os.link(c, dest)
>      0153:        except OSError as err:
>      0154:            if err.errno == errno.EXDEV:
>      0155:                bb.utils.copyfile(c, dest)
>      0156:            else:
> Exception: FileNotFoundError: [Errno 2] No such file or directory: 
> '/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/__init__.cpython-37.pyc' 
> -> 
> '/build/poky/build/tmp/work/qemux86_64-mine-linux/core-image-minimal-mine/1.0-r0/recipe-sysroot-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/__init__.cpython-37.pyc'
>
> I already had a look at the manifest
>
> cat manifest-x86_64-python3-msgcheck-native.populate_sysroot
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__init__.py
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/po.py
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/msgcheck.py
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/__init__.cpython-37.pyc
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/po.cpython-37.pyc
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/msgcheck.cpython-37.pyc
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/dependency_links.txt
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/requires.txt
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/top_level.txt
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/SOURCES.txt
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/PKG-INFO
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/entry_points.txt
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin/msgcheck
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/sysroot-providers/python3-msgcheck-native
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/sysroot-providers/
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/share/
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin/
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/
>
> which states the file should be there, but when doing
>
> find 
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__init__.py
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/po.cpython-37.pyc
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/msgcheck.cpython-37.pyc
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/po.py
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/msgcheck.py
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/dependency_links.txt
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/requires.txt
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/top_level.txt
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/SOURCES.txt
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/PKG-INFO
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/entry_points.txt
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin/msgcheck
> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/share
>
> the file isn't there.
>
> This happens to random python packages compiled as native (sometimes 
> even for python-native itself), but (afaik) not for cross or target 
> packages (I'm pretty sure because of the different packaging applied).
> So I digged a little into the code 
> classes/sstate.bbclass:sstate_install, which seems to create the 
> sysroot-component dir and the manifest.
> There is a gap between the manifest creation (line 285) and the 
> hardlinking (line till 311).
>
> Now my question is there any place where a file potentially could get 
> lost? - at first glance there shouldn't be one - I have to admit that 
> I don't fully understand all this subprocess magic in 
> lib/oe/path.py:copyhardlinktree.
> What I do to fix the issue is reopening the manifest and double check 
> for missing files and remove them from the manifest, but this
> feels wrong - so any advise is welcome...
>
> Hope that someone more familiar with the topic could have a look.
>
> Thanks
>
> Konrad
>
>
> 

--------------525489F7BD34F0757E0C54CA
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>some updates on the issue.<br>
      I did some further investigation and it turns out that only python
      cache files are affected - not only when the manifest is created
      but also when files are being staged.</p>
    <p>Here is a dump from one of my runs<br>
      <br>
      2020-03-29T03:09:17.3893569Z ERROR: simple-c-1.0-r0
      do_prepare_recipe_sysroot: Error executing a python function in
      exec_python_func() autogenerated:<br>
      2020-03-29T03:09:17.3893931Z <br>
      2020-03-29T03:09:17.3894095Z The stack trace of python calls that
      resulted in this exception/failure was:<br>
      2020-03-29T03:09:17.3894483Z File: 'exec_python_func()
      autogenerated', lineno: 2, function: &lt;module&gt;<br>
      2020-03-29T03:09:17.3894608Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0001:<br>
      2020-03-29T03:09:17.3894727Z&nbsp; *** 0002:extend_recipe_sysroot(d)<br>
      2020-03-29T03:09:17.3894837Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0003:<br>
      2020-03-29T03:09:17.3895143Z File:
      '/opt/build/poky/meta/classes/staging.bbclass', lineno: 570,
      function: extend_recipe_sysroot<br>
      2020-03-29T03:09:17.3895282Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0566:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if
      &quot;/bin/&quot; in l or &quot;/sbin/&quot; in l:<br>
      2020-03-29T03:09:17.3895415Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0567:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #
      defer /*bin/* files until last in case they need libs<br>
      2020-03-29T03:09:17.3895535Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0568:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      binfiles[l] = (targetdir, dest)<br>
      2020-03-29T03:09:17.3895652Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0569:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else:<br>
      2020-03-29T03:09:17.3895780Z&nbsp; *** 0570:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      staging_copyfile(l, targetdir, dest, postinsts, seendirs)<br>
      2020-03-29T03:09:17.3895901Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0571:<br>
      2020-03-29T03:09:17.3896183Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0572:&nbsp;&nbsp;&nbsp; # Handle deferred
      binfiles<br>
      2020-03-29T03:09:17.3896313Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0573:&nbsp;&nbsp;&nbsp; for l in binfiles:<br>
      2020-03-29T03:09:17.3896429Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0574:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (targetdir, dest) =
      binfiles[l]<br>
      2020-03-29T03:09:17.3896763Z File:
      '/opt/build/poky/meta/classes/staging.bbclass', lineno: 152,
      function: staging_copyfile<br>
      2020-03-29T03:09:17.3896904Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0148:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; os.symlink(linkto,
      dest)<br>
      2020-03-29T03:09:17.3897018Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0149:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #bb.warn(c)<br>
      2020-03-29T03:09:17.3897129Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0150:&nbsp;&nbsp;&nbsp; else:<br>
      2020-03-29T03:09:17.3897233Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0151:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try:<br>
      2020-03-29T03:09:17.3897341Z&nbsp; *** 0152:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; os.link(c,
      dest)<br>
      2020-03-29T03:09:17.3897455Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0153:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; except OSError as
      err:<br>
      2020-03-29T03:09:17.3897571Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0154:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if err.errno ==
      errno.EXDEV:<br>
      2020-03-29T03:09:17.3897691Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0155:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      bb.utils.copyfile(c, dest)<br>
      2020-03-29T03:09:17.3897807Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0156:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else:<br>
      2020-03-29T03:09:17.3898436Z Exception: FileNotFoundError: [Errno
      2] No such file or directory:
'/opt/build/build/tmp/sysroots-components/x86_64/python3-vulture-native/usr/lib/python3.8/site-packages/vulture/whitelists/__pycache__/unittest_whitelist.cpython-38.pyc'
      -&gt;
'/opt/build/build/tmp/work/core2-32-scatest-linux/simple-c/1.0-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/vulture/whitelists/__pycache__/unittest_whitelist.cpython-38.pyc'<br>
      2020-03-29T03:09:17.3898588Z <br>
      2020-03-29T03:09:17.3898936Z ERROR: Logfile of failure stored in:
/opt/build/build/tmp/work/core2-32-scatest-linux/simple-c/1.0-r0/temp/log.do_prepare_recipe_sysroot.122175<br>
      2020-03-29T03:09:17.3899233Z NOTE: recipe simple-c-1.0-r0: task
      do_prepare_recipe_sysroot: Failed<br>
      2020-03-29T03:09:17.3936565Z ERROR: Task
(/opt/build/meta-sca/recipes-sca-test/code-from-elsewhere/simple-c.bb:do_prepare_recipe_sysroot)
      failed with exit code '1'<br>
      2020-03-29T03:09:17.3956520Z NOTE: Running task 3920 of 5451
(/opt/build/poky/meta/recipes-devtools/python/python3-git_3.0.5.bb:do_fetch)</p>
    <p>After reading a bit about pyc-files(<a class="moz-txt-link-freetext" href="https://docs.python.org/3/library/py_compile.html#py_compile.PycInvalidationMode">https://docs.python.org/3/library/py_compile.html#py_compile.PycInvalidationMode</a>),<br>
      I suspect some of the files being invalidated, although I still
      haven't figured out how that is done.<br>
      After forcefully removing all cache files from all native
      packages, it seems to work - but still I think it just hides the
      general issue causing this.<br>
    </p>
    <p>Current summary:</p>
    <p>- a lot of native python packages are required by multiple
      recipes (via DEPENDS)<br>
      - this effect is only visible under heavy load (on a 16&#43; core
      machine: never happened so far, 8 core: happens occasionally, 2
      core: happens nearly every time)<br>
      - only python cache files (.pyc) are affected<br>
      - error occurs at random packages in do_prepare_recipe_sysroot<br>
      - some pyc files set in the package manifest are not present in
      the filesystem<br>
    </p>
    <div class="moz-cite-prefix">On 28.03.20 13:26, Konrad Weihmann
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:16007776CC746550.27565@lists.yoctoproject.org">
      
      <p>Hi,</p>
      <p>I'm facing the following error message sporadically on all
        branches I tried so far (master, zeus, warrior and thud)<br>
      </p>
      <p>The stack trace of python calls that resulted in this
        exception/failure was:<br>
        File: 'exec_python_func() autogenerated', lineno: 2, function:
        &lt;module&gt;<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0001:<br>
        &nbsp;*** 0002:extend_recipe_sysroot(d)<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0003:<br>
        File: '/build/poky/meta/classes/staging.bbclass', lineno: 551,
        function: extend_recipe_sysroot<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0547:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dest = newmanifest[l]<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0548:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if l.endswith(&quot;/&quot;):<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0549:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; staging_copydir(l, targetdir,
        dest, seendirs)<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0550:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continue<br>
        &nbsp;*** 0551:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; staging_copyfile(l, targetdir,
        dest, postinsts, seendirs)<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0552:<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0553:&nbsp;&nbsp;&nbsp; bb.note(&quot;Installed into sysroot: %s&quot; %
        str(msg_adding))<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0554:&nbsp;&nbsp;&nbsp; bb.note(&quot;Skipping as already exists in sysroot:
        %s&quot; % str(msg_exists))<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0555:<br>
        File: '/build/poky/meta/classes/staging.bbclass', lineno: 152,
        function: staging_copyfile<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0148:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; os.symlink(linkto, dest)<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0149:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #bb.warn(c)<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0150:&nbsp;&nbsp;&nbsp; else:<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0151:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try:<br>
        &nbsp;*** 0152:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; os.link(c, dest)<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0153:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; except OSError as err:<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0154:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if err.errno == errno.EXDEV:<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0155:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.utils.copyfile(c, dest)<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 0156:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else:<br>
        Exception: FileNotFoundError: [Errno 2] No such file or
        directory:
'/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/__init__.cpython-37.pyc'
        -&gt;
'/build/poky/build/tmp/work/qemux86_64-mine-linux/core-image-minimal-mine/1.0-r0/recipe-sysroot-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/__init__.cpython-37.pyc'</p>
      <p>I already had a look at the manifest</p>
      <p>cat manifest-x86_64-python3-msgcheck-native.populate_sysroot <br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__init__.py<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/po.py<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/msgcheck.py<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/__init__.cpython-37.pyc<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/po.cpython-37.pyc<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/msgcheck.cpython-37.pyc<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/dependency_links.txt<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/requires.txt<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/top_level.txt<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/SOURCES.txt<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/PKG-INFO<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/entry_points.txt<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin/msgcheck<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/sysroot-providers/python3-msgcheck-native<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/sysroot-providers/<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/share/<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin/<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/<br>
      </p>
      <p>which states the file should be there, but when doing <br>
      </p>
      <p>find
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__init__.py<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/po.cpython-37.pyc<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/msgcheck.cpython-37.pyc<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/po.py<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/msgcheck.py<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/dependency_links.txt<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/requires.txt<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/top_level.txt<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/SOURCES.txt<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/PKG-INFO<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/entry_points.txt<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin/msgcheck<br>
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/share<br>
      </p>
      <p>the file isn't there.</p>
      <p>This happens to random python packages compiled as native
        (sometimes even for python-native itself), but (afaik) not for
        cross or target packages (I'm pretty sure because of the
        different packaging applied).<br>
        So I digged a little into the code
        classes/sstate.bbclass:sstate_install, which seems to create the
        sysroot-component dir and the manifest.<br>
        There is a gap between the manifest creation (line 285) and the
        hardlinking (line till 311).<br>
        <br>
        Now my question is there any place where a file potentially
        could get lost? - at first glance there shouldn't be one - I
        have to admit that I don't fully understand all this subprocess
        magic in lib/oe/path.py:<span class="pl-en"><span class="pl-token" data-hydro-click="{&quot;event_type&quot;:&quot;code_navigation.click_on_symbol&quot;,&quot;payload&quot;:{&quot;action&quot;:&quot;click_on_symbol&quot;,&quot;repository_id&quot;:15777788,&quot;ref&quot;:&quot;master&quot;,&quot;language&quot;:&quot;Python&quot;,&quot;originating_url&quot;:&quot;https://github.com/openembedded/openembedded-core/blob/master/meta/lib/oe/path.py&quot;,&quot;user_id&quot;:46938494}}" data-hydro-click-hmac="8f0eb98e55388169d88549187b51753127312f5dcaa9fb63de0646ce6de15190">copyhardlinktree</span></span>.<br>
        What I do to fix the issue is reopening the manifest and double
        check for missing files and remove them from the manifest, but
        this<br>
        feels wrong - so any advise is welcome...</p>
      <p>Hope that someone more familiar with the topic could have a
        look.</p>
      <p>Thanks</p>
      <p>Konrad<br>
      </p>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------525489F7BD34F0757E0C54CA--
