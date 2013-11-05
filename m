Return-Path: <sleepylight@jive-turkey.net>
Received: from mail-ea0-f179.google.com (mail-ea0-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72939E01716
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 17:35:42 -0800 (PST)
Received: by mail-ea0-f179.google.com with SMTP id q15so243120ead.10
	for <yocto@yoctoproject.org>; Mon, 04 Nov 2013 17:35:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:cc:content-type;
	bh=iX4LyY8MU385owG5sDsFZJAnM1o+jQTZfl29ibEsk8I=;
	b=JgNz+hvaiSSEnlXyMw0bpxNnvRvbBEeslINGBtpVU8Hb36WtDqash64GYmYA7TXu8D
	lh/YfXsg+L98qJq6hqBv/NcCNk/TFdUI2Sp4+eotdTfuJtCSaalYUqGGzetfCczKnMep
	B0DW1PyoKGDC5mQ6A1UT1oeJMr/B7j+kXKq/u3zU6TskNnpQEHYjuhdS9t7ABAmCMGDe
	ZrgM2o9Ev3xBNyI6raOdL1WEkDTbcbYoyrzvd7qTM6E15i9+xCoZEpXVaBVGvWJWiiPE
	tZpXMpjDwW+2wMOQxQ0NhFoQP7WsVAYoGW9akhR4gtx87FY9dRF/lMLhPsXkYzNuTno0
	7ZnA==
X-Gm-Message-State: ALoCoQnW+1PsRg7JPqexqKgDrtz2xI5aHuHQNu2OvlEs8WVJIUjnDPQAM656Oex5eH25UdTSH5Tr
MIME-Version: 1.0
X-Received: by 10.14.4.1 with SMTP id 1mr21484735eei.21.1383615340611; Mon, 04
	Nov 2013 17:35:40 -0800 (PST)
Received: by 10.223.132.7 with HTTP; Mon, 4 Nov 2013 17:35:40 -0800 (PST)
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153B9040F9E@pluto.melinkcorp.local>
References: <CADi-vsyk+mZ3qnYKVW13dQoFzQpGokSNBT5WitOvqBsGJMx+Dw@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE40153B9040F9E@pluto.melinkcorp.local>
Date: Mon, 4 Nov 2013 20:35:40 -0500
Message-ID: <CADi-vszR4qQ8V1ueVDPOQs8w0MhNyEhTHfw7BFNxi009QMFU=g@mail.gmail.com>
From: Maxwell Bottiger <sleepylight@jive-turkey.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 2.6.39 kernel and poky
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
X-List-Received-Date: Tue, 05 Nov 2013 01:35:45 -0000
Content-Type: multipart/alternative; boundary=047d7b66f285e21ea304ea640ca0

--047d7b66f285e21ea304ea640ca0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Thank you all for the replies!  I nearly have the 2.6 kernel built and I'll
fork the meta-atmel for the 3.9 kernel.  I'll post my final bb recipe when
it's finished.

-Max


On Mon, Nov 4, 2013 at 10:09 AM, Bryan Evenson <bevenson@melinkcorp.com>wro=
te:

> Maxwell,
>
>
>
> Atmel has a Yocto meta layer over at
> http://www.github.com/linux4sam/meta-atmel.  Their layer was originally
> focused on the SAMA5 chipset, but has been since modified to include the
> SAM9x5 chipset.  I have a fork over at
> http://www.github.com/evensonbryan/meta-atmel that I=92ve been using for =
my
> SAM9G25 board.  There is one kernel recipe that is using Atmel=92s 3.6.9
> kernel and another that uses Atmel=92s 3.9 kernel.  The 3.6.9 kernel in m=
y
> testing is the most stable and has the highest level of peripheral suppor=
t,
> but I=92ve been able to get both to run on the SAM9G25 evaluation board a=
nd
> our custom hardware.  Feel free to fork my layer or Atmel=92s layer and a=
dd
> support for the 2.6.39 kernel.  Atmel has been accepting pull requests on
> additional features.
>
>
>
> -Bryan Evenson
>
>
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Maxwell Bottiger
> *Sent:* Friday, November 01, 2013 11:22 AM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] 2.6.39 kernel and poky
>
>
>
> I have a custom kernel and drivers I built for an Atmel AT91SAM9x5ek
> system on a chip, and I'd like to use them with yocto to build a
> distribution.
>
> The original documentation, support CD, etc are all based around an open
> embedded build from 2011, which doesn't seem to work any longer.  Yocto
> looks like a great alternative, but wants to build the 3.10 kernel, which=
 I
