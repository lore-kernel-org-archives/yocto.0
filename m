Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41F40E00B39
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 11:30:43 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id lf12so7886239vcb.11
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 11:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Vf4z4WGdAQXpDxE4x0VNL0Ffw9tIkhVaHlf/GpBnqkI=;
	b=ftpLGcdtvDiuECzvEeQOEl5k4f9GLiFEb21LzpW2leDnqityN+euqjURJ2zFlkRM7/
	8mRAnXSUW89Ny6UCykFY3sRH8eXREGi8PFbGb0BcvrfAZBEDPNMdK13lsueCKu5FZDXN
	7ByeBA1DzXjOJvtAA5kkjbd/nWvnKt5IBxck6MfOMwrAuaTnX778CBMXzzPSoQyfWj4y
	uGWtya6wwP5O3m71kReY7UoPtrhGiT3dKAmYaYksku0wuYY5wcT5Pfn6UXRhNt2tlyl6
	KapFaSJRF+feNXOml3cTupxHCyOGCAhU3vH9v6tAy/rDuV9ZIIpmpm0+29Ro1BX3MxL3
	q8CA==
MIME-Version: 1.0
X-Received: by 10.52.243.167 with SMTP id wz7mr102184vdc.47.1395167442676;
	Tue, 18 Mar 2014 11:30:42 -0700 (PDT)
Received: by 10.220.96.66 with HTTP; Tue, 18 Mar 2014 11:30:42 -0700 (PDT)
In-Reply-To: <53288899.8090702@mlbassoc.com>
References: <CAA7h+EpU6RVwbewuJ6r04+O2CvjPBpP1z86dpAthm4_cBrrO+Q@mail.gmail.com>
	<53207D25.2040309@mlbassoc.com>
	<CAA7h+Eomb_92298Y1NDmtTNiTmNcbivytLd9xT=1FVZ+My=PAw@mail.gmail.com>
	<5320AB11.4060303@mlbassoc.com>
	<CAA7h+EoYviRS34heBABgE-o1eQP0po=rVgE-Tc98vSg16F-5+g@mail.gmail.com>
	<5323147A.8000400@mlbassoc.com>
	<CAA7h+EpRdEuYERe+N2enPyPDuP1fN+qE_PD9NnEGHYDV2wwP+Q@mail.gmail.com>
	<53237FCF.8020700@mlbassoc.com>
	<CAA7h+EprV97+okAJhq=b9jZrJz0UhegC3D0cDhSNsgboS4by6A@mail.gmail.com>
	<CAA7h+ErZGg61XAYC5fZ2cLyeKfo7Ge_U9ZPGfNy2a+TMqiA76A@mail.gmail.com>
	<53288899.8090702@mlbassoc.com>
Date: Tue, 18 Mar 2014 11:30:42 -0700
Message-ID: <CAA7h+EpfhqXRPhdzEardavHfhM=d3b7AuPq3+GA=zobvReaOpg@mail.gmail.com>
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
X-List-Received-Date: Tue, 18 Mar 2014 18:30:44 -0000
Content-Type: multipart/alternative; boundary=001a11c1bf16d2afe904f4e5bb7a

--001a11c1bf16d2afe904f4e5bb7a
Content-Type: text/plain; charset=ISO-8859-1

I rebooted the system with the "reboot" command and then checked the date
and time with "date", it did not hold the system time and date correctly
Sat Jan 1 02:28:44 UTC 2000.


