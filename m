Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D191E00B43
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 11:04:00 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id sa20so7406877veb.36
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 11:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=TaXyDOMkJ7EBGKYFBLsmdL7TIJ1n8RzroEwIA6HN56I=;
	b=Tup+txAGVHz2aGOiu3SPkIjvm7U7gjr8D+I8v7Gac8RaH7hKJwds+SjF15TAQwBe9R
	htwxr62xAcxhZE3QSIeoOEuEJq0lehRICVsw364PpxaBDuid9aH7OY1vLETGMPJnX2Yd
	XOscSI00SgVNbkibKdr3xI0oEE6+xjxyKctvplwDyD888DUnVlHs4tRC27Glpp1OWkG0
	hp42ts3DUxrXAr6S6i4AeXdvDIvcphOFkymT4ITQqBYxYjVgVf0At/oJ8tUhjnrxBCn5
	VFdZ3xwr/FQwPPXQxdYLMKU0FxiaTH659IyhPHbSKoe6vX9PBybLo3E5izvxO56pXgGt
	T2Jg==
MIME-Version: 1.0
X-Received: by 10.52.139.237 with SMTP id rb13mr5952016vdb.33.1395165840165;
	Tue, 18 Mar 2014 11:04:00 -0700 (PDT)
Received: by 10.220.96.66 with HTTP; Tue, 18 Mar 2014 11:04:00 -0700 (PDT)
In-Reply-To: <5328880F.9020805@mlbassoc.com>
References: <CAA7h+EpU6RVwbewuJ6r04+O2CvjPBpP1z86dpAthm4_cBrrO+Q@mail.gmail.com>
	<53207D25.2040309@mlbassoc.com>
	<CAA7h+Eomb_92298Y1NDmtTNiTmNcbivytLd9xT=1FVZ+My=PAw@mail.gmail.com>
	<5320AB11.4060303@mlbassoc.com>
	<CAA7h+EoYviRS34heBABgE-o1eQP0po=rVgE-Tc98vSg16F-5+g@mail.gmail.com>
	<5323147A.8000400@mlbassoc.com>
	<CAA7h+EpRdEuYERe+N2enPyPDuP1fN+qE_PD9NnEGHYDV2wwP+Q@mail.gmail.com>
	<53237FCF.8020700@mlbassoc.com>
	<CAA7h+EprV97+okAJhq=b9jZrJz0UhegC3D0cDhSNsgboS4by6A@mail.gmail.com>
	<5328880F.9020805@mlbassoc.com>
Date: Tue, 18 Mar 2014 11:04:00 -0700
Message-ID: <CAA7h+ErrZKZGpUcMjCoa--ig33Q_aGvo8QzLy7-Uuqg-_A58Eg@mail.gmail.com>
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
X-List-Received-Date: Tue, 18 Mar 2014 18:04:01 -0000
Content-Type: multipart/alternative; boundary=bcaec52c5ccd4e4ffd04f4e55ca5

--bcaec52c5ccd4e4ffd04f4e55ca5
Content-Type: text/plain; charset=ISO-8859-1

That is correct, compile times between the Linaro and Yocto build were
almost identical, roughly 5 -10 minutes.


