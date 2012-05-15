Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72245E01206
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 15:53:42 -0700 (PDT)
Received: from mail-lpp01m010-f52.google.com ([209.85.215.52])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 15 May 2012 15:53:41 -0700
Received: by lahj13 with SMTP id j13so69975lah.25
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 15:53:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=VqjFeYrFE4IbulX/QP5DfM9Hj+IPiyja3By9BqE4tbk=;
	b=nob+hRxs4AX4H5+3NURmYnvpQ9vdOgKN1w2mbO3oA+LUh0VwSIfwyuYzek5I/UyV+h
	dpfno76YzzPAIHRO+bRINJ4VgR5pT7z17Okxz9mMY1YwGTNXuReIfrgbFozibXie5rlR
	r+bpeYRFV/GQXlAWUpZCY3aOW586FSjqf4ZVTXpcTa5GHz17atEprEj9VbNTBgzDnLF3
	0Vcbc+0/P67+pM6W09L+itisoSvImKbc4FDS0H4mpYOuy20FayxsFy7E2wL8tvgoBeAo
	ioJ47JVj0cvaX4LF2MEvgVTP3yj6qqOkJcX6yPgHEmHRPaSQiQ5k80aXlcj49whLb+TK
	lLnw==
MIME-Version: 1.0
Received: by 10.152.132.4 with SMTP id oq4mr648617lab.40.1337122419701; Tue,
	15 May 2012 15:53:39 -0700 (PDT)
Received: by 10.112.107.137 with HTTP; Tue, 15 May 2012 15:53:39 -0700 (PDT)
In-Reply-To: <CA+gsK-ph__F9gNUYSnb_pN2xjLbv8zwB6Sk+J5qiKD43fZx7-w@mail.gmail.com>
References: <CA+gsK-ph__F9gNUYSnb_pN2xjLbv8zwB6Sk+J5qiKD43fZx7-w@mail.gmail.com>
Date: Tue, 15 May 2012 15:53:39 -0700
Message-ID: <CAPhnLPANF6KeOtgKa_L2PjV+hCg2Kb8_CFR9tPLzOA1kNNdUrQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Rudolf Streif <rudolf.streif@linux.com>
X-Gm-Message-State: ALoCoQkGNU+1laep1XtziVLboXyXl9cXKlfyAdVtWCL4XhTP5l8i6jAwZp+08NHSFHLQ0/nd9xEv
Cc: yocto@yoctoproject.org
Subject: Re: How is the list in package.manifest derived?
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
X-List-Received-Date: Tue, 15 May 2012 22:53:42 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, May 15, 2012 at 3:38 PM, Rudolf Streif <rudolf.streif@linux.com> wrote:
> I used poky-denzil-7.0 to build a core-image-minimal for the BeagleBoard.
> Now I am looking for a list of everything that went into my image together
> with the license information. The logical thing seems to be
> ${TMPDIR}/deploy/licenses/core-image-minimal-beagleboard-<timestamp>/package.manifest:
>
> base-files
> base-passwd
> bash
> busybox
> busybox-syslog
> busybox-udhcpc
> initscripts
> libc6
> libgcc1
> libtinfo5
> libusb-1.0-0
> libusb-compat
> modutils-initscripts
> ncurses-terminfo-base
> netbase
> pciutils-ids
> sysvinit
> sysvinit-inittab
> sysvinit-pidof
> task-core-boot
> tinylogin
> udev
> udev-extraconf
> udev-utils
> update-alternatives-cworth
> update-rc.d
> usbutils-ids
>
> However, I don't think this is everything that went into the image. I would
> expect the kernel to be in the list as well as module-init-tools and u-boot.
> Apparently package.manifest and the corresponding license.manifest for an
> image target do not contain all the licensing information that a device
> builder would need to give to the end customer. How is that list created?

This list is created via license_create_manifest within
license.bbclass. I'm currently in the process of refactoring it quite
a bit so I'll look out for this issue.

It derives the list from list_installed_packages. Which means that
there may be an issue with that function. The way I'm planning on
doing it does not use list_installed_packages, however I'm going to
open a bug on it to verify that it is in fact returning an incomplete
list.

What would be helpful here is knowing what package type you're using.

-b

>
> Rudi
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

