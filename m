Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A65DE00CBA; Mon,  1 Jul 2019 02:08:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFC26E00798
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2019 02:08:49 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id j6so27106420ioa.5
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2019 02:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=b56VEE+SjWqnkH5n3auXzbk9qTPQuBacm8N4bIx4ldA=;
	b=0E+M7ym/gbnvBg0YSorT0lVh1q9vxpGI8RJz6mOzVhKNCY8FdPhL2641HHBFNc9zvM
	sxie9bzYFgRUbBBOZ4d0VOVTudjBZlps7WkBih9/IrxlrvLRBmhMAmUopTmoc2CrbhDb
	SYcUAEzutCmZhHr7VKkpLqva+ZHlZYIsoWz59I0koZ9Yk+bBAxOD/5TJEdYVhBQZNO8V
	Uox9pBLxYcmz1N4/wDcBahs+daiN61epLEWUWoKloJ4zqzehyGY+UcusqYmjmIkHqN1h
	6ZzoXVwO6gnOuK+Xglh/9WW01yZXPnPZuZSNhD7jIAsz6enz9HfB9598R1vG56eR64Hz
	EqJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=b56VEE+SjWqnkH5n3auXzbk9qTPQuBacm8N4bIx4ldA=;
	b=Ll//01HyuarC9iQFejUFZExNRvINLvhuGY51uJnhcnSatIBLxgj+TOBbTzH1K8BOBd
	ILzgDlT8lA3PwomPI5UhKA9o8tJxvuJnC/8P4c7yegmNriftTtW0mamoUdGnbbHNOE4c
	+jX5Ywm/Bc0mBFEucodv3R7jKwtiSfa0tdt2FnWf9qgH0fHLAK2SisHsskS9n+VlbH/I
	6qHD7Tr/V9kBoRFSNbDJwXB+vvxPhVH9SzLNiwd9sLtYytRxiqdOypP8Z4M77I58m1Qx
	b33Zfm4uyJNAY/BrbC9+OSPkpOoETu38m6MA7pe5Xk+9UjvWreYQ1LOut/6lf4w0Ysij
	jttg==
X-Gm-Message-State: APjAAAUXIsVnokaiDEiT87Yy84Dz/Lw9zw9Dz46a+0BURNh9wLslQVAe
	62kCAh1o3rV8vEfCQBCFvSFMrfc78np8KNT1LrgGqA==
X-Google-Smtp-Source: APXvYqxZBtVzLakMSm9VlkeIFyifOOLmzpgQIT3YbT+dpU6tc4pK4uCUS7YFHflH/dnAMqWtV2jIZw6nqFb3W7Nljro=
X-Received: by 2002:a02:b798:: with SMTP id f24mr15399787jam.97.1561972129177; 
	Mon, 01 Jul 2019 02:08:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8Z2dTj+Yx44T_cWbRELkCcapPUaY=1h51nG0HBuGN6BxQ@mail.gmail.com>
In-Reply-To: <CAG+Ob8Z2dTj+Yx44T_cWbRELkCcapPUaY=1h51nG0HBuGN6BxQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Jul 2019 10:08:37 +0100
Message-ID: <CAJTo0LbEVDZec3mMMC7n20oRU68KcKKzePDGGkGF2sac6Zu_xA@mail.gmail.com>
To: Onur Eser <onureser12@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Yocto stucks when building!
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
X-List-Received-Date: Mon, 01 Jul 2019 09:08:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

First, Fido/1.8 is very old: released in April 2015 and is now out of
support, has no security fixes, etc.  So I'd first suggest upgrading
to a supported release.

If you can't, then the easiest thing to do would be to look at the
log.do_compile for that recipe in your build directory, or use ps in
'forest' mode to see what process is hanging and figure out why that
is.

Ross

On Mon, 1 Jul 2019 at 08:40, Onur Eser <onureser12@gmail.com> wrote:
>
> Hello,
> I am trying to build a yocto for i.MX6, with a QT5 layer, everything is o=
kay, but it freezes on 2666th task! When 4 tasks are running at the same ti=
me in normal, when it comes to 2666th, it is only one task and takes foreve=
r! (I made it wait for one night)
>
> Build Configuration:
> BB_VERSION        =3D "1.26.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "Ubuntu-16.04"
> TARGET_SYS        =3D "i586-poky-linux"
> MACHINE           =3D "qemux86"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.8.2"
> TUNE_FEATURES     =3D "m32 i586"
> TARGET_FPU        =3D ""
> meta              =3D "fido:87631919819b6f85f23f57689cd1065c64d7fb03"
> meta-qt5          =3D "fido:90919b9d86988e7da01fa2c0a07246b5b5600a5d"
> meta-fsl-arm      =3D "fido:c9f259a4bf8472dfa3ff75f1c3fcbe5e0ded7aaf"
> meta-solidrun-arm-imx6 =3D "fido:3e496c0895b0abf8d2aaca2c622246c1f9f3ed75=
"
> meta-yocto
> meta-yocto-bsp    =3D "fido:87631919819b6f85f23f57689cd1065c64d7fb03"
>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> Currently 1 running tasks (2666 of 5960):
> 0: attr-native-2.4.47-r0 do_compile (pid 3485)
>
> How to solve this?
> Thanks,
> Onur
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

