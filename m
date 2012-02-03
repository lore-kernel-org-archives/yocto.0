Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m020-f176.google.com (mail-lpp01m020-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 602F2E00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 23:02:31 -0800 (PST)
Received: by lboi15 with SMTP id i15so714211lbo.35
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2012 23:02:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=IYFIq/AzYcTbPmFHrnCSi2ywk/EF1msvYC59SbqJ+5g=;
	b=Zl3JNIPkEOc6/V4rYGaXxZ2naAPR8DuyaqJL52mrvhoDtqag9xH8z5Nc8dHW3nBWCN
	b6GFEp/TnyPyUBm85DdW4nqHhyKhSFrc/NA2YSjaf1GrbkkuvWTw4ZgdO4f/iF/V2zD9
	HyJL5Jq9gnTKrmUPdnNEoPHUPKwLq7Jo+pg5Q=
Received: by 10.112.86.67 with SMTP id n3mr1557554lbz.29.1328252549837; Thu,
	02 Feb 2012 23:02:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Thu, 2 Feb 2012 23:01:59 -0800 (PST)
In-Reply-To: <4F2ADA74.6090803@windriver.com>
References: <4F2ADA74.6090803@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 2 Feb 2012 23:01:59 -0800
Message-ID: <CAMKF1soh41VLuEySE9gAWjBRsu1SSMXPVAOs1TqWvk9g0psWPQ@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: prelink-cross project update
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
X-List-Received-Date: Fri, 03 Feb 2012 07:02:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Mark

Good work. Could you also forward this to oe-core ml ?

Thx
-K

On Thu, Feb 2, 2012 at 10:48 AM, Mark Hatle <mark.hatle@windriver.com> wrot=
e:
> A new version of the prelink-cross has been pushed to the repository.
>
> This version fixes a number of minor bugs found during development, it is
> also believed to resolve bug #1808 relating to ARM prelinking, and adds
> support for x86_64's x32 ABI.
>
> Special thanks to Mentor Graphics for contributing the ARM TLS fix.
>
> There were no upstream changes to the main prelink component, all changes
> are
> specific to the cross functionality. =C2=A0Below is the Changelog, since =
the last
> update:
>
> 2011-12-21 =C2=A0Mark Hatle <mark.hatle@windriver.com>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0* src/arch-x86_64.c: Add support for x32 ABI
>
> 2012-02-02 =C2=A0Mark Hatle <mark.hatle@windriver.com>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0Integrate dwarf2 signal frame patch:
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A02010-05-10 =C2=A0Paul Brook =C2=A0<paul@codeso=
urcery.com>
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0* src/dwarf2.c (adjust_dwarf2_frame): Skip 'S'=
 augmentation.
>
> 2012-02-01 =C2=A0Mark Hatle <mark.hatle@windriver.com>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0* configure.in: Fix enabling and disabling of =
SE Linux support
>
> 2012-01-26 =C2=A0Mark Hatle <mark.hatle@windriver.com>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0* elf.h, rtld/dl-lookupX.h, rtld/rtld.c: Sync =
to eglibc 2.15
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0Integrate R_ARM_TLS_DESC relocation support pa=
tch:
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A02011-04-13 =C2=A0Maciej W. Rozycki =C2=A0<macr=
o@codesourcery.com>
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0* src/prelink.h (DT_TLSDESC_PLT, R_ARM_TLS_DES=
C): New macros.
> =C2=A0 =C2=A0 =C2=A0 =C2=A0(DSO): Add info_DT_TLSDESC_PLT member.
> =C2=A0 =C2=A0 =C2=A0 =C2=A0(DT_TLSDESC_PLT_BIT): New macro.
> =C2=A0 =C2=A0 =C2=A0 =C2=A0* src/arch-arm.c (arm_prelink_rel, arm_prelink=
_rela): Handle
> =C2=A0 =C2=A0 =C2=A0 =C2=A0R_ARM_TLS_DESC relocation.
> =C2=A0 =C2=A0 =C2=A0 =C2=A0(arm_prelink_conflict_rel, arm_prelink_conflic=
t_rela): Likewise.
> =C2=A0 =C2=A0 =C2=A0 =C2=A0(arm_rel_to_rela): Likewise.
> =C2=A0 =C2=A0 =C2=A0 =C2=A0(arm_undo_prelink_rel): Likewise.
> =C2=A0 =C2=A0 =C2=A0 =C2=A0(arm_reloc_class): Likewise.
> =C2=A0 =C2=A0 =C2=A0 =C2=A0* src/dso.c (read_dynamic): Handle DT_TLSDESC_=
PLT dynamic tag.
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0* src/prelink.h: add missing prototypes for wr=
ap_listxattr,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0wrap_getxattr, wrap_setxattr
>
> 2012-01-04 =C2=A0Mark Hatle <mark.hatle@windriver.com>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0* exec.c: Check that a section is larger then =
0 bytes when
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0determining the section to segment mapp=
ing. =C2=A0This matches
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0the behavior of elfutils - readelf. =C2=
=A0Otherwise an empty
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PROGBITS section at the end of a segmen=
t will cause a
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0failure.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

