Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BB81E0078E; Thu, 24 Jul 2014 00:13:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og110.obsmtp.com (exprod8og110.obsmtp.com [64.18.3.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A578E006B7
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 00:13:16 -0700 (PDT)
Received: from mail-la0-f41.google.com ([209.85.215.41]) (using TLSv1) by
	exprod8ob110.postini.com ([64.18.7.12]) with SMTP
	ID DSNKU9CyDOH0DG10bnAwrivzHOkSfFOwCUYT@postini.com;
	Thu, 24 Jul 2014 00:13:17 PDT
Received: by mail-la0-f41.google.com with SMTP id s18so1590634lam.0
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 00:13:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=p4ia3PqO1K70UntenrTyyHh/FiF53BbrOLnIYGAbesU=;
	b=NukTqmbGYiFooe5xZkv3Tdqfbc5Yk0k7FOa/OPPFIpBvB0SJ4cOWdVNlRmL6qOfmDi
	y2REUXwODEvfYnRxCLLRCaR5j0rMQkwkZboSux5jgq714kYviYp5f9TGqoD0nGCeLHTC
	3e4uxoDnPEWdJ36Yg3I70cvdudhZYxOqmyc50IqdxAvI07IOCyx31lqnB36isrvl2zW1
	W528RbEpTMzd0P2hgVKUHplxBS26NODHPh6WqtQN2tivRKMPSG5CDrjfidsmJM+aYLpc
	1hZyMe9ShyHhKPuTepdni9SnkA8mHNdpM44tGUEANwlsslw+PqmmTJN1/mdWnXaXTt9d
	aSyQ==
X-Gm-Message-State: ALoCoQkzl0528HY2QlAuVSD2I590KU1pJnqOErNnMKemyvkkgiSQ0RIJSBGfPKcNFVhqYoT/8XfPUGNdnhVvAn/gtWhaG6JUfBa7pm3/6s2ObFrgVX0tVDCp2tY8vig6q+5DpY0Y9T2C
X-Received: by 10.112.24.167 with SMTP id v7mr6779746lbf.19.1406185994674;
	Thu, 24 Jul 2014 00:13:14 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.112.24.167 with SMTP id v7mr6779736lbf.19.1406185994550;
	Thu, 24 Jul 2014 00:13:14 -0700 (PDT)
Received: by 10.152.36.37 with HTTP; Thu, 24 Jul 2014 00:13:14 -0700 (PDT)
In-Reply-To: <loom.20140724T085712-749@post.gmane.org>
References: <loom.20140724T085712-749@post.gmane.org>
Date: Thu, 24 Jul 2014 15:13:14 +0800
Message-ID: <CAJrRHk5-ZPpUp7aASYtPOjBf4DU-UJqh_uf3pQeV0yJZXW+e+g@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: Anoop <babu.anoop@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitbake error for elfutils-native
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
X-List-Received-Date: Thu, 24 Jul 2014 07:13:21 -0000
Content-Type: multipart/alternative; boundary=001a1134997ab18f5d04feeb308f

--001a1134997ab18f5d04feeb308f
Content-Type: text/plain; charset=UTF-8

Good day Anoop,

Error is in do_patch task when applying patch for configure. Please check
the hashes in your patch if it's compatible with the HEAD or some upstream
changes for configure.

Thanks,
Joseph


On Thu, Jul 24, 2014 at 3:05 PM, Anoop <babu.anoop@gmail.com> wrote:

> bitbake for imx6qsabreauto
>
> command used
> bitbake -v tizen-common-core-image-minimal-dev
>
> I have applied fix to - meta/classes/patch.bbclass
> i.e
> + del os.environ['TMPDIR']
>
> ***Error Log****
> ERROR: Command Error: exit status: 1  Output:
> Applying patch redhat-portability.diff
> patching file backends/ChangeLog
> patching file backends/Makefile.am
> patching file backends/Makefile.in
> patching file ChangeLog
> patching file config/ChangeLog
> patching file config/eu.am
> patching file config/Makefile.in
> Hunk #1 succeeded at 147 (offset 1 line).
> Hunk #2 succeeded at 179 (offset 1 line).
> patching file config.h.in
> patching file configure
> Hunk #1 FAILED at 661.
> Hunk #2 FAILED at 678.
> Hunk #3 FAILED at 802.
> Hunk #4 FAILED at 1461.
> Hunk #5 succeeded at 4943 with fuzz 1 (offset 234 lines).
> Hunk #6 FAILED at 4869.
> Hunk #7 succeeded at 5535 (offset 256 lines).
> Hunk #8 FAILED at 6015.
> Hunk #9 succeeded at 7010 with fuzz 1 (offset 257 lines).
> 6 out of 9 hunks FAILED -- rejects in file configure
> patching file configure.ac
> patching file lib/ChangeLog
> patching file lib/eu-config.h
> patching file lib/Makefile.in
> patching file libasm/ChangeLog
> patching file libasm/Makefile.in
> patching file libcpu/ChangeLog
> patching file libcpu/i386_disasm.c
> patching file libcpu/Makefile.in
> patching file libdw/ChangeLog
> patching file libdw/dwarf_begin_elf.c
> patching file libdw/libdw.h
> patching file libdw/Makefile.in
> patching file libdwfl/ChangeLog
> patching file libdwfl/linux-core-attach.c
> patching file libdwfl/linux-pid-attach.c
> patching file libdwfl/Makefile.in
> patching file libebl/ChangeLog
> patching file libebl/Makefile.in
> patching file libelf/ChangeLog
> patching file libelf/common.h
> patching file libelf/gnuhash_xlate.h
> patching file libelf/Makefile.in
> patching file m4/Makefile.in
> patching file Makefile.in
> patching file src/addr2line.c
> patching file src/ChangeLog
> patching file src/findtextrel.c
> patching file src/ld.h
> patching file src/Makefile.am
> patching file src/Makefile.in
> patching file src/readelf.c
> patching file src/strings.c
> patching file src/strip.c
> patching file tests/backtrace.c
> patching file tests/ChangeLog
> patching file tests/line2addr.c
> patching file tests/Makefile.in
> Patch redhat-portability.diff does not apply (enforce with -f)
> ERROR: Function failed: patch_do_patch
> ERROR: Logfile of failure stored in:
> /home/sfm/yocto_temp/build/tmp/work/i686-linux/elfutils-native/0.158-
> r0/temp/log.do_patch.3531
> ERROR: Task 993 (virtual:native:/home/sfm/yocto_temp/poky/meta/recipes-
> devtools/elfutils/elfutils_0.158.bb, do_patch) failed with exit code '1'
>
>
> ************do patch log file************************************
>
> /home/sfm/yocto_temp/poky/meta/recipes-devtools/elfutils/elfutils/
> /home/sfm/yocto_temp/poky/meta/recipes-devtools/elfutils/files/
> NOTE: Applying patch 'redhat-portability.diff' (../poky/meta/recipes-
> devtools/elfutils/elfutils-0.158/redhat-portability.diff)
> ERROR: Command Error: exit status: 1  Output:
> Applying patch redhat-portability.diff
> patching file backends/ChangeLog
> patching file backends/Makefile.am
> patching file backends/Makefile.in
> patching file ChangeLog
> patching file config/ChangeLog
> patching file config/eu.am
> patching file config/Makefile.in
> Hunk #1 succeeded at 147 (offset 1 line).
> Hunk #2 succeeded at 179 (offset 1 line).
> patching file config.h.in
> patching file configure
> Hunk #1 FAILED at 661.
> Hunk #2 FAILED at 678.
> Hunk #3 FAILED at 802.
> Hunk #4 FAILED at 1461.
> Hunk #5 succeeded at 4943 with fuzz 1 (offset 234 lines).
> Hunk #6 FAILED at 4869.
> Hunk #7 succeeded at 5535 (offset 256 lines).
> Hunk #8 FAILED at 6015.
> Hunk #9 succeeded at 7010 with fuzz 1 (offset 257 lines).
> 6 out of 9 hunks FAILED -- rejects in file configure
> patching file configure.ac
> patching file lib/ChangeLog
> patching file lib/eu-config.h
> patching file lib/Makefile.in
> patching file libasm/ChangeLog
> patching file libasm/Makefile.in
> patching file libcpu/ChangeLog
> patching file libcpu/i386_disasm.c
> patching file libcpu/Makefile.in
> patching file libdw/ChangeLog
> patching file libdw/dwarf_begin_elf.c
> patching file libdw/libdw.h
> patching file libdw/Makefile.in
> patching file libdwfl/ChangeLog
> patching file libdwfl/linux-core-attach.c
> patching file libdwfl/linux-pid-attach.c
> patching file libdwfl/Makefile.in
> patching file libebl/ChangeLog
> patching file libebl/Makefile.in
> patching file libelf/ChangeLog
> patching file libelf/common.h
> patching file libelf/gnuhash_xlate.h
> patching file libelf/Makefile.in
> patching file m4/Makefile.in
> patching file Makefile.in
> patching file src/addr2line.c
> patching file src/ChangeLog
> patching file src/findtextrel.c
> patching file src/ld.h
> patching file src/Makefile.am
> patching file src/Makefile.in
> patching file src/readelf.c
> patching file src/strings.c
> patching file src/strip.c
> patching file tests/backtrace.c
> patching file tests/ChangeLog
> patching file tests/line2addr.c
> patching file tests/Makefile.in
> Patch redhat-portability.diff does not apply (enforce with -f)
> DEBUG: Python function patch_do_patch finished
> DEBUG: Python function do_patch finished
> ERROR: Function failed: patch_do_patch
>
> Any inputs to resolve this error
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1134997ab18f5d04feeb308f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Anoop,<div><br></div><div>Error is in do_patch ta=
sk when applying patch for configure. Please check the hashes in your patch=
 if it&#39;s compatible with the HEAD or some upstream changes for configur=
e.</div>
<div><br></div><div>Thanks,</div><div>Joseph</div></div><div class=3D"gmail=
_extra"><br><br><div class=3D"gmail_quote">On Thu, Jul 24, 2014 at 3:05 PM,=
 Anoop <span dir=3D"ltr">&lt;<a href=3D"mailto:babu.anoop@gmail.com" target=
=3D"_blank">babu.anoop@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">bitbake for imx6qsabreauto<br>
<br>
command used<br>
bitbake -v tizen-common-core-image-minimal-dev<br>
<br>
I have applied fix to - meta/classes/patch.bbclass<br>
i.e<br>
+ del os.environ[&#39;TMPDIR&#39;]<br>
<br>
***Error Log****<br>
ERROR: Command Error: exit status: 1 =C2=A0Output:<br>
Applying patch redhat-portability.diff<br>
patching file backends/ChangeLog<br>
patching file backends/Makefile.am<br>
patching file backends/Makefile.in<br>
patching file ChangeLog<br>
patching file config/ChangeLog<br>
patching file config/<a href=3D"http://eu.am" target=3D"_blank">eu.am</a><b=
r>
patching file config/Makefile.in<br>
Hunk #1 succeeded at 147 (offset 1 line).<br>
Hunk #2 succeeded at 179 (offset 1 line).<br>
patching file <a href=3D"http://config.h.in" target=3D"_blank">config.h.in<=
/a><br>
patching file configure<br>
Hunk #1 FAILED at 661.<br>
Hunk #2 FAILED at 678.<br>
Hunk #3 FAILED at 802.<br>
Hunk #4 FAILED at 1461.<br>
Hunk #5 succeeded at 4943 with fuzz 1 (offset 234 lines).<br>
Hunk #6 FAILED at 4869.<br>
Hunk #7 succeeded at 5535 (offset 256 lines).<br>
Hunk #8 FAILED at 6015.<br>
Hunk #9 succeeded at 7010 with fuzz 1 (offset 257 lines).<br>
6 out of 9 hunks FAILED -- rejects in file configure<br>
patching file <a href=3D"http://configure.ac" target=3D"_blank">configure.a=
c</a><br>
patching file lib/ChangeLog<br>
patching file lib/eu-config.h<br>
patching file lib/Makefile.in<br>
patching file libasm/ChangeLog<br>
patching file libasm/Makefile.in<br>
patching file libcpu/ChangeLog<br>
patching file libcpu/i386_disasm.c<br>
patching file libcpu/Makefile.in<br>
patching file libdw/ChangeLog<br>
patching file libdw/dwarf_begin_elf.c<br>
patching file libdw/libdw.h<br>
patching file libdw/Makefile.in<br>
patching file libdwfl/ChangeLog<br>
patching file libdwfl/linux-core-attach.c<br>
patching file libdwfl/linux-pid-attach.c<br>
patching file libdwfl/Makefile.in<br>
patching file libebl/ChangeLog<br>
patching file libebl/Makefile.in<br>
patching file libelf/ChangeLog<br>
patching file libelf/common.h<br>
patching file libelf/gnuhash_xlate.h<br>
patching file libelf/Makefile.in<br>
patching file m4/Makefile.in<br>
patching file Makefile.in<br>
patching file src/addr2line.c<br>
patching file src/ChangeLog<br>
patching file src/findtextrel.c<br>
patching file src/ld.h<br>
patching file src/Makefile.am<br>
patching file src/Makefile.in<br>
patching file src/readelf.c<br>
patching file src/strings.c<br>
patching file src/strip.c<br>
patching file tests/backtrace.c<br>
patching file tests/ChangeLog<br>
patching file tests/line2addr.c<br>
patching file tests/Makefile.in<br>
Patch redhat-portability.diff does not apply (enforce with -f)<br>
ERROR: Function failed: patch_do_patch<br>
ERROR: Logfile of failure stored in:<br>
/home/sfm/yocto_temp/build/tmp/work/i686-linux/elfutils-native/0.158-<br>
r0/temp/log.do_patch.3531<br>
ERROR: Task 993 (virtual:native:/home/sfm/yocto_temp/poky/meta/recipes-<br>
devtools/elfutils/<a href=3D"http://elfutils_0.158.bb" target=3D"_blank">el=
futils_0.158.bb</a>, do_patch) failed with exit code &#39;1&#39;<br>
<br>
<br>
************do patch log file************************************<br>
<br>
/home/sfm/yocto_temp/poky/meta/recipes-devtools/elfutils/elfutils/<br>
/home/sfm/yocto_temp/poky/meta/recipes-devtools/elfutils/files/<br>
NOTE: Applying patch &#39;redhat-portability.diff&#39; (../poky/meta/recipe=
s-<br>
devtools/elfutils/elfutils-0.158/redhat-portability.diff)<br>
ERROR: Command Error: exit status: 1 =C2=A0Output:<br>
Applying patch redhat-portability.diff<br>
patching file backends/ChangeLog<br>
patching file backends/Makefile.am<br>
patching file backends/Makefile.in<br>
patching file ChangeLog<br>
patching file config/ChangeLog<br>
patching file config/<a href=3D"http://eu.am" target=3D"_blank">eu.am</a><b=
r>
patching file config/Makefile.in<br>
Hunk #1 succeeded at 147 (offset 1 line).<br>
Hunk #2 succeeded at 179 (offset 1 line).<br>
patching file <a href=3D"http://config.h.in" target=3D"_blank">config.h.in<=
/a><br>
patching file configure<br>
Hunk #1 FAILED at 661.<br>
Hunk #2 FAILED at 678.<br>
Hunk #3 FAILED at 802.<br>
Hunk #4 FAILED at 1461.<br>
Hunk #5 succeeded at 4943 with fuzz 1 (offset 234 lines).<br>
Hunk #6 FAILED at 4869.<br>
Hunk #7 succeeded at 5535 (offset 256 lines).<br>
Hunk #8 FAILED at 6015.<br>
Hunk #9 succeeded at 7010 with fuzz 1 (offset 257 lines).<br>
6 out of 9 hunks FAILED -- rejects in file configure<br>
patching file <a href=3D"http://configure.ac" target=3D"_blank">configure.a=
c</a><br>
patching file lib/ChangeLog<br>
patching file lib/eu-config.h<br>
patching file lib/Makefile.in<br>
patching file libasm/ChangeLog<br>
patching file libasm/Makefile.in<br>
patching file libcpu/ChangeLog<br>
patching file libcpu/i386_disasm.c<br>
patching file libcpu/Makefile.in<br>
patching file libdw/ChangeLog<br>
patching file libdw/dwarf_begin_elf.c<br>
patching file libdw/libdw.h<br>
patching file libdw/Makefile.in<br>
patching file libdwfl/ChangeLog<br>
patching file libdwfl/linux-core-attach.c<br>
patching file libdwfl/linux-pid-attach.c<br>
patching file libdwfl/Makefile.in<br>
patching file libebl/ChangeLog<br>
patching file libebl/Makefile.in<br>
patching file libelf/ChangeLog<br>
patching file libelf/common.h<br>
patching file libelf/gnuhash_xlate.h<br>
patching file libelf/Makefile.in<br>
patching file m4/Makefile.in<br>
patching file Makefile.in<br>
patching file src/addr2line.c<br>
patching file src/ChangeLog<br>
patching file src/findtextrel.c<br>
patching file src/ld.h<br>
patching file src/Makefile.am<br>
patching file src/Makefile.in<br>
patching file src/readelf.c<br>
patching file src/strings.c<br>
patching file src/strip.c<br>
patching file tests/backtrace.c<br>
patching file tests/ChangeLog<br>
patching file tests/line2addr.c<br>
patching file tests/Makefile.in<br>
Patch redhat-portability.diff does not apply (enforce with -f)<br>
DEBUG: Python function patch_do_patch finished<br>
DEBUG: Python function do_patch finished<br>
ERROR: Function failed: patch_do_patch<br>
<br>
Any inputs to resolve this error<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a1134997ab18f5d04feeb308f--
