Return-Path: <btraynor@gmail.com>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0489BE013A7
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 08:13:05 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id l18so525429wgh.11
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 08:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=rnEVf9hQJrWzhlPiAoG7NquxvaPYCi5JjfQ+b+lSXQM=;
	b=PHZyTqUqljX9VXeZg4scua7S0fj0purT4awQpHDPNFE8dbMv3nh8CHjPiLNkkNRGCY
	GVNrRZQo0/1aNQS4S5LJuNrpeKVBKRkwTuwubHl3a9njDuZtCMNPKGyl0b3cLXipRaBR
	I06QASHTyexFVYSRRBLHDR6FDFbiCxcDdNNW1InDk6aX+27Ks3gJr3Am6hdB4eEyjS36
	UhX+EJSMPFAL5ge4uVtJBDljzPWd/RADayCF96TlNF5YwZ5cbcqU0ahMBgYqhAQIhFcs
	JgwfH7/2HJuIJHgxzuYxNnOP6XRvsj4GcJ5ob4X3LdTjQ2L/ek3yOf+Mo0k+5jxYc9GC
	pykA==
X-Received: by 10.194.240.201 with SMTP id wc9mr27402783wjc.1.1374678784056;
	Wed, 24 Jul 2013 08:13:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.85.166 with HTTP; Wed, 24 Jul 2013 08:12:22 -0700 (PDT)
In-Reply-To: <CAOMwXhNt-p4iEJnuGYb75WJtA+5PbnsSouJSriQaa-rnRsOn2Q@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F06185@ORSMSX106.amr.corp.intel.com>
	<CAN20qYp+MW8+LMWS29ZDfmNoh+yRkadLsnbatY8btX8yAU7Rsg@mail.gmail.com>
	<CAOMwXhNt-p4iEJnuGYb75WJtA+5PbnsSouJSriQaa-rnRsOn2Q@mail.gmail.com>
From: Bill Traynor <btraynor@gmail.com>
Date: Wed, 24 Jul 2013 11:12:22 -0400
Message-ID: <CAN20qYrikM0gNDSOCEsxv_kCSSOTdon8bJqyL4Z-1RKq-z2MHA@mail.gmail.com>
To: Laszlo Papp <lpapp@kde.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: FW: FW: [OE-core] Doc: external toolchain
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
X-List-Received-Date: Wed, 24 Jul 2013 15:13:08 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jul 24, 2013 at 11:08 AM, Laszlo Papp <lpapp@kde.org> wrote:
> I was using that based on the non-official documentation (i.e. presentation
> at the Linux event).

external-sourcery is the new TCMODE and should work, however, I just
thought trying the old one may work.

