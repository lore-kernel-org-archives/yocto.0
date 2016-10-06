Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32419E00AD8; Thu,  6 Oct 2016 12:09:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.51 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41919E00AAB
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 12:09:03 -0700 (PDT)
Received: by mail-lf0-f51.google.com with SMTP id b81so24724390lfe.1
	for <yocto@yoctoproject.org>; Thu, 06 Oct 2016 12:09:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=he7ZUyvQCMae6If0YhXuluciZWSlNNXT+p/bRGjEl9k=;
	b=dSxXtmg99kl1FhNsJa+rVXeP+eIilF7FVqU7zCl7b9Zdnnb00sYL6N3pACXRBjOMjo
	QgE06diXX/odJ1aOM3NENSh8pU5VFFlwJn6WdhZaJJ9n1yZCEYn98jIMUtiT7lHiZIBc
	lB8CF0ROsHlLZ9ZBitHk9hg7gtGTEOAjmNFkXlBKDjARg06B75ceje8csN2bIBq1liDJ
	w6frV6arIn8PIwxUxV1CIpvVXHaKhp4mW25PQ4HZrfxXeP481REr52bF0htruegBPMrz
	UAWsq34GWDyY+U0G+QiYbVPdQmd5i3yVkzX/haWuT+X2vuE6kc4dwPsnjlLsom5LipV4
	Ej+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=he7ZUyvQCMae6If0YhXuluciZWSlNNXT+p/bRGjEl9k=;
	b=XwqmZcouR4FRJR5rn8HvAz0okdJ1ljqZMpjR7pK+ld0dJPdEV9ehfZKonLnIfwtPuu
	NEBoD0lJgRMieRHEQ5qV4SoNZzS/7BdJOh9gxeioUOIBHp1gaXIcMDqGRvc6wQutnJ+Y
	yCILC5ZYBBXiI6GURCQ1Lge7pqYSC9N68qlkMtwsG39C0LTd3elGvhKZR2jifW5gUu4d
	K+4ibRdtZ1Q8su7LGy4bnsidq5Jo4qF/NuJ7Fg96VjehIrMIcT8viJpN7t0zeW4y4ijk
	DfptyE99h654oWyu0dXejbyIWVQGRlBZAalbNf/ktBPFGiZZaUHXjhXOK4XAvh1Z3rVh
	+0gg==
X-Gm-Message-State: AA6/9RlterNQrq0B4F3yOEc9YqaOGdurvJjvLnyKoBqIB08abFSg5wF2ubtYb2/asElumRuCL290KZlBPLJ7Cg==
X-Received: by 10.46.32.31 with SMTP id g31mr6640582ljg.47.1475780942146; Thu,
	06 Oct 2016 12:09:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.1.18 with HTTP; Thu, 6 Oct 2016 12:09:01 -0700 (PDT)
In-Reply-To: <CABatt_xfx-PXerUpGwk0Ru+wEvLfEgSfY4J9=+qqUg4XjvmFwQ@mail.gmail.com>
References: <CABatt_xfx-PXerUpGwk0Ru+wEvLfEgSfY4J9=+qqUg4XjvmFwQ@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Thu, 6 Oct 2016 20:09:01 +0100
Message-ID: <CABatt_wz7Xrtfd-diTYc+0q9rXcSNJXVK3f5LgmvNN5DMw0FCw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: SDK Problems for SuperH 4
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
X-List-Received-Date: Thu, 06 Oct 2016 19:09:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 6, 2016 at 7:57 PM, Martin Townsend <mtownsend1973@gmail.com> w=
rote:
> Hi,
>
> We have a poky sato distributions successfully built and running for
> our SuperH 4 processor board.  The problem is the SDK that is built
> when using -cpopulate_sdk doesn't.
>
> The simple Makefile:
> hellomake: HelloWorld.c
> $(CC) -o HelloWorld HelloWorld.c

Hit send before I had chance to finish :)