On Tue, Mar 18, 2014 at 10:55 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2014-03-18 11:49, Rick Bianchi wrote:
> > Should have noted, that the date and time reset on every reboot?
>
> Unless you have a battery backed up clock device, e.g. Dallas RTC,
> this will happen.  If you shut your Yocto system down properly, e.g.
> using '# reboot', it will keep track of when you shut down and then
> set the clock to that time when you reboot.  Without a true RTC, there's
> little else that it can do unless you run NTP and get the time from some
> external server.
>
> > On Tue, Mar 18, 2014 at 10:48 AM, Rick Bianchi <
> bianchirickkutta@gmail.com <mailto:bianchirickkutta@gmail.com>> wrote:
> >
> >     Gary,
> >     I noticed during the make the it was complaining about the date
> being in the future; I checked and sure thing the date and time were bit
> off, about 14 years. I set it to the
> >     correct time  with "date --set="18 MARCH 2014 10:32:00" and the
> build completed in under 10 mins.
> >
> >
> >     On Fri, Mar 14, 2014 at 3:16 PM, Gary Thomas <gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>> wrote:
> >
> >         On 2014-03-14 08:49, Rick Bianchi wrote:
> >         > If I have time today I will try to reproduce your results. If
> not, I will get to it first thing next week and post my result.
> >
> >         One thing I forgot to point out is I used the identical
> kernel+modules for
> >         both setups.  I would be interested to see if that makes any
> difference for
> >         you.  I can't fully test it as my board doesn't have a Linaro
> kernel.
> >
> >         So there are four combinations - I only tried the first two:
> >           Yocto kernel + Yocto rootfs
> >           Yocto kernel + Linaro rootfs
> >           Linaro kernel + Yocto rootfs
> >           Linaro kernel + Linaro rootfs
> >
> >         > On Fri, Mar 14, 2014 at 7:38 AM, Gary Thomas <
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>>> wrote:
> >         >
> >         >     On 2014-03-12 13:11, Rick Bianchi wrote:
> >         >     > usbip from /usr/src/kernel/drivers/staging/usbip
> >         >
> >         >     I finally managed to make this comparison.  I did this by
> taking my Poky/Yocto
> >         >     built system for a i.MX6 system (ARM Cortex-A9) and
> replaced the rootfs with
> >         >     one for the Gumstix Overo (linaro).  The results were
> nothing like yours, so
> >         >     it's a bit confusing.
> >         >
> >         >     I actually built an entire Linux kernel - not just the one
> directory you mentioned.
> >         >
> >         >     Poky/Yocto - 37 minutes
> >         >     Linaro     - 48 minutes
> >         >
> >         >     There is some flex in these numbers as they were on
> different [brand] SD cards, etc,
> >         >     but I sure did not see the "5 minutes for Linaro vs 24
> hours on Yocto" that you reported.
> >         >
> >         >     Perhaps the only thing I did differently was I added the
> SDK tools to my Yocto system
> >         >     using these meta-packages instead of the list you used.
> >         >       packagegroup-core-sdk
> packagegroup-core-standalone-sdk-target
> >         >
> >         >     You might try that to see if it makes any difference.
> >         >
> >         >     n.b. part of what took me so long to get these results is
> I was trying to run this test
> >         >     on something closer to your Overo board.  I have an older
> OMAP DM3730 board here that I
> >         >     tried to do these same steps, but it was unstable and I
> could not get the Linaro based
> >         >     file system to work at all.  Very strange.  In any case, I
> think the comparison I did get
> >         >     with the i.MX6 is valid.
> >         >
> >         >     > On Wed, Mar 12, 2014 at 11:44 AM, Gary Thomas <
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> >         <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>> wrote:
> >         >     >
> >         >     >     On 2014-03-12 10:09, Rick Bianchi wrote:
> >         >     >     > I completely agree with regards to the comparison,
> but I have compiled the same exact source on the same target (arm) and it
> only took 5 minutes when running the Linaro image.
> >         >     >     >
> >         >     >     > To clarify, the only difference is the build, one
> is Linaro (took 5 minutes to compile source on the target) and the other
> Yocto (took almost 24 hours to compile source on the target).
> >         >     >
> >         >     >     Sorry, I missed that this was on the same hardware.
> >         >     >
> >         >     >     What are you building?  I'm going to try and
> duplicate this here
> >         >     >     on hardware I have that's quite similar to your
> Gumstix board.
> >         >     >
> >         >     >     >
> >         >     >     > Is there something that I am missing?
> >         >     >     >
> >         >     >     >
> >         >     >     > On Wed, Mar 12, 2014 at 8:28 AM, Gary Thomas <
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> >         <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>> <mailto:
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>>
> >         >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>>> wrote:
> >         >     >     >
> >         >     >     >     On 2014-03-12 09:15, Rick Bianchi wrote:
> >         >     >     >     >
> >         >     >     >     > I have the gumstix-console-image with the
> added packages below. When I compile on the target is take a very long time
> for it to complete, over 24 hours. I have compiled the same
> >         >     >     >     > code on the same target, but running Linaro
> image, and it only takes a few minutes. Is there another recipe that I need
> to add to the build to speed up compiling?
> >         >     >     >
> >         >     >     >     Doubtful.  The reason your build on the target
> takes so long is merely
> >         >     >     >     one of horsepower - that little ARM processor
> just doesn't have it, especially
> >         >     >     >     if you are comparing it to a typical desktop
> environment.
> >         >     >     >
> >         >     >     >     > EXTRA_IMAGE_FEATURES += "dev-pkgs"
> >         >     >     >     > IMAGE_INSTALL_append =" autoconf"
> >         >     >     >     > IMAGE_INSTALL_append =" autofs"
> >         >     >     >     > IMAGE_INSTALL_append =" automake"
> >         >     >     >     > IMAGE_INSTALL_append =" ccache"
> >         >     >     >     > IMAGE_INSTALL_append =" chkconfig"
> >         >     >     >     > IMAGE_INSTALL_append =" dbus-glib"
> >         >     >     >     > IMAGE_INSTALL_append =" gcc"
> >         >     >     >     > IMAGE_INSTALL_append =" glib-2.0"
> >         >     >     >     > IMAGE_INSTALL_append =" glib-networking"
> >         >     >     >     > IMAGE_INSTALL_append =" glibmm"
> >         >     >     >     > IMAGE_INSTALL_append ="
> packagegroup-core-buildessential"
> >         >     >     >     > IMAGE_INSTALL_append =" pciutils"
> >         >     >     >     > IMAGE_INSTALL_append =" pkgconfig"
> >         >     >     >     > IMAGE_INSTALL_append =" python-scons"
> >         >     >     >     > IMAGE_INSTALL_append =" systemd-compat-units"
> >         >     >     >     > IMAGE_INSTALL_append =" sysfsutils"
> >         >     >     >     > IMAGE_INSTALL_append =" tcp-wrappers"
> >         >     >     >     > IMAGE_INSTALL_append =" usbutils"
> >         >     >     >     > IMAGE_INSTALL_append =" util-macros"
> >         >
> >         >     --
> >         >
> ------------------------------------------------------------
> >         >     Gary Thomas                 |  Consulting for the
> >         >     MLB Associates              |    Embedded world
> >         >
> ------------------------------------------------------------
> >         >     --
> >         >     _______________________________________________
> >         >     yocto mailing list
> >         >     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
> >         >     https://lists.yoctoproject.org/listinfo/yocto
> >         >
> >         >
> >         >
> >         >
> >
> >         --
> >         ------------------------------------------------------------
> >         Gary Thomas                 |  Consulting for the
> >         MLB Associates              |    Embedded world
> >         ------------------------------------------------------------
> >         --
> >         _______________________________________________
> >         yocto mailing list
> >         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >         https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> >
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>

