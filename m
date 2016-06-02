Return-Path: <eystein@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C73FBE00D2F; Thu,  2 Jun 2016 09:33:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26965E00D13
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2016 09:33:29 -0700 (PDT)
Received: by mail-pf0-f170.google.com with SMTP id f144so33116490pfa.3
	for <yocto@yoctoproject.org>; Thu, 02 Jun 2016 09:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=TvtgzbDfYGbTa9vLi4mrWF4wnWk/DWTMcClqhgbunD0=;
	b=k0Co++fFj0LhhE/NEwJ0uaMnNQI3GIHfkg5oWtJR0VlM3WJS10OilylElmQNUQpcn4
	5zJND74KsS/V6TY6lAW1IzWfEg4jieZDNEFOnIEp/km1LxV2ZMF7zothYGy6ltu54Myi
	L3IcEyyYw6sDrXDWZ9lOUuNIDs4XDsM1/5Hq/TIoZaeObcht8VSKhgoSc7xU17hybsim
	23eVZILOqVaiqLZfuWL0PXnx8Vn1PZtHEvgqCW3EprQLPvz+9aRW2uSSTWBaG3Z9wuQY
	paLZAuxxZSmgTf2CPvPNi9uE8rekzuHvESgAvQ4bnl3X8QmGcjmCzNPEJ7LNwsqk6sHT
	ijDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=TvtgzbDfYGbTa9vLi4mrWF4wnWk/DWTMcClqhgbunD0=;
	b=BkFbRTeiUTpJPfWC0Jgs/VwZC1m5+4kOt1Nbt7DQ/sfE45ejwv+E4bfMIt82cCblGt
	hFy5oEP7Cd+N81jfPqBIY6hkoWtsyboUrRWkF/lnfa/yMr3+ZU+XhktpidiTVtjkaEbu
	nskwb1IzJZjCfw4zt91iObMpbS1DbIaMLzpuh3Sca+qlXRrtp/Jub9DTFtqfzeXVS1TI
	Pj4k/RqAJpRFFr8x/DDlk3L6YRBDZv+m++z662a6ORbaOsbo7OSe4CjVyDKjHtzLJBw7
	wEtYQDZ3mvxasvQIRc5xo823+MfW7bcSFt9OSzY/s8MCmGx0o/r/WifI2Dz4WPxXm5ZZ
	txaQ==
X-Gm-Message-State: ALyK8tKzE2K3q28xZEqo4xhUtkQ8RElwgdwdCAmf7kQtjdLG1PNlbFo4OPQERPV+qkTmkw==
X-Received: by 10.98.92.133 with SMTP id q127mr6160124pfb.103.1464885209273;
	Thu, 02 Jun 2016 09:33:29 -0700 (PDT)
Received: from [192.168.1.6] ([192.77.237.64])
	by smtp.gmail.com with ESMTPSA id
	vb6sm13425621pac.16.2016.06.02.09.33.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 02 Jun 2016 09:33:28 -0700 (PDT)
To: Bruce Ashfield <bruce.ashfield@windriver.com>, yocto@yoctoproject.org
References: <574F9E80.3000107@mender.io>
	<22017b4d-f2cf-e56f-44da-780ce2dc0a41@windriver.com>
From: =?UTF-8?Q?Eystein_M=c3=a5l=c3=b8y_Stenberg?= <eystein@mender.io>
Message-ID: <57505FD8.4070009@mender.io>
Date: Thu, 2 Jun 2016 09:33:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <22017b4d-f2cf-e56f-44da-780ce2dc0a41@windriver.com>
Subject: Re: poky master issue with kernel and gcc version
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
X-List-Received-Date: Thu, 02 Jun 2016 16:33:32 -0000
X-Groupsio-MsgNum: 30313
Content-Type: multipart/mixed; boundary="------------060503040709050609080104"

