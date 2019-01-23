Return-Path: <einar@vading.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E40C7E00CED; Wed, 23 Jan 2019 01:12:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.65 listed in list.dnswl.org]
Received: from mail-yw1-f65.google.com (mail-yw1-f65.google.com
	[209.85.161.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4CB0E00CE5
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 01:12:19 -0800 (PST)
Received: by mail-yw1-f65.google.com with SMTP id f65so591549ywc.8
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 01:12:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=hHeNGnUY9yfIt4Pw4pjqQwS80g1G4GCE2bT+dYXbN30=;
	b=ocGVL+vfsQanSXOyyfnDSitwIC7nKCDU4gEGyEEUwfmgdw8AtaJkTOWx/0R1REhjeP
	tnhJ70nV8Pt1Nh+gKEeCHgwjNSauHOTQlsUG8pLen1AV9sASF4bdVXLpFsfGbBzL0/GY
	HPglMsc+Whc120u/P4iYHEx6EFWFf/Gxdr5WGdyTRUSWZ0jiFmRoczyecoHIXWhx4rI9
	MmMEoRMq87SKBurrK0dr4zNe4eYniaW9/+nDkHBxBEVNmdF7Lq8lmQeUq6zS+RkebANT
	h5shGMW83w0W6LWIm/4FkiNAwlbc3I8FN+vUF3SycR7BgMyc2LGJfaBUE8CWfNubFmex
	8GzQ==
X-Gm-Message-State: AJcUukfC2y37wUGKrZpbTyXrj86/Z5nSjW6/8cMQOBXPQ9oMG4CdwCbF
	3+389Q+0rsL24u26O/3m/h7PMWXiJjlgu5/MrvPul8WD4no=
X-Google-Smtp-Source: ALg8bN69qILZoCM7SYJKCaNBcp9tk6u/C4IVLPJUjmPsYqqHeI4emiP1mDefVfYVR6NS6wF3rvWLnBQ9Kip6XhWCv/Q=
X-Received: by 2002:a81:ac68:: with SMTP id z40mr1192203ywj.223.1548234738859; 
	Wed, 23 Jan 2019 01:12:18 -0800 (PST)
MIME-Version: 1.0
References: <CAEhQi8mWzaLii_WpEwE+spDaKjeaXxY9f76htNkPbZJKZkNTxg@mail.gmail.com>
In-Reply-To: <CAEhQi8mWzaLii_WpEwE+spDaKjeaXxY9f76htNkPbZJKZkNTxg@mail.gmail.com>
From: Einar Vading <yocto-ml@vading.se>
Date: Wed, 23 Jan 2019 10:12:07 +0100
Message-ID: <CAB6-VtKjusNd4NOCwxezO26N0sxaYTxsa0mn8PtsSVSu0yfQAQ@mail.gmail.com>
To: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: dnf fail in do_rootfs cannot find shared library
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
X-List-Received-Date: Wed, 23 Jan 2019 09:12:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm not sure this is your problem but if you don't version your
so-libs you could get this since the .so (without version) is not
shipped by default I think.

Try putting this in your recipe:
SOLIBS =3D ".so*"
FILES_SOLIBSDEV =3D ""
ERROR_QA_remove =3D "dev-so"

If that works I think the proper solution is to give your so-lib a version.

// Einar

On Tue, Jan 22, 2019 at 6:00 PM M=C3=A5ns Zigher <mans.zigher@gmail.com> wr=
ote:
>
> Hi,
>
> I am struggling with a recipe which more or less just downloads binaries =
and creating a package. We have previously been using ipkg but now we have =
switched to rpm in our builds. One of the binaries in the packages is a lib=
rary let's call it libx_media_1.0.so. This library is part of the package t=
hat the recipe is producing. The library is placed under /usr/lib/. When bu=
ilding the image I am getting the following error
>
> ERROR: base-image-1.0-r0 do_rootfs: Could not invoke dnf. Command
> .....
> ...
> Error:
>  Problem: package packagegroup-x-media-1.0-r11.noarch requires x_media, b=
ut none of the providers can be installed
>   - conflicting requests
>   - nothing provides libx_media_1.0.so()(64bit) needed by x_media-1.0-r44=
.imx8mq
>
> ERROR: base-image-1.0-r0 do_rootfs: Function failed: do_rootfs
>
> Here is the output from running the command file on the library
>
> usr/lib/libx_media_1.0.so: ELF 64-bit LSB shared object, ARM aarch64, ver=
sion 1 (SYSV), dynamically linked, stripped
>
> I have also verified that the library is part of the produced rpm so that=
 is not the issue.
>
> Dose anyone have any suggestion on how to debug this problem? Because I a=
m out of ideas
>
> BR
> M=C3=A5ns Zigher
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

