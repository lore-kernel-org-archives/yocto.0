Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F31EE003C0
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 07:49:49 -0700 (PDT)
Received: by mail-vc0-f169.google.com with SMTP id ik5so2915991vcb.28
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 07:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=CUDzzSZHLzs1sce4u06ihn7cqA6Ef1rq9+7W9Ve47IA=;
	b=hXRNxAUpkbHH+EWUqhOfflCOnF/zCnJMFdPm8QuZS3MMD4y66y3SDhbgya03QgnqUR
	XZbmbvOqk0jLJH3lvEKRf2PIykKs0ED56xIS0h10iuOh95Wvu5siyn306WA/0W8k/kAq
	Lk8JNVDcUer2rDpodlYTkOWxNZA/sUh8DOp5u4HOeaiGmS/Ctu3slt0Tn+uL4+QwEF0q
	1m8aQQf/guDVJk66JF3oFwJYStiB89PPaKlE49FQTXxpSsNtRWzSW6fWCB2rQVnIE88D
	l3UhOQGjBGsG8Ori1jRJLH2tmHNLXTXZ0V8yTIVtytLwMkooVnoo7Cgw+23Gmywsoc0G
	qNFA==
MIME-Version: 1.0
X-Received: by 10.220.10.2 with SMTP id n2mr1247409vcn.26.1394808588722; Fri,
	14 Mar 2014 07:49:48 -0700 (PDT)
Received: by 10.220.96.66 with HTTP; Fri, 14 Mar 2014 07:49:48 -0700 (PDT)
In-Reply-To: <5323147A.8000400@mlbassoc.com>
References: <CAA7h+EpU6RVwbewuJ6r04+O2CvjPBpP1z86dpAthm4_cBrrO+Q@mail.gmail.com>
	<53207D25.2040309@mlbassoc.com>
	<CAA7h+Eomb_92298Y1NDmtTNiTmNcbivytLd9xT=1FVZ+My=PAw@mail.gmail.com>
	<5320AB11.4060303@mlbassoc.com>
	<CAA7h+EoYviRS34heBABgE-o1eQP0po=rVgE-Tc98vSg16F-5+g@mail.gmail.com>
	<5323147A.8000400@mlbassoc.com>
Date: Fri, 14 Mar 2014 07:49:48 -0700
Message-ID: <CAA7h+EpRdEuYERe+N2enPyPDuP1fN+qE_PD9NnEGHYDV2wwP+Q@mail.gmail.com>
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
X-List-Received-Date: Fri, 14 Mar 2014 14:49:50 -0000
Content-Type: multipart/alternative; boundary=001a11c3a92075e70a04f4922ec5

--001a11c3a92075e70a04f4922ec5
Content-Type: text/plain; charset=ISO-8859-1

If I have time today I will try to reproduce your results. If not, I will
get to it first thing next week and post my result.

Thanks,
Rick


