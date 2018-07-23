Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75A09E00BBD; Mon, 23 Jul 2018 03:13:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB2F8E00B7D
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 03:13:47 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id b15-v6so125854oib.10
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 03:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=c3QcFLd+NDt88r6XE2wAzKgsVWF2SwcPzAH8ZbnZfwE=;
	b=dtZnwiNl1zOh4MzYt4sDUtne3xhRV9Au7cV21fh2eoMMUzKR5lv7IJiVLcbgV2+FGn
	vFS69CrSHrLEkF7hygCfoHI3VXToz+8idKhHhDcxpII1OLZPSDP8E6f6IPB5CHwMFeo6
	oSqomB6w+PtRwy47UNvQHpYoieEHV+a6verWNfojxAcA4eUCDFyxEOC0EzsVwUq8g8HA
	5MjDkG1RDKYUY468wnDYgNooCmTpOPqwztRrNcOVVsdyqmVz9vnhbAmUksvLt/XtR0ez
	9t0lBreji9kknRq11yROdr/GZWkZjgwwPeX2UO+Fxl3kSPFb1QJxiVzVlV1kZVHu6LYo
	4miQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=c3QcFLd+NDt88r6XE2wAzKgsVWF2SwcPzAH8ZbnZfwE=;
	b=jJipQ5/hx5oIheQXPpKx8oVNJkiTxEV/QY+bUqp36aHtECZX1TcxVkbkvVFqOMljN7
	e3Ek54Up/faZIsu6OXCEIf+8K2ZV7BJB4CoAqbR66H/iuJHdDZO9h9DgqW/vGUutsg/i
	r9LFu6T4ng+iKPleWLKoEv78HUD4uyPPHfaW4qgXZn0EYQKuZgQBAurjquIzlJ3wkGEB
	krHgvpnPaBVvkqxXS327Y4Oxiw/4izSCm3kvzOPLi96dl5VGcyMntXrgkEvHuckvnGhN
	e9UE2M1bNNThM3od0/9pIROJ9bLTwluoj1uSIHfzBBUASXqN+SyX4VAfWPLtUtQWChrF
	rpHw==
X-Gm-Message-State: AOUpUlHZ50cXsZzlExn03lC45ANbMUIeoEnMSg7xV8IjH7EuVqj388qD
	62kvH6WILv4AhGzncfhBd27Z7zJLjWztF3rsBb6PJjpm9dI=
X-Google-Smtp-Source: AAOMgpcv1erUkuDVIyd3GCzxLqOv30ZTj+rfGgO71UJJRsbNUgR8s78Zqf9uA5r06GXW0WocBIaY8/QLmN/iYDwTsDw=
X-Received: by 2002:aca:e185:: with SMTP id
	y127-v6mr8515313oig.245.1532340827091; 
	Mon, 23 Jul 2018 03:13:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Mon, 23 Jul 2018 03:13:26
	-0700 (PDT)
In-Reply-To: <3fcef217.a96b.164c6616b92.Coremail.13824125580@163.com>
References: <3fcef217.a96b.164c6616b92.Coremail.13824125580@163.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Jul 2018 11:13:26 +0100
Message-ID: <CAJTo0LYL1eMn_-UceCKC9iKXw55DHAtW-QXQe6_3mTxEOHitWg@mail.gmail.com>
To: tugouxp <13824125580@163.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: "Unable to find header curl/curlbuild.h" error on porting
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
X-List-Received-Date: Mon, 23 Jul 2018 10:13:48 -0000
Content-Type: text/plain; charset="UTF-8"

It looks like you (or whoever maintains this glibc-dev branch you are
using) have upgraded curl yourself and didn't notice that curlbuild
doesn't exist in 7.57 onwards, so the oe_multilib_header call should
be removed.

(see oe-core 215d5677004537fc190b5381157ac8b94db6d7e8)

Ross

On 23 July 2018 at 10:03, tugouxp <13824125580@163.com> wrote:
> Hi folks:
>
>    i meet a compiler error when compile with bitbake, look at following
> logs.
>
> it seems this error cant result to failure the compile process, the image
> file can be generated and running ok,  but i was a bit worry on this for i
> dont  confirm whether it hints some fatal issues.
> so, i need help to clarify this error, thanks.
>
> Parsing of 963 .bb files complete (0 cached, 963 parsed). 1452 targets, 180
> skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           = "1.36.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "universal"
> TARGET_SYS           = "aarch64-poky-linux"
> MACHINE              = "tulip-mozart"
> DISTRO               = "distro-tulip-mozart"
> DISTRO_VERSION       = "V2.5"
> TUNE_FEATURES        = "aarch64"
> TARGET_FPU           = ""
> meta
> meta-poky
> meta-yocto-bsp       = "glibc-dev:45d70aab913b054677a032d67d2a12d191139a9f"
> meta-tina            =
> "tina-dev-with-glibc:5a69f0ce9fd9651aa4afdd62610c5cad65140c76"
>
> Initialising tasks: 100%
> |###########################################################################################################################################################################|
> Time: 0:00:11
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: curl-7.59.0-r0 do_install: oe_multilib_header: Unable to find header
> curl/curlbuild.h.
> WARNING: gstreamer1.0-plugins-aw-1.8.2-r0 do_configure: QA Issue:
> gstreamer1.0-plugins-aw: configure was passed unrecognised options:
> --disable-examples --enable-sunxifbsink --without-libintl-prefix
> --disable-debug --without-x --enable-fbdev2sink --without-libiconv-prefix
> [unknown-configure-option]
> WARNING: youtube-dl-2018.07.04-r0 do_populate_lic: youtube-dl: No generic
> license file exists for: Unlicense in any provider
> WARNING: image-tulip-mozart-1.0-r0 do_rootfs: The license listed Unlicense
> was not in the licenses collected for recipe youtube-dl
> WARNING: image-tulip-mozart-1.0-r0 do_image: version iamge -->
> tulip-mozart-20180723163728-R1.0
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

