Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBB3CE0059B
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2012 09:08:03 -0800 (PST)
Received: by lagu2 with SMTP id u2so1301500lag.35
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2012 09:08:02 -0800 (PST)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates
	10.152.147.1 as permitted sender) client-ip=10.152.147.1; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of raj.khem@gmail.com
	designates 10.152.147.1 as permitted sender)
	smtp.mail=raj.khem@gmail.com;
	dkim=pass header.i=raj.khem@gmail.com
Received: from mr.google.com ([10.152.147.1])
	by 10.152.147.1 with SMTP id tg1mr12152327lab.22.1330362482392
	(num_hops = 1); Mon, 27 Feb 2012 09:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=xWz1+E70Vmvfr97BjVFhsaZPS1PYZDdZ+AlHADm6qXg=;
	b=L6oAREZeC0OY2RtbC2G12p+/z7SyzJcIv/pHfsk3guTJjb16a4Z07/n303U4jnfkoK
	URVwl0uVauahJhimIdqVpQLuOct3Z/XgnvqZ5KnDEPQhiUYU3mBoaAQilS/8EnrMUHxZ
	6xGKgXKWNVU41jiHVYjanRCHqQhs/04sX9gDQ=
Received: by 10.152.147.1 with SMTP id tg1mr10157205lab.22.1330362482322; Mon,
	27 Feb 2012 09:08:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.27.109 with HTTP; Mon, 27 Feb 2012 09:07:32 -0800 (PST)
In-Reply-To: <4F4BB0B9.1030809@linux.intel.com>
References: <4F4BB0B9.1030809@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 27 Feb 2012 09:07:32 -0800
Message-ID: <CAMKF1sqp-4PkEXTdbNRxEXxFhtPAi9LAn4ibhyHhjqBk6WESAQ@mail.gmail.com>
To: John Toomey <john.toomey@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: uclibc elfutils
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
X-List-Received-Date: Mon, 27 Feb 2012 17:08:04 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 27, 2012 at 8:35 AM, John Toomey
<john.toomey@linux.intel.com> wrote:
> Hello all,
>
> I'm having some difficulty building elfutils (required by gdb) and I think
> its relating to the fact that im using uclibc.

Yes elfutils has some glibc kinship unfortunately which is hard to untangle.
However gdb does not need elfutils in fact. please cherry-pick
following commit from oe-core master

commit 8330205eeb605354c139605618255940e3b312d4
Author: Khem Raj <raj.khem@gmail.com>
Date:   Fri Jan 20 17:07:42 2012 -0800

    gdb-common: Drop elfutils from DEPENDS

    Signed-off-by: Khem Raj <raj.khem@gmail.com>


>
> NOTE: package elfutils-0.148-r5: task do_compile: Started
> ERROR: Function failed: do_compile (see
> /tmp/work/i586-poky-linux-uclibc/elfutils-0.148-r5/temp/log.do_compile.14653
> for further information)
> ERROR: Logfile of failure stored in:
> /tmp/work/i586-poky-linux-uclibc/elfutils-0.148-r5/temp/log.do_compile.14653
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
> 'common-linux', 'common-uclibc', 'i586-linux-uclibc', 'common']
> | NOTE: make -j 24 -C libelf
> | make: Entering directory
> `/tmp/work/i586-poky-linux-uclibc/elfutils-0.148-r5/elfutils-0.148/libelf'
> ...
> | elf_error.c:56:21: fatal error: libintl.h: No such file or directory
> | compilation terminated.
> | make: *** [elf_error.o] Error 1
> | make: *** Waiting for unfinished jobs....
> | make: Leaving directory
> `/tmp/work/i586-poky-linux-uclibc/elfutils-0.148-r5/elfutils-0.148/libelf'
> | ERROR: oe_runmake failed
> NOTE: package elfutils-0.148-r5: task do_compile: Failed
> ERROR: Task 218
> ([path]/poky/meta/recipes-devtools/elfutils/elfutils_0.148.bb, do_compile)
> failed with exit code '1'
>
> The build works if I switch to eglibc. Can anyone help me figure out what
> might cause this?
>
> Regards
> John
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

