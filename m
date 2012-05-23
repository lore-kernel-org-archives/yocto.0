Return-Path: <jfabernathy@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD072E01206
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 14:43:51 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so9081042yhf.35
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 14:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=tKp75E6ReWEF5u/LypgPqzIAwKEjALOaL1dC8tEvIGc=;
	b=pCoBcnAvmOnzys712ZbGlcyPhdyoZHQW+7HkXRVAGneDJfn+VXxfH8rSTezrZxiG/m
	ImI7/XbAA6hvzR+dSVOXZUrDG93HfEP8abPEo/rA+KA7Ip/ZL1oXkjEPAoBCEiMHqXRz
	eOflQtjKTFgpIELhOqyxEK0uXSEI3+3Xsv6PxkbcM/buhGXiulze2/lqxLiuCx9Foq4h
	fKzNG56GlSLGlqye4ljbsDahDtKUtUAjEnnMV7+8zKS83LZRRY9HQmEUfAli3q8qMEni
	r+IamybPdxzniCMS18OHbuqqODLDBuuzP2eiW8n16Umgbb6+kAlVKVsnCurWefTsfhVO
	StHA==
Received: by 10.236.191.36 with SMTP id f24mr33897327yhn.100.1337809430288;
	Wed, 23 May 2012 14:43:50 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id i67sm427877yhh.21.2012.05.23.14.43.49
	(version=SSLv3 cipher=OTHER); Wed, 23 May 2012 14:43:49 -0700 (PDT)
Message-ID: <4FBD5A14.7090702@gmail.com>
Date: Wed, 23 May 2012 17:43:48 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4FBCD12E.3050407@gmail.com> <4FBD2B4F.5030203@linux.intel.com>
In-Reply-To: <4FBD2B4F.5030203@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bitbake failure on meta-cedartrail using master branch
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
X-List-Received-Date: Wed, 23 May 2012 21:43:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/23/2012 02:24 PM, Darren Hart wrote:
> On 05/23/2012 04:59 AM, jfabernathy wrote:
>> FYI,
>>
>> I just pulled the lasted patches into my system and ran a bitbake of
>> cedartrail with the PVR driver.
> I have a fix for this, was waiting for an Ack and got side tracked.
> Please pull meta-intel again and try again with the master branch.
>
> You should have the following commit now:
>
> commit a62c485edffed30ea95658760948fd50925adfb0
> Author: Darren Hart<dvhart@linux.intel.com>
> Date:   Fri May 18 09:19:31 2012 -0700
>
>      linux-yocto_3.0: Update KMACHINE and KBRANCH to play nice with new
> kerntools
>
> Thanks,
>
> Darren

Thanks, that got past it.

Jim A

>> I got a failure on the kernel build.  log below:
>> ERROR: Logfile of failure stored in:
>> /build/cdv-master/tmp/work/cedartrail-poky-linux/linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/temp/log.do_patch.29202
>> Log data follows:
>> | Branch meta-temp set up to track remote branch meta from origin.
>> | git reset --mixed 620917de59eeb934b9f8cf35cc2d95c1ac8ed0fc
>> | Deleted branch meta-temp (was 620917d).
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/updateme: line
>> 434: yocto/standard/cedartrail-standard.scc: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/updateme: line
>> 436: yocto/standard/cedartrail-standard.scc: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/updateme: line
>> 437: yocto/standard/cedartrail-standard.scc: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/updateme: line
>> 438: yocto/standard/cedartrail-standard.scc: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/updateme: line
>> 441: yocto/standard/cedartrail-standard.scc: No such file or directory
>> | readlink: missing operand
>> | Try `readlink --help' for more information.
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/staERROR: Function failed: do_patch (see
>> /build/cdv-master/tmp/work/cedartrail-poky-linux/linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/temp/log.do_patch.29202
>> for further information)
>> | ndard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | /build/cdv-master/tmp/sysroots/x86_64-linux/usr/bin/scc: line 399:
>> yocto/standard/cedartrail-standard: No such file or directory
>> | ERROR. Could not find an excutable target for yocto/standard/base
>> | ERROR. Could not locate meta series for yocto/standard/cedartrail
>> | ERROR. Could not modify yocto/standard/base
>> NOTE: package
>> linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4:
>> task do_patch: Failed
>> ERROR: Task 838
>> (/home/jim/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb, do_patch)
>> failed with exit code '1'
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