--001a11c1bf16d2afe904f4e5bb7a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I rebooted the system with the &quot;reboot&quot; command =
and then checked the date and time with &quot;date&quot;, it did not hold t=
he system time and date correctly Sat Jan  1 02:28:44 UTC 2000.<br></div><d=
iv class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Tue, Mar 18, 2014 at 10:55 AM, Gary T=
homas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"=
_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">
<div class=3D"">On 2014-03-18 11:49, Rick Bianchi wrote:<br>
&gt; Should have noted, that the date and time reset on every reboot?<br>
<br>
</div>Unless you have a battery backed up clock device, e.g. Dallas RTC,<br=
>
this will happen. &nbsp;If you shut your Yocto system down properly, e.g.<b=
r>
using &#39;# reboot&#39;, it will keep track of when you shut down and then=
<br>
set the clock to that time when you reboot. &nbsp;Without a true RTC, there=
&#39;s<br>
little else that it can do unless you run NTP and get the time from some<br=
>
external server.<br>
<div class=3D""><br>
&gt; On Tue, Mar 18, 2014 at 10:48 AM, Rick Bianchi &lt;<a href=3D"mailto:b=
ianchirickkutta@gmail.com">bianchirickkutta@gmail.com</a> &lt;mailto:<a hre=
f=3D"mailto:bianchirickkutta@gmail.com">bianchirickkutta@gmail.com</a>&gt;&=
gt; wrote:<br>

