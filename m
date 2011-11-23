Return-Path: <raj.khem@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78C44E00309
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 09:27:14 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ggnv2 with SMTP id v2so1870746ggn.35
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 09:27:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=4KxjDlHxUdJKaGeay81xcs1XTURFYXR6Y9OFvuCSAb8=;
	b=ZwWR8A4cz2+WtDo0WOAYRC1liGv4x8V8qtcXM/8XNtfpLBNB8snEpdiBacUBTD1fnk
	Lc5Vr8mD+nCkaGNIGjiyHS0+wdh8X6eMeWSyhW1BIImzQkkaJS8VB8yy2TmzQkChqPzJ
	XjaRlft+xF1QOPc5RV/uC7QcFCUxH5Gvs/Mjk=
Received: by 10.152.104.236 with SMTP id gh12mr15445801lab.49.1322069232990;
	Wed, 23 Nov 2011 09:27:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.24.36 with HTTP; Wed, 23 Nov 2011 09:26:40 -0800 (PST)
In-Reply-To: <1322068799.17478.8.camel@duo>
References: <DB6E482E89290547898851B8CC9D81108D109394@AUSX7MCPS302.AMER.DELL.COM>
	<CAMKF1spcuDfqdWX0pxF8=4uQ14+WepZosu0mUMv5xtwp1SQaNQ@mail.gmail.com>
	<1322068799.17478.8.camel@duo>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 23 Nov 2011 09:26:40 -0800
Message-ID: <CAMKF1so76UFyjzKpWi=SS2Y39XbfeKLrULRd-C1-7Q47h+HF-g@mail.gmail.com>
To: Michael E Brown <Michael_E_Brown@dell.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SH4 build failure fix
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
X-List-Received-Date: Wed, 23 Nov 2011 17:27:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 23, 2011 at 9:19 AM, Michael E Brown
<Michael_E_Brown@dell.com> wrote:
> On Tue, 2011-11-22 at 17:53 -0600, Khem Raj wrote:
>> On Thu, Nov 10, 2011 at 2:36 PM, =C2=A0<Michael_E_Brown@dell.com> wrote:
>> >
>> > I'm presently working on porting the build environment for three exist=
ing embedded projects over to use yocto. Unfortunately, the project which h=
as to go first is based on an SH4 chip, which isn't on the officially suppo=
rted yocto architecture list. I gave the compile a go, and ran into a build=
 error in gcc-cross-intermediate:
>> >
>> > build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-po=
ky-linux-ld: cannot find crti.o: No such file or directory
>> > build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-po=
ky-linux-ld: cannot find -lc
>> > build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-po=
ky-linux-ld: cannot find crtn.o: No such file or directory
>> >
>> > Trying to figure out the source of this build error, I found that base=
 openembedded does compile this package successfully, so I started focusing=
 on the differences. I narrowed the build failure down to this line in gcc-=
cross4.inc, which is present in openembedded, but absent in yocto/poky:
>> > =C2=A0 =C2=A0gcc-cross4.inc
>> > =C2=A0 =C2=A0EXTRA_OECONF_append_sh4 =3D " --with-multilib-list=3D --e=
nable-incomplete-targets "
>> >
>> > After I added this one line, I was able to sucessfully build a base yo=
cto image for qemu sh4. Is it possible to get this added to the upstream yo=
cto build?
>>
>> there is much more than just building toolchain. You need to make sure
>> that kernel is configured properly too and last time I remember doing
>> it in oe.dev I needed some patches on vanilla
>> kernel that may have changed now. I think adding SH4 to meta-oe can be
>> considered if you post
>> patches for that layer. Then the question remains where the remaining
>> machine support goes. It can be a new layer for secondary qemu
>> architectures.
>
> I am porting a build from a pre-existing build system where I already
> have full working rootfs and kernel, so porting our kernel is slightly
> lower on the priority list than getting userland up and running. I'll be
> working on kernel in a couple weeks, though I may get an sh4 qemu kernel
> building in the meantime. If I get that going, I'll send patches, but I
> would like to see the oe-core/yocto fixed up to build sh4 properly.
>
> There are a total of 3 packages that require fixes to get all the
> userspace packages building, and one fix to qemu to restore building sh4
> binaries. In addition to the already posted gcc fixes:
>
> 1) libatomics needs to be upgraded to the latest, 7.2alpha6 for sh4
> fixes. This upgrade is simply renaming the file and removing the
> already-applied patches.
>
> 2) libart: the sh4 art_config.h was dropped in oe-core. Simply copy over
> from oe.

post patches for above two. Layered architecture of OE facilitates maintain=
ing
other architectures easily enough. If there are common fixes needed send th=
em to
oe-core otherwise meta-oe can carry some of fixes if you keep them uptodate
if they go stale they may be then left out.

>
> --
> Michael
>
>
>
>

