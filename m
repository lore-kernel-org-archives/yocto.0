Return-Path: <anoojgopi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92503E0076B; Tue, 26 Aug 2014 04:24:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (anoojgopi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09701E00566
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 04:24:05 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id n3so5015694wiv.4
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 04:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=OHsNeJe99NuSfE1kjdVejH1Zu5cO6yhL/Isatbnz0yA=;
	b=1ALBdg9ZHfplzJcX/Xo8gvZt+pctD5zL+xjJJ6SAV+3raj1aQRgaehglAg83OSIIbx
	Vycx/xETG3Go2Oukkjo/lKFWbieczugf36//WnHA1kNQfRPS1bqkpEGpFeAiUkOiS9yw
	Q/bjwPfomQo0LtVTpUmI9mTG+LBtEz8jJOnurwUEYr4i7S+ObLmJD7PCMuUWnAOU2urS
	Xsd3NIx3oIMALCa7ExSVNlK+Ul9jeoP6fWiXNLpnp7OqLiye7j00VcBe6n246k4QF/O9
	e63hnDqoa0rWqlBVK08g8x1vJ/t7KDP6v2safoievBkqawiq6beX0AWGLf41euB34SUt
	uKHA==
MIME-Version: 1.0
X-Received: by 10.195.13.2 with SMTP id eu2mr15494496wjd.88.1409052244546;
	Tue, 26 Aug 2014 04:24:04 -0700 (PDT)
Received: by 10.194.19.193 with HTTP; Tue, 26 Aug 2014 04:24:04 -0700 (PDT)
In-Reply-To: <20140826002710.GA18989@haswell>
References: <1408933563.20144.YahooMailNeo@web140706.mail.bf1.yahoo.com>
	<CA+gsK-qz-D_rfJD=kWif5=T0uHOyD8it0Hu7tOJqAsSY63n=QQ@mail.gmail.com>
	<20140826002710.GA18989@haswell>
Date: Tue, 26 Aug 2014 13:24:04 +0200
Message-ID: <CALkREYCzdk7v7ioodxBmtE-bewf0dzu1KQkYzUOsvy2h7P+RiQ@mail.gmail.com>
From: Anooj Gopi <anoojgopi@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: best bet for WiFi Yocto experience?
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
X-List-Received-Date: Tue, 26 Aug 2014 11:24:10 -0000
Content-Type: multipart/alternative; boundary=047d7bd91b48819b720501868a1a

--047d7bd91b48819b720501868a1a
Content-Type: text/plain; charset=UTF-8

http://www.udoo.org/downloads/ has one unofficial version with yocto.


On Tue, Aug 26, 2014 at 2:27 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On 14-08-25 13:53:01, Rudolf Streif wrote:
> > Hi Pete,
> >
> >
> > Please provide a recommendation for a low cost, out of the box WiFi
> > > (802.11n) experience using Yocto.
> > >
> > > Are you looking for a board that has WiFi on board? The Wandboard (
> > http://www.wandboard.org/) or the Cubietruck (
> >
> http://www.cubietruck.com/products/cubietruck-cubieboard3-cortex-a7-dual-core-2gb-ram-8gb-flash-with-wifi-bt-1
> )
> > have that for example.
>
> a bit expensive but well supported in OE/YP universe
> https://store.gumstix.com/index.php/products/526/
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7bd91b48819b720501868a1a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><a href=3D"http://www.udoo.org/downloads/">http://www.udoo=
.org/downloads/</a> has one unofficial version with yocto.<br></div><div cl=
ass=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Aug 26, 2014=
 at 2:27 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmai=
l.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 14-08-25 13:53:01, Rudolf=
 Streif wrote:<br>
&gt; Hi Pete,<br>
&gt;<br>
&gt;<br>
&gt; Please provide a recommendation for a low cost, out of the box WiFi<br=
>
&gt; &gt; (802.11n) experience using Yocto.<br>
&gt; &gt;<br>
&gt; &gt; Are you looking for a board that has WiFi on board? The Wandboard=
 (<br>
&gt; <a href=3D"http://www.wandboard.org/" target=3D"_blank">http://www.wan=
dboard.org/</a>) or the Cubietruck (<br>
&gt; <a href=3D"http://www.cubietruck.com/products/cubietruck-cubieboard3-c=
ortex-a7-dual-core-2gb-ram-8gb-flash-with-wifi-bt-1" target=3D"_blank">http=
://www.cubietruck.com/products/cubietruck-cubieboard3-cortex-a7-dual-core-2=
gb-ram-8gb-flash-with-wifi-bt-1</a>)<br>

&gt; have that for example.<br>
<br>
</div>a bit expensive but well supported in OE/YP universe<br>
<a href=3D"https://store.gumstix.com/index.php/products/526/" target=3D"_bl=
ank">https://store.gumstix.com/index.php/products/526/</a><br>
<div class=3D"HOEnZb"><div class=3D"h5">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--047d7bd91b48819b720501868a1a--
