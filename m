Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FD47E009C2; Fri, 24 Feb 2017 07:20:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ranshalit[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1489E009A7;
	Fri, 24 Feb 2017 07:20:21 -0800 (PST)
Received: by mail-wr0-f194.google.com with SMTP id o22so1757540wro.3;
	Fri, 24 Feb 2017 07:20:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/lewSkPsC4gv2qK1T/nT7DXFhtnTMyS2SN++8KBW9Po=;
	b=cP3JxCLXokq7Jk9PjUxSp6DcrY8UUDucLoRz3/mykvyvXSTDt9iREcd04kDJEKwUtk
	tkLzJZVp8ZQEWqAwogPjnPqQ4ebawbEjKy8ZjklwtdlU6yMQZwSdUlUtHLykYB9LU2+c
	2/NnV03jnd3OHxnQMr9D+jX3Llumk52d6oFhNxfquGdXly7RKLif7NwhORGs5Y6px1tj
	p+loyF/k/z6NzS7Ld4zAeob03BCHXja/Fdt+RKAbjzFXj2i/TcbZEf4mTwWeVUF2U+ld
	ZqgkaU5jaRn4raKQfuik4e4OpzCZs7hv2Irr8OBCEFKuri7GDm+Pm8PSWkGDahDnNOo0
	j39Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/lewSkPsC4gv2qK1T/nT7DXFhtnTMyS2SN++8KBW9Po=;
	b=Y5z3joWaLYWDEFIdCI92S6Vxg+qbLL5E3poIPSLF0mORAKn9gxN3skFYU5jXjGriET
	EBo+iV2/1md9GC6i7IPA7edjCn6vTK5rsw1PCR4pVCMVniDY+G025SiIN5NZVOOcnsR8
	A8DIXT4cIFv0zTCxT5lf6JLCGGunWmUzum7P/2w3ssD9DeDOQ1GSFQHbvnx1xyDLHY8E
	5KoqlDiNKYH66Ayamzdr1Dbj/xzFLv1L0md8FhWmJ8TqeNqUc1rcYL7dfMqY+u5Ecoz4
	G6fbLTjQ2IylBDoB71a0eaA9QSwntZJsmzbV4exPARqHlGUBl6RePuKHuImGgLt73MYA
	cssA==
X-Gm-Message-State: AMke39kXDjSshRx7P5Ivm3ZBF11BBxSZyWeX+LsPn5Zz0xoNb1DQAy60IvIT4hOYT+p8QiAOl+JjOhaVau1dIQ==
X-Received: by 10.223.152.177 with SMTP id w46mr3272347wrb.72.1487949620083;
	Fri, 24 Feb 2017 07:20:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.149.23 with HTTP; Fri, 24 Feb 2017 07:20:19 -0800 (PST)
In-Reply-To: <70f42899-aff2-11fe-24a5-5c0010b0c6ab@windriver.com>
References: <CAJ2oMh+nG5stwE0Ec5DRxKRNLbvXEebxzXw0Rk0rE_-4sZeakQ@mail.gmail.com>
	<70f42899-aff2-11fe-24a5-5c0010b0c6ab@windriver.com>
From: Ran Shalit <ranshalit@gmail.com>
Date: Fri, 24 Feb 2017 17:20:19 +0200
Message-ID: <CAJ2oMh+ZHw+SXJq+4s7r0kDNVPCsPY0BLcT-UwAMjYrsdV0m4Q@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
X-Mailman-Approved-At: Fri, 24 Feb 2017 09:11:46 -0800
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
X-List-Received-Date: Fri, 24 Feb 2017 15:20:23 -0000
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
> Something is obviously remaining in the sysroot/manifest after the
> switch, but figuring out what  is going on here is deeper into bitbake
> than my expertise can handle :D
>

Thanks for the help, Bruce.

When using rt linux, do you think I need to give:
PREFERRED_VERSION_linux-yocto-rt
or
PREFERRED_VERSION_linux-yocto

Thanks,
Ran

> Bruce
>
>
>> Ran
>>
>

