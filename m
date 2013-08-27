Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f47.google.com (mail-oa0-f47.google.com
	[209.85.219.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4528E01358
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 03:01:58 -0700 (PDT)
Received: by mail-oa0-f47.google.com with SMTP id g12so4988586oah.20
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 03:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=RcWMChIJdIALtFa8QEeMubKU6nvwBMf+AxHvAREkios=;
	b=iCJYDo0k/07C3rMIsm/GyA25o+7XEpUAEtNf/xm0guYf/kLaq0Aj0Dcx3MMJJd6Zxh
	X7UKBhp8GtD3795PahId4SSfCCJPdBb0fUa42VGJ4moU/kzSihmrcFfoQkAXiEk0m88/
	z/RVzAuA/MhYywMNwnrjQtexIkFzJt/UgzyzfWCZApNRZLqT9rFUTs2BpcBHcaUqLZ9j
	5o/aUxBlL+pulJBkn0ahGiXlBC3oMiUcW94RPjyJ0RppD/Tvn5D0gpKEN6HnteTatX4T
	+ub/arUJSPEe2b7WIH0rdWbKnRlgD3ed1B00itgWYQkMUL6Hs/Zty5/GDWfpAh00nTqJ
	bPbQ==
MIME-Version: 1.0
X-Received: by 10.182.72.137 with SMTP id d9mr1242701obv.99.1377597717412;
	Tue, 27 Aug 2013 03:01:57 -0700 (PDT)
Received: by 10.182.109.36 with HTTP; Tue, 27 Aug 2013 03:01:57 -0700 (PDT)
In-Reply-To: <dde6dc479168bb4adda2460411a20b70@denx.de>
References: <CAFyqS9oq7=v=H2VdH1mK_jznoqrQrCR3ZeS54NAT6g2zAxPk3w@mail.gmail.com>
	<dde6dc479168bb4adda2460411a20b70@denx.de>
Date: Tue, 27 Aug 2013 12:01:57 +0200
Message-ID: <CAFyqS9oHQ1UmvRLXd5+7rDLp7DVzMt7t+RHZWP8Ka_SsnZRLQw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: lothar@denx.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel 3.9 uImage build problem
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
X-List-Received-Date: Tue, 27 Aug 2013 10:01:59 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2013 at 11:38 AM,  <lothar@denx.de> wrote:
> Am 2013-08-27 11:08, schrieb Hans Beck=E9rus:
>>
>> Hi. We are trying to build a Linux 3.9 kernel (uplift from 3.6) and
>> are suddenly facing a completely new error when creating the uImage.
>>
>> HOSTCC  scripts/mod/file2alias.o
>> |   HOSTLD  scripts/mod/modpost
>> | make[1]: `include/generated/mach-types.h' is up to date.
>> |   CALL    scripts/checksyscalls.sh
>> |   CHK     include/generated/compile.h
>> |   CHK     kernel/config_data.h
>> |   Kernel: arch/arm/boot/Image is ready
>> |   Kernel: arch/arm/boot/zImage is ready
>> | multiple (or no) load addresses:
>> | This is incompatible with uImages
>> | Specify LOADADDR on the commandline to build an uImage
>> | make[1]: *** [arch/arm/boot/uImage] Error 1
>> | make: *** [uImage] Error 2
>>
>> Any hints on where to start look for source of the problem?
>> In our machine config UBOOT_LOADADDR is set.
>>
>> Build Configuration:
>> BB_VERSION        =3D "1.19.0"
>> BUILD_SYS         =3D "x86_64-linux"
>> NATIVELSBSTRING   =3D "SUSE-LINUX-11"
>> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
>> MACHINE           =3D "zynq-zc706"
>> DISTRO            =3D "poky-chris"
>> DISTRO_VERSION    =3D "1.4+snapshot-20130827"
>> TUNE_FEATURES     =3D "armv7a vfp cortexa9"
>> TARGET_FPU        =3D "vfp"
>>
>> Thanks.
>> Hans
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
> Hi,
>
> I once had a similar issue with an ARM kernel. I fixed it by setting in m=
y
> machine conf for the u-boot
> UBOOT_ENTRYPOINT :=3D "0x70008000"
> and for the kernel
> KERNEL_EXTRA_ARGS +=3D "LOADADDR=3D${UBOOT_ENTRYPOINT}"
>
> In my case UBOOT_ENTRYPOINT initializes UBOOT_LOADADDR automatically, but
> both are only for u-boot. The kernel may need to be set to the same value
> manually via compile param, which then has to happen separately.
>
> Perhaps it's similar in your case. Just an idea.
>
Thanks. That did the trick! :) I added KERNEL_EXTRA_ARGS to my .bbappend.
Seems this change was made somewhere between 3.6 and 3.9. Have not
tried to figure out exactly where.

> BR,
> Lothar Rubusch
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

