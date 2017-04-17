Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 847C6E0053A; Sun, 16 Apr 2017 19:02:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EF8CE003E1
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 19:02:05 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id w64so25904162wma.0
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 19:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=jvMV8PD+PqJ52dV+DB/6iO0A9l2o2YaG25ZjpqIBryo=;
	b=d4z5TE4W5E/+2GY1ZWNYep4z3unz1v5K8CIJG0N/DCoJ+vyEcrHbHuvUEM9/ncCoN8
	JH2VI/bseAztddbk/kNzEJen6V3Ml31vEYGNzLhxWY1zfn8+mgmu/Sh7ANh/O6/Qqxoj
	L4h61OsuRke+RySFlntP7vV2lAEVM0/T4MV9QmYl61x1hLrIgddqaPIa0h27o0Wh6j0q
	H9KdwCHesVBu6f/K4jVXFwge2pTfdWTdYteIifQlEYhPDbGnn4oz81gYJVnHSsJc6Wqz
	4i6P5oFsLfnwqGS1GR/vXNPhCXS9F3F8ib7k0ZXGfTb58M91ViJPnJXFw3ylj8wZ5chE
	zfNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=jvMV8PD+PqJ52dV+DB/6iO0A9l2o2YaG25ZjpqIBryo=;
	b=XLpZ3RO0W/sY25lzY0zokblgIorGI/+1SCCCbLmA3vgGF1KGHJ4gn3Vh2AC90M66j1
	Fc7mOWpA6HuLBcc41Z5kTkKkSJKM9RIucyoicxtQILPgTy9gGF1KVt8yIWgrcE5Pp8a+
	kUpwpWPJJLjK2KsuSjtNEaEhphSV9HmhmH2O7NVNgmhclTzz9ww5zgfgKLMyMNc9Iknf
	Fn4YXXI3FX5hW3ol+mOWeclIOL5wdPsl6Hjo6bMKA1BPF0M/rXXw4jTB86qKOhWTHFDe
	XXQx3WsyBzzeRWJzIQvGfNSb9PBUfgW3Ef1X1fzkL+TF6qAX8SAsI5LcMbfGptW6x4Lk
	zJbA==
X-Gm-Message-State: AN3rC/4O+w/6h6xWLdQz0OofCvDomFKeRiitGqHzbs3vbNSKZtarf3Qz
	umcuQxj/G82bVCOP8f5eXPUEJuHoOw==
X-Received: by 10.28.206.195 with SMTP id e186mr6510232wmg.37.1492394524885;
	Sun, 16 Apr 2017 19:02:04 -0700 (PDT)
MIME-Version: 1.0
References: <B92317128F384E2BAC28643061FC76E1@PAULD>
In-Reply-To: <B92317128F384E2BAC28643061FC76E1@PAULD>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 17 Apr 2017 02:01:54 +0000
Message-ID: <CAMKF1sqOhQNDbbfnNuPyoe3xRJT-NyjVaCcowsoYpuLpvVKZ8g@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, yocto@yoctoproject.org
Subject: Re: Patch failures
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
X-List-Received-Date: Mon, 17 Apr 2017 02:02:08 -0000
Content-Type: multipart/alternative; boundary=94eb2c193df2854a3e054d532d9c

--94eb2c193df2854a3e054d532d9c
Content-Type: text/plain; charset=UTF-8

What's your build OS

On Sun, Apr 16, 2017 at 6:09 PM Paul D. DeRocco <pderocco@ix.netcom.com>
wrote:

