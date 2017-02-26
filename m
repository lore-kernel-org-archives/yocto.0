Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A402BE00935; Sun, 26 Feb 2017 13:21:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 386E6E0033D
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2017 13:21:24 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 25so1743013pgy.3
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2017 13:21:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=NSML8Cx5pGojLAC2oFNUh+taL1G+w+y8gR7+FOKZ3GM=;
	b=d4YhnUranuIItLoKV05uILjM5bv6mbs4FcdM6iTSsh7ijj0NYMq6yPD2qHNA6DRlzq
	DyF2JqS2UxroYqbs/vBRx0HC108aus4o1+bdN1SUlIYlUSMtun5n5CTV46/OiGb9ExvP
	QeS+24FWAVeU8u4vEBK7i/lhfAyydnS/9lYy7X3ZNDStn6w7TJzaw6cy0eiG6XuRnWqT
	kiQO8KFXU8WV5Z9hHqwDBxIqz56geRlDaqsjEDTvlvFh/yO9RuVCD7gmF+26S7aDRZVS
	omMe9kXl5rzHAB/gSqqzNYayz140qjG9paoZh27pPwbbxJlr5nU63Sdy34jW9CcHbdEQ
	KaSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=NSML8Cx5pGojLAC2oFNUh+taL1G+w+y8gR7+FOKZ3GM=;
	b=Cqn23D9vYCzMeCXBf6oN7qnMv1DnqyX39cGwdN0gNv0+Jce8bs509XB9UQiz+jYztt
	2FF9zFGJHgA0qlDmIleGJAZhk8061kl3c3J2ILCvfraU7qDpwgwntuE0v7BkOmxnPFw6
	OhvGTZFQjIRRReWpITGeZbwGnFOBVSjQ/Fc3XiRUia1RzOT4TBEMCUULcDsRN+KiC3uW
	jbv6msORQe5H6KUV3D/HiH+6H/z7FV7ZNmRv2gJnsm1Qa+Y+jO/F2dUpcPP26LZPyl3y
	AenSGiE1e7iURvxtPNh+a8F1Uenm29jrPaZrxV+zVgCkaB0SmEY9yVYOezAFmweWrfWj
	E38A==
X-Gm-Message-State: AMke39njZbEv8YVmsirL5d6Lsxl+lCXDwJl9aCwTAWUMeZuqRQBw6nvGs8HZFjEm8qKFyA==
X-Received: by 10.84.228.201 with SMTP id y9mr19822162pli.42.1488144084210;
	Sun, 26 Feb 2017 13:21:24 -0800 (PST)
Received: from Akusters-laptop.local ([2601:202:4001:9ea0:7d2b:a87c:bacc:b2bd])
	by smtp.googlemail.com with ESMTPSA id
	p73sm26203165pfj.47.2017.02.26.13.21.23 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 Feb 2017 13:21:23 -0800 (PST)
To: yocto@yoctoproject.org
References: <73297B9E-30BA-4F4F-9A05-60B4EA688E6E@mac.com>
	<CAJTo0LbRE+9JOVDd4revWXt_HinV2y6dAa0_54xvCxG45XMhqA@mail.gmail.com>
	<32e6d90b-8e54-5f3c-a895-8cac6bbfee6f@gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <c0b88240-74f5-f3ad-b2a2-84204f8ddc3b@gmail.com>
Date: Sun, 26 Feb 2017 13:21:22 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <32e6d90b-8e54-5f3c-a895-8cac6bbfee6f@gmail.com>
Subject: Re: Trying to build yocto-morty on ubuntu-16, machine reboots in the middle of the build
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
X-List-Received-Date: Sun, 26 Feb 2017 21:21:25 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 2/25/17 8:16 AM, Joshua Watt wrote:
> 
> On 02/24/2017 11:36 AM, Burton, Ross wrote:
>>
>> On 23 February 2017 at 13:24, William McKinney <sigsbeeus@mac.com
>> <mailto:sigsbeeus@mac.com>> wrote:
>>
>>     I’m trying to build the yocto-morty release on an ubuntu 16.04.2
>>     LTS box with 16GB of memory and plenty of disk space.  More than
>>     once the machine appears to just reboot in the middle of the
>>     build.  Has anyone else experienced this?  The krogoth and jethro
>>     release build successfully on the same box.
>>
>>
>> Sounds like you've got hardware problems - obviously there's nothing
>> that Yocto can be doing to induce a reboot.
>>
>> I'd start with a memcheck and extended SMART tests.
> FWIW, I was having similar problems and a good blast of compressed air
> to my CPU heat sink fixed the problem. I ran 'dmesg -w' while building
> and it was pretty obvious that my CPU was overheating because I got a
> lot of messages like:
> 
> [ 3657.188178] mce: [Hardware Error]: Machine check events logged
> [ 3957.206279] CPU2: Core temperature above threshold, cpu clock
> throttled (total events = 1005969)
> 
> I wonder if there are some changes in Morty that make it better utilize
> the CPU compared to the other releases?

It's not just Morty. I have had this issue with other releases and on
Master. In my cases, the issues tend to be limited to building on
laptops. I have not seen this on towers or servers.

Try tuning your build to reduce the number for cpus and threads used.
see  PARALLEL_MAKE and BB_NUMBER_THREADS.

- armin



> 
> Joshua Watt
> 

