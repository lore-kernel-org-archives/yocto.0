Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 523AAE00D26; Thu, 16 Jun 2016 06:54:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3DAFE00D15
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 06:54:19 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id d132so70020107oig.1
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 06:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qL6L5VX0ikWwYPRyeoHyaHrUY6FH32Gy78x3GX+37Gw=;
	b=aSmtRj3i0jpA6TUbhAuMWxZyONl4ggMraBzc0tILPqHpcULZroLSJnCWYdK0e5irUw
	L+3iFvjd4413vp3owyoIgl6o/JC1cikBZe/TyQw1R0F/ts73BojehIuDaon+dDl7mIL6
	RuEOpyMZTyel1dKNrQIfCY4Jgqkh1QeMIJNs+R1/he2Di2Sd7kbBvUXI0nfA4OumXOeN
	5r3pK3IGsn8bE/RjeKUexhGVz4Pc5S9EoRMhR/QMJTAfXgM6SAJWxgku40cQtoMyUZ/7
	Lra1UzwXbknmUgECTnNxRplWZLTrO7aScyfxjUfa+LvUBRfVYBp0xlE50ZgUn3xb/LY6
	GUuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qL6L5VX0ikWwYPRyeoHyaHrUY6FH32Gy78x3GX+37Gw=;
	b=FB4U1QSW5GD3luvga3yOePl9zAHHPN/P9o/Dd4+2ELCv6bqJ7rMaRgOI8v7/ZKrbZ3
	pyaBwqJ2aysfmGJGhqjSt4ZFcPkWRvcuP95NfKECEKAe9MMIOqbgKFiz+UJ022QD+I/y
	HzGCSmP0fQ6Q6ya7NisBh0SUaxKBo/EmW+jeABu+qktIjMVfD0l27X8YkSUnkjLn4t7Q
	5uYFkUMODbZHFjLNUJELsrASiUIs3eXOIgXXbBCgKwPbuqJtb8AbNz+DaIjmN5ffQJWk
	Ss46lOCPDB3koNlH0nDey+e/YZt8VdAyFYYVapeEcgTPJGHN4ir+LWRZELV2I5maSE1E
	Jo+Q==
X-Gm-Message-State: ALyK8tJvBx0Z3C8+NxCCE8qQzdgGJHZDgkcVy2nvqI+ZqQjr5zHUNuvnS14yFnGpFjtNYnXghSE6dojwvNzft77c
X-Received: by 10.202.56.70 with SMTP id f67mr2161233oia.154.1466085258662;
	Thu, 16 Jun 2016 06:54:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.61.5 with HTTP; Thu, 16 Jun 2016 06:53:49 -0700 (PDT)
In-Reply-To: <57629F4A.4000403@mlbassoc.com>
References: <57629F4A.4000403@mlbassoc.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Thu, 16 Jun 2016 16:53:49 +0300
Message-ID: <CAHiDW_FyYABS991_rp2jBUNSE8dYOAQn-5_wOvY+AxudwCcrOQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Switch to GTK+3
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
X-List-Received-Date: Thu, 16 Jun 2016 13:54:21 -0000
Content-Type: multipart/alternative; boundary=001a113cc33e0db8d5053565938b

--001a113cc33e0db8d5053565938b
Content-Type: text/plain; charset=UTF-8

On 16 June 2016 at 15:44, Gary Thomas <gary@mlbassoc.com> wrote:
>
> I just tried a build from the latest Poky/Yocto master (2a85038dd)
> Overall, I think the switch to GTK+3 is an improvement, but I have
> a number of [usability] questions:

It's a tricky upgrade, essentially upgrading a major part of an operating
system from a version five years old version to a current one. I am sorry
for the inconvenience.

> * I built firefox from meta-browser and noticed that on my touch only
> device, it does not automatically pop-up the keyboard.  However, epiphany
> does.  I've only done a little testing but that's what I observed.  Not
> having this happen "on demand" (i.e. when a text field has the focus)
> will make using a full screen application impossible on this hardware.