&gt;<br>
&gt; &nbsp; &nbsp; Gary,<br>
&gt; &nbsp; &nbsp; I noticed during the make the it was complaining about t=
he date being in the future; I checked and sure thing the date and time wer=
e bit off, about 14 years. I set it to the<br>
&gt; &nbsp; &nbsp; correct time &nbsp;with &quot;date --set=3D&quot;18 MARC=
H 2014 10:32:00&quot; and the build completed in under 10 mins.<br>
&gt;<br>
&gt;<br>
</div><div class=3D"">&gt; &nbsp; &nbsp; On Fri, Mar 14, 2014 at 3:16 PM, G=
ary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &=
lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;&gt=
; wrote:<br>

&gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; On 2014-03-14 08:49, Rick Bianchi wrote:<b=
r>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; If I have time today I will try to re=
produce your results. If not, I will get to it first thing next week and po=
st my result.<br>
&gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; One thing I forgot to point out is I used =
the identical kernel+modules for<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; both setups. &nbsp;I would be interested t=
o see if that makes any difference for<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; you. &nbsp;I can&#39;t fully test it as my=
 board doesn&#39;t have a Linaro kernel.<br>
&gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; So there are four combinations - I only tr=
ied the first two:<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Yocto kernel + Yocto rootfs<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Yocto kernel + Linaro rootfs<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Linaro kernel + Yocto rootfs<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Linaro kernel + Linaro rootfs<br>
&gt;<br>
</div><div class=3D"">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; On Fri, Mar 14,=
 2014 at 7:38 AM, Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary=
@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlba=
ssoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbas=
soc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.c=
om</a>&gt;&gt;&gt; wrote:<br>

&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; On 2014-03-12 13:11, Ri=
ck Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; usbip from /usr/sr=
c/kernel/drivers/staging/usbip<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; I finally managed to ma=
ke this comparison. &nbsp;I did this by taking my Poky/Yocto<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; built system for a i.MX=
6 system (ARM Cortex-A9) and replaced the rootfs with<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; one for the Gumstix Ove=
ro (linaro). &nbsp;The results were nothing like yours, so<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; it&#39;s a bit confusin=
g.<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; I actually built an ent=
ire Linux kernel - not just the one directory you mentioned.<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Poky/Yocto - 37 minutes=
<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Linaro &nbsp; &nbsp; - =
48 minutes<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; There is some flex in t=
hese numbers as they were on different [brand] SD cards, etc,<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; but I sure did not see =
the &quot;5 minutes for Linaro vs 24 hours on Yocto&quot; that you reported=
.<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Perhaps the only thing =
I did differently was I added the SDK tools to my Yocto system<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; using these meta-packag=
es instead of the list you used.<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; packagegroup-cor=
e-sdk packagegroup-core-standalone-sdk-target<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; You might try that to s=
ee if it makes any difference.<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; n.b. part of what took =
me so long to get these results is I was trying to run this test<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; on something closer to =
your Overo board. &nbsp;I have an older OMAP DM3730 board here that I<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; tried to do these same =
steps, but it was unstable and I could not get the Linaro based<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; file system to work at =
all. &nbsp;Very strange. &nbsp;In any case, I think the comparison I did ge=
t<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; with the i.MX6 is valid=
.<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
</div>&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; On Wed, Mar =
12, 2014 at 11:44 AM, Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">=
gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@=
mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@m=
lbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbass=
oc.com</a>&gt;&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlb=
assoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc=
.com</a>&gt;<br>