On Tue, Mar 18, 2014 at 10:53 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2014-03-18 11:48, Rick Bianchi wrote:
> > Gary,
> > I noticed during the make the it was complaining about the date being in
> the future; I checked and sure thing the date and time were bit off, about
> 14 years. I set it to the
> > correct time  with "date --set="18 MARCH 2014 10:32:00" and the build
> completed in under 10 mins.
>
> So to clarify, your compile results on Yocto were not that different from
> those on Linaro?
> Certainly not minutes vs days, correct?
>
> > On Fri, Mar 14, 2014 at 3:16 PM, Gary Thomas <gary@mlbassoc.com <mailto:
> gary@mlbassoc.com>> wrote:
> >
> >     On 2014-03-14 08:49, Rick Bianchi wrote:
> >     > If I have time today I will try to reproduce your results. If not,
> I will get to it first thing next week and post my result.
> >
> >     One thing I forgot to point out is I used the identical
> kernel+modules for
> >     both setups.  I would be interested to see if that makes any
> difference for
> >     you.  I can't fully test it as my board doesn't have a Linaro kernel.
> >
> >     So there are four combinations - I only tried the first two:
> >       Yocto kernel + Yocto rootfs
> >       Yocto kernel + Linaro rootfs
> >       Linaro kernel + Yocto rootfs
> >       Linaro kernel + Linaro rootfs
> >
> >     > On Fri, Mar 14, 2014 at 7:38 AM, Gary Thomas <gary@mlbassoc.com<mailto:
> gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>
> wrote:
> >     >
> >     >     On 2014-03-12 13:11, Rick Bianchi wrote:
> >     >     > usbip from /usr/src/kernel/drivers/staging/usbip
> >     >
> >     >     I finally managed to make this comparison.  I did this by
> taking my Poky/Yocto
> >     >     built system for a i.MX6 system (ARM Cortex-A9) and replaced
> the rootfs with
> >     >     one for the Gumstix Overo (linaro).  The results were nothing
> like yours, so
> >     >     it's a bit confusing.
> >     >
> >     >     I actually built an entire Linux kernel - not just the one
> directory you mentioned.
> >     >
> >     >     Poky/Yocto - 37 minutes
> >     >     Linaro     - 48 minutes
> >     >
> >     >     There is some flex in these numbers as they were on different
> [brand] SD cards, etc,
> >     >     but I sure did not see the "5 minutes for Linaro vs 24 hours
> on Yocto" that you reported.
> >     >
> >     >     Perhaps the only thing I did differently was I added the SDK
> tools to my Yocto system
> >     >     using these meta-packages instead of the list you used.
> >     >       packagegroup-core-sdk packagegroup-core-standalone-sdk-target
> >     >
> >     >     You might try that to see if it makes any difference.
> >     >
> >     >     n.b. part of what took me so long to get these results is I
> was trying to run this test
> >     >     on something closer to your Overo board.  I have an older OMAP
> DM3730 board here that I
> >     >     tried to do these same steps, but it was unstable and I could
> not get the Linaro based
> >     >     file system to work at all.  Very strange.  In any case, I
> think the comparison I did get
> >     >     with the i.MX6 is valid.
> >     >
> >     >     > On Wed, Mar 12, 2014 at 11:44 AM, Gary Thomas <
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>> wrote:
> >     >     >
> >     >     >     On 2014-03-12 10:09, Rick Bianchi wrote:
> >     >     >     > I completely agree with regards to the comparison, but
> I have compiled the same exact source on the same target (arm) and it only
> took 5 minutes when running the Linaro image.
> >     >     >     >
> >     >     >     > To clarify, the only difference is the build, one is
> Linaro (took 5 minutes to compile source on the target) and the other Yocto
> (took almost 24 hours to compile source on the target).
> >     >     >
> >     >     >     Sorry, I missed that this was on the same hardware.
> >     >     >
> >     >     >     What are you building?  I'm going to try and duplicate
> this here
> >     >     >     on hardware I have that's quite similar to your Gumstix
> board.
> >     >     >
> >     >     >     >
> >     >     >     > Is there something that I am missing?
> >     >     >     >
> >     >     >     >
> >     >     >     > On Wed, Mar 12, 2014 at 8:28 AM, Gary Thomas <
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>> <mailto:
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>>
> >     >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:
> gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>>> wrote:
> >     >     >     >
> >     >     >     >     On 2014-03-12 09:15, Rick Bianchi wrote:
> >     >     >     >     >
> >     >     >     >     > I have the gumstix-console-image with the added
> packages below. When I compile on the target is take a very long time for
> it to complete, over 24 hours. I have compiled the same
> >     >     >     >     > code on the same target, but running Linaro
> image, and it only takes a few minutes. Is there another recipe that I need
> to add to the build to speed up compiling?
> >     >     >     >
> >     >     >     >     Doubtful.  The reason your build on the target
> takes so long is merely
> >     >     >     >     one of horsepower - that little ARM processor just
> doesn't have it, especially
> >     >     >     >     if you are comparing it to a typical desktop
> environment.
> >     >     >     >
> >     >     >     >     > EXTRA_IMAGE_FEATURES += "dev-pkgs"
> >     >     >     >     > IMAGE_INSTALL_append =" autoconf"
> >     >     >     >     > IMAGE_INSTALL_append =" autofs"
> >     >     >     >     > IMAGE_INSTALL_append =" automake"
> >     >     >     >     > IMAGE_INSTALL_append =" ccache"
> >     >     >     >     > IMAGE_INSTALL_append =" chkconfig"
> >     >     >     >     > IMAGE_INSTALL_append =" dbus-glib"
> >     >     >     >     > IMAGE_INSTALL_append =" gcc"
> >     >     >     >     > IMAGE_INSTALL_append =" glib-2.0"
> >     >     >     >     > IMAGE_INSTALL_append =" glib-networking"
> >     >     >     >     > IMAGE_INSTALL_append =" glibmm"
> >     >     >     >     > IMAGE_INSTALL_append ="
> packagegroup-core-buildessential"
> >     >     >     >     > IMAGE_INSTALL_append =" pciutils"
> >     >     >     >     > IMAGE_INSTALL_append =" pkgconfig"
> >     >     >     >     > IMAGE_INSTALL_append =" python-scons"
> >     >     >     >     > IMAGE_INSTALL_append =" systemd-compat-units"
> >     >     >     >     > IMAGE_INSTALL_append =" sysfsutils"
> >     >     >     >     > IMAGE_INSTALL_append =" tcp-wrappers"
> >     >     >     >     > IMAGE_INSTALL_append =" usbutils"
> >     >     >     >     > IMAGE_INSTALL_append =" util-macros"
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>