I assume this is still the Gtk2 firefox? There is a Gtk3 version released
recently I believe.

Before the recent changes, Gtk+2 applications were the only thing supported
by the virtual keyboard.

Now, the default configuration is to build only support for Gtk+3 but it is
possible to support also Gtk+2 by adding "gtk2-im" into the
matchbox-keyboard PACKAGECONFIG. This is not done by default to prevent the
keyboard from bringing gtk+ into the image if nothing else requires it.

> * Also on firefox, I can't seem to get the vertical scrollbar to work.
> Again, with epiphany it at least works.

This is slightly surprising if firefox is a gtk+2 application. The only
thing that really changed with the GTK2 stack is the theme... but the
current one (gnome-theme-adwaita from gnome-themes-standard) is the GNOME
default so I'd expect it work. I have no suggestions here, Sorry.

> * The system also doesn't seem to play very nice with my GPU enhanced
> i.MX6 and causes the SoC to overheat (didn't happen with GTK+2).  Makes
> it rather unusable as well.

Eek. That sounds like a driver problem. The new Gtk is more demanding on
graphics drivers but not by a huge difference.

> * gtk-play ran my 1GB system out of memory, just starting up :-(  This
> caused a complete system lockup & I could not even restart the X server.
> This application also seemed to run quite well with GTK+2

gst-player did go through some refactoring (the library parts are now in
gst-plugins-bad) so new bugs are not impossible. It's unlikely that the Gtk
upgrade itself would have this kind of effects, but maybe this is related
to the previous problem -- wherever the root cause is.

> * There also seem to be a continuous stream of messages like these on the
console:
>
>   GLib-GIO-Message: Using the 'memory' GSettings backend.  Your settings
will not be saved or shared with other applications.
>   Gtk-Message: GtkDialog mapped without a transient parent. This is
discouraged.

The messages as such are not problematic, assuming there's no flood of them.

GSettings is still something we might want to bring in (as a replacement
for GConf which is deprecated), but that means a little porting work on
matchbox components. The GtkDialog message is probably from gtk-play and
should not be an issue.

Hope this helps,
  Jussi



> I know that these firefox vs. epiphany vs. chome vs. ... questions
> are not really the responsibility of Yocto or OE-core, but it does
> trickle down to those of us trying to use this framework.
>
> Many thanks for any thoughts
>
> n.b. I was torn what mailing list to use for this - it's tightly
> tied to OE-core, but isn't really about patches or changes, more
> about philosophy.  If the OE-core list is more appropriate, please
> move the replies there.
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

--001a113cc33e0db8d5053565938b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 16 June 2016 at 15:44, Gary Thomas &lt;<a href=3D"mailt=
o:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; wrote:<br>&gt;<br>&gt; I jus=
t tried a build from the latest Poky/Yocto master (2a85038dd)<br>&gt; Overa=
ll, I think the switch to GTK+3 is an improvement, but I have<br>&gt; a num=
ber of [usability] questions:<br><br>It&#39;s a tricky upgrade, essentially=
 upgrading a major part of an operating system from a version five years ol=
d version to a current one. I am sorry for the inconvenience.<div><br>&gt; =
* I built firefox from meta-browser and noticed that on my touch only<br>&g=
t; device, it does not automatically pop-up the keyboard.=C2=A0 However, ep=
iphany<br>&gt; does.=C2=A0 I&#39;ve only done a little testing but that&#39=
;s what I observed.=C2=A0 Not<br>&gt; having this happen &quot;on demand&qu=
ot; (i.e. when a text field has the focus)<br>&gt; will make using a full s=
creen application impossible on this hardware.<br><br>I assume this is stil=
l the Gtk2 firefox? There is a Gtk3 version released recently I believe.<br=
><br>Before the recent changes, Gtk+2 applications were the only thing supp=
orted by the virtual keyboard.<div><br></div><div>Now, the default configur=
ation is to build only support for Gtk+3 but it is possible to support also=
 Gtk+2 by adding &quot;gtk2-im&quot; into the matchbox-keyboard PACKAGECONF=
IG. This is not done by default to prevent the keyboard from bringing gtk+ =
into the image if nothing else requires it.=C2=A0</div><div><br>&gt; * Also=
 on firefox, I can&#39;t seem to get the vertical scrollbar to work.<br>&gt=
; Again, with epiphany it at least works.<br><br>This is slightly surprisin=
g if firefox is a gtk+2 application. The only thing that really changed wit=
h the GTK2 stack is the theme... but the current one (gnome-theme-adwaita f=
rom gnome-themes-standard) is the GNOME default so I&#39;d expect it work. =
I have no suggestions here, Sorry.<br><br>&gt; * The system also doesn&#39;=
t seem to play very nice with my GPU enhanced<br>&gt; i.MX6 and causes the =
SoC to overheat (didn&#39;t happen with GTK+2).=C2=A0 Makes<br>&gt; it rath=
er unusable as well.<br><br>Eek. That sounds like a driver problem. The new=
 Gtk is more demanding on graphics drivers but not by a huge difference.<br=
><br>&gt; * gtk-play ran my 1GB system out of memory, just starting up :-( =
=C2=A0This<br>&gt; caused a complete system lockup &amp; I could not even r=
estart the X server.<br>&gt; This application also seemed to run quite well=
 with GTK+2<br><br>gst-player did go through some refactoring (the library =
parts are now in gst-plugins-bad) so new bugs are not impossible. It&#39;s =
unlikely that the Gtk upgrade itself would have this kind of effects, but m=
aybe this is related to the previous problem -- wherever the root cause is.=
</div><div><br></div><div>&gt; * There also seem to be a continuous stream =
of messages like these on the console:<br>&gt;<br>&gt; =C2=A0 GLib-GIO-Mess=
age: Using the &#39;memory&#39; GSettings backend.=C2=A0 Your settings will=
 not be saved or shared with other applications.<br>&gt; =C2=A0 Gtk-Message=
: GtkDialog mapped without a transient parent. This is discouraged.<br><br>=
The messages as such are not problematic, assuming there&#39;s no flood of =
them.</div><div><br></div><div>GSettings is still something we might want t=
o bring in (as a replacement for GConf which is deprecated), but that means=
 a little porting work on matchbox components. The GtkDialog message is pro=
bably from gtk-play and should not be an issue.<br><br></div><div>Hope this=
 helps,</div><div>=C2=A0 Jussi</div><div><br></div><div><br></div><div><br>=
</div><div>&gt; I know that these firefox vs. epiphany vs. chome vs. ... qu=
estions<br>&gt; are not really the responsibility of Yocto or OE-core, but =
it does<br>&gt; trickle down to those of us trying to use this framework.<b=
r>&gt;<br>&gt; Many thanks for any thoughts<br>&gt;<br>&gt; n.b. I was torn=
 what mailing list to use for this - it&#39;s tightly<br>&gt; tied to OE-co=
re, but isn&#39;t really about patches or changes, more<br>&gt; about philo=
sophy.=C2=A0 If the OE-core list is more appropriate, please<br>&gt; move t=
he replies there.<br>&gt;<br>&gt; --<br>&gt; ------------------------------=
------------------------------<br>&gt; Gary Thomas =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0Consulting for the<br>&gt; MLB Asso=
ciates =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0Embed=
ded world<br>&gt; ---------------------------------------------------------=
---<br>&gt; --<br>&gt; _______________________________________________<br>&=
gt; yocto mailing list<br>&gt; <a href=3D"mailto:yocto@yoctoproject.org">yo=
cto@yoctoproject.org</a><br>&gt; <a href=3D"https://lists.yoctoproject.org/=
listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></div></di=
v></div>

--001a113cc33e0db8d5053565938b--