<div class=3D"">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &lt;mailto:<a href=3D"mail=
to:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:ga=
ry@mlbassoc.com">gary@mlbassoc.com</a>&gt;&gt;&gt;&gt; wrote:<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; On 2=
014-03-12 10:09, Rick Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 I completely agree with regards to the comparison, but I have compiled the=
 same exact source on the same target (arm) and it only took 5 minutes when=
 running the Linaro image.<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 To clarify, the only difference is the build, one is Linaro (took 5 minute=
s to compile source on the target) and the other Yocto (took almost 24 hour=
s to compile source on the target).<br>

&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Sorr=
y, I missed that this was on the same hardware.<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; What=
 are you building? &nbsp;I&#39;m going to try and duplicate this here<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; on h=
ardware I have that&#39;s quite similar to your Gumstix board.<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 Is there something that I am missing?<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 On Wed, Mar 12, 2014 at 8:28 AM, Gary Thomas &lt;<a href=3D"mailto:gary@ml=
bassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbasso=
c.com">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc=
.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com"=
>gary@mlbassoc.com</a>&gt;&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.c=
om">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">g=
ary@mlbassoc.com</a>&gt;<br>

</div>&gt; &nbsp; &nbsp; &nbsp; &nbsp; &lt;mailto:<a href=3D"mailto:gary@ml=
bassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbasso=
c.com">gary@mlbassoc.com</a>&gt;&gt;&gt; &lt;mailto:<a href=3D"mailto:gary@=
mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbas=
soc.com">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbass=
oc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.co=
m">gary@mlbassoc.com</a>&gt;&gt;<br>

<div><div class=3D"h5">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; =
&lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;m=
ailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; &lt;ma=
ilto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:=
<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;&gt;&gt;&gt;&=
gt; wrote:<br>

&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; On 2014-03-12 09:15, Rick Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; I have the gumstix-console-image with the added package=
s below. When I compile on the target is take a very long time for it to co=
mplete, over 24 hours. I have compiled the same<br>

&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; code on the same target, but running Linaro image, and =
it only takes a few minutes. Is there another recipe that I need to add to =
the build to speed up compiling?<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; Doubtful. &nbsp;The reason your build on the target takes so=
 long is merely<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; one of horsepower - that little ARM processor just doesn&#39=
;t have it, especially<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; if you are comparing it to a typical desktop environment.<br=
>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; EXTRA_IMAGE_FEATURES +=3D &quot;dev-pkgs&quot;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; autoconf&quot;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; autofs&quot;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; automake&quot;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; ccache&rdquo;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; chkconfig&quot;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; dbus-glib&quot;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; gcc&quot;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; glib-2.0&quot;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; glib-networking&quot;<br=
>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; glibmm&quot;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; packagegroup-core-builde=
ssential&quot;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; pciutils&quot;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; pkgconfig&rdquo;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; python-scons&quot;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; systemd-compat-units&rdq=
uo;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; sysfsutils&quot;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; tcp-wrappers&quot;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; usbutils&quot;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; util-macros&quot;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; --<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; -----------------------=
-------------------------------------<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Gary Thomas &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp;Consulting for the<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; MLB Associates &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp;Embedded world<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; -----------------------=
-------------------------------------<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; --<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; _______________________=
________________________<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; yocto mailing list<br>
</div></div>&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; <a href=3D"=
mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> &lt;mailto:<a hre=
f=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt; &lt;mail=
to:<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> &lt=
;mailto:<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a=
>&gt;&gt;<br>

<div class=3D"HOEnZb"><div class=3D"h5">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &g=
t; &nbsp; &nbsp; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; --<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; ------------------------------------------=
------------------<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; Gary Thomas &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; | &nbsp;Consulting for the<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; MLB Associates &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp;Embedded world<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; ------------------------------------------=
------------------<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; --<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; __________________________________________=
_____<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; yocto mailing list<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"mailto:yocto@yoctoproject.org">=
yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.=
org">yocto@yoctoproject.org</a>&gt;<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"https://lists.yoctoproject.org/=
listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
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
</div></div></blockquote></div><br></div>

--001a11c1bf16d2afe904f4e5bb7a--
