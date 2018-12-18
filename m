Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C147E00CAC; Tue, 18 Dec 2018 05:14:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f173.google.com (mail-it1-f173.google.com
	[209.85.166.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29F49E009B1
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 05:14:46 -0800 (PST)
Received: by mail-it1-f173.google.com with SMTP id h193so4131766ita.5
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 05:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=GxRVph4T/vFZC+xeJGivC9N69EXjo3snP/pG28fpMYI=;
	b=fDReoF5JuqIQYNTA0elA935+nXVKL/yH8fQIeJoyWiH8UySnkegY2/M8IgMcqeml9O
	fE4g1Iz4e3+ExOJ+HQ+4zCVi2lwTHEXwg78IVe1BSYLZiVanXg3VoZkYjVmoWmqw0TeL
	bYRD/qbtfUJmPOa/otf6wW5HK+cPHHN7U5ATt0TumHli1/JYWd0y3EYNgTnTk0YIuwx1
	4hDpFF5D0qxB+2N92GK3X4NM5sTGVnuXcCkFI9RWekAwukZaudvKnvVeEcKSJ2hJJU/X
	UswjeFY4R3XJeNF3wtXQUqVItb+xviOYWtVHEvv+jo8BZ5uHQBz/fOqDRfd4jb0ZAlmm
	ejaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=GxRVph4T/vFZC+xeJGivC9N69EXjo3snP/pG28fpMYI=;
	b=PD4UC5sGSRh2PrExGokf6XBlsNhzn9BJAz8RcjwL7UUUwGoY/5gXULrgYqHc0I3GM2
	54DA2CWv8SRePPDu01aDswNBGv6A7Qu9eVq3E8FmfASIQutR+UKEqmWmmitdhembViR1
	Oq2L4wL2M6uZDG6Pe2QMfPSgNqMIb/qHBofv6lG9xDM9tO5WQkOGa7jCWTl44QnLd+4p
	8DyHHp+i5bwWueVc0FZq3PbyHiEnmIOxfL2uH/s/lbwb4dJGsaqAwEHEEKkK3Fzx4QxM
	zgvz0jIEAgTl0Ze4c+Y5BCMH2/B+/YlcSe/fya9HTig66WqBQn7HniGJ4nRKmK5g6G5Z
	WCxg==
X-Gm-Message-State: AA+aEWY//kRRQuvP63SIg1TqL2Qq0aF8nsknGrzU+6rfIOwSpFa9PskL
	rqo2y8CxbKW0+i5phxNcQWbh236gWB4MIw28mO2myQ==
X-Google-Smtp-Source: AFSGD/Vcv5H/QJOc/dHh6oAIj/jnOS6OtJbCqirGbxWoHno72nmksP1/+lkHZz3sgt0I08lmm7+itCgPWdItMEkKhIs=
X-Received: by 2002:a24:8e43:: with SMTP id h64mr2655958ite.26.1545138885703; 
	Tue, 18 Dec 2018 05:14:45 -0800 (PST)
MIME-Version: 1.0
References: <CAC0z2vGV8rTV2-jGXrVcrmuLNrbN_x0_Rv5gZ2NjUTfrrt-kjA@mail.gmail.com>
	<CAMKF1spucHUvqu0apW0ysXEjmTh772OFuR0nzwi-Z0eHK-qOyg@mail.gmail.com>
	<CAC0z2vG_v93qpq_q6vx+S-Kg+Z=_MbsycRAkWeByQ0m=NtvMGQ@mail.gmail.com>
	<CAMKF1so-DSbCCb5PavqLCkdsQ0vVPSOr6kRV_HEZrenzWDwWEQ@mail.gmail.com>
	<CAC0z2vFvJPrwMQSjRsJZGitb9WP0JOsOEBWTc=2tDJTf5czNZg@mail.gmail.com>
In-Reply-To: <CAC0z2vFvJPrwMQSjRsJZGitb9WP0JOsOEBWTc=2tDJTf5czNZg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 18 Dec 2018 13:14:33 +0000
Message-ID: <CAJTo0LY9NF5D0+f3eSuMBPADWBQHSN8ASd1By1uiVaEZq-M_jw@mail.gmail.com>
To: sanjuchopracool@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 18 Dec 2018 13:14:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 18 Dec 2018 at 13:07, sanjay chopra <sanjuchopracool@gmail.com> wro=
te:
> + qemu-i386 -r 3.2.0 -E LD_LIBRARY_PATH=3D/home/sanju/qemu_check/tmp/work=
/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/usr/lib:/home/sanju/qe=
mu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/lib -=
L /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0=
-r0/rootfs -E /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image=
-minimal/1.0-r0/rootfs/usr/libexec/fc-cache --sysroot=3D/home/sanju/qemu_ch=
eck/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs --system-o=
nly
> usage: qemu-i386 [options] program [arguments...]
> Linux CPU emulator (compiled for i386 emulation)

So qemu doesn't like what it's been passed.  Unpacking what you posted:

qemu-i386 \
  -r 3.2.0 \
  -E LD_LIBRARY_PATH=3DWORKDIR/rootfs/usr/lib:WORKDIR/rootfs/lib \
  -L WORKDIR/rootfs \
  -E \
  WORKDIR/rootfs/usr/libexec/fc-cache \
    --sysroot=3DWORKDIR/rootfs \
    --system-only

For some reason an extra -E is being passed. Have you changed the
intercepts? This is what the script should look like:

  $ cat scripts/postinst-intercepts/update_font_cache
  #!/bin/sh
  set -e
  PSEUDO_UNLOAD=3D1 ${binprefix}qemuwrapper -L $D -E
${fontconfigcacheenv} $D${libexecdir}/${binprefix}fc-cache --sysro
ot=3D$D --system-only ${fontconfigcacheparams}

Note there's only one -E entry.

Ross

