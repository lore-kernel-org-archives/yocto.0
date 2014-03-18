Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCB9CE00B45
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 11:57:37 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id il7so7925486vcb.32
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 11:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=nFxl0oj/BHYt2Ih4NHeA3w1WAoWOnm9o79p1ooJ3uCA=;
	b=G3sGhxZF0mQCkyADvac2bzTaWV+H4mG3uKKsp4FjkS1HPz2LaH+/Cf31+6TAxaeKSj
	gaz3c+vMrUAq/8Ux97Ukf7SsZ2+hZLEd83XLW4MX40Nnh6S6bGJ99vt6MinltdVeuOoz
	VJTrlsOQiTh+SlTsNNCBiXP4xWiF+JT69zI6ubIEgvT0yYgw7RWbCluInaCU+dvOlv65
	gVtLgl7gr7iL5Oc5pQ9myKC6NS30OrD5SAsVupG0ylLHc4Qjy8j8NKHr52Zdnu5Uk3QV
	JQeGhku81WuO29gHRk+6+7nhB2M3pgMtJmiayWQKusC7lEMTFf7D4m7rAm+VLEkAi6VI
	OtmQ==
MIME-Version: 1.0
X-Received: by 10.58.229.4 with SMTP id sm4mr26698512vec.10.1395169056285;
	Tue, 18 Mar 2014 11:57:36 -0700 (PDT)
Received: by 10.220.96.66 with HTTP; Tue, 18 Mar 2014 11:57:36 -0700 (PDT)
In-Reply-To: <532893E3.9010405@mlbassoc.com>
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
	<CAA7h+EpfhqXRPhdzEardavHfhM=d3b7AuPq3+GA=zobvReaOpg@mail.gmail.com>
	<532893E3.9010405@mlbassoc.com>
Date: Tue, 18 Mar 2014 11:57:36 -0700
Message-ID: <CAA7h+EpsznL1hvT2zgvdt1GsPuFgXnHqhyhfmOGZgc=-K94rWA@mail.gmail.com>
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
X-List-Received-Date: Tue, 18 Mar 2014 18:57:38 -0000
Content-Type: multipart/alternative; boundary=047d7bdca04600692404f4e61c1a

--047d7bdca04600692404f4e61c1a
Content-Type: text/plain; charset=ISO-8859-1

I am re-baking the gumstix-console-image; once I have it up and running I
will enable verbose mode and check scripts at shutdown.


