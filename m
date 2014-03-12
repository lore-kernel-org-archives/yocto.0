Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-ve0-f170.google.com (mail-ve0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DE77E00A73
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 09:09:46 -0700 (PDT)
Received: by mail-ve0-f170.google.com with SMTP id pa12so10659722veb.1
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 09:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=CqjX8LFv9GUdjHm6C7a2cmUbp5JUyR0USHlYckGQa5U=;
	b=jIAZIf4XM1xOXaNf+pVwU3MSc7OCRDFRkdLBqor0P01aXaaJuSEtblbuZit2xD5ZIJ
	7NP3XaKsUGheD4YCllWVc09Puag3jhs1A9Db+MEnVNXicJLpYrI+VK+xOJ80O68bQ8zg
	F0+ps6z40mG8/5rHEs0m+t4Y8ik7Ody6hWgDzsNW9idOstKgNRGJILOAv/AhSxBGBPCU
	poAQ2seRXlkWmWqt9zGBFbx1QYo08kb6Ilj5wZYMEkMfPAgJuNJuojXiJI22JPYXJRIC
	oFJwA+LycdgPqUZ+/SlHtnmHucbG6AJkYW4dSPG2q4dfrSoN9DGlj8oa9uu4jqmGYe7b
	ANfA==
MIME-Version: 1.0
X-Received: by 10.220.11.141 with SMTP id t13mr840232vct.30.1394640586396;
	Wed, 12 Mar 2014 09:09:46 -0700 (PDT)
Received: by 10.220.96.66 with HTTP; Wed, 12 Mar 2014 09:09:46 -0700 (PDT)
In-Reply-To: <53207D25.2040309@mlbassoc.com>
References: <CAA7h+EpU6RVwbewuJ6r04+O2CvjPBpP1z86dpAthm4_cBrrO+Q@mail.gmail.com>
	<53207D25.2040309@mlbassoc.com>
Date: Wed, 12 Mar 2014 09:09:46 -0700
Message-ID: <CAA7h+Eomb_92298Y1NDmtTNiTmNcbivytLd9xT=1FVZ+My=PAw@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on target
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
X-List-Received-Date: Wed, 12 Mar 2014 16:09:50 -0000
Content-Type: multipart/alternative; boundary=001a11c3c970bdd99304f46b10ad

--001a11c3c970bdd99304f46b10ad
Content-Type: text/plain; charset=ISO-8859-1

I completely agree with regards to the comparison, but I have compiled the
same exact source on the same target (arm) and it only took 5 minutes when
running the Linaro image.

To clarify, the only difference is the build, one is Linaro (took 5 minutes
to compile source on the target) and the other Yocto (took almost 24 hours
to compile source on the target).

Is there something that I am missing?


On Wed, Mar 12, 2014 at 8:28 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2014-03-12 09:15, Rick Bianchi wrote:
> >
> > I have the gumstix-console-image with the added packages below. When I
> compile on the target is take a very long time for it to complete, over 24
> hours. I have compiled the same
> > code on the same target, but running Linaro image, and it only takes a
> few minutes. Is there another recipe that I need to add to the build to
> speed up compiling?
>
> Doubtful.  The reason your build on the target takes so long is merely
> one of horsepower - that little ARM processor just doesn't have it,
> especially
> if you are comparing it to a typical desktop environment.
>
> > EXTRA_IMAGE_FEATURES += "dev-pkgs"
> > IMAGE_INSTALL_append =" autoconf"
> > IMAGE_INSTALL_append =" autofs"
> > IMAGE_INSTALL_append =" automake"
> > IMAGE_INSTALL_append =" ccache"
> > IMAGE_INSTALL_append =" chkconfig"
> > IMAGE_INSTALL_append =" dbus-glib"
> > IMAGE_INSTALL_append =" gcc"
> > IMAGE_INSTALL_append =" glib-2.0"
> > IMAGE_INSTALL_append =" glib-networking"
> > IMAGE_INSTALL_append =" glibmm"
> > IMAGE_INSTALL_append =" packagegroup-core-buildessential"
> > IMAGE_INSTALL_append =" pciutils"
> > IMAGE_INSTALL_append =" pkgconfig"
> > IMAGE_INSTALL_append =" python-scons"
> > IMAGE_INSTALL_append =" systemd-compat-units"
> > IMAGE_INSTALL_append =" sysfsutils"
> > IMAGE_INSTALL_append =" tcp-wrappers"
> > IMAGE_INSTALL_append =" usbutils"
> > IMAGE_INSTALL_append =" util-macros"
> >
> >
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c3c970bdd99304f46b10ad
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I completely agree with regards to the comparison, but I h=
ave compiled the same exact source on the same target (arm) and it only too=
k 5 minutes when running the Linaro image. <br><br>To clarify, the only dif=
ference is the build, one is Linaro (took 5 minutes to compile source on th=
e target) and the other Yocto (took almost 24 hours to compile source on th=
e target).<br>
<br>Is there something that I am missing? <br></div><div class=3D"gmail_ext=
ra"><br><br><div class=3D"gmail_quote">On Wed, Mar 12, 2014 at 8:28 AM, Gar=
y Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=
=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 2014-03-12 09:15, Rick Bi=
anchi wrote:<br>
&gt;<br>
&gt; I have the gumstix-console-image with the added packages below. When I=
 compile on the target is take a very long time for it to complete, over 24=
 hours. I have compiled the same<br>
&gt; code on the same target, but running Linaro image, and it only takes a=
 few minutes. Is there another recipe that I need to add to the build to sp=
eed up compiling?<br>
<br>
</div>Doubtful. &nbsp;The reason your build on the target takes so long is =
merely<br>
one of horsepower - that little ARM processor just doesn&#39;t have it, esp=
ecially<br>
if you are comparing it to a typical desktop environment.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; EXTRA_IMAGE_FEATURES +=3D &quot;dev-pkgs&quot;<br>
&gt; IMAGE_INSTALL_append =3D&quot; autoconf&quot;<br>
&gt; IMAGE_INSTALL_append =3D&quot; autofs&quot;<br>
&gt; IMAGE_INSTALL_append =3D&quot; automake&quot;<br>
&gt; IMAGE_INSTALL_append =3D&quot; ccache&rdquo;<br>
&gt; IMAGE_INSTALL_append =3D&quot; chkconfig&quot;<br>
&gt; IMAGE_INSTALL_append =3D&quot; dbus-glib&quot;<br>
&gt; IMAGE_INSTALL_append =3D&quot; gcc&quot;<br>
&gt; IMAGE_INSTALL_append =3D&quot; glib-2.0&quot;<br>
&gt; IMAGE_INSTALL_append =3D&quot; glib-networking&quot;<br>
&gt; IMAGE_INSTALL_append =3D&quot; glibmm&quot;<br>
&gt; IMAGE_INSTALL_append =3D&quot; packagegroup-core-buildessential&quot;<=
br>
&gt; IMAGE_INSTALL_append =3D&quot; pciutils&quot;<br>
&gt; IMAGE_INSTALL_append =3D&quot; pkgconfig&rdquo;<br>
&gt; IMAGE_INSTALL_append =3D&quot; python-scons&quot;<br>
&gt; IMAGE_INSTALL_append =3D&quot; systemd-compat-units&rdquo;<br>
&gt; IMAGE_INSTALL_append =3D&quot; sysfsutils&quot;<br>
&gt; IMAGE_INSTALL_append =3D&quot; tcp-wrappers&quot;<br>
&gt; IMAGE_INSTALL_append =3D&quot; usbutils&quot;<br>
&gt; IMAGE_INSTALL_append =3D&quot; util-macros&quot;<br>
&gt;<br>
&gt;<br>
<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
------------------------------------------------------------<br>
Gary Thomas &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp=
;Consulting for the<br>
MLB Associates &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; &nb=
sp;Embedded world<br>
------------------------------------------------------------<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a11c3c970bdd99304f46b10ad--
