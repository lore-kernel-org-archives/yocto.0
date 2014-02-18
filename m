Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4270E006B5
	for <yocto@yoctoproject.org>; Tue, 18 Feb 2014 13:28:13 -0800 (PST)
Received: by mail-ve0-f178.google.com with SMTP id oy12so13999730veb.37
	for <yocto@yoctoproject.org>; Tue, 18 Feb 2014 13:28:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:content-type;
	bh=8I0TcONim8+eGgiWX1GeEVeLIOKnE0jFZWlzQIkkIXI=;
	b=u1ZTDI6qqV44n7otakWBL+HZz+xc3tvBv67FVMgqHw6jiQdFd6etSc3sgs+tTcEQg/
	kvVR7kW3srQZcWz1bntW46l4a3lZn3jTk5GH2OWmg3SqJ0hhCWFqaOKiOSPAUG7p2ix3
	Xu8RJVJFN1cSNdUHSe/PkdLEJ6ycfmxjx8D+t0aU5qJynUsJ0Y9Z+MQdvg3Ss1T5fESD
	cDc4AN7uTl8+TfjgHCs5/bUyxT4kQYHbwslh1fAyEm3mlZggHwuZPhlHB3qmtZJyfA3v
	IidOWJd2Ir0miciGhgpU+MNDmq40Ah5arXvcuzq8uMmD6rosn+/UVZTNUOdpGz31FnOr
	WpoQ==
X-Received: by 10.52.164.39 with SMTP id yn7mr15931468vdb.25.1392758892058;
	Tue, 18 Feb 2014 13:28:12 -0800 (PST)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.239.135 with HTTP; Tue, 18 Feb 2014 13:27:31 -0800 (PST)
From: Paul Barker <paul@paulbarker.me.uk>
Date: Tue, 18 Feb 2014 21:27:31 +0000
X-Google-Sender-Auth: uFaGoGBTl2iGH_QN3RcyRxE-qcw
Message-ID: <CANyK_8eB8Rt-GqCbbw6Tu6NHuUPTeKZy+ZPRQ1eTqLb=SDPG_g@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Python3 ptest and unittest
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 18 Feb 2014 21:28:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

I've just thrown together a couple of things which may be useful.
They're currently slightly hackish but I could improve them and share
them/submit them as patches if wanted:

1) I've wrote a custom python test runner which runs test suites and
outputs the format expected by ptest natively instead of needing the
sed magic in "openembedded-core/meta/recipes-devtools/python/python/run-ptest".
I'm using it in my own project, might move the opkg test suite over to
it if I have time, and it might be useful for any other python test
suites. It's <50 lines of python :)

2) I've wrote a script which patches this test runner into python3's
own testsuite then runs the suite. You don't even to patch the
Makefile from the python source tree and install it (as in the python
recipe in openembedded-core). It should run on anything with python3
installed with the python standard library (as the standard library
already includes all the tests). This may be a good option for adding
ptest support to the python3 recipe - it'd just be a single 50-line
'run-ptest' script written in python.

Does that sound interesting to anyone else?

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

