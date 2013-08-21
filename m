Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f53.google.com (mail-oa0-f53.google.com
	[209.85.219.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABC58E00406
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 17:50:27 -0700 (PDT)
Received: by mail-oa0-f53.google.com with SMTP id k18so2270964oag.40
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 17:50:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=HONgrURsZUMDF/SHcYc7poyT1MJr7Ehp6LjBsUbT2w4=;
	b=Mwa3d7/aUG9hVbMONOMJNJwAHxVtT88F08uqI5iCZncbVJkqqySmXJobZZfR3wq3e6
	TMoPobaz9gBM8FitoigJnivaoJwnvH0wQ/Osozae0uNAz590JXSrT+HNfQcAxXIOrV//
	Pmbgeycki7bgy/d2MDx/Nh68ImnmPxuX5HGkCgoQvH6NHzAF/XojG4ipR4CpW2uAdjJ1
	SYW8I2y6mEvSz3aKPo6Ms2IoIEXdPktlUpbJJm5hNNS9RKwPUBMwP9bRKmOULOyG/1us
	sg+YyylnCfFCHVW2cG678NiOeZGx/VKDEBC/hrsHhdAF5XczjDXQ2Z9kDlEHXxlaQYVs
	HhvQ==
X-Gm-Message-State: ALoCoQkIEF75Mu/NH2eJH1kZlsckrfPwABvOqCEq35XA8nSZqzPFV75gQINI87Ss3tcKVdknkgOO
X-Received: by 10.182.230.163 with SMTP id sz3mr4759539obc.81.1377046226761;
	Tue, 20 Aug 2013 17:50:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.172.4 with HTTP; Tue, 20 Aug 2013 17:50:06 -0700 (PDT)
In-Reply-To: <6AEB2375-D87A-413D-878C-EF46956B7D53@gmail.com>
References: <6AEB2375-D87A-413D-878C-EF46956B7D53@gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 21 Aug 2013 02:50:06 +0200
Message-ID: <CAP71WjxRvEo+DBo41AmspUjgngQbu-AD4nxTfYB9T0kC+0V_wQ@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Recipe for building an Ubuntu-12.04 root filesystem
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
X-List-Received-Date: Wed, 21 Aug 2013 00:50:29 -0000
Content-Type: multipart/alternative; boundary=001a11c2f63a2f8b0004e46a8f9e

--001a11c2f63a2f8b0004e46a8f9e
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 21, 2013 at 2:24 AM, Elvis Dowson <elvis.dowson@gmail.com>wrote=
:

> The Ubuntu and Linaro websites don=92t document how the actual binary *.d=
eb
> packages were created, the just document the process of assembling a root=
fs
> from deb binary package feeds.
>
> I=92m aware that Yocto/OpenEmbedded can be used to generate *.deb package=
s,
> but what isn=92t clear to me is how one can go about assembling a basic
> Ubuntu rootfs image that will boot into the Ubuntu Unity interface.
>

the short answer is that Ubuntu is not built with OE/Yocto, so you can't do
that. OE/Yocto can help you build a filesystem for your target, that's what
it's here for, but it won't generate an Ubuntu image.

it is correct that OE can generate .deb (or .rpm or .ipk) packages, but the
generated packages won't be compatible on an Ubuntu system (you won't be
able to install and satisfy dependencies).

Ubuntu is a 'binary' based distribution. All Ubuntu packages are built on a
centralized server (Launchpad), natively on 'actual' hardware. Ubuntu
packages for ARM are indeed build on ARM build slaves hosted by Canonical.
Launchpad offers 'PPA' (personal package archive) where users can upload
their 'source package' and expect them to be built on Canonical build
infrastructure. This is the mechanism that was by at Linaro to build ARM
.deb packages. Note that since this is a binary distribution nobody
rebuilds the entire image from scratch, instead packages are built
individually whenever there is a change in the package, and the process of
making an image (like Ubuntu daily image, or Linaro Ubuntu images) is just
to 'assemble' existing binary .deb packages all together.

OE/Yocto is a set of 'tools' and recipes to let you create and customize
your own distribution. You can create 'rebuild from scratch' distro with
OE, or you can even create a 'binary' distribution if you need that.

--001a11c2f63a2f8b0004e46a8f9e
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Aug 21, 2013 at 2:24 AM, Elvis Dowson <span dir=3D"ltr">&lt;<a href=
=3D"mailto:elvis.dowson@gmail.com" target=3D"_blank">elvis.dowson@gmail.com=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":2n2" style=3D"overflow:hidden">The Ubuntu and =
Linaro websites don=92t document how the actual binary *.deb packages were =
created, the just document the process of assembling a rootfs from deb bina=
ry package feeds.<br>


<br>
I=92m aware that Yocto/OpenEmbedded can be used to generate *.deb packages,=
 but what isn=92t clear to me is how one can go about assembling a basic Ub=
untu rootfs image that will boot into the Ubuntu Unity interface.<br></div>

</blockquote></div><br>the short answer is that Ubuntu is not built with OE=
/Yocto, so you can&#39;t do that. OE/Yocto can help you build a filesystem =
for your target, that&#39;s what it&#39;s here for, but it won&#39;t genera=
te an Ubuntu image.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">it is corre=
ct that OE can generate .deb (or .rpm or .ipk) packages, but the generated =
packages won&#39;t be compatible on an Ubuntu system (you won&#39;t be able=
 to install and satisfy dependencies).=A0</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ubuntu is a=
 &#39;binary&#39; based distribution. All Ubuntu packages are built on a ce=
ntralized server (Launchpad), natively on &#39;actual&#39; hardware. Ubuntu=
 packages for ARM are indeed build on ARM build slaves hosted by Canonical.=
 Launchpad offers &#39;PPA&#39; (personal package archive) where users can =
upload their &#39;source package&#39; and expect them to be built on Canoni=
cal build infrastructure. This is the mechanism that was by at Linaro to bu=
ild ARM .deb packages. Note that since this is a binary distribution nobody=
 rebuilds the entire image from scratch, instead packages are built individ=
ually whenever there is a change in the package, and the process of making =
an image (like Ubuntu daily image, or Linaro Ubuntu images) is just to &#39=
;assemble&#39; existing binary .deb packages all together.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">OE/Yocto is=
 a set of &#39;tools&#39; and recipes to let you create and customize your =
own distribution. You can create &#39;rebuild from scratch&#39; distro with=
 OE, or you can even create a &#39;binary&#39; distribution if you need tha=
t.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br></div><=
/div>

--001a11c2f63a2f8b0004e46a8f9e--
