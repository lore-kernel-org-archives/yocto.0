Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1FD0E01407
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 13:05:08 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id da11so775097veb.27
	for <yocto@yoctoproject.org>; Wed, 08 May 2013 13:05:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=lWeQw1k1Lzt/C7FosRz51g+oH4qgg0ag5r9a+9Fy3z4=;
	b=FM5i3GM4K710QfWegXDePMkG/TTqHyjm7WdR5pu0Em3SVTIEX52C1AYztC9C2RD8en
	+sEoqTXyILK5xMATZtt3pIHOoiPCSTx2aoP0DfgfQRIJR6aHdNXF2jWhNUt2HPb2X2Q/
	V3uVOigeumnOEHiruXjrIFXhoo3ROk63SnV2i+wnYnPG3GEKCPpcYrUTMJGpAVMLjAmF
	xpAgXvzwY2qnJ6BVVQShxX8IMNP45eLoc+HohXzdC1LwvaYXye/nkYQYLNG7W3Yyj5Rs
	BqD1x7vSSohDbSlkBYKjiQctuZugR+fhGrpVqFIB0/K6Y6As1v5TDQTcfK5MHMq43GgT
	mjJQ==
X-Received: by 10.220.176.71 with SMTP id bd7mr5734326vcb.12.1368043508082;
	Wed, 08 May 2013 13:05:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.221.8.3 with HTTP; Wed, 8 May 2013 13:04:48 -0700 (PDT)
In-Reply-To: <023f01ce4044$72657a90$57306fb0$@vt.edu>
References: <023f01ce4044$72657a90$57306fb0$@vt.edu>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 May 2013 21:04:48 +0100
Message-ID: <CAJTo0Layo6Gf_o8bjxy7uCHj9vk6qrf4hyDhquUwQv8-iSkGog@mail.gmail.com>
To: Alexander Keller <alexan3@vt.edu>
X-Gm-Message-State: ALoCoQncsluaW0waO84AhZFOcxcOsj7mwITG1XJ6SHh8KLB5jc1hqyLlI/uLSIBpQMsmuCIZS+/G
Cc: yocto@yoctoproject.org
Subject: Re: Building error for yocto
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
X-List-Received-Date: Wed, 08 May 2013 20:05:09 -0000
Content-Type: text/plain; charset=UTF-8

On 23 April 2013 18:03, Alexander Keller <alexan3@vt.edu> wrote:
> I have trying to build yocto for the past couple of days to test the
> hardware acceleration on the X11. However, when I try to build yocto I keep
> on getting this error:
>
> ERROR: Function failed: do_configure (see
> /home/lucid/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/busybox/1.20.2-r8/temp/log.do_configure.30517
> for further information)
>
> ERROR: Logfile of failure stored in:
> /home/lucid/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/busybox/1.20.2-r8/temp/log.do_configure.30517
>
> Log data follows:
>
> | DEBUG: Executing python function sysroot_cleansstate
>
> | DEBUG: Python function sysroot_cleansstate finished
>
> | DEBUG: Executing shell function do_configure
>
> | trap: 80: SIGHUP: bad trap

I just debugged this on IRC with another person who is seeing it, and
it's a problem in kern-tools-native.  I'll work a patch out tomorrow
but a quick fix to you or anyone else seeing this appears to be to
open usr/bin/merge_config.sh in your *native* sysroot and change the
first line from #! /bin/sh to #! /bin/bash.

Ross

