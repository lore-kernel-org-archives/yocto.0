Return-Path: <dallas.a.clement@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46F8BE01304
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 07:37:19 -0700 (PDT)
Received: by weyr3 with SMTP id r3so5717967wey.35
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 07:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=4vDIld5gMrDMJokRdYVYEpCdzOwAXrEHG6/KkeMKDdY=;
	b=jmsWkZEPbwwaazcVMJ6IYU/JXCXX86nHJcM4TRQk5JXzTfadY3Ir709NG7pPJGklZD
	r76zM4HnmMZoTkRvPITledcGZ0gzMREP9MuWXqhdWTHzT9ejWPJ6wQzsgyHazZIPOp61
	ioP7lfjtM/EDjpOB5+R8eBhtCEE1lEYC53c2q9lUTZlv8T/cokxqd6BRVNSeiKS2rJC/
	kUdKgwfGU6pbCcZJaGgL8kk/xwJGt1dIxX5r7ZMREW0WiEXhK3V8IqAgezI5yBrh0hnD
	dM2qkxe9oYNcwO3+B4AJgMHiUdiYN8rvQ8zle7Mucu2Pq+1nL3M1wgznwWuwyxvu7fXp
	uZiQ==
MIME-Version: 1.0
Received: by 10.180.78.197 with SMTP id d5mr4043092wix.7.1340116637450; Tue,
	19 Jun 2012 07:37:17 -0700 (PDT)
Received: by 10.180.14.193 with HTTP; Tue, 19 Jun 2012 07:37:17 -0700 (PDT)
In-Reply-To: <CAE9DZUTAMXWnc2hJPvVyzwWaRPR3jWvKvxKez5cw8UHktNF9Mg@mail.gmail.com>
References: <CAE9DZUTAMXWnc2hJPvVyzwWaRPR3jWvKvxKez5cw8UHktNF9Mg@mail.gmail.com>
Date: Tue, 19 Jun 2012 09:37:17 -0500
Message-ID: <CAE9DZUS1iRhOfFygpPnCCdr+NJsyjLg6_fU0xKSnpPs0JGERLg@mail.gmail.com>
From: Dallas Clement <dallas.a.clement@gmail.com>
To: yocto@yoctoproject.org
Subject: trouble building bsp for arm
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
X-List-Received-Date: Tue, 19 Jun 2012 14:37:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all, =A0Please bear with me as I am a newb to both yocto and building
bsp's. =A0 I was able to run bitbake core-image-minimal for x86-64, just fi=
ne and
run it in qemu.

Then I got gutsy and tried to build a bsp for ARM. =A0Didn't go so well.
=A0I must be missing something.

dallasc ~/development/yocto/poky-denzil-7.0] scripts/yocto-bsp create
marvell-armada-xp-mv78260 qemu
Which qemu architecture would you like to use? [default: i386]
=A0 =A0 =A0 =A01) i386 =A0 =A0(32-bit)
=A0 =A0 =A0 =A02) x86_64 =A0(64-bit)
=A0 =A0 =A0 =A03) ARM =A0 =A0 (32-bit)
=A0 =A0 =A0 =A04) PowerPC (32-bit)
=A0 =A0 =A0 =A05) MIPS =A0 =A0(32-bit)
3
Would you like to use the default (3.2) kernel? (y/n) [default: y]
Do you need a new machine branch for this BSP (the alternative is to
re-use an existing branch)? [y/n] [default: y]
Getting branches from remote repo None...
Traceback (most recent call last):
=A0File "scripts/yocto-bsp", line 137, in <module>
=A0 =A0ret =3D main()
=A0File "scripts/yocto-bsp", line 132, in main
=A0 =A0invoke_subcommand(args, parser, yocto_bsp_help_usage, subcommands)
=A0File "/development/dallasc/yocto/poky-denzil-7.0/scripts/lib/bsp/help.py=
",
line 73, in invoke_subcommand
=A0 =A0subcommands.get(args[0], subcommand_error)[0](args[1:], usage)
=A0File "scripts/yocto-bsp", line 76, in yocto_bsp_create_subcommand
=A0 =A0yocto_bsp_create(machine, karch, scripts_path, bsp_output_dir,
options.codedump, options.properties_file)
=A0File "/development/dallasc/yocto/poky-denzil-7.0/scripts/lib/bsp/engine.=
py",
line 1243, in yocto_bsp_create
=A0 =A0run_program_lines(program_lines, codedump)
SyntaxError: function specified for 'gen' property returned nothing :
input type:"choicelist" name:"new_kbranch"
gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine
branch to base this BSP on:" default:"standard/default"

Can anyone recommend what I should do to get past this?

Thanks,

Dallas