ignore the missing tab but when trying to compile (after sourcing the
SDK environment) I get
sh4-poky-linux-gcc  -ml -m4
--sysroot=3D/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux -o HelloWorld
HelloWorld.o
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linux=
/gcc/sh4-poky-linux/4.9.3/real-ld:
cannot find crt1.o: No such file or directory
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linux=
/gcc/sh4-poky-linux/4.9.3/real-ld:
cannot find crti.o: No such file or directory
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linux=
/gcc/sh4-poky-linux/4.9.3/real-ld:
cannot find crtbegin.o: No such file or directory
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linux=
/gcc/sh4-poky-linux/4.9.3/real-ld:
cannot find -lgcc
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linux=
/gcc/sh4-poky-linux/4.9.3/real-ld:
cannot find -lgcc_s
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linux=
/gcc/sh4-poky-linux/4.9.3/real-ld:
cannot find -lc
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linux=
/gcc/sh4-poky-linux/4.9.3/real-ld:
cannot find -lgcc
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linux=
/gcc/sh4-poky-linux/4.9.3/real-ld:
cannot find -lgcc_s
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linux=
/gcc/sh4-poky-linux/4.9.3/real-ld:
cannot find crtend.o: No such file or directory
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linux=
/gcc/sh4-poky-linux/4.9.3/real-ld:
cannot find crtn.o: No such file or directory

So I tried the compiler and sysroot from the build
CC=3D/ws/vms/vms-rsc-yocto-build/build_vms/tmp/sysroots/x86_64-linux/usr/bi=
n/sh4-poky-linux/sh4-poky-linux-gcc
SYSROOT=3D/ws/vms/vms-rsc-yocto-build/build_vms/tmp/sysroots/sh7760

hellomake: HelloWorld.c
$(CC) --sysroot=3D$(SYSROOT) -o HelloWorld HelloWorld.c

and it compiles fine.

So I ran $CC -print-search-dirs
install: /opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-=
linux/gcc/sh4-poky-linux/4.9.3/
programs: =3D/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/s=
h4-poky-linux/gcc/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/x86_64-=
pokysdk-linux/usr/libexec/sh4-poky-linux/gcc/sh4-poky-linux/4.9.3/:/opt/sdk=
/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linux/gcc/sh4=
-poky-linux/:/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-p=
oky-linux/gcc/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/x86_64-poky=
sdk-linux/usr/lib/sh4-poky-linux/gcc/sh4-poky-linux/:/opt/sdk/vms/2.0.2/sys=
roots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux/gcc/sh4-poky-linux/4.9.3/=
../../../../../sh4-poky-linux/bin/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/=
sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux/gcc/sh4-poky-linux/4.9=
.3/../../../../../sh4-poky-linux/bin/
libraries: =3D/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-=
poky-linux/gcc/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/x86_64-pok=
ysdk-linux/usr/lib/sh4-poky-linux/gcc/sh4-poky-linux/4.9.3/../../../../../s=
h4-poky-linux/lib/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/x86_64-=
pokysdk-linux/usr/lib/sh4-poky-linux/gcc/sh4-poky-linux/4.9.3/../../../../.=
./sh4-poky-linux/lib/:/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/lib/sh4=
-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/lib/:/opt/=
sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/usr/lib/sh4-poky-linux/4.9.3/:/opt=
/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/usr/lib/

Then I checked that these files exist:
martin@martin-ubuntu-pconcepts:/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux$
find $SDKTARGETSYSROOT -name "crt*"
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/crtn.o
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/crti.o
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/crt1.o
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3/crt=
endS.o
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3/crt=
end.o
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3/crt=
beginT.o
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3/crt=
beginS.o
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3/crt=
begin.o

Putting the library search directories on a separate line
martin@martin-ubuntu-pconcepts:/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux$
$CC -print-search-dirs | grep "^libraries:" | tr ':' '\n'
libraries
 =3D/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux=
/gcc/sh4-poky-linux/4.9.3/
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux/gcc=
/sh4-poky-linux/4.9.3/../../../../../sh4-poky-linux/lib/sh4-poky-linux/4.9.=
3/
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux/gcc=
/sh4-poky-linux/4.9.3/../../../../../sh4-poky-linux/lib/
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/lib/sh4-poky-linux/4.9.3/
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/lib/
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/usr/lib/sh4-poky-linux/4.9.3/
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/usr/lib/

So it looks like there is a spurious m4 is the library path.  Anyone
know why this has happened and how I can fix it before I wade into the
populate_sdk task.

We are using the Jethro branch and we have fixed the GCC version to
4.9.3 because this version works for SH4.

Many Thanks,
Martin.

