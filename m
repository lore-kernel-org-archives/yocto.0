Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.92.75.15])
 by mx.groups.io with SMTP id smtpd.web10.4565.1585398420213581992
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Mar 2020 05:27:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=qttCzvAj;
 spf=pass (domain: outlook.com, ip: 40.92.75.15, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U/o8W92qj67i7de7crhKP9rZsvzHq+lP8IUf2p/hPQJG0IcjXi/g44QMc/I3bT8iuV9pHG5F+D7bWpk6bFKyD8uoo4l1rR6HUTmoBKoj8U8ecea0e5cFHiKKwkCCGUyh9mdpbz9T+QFRt8MerWSkvgeDLZfQM1FceoPYdXkz6eo+MGYD1NpKsdOL7mCIgBQUGXreWa3hSLpKFPJIMMi7v5GPnJRaRb4LwohnZJDoqP/R890h1tHrWHXdA4V9NvYUg1v3h+VSOZ+q4IhLXFGtM7/t16tQgMzsdy1b/0t6YzgzT6HU/yrivwLKOFwroVO0JqqlMUCFz5s4wQbEqxUSWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZxMg5rZjEZnVg/GrwFL9MIISOume/52ahete7xsXf9c=;
 b=Z7pevaMQHOvgaZ8FROkeMEcvv3oXnz7x7nJelHhinaSgqYm97TTyMuzfUwUHCPOzJEqKmHmhEmmYM7LUrgfkeUy+ddpP+CcvIiVEIeIi8vdvq6M323Z1HGrb5X+zoi00gUSw/Xb4mE+8L6iBkMWiLl3yb0C6S1Tdm5CceZj2cqm+DFM9kD8X3nIw9cWchwpqk2RTfU6sbGvT+1s9c/SfNN24ixpaxfS2tbcqo6SBVoGxQLNbtzw4iNvUrmC/mintwGwQeyV7jrJqrCyPdnVI38rDTIG4PAv+vLutvCNgH83OhcOStEIMZ0jTUmNBRG8E8O7Kwkm0+3b/lrOx5Yxb2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZxMg5rZjEZnVg/GrwFL9MIISOume/52ahete7xsXf9c=;
 b=qttCzvAj17F8TroClxB4JjxTR6ncWvfGCqA6ij+188OH1GkfeuI3y87R4dLGnVuFsPu9rRcHuahLAp1p+UHNykl6z1Oi+VJOB+iUNhgNregur5yeI7MHQeO7qSW50a83qnLlqaOvGG6dPep3wY14J58E1JxV5ATng9BjfDfPcO/qiAJb9sOw+LTC/DeA1uiT/k3V6JbYDxdfdL1KEJrvZ5gAs+44FrkTXFtEnLfoY19zbU7dkdDEN0Nfsjjcs2+ql90FgNh6cT0C7xwwaKh237ivUuUPIotAlFYpgEhaN1C1e87EAztn5hpbvoKUlRoVMv5MgGDDOLCxpz6ksz+C+Q==
Received: from DB3EUR04FT056.eop-eur04.prod.protection.outlook.com
 (2a01:111:e400:7e0c::40) by
 DB3EUR04HT020.eop-eur04.prod.protection.outlook.com (2a01:111:e400:7e0c::311)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.17; Sat, 28 Mar
 2020 12:26:58 +0000
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com (10.152.24.59) by
 DB3EUR04FT056.mail.protection.outlook.com (10.152.24.69) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Sat, 28 Mar 2020 12:26:58 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:313E8F2DBCF49C815EF26B87633EA6C1E727A6D6E2CA3D961B0FCA124CF965CF;UpperCasedChecksum:49FE751E72585C430ADFBFAC83CAACC3FB74B9EE3BF2B23F8E10A594E9F3F1C6;SizeAsReceived:8651;Count:46
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131]) by VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131%4]) with mapi id 15.20.2856.019; Sat, 28 Mar 2020
 12:26:58 +0000
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Subject: Files get sporadically lost for native packages
Message-ID: 
 <VI1PR05MB428643D97A9A175005473BDEA8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
