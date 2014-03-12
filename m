Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17C75E009CE
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 12:11:48 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id if17so7731727vcb.22
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 12:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=YIQ8YkBd7VZwaNixRvYcgIqfiYUSYTbms2Nre+TYHss=;
	b=V5i55mkLuW4uX5Y4MpoWAOLUCshSj+d6mOcVw8EuSDRBAsClqWzx+kAcPqbgxMR6Vq
	mgXW3xfIw2Aqp1GdU27jfSzN+AGhymedNaMzmA1Y06LOtBSwIeylfHpxDxuY9ovH2lqK
	7/41Cwowjs11wrwb6uEhD5ekENY7Lf/DYd5IMMK7AScIWwrinHiMWDwOg8P4Oceh/hRk
	f5f5SnV8tVlNHkarLdU7H4vOIBXqc4N4B+bpygU+kKYPfwklap/+/JpAmnTSKIYL8cdn
	P2dNIW1oQERhTFDD0APP8sgmwtx/zIqFxLwe0b8YtU5dm5m4fTf6uGR4+DDdp43/u7ac
	2J8g==
MIME-Version: 1.0
X-Received: by 10.58.94.195 with SMTP id de3mr10548veb.39.1394651508121; Wed,
	12 Mar 2014 12:11:48 -0700 (PDT)
Received: by 10.220.96.66 with HTTP; Wed, 12 Mar 2014 12:11:48 -0700 (PDT)
In-Reply-To: <5320AB11.4060303@mlbassoc.com>
References: <CAA7h+EpU6RVwbewuJ6r04+O2CvjPBpP1z86dpAthm4_cBrrO+Q@mail.gmail.com>
	<53207D25.2040309@mlbassoc.com>
	<CAA7h+Eomb_92298Y1NDmtTNiTmNcbivytLd9xT=1FVZ+My=PAw@mail.gmail.com>
	<5320AB11.4060303@mlbassoc.com>
Date: Wed, 12 Mar 2014 12:11:48 -0700
Message-ID: <CAA7h+EoYviRS34heBABgE-o1eQP0po=rVgE-Tc98vSg16F-5+g@mail.gmail.com>
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
X-List-Received-Date: Wed, 12 Mar 2014 19:11:50 -0000
Content-Type: multipart/alternative; boundary=047d7ba96cf4ba245d04f46d9bfe

--047d7ba96cf4ba245d04f46d9bfe
Content-Type: text/plain; charset=ISO-8859-1

usbip from /usr/src/kernel/drivers/staging/usbip


On Wed, Mar 12, 2014 at 11:44 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2014-03-12 10:09, Rick Bianchi wrote:
> > I completely agree with regards to the comparison, but I have compiled
> the same exact source on the same target (arm) and it only took 5 minutes
> when running the Linaro image.
> >
> > To clarify, the only difference is the build, one is Linaro (took 5
> minutes to compile source on the target) and the other Yocto (took almost
> 24 hours to compile source on the target).
>
> Sorry, I missed that this was on the same hardware.
>
> What are you building?  I'm going to try and duplicate this here
> on hardware I have that's quite similar to your Gumstix board.
>
> >
> > Is there something that I am missing?
> >
> >
> > On Wed, Mar 12, 2014 at 8:28 AM, Gary Thomas <gary@mlbassoc.com <mailto:
> gary@mlbassoc.com>> wrote:
> >
> >     On 2014-03-12 09:15, Rick Bianchi wrote:
> >     >
> >     > I have the gumstix-console-image with the added packages below.
> When I compile on the target is take a very long time for it to complete,
> over 24 hours. I have compiled the same
> >     > code on the same target, but running Linaro image, and it only
> takes a few minutes. Is there another recipe that I need to add to the
> build to speed up compiling?
> >
> >     Doubtful.  The reason your build on the target takes so long is
> merely
> >     one of horsepower - that little ARM processor just doesn't have it,
> especially
> >     if you are comparing it to a typical desktop environment.
> >
> >     > EXTRA_IMAGE_FEATURES += "dev-pkgs"
> >     > IMAGE_INSTALL_append =" autoconf"
> >     > IMAGE_INSTALL_append =" autofs"
> >     > IMAGE_INSTALL_append =" automake"
> >     > IMAGE_INSTALL_append =" ccache"
> >     > IMAGE_INSTALL_append =" chkconfig"
> >     > IMAGE_INSTALL_append =" dbus-glib"
> >     > IMAGE_INSTALL_append =" gcc"
> >     > IMAGE_INSTALL_append =" glib-2.0"
> >     > IMAGE_INSTALL_append =" glib-networking"
> >     > IMAGE_INSTALL_append =" glibmm"
> >     > IMAGE_INSTALL_append =" packagegroup-core-buildessential"
> >     > IMAGE_INSTALL_append =" pciutils"
> >     > IMAGE_INSTALL_append =" pkgconfig"
> >     > IMAGE_INSTALL_append =" python-scons"
> >     > IMAGE_INSTALL_append =" systemd-compat-units"
> >     > IMAGE_INSTALL_append =" sysfsutils"
> >     > IMAGE_INSTALL_append =" tcp-wrappers"
> >     > IMAGE_INSTALL_append =" usbutils"
> >     > IMAGE_INSTALL_append =" util-macros"
> >     >
> >     >
> >
> >     --
> >     ------------------------------------------------------------
> >     Gary Thomas                 |  Consulting for the
> >     MLB Associates              |    Embedded world
> >     ------------------------------------------------------------
> >     --
> >     _______________________________________________
> >     yocto mailing list
> >     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >     https://lists.yoctoproject.org/listinfo/yocto
> >
> >
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

