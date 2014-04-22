Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58B17E00C70
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 09:11:02 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id tp5so5415070ieb.40
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 09:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ZN5PSZ3T4G8lT23jKhHETUZj0mFdfSp8di6FTNrc198=;
	b=xnW+IhlZi2kcGMRgeXmgTpUYauXX44uMJd12thoZFactB2vJwmYgvokuwWKA0xyu8G
	Yo4dblqvSxgB7afG80budyAGRhUPMb1jbX/DMAeoZSzDfGiM7noBFIJpy/v/+UNkyQ3r
	EIDUiT0inxTiaN56jjFOvFdm6q1W09b91UzPoHE3gAsiScRUo6lvZ6RrQNwnloCQEJWH
	FxhkbjquFDYBmUu0gK06HsoEo5Vk8vGSgduXdQECUMPf/iPCI82SRbnwk5S8pQkjdJYd
	3sPJ4KGoCnGKbYZkPISwW00MHto/AKqHnmdCTiuk4FC/fPBIK3HK/K6PQuUpyt1vXd2D
	nNBQ==
X-Received: by 10.51.17.5 with SMTP id ga5mr4410982igd.2.1398183062247; Tue,
	22 Apr 2014 09:11:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.229.14 with HTTP; Tue, 22 Apr 2014 09:10:32 -0700 (PDT)
In-Reply-To: <CAAKMwiouz+=PX1A=Z8x61C7VcOaVQCCVf8P_kvY9HEaK-PHDPQ@mail.gmail.com>
References: <CAAKMwiouz+=PX1A=Z8x61C7VcOaVQCCVf8P_kvY9HEaK-PHDPQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 22 Apr 2014 09:10:32 -0700
Message-ID: <CAMKF1srqDaZ_JkdBZLST-rSsCP70m0Q6xuifY3Qxg+cm8v+JAQ@mail.gmail.com>
To: kaiu@gmx.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eglibc-2.18 is not compiling
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
X-List-Received-Date: Tue, 22 Apr 2014 16:11:03 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 22, 2014 at 7:08 AM, Kai Ulrich <kaiu@gmx.de> wrote:
> tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/shlib.lds:150:
> syntax error
> collect2: error: ld returned 1 exit status
> make[2]: ***
> [/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/libc.so]
> Error 1
> make[2]: Leaving directory
> `/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/elf'
> make[1]: *** [elf/subdir_lib] Error 2
> make[1]: Leaving directory
> `/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc'
> make: *** [all] Error 2


whats the make version on your build host which is being used here. I
hope its 3.82 or newer.