On Tue, Mar 18, 2014 at 11:43 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2014-03-18 12:30, Rick Bianchi wrote:
> > I rebooted the system with the "reboot" command and then checked the
> date and time with "date", it did not hold the system time and date
> correctly Sat Jan 1 02:28:44 UTC 2000.
>
> There seems to be something very wrong with your startup/shutdown scripts
> as both this problem and the networking issue are handled by those scripts.
>
> Did you try turning on the verbose mode?  If so, you should see a line like
> this during shutdown:
>   INIT: [2014-03-18 17:33:20.978789236] Running /etc/rc6.d/S25save-rtc.sh
> stop...
> and another like these on reboot:
>   INIT: [1970-01-01 00:00:05.079166199] Running /etc/rcS.d/S40networking
> start...
>   INIT: [1970-01-01 00:00:05.103022145] Running /etc/rcS.d/S55bootmisc.sh
> start...
>
> > On Tue, Mar 18, 2014 at 10:55 AM, Gary Thomas <gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>> wrote:
> >
> >     On 2014-03-18 11:49, Rick Bianchi wrote:
> >     > Should have noted, that the date and time reset on every reboot?
> >
> >     Unless you have a battery backed up clock device, e.g. Dallas RTC,
> >     this will happen.  If you shut your Yocto system down properly, e.g.
> >     using '# reboot', it will keep track of when you shut down and then
> >     set the clock to that time when you reboot.  Without a true RTC,
> there's
> >     little else that it can do unless you run NTP and get the time from
> some
> >     external server.
> >
> >     > On Tue, Mar 18, 2014 at 10:48 AM, Rick Bianchi <
> bianchirickkutta@gmail.com <mailto:bianchirickkutta@gmail.com> <mailto:
> bianchirickkutta@gmail.com <mailto:bianchirickkutta@gmail.com>>> wrote:
> >     >
> >     >     Gary,
> >     >     I noticed during the make the it was complaining about the
> date being in the future; I checked and sure thing the date and time were
> bit off, about 14 years. I set it to the
> >     >     correct time  with "date --set="18 MARCH 2014 10:32:00" and
> the build completed in under 10 mins.
> >     >
> >     >
> >     >     On Fri, Mar 14, 2014 at 3:16 PM, Gary Thomas <
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>>> wrote:
> >     >
> >     >         On 2014-03-14 08:49, Rick Bianchi wrote:
> >     >         > If I have time today I will try to reproduce your
> results. If not, I will get to it first thing next week and post my result.
> >     >
> >     >         One thing I forgot to point out is I used the identical
> kernel+modules for
> >     >         both setups.  I would be interested to see if that makes
> any difference for
> >     >         you.  I can't fully test it as my board doesn't have a
> Linaro kernel.
> >     >
> >     >         So there are four combinations - I only tried the first
> two:
> >     >           Yocto kernel + Yocto rootfs
> >     >           Yocto kernel + Linaro rootfs
> >     >           Linaro kernel + Yocto rootfs
> >     >           Linaro kernel + Linaro rootfs
> >     >
> >     >         > On Fri, Mar 14, 2014 at 7:38 AM, Gary Thomas <
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>> wrote:
> >     >         >
> >     >         >     On 2014-03-12 13:11, Rick Bianchi wrote:
> >     >         >     > usbip from /usr/src/kernel/drivers/staging/usbip
> >     >         >
> >     >         >     I finally managed to make this comparison.  I did
> this by taking my Poky/Yocto
> >     >         >     built system for a i.MX6 system (ARM Cortex-A9) and
> replaced the rootfs with
> >     >         >     one for the Gumstix Overo (linaro).  The results
> were nothing like yours, so
> >     >         >     it's a bit confusing.
> >     >         >
> >     >         >     I actually built an entire Linux kernel - not just
> the one directory you mentioned.
> >     >         >
> >     >         >     Poky/Yocto - 37 minutes
> >     >         >     Linaro     - 48 minutes
> >     >         >
> >     >         >     There is some flex in these numbers as they were on
> different [brand] SD cards, etc,
> >     >         >     but I sure did not see the "5 minutes for Linaro vs
> 24 hours on Yocto" that you reported.
> >     >         >
> >     >         >     Perhaps the only thing I did differently was I added
> the SDK tools to my Yocto system
> >     >         >     using these meta-packages instead of the list you
> used.
> >     >         >       packagegroup-core-sdk
> packagegroup-core-standalone-sdk-target
> >     >         >
> >     >         >     You might try that to see if it makes any difference.
> >     >         >
> >     >         >     n.b. part of what took me so long to get these
> results is I was trying to run this test
> >     >         >     on something closer to your Overo board.  I have an
> older OMAP DM3730 board here that I
> >     >         >     tried to do these same steps, but it was unstable
> and I could not get the Linaro based
> >     >         >     file system to work at all.  Very strange.  In any
> case, I think the comparison I did get
> >     >         >     with the i.MX6 is valid.
> >     >         >
> >     >         >     > On Wed, Mar 12, 2014 at 11:44 AM, Gary Thomas <
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>> <mailto:
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>>
> >     >         <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>>> wrote:
> >     >         >     >
> >     >         >     >     On 2014-03-12 10:09, Rick Bianchi wrote:
> >     >         >     >     > I completely agree with regards to the
> comparison, but I have compiled the same exact source on the same target
> (arm) and it only took 5 minutes when running the Linaro image.
> >     >         >     >     >
> >     >         >     >     > To clarify, the only difference is the
> build, one is Linaro (took 5 minutes to compile source on the target) and
> the other Yocto (took almost 24 hours to compile source on the target).
> >     >         >     >
> >     >         >     >     Sorry, I missed that this was on the same
> hardware.
> >     >         >     >
> >     >         >     >     What are you building?  I'm going to try and
> duplicate this here
> >     >         >     >     on hardware I have that's quite similar to
> your Gumstix board.
> >     >         >     >
> >     >         >     >     >
> >     >         >     >     > Is there something that I am missing?
> >     >         >     >     >
> >     >         >     >     >
> >     >         >     >     > On Wed, Mar 12, 2014 at 8:28 AM, Gary Thomas
> <gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>> <mailto:
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>>
> >     >         <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>> <mailto:
> gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>> <mailto:
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>>>
> >     >         >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>> <mailto:
> gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>>>> wrote:
> >     >         >     >     >
> >     >         >     >     >     On 2014-03-12 09:15, Rick Bianchi wrote:
> >     >         >     >     >     >
> >     >         >     >     >     > I have the gumstix-console-image with
> the added packages below. When I compile on the target is take a very long
> time for it to complete, over 24 hours. I have compiled the same
> >     >         >     >     >     > code on the same target, but running
> Linaro image, and it only takes a few minutes. Is there another recipe that
> I need to add to the build to speed up compiling?
> >     >         >     >     >
> >     >         >     >     >     Doubtful.  The reason your build on the
> target takes so long is merely
> >     >         >     >     >     one of horsepower - that little ARM
> processor just doesn't have it, especially
> >     >         >     >     >     if you are comparing it to a typical
> desktop environment.
> >     >         >     >     >
> >     >         >     >     >     > EXTRA_IMAGE_FEATURES += "dev-pkgs"
> >     >         >     >     >     > IMAGE_INSTALL_append =" autoconf"
> >     >         >     >     >     > IMAGE_INSTALL_append =" autofs"
> >     >         >     >     >     > IMAGE_INSTALL_append =" automake"
> >     >         >     >     >     > IMAGE_INSTALL_append =" ccache"
> >     >         >     >     >     > IMAGE_INSTALL_append =" chkconfig"
> >     >         >     >     >     > IMAGE_INSTALL_append =" dbus-glib"
> >     >         >     >     >     > IMAGE_INSTALL_append =" gcc"
> >     >         >     >     >     > IMAGE_INSTALL_append =" glib-2.0"
> >     >         >     >     >     > IMAGE_INSTALL_append ="
> glib-networking"
> >     >         >     >     >     > IMAGE_INSTALL_append =" glibmm"
> >     >         >     >     >     > IMAGE_INSTALL_append ="
> packagegroup-core-buildessential"
> >     >         >     >     >     > IMAGE_INSTALL_append =" pciutils"
> >     >         >     >     >     > IMAGE_INSTALL_append =" pkgconfig"
> >     >         >     >     >     > IMAGE_INSTALL_append =" python-scons"
> >     >         >     >     >     > IMAGE_INSTALL_append ="
> systemd-compat-units"
> >     >         >     >     >     > IMAGE_INSTALL_append =" sysfsutils"
> >     >         >     >     >     > IMAGE_INSTALL_append =" tcp-wrappers"
> >     >         >     >     >     > IMAGE_INSTALL_append =" usbutils"
> >     >         >     >     >     > IMAGE_INSTALL_append =" util-macros"
> >     >         >
> >     >         >     --
> >     >         >
> ------------------------------------------------------------
> >     >         >     Gary Thomas                 |  Consulting for the
> >     >         >     MLB Associates              |    Embedded world
> >     >         >
> ------------------------------------------------------------
> >     >         >     --
> >     >         >     _______________________________________________
> >     >         >     yocto mailing list
> >     >         >     yocto@yoctoproject.org <mailto:
> yocto@yoctoproject.org> <mailto:yocto@yoctoproject.org <mailto:
> yocto@yoctoproject.org>> <mailto:yocto@yoctoproject.org
> >     <mailto:yocto@yoctoproject.org> <mailto:yocto@yoctoproject.org<mailto:
> yocto@yoctoproject.org>>>
> >     >         >     https://lists.yoctoproject.org/listinfo/yocto
> >     >         >
> >     >         >
> >     >         >
> >     >         >
> >     >
> >     >         --
> >     >
> ------------------------------------------------------------
> >     >         Gary Thomas                 |  Consulting for the
> >     >         MLB Associates              |    Embedded world
> >     >
> ------------------------------------------------------------
> >     >         --
> >     >         _______________________________________________
> >     >         yocto mailing list
> >     >         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
> >     >         https://lists.yoctoproject.org/listinfo/yocto
> >     >
> >     >
> >     >
> >
> >     --
> >     ------------------------------------------------------------
> >     Gary Thomas                 |  Consulting for the
> >     MLB Associates              |    Embedded world
> >     ------------------------------------------------------------
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