On Fri, Mar 14, 2014 at 7:38 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2014-03-12 13:11, Rick Bianchi wrote:
> > usbip from /usr/src/kernel/drivers/staging/usbip
>
> I finally managed to make this comparison.  I did this by taking my
> Poky/Yocto
> built system for a i.MX6 system (ARM Cortex-A9) and replaced the rootfs
> with
> one for the Gumstix Overo (linaro).  The results were nothing like yours,
> so
> it's a bit confusing.
>
> I actually built an entire Linux kernel - not just the one directory you
> mentioned.
>
> Poky/Yocto - 37 minutes
> Linaro     - 48 minutes
>
> There is some flex in these numbers as they were on different [brand] SD
> cards, etc,
> but I sure did not see the "5 minutes for Linaro vs 24 hours on Yocto"
> that you reported.
>
> Perhaps the only thing I did differently was I added the SDK tools to my
> Yocto system
> using these meta-packages instead of the list you used.
>   packagegroup-core-sdk packagegroup-core-standalone-sdk-target
>
> You might try that to see if it makes any difference.
>
> n.b. part of what took me so long to get these results is I was trying to
> run this test
> on something closer to your Overo board.  I have an older OMAP DM3730
> board here that I
> tried to do these same steps, but it was unstable and I could not get the
> Linaro based
> file system to work at all.  Very strange.  In any case, I think the
> comparison I did get
> with the i.MX6 is valid.
>
> > On Wed, Mar 12, 2014 at 11:44 AM, Gary Thomas <gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>> wrote:
> >
> >     On 2014-03-12 10:09, Rick Bianchi wrote:
> >     > I completely agree with regards to the comparison, but I have
> compiled the same exact source on the same target (arm) and it only took 5
> minutes when running the Linaro image.
> >     >
> >     > To clarify, the only difference is the build, one is Linaro (took
> 5 minutes to compile source on the target) and the other Yocto (took almost
> 24 hours to compile source on the target).
> >
> >     Sorry, I missed that this was on the same hardware.
> >
> >     What are you building?  I'm going to try and duplicate this here
> >     on hardware I have that's quite similar to your Gumstix board.
> >
> >     >
> >     > Is there something that I am missing?
> >     >
> >     >
> >     > On Wed, Mar 12, 2014 at 8:28 AM, Gary Thomas <gary@mlbassoc.com<mailto:
> gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>
> wrote:
> >     >
> >     >     On 2014-03-12 09:15, Rick Bianchi wrote:
> >     >     >
> >     >     > I have the gumstix-console-image with the added packages
> below. When I compile on the target is take a very long time for it to
> complete, over 24 hours. I have compiled the same
> >     >     > code on the same target, but running Linaro image, and it
> only takes a few minutes. Is there another recipe that I need to add to the
> build to speed up compiling?
> >     >
> >     >     Doubtful.  The reason your build on the target takes so long
> is merely
> >     >     one of horsepower - that little ARM processor just doesn't
> have it, especially
> >     >     if you are comparing it to a typical desktop environment.
> >     >
> >     >     > EXTRA_IMAGE_FEATURES += "dev-pkgs"
> >     >     > IMAGE_INSTALL_append =" autoconf"
> >     >     > IMAGE_INSTALL_append =" autofs"
> >     >     > IMAGE_INSTALL_append =" automake"
> >     >     > IMAGE_INSTALL_append =" ccache"
> >     >     > IMAGE_INSTALL_append =" chkconfig"
> >     >     > IMAGE_INSTALL_append =" dbus-glib"
> >     >     > IMAGE_INSTALL_append =" gcc"
> >     >     > IMAGE_INSTALL_append =" glib-2.0"
> >     >     > IMAGE_INSTALL_append =" glib-networking"
> >     >     > IMAGE_INSTALL_append =" glibmm"
> >     >     > IMAGE_INSTALL_append =" packagegroup-core-buildessential"
> >     >     > IMAGE_INSTALL_append =" pciutils"
> >     >     > IMAGE_INSTALL_append =" pkgconfig"
> >     >     > IMAGE_INSTALL_append =" python-scons"
> >     >     > IMAGE_INSTALL_append =" systemd-compat-units"
> >     >     > IMAGE_INSTALL_append =" sysfsutils"
> >     >     > IMAGE_INSTALL_append =" tcp-wrappers"
> >     >     > IMAGE_INSTALL_append =" usbutils"
> >     >     > IMAGE_INSTALL_append =" util-macros"
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

