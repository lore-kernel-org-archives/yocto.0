Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-da0-f48.google.com (mail-da0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D65BE014C8
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 05:16:57 -0800 (PST)
Received: by mail-da0-f48.google.com with SMTP id k18so4250225dae.35
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 05:16:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=h0VR1J0DU4U//hWCqo9quhDEAhWFDdtDxF7gdRS7GzA=;
	b=SuZ1sUd8e1IR9m6YOXHMQj36IZ3YYqG/k4vJkAYQ+olUW4h6KDzFOhHh84aJFd/W/5
	rux41oTq788UOw+QzORxlX0KOhNPeP/vRr4tnuawqMAveDMy5UQA9ntdE8Z+g30IDxKj
	coRdarQL71eUhxhnXp2U9nlgQXKa+GDV6d4vNnISjDZ7isxjSMVG7Lup7ABYzNw6oKFe
	rfTno4cU+38QRCt3ircIFF3aX/gKUQaPE+0H5LZ+RiNldEVfv+mNNk5SE/SA/mnxbp1F
	jPlcj7VsnsJssbPRR+5/6+2QF9MnNStzxNU5JGAOJcCbbVzpn+mpuF6sP+oxtyieyT9T
	b5Bg==
MIME-Version: 1.0
X-Received: by 10.68.217.98 with SMTP id ox2mr4703572pbc.96.1359033416863;
	Thu, 24 Jan 2013 05:16:56 -0800 (PST)
Received: by 10.68.224.4 with HTTP; Thu, 24 Jan 2013 05:16:56 -0800 (PST)
In-Reply-To: <51011B18.2070105@gmail.com>
References: <51011B18.2070105@gmail.com>
Date: Thu, 24 Jan 2013 08:16:56 -0500
Message-ID: <CADkTA4McrOSHdr_xuVNC0B388HyPPGhO0PSBwaOxA3rYHEAaUw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: daniel.kenji.morgan@gmail.com
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: do_package task of the kernel takes extremely long
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
X-List-Received-Date: Thu, 24 Jan 2013 13:16:57 -0000
Content-Type: multipart/alternative; boundary=e89a8ff245d90cce2e04d408a065

--e89a8ff245d90cce2e04d408a065
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jan 24, 2013 at 6:29 AM, Daniel Kenji Morgan <
daniel.kenji.morgan@gmail.com> wrote:

> Hello,
>
> I'm still fairly new to Yocto, and having some trouble with kernel
> packaging taking an extremely long time.
> I will try and keep details as simple as possible to explain my situation.
>
> I am building images for the machine "imx6qsabrelite" in the
> "meta-fsl-arm" BSP layer using Poky 1.3 (danny).
> To make it easier to test out changes to the linux kernel source, I have
> a copy of the source in a local subversion repository, which is checked
> out to a local working copy.
>

kernel source in subversion, is obviously not an optimal configuration,
see below.


>
> I have created a kernel recipe to inherit "externalsrc" and set "S" to
> the local working copy directory.
> I have added a "configure_prepend" task to stage the build directory.
> I use "bitbake core-image-minimal" to build the image.
>
> Here is what I have found from checking the "do_package" task duration
> of the kernel in the build stats:
>
> 1. Using a local working copy directory (subversion 1.6), the duration
> exceeds 4000 seconds.
>
> 2. Using a local working copy directory (subversion 1.7), the duration
> takes approximately 800 seconds.
>
> 3. Using the original kernel recipe which obtains the kernel source off
> a Git repository from the internet, the duration takes approximately 400
> seconds.
>
>
As for the fetch, it is a one time cost, incremental updates to the tree are
simple and fast, so it can't and shouldn't be counted as a constant
overhead.
The development advantages of working out of a git repository based kernel
are significant (in terms of efficiency and diagnostics, etc) and shouldn't
be
discounted.

But as for some of the other comments, they are known and tracked by
several items in the bugtracker to address these issues:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3517
https://bugzilla.yoctoproject.org/show_bug.cgi?id=2686

as well as other bitbake/build system generic items (that I can't find at
the moment).

I already have some items in progress for 3517, and they'll be out shortly
for
inclusion in yocto 1.4.

Cheers,

Bruce



> Checking the "do_package" task, it seems like all directories and
> sub-directorys of the source are checked recursively in the process.
> I think it's safe to say that the number of subversion administrative
> directorys is affecting the "do_package" task duration.
>
> Is there any way to make the "do_package" task ignore .svn
> administrative directories?
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--e89a8ff245d90cce2e04d408a065
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Thu, Jan 24, 2013 at 6:29 AM, Daniel Kenji Morgan <span dir=3D"l=
tr">&lt;<a href=3D"mailto:daniel.kenji.morgan@gmail.com" target=3D"_blank">=
daniel.kenji.morgan@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">Hello,<br>
<br>
I&#39;m still fairly new to Yocto, and having some trouble with kernel<br>
packaging taking an extremely long time.<br>
I will try and keep details as simple as possible to explain my situation.<=
br>
<br>
I am building images for the machine &quot;imx6qsabrelite&quot; in the<br>
&quot;meta-fsl-arm&quot; BSP layer using Poky 1.3 (danny).<br>
To make it easier to test out changes to the linux kernel source, I have<br=
>
a copy of the source in a local subversion repository, which is checked<br>
out to a local working copy.<br></blockquote><div><br></div><div style>kern=
el source in subversion, is obviously not an optimal configuration,=A0</div=
><div style>see below.</div><div>=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:=
rgb(204,204,204);border-left-style:solid;padding-left:1ex">

<br>
I have created a kernel recipe to inherit &quot;externalsrc&quot; and set &=
quot;S&quot; to<br>
the local working copy directory.<br>
I have added a &quot;configure_prepend&quot; task to stage the build direct=
ory.<br>
I use &quot;bitbake core-image-minimal&quot; to build the image.<br>
<br>
Here is what I have found from checking the &quot;do_package&quot; task dur=
ation<br>
of the kernel in the build stats:<br>
<br>
1. Using a local working copy directory (subversion 1.6), the duration<br>
exceeds 4000 seconds.<br>
<br>
2. Using a local working copy directory (subversion 1.7), the duration<br>
takes approximately 800 seconds.<br>
<br>
3. Using the original kernel recipe which obtains the kernel source off<br>
a Git repository from the internet, the duration takes approximately 400<br=
>
seconds.<br>
<br></blockquote><div><br></div><div style>As for the fetch, it is a one ti=
me cost, incremental updates to the tree are</div><div style>simple and fas=
t, so it can&#39;t and shouldn&#39;t be counted as a constant overhead.</di=
v>
<div style>The development advantages of working out of a git repository ba=
sed kernel</div><div style>are significant (in terms of efficiency and diag=
nostics, etc) and shouldn&#39;t be</div><div style>discounted.</div><div st=
yle>
=A0<br></div><div style>But as for some of the other comments, they are kno=
wn and tracked by=A0</div><div style>several items in the bugtracker to add=
ress these issues:</div><div style><br></div><div style><a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D3517">https://bugzilla.yoctopro=
ject.org/show_bug.cgi?id=3D3517</a><br>
</div><div style><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?=
id=3D2686">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2686</a><br>=
</div><div style><br></div><div style>as well as other bitbake/build system=
 generic items (that I can&#39;t find at</div>
<div style>the moment).</div><div style><br></div><div style>I already have=
 some items in progress for 3517, and they&#39;ll be out shortly for</div><=
div style>inclusion in yocto 1.4.</div><div style><br></div><div style>
Cheers,</div><div style><br></div><div style>Bruce</div><div><br></div><div=
>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-sty=
le:solid;padding-left:1ex">

Checking the &quot;do_package&quot; task, it seems like all directories and=
<br>
sub-directorys of the source are checked recursively in the process.<br>
I think it&#39;s safe to say that the number of subversion administrative<b=
r>
directorys is affecting the &quot;do_package&quot; task duration.<br>
<br>
Is there any way to make the &quot;do_package&quot; task ignore .svn<br>
administrative directories?<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>&quot;Thou s=
halt not follow the NULL pointer, for chaos and madness await thee at its e=
nd&quot;
</div></div>

--e89a8ff245d90cce2e04d408a065--
