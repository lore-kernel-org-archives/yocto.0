Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1265E00CDF; Thu, 17 Jan 2019 07:44:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34765E00CB0
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 07:44:09 -0800 (PST)
Received: by mail-io1-f66.google.com with SMTP id g8so8178184iok.4
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 07:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=LzkgZhYLLcTtPvplck75DhWJjG7b1vO+IlBvRO7r4FI=;
	b=YLDi8I/mVx6/lfAWZ7JHFb7CIN2q51klzIjZ6ROjnG6kJvfV37UdftcIsKt7hIPKBF
	6T/pbOFOIPqrwEU79FhFF3517oqBLMdZZRiGT7pflTOl6C9uJWEA8awlqaxWig3iQSKO
	lKN/P9IUwZHr+J3rKe3surzOvw+JwZggc7CNCWw+WsR3nobUxHsHY+jYdUSElxKGrvwz
	FqSEY6jZT+1iAeLQVpzRs2Ky6S16plihxF9ICsNyAOflIZRLmmXzxDwhjTMpTAJg6vfe
	DA1oC5EpmLrWccZdOJkG3DIiz29ZxNrqp7dWB/UBe++F7wJO01ozN/WtrfMEzE+aA2Ri
	6AEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=LzkgZhYLLcTtPvplck75DhWJjG7b1vO+IlBvRO7r4FI=;
	b=H5EPsmNeXEIMM7++00RXRZS/I3VNunnQ014JoQuvjwQbwCB/H8aHc9ZrmimLnWvyxz
	OIBAzS/RkkefqWr84s/GZ/MzsJ7owvWWHA2kRRG5XealiScGAHmVRJjrSF5Pr8Qzxuv6
	jCQiuHpjiYikMrozpELL6aefz4l2B4zdkuhVTqtfiAw8kFVYI8ZoXlrOI39yU43kSf2v
	YD749x9rdDo1BJN5ezKSocd/vol6AfNhpsyFCD15QYiHCN3SUwW0Qv6XwYpSp1YLQhKk
	rYLo0pChMJcGvbephGCOhtHCc7e1021yvYom8nRdwFmK1LST8cpF9KQ1pABDJcZRueeY
	4vzA==
X-Gm-Message-State: AJcUukceobud0ejk77XwU0linsWWUHJ3SjJDVcsrgZxiryVn4IRjDnv8
	oYvT9CYxCw8JSRWinQdDh73Gz6WPTOHcjKYBqmY9fQ==
X-Google-Smtp-Source: ALg8bN7U4X2Yo59d/BmUQ+00+lFSyD72vEQQC0QxRGagErjqq4vtSGu9bxLtaRAesmrsEBI/8FcMJ17/NycT+Omw3as=
X-Received: by 2002:a6b:acc5:: with SMTP id v188mr7573887ioe.20.1547739848608; 
	Thu, 17 Jan 2019 07:44:08 -0800 (PST)
MIME-Version: 1.0
References: <CACDuFfU=cZM_xVcWOw2cOpBfGq4F388thUEY-5JRPLj6wX41kA@mail.gmail.com>
In-Reply-To: <CACDuFfU=cZM_xVcWOw2cOpBfGq4F388thUEY-5JRPLj6wX41kA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 17 Jan 2019 15:43:57 +0000
Message-ID: <CAJTo0LbjVBVfcsbW=xg4EyLmQEVy27zvBY+4hS=oQXOBsOEueA@mail.gmail.com>
To: Maytar Byle <maytarb@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: linux/bpf.h: no such file or directory
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
X-List-Received-Date: Thu, 17 Jan 2019 15:44:09 -0000
Content-Type: text/plain; charset="UTF-8"

Don't use gcc, use $(CC).

Ross

On Thu, 17 Jan 2019 at 14:50, Maytar Byle <maytarb@gmail.com> wrote:
>
> Hey all,
>
> I've wrote a basic recipe to compile few C files and when i compile it, i get the above error. I looked in 'sysroots/qemux86-64/usr/include/linux/' and it contains bpf.h.
>
> The recipe:
> SRC_URI = "file://dir"
>
> S = "${WORKDIR}/dir"
>
> do_install() {
>     install -d ${D}/home/user/dir
>
>     oe_runmake DESTDIR=${D}/home/user/dir install
> }
>
> with the following Makefile:
> SRC_FILES := $(wildcard *.c)
> OUT_FILES := $(patsubst %.c,%.out,$(SRC_FILES))
>
> all: $(OUT_FILES)
>
> %.out: %.c
> gcc -o $@ $^
> ...
>
> The C file include lines goes as follow:
> #include <asm/types.h>
> #include <linux/netlink.h>
> #include <linux/rtnetlink.h>
> ....
> #include <linux/bpf.h>
> #include <linux/filter.h>
>
> When i try to build the image using `bitbake core-image-minimal` i get:
> DEBUG: Executing shell function do_compile
> NOTE: make -j 6
> gcc -o a.out a.c
> a.c:78:23: fatal error: linux/bpf.h: No such file or directory
>  #include <linux/bpf.h>
>                        ^
> compilation terminated.
> make: *** [a.out] Error 1
> WARNING: exit code 1 from a shell command.
> ERROR: oe_runmake failed
> ERROR: Function failed: do_compile (log file is located at /yocto/build/tmp/work/core2-64-poky-linux/example/1.0-r0/temp/log.do_compile.26127)
>
> Could also be relevant - entries from my local.conf:
> PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
> GCCVERSION ?= "4.9.%"
> SDKGCCVERSION ?= "4.9.%"
>
> Also, it is weird for me that it gets to 'linux/bpf.h' before it fails because it includes files from the linux dir before that.. Can someone shed some light on that? Any directions i should look into?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