--001a11c3a92075e70a04f4922ec5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If I have time today I will try to reproduce your res=
ults.&nbsp;If not, I will get to it first thing next week and post my resul=
t.<br></div><div><br></div><div>Thanks,</div><div>Rick</div></div><div clas=
s=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Fri, Mar 14, 2014 at 7:38 AM, Gary Th=
omas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_=
blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">
On 2014-03-12 13:11, Rick Bianchi wrote:<br>
&gt; usbip from /usr/src/kernel/drivers/staging/usbip<br>
<br>
I finally managed to make this comparison. &nbsp;I did this by taking my Po=
ky/Yocto<br>
built system for a i.MX6 system (ARM Cortex-A9) and replaced the rootfs wit=
h<br>
one for the Gumstix Overo (linaro). &nbsp;The results were nothing like you=
rs, so<br>
it&#39;s a bit confusing.<br>
<br>
I actually built an entire Linux kernel - not just the one directory you me=
ntioned.<br>
<br>
Poky/Yocto - 37 minutes<br>
Linaro &nbsp; &nbsp; - 48 minutes<br>
<br>
There is some flex in these numbers as they were on different [brand] SD ca=
rds, etc,<br>
but I sure did not see the &quot;5 minutes for Linaro vs 24 hours on Yocto&=
quot; that you reported.<br>
<br>
Perhaps the only thing I did differently was I added the SDK tools to my Yo=
cto system<br>
using these meta-packages instead of the list you used.<br>
&nbsp; packagegroup-core-sdk packagegroup-core-standalone-sdk-target<br>
<br>
You might try that to see if it makes any difference.<br>
<br>
n.b. part of what took me so long to get these results is I was trying to r=
un this test<br>
on something closer to your Overo board. &nbsp;I have an older OMAP DM3730 =
board here that I<br>
tried to do these same steps, but it was unstable and I could not get the L=
inaro based<br>
file system to work at all. &nbsp;Very strange. &nbsp;In any case, I think =
the comparison I did get<br>
with the i.MX6 is valid.<br>
<div class=3D""><br>
&gt; On Wed, Mar 12, 2014 at 11:44 AM, Gary Thomas &lt;<a href=3D"mailto:ga=
ry@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@ml=
bassoc.com">gary@mlbassoc.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt; &nbsp; &nbsp; On 2014-03-12 10:09, Rick Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &gt; I completely agree with regards to the comparison, =
but I have compiled the same exact source on the same target (arm) and it o=
nly took 5 minutes when running the Linaro image.<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; To clarify, the only difference is the build, one i=
s Linaro (took 5 minutes to compile source on the target) and the other Yoc=
to (took almost 24 hours to compile source on the target).<br>
&gt;<br>
&gt; &nbsp; &nbsp; Sorry, I missed that this was on the same hardware.<br>
&gt;<br>
&gt; &nbsp; &nbsp; What are you building? &nbsp;I&#39;m going to try and du=
plicate this here<br>
&gt; &nbsp; &nbsp; on hardware I have that&#39;s quite similar to your Gums=
tix board.<br>
&gt;<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; Is there something that I am missing?<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt;<br>
</div><div><div class=3D"h5">&gt; &nbsp; &nbsp; &gt; On Wed, Mar 12, 2014 a=
t 8:28 AM, Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbass=
oc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.co=
m</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com=
</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&=
gt;&gt;&gt; wrote:<br>

&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; On 2014-03-12 09:15, Rick Bianchi wro=
te:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; I have the gumstix-console-image=
 with the added packages below. When I compile on the target is take a very=
 long time for it to complete, over 24 hours. I have compiled the same<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; code on the same target, but run=
ning Linaro image, and it only takes a few minutes. Is there another recipe=
 that I need to add to the build to speed up compiling?<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Doubtful. &nbsp;The reason your build=
 on the target takes so long is merely<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; one of horsepower - that little ARM p=
rocessor just doesn&#39;t have it, especially<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; if you are comparing it to a typical =
desktop environment.<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; EXTRA_IMAGE_FEATURES +=3D &quot;=
dev-pkgs&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; a=
utoconf&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; a=
utofs&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; a=
utomake&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; c=
cache&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; c=
hkconfig&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; d=
bus-glib&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; g=
cc&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; g=
lib-2.0&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; g=
lib-networking&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; g=
libmm&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; p=
ackagegroup-core-buildessential&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; p=
ciutils&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; p=
kgconfig&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; p=
ython-scons&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; s=
ystemd-compat-units&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; s=
ysfsutils&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; t=
cp-wrappers&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; u=
sbutils&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; u=
til-macros&quot;<br>
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
</div></div><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targe=
t=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--001a11c3a92075e70a04f4922ec5--