Date: Sat, 28 Mar 2020 13:26:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
X-ClientProxiedBy: AM6PR02CA0036.eurprd02.prod.outlook.com
 (2603:10a6:20b:6e::49) To VI1PR05MB4286.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::27)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <f7743986-0f44-0313-dacc-e18cb78ddae9@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (87.141.87.90) by AM6PR02CA0036.eurprd02.prod.outlook.com (2603:10a6:20b:6e::49) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19 via Frontend Transport; Sat, 28 Mar 2020 12:26:57 +0000
X-Microsoft-Original-Message-ID: 
 <f7743986-0f44-0313-dacc-e18cb78ddae9@outlook.com>
X-TMN: [lTfZE4FdFrqmldPLVkxQFMIqHHC3RuvO]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 46
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 85ef1402-8953-4711-3198-08d7d3134eb1
X-MS-TrafficTypeDiagnostic: DB3EUR04HT020:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZM5sdN8IM6Vzx5zqYE5ys5vOdm0t375HnhWN58sBIlJWW3PI4lD8zE0zXQEByuBhNJb98X1LECI46qHofNqJ8aSu++2t32hQ6BSjPNql+8W5zLKhauBm9/LXnxuU+jwdZ0Sdkoop7UqamJnwcDHyf+6w5wa8exgwXJkWx35u0HGqv6d5KEzt1MxZDpqX6+iU
X-MS-Exchange-AntiSpam-MessageData: 
	yo52/QnhLhnKNePfwySMbpTbBsKMH81SXTPFMJYTkLfmTqzMbw00VHSUl2BrgzAL9CHZIPhj32UkXhUxAo6jSxjnpGfBHecnA20OKENyv4IbygRnivFo1HiyD1F0v830Cp6SDIaONH/ufe4TREdK1A==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85ef1402-8953-4711-3198-08d7d3134eb1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2020 12:26:58.0275
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3EUR04HT020
Content-Type: multipart/alternative;
 boundary="------------21A1215E1607ABF4FD2D7DBC"
Content-Language: en-US

--------------21A1215E1607ABF4FD2D7DBC
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I'm facing the following error message sporadically on all branches I 
tried so far (master, zeus, warrior and thud)

The stack trace of python calls that resulted in this exception/failure was:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
      0001:
  *** 0002:extend_recipe_sysroot(d)
      0003:
File: '/build/poky/meta/classes/staging.bbclass', lineno: 551, function: 
extend_recipe_sysroot
      0547:                    dest = newmanifest[l]
      0548:                    if l.endswith("/"):
      0549:                        staging_copydir(l, targetdir, dest, 
seendirs)
      0550:                        continue
  *** 0551:                    staging_copyfile(l, targetdir, dest, 
postinsts, seendirs)
      0552:
      0553:    bb.note("Installed into sysroot: %s" % str(msg_adding))
      0554:    bb.note("Skipping as already exists in sysroot: %s" % 
str(msg_exists))
      0555:
File: '/build/poky/meta/classes/staging.bbclass', lineno: 152, function: 
staging_copyfile
      0148:        os.symlink(linkto, dest)
      0149:        #bb.warn(c)
      0150:    else:
      0151:        try:
  *** 0152:            os.link(c, dest)
      0153:        except OSError as err:
      0154:            if err.errno == errno.EXDEV:
      0155:                bb.utils.copyfile(c, dest)
      0156:            else:
Exception: FileNotFoundError: [Errno 2] No such file or directory: 
'/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/__init__.cpython-37.pyc' 
-> 
'/build/poky/build/tmp/work/qemux86_64-mine-linux/core-image-minimal-mine/1.0-r0/recipe-sysroot-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/__init__.cpython-37.pyc'

I already had a look at the manifest