--bcaec52c5ccd4e4ffd04f4e55ca5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That is correct, compile times between the Linaro and Yoct=
o build were almost identical, roughly 5 -10 minutes.<br></div><div class=
=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Mar 18, 2014 at=
 10:53 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbasso=
c.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 2014-03-18 11:48, Rick Bi=
anchi wrote:<br>
&gt; Gary,<br>
&gt; I noticed during the make the it was complaining about the date being =
in the future; I checked and sure thing the date and time were bit off, abo=
ut 14 years. I set it to the<br>
&gt; correct time &nbsp;with &quot;date --set=3D&quot;18 MARCH 2014 10:32:0=
0&quot; and the build completed in under 10 mins.<br>
<br>
</div>So to clarify, your compile results on Yocto were not that different =
from those on Linaro?<br>
Certainly not minutes vs days, correct?<br>
<div class=3D""><br>
&gt; On Fri, Mar 14, 2014 at 3:16 PM, Gary Thomas &lt;<a href=3D"mailto:gar=
y@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlb=
assoc.com">gary@mlbassoc.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt; &nbsp; &nbsp; On 2014-03-14 08:49, Rick Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &gt; If I have time today I will try to reproduce your r=
esults. If not, I will get to it first thing next week and post my result.<=
br>
&gt;<br>
&gt; &nbsp; &nbsp; One thing I forgot to point out is I used the identical =
kernel+modules for<br>
&gt; &nbsp; &nbsp; both setups. &nbsp;I would be interested to see if that =
makes any difference for<br>
&gt; &nbsp; &nbsp; you. &nbsp;I can&#39;t fully test it as my board doesn&#=
39;t have a Linaro kernel.<br>
&gt;<br>
&gt; &nbsp; &nbsp; So there are four combinations - I only tried the first =
two:<br>
&gt; &nbsp; &nbsp; &nbsp; Yocto kernel + Yocto rootfs<br>
&gt; &nbsp; &nbsp; &nbsp; Yocto kernel + Linaro rootfs<br>
&gt; &nbsp; &nbsp; &nbsp; Linaro kernel + Yocto rootfs<br>
&gt; &nbsp; &nbsp; &nbsp; Linaro kernel + Linaro rootfs<br>
&gt;<br>
</div><div class=3D"">&gt; &nbsp; &nbsp; &gt; On Fri, Mar 14, 2014 at 7:38 =
AM, Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com<=
/a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&g=
t; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &l=
t;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;&gt;=
&gt; wrote:<br>

