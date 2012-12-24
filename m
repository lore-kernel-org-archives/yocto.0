Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f51.google.com (mail-la0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C3ABE0146D
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2012 19:10:16 -0800 (PST)
Received: by mail-la0-f51.google.com with SMTP id e4so8038047lag.38
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2012 19:10:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=LPUUycEuHqCyrL9tOPyCJz5PfMDXY1jPB02OD4LK69w=;
	b=K79VjSOxikZkKQ10AVzyf6pEaKijtYYERB2OhOodVnwSJ6d2UGr38Gz2KYAjSThQzD
	prKbSs6W9Z9fzE4Es7v0+6aflmJgLAjwuPsqXFw0UK4z90gnNYRq6tlp4zHMa2NKrlnY
	mdkcQGkeVRN8UC3Krt7SFk2rM+Pw+AL28ngarpJPGQwrWDp6XcaYt015H5W5v5R8xFy7
	+cur8f1hGfwuI5ckIFtmkOMXHVFCWALNnW+tZkG+6L11AMAlaJFqVczN0UWjP2BAdLPy
	jRiPet7QeoGHJOSWaVu7FVZI8ButesiZRLfxDOE8GHBAS4bkbupmnXvsbQuBVcjTwfOb
	Pr1w==
MIME-Version: 1.0
Received: by 10.112.40.129 with SMTP id x1mr8303305lbk.95.1356318614964; Sun,
	23 Dec 2012 19:10:14 -0800 (PST)
Received: by 10.112.127.35 with HTTP; Sun, 23 Dec 2012 19:10:14 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1212231024040.27586@oneiric>
References: <alpine.DEB.2.02.1212231024040.27586@oneiric>
Date: Sun, 23 Dec 2012 23:10:14 -0400
Message-ID: <CADkTA4MDzpUdovXTfJ0a04XfPcpiuENu3ERWx--Xmo4EbDvDFA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: kernel manual seems to make no mention of "defconfig"
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
X-List-Received-Date: Mon, 24 Dec 2012 03:10:17 -0000
Content-Type: multipart/alternative; boundary=e0cb4efe323e3f4c7f04d190892a

--e0cb4efe323e3f4c7f04d190892a
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Dec 23, 2012 at 12:26 PM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

>
>   poking around kern-tools for purpose of documenting some stuff and
> ran across this in "updateme":
>
> split_command_line_objects() {
>         command_line_values=$@
>
>         for v in $command_line_values; do
>             v_base=`basename $v`
>             case $v_base in
>                 *.scc) migrate_feature $v
>                     ;;
>                 *.cfg) migrate_cfg $v
>                     ;;
>                 *.patch|*.diff) migrate_patch $v
>                     ;;
>                 defconfig) migrate_cfg $v;;
>                 *) ;;
>             esac
>         done
> }
>
>   AFAICT, there is no mention of a possible "defconfig" entry anywhere
> in the current yocto kernel manual.
>

You won't find it there because it isn't specific to the kern-tools, what
you see
there is a small wrapper on top of the kernel.bbclass defconfig handling,
with
the same end result. So standard yocto/oe-core docs apply here.

Cheers,

Bruce


>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--e0cb4efe323e3f4c7f04d190892a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Sun, Dec 23, 2012 at 12:26 PM, Robert P. J. Day <span dir=3D"ltr=
">&lt;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@cra=
shcourse.ca</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><br>
=A0 poking around kern-tools for purpose of documenting some stuff and<br>
ran across this in &quot;updateme&quot;:<br>
<br>
split_command_line_objects() {<br>
=A0 =A0 =A0 =A0 command_line_values=3D$@<br>
<br>
=A0 =A0 =A0 =A0 for v in $command_line_values; do<br>
=A0 =A0 =A0 =A0 =A0 =A0 v_base=3D`basename $v`<br>
=A0 =A0 =A0 =A0 =A0 =A0 case $v_base in<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 *.scc) migrate_feature $v<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ;;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 *.cfg) migrate_cfg $v<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ;;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 *.patch|*.diff) migrate_patch $v<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ;;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 defconfig) migrate_cfg $v;;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 *) ;;<br>
=A0 =A0 =A0 =A0 =A0 =A0 esac<br>
=A0 =A0 =A0 =A0 done<br>
}<br>
<br>
=A0 AFAICT, there is no mention of a possible &quot;defconfig&quot; entry a=
nywhere<br>
in the current yocto kernel manual.<br></blockquote><div><br></div><div sty=
le>You won&#39;t find it=A0there because it isn&#39;t specific to the kern-=
tools, what you see</div><div style>there is a small wrapper on top of the =
kernel.bbclass defconfig handling, with</div>
<div style>the same end result. So standard yocto/oe-core docs apply here.<=
/div><div style><br></div><div style>Cheers,</div><div style><br></div><div=
 style>Bruce</div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http://crashcour=
se.ca" target=3D"_blank">http://crashcourse.ca</a><br>
<br>
Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">http://=
twitter.com/rpjday</a><br>
LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a hr=
ef=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.linkedi=
n.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>&quot;Thou s=
halt not follow the NULL pointer, for chaos and madness await thee at its e=
nd&quot;
</div></div>

--e0cb4efe323e3f4c7f04d190892a--