--------------060503040709050609080104
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 01/06/16 19:53, Bruce Ashfield wrote:
> On 2016-06-01 10:48 PM, Eystein Måløy Stenberg wrote:
>> Hi,
>>
>> I am trying to build a vexpress-qemu machine targe from poky's master
>> branch, but I get this error compiling the kernel:
>>
>> |
>> /home/yocto/poky/build/tmp/work-shared/vexpress-qemu/kernel-source/include/linux/compiler-gcc.h:121:30:
>>
>> fatal error: linux/compiler-gcc6.h: No such file or directory
>>
>> Apparently it is picking gcc 6.1 and kernel 4.1.24, which do not play
>> well together.
>>
>> The best approach is probably to use kernel 4.2 or newer. Is there a bug
>> filed for this? I would think this is affecting quite a lot of people as
>> I am not doing any special configuration for my build.
>
> We've already fixed all the gcc6.x builds for the supported machines
> in linux-yocto 4.1/4.4.
>
> What kernel tree is that building ? upstream ? linux-yocto ? And if
> linux-yocto, what branch ?

It is building linux-yocto 4.1. I have attached the compilation log, in 
case that helps.

What I am doing is simply building a vexpress-qemu machine with poky's 
master, so it should be quite straightforward to reproduce.

In particular, I am following our projects guide for creating a Mender 
build at 
https://github.com/mendersoftware/meta-mender/blob/master/README.md, but 
I don't think it reaches the Mender-specific layers.

Thanks for the help and let me know if there's anything else you need.


>
> Bruce
>
>>
>> Thank you.
>>
>

-- 

Eystein

--------------060503040709050609080104
Content-Type: text/plain; charset=UTF-8;
 name="log.do_compile.14419"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="log.do_compile.14419"

DEBUG: Executing shell function do_compile
NOTE: make -j 4 zImage CC=arm-poky-linux-gnueabi-gcc   -fuse-ld=bfd LD=arm-poky-linux-gnueabi-ld.bfd   LOADADDR=0x60800000
  CHK     include/config/kernel.release
  GEN     ./Makefile
  CHK     include/generated/uapi/linux/version.h
  CHK     include/generated/utsrelease.h
  Using /home/yocto/poky/build/tmp/work-shared/vexpress-qemu/kernel-source as source for kernel
  HOSTCC  scripts/conmakehash
  HOSTCC  scripts/sortextable
  MKELF   scripts/mod/elfconfig.h
  CC      scripts/mod/devicetable-offsets.s
  HOSTCC  scripts/mod/sumversion.o
In file included from /home/yocto/poky/build/tmp/work-shared/vexpress-qemu/kernel-source/include/linux/compiler.h:54:0,
                 from /home/yocto/poky/build/tmp/work-shared/vexpress-qemu/kernel-source/include/uapi/linux/stddef.h:1,
                 from /home/yocto/poky/build/tmp/work-shared/vexpress-qemu/kernel-source/include/linux/stddef.h:4,
                 from /home/yocto/poky/build/tmp/work-shared/vexpress-qemu/kernel-source/include/uapi/linux/posix_types.h:4,
                 from /home/yocto/poky/build/tmp/work-shared/vexpress-qemu/kernel-source/include/uapi/linux/types.h:13,
                 from /home/yocto/poky/build/tmp/work-shared/vexpress-qemu/kernel-source/include/linux/types.h:5,
                 from /home/yocto/poky/build/tmp/work-shared/vexpress-qemu/kernel-source/include/linux/mod_devicetable.h:11,
                 from /home/yocto/poky/build/tmp/work-shared/vexpress-qemu/kernel-source/scripts/mod/devicetable-offsets.c:2:
/home/yocto/poky/build/tmp/work-shared/vexpress-qemu/kernel-source/include/linux/compiler-gcc.h:121:30: fatal error: linux/compiler-gcc6.h: No such file or directory
 #include gcc_header(__GNUC__)
                              ^
compilation terminated.
make[4]: *** [scripts/mod/devicetable-offsets.s] Error 1
make[4]: *** Waiting for unfinished jobs....
make[3]: *** [scripts/mod] Error 2
make[2]: *** [scripts] Error 2
make[1]: *** [sub-make] Error 2
make: *** [__sub-make] Error 2
ERROR: oe_runmake failed
ERROR: Function failed: do_compile (log file is located at /home/yocto/poky/build/tmp/work/vexpress_qemu-poky-linux-gnueabi/linux-yocto/4.1.24+gitAUTOINC+46bb64d605_86093f78f6-r0/temp/log.do_compile.14419)

--------------060503040709050609080104--