--047d7bdca04600692404f4e61c1a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am re-baking the gumstix-console-image; once I have it u=
p and running I will enable verbose mode and check scripts at shutdown.&nbs=
p;<br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">O=
n Tue, Mar 18, 2014 at 11:43 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 2014-03-18 12:30, Rick Bi=
anchi wrote:<br>
&gt; I rebooted the system with the &quot;reboot&quot; command and then che=
cked the date and time with &quot;date&quot;, it did not hold the system ti=
me and date correctly Sat Jan 1 02:28:44 UTC 2000.<br>
<br>
</div>There seems to be something very wrong with your startup/shutdown scr=
ipts<br>
as both this problem and the networking issue are handled by those scripts.=
<br>
<br>
Did you try turning on the verbose mode? &nbsp;If so, you should see a line=
 like<br>
this during shutdown:<br>
&nbsp; INIT: [2014-03-18 17:33:20.978789236] Running /etc/rc6.d/S25save-rtc=
.sh stop...<br>
and another like these on reboot:<br>
&nbsp; INIT: [1970-01-01 00:00:05.079166199] Running /etc/rcS.d/S40networki=
ng start...<br>
&nbsp; INIT: [1970-01-01 00:00:05.103022145] Running /etc/rcS.d/S55bootmisc=
.sh start...<br>
<div class=3D""><br>
&gt; On Tue, Mar 18, 2014 at 10:55 AM, Gary Thomas &lt;<a href=3D"mailto:ga=
ry@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@ml=
bassoc.com">gary@mlbassoc.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt; &nbsp; &nbsp; On 2014-03-18 11:49, Rick Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &gt; Should have noted, that the date and time reset on =
every reboot?<br>
&gt;<br>
&gt; &nbsp; &nbsp; Unless you have a battery backed up clock device, e.g. D=
allas RTC,<br>
&gt; &nbsp; &nbsp; this will happen. &nbsp;If you shut your Yocto system do=
wn properly, e.g.<br>
&gt; &nbsp; &nbsp; using &#39;# reboot&#39;, it will keep track of when you=
 shut down and then<br>