>
>
> On Wed, Jul 24, 2013 at 4:06 PM, Bill Traynor <btraynor@gmail.com> wrote:
>>
>> Try with:
>>
>> TCMODE = "external-csl"
>> EXTERNAL_TOOLCHAIN = "/path/to/sourcery/toolchain"
>>
>> On Wed, Jul 24, 2013 at 3:47 AM, Rifenbark, Scott M
>> <scott.m.rifenbark@intel.com> wrote:
>> > Hi,
>> >
>> >
>> >
>> > Can anyone address the toolchain questions here for Laszlo?
>> >
>> >
>> >
>> > Thanks,
>> >
>> > Scott
>> >
>> >
>> >
>> > From: djszapi@archlinux.us [mailto:djszapi@archlinux.us] On Behalf Of
>> > Laszlo
>> > Papp
>> > Sent: Tuesday, July 23, 2013 11:52 PM
>> > To: Rifenbark, Scott M
>> > Cc: Wold, Saul
>> > Subject: Re: FW: [OE-core] Doc: external toolchain
>> >
>> >
>> >
>> > OK, thanks.
>> >
>> >
>> >
>> > I am facing this issue, any clue?
>> >
>> >
>> >
>> > ERROR: Failed to obtain CodeSourcery toolchain version: Execution of
>> > '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found
>> >
>> > ERROR: Failed to obtain CodeSourcery toolchain version: Execution of
>> > '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found
>> >
>> >
>> >
>> > This is what I have in my build/conf/local.conf:
>> >
>> >
>> >
>> > ...
>> >
>> > TCMODE = "external-sourcery"
>> >
>> > EXTERNAL_TOOLCHAIN = "/usr"
>> >
>> > TARGET_PREFIX = "arm-none-linux-gnueabi-"
>> >
>> > ...
>> >
>> >
>> >
>> > The external toolchain does exist:
>> >
>> >
>> >
>> > /usr/bin/arm-none-linux-gnueabi-gcc -v
>> >
>> > Using built-in specs.
>> >
>> > COLLECT_GCC=/usr/bin/arm-none-linux-gnueabi-gcc
>> >
>> >
>> > COLLECT_LTO_WRAPPER=/usr/bin/../libexec/gcc/arm-none-linux-gnueabi/4.7.3/lto-wrapper
>> >
>> > Target: arm-none-linux-gnueabi
>> >
>> > Configured with:
>> > /scratch/jbrown/2013.05-arm-linux-release/src/gcc-4.7-2013.05/configure
>> > --build=i686-pc-linux-gnu --host=i686-pc-linux-gnu
>> > --target=arm-none-linux-gnueabi --enable-threads --disable-libmudflap
>> > --disable-libssp --disable-libstdcxx-pch
>> > --enable-extra-sgxxlite-multilibs
>> > --with-arch=armv5te --with-gnu-as --with-gnu-ld
>> > --with-specs='%{save-temps:
>> > -fverbose-asm}
>> >
>> > %{funwind-tables|fno-unwind-tables|mabi=*|ffreestanding|nostdlib:;:-funwind-tables}
>> > -D__CS_SOURCERYGXX_MAJ__=2013 -D__CS_SOURCERYGXX_MIN__=5
>> > -D__CS_SOURCERYGXX_REV__=24 %{O2:%{!fno-remove-local-statics:
>> > -fremove-local-statics}}
>> > %{O*:%{O|O0|O1|O2|Os:;:%{!fno-remove-local-statics:
>> > -fremove-local-statics}}}' --enable-languages=c,c++ --enable-shared
>> > --enable-lto --enable-symvers=gnu --enable-__cxa_atexit
>> > --with-pkgversion='Sourcery CodeBench Lite 2013.05-24'
>> > --with-bugurl=https://sourcery.mentor.com/GNUToolchain/ --disable-nls
>> > --prefix=/opt/codesourcery
>> > --with-sysroot=/opt/codesourcery/arm-none-linux-gnueabi/libc
>> >
>> > --with-build-sysroot=/scratch/jbrown/2013.05-arm-linux-release/install/arm-none-linux-gnueabi/libc
>> >
>> > --with-gmp=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
>> >
>> > --with-mpfr=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
>> >
>> > --with-mpc=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
>> >
>> > --with-ppl=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
>> > --with-host-libstdcxx='-static-libgcc -Wl,-Bstatic,-lstdc++,-Bdynamic
>> > -lm'
>> >
>> > --with-cloog=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
>> >
>> > --with-libelf=/scratch/jbrown/2013.05-arm-linux-release/obj/pkg-2013.05-24-arm-none-linux-gnueabi/arm-2013.05-24-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr
>> > --disable-libgomp --disable-libitm --enable-poison-system-directories
>> >
>> > --with-build-time-tools=/scratch/jbrown/2013.05-arm-linux-release/install/arm-none-linux-gnueabi/bin
>> >
>> > --with-build-time-tools=/scratch/jbrown/2013.05-arm-linux-release/install/arm-none-linux-gnueabi/bin
>> >
>> > Thread model: posix
>> >
>> > gcc version 4.7.3 (Sourcery CodeBench Lite 2013.05-24)
>> >
>> >
>> >
>> > On Wed, Jul 24, 2013 at 7:19 AM, Rifenbark, Scott M
>> > <scott.m.rifenbark@intel.com> wrote:
>> >
>> > Laszlo,
>> >
>> > Saul forwarded me this email regarding external toolchains.  The "In
>> > Progress" version of the YP Reference Manual has a new section on
>> > toolchains
>> > in general.  This section, combined with the TCMODE glossary entry and a
>> > FAQ
>> > entry, both in the reference manual, comprise our information on the
>> > external toolchain topic.  Let me know what specifically would need
>> > additionally addressed and I can get that on my plate to improve the doc
>> > set.
>> >
>> > Thanks,
>> > Scott
>> >
>> >
>> > http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#cross-development-toolchain-generation
>> >
>> > http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-TCMODE
>> >
>> > http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#idm622640
>> >
>> >
>> >
>> >
>> >>-----Original Message-----
>> >>From: Saul Wold [mailto:sgw@linux.intel.com]
>> >>Sent: Tuesday, July 23, 2013 3:52 PM
>> >>To: Rifenbark, Scott M
>> >>Subject: Fwd: [OE-core] Doc: external toolchain
>> >>
>> >>
>> >>
>> >>
>> >>-------- Original Message --------
>> >>Subject:       [OE-core] Doc: external toolchain
>> >>Date:  Tue, 23 Jul 2013 23:45:28 +0100
>> >>From:  Laszlo Papp <lpapp@kde.org>
>> >>To:    openembedded-core@lists.openembedded.org
>> >>
>> >>
>> >>
>> >>Dear gents and ladies,
>> >>
>> >>it would be nice to get some documentation about this subject. There is
>> >>only one presentation with only a few short slides about the topic:
>> >>http://events.linuxfoundation.org/images/stories/slides/elc2013_denys.pd
>> >>f
>> >>
>> >>I am now having some issues currently, and hard time to figure out what
>> >>is going on. Note, this thread is not about getting help with that
>> >>particular issue, but encouraging you to document this, for me,
>> >>fundamental feature more thoroughly.
>> >>
>> >>Thank you for your understanding.
>> >>
>> >>Many thanks,
>> >>Laszlo
>> >>
>> >>
>> >>
>> >
>> >
>> >
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>
>

