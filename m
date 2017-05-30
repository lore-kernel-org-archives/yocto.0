Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08780E00B3E; Tue, 30 May 2017 09:07:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FB84E00B19
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 May 2017 09:07:55 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id g15so26138667wmc.2
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 May 2017 09:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TZ28mDRm3I6hDtfh1KX4bv3sR0YufCvlhsX4zLt3A7I=;
	b=WLpTRwzIZL3nGv0YLxRTTdS4d0XlqQcca0+hZZfbBvEK0s+FX1185UDPXNFf+lePN6
	k0CB+ecwGHocS+HSLGLcS+qcgoudO0t/O9S5XT2U4dVDOi/LTVp4hknpqnZjCyc24eVp
	pQ00qPg7NWtwPQhOJ76RAIBIZnLefFCMWkB9m1hfEjGltEhyuF8adQETwHWBkK3sE6W5
	cM8RRjCoSdxC6MMvwg8dTBx0jk9U58J5Bp4qN788/LxjiN74R5WnFLq1LD0xS6v/C60R
	5XSOC5fdjkLZGIrfSLupZ1Ii27R9UNErSQiEMxDBJXAl7XAg2R36zjmya1F5mftCMqjD
	ZjEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TZ28mDRm3I6hDtfh1KX4bv3sR0YufCvlhsX4zLt3A7I=;
	b=oQSWNmz8HARLWN2wTG+2kfiHXskqHH9QiOLOBN+2wj7LvwPsn9166ZgyfGORPB4L6X
	7GvlprJXSQJ05ozhFRjzjVvzojG9qkqgkK/DIVHu7D9h+XGuEeNOW0wzuNt1aHko+aCP
	E2hY0MwUq6/oX1++jM9VZj0z6fdb7Bx7Adn3+HXWVtkmNJFFvRELf1BKIufvxXeNzzL7
	lDdBaTXor7ESbWIn+DTwYk+JDGIwYRyD5JmKt/GzLNccD/MjZBvd3f5o3EdhQiUC4RRm
	LLxkMulsk1y2jo6V89gT8qwDdoJgbtrvRPjPO1T7TFUqIXNBJY4uRsEgk1GDOIleGXEA
	Oywg==
X-Gm-Message-State: AODbwcACINAlkbhPCBe8PjVqcHm3bHrON2Qi/B0TNx0YcEj6UYN6VyaB
	InFoDDhij7BjRkZ5qGZjfsO6crgHSw==
X-Received: by 10.80.154.165 with SMTP id p34mr17234985edb.127.1496160475031; 
	Tue, 30 May 2017 09:07:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Tue, 30 May 2017 09:07:24 -0700 (PDT)
In-Reply-To: <20170530075723.18340-1-Martin.Jansa@gmail.com>
References: <20170530075723.18340-1-Martin.Jansa@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 30 May 2017 09:07:24 -0700
Message-ID: <CAMKF1so+EmqtQFL-GbMyEQtpOOevOjRnqHbzXUvs4eb3m04XLw@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][meta-raspberrypi] linux-raspberrypi_dev: don't use AUTOREV
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
X-List-Received-Date: Tue, 30 May 2017 16:07:58 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, May 30, 2017 at 12:57 AM, Martin Jansa <martin.jansa@gmail.com> wrote:
> * use latest revision in rpi-4.11.y branch
> * using AUTOREV causes bitbake to run git ls-remote on the github.com repository in order
>   to convert AUTOREV to currently latest SRCREV even when you don't use linux-raspberrypi_dev
>   at all, just happen to have meta-raspberrypi layer in your bblayers.conf, that's bad for
>   people who want to be able to build without network access (completely from premirror)
>

These branches get rebased often so locking SRCREV caused another
kind of problem. what we can do is.

1. Let user like you override the SRCREC via a bbappend or conf file.
so change the assignment to ?=
2. Delete the recipe completely. We lose some of upstream testing.

> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi_dev.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_dev.bb b/recipes-kernel/linux/linux-raspberrypi_dev.bb
> index 239d630..06771b9 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_dev.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_dev.bb
> @@ -3,7 +3,7 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-dev:"
>  LINUX_VERSION ?= "4.11"
>  LINUX_RPI_DEV_BRANCH ?= "rpi-4.11.y"
>
> -SRCREV = "${AUTOREV}"
> +SRCREV = "3b3178eb6c0ddea0a6856f16f52b5d2c21ed9299"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=${LINUX_RPI_DEV_BRANCH} \
>             file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
>  "
> --
> 2.13.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

