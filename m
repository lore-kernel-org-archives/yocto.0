Return-Path: <Randy.MacLeod@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C738E008A4
	for <yocto@yoctoproject.org>; Sun, 23 Feb 2014 13:50:57 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s1NLonDj008559
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 23 Feb 2014 13:50:49 -0800 (PST)
Received: from [147.11.118.96] (147.11.118.96) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Sun, 23 Feb 2014 13:50:49 -0800
Message-ID: <530A6D37.3040606@windriver.com>
Date: Sun, 23 Feb 2014 16:50:47 -0500
From: Randy MacLeod <randy.macleod@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Paul Barker <paul@paulbarker.me.uk>
References: <CANyK_8eB8Rt-GqCbbw6Tu6NHuUPTeKZy+ZPRQ1eTqLb=SDPG_g@mail.gmail.com>
	<53077A05.7090906@windriver.com>
	<CANyK_8cSbbgkbwojmpmUzM6-TzgTg7q7bpnuEvj0bvOgP74s0Q@mail.gmail.com>
In-Reply-To: <CANyK_8cSbbgkbwojmpmUzM6-TzgTg7q7bpnuEvj0bvOgP74s0Q@mail.gmail.com>
X-Originating-IP: [147.11.118.96]
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Sun, 23 Feb 2014 21:50:58 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-02-22 08:07 PM, Paul Barker wrote:
> On 21 February 2014 16:08, Randy MacLeod <randy.macleod@windriver.com> wrote:
>> On 14-02-18 04:27 PM, Paul Barker wrote:
>>>
>>> I've just thrown together a couple of things which may be useful.
>>> They're currently slightly hackish but I could improve them and share
>>> them/submit them as patches if wanted:
>>>
>>> 1) I've wrote a custom python test runner which runs test suites and
>>> outputs the format expected by ptest natively instead of needing the
>>> sed magic in
>>> "openembedded-core/meta/recipes-devtools/python/python/run-ptest".
>>> I'm using it in my own project, might move the opkg test suite over to
>>> it if I have time, and it might be useful for any other python test
>>> suites. It's <50 lines of python :)
>>>
>>> 2) I've wrote a script which patches this test runner into python3's
>>> own testsuite then runs the suite. You don't even to patch the
>>> Makefile from the python source tree and install it (as in the python
>>> recipe in openembedded-core). It should run on anything with python3
>>> installed with the python standard library (as the standard library
>>> already includes all the tests). This may be a good option for adding
>>> ptest support to the python3 recipe - it'd just be a single 50-line
>>> 'run-ptest' script written in python.
>>>
>>> Does that sound interesting to anyone else?
>>
>> Yes, this seems to be very useful. Can you send a patch for review?
>>
>
> I've never worked with the ptest system before but I'm giving it a
> go... I'm mostly relying on https://wiki.yoctoproject.org/wiki/Ptest
> for info.
>
> It does look like the python3 test suite crashes with out-of-memory
> errors on qemux86 with the default configuration of 256 MB RAM. I've
> bumped it up to 1 GB and it seems to be working.

I've seen similar problems and dealt with it the same way.
Some tests deliberately try to cause an OOM and I assert that
they don't belong in ptest runs.

> Is there any way to
> note this in the ptest system so that this test suite is skipped if
> there isn't enough memory?

Not that I'm aware of. Add to docs?

>
> Also, I'm getting several failures within the testsuite which I'm not
> seeing when I run it on my desktop. Do we keep data on whether each
> ptest package is expected to pass or has known failures?

Not that I know of. We should.

That's something that I've been meaning to do but I won't get to it
for until another project is done so don't wait for me. :)

../Randy

>
> Cheers,
>


-- 
# Randy MacLeod. SMTS, Linux, Wind River
Direct: 613.963.1350

