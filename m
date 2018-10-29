Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDE52E009AA; Mon, 29 Oct 2018 04:54:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
	[209.85.167.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FDBBE00872
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 04:54:58 -0700 (PDT)
Received: by mail-oi1-f169.google.com with SMTP id k19-v6so6743464oic.11
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 04:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=0SP0B4n6xov6Dh+s71nNr319W8MvxMFvJj7koKn1bNo=;
	b=Xd/oWYqnN0OUNviQk55pN0zOgP/rjtl74TQcq+oSwqMW9zf8rgDJoKTUILwwA013Pp
	trNSjoBD6+LbMUq8Dqpmwknm/eG1OGkyTcZNcuNhx3RvRPY61AqWQOShcpm9LEQSH0H1
	iO3EWDNlX7mC5DluIQj+HGE+h0nLSOfV6hFBgCSAdQ8Avj+/U2lTrE/Isk3fXJdiNoYX
	CU+5c7M73m+K3ZVDfTx6EVnG6Ff2FFSQyzbD5e7xqpbWd2ju/n+Baz+7stQVeILmNv3f
	1x0dlZJoav0agEmMsC1iKDr1pIo7JuCV7/CPKmKy4etmKrgMOM4ga4D7xmaDtp1I8K2v
	ZLrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=0SP0B4n6xov6Dh+s71nNr319W8MvxMFvJj7koKn1bNo=;
	b=mZM0lmPWQTUR2O7wzgHjUpYHWgyRTtDnT/j3SClipcGzcbO4y/yfDkBYixSGfDwINc
	XOvCylOxxtVkHNtTXePZ9NhpQGxgAZeqfrSNnSvoKSRTHSpymbJukKT45tgEb1TO7T4B
	uTZSr3BusLUAdx6v0ZFiU3t6GemE1zwzuVBbFILclNog/WIrsfzt5B5Wu9vWYRS8VQ1R
	YOKvQk2qUb23Ve1Stg+uhCAFuPQ3Kpuf+VtWa1GNW0lpHfyh6Wk6vZIle+ZO0nv5uk2w
	S36u5fbPoqjyqnBOIaQOAHdjXcC4BiwNtriSktlXTa4ePjns88L2cI8REtWTZkMzeYhk
	OLgQ==
X-Gm-Message-State: AGRZ1gLYwvU2jqLqVVqkg15CecNtEF856+BL/jUpB0ZMfB7K1hNxhWX6
	7yUwFM7YemeM1Ut5hO4rod+R/M1tcMsWEGsQq3Sd9g==
X-Google-Smtp-Source: AJdET5eGlxmFjHxV/5K73RXFW8diVhLuo32QsK0Ndrn/OGkmxwjp0t7DzHfxdsXM3/K9JpxFWSqAipjsMJlNgumP7cI=
X-Received: by 2002:aca:68a7:: with SMTP id
	o39-v6mr8574144oik.293.1540814098244; 
	Mon, 29 Oct 2018 04:54:58 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=ZEPrnNxV5HAwZ-KA98vFLHzqYbo0MHAb+mj+aq_cr=pHig@mail.gmail.com>
In-Reply-To: <CA+4=ZEPrnNxV5HAwZ-KA98vFLHzqYbo0MHAb+mj+aq_cr=pHig@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 29 Oct 2018 11:54:46 +0000
Message-ID: <CAJTo0LbZTFEEeaZ1hn-7D5XJnurXBDK6FRMT-79wJ8rMWTNicA@mail.gmail.com>
To: joe.flowers@nofreewill.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: "bitbake core-image-sato" yields "No package 'gdk-x11-3.0' found" build failure
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
X-List-Received-Date: Mon, 29 Oct 2018 11:55:00 -0000
Content-Type: text/plain; charset="UTF-8"

Can you share your local.conf?  Does bitbake gtk+3 work?

Ross
On Mon, 29 Oct 2018 at 06:42, Joe Flowers <joe.flowers@nofreewill.com> wrote:
>
> Hello everyone,
>
> 1.
> I am trying to build a core-image-sato image for a WandBoard but am getting stuck at this error message:
>
> "| No package 'gdk-x11-3.0' found"
>
> See below for more details.
>
>
> 2.
> I have grepped this list's archives and run into someone with the same problem, but a solution was never included in the thread.
>
> https://lists.yoctoproject.org/pipermail/yocto/2017-December/039149.html
>
>
> Help please.
>
> Joe
>
> ------------------------------
>
> Command
>
> MACHINE=wandboard bitbake core-image-sato
>
> produces this error message:
>
> ...
> ...
> | checking for pkg-config... /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/recipe-sysroot-native/usr/bin/pkg-config
> | configure: WARNING: using cross tools not prefixed with host triplet
> | checking pkg-config is at least version 0.9.0... yes
> | checking for glib-2.0
> |                   gmodule-export-2.0
> |                   x11
> |                   gdk-x11-3.0
> |                   gtk+-3.0... no
> | configure: error: Package requirements (glib-2.0
> |                   gmodule-export-2.0
> |                   x11
> |                   gdk-x11-3.0
> |                   gtk+-3.0) were not met:
> |
> | No package 'gdk-x11-3.0' found
> |
> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
> | installed software in a non-standard prefix.
> |
> | Alternatively, you may set the environment variables MATCHBOX_PANEL_CFLAGS
> | and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
> | See the pkg-config man page for more details.
> | NOTE: The following config.log files may provide further information.
> | NOTE: /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/build/config.log
> | ERROR: configure failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_configure (log file is located at /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_configure.40754)
> ERROR: Task (/opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3024 tasks of which 2828 didn't need to be rerun and 1 failed.
>
> Summary: 1 task failed:
>   /opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> joe@ubuntu:/opt/yocto/build$
>
> ------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

