Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6E66E00D53; Sun, 13 Mar 2016 23:09:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66703E00D4A
	for <yocto@yoctoproject.org>; Sun, 13 Mar 2016 23:09:48 -0700 (PDT)
Received: by mail-qg0-f54.google.com with SMTP id t4so145851060qge.0
	for <yocto@yoctoproject.org>; Sun, 13 Mar 2016 23:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=bgSQ2GpTE0b3yskQyt9e96yFT6nS8JxLVuwwnQHtROE=;
	b=GccNiho1feO4NoutS5Tf29MDS+d/AxJebrzq85N/mO9VcclB9oIB7IefrPeRmuXEf/
	KzIGv1eI3nqHtLYE9NQbWddl2Q9T5C85zN0YSztokR2+yxqChYtX87hZKAHmnmdiD1vp
	WDR1IepHYuDhpBu3u/lHYclJjYJuI4yA5bijbmQgBCaSQOH8nHevzFqofp+kG9DYejPG
	441k7nNKBF8msf8gsyUkbzZYJNG0NWPkCmj90a9DubP7lZybzP6t0YejWK1aHfXbO5NK
	T0ZoZYGK1VNmjCefjXtJJ3TtvlTWRma0xNHqrvZQLA7Mr0nqkAJi9wnZ0FHq/ga0YpmC
	6hNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=bgSQ2GpTE0b3yskQyt9e96yFT6nS8JxLVuwwnQHtROE=;
	b=IeLTffGUkUAxW4iMfnCcLM+jWYpcJng5IXdU9nzfUgOx5iWAwM+FaEw8DMo3c+w/4D
	huGEcar4x71q9/YO5BIZrLknN9mPaG0Lkh6nEfZSc42kkU+l+3rLJiso8LTLoI3QfPdo
	Q0WNQhbcJHjp3gZW6xpmRsKhiOrtGGfqkd+JmyzelUxNtYCQi8jQVg8OwP3T34Co9o5Z
	vTTS+o4Ldt0V4PdBPVqVP3BjQK58tRkwiDGBDiSHYI2WSjchFVgcQRlnAGFt/THhBgUi
	Y3K9zFzXpSdKJ1Td+pz+i65zVixxmWr8Y4qEPdqnRxXVCVmVvUCLniYZ42zk/7IMHFHG
	9u5g==
X-Gm-Message-State: AD7BkJIcJunArVtka/t/fbmLrmH6WX13Ctn2aaTVZjDf6aaus0hJ67kXbcA2xmuxZiecLW06qkqMWvhohtQREQ==
X-Received: by 10.140.100.244 with SMTP id s107mr27141293qge.19.1457935788441; 
	Sun, 13 Mar 2016 23:09:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Sun, 13 Mar 2016 23:09:19 -0700 (PDT)
In-Reply-To: <56E64947.5020606@mlbassoc.com>
References: <56E64947.5020606@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 13 Mar 2016 23:09:19 -0700
Message-ID: <CAMKF1sr3DgBbiAHAb0GngGDZeN-LUhFWH0s7bQ+zm2iYD-EaDA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems building live image
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
X-List-Received-Date: Mon, 14 Mar 2016 06:09:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

just use IMAGE_FSTYPES =3D "vmdk" if you plan to use virtualbox and need
a raw image.

On Sun, Mar 13, 2016 at 10:16 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> I'd like to to some testing that qemu just doesn't seem up to
> so I attempted to build a live ISO per the documentation. I
> added these lines to local.conf:
>   IMAGE_FSTYPES_genericx86 +=3D "live"
>   NOISO_genericx86 =3D "0"
>
> When I try to build core-image-base I get this error:
>   ERROR: INITRD_IMAGE_LIVE core-image-minimal-initramfs cannot use image
> live, hddimg or iso.
>   ERROR: Check IMAGE_FSTYPES and INITRAMFS_FSTYPES settings.
>   ERROR: Failed to parse recipe:
> /local/poky-cutting-edge/meta/recipes-core/images/core-image-minimal-init=
ramfs.bb
>
> I'm using a recent Poky checkout (d53413d3a8444c38a83ea37867c8af7754d8e70=
2)
>
> Am I just doing something wrong here? I was following this section of the
> mega-manual:
>
>   26.56. image-live.bbclass=C2=B6
>
>   The image-live class supports building "live" images.
>
>   Normally, you do not use this class directly. Instead, you add "live" t=
o
> IMAGE_FSTYPES.
>   For example, if you were building an ISO image, you would add "live" to
> IMAGE_FSTYPES,
>   set the NOISO variable to "0" and the build system would use the
> image-live class to
>   build the ISO image.
>
> I don't have any available hardware for this testing, so I thought
> I'd use VirtualBox.  Is this a reasonable approach?  I want to use
> a live ISO so I get a writable file system.  I tried just using the
> .hddimage but that doesn't boot with VirtualBox :-(
>
> To be clear, along with the additions above in local.conf, I tried:
>   $ MACHINE=3Dgenericx86 bitbake core-image-base
>
> Thanks for any ideas
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

