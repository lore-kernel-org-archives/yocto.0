Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.10349.1615302657697763765
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 07:10:58 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 a1.net}: parse error for token &{10 18 spf.a1.net}: parse error for token &{10 18 a1telekom.at}: parse error for token &{10 18 spf.qb-feedback.com}: parse error for token &{10 18 spf2.qb-feedback.com}: limit exceeded (domain: streamunlimited.com, ip: 198.145.29.25, mailfrom: quentin.schulz@streamunlimited.com)
Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5E04638C052B
	for <yocto@yoctoproject.org>; Tue,  9 Mar 2021 15:10:56 +0000 (UTC)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4DvzDZ4Jsjz5tlH;
	Tue,  9 Mar 2021 16:10:54 +0100 (CET)
Date: Tue, 9 Mar 2021 16:10:53 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Leon Woestenberg <leon@sidebranch.com>
Cc: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] how often would one use "VAR_someoverride_append = ..."?
Message-ID: <20210309151053.uwkncgivu3h27mxr@qschulz>
References: <fd294e8a-cc9e-d9f-33d9-cc30f27ff0@crashcourse.ca>
 <CAMjhiJgF_c+Q1--wyTvLwnO36n=dNgU=ii7yN6G7c7Tksxyw0w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMjhiJgF_c+Q1--wyTvLwnO36n=dNgU=ii7yN6G7c7Tksxyw0w@mail.gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Leon,

On Tue, Mar 09, 2021 at 03:55:03PM +0100, Leon Woestenberg wrote:
> Hello Robert, all,
> 
> On Tue, Mar 9, 2021 at 3:39 PM Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> > is there an actual practical usage of, say:
> >
> >   VAR_x86_append = "huh"
> >
> $grep -re '[A-Z_]\+_[a-z0-9]\+_append' poky/meta*
> poky/meta/recipes-support/gmp/gmp_6.2.0.bb:EXTRA_OECONF_mipsarchr6_append
> = " --disable-assembly"
> poky/meta/recipes-core/images/build-appliance-image_15.0.0.bb:IMAGE_CMD_ext4_append
> () {
> poky/meta/recipes-devtools/python/python3_3.8.2.bb:RDEPENDS_libpython3_append_libc-glibc
> = " libgcc"
> poky/meta/recipes-devtools/gdb/gdb-common.inc:RRECOMMENDS_gdb_append_linux
> = " glibc-thread-db "
> poky/meta/recipes-devtools/gdb/gdb-common.inc:RRECOMMENDS_gdb_append_linux-gnueabi
> = " glibc-thread-db "
> poky/meta/recipes-devtools/gdb/gdb-common.inc:RRECOMMENDS_gdbserver_append_linux
> = " glibc-thread-db "
> poky/meta/recipes-devtools/gdb/gdb-common.inc:RRECOMMENDS_gdbserver_append_linux-gnueabi
> = " glibc-thread-db "
> 
> which is appending an override variable conditionally with another
> override condition. (If I put this correctly.) Is this a valid use
> case where += would not work?
> 

Define what you mean by "where += would not work", I'm not sure to have
enough context to answer this question.

gdb/gdbserver above would be replaced with ${PN} in many/most recipes.
I am not sure how ${PN} "overrides" are handled but that would be a
valid use case for VAR_foo_append.

I think Robert and I were talking about foo being part of OVERRIDES
variable meaning we (I at least) oversaw this, thanks for the heads up.

> Other appearances without an override condition:
> $ grep -re '[A-Z_]\+_[a-z0-9]\+_append' meta-*
> meta-openembedded/<..>/libnma_1.8.28.bb:EXTRA_OEMESON_mipsarchn32_append
> = " -Dvapi=false"
> meta-openembedded/<..>/libnma_1.8.28.bb:EXTRA_OEMESON_riscv32_append =
> " -Dvapi=false"
> 
> Could these have been replaced with the following?
> 
> EXTRA_OEMESON_mipsarchn32 += "-Dvapi=false"
> EXTRA_OEMESON_riscv32 += "-Dvapi=false"
> 

Considering there are no EXTRA_OEMESON_mipsarchn32 in any of the classes
included and that EXTRA_OEMESON expects a space-separated list of
strings, it'd probably be ok.

However, this seems fishy... It is possible that this is a mistake and
one should have written EXTRA_OEMESON_append_mipsarchn32...

If EXTRA_OEMESON was intended to be overwritten completly for
mipsarchn32 to disable gobject-introspection, having
GI_DATA_ENABLED_mipsarchn32 = "False"  and
EXTRA_OEMESON_append_mipsarchn32 = " -Dvapi=false"  would be more
suitable.

If I were you, I would ask on the ML if it was intended and adding the
committer in Cc :)

Quentin
