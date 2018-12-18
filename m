Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52099E00C99; Mon, 17 Dec 2018 17:03:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27E39E00B58
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 17:03:48 -0800 (PST)
Received: by mail-qt1-f171.google.com with SMTP id d19so16372908qtq.9
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 17:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8ja4KFs1ZeFQat+cYIssyGlwqWalJYStS/fDULouBVI=;
	b=QrAeJAB12xGGI9jvHdGg/WY4y1WJmCbaoKAqKdwGNAxHDldg9+UZU09MIwBpfScZ5U
	KJXjrtMceVxgZ+mVFQ+Hls6K0qPaApmQCJaNjxC1lGbRkpje8yePhvR1W4B3/SBxdHTh
	EK5DA4ACRjx94290o9W7akqr5ftygs0dSLWCY/n35nIZnKFUYeqpeQBm65FeT1/+kpCz
	oUH/FQWSTeGdqaBwfm5eQfXN0uFRgNQfPgikZszM8h8cZrI2BTslvBtcuoZzUIl/dsY8
	JM2QSEod8RGEArpCA2wUgwG4tdmX+Zlwz/78gDP2BGVzokke7XkHeZKqBaWgK6gj8mod
	3b1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8ja4KFs1ZeFQat+cYIssyGlwqWalJYStS/fDULouBVI=;
	b=SZ2xOGyc4t4BPVLk6dWN8GnAPNSyItfd1KPZR2nHj0ec89NBdvDIkc+Wp9S6b0v2eg
	GcEQzHr02uwvpAu9cFJ1P+CKRV447p1R4cVbEQZDKmyVQWOs7kBJtAGtiJhwsGQD2KPt
	wkh+6RXgljvMYaLzG+13Vr72Yq9JfLEpCE546HO7oWlKJyZxNq9I2irr5maD0lUk4FpG
	/Udik492wOSTmd+O1FC/QpKpLxoVZ/orfsyq0+ixSSBLk7hQKZv9i4f4rNO7+wN1z058
	pPVfJTUqzK65DVWpTckIjf3GHA6kTvrOanN6ySBq5K7VglJjy4YNLG7igRRsgo6yHPqS
	TkRg==
X-Gm-Message-State: AA+aEWas1wCS18Q+EPngf9y8iUj+YzrV7vuopj6znIE5/5rOys4Yp+tz
	Nv7wVdD0A0k5xfJm0BGTJqQHge9wCMY95HM0s6I=
X-Google-Smtp-Source: AFSGD/U3D4TWVXHujLkcWP7PQZ1fbdXrrTFsmdlFVSky4xN6VacSB7NR1vSaAivB8UOq7mh4tPpJ6wQ5mvW/OytDr1k=
X-Received: by 2002:ac8:16d8:: with SMTP id y24mr16036057qtk.253.1545095028085;
	Mon, 17 Dec 2018 17:03:48 -0800 (PST)
MIME-Version: 1.0
References: <CAC0z2vGV8rTV2-jGXrVcrmuLNrbN_x0_Rv5gZ2NjUTfrrt-kjA@mail.gmail.com>
In-Reply-To: <CAC0z2vGV8rTV2-jGXrVcrmuLNrbN_x0_Rv5gZ2NjUTfrrt-kjA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 17 Dec 2018 17:03:22 -0800
Message-ID: <CAMKF1spucHUvqu0apW0ysXEjmTh772OFuR0nzwi-Z0eHK-qOyg@mail.gmail.com>
To: sanjay chopra <sanjuchopracool@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: build fails for qemux86
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
X-List-Received-Date: Tue, 18 Dec 2018 01:03:51 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Dec 17, 2018 at 12:09 PM sanjay chopra
<sanjuchopracool@gmail.com> wrote:
>
> Hi,
>
> Whenever I try to build core-image-minimal , it fails in rootfs step.But I am able to build core-image-sato.
>
> With thud and master branch I am getting this issue. Sumo branch was working fine.Please help me to figure this out.
>

such errors sometimes pop up when qemu is failing on the built machine
you might want to dig a bit deeper and find out what cmd particularly is failing
and then try to run that manually to check if its specific to build host.
>
>
> bitbake core-image-minimal
> Loading cache: 100% |###############################################################################################################################################################################| Time: 0:00:00
> Loaded 1263 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           = "1.40.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "universal"
> TARGET_SYS           = "i586-poky-linux"
> MACHINE              = "qemux86"
> DISTRO               = "poky"
> DISTRO_VERSION       = "2.6"
> TUNE_FEATURES        = "m32 i586"
> TARGET_FPU           = ""
> meta
> meta-poky
> meta-yocto-bsp       = "thud:d0e0a3d7a8218fbbf057a922c86bcdd2cf469ce9"
>
> Initialising tasks: 100% |##########################################################################################################################################################################| Time: 0:00:01
> Sstate summary: Wanted 2 Found 0 Missed 2 Current 736 (0% match, 99% complete)
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: core-image-minimal-1.0-r0 do_rootfs: The postinstall intercept hook 'update_font_cache' failed, details in /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs
> ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in: /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs.18035
> ERROR: Task (/mnt/DATA_PARTITION/poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2420 tasks of which 2419 didn't need to be rerun and 1 failed.
>
> Summary: 1 task failed:
>   /mnt/DATA_PARTITION/poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>
> --
> Regards
> Sanjay
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