> I'm trying to migrate an Atom-based build from Fido to Morty, and also
> switch from 32-bit mode to x32. On a clean build, it gets about half way
> through, and then suddenly coughs up a patch error. I've put blank lines
> between the log lines so that the email word wrap won't be as confusing:
>
> --
>
> DEBUG: Executing shell function do_patch
>
> (1/660) ARM-LPAE-Invalidate-the-TLB-for-module-addresses-dur.patch
>
> [INFO]: check of
> .kernel-meta//patches//arch/arm/v7-A15/ARM-LPAE-Invalidate-the-TLB-for-mod
> ule-addresses-dur.patch with "git am" did not pass, trying reduced
> context.
>
> [INFO]: Context reduced git-am of
> .kernel-meta//patches//arch/arm/v7-A15/ARM-LPAE-Invalidate-the-TLB-for-mod
> ule-addresses-dur.patch with "git am" did not work, trying "apply".
>
> error: patch failed: arch/arm/mm/fault.c:448
>
> error: arch/arm/mm/fault.c: patch does not apply
>
> [ERROR]: Application of
> .kernel-meta//patches//arch/arm/v7-A15/ARM-LPAE-Invalidate-
> the-TLB-for-module-addresses-dur.patch failed.
>
>          Patch needs to be refreshed. Sample resolution script:
>
>              .git/rebase-apply/resolve_rejects
>
> WARNING:
> /home/pauld/yocto-morty/build/tmp/work/chroma_bsp-poky-linux-gnux32/linux-
> yocto-rt/4.8.12+gitAUTOINC+926c93ae07_3bafd55e39-r0/temp/run.do_patch.3069
> 0:1 exit 1 from 'kgit-s2q --gen -v --patches .kernel-meta/'
>
> ERROR: Function failed: do_patch (log file is located at
> /home/pauld/yocto-morty/build/tmp/work/chroma_bsp-poky-linux-gnux32/linux-
> yocto-rt/4.8.12+gitAUTOINC+926c93ae07_3bafd55e39-r0/temp/log.do_patch.3069
> 0)
>
> --
>
> If I start bitbake again, it detects a "fence", and proceeds a little
> further. I can do it over and over again, and it keeps building more and
> more, but this can't be right, can it? The strange thing is that the
> patches are all about ARM, PowerPC, etc., which have nothing to do with my
> system. Could this be some fundamental misconfiguration having to do with
> my MACHINE? At the beginning of my local.conf, I have:
>
>         MACHINE ?= "chroma-bsp"
>         DEFAULTTUNE = "core2-64-x32"
>         baselib = "libx32"
>
> where chroma-bsp is defined in my own layer. My chroma-bsp.conf file
> contains (among other things):
>
>         PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-rt"
>         PREFERRED_VERSION_linux-yocto-rt ?= "4.8%"
>         require conf/machine/include/tune-atom.inc
>         require conf/machine/include/x86-base.inc
>
> I'm not really good at this. Does anyone see anything wrong?
>
> --
>
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c193df2854a3e054d532d9c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div>What&#39;s your build OS</div><div><br><div class=3D"gmail_quote"><div=
>On Sun, Apr 16, 2017 at 6:09 PM Paul D. DeRocco &lt;<a href=3D"mailto:pder=
occo@ix.netcom.com">pderocco@ix.netcom.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">I&#39;m trying to migrate an Atom-based build from F=
ido to Morty, and also<br>
switch from 32-bit mode to x32. On a clean build, it gets about half way<br=
>
through, and then suddenly coughs up a patch error. I&#39;ve put blank line=
s<br>
between the log lines so that the email word wrap won&#39;t be as confusing=
:<br>
<br>
--<br>
<br>
DEBUG: Executing shell function do_patch<br>
<br>
(1/660) ARM-LPAE-Invalidate-the-TLB-for-module-addresses-dur.patch<br>
<br>
[INFO]: check of<br>
.kernel-meta//patches//arch/arm/v7-A15/ARM-LPAE-Invalidate-the-TLB-for-mod<=
br>
ule-addresses-dur.patch with &quot;git am&quot; did not pass, trying reduce=
d<br>
context.<br>
<br>
[INFO]: Context reduced git-am of<br>
.kernel-meta//patches//arch/arm/v7-A15/ARM-LPAE-Invalidate-the-TLB-for-mod<=
br>
ule-addresses-dur.patch with &quot;git am&quot; did not work, trying &quot;=
apply&quot;.<br>
<br>
error: patch failed: arch/arm/mm/fault.c:448<br>
<br>
error: arch/arm/mm/fault.c: patch does not apply<br>
<br>
[ERROR]: Application of<br>
.kernel-meta//patches//arch/arm/v7-A15/ARM-LPAE-Invalidate-<br>
the-TLB-for-module-addresses-dur.patch failed.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Patch needs to be refreshed. Sample resol=
ution script:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.git/rebase-apply/resolve_r=
ejects<br>
<br>
WARNING:<br>
/home/pauld/yocto-morty/build/tmp/work/chroma_bsp-poky-linux-gnux32/linux-<=
br>
yocto-rt/4.8.12+gitAUTOINC+926c93ae07_3bafd55e39-r0/temp/run.do_patch.3069<=
br>
0:1 exit 1 from &#39;kgit-s2q --gen -v --patches .kernel-meta/&#39;<br>
<br>
ERROR: Function failed: do_patch (log file is located at<br>
/home/pauld/yocto-morty/build/tmp/work/chroma_bsp-poky-linux-gnux32/linux-<=
br>
yocto-rt/4.8.12+gitAUTOINC+926c93ae07_3bafd55e39-r0/temp/log.do_patch.3069<=
br>
0)<br>
<br>
--<br>
<br>
If I start bitbake again, it detects a &quot;fence&quot;, and proceeds a li=
ttle<br>
further. I can do it over and over again, and it keeps building more and<br=
>
more, but this can&#39;t be right, can it? The strange thing is that the<br=
>
patches are all about ARM, PowerPC, etc., which have nothing to do with my<=
br>
system. Could this be some fundamental misconfiguration having to do with<b=
r>
my MACHINE? At the beginning of my local.conf, I have:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 MACHINE ?=3D &quot;chroma-bsp&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 DEFAULTTUNE =3D &quot;core2-64-x32&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 baselib =3D &quot;libx32&quot;<br>
<br>
where chroma-bsp is defined in my own layer. My chroma-bsp.conf file<br>
contains (among other things):<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 PREFERRED_PROVIDER_virtual/kernel ?=3D &quot;li=
nux-yocto-rt&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 PREFERRED_VERSION_linux-yocto-rt ?=3D &quot;4.8=
%&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 require conf/machine/include/tune-atom.inc<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 require conf/machine/include/x86-base.inc<br>
<br>
I&#39;m not really good at this. Does anyone see anything wrong?<br>
<br>
--<br>
<br>
Ciao,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Paul D. DeRocco=
<br>
Paul=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mailto:<a href=
=3D"mailto:pderocco@ix.netcom.com" target=3D"_blank">pderocco@ix.netcom.com=
</a><br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--94eb2c193df2854a3e054d532d9c--
