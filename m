Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE809E01492
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 05:48:44 -0700 (PDT)
Received: by mail-ob0-f177.google.com with SMTP id ta17so5220239obb.8
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 05:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=WzfgpKQdXrpEbBdlUEh2JKsrHG3NUjyCdHEb3FbNBVM=;
	b=H66h87UwrUL4oxsR607oJ3IeG4WkPXirE1av2cHvHjOcvNZY/c1oWlHNfYbpkVd61T
	an8LDxUyw1EFxnHQT3EBFkm7LXH6HJp1GZ/mszelnJId8eCZ3abyMW3kF5eLzdFEgZbb
	f0sW6WeNpowtLlwklAEqPFAhPcomkehs0yPx+Xi8jYu+t0nEDGSklx/DUOprMG2o7LV4
	FaDZCAiCYI4/hL9dMQtP3iuiR0LZnpXSBmK55Hw0y24r11CxtNVPgi0XyDQNT3/eUWq5
	Q2XR0XFUBUHfMQPqXQYnDiepPB7ANax4TpzfOtze9xgkL7iaczYnTug5xLi4Re/PFnOo
	lp/Q==
MIME-Version: 1.0
X-Received: by 10.60.83.146 with SMTP id q18mr17741932oey.80.1374238123881;
	Fri, 19 Jul 2013 05:48:43 -0700 (PDT)
Received: by 10.76.86.138 with HTTP; Fri, 19 Jul 2013 05:48:43 -0700 (PDT)
In-Reply-To: <1374176459.1624.48.camel@empanada>
References: <CAE8H0+WxtwacYF8chdJi2hum6XDRAzciSk20PcG6h1qNUmwfSQ@mail.gmail.com>
	<1374159667.1624.42.camel@empanada>
	<1374176459.1624.48.camel@empanada>
Date: Fri, 19 Jul 2013 08:48:43 -0400
Message-ID: <CAE8H0+VAnPwjKFA__a3EuMTF9sJVdbmoB_kxVtVz9hvhiskzMg@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get released BSP that contains meta-intel ?
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
X-List-Received-Date: Fri, 19 Jul 2013 12:48:47 -0000
Content-Type: multipart/alternative; boundary=089e0118381e35fa6b04e1dcbfe0

--089e0118381e35fa6b04e1dcbfe0
Content-Type: text/plain; charset=ISO-8859-1

Thanks, Tom,

FWIW, I did try to confirm by renaming and running my build, but I ran into
another issue not apparently related to the BSP that deserves its own
thread.

John


On Thu, Jul 18, 2013 at 3:40 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:

> On Thu, 2013-07-18 at 10:01 -0500, Tom Zanussi wrote:
> > Hi,
> >
> > On Thu, 2013-07-18 at 10:21 -0400, r10kindsofpeople wrote:
> > > I've been working with denzil, but decided to try and upgrade to
> > > dylan...
> > >
> > >
> > > Downloading and installing poky-dylan-9.0.1.tar.bz2 went fine.
> > > Finding and downloading meta-crownbay-dylan-9.0.0.tar.bz2 was easy
> > > enough.
> > >
> > >
> > > But neither of these give me meta-intel.
> > >
> >
> > Actually, what's in the meta-crownbay-dylan tarball is meta-intel, with
> > just the meta-crownbay BSP included.  But it looks like there's a
> > problem with the naming of the top-level directory in the tarball:
> >
> > $ ls meta-crownbay
> > binary  common  conf  MAINTAINERS  meta-crownbay  meta-tlk  README
> >
> > whereas after untarring, I should have been able to do:
> >
> > $ ls meta-intel
> > binary  common  conf  MAINTAINERS  meta-crownbay  meta-tlk  README
> >
> > Beth or Nitin, can you please fix the tarballs so that the top-level
> > directory isn't the meta-BSPname but meta-intel (like they are for the
> > previous releases).
> >
> > >
> > > So the central question is: how do I find and download a released
> > > package that contains meta-intel that's required by meta-crownbay?  A
> >
> > If you just rename the top-level directory to meta-intel rather than
> > meta-crownbay, things should be fine..
> >
>
> Filed bug 4868 for this.
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=4868
>
> Tom
>
> > >  second question is whether I'd have had problems anyway, given that
> > > dylan is 9.0.1 and the BSP is 9.0.0.
> > >
> >
> > No, you shouldn't have problems - a given BSP should be good for the
> > same major release and all its point releases...
> >
> > Thanks,
> >
> > Tom
> >
> > >
> > > I can do a git of meta-intel, but that apparently gives me a snapshot
> > > that doesn't play well with the released poky.  I can do a git of
> > > poky, then a git of meta-intel...I still needed to do a bit of
> > > tweaking but I could bitbake core-image-minimal.  Now I'm having
> > > problems with adt_install, apparently because the scripts all think my
> > > release is 1.4+snapshot, which breaks the repository links and the
> > > opkg install.  I seem to have gotten around these, too, but if someone
> > > has something for me to test using released packages, I'm willing, at
> > > the moment, to start from scratch.
> > >
> > >
> > > John
> > >
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
>
>
>

