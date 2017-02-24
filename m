Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DD63E00839; Fri, 24 Feb 2017 14:01:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ranshalit[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 429BFE0052B;
	Fri, 24 Feb 2017 14:01:28 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id r18so4935159wmd.3;
	Fri, 24 Feb 2017 14:01:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KMm+PuEhCBABMsFEZ3K7pkR2hqiMmnXuSOcgB/tqwgc=;
	b=FR+TblACaq/HrkYMWC5RqGJYKhBipo+xjgeXpZXEkPjao0ZYaT8ajByeyEf5jXIIP/
	Sql0qCtJ+UpqONYcQ9NUvtw03Qzy2XE09Fok1jNqN8VYjTnbWaJggSlTW2UMzAk8pfLq
	U4PAsT7bJ4Hh0LdsK/BzI+acMUc4cF3dSUCna2Eb7dot7duPRrdi1G9gHMZPLFwbTnaw
	K2/6iHbsv5Nyk2dCeth+SEWJVYPxNlxLrJSyGs5XBq0AlSQaNCq+pOqpIbsQ90baT8A2
	L9tGpwj3rm/c3dxVtsLfHXJ5lS2OCsHgKnX6vIymV+ti2oMSmOIuFipVcEXUsdjONDpw
	nRCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KMm+PuEhCBABMsFEZ3K7pkR2hqiMmnXuSOcgB/tqwgc=;
	b=Z+POjVOVOCZqD7gBSEFfvxudkp95Xi7k3c+wTHJYkec32bdCdcn8rmqi/8dNvGBlsD
	GpO0CAYcAmYQqHsxLX95vGNtShgf+Oue8tNt/XNvjixybC/nLFVb8gbmQMXN1qIxSOI7
	1ZevPsDrhFAu0pqFwjzVFqbz6kRVIM9mBWJzMnbCrPXVTR1Ev8wE3iLHi3XflPYBC+z5
	ScAUqFgWcmOt4Tkc0hRGMRSO8tSJmvCL6D2VLMBoVybo0kefN+VS3cPrfgGdT1hwFc84
	uDwoKeZSzumoFG6jtMCkzrVBdq/b5hjfmLO42Mbs4ebeh7qBBPndb19FNHKf5+b7XF9U
	c20Q==
X-Gm-Message-State: AMke39mk744msYZV34lh8vOy5XquvL/U3LiUl9v61C25VoGCq/YJDkAG7lQpB083GnwzYkcXydLqepykRSEysQ==
X-Received: by 10.28.150.194 with SMTP id y185mr4544596wmd.47.1487973688050;
	Fri, 24 Feb 2017 14:01:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.149.23 with HTTP; Fri, 24 Feb 2017 14:01:27 -0800 (PST)
In-Reply-To: <70f42899-aff2-11fe-24a5-5c0010b0c6ab@windriver.com>
References: <CAJ2oMh+nG5stwE0Ec5DRxKRNLbvXEebxzXw0Rk0rE_-4sZeakQ@mail.gmail.com>
	<70f42899-aff2-11fe-24a5-5c0010b0c6ab@windriver.com>
From: Ran Shalit <ranshalit@gmail.com>
Date: Sat, 25 Feb 2017 00:01:27 +0200
Message-ID: <CAJ2oMhLvnAmLxaiOeU4yVsYzTEnXEyrsz1XrTDptKm7SCDS3Hg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: meta-intel@yoctoproject.org,
	Yocto Project Discussion <yocto@yoctoproject.org>,
	linux-yocto@yoctoproject.org
Subject: Re: [linux-yocto] update kernel in local.conf
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
X-List-Received-Date: Fri, 24 Feb 2017 22:01:30 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 24, 2017 at 4:12 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 2017-02-24 4:02 AM, Ran Shalit wrote:
>>
>> Hello,
>>
>> I wanted to try update to rt-kernel to I added the following in
>> local.conf:
>>
>> #PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>> #PREFERRED_VERSION_linux-yocto ?= "4.4%"
>> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-rt"
>> PREFERRED_VERSION_linux-yocto-rt ?= "4.4%"
>>
>> Everything compiled well with
>> bitbake core-image-sato-sdk
>>
>> I then decided to return to the regular linux by doing:
>> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>> PREFERRED_VERSION_linux-yocto ?= "4.4%"
>> #PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-rt"
>> #PREFERRED_VERSION_linux-yocto-rt ?= "4.4%"
>>
>> But now I get errors as following:
>>
>> NOTE: Preparing RunQueue
>> WARNING:
>> /media/sde/yocto/poky/meta/recipes-sato/images/core-image-sato-sdk.bb.do_rootfs
>> is tainted from a forced run
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> ERROR: core-image-sato-sdk-1.0-r0 do_rootfs: Error executing a python
>> function in exec_python_func() autogenerated:
>>
>> The stack trace of python calls that resulted in this exception/failure
>> was:
>> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>>      0001:
>>  *** 0002:license_create_manifest(d)
>>      0003:
>> File: '/media/sde/yocto/poky/meta/classes/license.bbclass', lineno:
>> 48, function: license_create_manifest
>>      0044:    pkg_dic = {}
>>      0045:    for pkg in sorted(image_list_installed_packages(d)):
>>      0046:        pkg_info = os.path.join(d.getVar('PKGDATA_DIR', True),
>>      0047:                                'runtime-reverse', pkg)
>>  *** 0048:        pkg_name = os.path.basename(os.readlink(pkg_info))
>>      0049:
>>      0050:        pkg_dic[pkg_name] =
>> oe.packagedata.read_pkgdatafile(pkg_info)
>>      0051:        if not "LICENSE" in pkg_dic[pkg_name].keys():
>>      0052:            pkg_lic_name = "LICENSE_" + pkg_name
>> Exception: OSError: [Errno 2] No such file or directory:
>>
>> '/media/sde/yocto/poky/build/tmp/sysroots/congatec-qa3-64/pkgdata/runtime-reverse/kernel-4.4.26-rt19-yocto-preempt-rt'
>>
>> ERROR: core-image-sato-sdk-1.0-r0 do_rootfs: Function failed:
>> license_create_manifest
>> ERROR: Logfile of failure stored in:
>>
>> /media/sde/yocto/poky/build/tmp/work/congatec_qa3_64-poky-linux/core-image-sato-sdk/1.0-r0/temp/log.do_rootfs.13106
>> ERROR: Task 9
>> (/media/sde/yocto/poky/meta/recipes-sato/images/core-image-sato-sdk.bb,
>> do_rootfs) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 7025 tasks of which 7024 didn't need to
>> be rerun and 1 failed.
>>
>> Does anyone have any idea ?
>
>
> I don't have any idea, but I can confirm that I have seen the same thing
> in the past when switching kernels.
>
> If you switch back to the -rt provider, do a cleanall, and then go back
> to the standard linux-yocto .. it should go away.
>
I actually tried to get back to  linux-yocto.
Not sure what's wrong.
I think that even if you try yourself the above trials in your host
you would get the same.
I am using krogoth meta-intel .
I delete all paritions and start again, but it doesn't make sense to
work in such way.

Regards,
Ran


> Something is obviously remaining in the sysroot/manifest after the
> switch, but figuring out what  is going on here is deeper into bitbake
> than my expertise can handle :D
>
> Bruce
>
>
>> Ran
>>
>

