Return-Path: <mirza@mkrak.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52E9EE00C6F; Wed, 25 Apr 2018 01:54:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f182.google.com (mail-ot0-f182.google.com
	[74.125.82.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB065E00C61
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 01:54:33 -0700 (PDT)
Received: by mail-ot0-f182.google.com with SMTP id a14-v6so24466751otf.6
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 01:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mkrak-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=b+q3Iriv1mBbSVhdEv/UDkMwJOKPn3LN5rpY//4Kios=;
	b=uWuXNpP/srK46DEoCtI5g3hBkd5Ec2tElH0/Lr7uTWrBkIIHkAZocPF0jV3hETJ614
	z9Lot4iwfMKZV8DobIQuzopjDWDjCG7qUwAXZiHjhBQ+6GEmxeTf5pcEZ+hHF8fTaF7s
	O8w9VLPcBbWP3WLnNj4BdK2biw2aG9iFIVpg5P5xJf8G8ygRw2EXqC+VLcVf8UdxhlRc
	WawIbE4spCSwm59wga9KxPLHHPT/fFp9DQhbSGcocXx+0487T7WGZJmm2moHCuzjprKx
	Qjuha//T1CGnOpwYl3dpeyTN67LkEvhxAVyOzDytLDeua2D/mg/lNRxg0/xzgeLhOd6F
	eJRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=b+q3Iriv1mBbSVhdEv/UDkMwJOKPn3LN5rpY//4Kios=;
	b=OFY+ri9uzLlcIWvnUsoD8ty5NDERt4GMv1jUzbSw224xEsP6BiJYuZ12LWQqjBzr/y
	gFiT8NV6Nlp00A2Z4WNT8t1uBym7bGbYOVZhFjfzqCtB/dky8H4zjkq8KcO7cORFH4lo
	IwpsKOfKGwvltxO7QCny/9TvKMJCKqP7srw3/rWfUK0CCAgUodaEBxnWq9lZfrKH5n4i
	RcDQlBPtX+0IVxvQV40IlG/4CUrRg3Hg7eUYhmQFZxXDHUlZgY1JTbd4jvCd1+Vv3wNq
	ExSuwWu5tZxY0y4hR+n7k2Yzu0ZY1WDoFNd446D60W7yepnbVlKHQi23g6ov55wdWomb
	LsbA==
X-Gm-Message-State: ALQs6tC/5HL6QnRbjDE5DSqXqvT23PFMEqxCJIjJBDlnhN9ydCHhYWaY
	69+L8iVWitFdvHewVZQH4K7egjC0z/c=
X-Google-Smtp-Source: AB8JxZq0lgMvzf81NhL4cD8+D239W6Y/lAyTxF6y/XXsLqPVGoPFLg/8N1BWaJAyU2VPkxdcSQsFkg==
X-Received: by 2002:a9d:7146:: with SMTP id
	y6-v6mr2959735otj.122.1524646473025; 
	Wed, 25 Apr 2018 01:54:33 -0700 (PDT)
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com.
	[209.85.218.48]) by smtp.gmail.com with ESMTPSA id
	p65-v6sm9089560oia.18.2018.04.25.01.54.32
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 25 Apr 2018 01:54:32 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id p62-v6so20196515oie.10
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 01:54:32 -0700 (PDT)
X-Received: by 2002:aca:f303:: with SMTP id
	r3-v6mr16021823oih.352.1524646472283; 
	Wed, 25 Apr 2018 01:54:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:20e9:0:0:0:0:0 with HTTP; Wed, 25 Apr 2018 01:54:31
	-0700 (PDT)
In-Reply-To: <CAJTo0LZYNa9GpBNcLuoWtNaO98wRzaVZjhH+oz+UNire3A6z5A@mail.gmail.com>
References: <CALw8SCWhMWJuQGDDbaG3fA617Qew9GvAapc+JvVU6d+9DoOafw@mail.gmail.com>
	<CAJTo0LZYNa9GpBNcLuoWtNaO98wRzaVZjhH+oz+UNire3A6z5A@mail.gmail.com>
From: Mirza Krak <mirza@mkrak.org>
Date: Wed, 25 Apr 2018 10:54:31 +0200
X-Gmail-Original-Message-ID: <CALw8SCW-fArrTmMpx6atAY6N-2QiiNqLQW1jYQe3Qf2qOZns8g@mail.gmail.com>
Message-ID: <CALw8SCW-fArrTmMpx6atAY6N-2QiiNqLQW1jYQe3Qf2qOZns8g@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gcc not found
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
X-List-Received-Date: Wed, 25 Apr 2018 08:54:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 25 April 2018 at 10:39, Burton, Ross <ross.burton@intel.com> wrote:
> Is the build tree deleted after it fails?  It would be interesting to
> see if the compiler is present in the sysroot, or if it has a
> different name, or something else weird.

I have lost the "state" tinkering around, but before I did that
checked the sysroot and it was:

    build/tmp/work/cortexa17hf-neon-vfpv4-esp5-linux-gnueabi/brcm-patchram-=
plus/0.1-r0/recipe-sysroot-native/usr/bin$
ls
    guards quilt

So pretty empty and a lot more is expected to be in there

>
> Do you have any global classes that do anything interesting/special?

I do have some global class but nothing that stands out to me. I do
change the TARGET_VENDOR to a custom name.

My build configuration (masked a bit since this is customer data):

Build Configuration:
BB_VERSION        =3D "1.36.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "universal"
TARGET_SYS        =3D "arm-custom-linux-gnueabi"
MACHINE           =3D "custom-d1"
DISTRO            =3D "custom-fb"
DISTRO_VERSION    =3D "2.4"
TUNE_FEATURES     =3D "arm armv7ve vfp neon vfpv4 callconvention-hard corte=
xa17"
TARGET_FPU        =3D "hard"
meta
meta-poky         =3D "HEAD:f7b90ab3eaf832bd81f3efc1dab4dcf6863ac284"
meta-oe
meta-multimedia
meta-python
meta-networking   =3D "HEAD:6e3fc5b8d904d06e3aa77e9ec9968ab37a798188"
meta-rockchip     =3D "HEAD:495acdb65d14c2d49f6c2dfce4a673f3af4aa1c7"
meta-qt5          =3D "HEAD:32bb7d18a08d1c48873d7ab6332d4cc3815a4dff"
meta-mender-core  =3D "HEAD:cb4feead40e48c4ece1a041c995defecd0e7ee96"

--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak
email: mirza@mkrak.org
web: https://mkrak.org

