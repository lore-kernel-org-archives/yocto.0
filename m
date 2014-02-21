Return-Path: <Randy.MacLeod@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3C9DE007A1
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 08:08:46 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s1LG8bTM018932
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 21 Feb 2014 08:08:38 -0800 (PST)
Received: from [128.224.146.203] (128.224.146.203) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Fri, 21 Feb 2014 08:08:37 -0800
Message-ID: <53077A05.7090906@windriver.com>
Date: Fri, 21 Feb 2014 11:08:37 -0500
From: Randy MacLeod <randy.macleod@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Paul Barker <paul@paulbarker.me.uk>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <CANyK_8eB8Rt-GqCbbw6Tu6NHuUPTeKZy+ZPRQ1eTqLb=SDPG_g@mail.gmail.com>
In-Reply-To: <CANyK_8eB8Rt-GqCbbw6Tu6NHuUPTeKZy+ZPRQ1eTqLb=SDPG_g@mail.gmail.com>
X-Originating-IP: [128.224.146.203]
Subject: Re: Python3 ptest and unittest
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
X-List-Received-Date: Fri, 21 Feb 2014 16:08:46 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-02-18 04:27 PM, Paul Barker wrote:
> I've just thrown together a couple of things which may be useful.
> They're currently slightly hackish but I could improve them and share
> them/submit them as patches if wanted:
>
> 1) I've wrote a custom python test runner which runs test suites and
> outputs the format expected by ptest natively instead of needing the
> sed magic in "openembedded-core/meta/recipes-devtools/python/python/run-ptest".
> I'm using it in my own project, might move the opkg test suite over to
> it if I have time, and it might be useful for any other python test
> suites. It's <50 lines of python :)
>
> 2) I've wrote a script which patches this test runner into python3's
> own testsuite then runs the suite. You don't even to patch the
> Makefile from the python source tree and install it (as in the python
> recipe in openembedded-core). It should run on anything with python3
> installed with the python standard library (as the standard library
> already includes all the tests). This may be a good option for adding
> ptest support to the python3 recipe - it'd just be a single 50-line
> 'run-ptest' script written in python.
>
> Does that sound interesting to anyone else?


Yes, this seems to be very useful. Can you send a patch for review?

>


-- 
# Randy MacLeod. SMTS, Linux, Wind River
Direct: 613.963.1350