--089e0118381e35fa6b04e1dcbfe0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, Tom,=A0<div><br></div><div>FWIW, I did try to conf=
irm by renaming and running my build, but I ran into another issue not appa=
rently related to the BSP that deserves its own thread. =A0</div><div><br><=
/div>
<div>John</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Thu, Jul 18, 2013 at 3:40 PM, Tom Zanussi <span dir=3D"ltr">&lt;=
<a href=3D"mailto:tom.zanussi@intel.com" target=3D"_blank">tom.zanussi@inte=
l.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">On Thu, 2013-07-18 at 10:01 -0500, Tom Zanus=
si wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; On Thu, 2013-07-18 at 10:21 -0400, r10kindsofpeople wrote:<br>
&gt; &gt; I&#39;ve been working with denzil, but decided to try and upgrade=
 to<br>
&gt; &gt; dylan...<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Downloading and installing poky-dylan-9.0.1.tar.bz2 went fine.<br=
>
&gt; &gt; Finding and downloading meta-crownbay-dylan-9.0.0.tar.bz2 was eas=
y<br>
&gt; &gt; enough.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; But neither of these give me meta-intel.<br>
&gt; &gt;<br>
&gt;<br>
&gt; Actually, what&#39;s in the meta-crownbay-dylan tarball is meta-intel,=
 with<br>
&gt; just the meta-crownbay BSP included. =A0But it looks like there&#39;s =
a<br>
&gt; problem with the naming of the top-level directory in the tarball:<br>
&gt;<br>
&gt; $ ls meta-crownbay<br>
&gt; binary =A0common =A0conf =A0MAINTAINERS =A0meta-crownbay =A0meta-tlk =
=A0README<br>
&gt;<br>
&gt; whereas after untarring, I should have been able to do:<br>
&gt;<br>
&gt; $ ls meta-intel<br>
&gt; binary =A0common =A0conf =A0MAINTAINERS =A0meta-crownbay =A0meta-tlk =
=A0README<br>
&gt;<br>
&gt; Beth or Nitin, can you please fix the tarballs so that the top-level<b=
r>
&gt; directory isn&#39;t the meta-BSPname but meta-intel (like they are for=
 the<br>
&gt; previous releases).<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; So the central question is: how do I find and download a released=
<br>
&gt; &gt; package that contains meta-intel that&#39;s required by meta-crow=
nbay? =A0A<br>
&gt;<br>
&gt; If you just rename the top-level directory to meta-intel rather than<b=
r>
&gt; meta-crownbay, things should be fine..<br>
&gt;<br>
<br>
Filed bug 4868 for this.<br>
<br>
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4868" target=
=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4868</a><br=
>
<br>
Tom<br>
<br>
&gt; &gt; =A0second question is whether I&#39;d have had problems anyway, g=
iven that<br>
&gt; &gt; dylan is 9.0.1 and the BSP is 9.0.0.<br>
&gt; &gt;<br>
&gt;<br>
&gt; No, you shouldn&#39;t have problems - a given BSP should be good for t=
he<br>
&gt; same major release and all its point releases...<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Tom<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; I can do a git of meta-intel, but that apparently gives me a snap=
shot<br>
&gt; &gt; that doesn&#39;t play well with the released poky. =A0I can do a =
git of<br>
&gt; &gt; poky, then a git of meta-intel...I still needed to do a bit of<br=
>
&gt; &gt; tweaking but I could bitbake core-image-minimal. =A0Now I&#39;m h=
aving<br>
&gt; &gt; problems with adt_install, apparently because the scripts all thi=
nk my<br>
&gt; &gt; release is 1.4+snapshot, which breaks the repository links and th=
e<br>
&gt; &gt; opkg install. =A0I seem to have gotten around these, too, but if =
someone<br>
&gt; &gt; has something for me to test using released packages, I&#39;m wil=
ling, at<br>
&gt; &gt; the moment, to start from scratch.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; John<br>
&gt; &gt;<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
<br>
<br>
</blockquote></div><br></div>

--089e0118381e35fa6b04e1dcbfe0--