> don't think supports this SoC any longer.  So, is there a straight forwar=
d
> method of building a standard Poky root filesystem, but with a custom
> recipe for the 2.6.39 kernel instead of the stock one?
>
> Thanks for your help.
>

--047d7b66f285e21ea304ea640ca0
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you all for the replies!=A0 I nearly have the 2=
.6 kernel built and I&#39;ll fork the meta-atmel for the 3.9 kernel.=A0 I&#=
39;ll post my final bb recipe when it&#39;s finished.<br><br></div>-Max<br>=
</div>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon, Nov 4=
, 2013 at 10:09 AM, Bryan Evenson <span dir=3D"ltr">&lt;<a href=3D"mailto:b=
evenson@melinkcorp.com" target=3D"_blank">bevenson@melinkcorp.com</a>&gt;</=
span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div link=3D"blue" vlink=3D"purple" lang=3D"=
EN-US"><div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Maxwell,<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Atmel has a Yocto meta=
 layer over at <a href=3D"http://www.github.com/linux4sam/meta-atmel" targe=
t=3D"_blank">http://www.github.com/linux4sam/meta-atmel</a>.=A0 Their layer=
 was originally focused on the SAMA5 chipset, but has been since modified t=
o include the SAM9x5 chipset.=A0 I have a fork over at <a href=3D"http://ww=
w.github.com/evensonbryan/meta-atmel" target=3D"_blank">http://www.github.c=
om/evensonbryan/meta-atmel</a> that I=92ve been using for my SAM9G25 board.=
=A0 There is one kernel recipe that is using Atmel=92s 3.6.9 kernel and ano=
ther that uses Atmel=92s 3.9 kernel.=A0 The 3.6.9 kernel in my testing is t=
he most stable and has the highest level of peripheral support, but I=92ve =
been able to get both to run on the SAM9G25 evaluation board and our custom=
 hardware.=A0 Feel free to fork my layer or Atmel=92s layer and add support=
 for the 2.6.39 kernel.=A0 Atmel has been accepting pull requests on additi=
onal features.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">-Bryan Evenson<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0=
in 4.0pt">
<div><div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt=
 0in 0in 0in"><p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&qu=
ot;"> <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">y=
octo-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@y=
octoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>] <b>O=
n Behalf Of </b>Maxwell Bottiger<br>
<b>Sent:</b> Friday, November 01, 2013 11:22 AM<br><b>To:</b> <a href=3D"ma=
ilto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><b=
r><b>Subject:</b> [yocto] 2.6.39 kernel and poky<u></u><u></u></span></p></=
div>
</div><div class=3D"im"><p class=3D"MsoNormal"><u></u>=A0<u></u></p><div><d=
iv><div><p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">I have a cust=
om kernel and drivers I built for an Atmel AT91SAM9x5ek system on a chip, a=
nd I&#39;d like to use them with yocto to build a distribution.<u></u><u></=
u></p>
</div><p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">The original do=
cumentation, support CD, etc are all based around an open embedded build fr=
om 2011, which doesn&#39;t seem to work any longer.=A0 Yocto looks like a g=
reat alternative, but wants to build the 3.10 kernel, which I don&#39;t thi=
nk supports this SoC any longer.=A0 So, is there a straight forward method =
of building a standard Poky root filesystem, but with a custom recipe for t=
he 2.6.39 kernel instead of the stock one?<u></u><u></u></p>
</div><p class=3D"MsoNormal">Thanks for your help.<u></u><u></u></p></div><=
/div></div></div></div></blockquote></div><br></div>

--047d7b66f285e21ea304ea640ca0--