&gt; &nbsp; &nbsp; set the clock to that time when you reboot. &nbsp;Withou=
t a true RTC, there&#39;s<br>
&gt; &nbsp; &nbsp; little else that it can do unless you run NTP and get th=
e time from some<br>
&gt; &nbsp; &nbsp; external server.<br>
&gt;<br>
</div><div class=3D"">&gt; &nbsp; &nbsp; &gt; On Tue, Mar 18, 2014 at 10:48=
 AM, Rick Bianchi &lt;<a href=3D"mailto:bianchirickkutta@gmail.com">bianchi=
rickkutta@gmail.com</a> &lt;mailto:<a href=3D"mailto:bianchirickkutta@gmail=
.com">bianchirickkutta@gmail.com</a>&gt; &lt;mailto:<a href=3D"mailto:bianc=
hirickkutta@gmail.com">bianchirickkutta@gmail.com</a> &lt;mailto:<a href=3D=
"mailto:bianchirickkutta@gmail.com">bianchirickkutta@gmail.com</a>&gt;&gt;&=
gt; wrote:<br>

&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Gary,<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; I noticed during the make the it was =
complaining about the date being in the future; I checked and sure thing th=
e date and time were bit off, about 14 years. I set it to the<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; correct time &nbsp;with &quot;date --=
set=3D&quot;18 MARCH 2014 10:32:00&quot; and the build completed in under 1=
0 mins.<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt;<br>
</div><div class=3D"">&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; On Fri, Mar 14,=
 2014 at 3:16 PM, Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary=
@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlba=
ssoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbas=
soc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.c=
om</a>&gt;&gt;&gt; wrote:<br>

