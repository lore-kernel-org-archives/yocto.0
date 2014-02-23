Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EF2EE00867
	for <yocto@yoctoproject.org>; Sat, 22 Feb 2014 17:08:05 -0800 (PST)
Received: by mail-ve0-f177.google.com with SMTP id db12so3284460veb.22
	for <yocto@yoctoproject.org>; Sat, 22 Feb 2014 17:08:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=OOXCp0EP+UPnSSQ/z2a+XXbsHK2I4/C1fotPRswOIhs=;
	b=SkgVmBNH4yY6A6pmsP8b7KSxDw6iwoT1eAavvfkPAfBNeKm6i0TMxz2lkRifVTiLZu
	sD9amg1+WjC4ocmRMx4rup5gDvdfog8QXaK4iyt/xA7w3H6c5xF+g1Rf8Yt0ouWxok/7
	tf4cSMH5dG9LT5LZ/ri/mSdYWaSXrTVJ54qeEtOyHI0NT2L3+KN3HQDG2xQ/p3KGJao8
	M8CWM5BV/zvogorn1zG3ctjIfhLx6ukekztUs9k9SqCxtkplfFdd213ouimt3DiDPIdt
	hEXO8bdR48hU9nMLtcjxAvB30FufZBtQT5B1NvBE7JP3uVtTTqdGOcxVedLN5OwqDSKV
	81gw==
X-Received: by 10.52.191.9 with SMTP id gu9mr7500946vdc.37.1393117684622; Sat,
	22 Feb 2014 17:08:04 -0800 (PST)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.239.135 with HTTP; Sat, 22 Feb 2014 17:07:24 -0800 (PST)
In-Reply-To: <53077A05.7090906@windriver.com>
References: <CANyK_8eB8Rt-GqCbbw6Tu6NHuUPTeKZy+ZPRQ1eTqLb=SDPG_g@mail.gmail.com>
	<53077A05.7090906@windriver.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Sun, 23 Feb 2014 01:07:24 +0000
X-Google-Sender-Auth: RjLCisqksBdAbOIekjgliBNhobk
Message-ID: <CANyK_8cSbbgkbwojmpmUzM6-TzgTg7q7bpnuEvj0bvOgP74s0Q@mail.gmail.com>
To: Randy MacLeod <randy.macleod@windriver.com>
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
X-List-Received-Date: Sun, 23 Feb 2014 01:08:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 21 February 2014 16:08, Randy MacLeod <randy.macleod@windriver.com> wrote:
> On 14-02-18 04:27 PM, Paul Barker wrote:
>>
>> I've just thrown together a couple of things which may be useful.
>> They're currently slightly hackish but I could improve them and share
>> them/submit them as patches if wanted:
>>
>> 1) I've wrote a custom python test runner which runs test suites and
>> outputs the format expected by ptest natively instead of needing the
>> sed magic in
>> "openembedded-core/meta/recipes-devtools/python/python/run-ptest".
>> I'm using it in my own project, might move the opkg test suite over to
>> it if I have time, and it might be useful for any other python test
>> suites. It's <50 lines of python :)
>>
>> 2) I've wrote a script which patches this test runner into python3's
>> own testsuite then runs the suite. You don't even to patch the
>> Makefile from the python source tree and install it (as in the python
>> recipe in openembedded-core). It should run on anything with python3
>> installed with the python standard library (as the standard library
>> already includes all the tests). This may be a good option for adding
>> ptest support to the python3 recipe - it'd just be a single 50-line
>> 'run-ptest' script written in python.
>>
>> Does that sound interesting to anyone else?
>
> Yes, this seems to be very useful. Can you send a patch for review?
>

I've never worked with the ptest system before but I'm giving it a
go... I'm mostly relying on https://wiki.yoctoproject.org/wiki/Ptest
for info.

It does look like the python3 test suite crashes with out-of-memory
errors on qemux86 with the default configuration of 256 MB RAM. I've
bumped it up to 1 GB and it seems to be working. Is there any way to
note this in the ptest system so that this test suite is skipped if
there isn't enough memory?

Also, I'm getting several failures within the testsuite which I'm not
seeing when I run it on my desktop. Do we keep data on whether each
ptest package is expected to pass or has known failures?

Cheers,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