--047d7ba96cf4ba245d04f46d9bfe
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">usbip from /usr/src/kernel/drivers/staging/usbip<br></div>=
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Mar 1=
2, 2014 at 11:44 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:ga=
ry@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<=
br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 2014-03-12 10:09, Rick Bi=
anchi wrote:<br>
&gt; I completely agree with regards to the comparison, but I have compiled=
 the same exact source on the same target (arm) and it only took 5 minutes =
when running the Linaro image.<br>
&gt;<br>
&gt; To clarify, the only difference is the build, one is Linaro (took 5 mi=
nutes to compile source on the target) and the other Yocto (took almost 24 =
hours to compile source on the target).<br>
<br>
</div>Sorry, I missed that this was on the same hardware.<br>
<br>
What are you building? &nbsp;I&#39;m going to try and duplicate this here<b=
r>
on hardware I have that&#39;s quite similar to your Gumstix board.<br>
<div class=3D""><br>
&gt;<br>
&gt; Is there something that I am missing?<br>
&gt;<br>
&gt;<br>
</div><div><div class=3D"h5">&gt; On Wed, Mar 12, 2014 at 8:28 AM, Gary Tho=
mas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mail=
to:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;&gt; wrote=
:<br>

&gt;<br>
&gt; &nbsp; &nbsp; On 2014-03-12 09:15, Rick Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; I have the gumstix-console-image with the added pac=
kages below. When I compile on the target is take a very long time for it t=
o complete, over 24 hours. I have compiled the same<br>
&gt; &nbsp; &nbsp; &gt; code on the same target, but running Linaro image, =
and it only takes a few minutes. Is there another recipe that I need to add=
 to the build to speed up compiling?<br>
&gt;<br>
&gt; &nbsp; &nbsp; Doubtful. &nbsp;The reason your build on the target take=
s so long is merely<br>
&gt; &nbsp; &nbsp; one of horsepower - that little ARM processor just doesn=
&#39;t have it, especially<br>
&gt; &nbsp; &nbsp; if you are comparing it to a typical desktop environment=
.<br>
&gt;<br>
&gt; &nbsp; &nbsp; &gt; EXTRA_IMAGE_FEATURES +=3D &quot;dev-pkgs&quot;<br>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; autoconf&quot;<br>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; autofs&quot;<br>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; automake&quot;<br>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; ccache&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; chkconfig&quot;<br>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; dbus-glib&quot;<br>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; gcc&quot;<br>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; glib-2.0&quot;<br>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; glib-networking&quot=
;<br>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; glibmm&quot;<br>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; packagegroup-core-bu=
ildessential&quot;<br>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; pciutils&quot;<br>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; pkgconfig&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; python-scons&quot;<b=
r>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; systemd-compat-units=
&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; sysfsutils&quot;<br>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; tcp-wrappers&quot;<b=
r>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; usbutils&quot;<br>
&gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; util-macros&quot;<br=
>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt;<br>
&gt; &nbsp; &nbsp; --<br>
&gt; &nbsp; &nbsp; --------------------------------------------------------=
----<br>
&gt; &nbsp; &nbsp; Gary Thomas &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; | &nbsp;Consulting for the<br>
&gt; &nbsp; &nbsp; MLB Associates &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;| &nbsp; &nbsp;Embedded world<br>
&gt; &nbsp; &nbsp; --------------------------------------------------------=
----<br>
&gt; &nbsp; &nbsp; --<br>
&gt; &nbsp; &nbsp; _______________________________________________<br>
&gt; &nbsp; &nbsp; yocto mailing list<br>
</div></div>&gt; &nbsp; &nbsp; <a href=3D"mailto:yocto@yoctoproject.org">yo=
cto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.or=
g">yocto@yoctoproject.org</a>&gt;<br>
&gt; &nbsp; &nbsp; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
--<br>
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
</div></div></blockquote></div><br></div>

--047d7ba96cf4ba245d04f46d9bfe--