&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; On 2014-03-14 08:49, Ri=
ck Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; If I have time tod=
ay I will try to reproduce your results. If not, I will get to it first thi=
ng next week and post my result.<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; One thing I forgot to p=
oint out is I used the identical kernel+modules for<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; both setups. &nbsp;I wo=
uld be interested to see if that makes any difference for<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; you. &nbsp;I can&#39;t =
fully test it as my board doesn&#39;t have a Linaro kernel.<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; So there are four combi=
nations - I only tried the first two:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Yocto kernel + Y=
octo rootfs<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Yocto kernel + L=
inaro rootfs<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Linaro kernel + =
Yocto rootfs<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Linaro kernel + =
Linaro rootfs<br>
&gt; &nbsp; &nbsp; &gt;<br>
</div>&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; On Fri, Mar =
14, 2014 at 7:38 AM, Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">g=
ary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@m=
lbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@ml=
bassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbasso=
c.com</a>&gt;&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlba=
ssoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.=
com</a>&gt;<br>

<div class=3D"">&gt; &nbsp; &nbsp; &lt;mailto:<a href=3D"mailto:gary@mlbass=
oc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.co=
m">gary@mlbassoc.com</a>&gt;&gt;&gt;&gt; wrote:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; On 2=
014-03-12 13:11, Rick Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 usbip from /usr/src/kernel/drivers/staging/usbip<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; I fi=
nally managed to make this comparison. &nbsp;I did this by taking my Poky/Y=
octo<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; buil=
t system for a i.MX6 system (ARM Cortex-A9) and replaced the rootfs with<br=
>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; one =
for the Gumstix Overo (linaro). &nbsp;The results were nothing like yours, =
so<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; it&#=
39;s a bit confusing.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; I ac=
tually built an entire Linux kernel - not just the one directory you mentio=
ned.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Poky=
/Yocto - 37 minutes<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Lina=
ro &nbsp; &nbsp; - 48 minutes<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Ther=
e is some flex in these numbers as they were on different [brand] SD cards,=
 etc,<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; but =
I sure did not see the &quot;5 minutes for Linaro vs 24 hours on Yocto&quot=
; that you reported.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Perh=
aps the only thing I did differently was I added the SDK tools to my Yocto =
system<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; usin=
g these meta-packages instead of the list you used.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbs=
p; packagegroup-core-sdk packagegroup-core-standalone-sdk-target<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; You =
might try that to see if it makes any difference.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; n.b.=
 part of what took me so long to get these results is I was trying to run t=
his test<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; on s=
omething closer to your Overo board. &nbsp;I have an older OMAP DM3730 boar=
d here that I<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; trie=
d to do these same steps, but it was unstable and I could not get the Linar=
o based<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; file=
 system to work at all. &nbsp;Very strange. &nbsp;In any case, I think the =
comparison I did get<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; with=
 the i.MX6 is valid.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 On Wed, Mar 12, 2014 at 11:44 AM, Gary Thomas &lt;<a href=3D"mailto:gary@m=
lbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbass=
oc.com">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbasso=
c.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com=
">gary@mlbassoc.com</a>&gt;&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.=
com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">=
gary@mlbassoc.com</a>&gt;<br>

</div><div class=3D"">&gt; &nbsp; &nbsp; &lt;mailto:<a href=3D"mailto:gary@=
mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbas=
soc.com">gary@mlbassoc.com</a>&gt;&gt;&gt; &lt;mailto:<a href=3D"mailto:gar=
y@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlb=
assoc.com">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlba=
ssoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.=
com">gary@mlbassoc.com</a>&gt;&gt;<br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &lt;mailto:<a href=3D"m=
ailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto=
:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:=
gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@=
mlbassoc.com">gary@mlbassoc.com</a>&gt;&gt;&gt;&gt;&gt; wrote:<br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; On 2014-03-12 10:09, Rick Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; I completely agree with regards to the comparison, but =
I have compiled the same exact source on the same target (arm) and it only =
took 5 minutes when running the Linaro image.<br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; To clarify, the only difference is the build, one is Li=
naro (took 5 minutes to compile source on the target) and the other Yocto (=
took almost 24 hours to compile source on the target).<br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; Sorry, I missed that this was on the same hardware.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; What are you building? &nbsp;I&#39;m going to try and duplic=
ate this here<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; on hardware I have that&#39;s quite similar to your Gumstix =
board.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; Is there something that I am missing?<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; On Wed, Mar 12, 2014 at 8:28 AM, Gary Thomas &lt;<a hre=
f=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"=
mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"m=
ailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto=
:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;&gt; &lt;mailto:<a href=3D"mai=
lto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:g=
ary@mlbassoc.com">gary@mlbassoc.com</a>&gt;<br>

