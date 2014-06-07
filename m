Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 537FEE0073D; Sat,  7 Jun 2014 00:23:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.53 listed in list.dnswl.org]
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D0D3E0070F
	for <yocto@yoctoproject.org>; Sat,  7 Jun 2014 00:23:23 -0700 (PDT)
Received: by mail-qa0-f53.google.com with SMTP id k15so5118791qaq.40
	for <yocto@yoctoproject.org>; Sat, 07 Jun 2014 00:23:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=neDIO8gC9HKr4+NpkK30jn+bUa/HGXCP8+2GZwA/hMA=;
	b=HGzwyvSmyL46tlniMKpGSEOxc9K6qvwSJkxIdQYwhWssx+ljjoowhtWPcDWgfXcDCH
	UR+P7k/xP0+4tMKknnFXXCq3sGed5eSxmfHBNVSr1Tbg4/eA0Yd9pRxX5jnV/wD5qMpt
	q0RKJPAyBbi2nxh1HbTJnZPaw6FfIsAJRu1ASF//7tSC/oop9FI9/dEZHBePZjfdCuzk
	av0rbzW1S96LU3Wt/O0rd9OLzZf/HqD71RLBF037S9KHNMzN/7JqkInPWhiYZyMP+qgQ
	1IhXRquTSbTvXtve2AdFIkgKKapAsVVEjqgPaIcJGIL7P8uTiZwaGqPaDg5QX1N6QOA8
	2Ivw==
X-Gm-Message-State: ALoCoQnf5VdFnEfS8QCXzTA3tRTw1n+Fp9ECMUDuBgRfZk7w5B701mFvl6Y78uTkQBJ/JMj33GSr
X-Received: by 10.140.28.3 with SMTP id 3mr15289435qgy.71.1402125802851; Sat,
	07 Jun 2014 00:23:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Sat, 7 Jun 2014 00:23:02 -0700 (PDT)
In-Reply-To: <CANJXcUZuFFfUKY=6inswjM_Jdor0e7CU6e+KX+LguH-m=yniHw@mail.gmail.com>
References: <CANJXcUZuFFfUKY=6inswjM_Jdor0e7CU6e+KX+LguH-m=yniHw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 7 Jun 2014 08:23:02 +0100
Message-ID: <CAJTo0LY5wGni9Jc4_A4p7ysFW6fUpS0zCv7YR-=Zew3-r_gDJw@mail.gmail.com>
To: Kashyap Gada <gada.kashyap@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_compile failed
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
X-List-Received-Date: Sat, 07 Jun 2014 07:23:29 -0000
Content-Type: text/plain; charset=UTF-8

Clean the partial qemu build by using bitbake -cclean qemu-native.

Ross

On 7 June 2014 07:19, Kashyap Gada <gada.kashyap@gmail.com> wrote:
> Hello
>
> While bitbake was running my pc froze. I did a restart and then started
> bitbake command again. After that getting following error
>
> ERROR: Function failed: do_compile (log file is located at
> /home/kashyap/kashyap/yocto/poky/minimal/tmp/work/x86_64-linux/qemu-native/1.7.0-r0/temp/log.do_compile.4745)
> ERROR: Logfile of failure stored in:
> /home/kashyap/kashyap/yocto/poky/minimal/tmp/work/x86_64-linux/qemu-native/1.7.0-r0/temp/log.do_compile.4745
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 4
> |   LINK  ppc-linux-user/qemu-ppc
> |   LINK  x86_64-linux-user/qemu-x86_64
> |   LINK  ppc-softmmu/qemu-system-ppc
> | target-ppc/translate.o: file not recognized: File truncated
> | collect2: error: ld returned 1 exit status
> | make[1]: *** [qemu-ppc] Error 1
> | make: *** [subdir-ppc-linux-user] Error 2
> | make: *** Waiting for unfinished jobs....
> | target-i386/translate.o: file not recognized: File truncated
> | collect2: error: ld returned 1 exit status
> | make[1]: *** [qemu-x86_64] Error 1
> | make: *** [subdir-x86_64-linux-user] Error 2
> |   LINK  x86_64-softmmu/qemu-system-x86_64
> | target-ppc/translate.o: file not recognized: File truncated
> | collect2: error: ld returned 1 exit status
> | make[1]: *** [qemu-system-ppc] Error 1
> | make: *** [subdir-ppc-softmmu] Error 2
> | target-i386/translate.o: file not recognized: File truncated
> | collect2: error: ld returned 1 exit status
> | make[1]: *** [qemu-system-x86_64] Error 1
> | make: *** [subdir-x86_64-softmmu] Error 2
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> /home/kashyap/kashyap/yocto/poky/minimal/tmp/work/x86_64-linux/qemu-native/1.7.0-r0/temp/log.do_compile.4745)
> ERROR: Task 96
> (virtual:native:/home/kashyap/kashyap/yocto/poky/meta/recipes-devtools/qemu/qemu_1.7.0.bb,
> do_compile) failed with exit code '1'
>
>
> Please Help
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

