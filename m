Return-Path: <jkridner@gmail.com>
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF0F8E00715
	for <yocto@yoctoproject.org>; Sun,  7 Jul 2013 12:36:34 -0700 (PDT)
Received: by mail-ie0-f182.google.com with SMTP id s9so8623443iec.27
	for <yocto@yoctoproject.org>; Sun, 07 Jul 2013 12:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=MmCfRCbdXpWjmCXh+5EKkA7xuCFXClxxUK+5/FAkqSs=;
	b=CkNdIorswDcJPxnEz0LT9M3o601hjDgC7udDOqVfs7d/8lXcruZigc2Wudgff/SHSO
	63To4hm26JcfGyoAzRvHpFc/JIHttKJIKY4dR4TeZR2IaOhW+YfbODt1ZbQHgG18tnOL
	oncX0Bzyu9IV4Wz1rQ3nn8NpiQH2jJ3UdMjHDsSUpXAl+PbT9P52jyWKfgXxso6WGP8H
	abU96Z5Bf5k6cZ+tW/zcVywSW2xAjH/DqTPeYSBu82IPrLB4oK6MEL02bz1/bAYwEkHo
	USDL1uLyEJJg1Mk41o7Z3udQX5BlTBAEJ6xOxyia/CF8FfCSFuEceTM/KhtZpRKx9dp4
	EXvw==
MIME-Version: 1.0
X-Received: by 10.50.9.8 with SMTP id v8mr21852414iga.53.1373225793485; Sun,
	07 Jul 2013 12:36:33 -0700 (PDT)
Received: by 10.64.39.231 with HTTP; Sun, 7 Jul 2013 12:36:33 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1307071507120.30670@oneiric>
References: <alpine.DEB.2.02.1307071507120.30670@oneiric>
Date: Sun, 7 Jul 2013 15:36:33 -0400
Message-ID: <CA+T6QP=v7YKGVqq+b_ha8xe+MWwX=xCqQQeA9gmiLvajNOnLVQ@mail.gmail.com>
From: Jason Kridner <jkridner@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Mailman-Approved-At: Sun, 07 Jul 2013 12:53:26 -0700
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: possible variations on building bootable SD card for BBB?
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
X-List-Received-Date: Sun, 07 Jul 2013 19:36:34 -0000
Content-Type: multipart/alternative; boundary=001a11c31eec9e04af04e0f10b48

--001a11c31eec9e04af04e0f10b48
Content-Type: text/plain; charset=ISO-8859-1

On Sunday, July 7, 2013, Robert P. J. Day wrote:

>
>   i'm currently working on (and documenting) the variations for
> building a minimal, bootable SD card for the beaglebone black (BBB)
> for upcoming embedded linux classes, so i'm curious as to what others
> are doing.
>
>   for the last while, i've been using the layers:
>
>   * oe-core (naturally)
>   * meta-oe
>   * meta-beagleboard
>
> with which i could generate all the appropriate artifacts and manually
> populate an SD card.
>
>   recent perusal suggests that i should be using the "official"
> meta-ti layer rather than meta-beagleboard but if i do that and try to
> populate a formatted SD card the same way, i don't even get to the
> u-boot prompt.
>
>   so -- short form of the question -- how many ways are there to build
> a bootable SD card for the BBB using different layers? which are
> recommended? i'm after just enough of a system to act as the basis for
> some classes, so i'm currently building just a core-image-minimal, but
> i'm interested in what others are doing, thanks.


I think different methods would be recommended by different people working
on different goals. I personally have only built using meta-beagleboard
with an Angstrom layer stack, but I understand meta-ti should work as
minimal as you've shown as well as with Arago. There was recently a new TI
SDK release with Black support.


>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <javascript:;>
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c31eec9e04af04e0f10b48
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>On Sunday, July 7, 2013, Robert P. J. Day  wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><br>
=A0 i&#39;m currently working on (and documenting) the variations for<br>
building a minimal, bootable SD card for the beaglebone black (BBB)<br>
for upcoming embedded linux classes, so i&#39;m curious as to what others<b=
r>
are doing.<br>
<br>
=A0 for the last while, i&#39;ve been using the layers:<br>
<br>
=A0 * oe-core (naturally)<br>
=A0 * meta-oe<br>
=A0 * meta-beagleboard<br>
<br>
with which i could generate all the appropriate artifacts and manually<br>
populate an SD card.<br>
<br>
=A0 recent perusal suggests that i should be using the &quot;official&quot;=
<br>
meta-ti layer rather than meta-beagleboard but if i do that and try to<br>
populate a formatted SD card the same way, i don&#39;t even get to the<br>
u-boot prompt.<br>
<br>
=A0 so -- short form of the question -- how many ways are there to build<br=
>
a bootable SD card for the BBB using different layers? which are<br>
recommended? i&#39;m after just enough of a system to act as the basis for<=
br>
some classes, so i&#39;m currently building just a core-image-minimal, but<=
br>
i&#39;m interested in what others are doing, thanks.</blockquote><div><br><=
/div><div>I think different methods would be recommended by different peopl=
e working on different goals. I personally have only built using meta-beagl=
eboard with an Angstrom layer stack, but I understand meta-ti should work a=
s minimal as you&#39;ve shown as well as with Arago. There was recently a n=
ew TI SDK release with Black support.=A0<span></span></div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">
<br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http://crashcour=
se.ca" target=3D"_blank">http://crashcourse.ca</a><br>
<br>
Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">http://=
twitter.com/rpjday</a><br>
LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a hr=
ef=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.linkedi=
n.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"javascript:;" onclick=3D"_e(event, &#39;cvml&#39;, &#39;yocto@yo=
ctoproject.org&#39;)">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote>

--001a11c31eec9e04af04e0f10b48--