&gt; &nbsp; &nbsp; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlb=
assoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc=
.com</a>&gt;&gt;&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@m=
lbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbass=
oc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbasso=
c.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com=
</a>&gt;&gt;<br>

</div>&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &lt;mailto:<a hre=
f=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"=
mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"m=
ailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto=
:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;&gt;&gt;&gt; &lt;mailto:<a hre=
f=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"=
mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;<br>

<div><div class=3D"h5">&gt; &nbsp; &nbsp; &lt;mailto:<a href=3D"mailto:gary=
@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlba=
ssoc.com">gary@mlbassoc.com</a>&gt;&gt; &lt;mailto:<a href=3D"mailto:gary@m=
lbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbass=
oc.com">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbasso=
c.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com=
">gary@mlbassoc.com</a>&gt;&gt;&gt;<br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &lt;=
mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailt=
o:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; &lt;mailto=
:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a h=
ref=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;&gt; &lt;mailto:<=
a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a hre=
f=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;<br>

&gt; &nbsp; &nbsp; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlb=
assoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc=
.com</a>&gt;&gt;&gt;&gt;&gt;&gt; wrote:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; On 2014-03-12 09:15, Rick Bianchi wrote:<=
br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; I have the gumstix-console-image wit=
h the added packages below. When I compile on the target is take a very lon=
g time for it to complete, over 24 hours. I have compiled the same<br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; code on the same target, but running=
 Linaro image, and it only takes a few minutes. Is there another recipe tha=
t I need to add to the build to speed up compiling?<br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; Doubtful. &nbsp;The reason your build on =
the target takes so long is merely<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; one of horsepower - that little ARM proce=
ssor just doesn&#39;t have it, especially<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; if you are comparing it to a typical desk=
top environment.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; EXTRA_IMAGE_FEATURES +=3D &quot;dev-=
pkgs&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; autoc=
onf&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; autof=
s&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; autom=
ake&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; ccach=
e&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; chkco=
nfig&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; dbus-=
glib&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; gcc&q=
uot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; glib-=
2.0&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; glib-=
networking&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; glibm=
m&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; packa=
gegroup-core-buildessential&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; pciut=
ils&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; pkgco=
nfig&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; pytho=
n-scons&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; syste=
md-compat-units&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; sysfs=
utils&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; tcp-w=
rappers&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; usbut=
ils&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; util-=
macros&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; --<b=
r>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; ----=
--------------------------------------------------------<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Gary=
 Thomas &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp;Con=
sulting for the<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; MLB =
Associates &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp;E=
mbedded world<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; ----=
--------------------------------------------------------<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; --<b=
r>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; ____=
___________________________________________<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; yoct=
o mailing list<br>
</div></div>&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp;=
 &nbsp; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a=
> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.o=
rg</a>&gt; &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org">yocto@=
yoctoproject.org</a>&gt;&gt; &lt;mailto:<a href=3D"mailto:yocto@yoctoprojec=
t.org">yocto@yoctoproject.org</a><br>

<div><div class=3D"h5">&gt; &nbsp; &nbsp; &lt;mailto:<a href=3D"mailto:yoct=
o@yoctoproject.org">yocto@yoctoproject.org</a>&gt; &lt;mailto:<a href=3D"ma=
ilto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> &lt;mailto:<a href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt;&gt;&gt;<b=
r>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; <a h=
ref=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">htt=
ps://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; --<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; -----------------------=
-------------------------------------<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; Gary Thomas &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp;Consulting for the<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; MLB Associates &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp;Embedded world<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; -----------------------=
-------------------------------------<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; --<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; _______________________=
________________________<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; yocto mailing list<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"mailto:yocto=
@yoctoproject.org">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:=
yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt; &lt;mailto:<a href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> &lt;mailto:<a=
 href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt;&gt;<=
br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"https://list=
s.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctopro=
ject.org/listinfo/yocto</a><br>
&gt; &nbsp; &nbsp; &gt;<br>
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
&gt;<br>
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
</div></div><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targe=
t=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--047d7bdca04600692404f4e61c1a--