cat manifest-x86_64-python3-msgcheck-native.populate_sysroot
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__init__.py
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/po.py
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/msgcheck.py
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/__init__.cpython-37.pyc
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/po.cpython-37.pyc
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/msgcheck.cpython-37.pyc
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/dependency_links.txt
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/requires.txt
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/top_level.txt
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/SOURCES.txt
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/PKG-INFO
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/entry_points.txt
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin/msgcheck
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/sysroot-providers/python3-msgcheck-native
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/sysroot-providers/
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/share/
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin/
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/

which states the file should be there, but when doing

find 
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__init__.py
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/po.cpython-37.pyc
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/__pycache__/msgcheck.cpython-37.pyc
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/po.py
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck/msgcheck.py
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/dependency_links.txt
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/requires.txt
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/top_level.txt
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/SOURCES.txt
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/PKG-INFO
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/entry_points.txt
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/bin/msgcheck
/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-native/usr/share

the file isn't there.

This happens to random python packages compiled as native (sometimes 
even for python-native itself), but (afaik) not for cross or target 
packages (I'm pretty sure because of the different packaging applied).
So I digged a little into the code 
classes/sstate.bbclass:sstate_install, which seems to create the 
sysroot-component dir and the manifest.
There is a gap between the manifest creation (line 285) and the 
hardlinking (line till 311).

Now my question is there any place where a file potentially could get 
lost? - at first glance there shouldn't be one - I have to admit that I 
don't fully understand all this subprocess magic in 
lib/oe/path.py:copyhardlinktree.
What I do to fix the issue is reopening the manifest and double check 
for missing files and remove them from the manifest, but this
feels wrong - so any advise is welcome...

Hope that someone more familiar with the topic could have a look.

Thanks

Konrad


--------------21A1215E1607ABF4FD2D7DBC
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
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
      &nbsp;*** 0551:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; staging_copyfile(l, targetdir, dest,
      postinsts, seendirs)<br>
      &nbsp;&nbsp;&nbsp;&nbsp; 0552:<br>
      &nbsp;&nbsp;&nbsp;&nbsp; 0553:&nbsp;&nbsp;&nbsp; bb.note(&quot;Installed into sysroot: %s&quot; %
      str(msg_adding))<br>
      &nbsp;&nbsp;&nbsp;&nbsp; 0554:&nbsp;&nbsp;&nbsp; bb.note(&quot;Skipping as already exists in sysroot: %s&quot;
      % str(msg_exists))<br>
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
      Exception: FileNotFoundError: [Errno 2] No such file or directory:
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
      cross or target packages (I'm pretty sure because of the different
      packaging applied).<br>
      So I digged a little into the code
      classes/sstate.bbclass:sstate_install, which seems to create the
      sysroot-component dir and the manifest.<br>
      There is a gap between the manifest creation (line 285) and the
      hardlinking (line till 311).<br>
      <br>
      Now my question is there any place where a file potentially could
      get lost? - at first glance there shouldn't be one - I have to
      admit that I don't fully understand all this subprocess magic in
      lib/oe/path.py:<span class="pl-en"><span class="pl-token" data-hydro-click="{&quot;event_type&quot;:&quot;code_navigation.click_on_symbol&quot;,&quot;payload&quot;:{&quot;action&quot;:&quot;click_on_symbol&quot;,&quot;repository_id&quot;:15777788,&quot;ref&quot;:&quot;master&quot;,&quot;language&quot;:&quot;Python&quot;,&quot;originating_url&quot;:&quot;https://github.com/openembedded/openembedded-core/blob/master/meta/lib/oe/path.py&quot;,&quot;user_id&quot;:46938494}}" data-hydro-click-hmac="8f0eb98e55388169d88549187b51753127312f5dcaa9fb63de0646ce6de15190">copyhardlinktree</span></span>.<br>
      What I do to fix the issue is reopening the manifest and double
      check for missing files and remove them from the manifest, but
      this<br>
      feels wrong - so any advise is welcome...</p>
    <p>Hope that someone more familiar with the topic could have a look.</p>
    <p>Thanks</p>
    <p>Konrad<br>
    </p>
  </body>
</html>

--------------21A1215E1607ABF4FD2D7DBC--
