Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B2C6E00D17; Thu, 11 Jan 2018 10:22:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f54.google.com (mail-pg0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E12BE0056D
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 10:22:26 -0800 (PST)
Received: by mail-pg0-f54.google.com with SMTP id 136so2169645pgd.8
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 10:22:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=THIkiXvHLy75kN4D2KaEHYaKVBvif+nUsfG+zHAFvmc=;
	b=UU6F4Y+QQ9SafstY9QFbiWadWaOoM4h8pmyMpGC8cYdbmeZbd5iWbKZYop/gUVEM/U
	8VuwmvJXakMzSHsrBHfotWmSSmQ0I+z6xktJlDdi3XI6GTlJUc23SN/lYE2/Y6vc37dc
	m6MhC30fg4JUKbEkFFe4RM0HtxhnP7Cgjeysai4kDWTjqcvZkoX5WKGEVP8k2TbZbVgJ
	9iyuW17qQsfnDhkYa94u7Ht5lqyRKUspkU9yfx/14jlSRNgsHmru8T5VJXtsQtwlqPJP
	xlz1Fa6vz36piNCzD5sG7eUvmNiwI66PO0f/4OQIkB8P26TlCTQeTKwlPTk7dD1NlfHw
	gC5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=THIkiXvHLy75kN4D2KaEHYaKVBvif+nUsfG+zHAFvmc=;
	b=cCSc2weNaCDi7XIMJ8WR+zvzupF0TivdmxhrwJJ36pekKjfYZpIYh0+RQypCwIyRv9
	gRoeWAtSKqjjHTnvNHrWuUw7hslXRPUis6jaMKkboHo9fxi2uZRTyc+yt9l0QoB1B2Cm
	sKMZP9iH7V6e4eY/kmNhFMyqp6buPoqqE/GMDr4VZP8vQBHtdG7NsGRkw4Jdrbqzg3SE
	D11eX2BmI/axzeQBxfvMb6uyPJflMju8q3bdT4N1jPZL/rbxTWn6ZEMWxKstg3DBjQuu
	NUvwZBwKeeZ32tPMH8vhlGWlgj/a8jqvXH50N8RK9+d25FOqHavuhCpo3j/U+4AEjDjp
	mfog==
X-Gm-Message-State: AKGB3mJ7eLtVurOS6EBqWFTgvfxHiGSqIOdhh8fjZK1H+m8eowVSR13n
	bT5s1IN7T+F5IL1IzhnaeofI2/9ZXFavKhgb9SI=
X-Google-Smtp-Source: ACJfBou2ssms/mMK5TgxBsO5qoS25P4JeQyPQWFu9AK/jeL4FpRywtoNi3sMNdoR2C3dIekX3rx41moUVWBA+bexGdI=
X-Received: by 10.101.102.79 with SMTP id z15mr18666758pgv.25.1515694945272;
	Thu, 11 Jan 2018 10:22:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.159.15 with HTTP; Thu, 11 Jan 2018 10:21:54 -0800 (PST)
In-Reply-To: <HE1PR0402MB3323AD56FD3FB5861E61E42AC4160@HE1PR0402MB3323.eurprd04.prod.outlook.com>
References: <HE1PR0402MB332361FF0CE06D405DE24AADC4110@HE1PR0402MB3323.eurprd04.prod.outlook.com>
	<0fe12bc8-d43e-1d1a-2177-4a4a3d3ba04e@windriver.com>
	<HE1PR0402MB3323AD56FD3FB5861E61E42AC4160@HE1PR0402MB3323.eurprd04.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 11 Jan 2018 10:21:54 -0800
Message-ID: <CAMKF1sqYLAaTUdo87UdYEoSTJW=TXSsFFb7s3-bNxTSMv=YR+A@mail.gmail.com>
To: Martin Siegumfeldt <mns@gomspace.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issues building Extensible SDK
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
X-List-Received-Date: Thu, 11 Jan 2018 18:22:27 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 11, 2018 at 12:56 AM, Martin Siegumfeldt <mns@gomspace.com> wrote:
> Hi Robert,
>
>
> Thank you very much, adding the lines
>
>
> require conf/distro/include/yocto-uninative.inc
> INHERIT += "uninative"
>
> to the distro configuration enables the build to succeed.
>

I thought uninative was optional. Is it mandatory for SDK now ?

>
> Br,
>
> Martin
>
> ________________________________
> From: Robert Yang <liezhi.yang@windriver.com>
> Sent: Thursday, January 11, 2018 6:45:29 AM
> To: Martin Siegumfeldt; yocto@yoctoproject.org
> Subject: Re: [yocto] Issues building Extensible SDK
>
> Hi Martin,
>
> Try:
>
> $ bitbake -e | grep '^INHERIT=.*uninative'
>
> If there is nothing, then add the following line to conf/local.conf:
>
> INHERIT += "uninative"
>
> // Robert
>
> On 01/10/2018 03:46 PM, Martin Siegumfeldt wrote:
>> Hi,
>>
>> We have a custom piece of (Zynq based) HW that we render a custom distro
>> using Yocto. I am trying to build the extensible SDK but run into the below
>> error:
>>
>> pokyuser@03c19f8798ba:/workdir/krogoth/build$ bitbake core-image-minimal
>> -c populate_sdk_ext
>> Loading cache: 100%
>> |################################################################################################################################################################################################################################################|
>> Time: 0:00:00
>> Loaded 2675 entries from dependency cache.
>> Parsing recipes: 100%
>> |##############################################################################################################################################################################################################################################|
>> Time: 0:00:01
>> Parsing of 1915 .bb files complete (1913 cached, 2 parsed). 2677 targets,
>> 377 skipped, 0 masked, 0 errors.
>> NOTE: Resolving any missing task queue dependencies
>>
>> Build Configuration:
>> BB_VERSION        = "1.34.0"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "ubuntu-16.04"
>> TARGET_SYS        = "arm-oe-linux-gnueabi"
>> MACHINE           = "zynq-soft-z7000-mb-v2"
>> DISTRO            = "gomspace"
>> DISTRO_VERSION    = "2.0"
>> TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard
>> cortexa9"
>> TARGET_FPU        = "hard"
>> meta              = "pyro:9c75151116aa293dc8567c237d7e4da5bdec90e3"
>> meta-xilinx       = "pyro:18097af3120a394a8e6933b7abc85e73e508c7e3"
>> meta-oe
>> meta-filesystems
>> meta-networking
>> meta-python       = "pyro:dfbdd28d206a74bf264c2f7ee0f7b3e5af587796"
>> meta-z7000        = "pyro:b255ea4575b40d77a2f5dc9200de0718f979f175"
>>
>> Initialising tasks: 100%
>> |###########################################################################################################################################################################################################################################|
>> Time: 0:00:03
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Error executing a
>> python function in exec_python_func() autogenerated:
>>
>> The stack trace of python calls that resulted in this exception/failure
>> was:
>> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>>       0001:
>>   *** 0002:copy_buildsystem(d)
>>       0003:
>> File:
>> '/workdir/krogoth/openembedded-core/meta/classes/populate_sdk_ext.bbclass',
>> lineno: 298, function: copy_buildsystem
>>       0294:            f.write('TCLIBCAPPEND = ""\n')
>>       0295:            f.write('DL_DIR = "${TOPDIR}/downloads"\n')
>>       0296:
>>       0297:            f.write('INHERIT += "%s"\n' % 'uninative')
>>   *** 0298:            f.write('UNINATIVE_CHECKSUM[%s] = "%s"\n\n' %
>> (d.getVar('BUILD_ARCH'), uninative_checksum))
>>       0299:            f.write('CONF_VERSION = "%s"\n\n' %
>> d.getVar('CONF_VERSION', False))
>>       0300:
>>       0301:            # Some classes are not suitable for SDK, remove
>> them from INHERIT
>>       0302:            f.write('INHERIT_remove = "%s"\n' %
>> d.getVar('SDK_INHERIT_BLACKLIST', False))
>> Exception: UnboundLocalError: local variable 'uninative_checksum'
>> referenced before assignment
>>
>> ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Function failed:
>> copy_buildsystem
>> ERROR: Logfile of failure stored in:
>> /workdir/krogoth/build/tmp-glibc/work/zynq_soft_z7000_mb_v2-oe-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_populate_sdk_ext.8408
>> ERROR: Task
>> (/workdir/krogoth/openembedded-core/meta/recipes-core/images/core-image-minimal.bb:do_populate_sdk_ext)
>> failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 2214 tasks of which 2210 didn't need to be
>> rerun and 1 failed.
>>
>> Summary: 1 task failed:
>>
>> /workdir/krogoth/openembedded-core/meta/recipes-core/images/core-image-minimal.bb:do_populate_sdk_ext
>> Summary: There were 2 ERROR messages shown, returning a non-zero exit
>> code.
>>
>>
>> The standard SDK builds successfully all the way back from Fido throughout
>> Rocko, however we would now like to build the Extensible SDK. Krogoth
>> version builds it successfully, but Pyro and Rocko throws the above error
>> (haven't tested Morty).
>>
>> I am unable to reproduce using Poky and thus assume it to be related to
>> the configuration of our distro/image. Any suggestions are highly
>> appreciated.
>>
>> Thanks,
>> Martin
>>
>>
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

