Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB4EAE00B00
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 08:57:50 -0700 (PDT)
Received: by mail-lb0-f176.google.com with SMTP id 10so5938177lbg.7
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 08:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=1i8TBlBUsy3SgltBtvtOJyYv65cjz/NNAeRqEYKFRh0=;
	b=H1zIFhqZKEg8LJrlBQJoBStvgrAX31dNMCzTidoVtSp+Ofdf356/YsjV79jD8bg1ES
	nl5vMPNwukTBHxafTbxsi/YlyZRecPa90lcrekRQP0eC1isFf5pSx6J16sIbPu1ndrDL
	WZR3cpv5aQES5Fn+exzx8RJPbMzfOk1j75+uk0iaRGylJLvXAUvNjTrRd/c9kGmtaCND
	9KdqXkI3kCUJKD9VqVeCX/hJbtnHRJZ3SQe1A3SXkVdfcCAwHCOjbnFHbNQOe1Ir93k6
	NGxUWxPLjxe1CUUpk/AZQpYMXs/uO/PvlZtcNgokKfejXElCpEsQqq0k2vbuVmvaP0k2
	sX1Q==
X-Received: by 10.112.91.129 with SMTP id ce1mr2212507lbb.40.1395244669216;
	Wed, 19 Mar 2014 08:57:49 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.35.200 with HTTP; Wed, 19 Mar 2014 08:57:28 -0700 (PDT)
In-Reply-To: <AF739ED9-7B40-42DC-8D62-350F9A36AC3D@gmail.com>
References: <AF739ED9-7B40-42DC-8D62-350F9A36AC3D@gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 19 Mar 2014 08:57:28 -0700
X-Google-Sender-Auth: v0GpKAPcuYGmcxP2YPFAODjFhO0
Message-ID: <CABcZANkXsmFYfXvUp3C+fGosLvFOb7LVKJsG1jyLt6BkNfYtig@mail.gmail.com>
To: Jonatan Magnusson <jonatan.magnusson@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Missing Python modules on target
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
X-List-Received-Date: Wed, 19 Mar 2014 15:57:53 -0000
Content-Type: multipart/alternative; boundary=001a1133a602e22c8404f4f7b615

--001a1133a602e22c8404f4f7b615
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 19, 2014 at 8:40 AM, Jonatan Magnusson <
jonatan.magnusson@gmail.com> wrote:

> I am trying to use Python on my target.
>
> I added =E2=80=9Dpython=E2=80=9D to IMAGE_INSTALL. But then the "base64" =
module was not
> installed.
> Very well, I added =E2=80=9Dpython-modules=E2=80=9D to IMAGE_INSTALL, and=
 now "base64" was
> installed.
>
> But now "wsgiref" was missing. As far as I can see the only modules and
> packages that are/can be
> installed are the ones listed in
> =E2=80=9Dmeta/recipes-devtool/python/python-2.7-manifest.inc=E2=80=9D and=
 =E2=80=9Dwsgiref=E2=80=9D is not
> mentioned there.
>
> What to do?
>
> Is =E2=80=9Dwsgiref=E2=80=9D left out because it is incompatible with Yoc=
to for some
> reason? Or can I add it myself in some way?
> Is there perhaps a way to install *all* modules/packages of the Python
> standard library? Disk space is not a problem.
>

That's what python-modules is for. If it didn't include it, then it sounds
like it wasn't built at all in the python build, so that's where you'd need
to look, I'd think.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1133a602e22c8404f4f7b615
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Mar 19, 2014 at 8:40 AM, Jonatan Magnusson <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:jonatan.magnusson@gmail.com" target=3D"_blank">jonatan.magn=
usson@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":do" class=3D"a3s" style=3D"overf=
low:hidden">I am trying to use Python on my target.<br>
<br>
I added =E2=80=9Dpython=E2=80=9D to IMAGE_INSTALL. But then the &quot;base6=
4&quot; module was not installed.<br>
Very well, I added =E2=80=9Dpython-modules=E2=80=9D to IMAGE_INSTALL, and n=
ow &quot;base64&quot; was installed.<br>
<br>
But now &quot;wsgiref&quot; was missing. As far as I can see the only modul=
es and packages that are/can be<br>
installed are the ones listed in =E2=80=9Dmeta/recipes-devtool/python/pytho=
n-2.7-manifest.inc=E2=80=9D and =E2=80=9Dwsgiref=E2=80=9D is not<br>
mentioned there.<br>
<br>
What to do?<br>
<br>
Is =E2=80=9Dwsgiref=E2=80=9D left out because it is incompatible with Yocto=
 for some reason? Or can I add it myself in some way?<br>
Is there perhaps a way to install *all* modules/packages of the Python stan=
dard library? Disk space is not a problem.</div></blockquote></div><br></di=
v><div class=3D"gmail_extra">That&#39;s what python-modules is for. If it d=
idn&#39;t include it, then it sounds like it wasn&#39;t built at all in the=
 python build, so that&#39;s where you&#39;d need to look, I&#39;d think.<b=
r>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a1133a602e22c8404f4f7b615--