&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; On 2014-03-12 13:11, Rick Bianchi wro=
te:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; usbip from /usr/src/kernel/drive=
rs/staging/usbip<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; I finally managed to make this compar=
ison. &nbsp;I did this by taking my Poky/Yocto<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; built system for a i.MX6 system (ARM =
Cortex-A9) and replaced the rootfs with<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; one for the Gumstix Overo (linaro). &=
nbsp;The results were nothing like yours, so<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; it&#39;s a bit confusing.<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; I actually built an entire Linux kern=
el - not just the one directory you mentioned.<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Poky/Yocto - 37 minutes<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Linaro &nbsp; &nbsp; - 48 minutes<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; There is some flex in these numbers a=
s they were on different [brand] SD cards, etc,<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; but I sure did not see the &quot;5 mi=
nutes for Linaro vs 24 hours on Yocto&quot; that you reported.<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Perhaps the only thing I did differen=
tly was I added the SDK tools to my Yocto system<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; using these meta-packages instead of =
the list you used.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; packagegroup-core-sdk packageg=
roup-core-standalone-sdk-target<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; You might try that to see if it makes=
 any difference.<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; n.b. part of what took me so long to =
get these results is I was trying to run this test<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; on something closer to your Overo boa=
rd. &nbsp;I have an older OMAP DM3730 board here that I<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; tried to do these same steps, but it =
was unstable and I could not get the Linaro based<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; file system to work at all. &nbsp;Ver=
y strange. &nbsp;In any case, I think the comparison I did get<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; with the i.MX6 is valid.<br>
&gt; &nbsp; &nbsp; &gt;<br>
</div>&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; On Wed, Mar 12, 2014 at 11=
:44 AM, Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.=
com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</=
a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a=
> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;=
&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> =
&lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;<b=
r>

<div class=3D"">&gt; &nbsp; &nbsp; &lt;mailto:<a href=3D"mailto:gary@mlbass=
oc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.co=
m">gary@mlbassoc.com</a>&gt;&gt;&gt;&gt; wrote:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; On 2014-03-12 10:0=
9, Rick Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; I completely =
agree with regards to the comparison, but I have compiled the same exact so=
urce on the same target (arm) and it only took 5 minutes when running the L=
inaro image.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; To clarify, t=
he only difference is the build, one is Linaro (took 5 minutes to compile s=
ource on the target) and the other Yocto (took almost 24 hours to compile s=
ource on the target).<br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Sorry, I missed th=
at this was on the same hardware.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; What are you build=
ing? &nbsp;I&#39;m going to try and duplicate this here<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; on hardware I have=
 that&#39;s quite similar to your Gumstix board.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; Is there some=
thing that I am missing?<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; On Wed, Mar 1=
2, 2014 at 8:28 AM, Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">ga=
ry@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@ml=
bassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlb=
assoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc=
.com</a>&gt;&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbas=
soc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.c=
om</a>&gt;<br>

</div>&gt; &nbsp; &nbsp; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">ga=
ry@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@ml=
bassoc.com</a>&gt;&gt;&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">=
gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@=
mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@m=
lbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbass=
oc.com</a>&gt;&gt;<br>

<div class=3D"HOEnZb"><div class=3D"h5">&gt; &nbsp; &nbsp; &gt; &nbsp; &nbs=
p; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &l=
t;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; &lt=
;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mail=
to:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;&gt;&gt;&g=
t;&gt; wrote:<br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 On 2014-03-12 09:15, Rick Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; I have the gumstix-console-image with the added packages below. When =
I compile on the target is take a very long time for it to complete, over 2=
4 hours. I have compiled the same<br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; code on the same target, but running Linaro image, and it only takes =
a few minutes. Is there another recipe that I need to add to the build to s=
peed up compiling?<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 Doubtful. &nbsp;The reason your build on the target takes so long is merel=
y<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 one of horsepower - that little ARM processor just doesn&#39;t have it, es=
pecially<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 if you are comparing it to a typical desktop environment.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; EXTRA_IMAGE_FEATURES +=3D &quot;dev-pkgs&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; autoconf&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; autofs&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; automake&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; ccache&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; chkconfig&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; dbus-glib&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; gcc&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; glib-2.0&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; glib-networking&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; glibmm&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; packagegroup-core-buildessential&quot;=
<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; pciutils&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; pkgconfig&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; python-scons&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; systemd-compat-units&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; sysfsutils&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; tcp-wrappers&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; usbutils&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp;=
 &gt; IMAGE_INSTALL_append =3D&quot; util-macros&quot;<br>
<br>
--<br>
------------------------------------------------------------<br>
Gary Thomas &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp=
;Consulting for the<br>
MLB Associates &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; &nb=
sp;Embedded world<br>
------------------------------------------------------------<br>
</div></div></blockquote></div><br></div>

--bcaec52c5ccd4e4ffd04f4e55ca5--
