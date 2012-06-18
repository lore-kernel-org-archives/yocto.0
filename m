Return-Path: <fredrik.hugosson@axis.com>
Received: from anubis.se.axis.com (anubis.se.axis.com [195.60.68.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 061FDE0145C
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 06:04:58 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by anubis.se.axis.com (Postfix) with ESMTP id 9464419DF3;
	Mon, 18 Jun 2012 15:04:56 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at anubis.se.axis.com
Received: from anubis.se.axis.com ([127.0.0.1])
	by localhost (anubis.se.axis.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 9y9ocRGzOfwA; Mon, 18 Jun 2012 15:04:55 +0200 (CEST)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by anubis.se.axis.com (Postfix) with ESMTP id B0C3419DFB;
	Mon, 18 Jun 2012 15:04:53 +0200 (CEST)
Received: from xmail2.se.axis.com (xmail2.se.axis.com [10.0.5.74])
	by seth.se.axis.com (Postfix) with ESMTP id 249163E0DE;
	Mon, 18 Jun 2012 15:04:42 +0200 (CEST)
Received: from [10.93.149.54] (10.93.149.54) by smtp-x.axis.com (10.0.5.74)
	with Microsoft SMTP Server (TLS) id 8.2.176.0; Mon, 18 Jun 2012 15:04:41
	+0200
Message-ID: <4FDF2766.7000309@axis.com>
Date: Mon, 18 Jun 2012 15:04:38 +0200
From: Fredrik Hugosson <fredrik.hugosson@axis.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.16) Gecko/20120506 Icedove/3.0.11
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <20120614132601.GB29124@giant> <1340019794.8481.10.camel@ted>
In-Reply-To: <1340019794.8481.10.camel@ted>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Discussion: Package testing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 18 Jun 2012 13:04:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 06/18/2012 01:43 PM, Richard Purdie wrote:
> On Thu, 2012-06-14 at 15:26 +0200, Björn Stenberg wrote:
>> Many source packages include their own package test suites. We are
>> looking at running these tests on target in a structured way, and I
>> would like a discussion about how to best fit this into the Yocto
>> framework.
>>
>> The actions that need to be performed for a package test are roughly:
>>
>> 1) Build the test suite
>> 2) Make the test suite appear on target
>> 3) Run the test suite
>> 4) Parse the results
>>
>> Each action can be done in several ways, and there are different
>> considerations for each solution.
>>
>> 1) Build the test suite
>> -----------------------
>> Many package tests are simply bash scripts that run the packaged
>> binaries in various ways, but often the test suites also include
>> binary tools that are not part of the normal package build. These
>> tools have to be built for package testing to work.
>>
>> Additionally, many packages build and run the test in a single
>> command, such as "make check", which is obviously unsuitable for
>> cross-compiled packages.
>>
>> We can solve this in different ways:
>>
>> a) Run the test build+run jobs on target. This avoids the need to
>> modify packages, but building code on target can get quite expensive
>> in terms of disk space. This in turn means many tests would require a
>> harddisk or network disk to run.
>>
>> b) Patch the makefiles to split test building and test running.
>> Patching makefiles mean we get an additional maintenance and/or
>> upstreaming burden, but we should be able to do this in ways that are
>> acceptable to upstream. This is our suggestion.
>
> There are some good questions here :)

Yes there are!

> I think in general, we should be aiming for b) since that falls well
> into some of the ideas below. Upstreams should be amenable to splitting
> these into two targets (assuming "make check" just runs one after the
> other) so we shouldn't have to carry patches in most cases long term.
>

I think you both might be missing some cases here. The problem is that 
'make check' does not have a standardized meaning.

 From the top of my head, I can think of these different variants:
1) Function test level with testing run on target, package cross-compiled
2) Function test level with testing run on host, package cross-compiled
3) Function test level with testing run on host, package compiled for host
4) Unit test level with testing run on target, package cross-compiled
5) Unit test level with testing run on host, package compiled for host

I think that we need to be able to separate the different uses of 'make 
check' to be able to support testing nicely.

>> 2) Make the test suite appear on target
>> ---------------------------------------
>> The test suite and utilities obviously have to be executable by the
>> target system in order to run. There are a few options for this:
>>
>> a) Copy all test files to the target at test run time, from the build
>> dir, using whatever means available (scp, ftp etc). This limits
>> testing to targets/images with easy automatic file transfer abilities
>> installed.
>>
>> b) NFS mount the build dir to access the full work dir and hence the
>> test code. this limits testing to targets (and images) with network
>> +nfs support. Plus it blends the build env and runtime env in an
>> unpleasant way.
>>
>> c) Create ${PN}-ptest packages (in the model of -dev and -dbg) that
>> contain all test files and add those to the image and hence the
>> rootfs. This is our suggestion.
>
> I like the idea of test packages.

Would be very nice for functional tests, but it will not be so simple 
for unit testing. For unit tests I belive you need some build target 
too, which leads back to the comment above.

It might be a lot of autoconf hacking to get this working, don't know if 
there are any widely accepted standard targets for it.

/Regards
Fredrik Hugosson

