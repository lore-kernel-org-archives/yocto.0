Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CDE6E020CE; Sun, 25 Jan 2015 14:35:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35961E01E93
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 14:35:35 -0800 (PST)
Received: by mail-wi0-f170.google.com with SMTP id em10so3003057wid.1
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 14:35:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=dZpVVa4X4GDgHaWL40sHYHKmB2EElXj1mSmeZcZBDHo=;
	b=dyWsbzl3SFT4uI6ALIqfHuB++ylq9g2ooVCQvpTdnC0HoGIpu+YPcVhpV7Dzyf/IS1
	amPgiKqReHr+4UuyZFkqrXRFrdiZ9p/Mp3FTwG9ALxv7hW4jrvmMq9+3l/un/zQNisYR
	Zd9x+MThD1SPxEb2R/PCLKIVZbNAOvaZXw87yB+8JWyTy2Uikj4/v/9O3zLZfk5/Hx6a
	llxb7DF503ZMipNo0d/I/AyYrztsoqZdian4xeAPOe3lwLiD5tEy8bLlWdep13irySQ0
	YBFeJ+cU5QGdg0r4uTwATqroFXgeCHY2BId7nV3lRQysPAeL52K2ar2EVKOtHKyWtwTA
	tHWw==
X-Gm-Message-State: ALoCoQlX3FPZG3tEj+Vv+OO5rulTKUTpNV2kHUyfppH9vv+tF3gqF/DKA2evGc44t63ZpFkpz67J
X-Received: by 10.180.103.201 with SMTP id fy9mr17711292wib.31.1422225334525; 
	Sun, 25 Jan 2015 14:35:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.107.132 with HTTP; Sun, 25 Jan 2015 14:35:14 -0800 (PST)
X-Originating-IP: [109.100.140.128]
In-Reply-To: <20141218154555.GE10057@localhost.localdomain>
References: <20141218.082256.838554820950505606.petter@gustad.com>
	<20141218091228.GA10057@localhost.localdomain>
	<20141218.164239.741521888848437712.petter@gustad.com>
	<20141218154555.GE10057@localhost.localdomain>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 26 Jan 2015 00:35:14 +0200
Message-ID: <CAK18fxHW3K+MEejyO4ZCzRu2O+XuOrEVM1hVH3Hz9thJ1tkoEg@mail.gmail.com>
To: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Image will halt soon after boot
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
X-List-Received-Date: Sun, 25 Jan 2015 22:35:38 -0000
Content-Type: multipart/alternative; boundary=14dae9cc90b8dafb44050d81a3f3

--14dae9cc90b8dafb44050d81a3f3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dizzy branch on its way. Maintainer received the ping.

On Thu, Dec 18, 2014 at 5:45 PM, Maciej Borzecki <
maciej.borzecki@open-rnd.pl> wrote:

> On 12/18 16:42, Petter Gustad wrote:
> > From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
> > Subject: Re: [yocto] [meta-raspberrypi] Image will halt soon after boot
> > Date: Thu, 18 Dec 2014 10:12:28 +0100
> >
> > > Have you seen the same on 1.7 or current master? I'm using a number o=
f
> > > Yocto built images (sone on 1.7.x, other mostly follow poky +
> > > meta-raspberrypi master branches) and things seem to work just fine.
> >
> > Thanks! I just tried the master branch as given below and it works
> > fine. I will switch to a more recent release. However, I can't seem to
> > find a dizzy branch in meta-raspberrypi?
>
> It seems that thee is no dizzy branch at all in meta-raspberrypi. You
> might want to ping the layer's maintainers about that.
>
> --
> Maciej Borz=C4=99cki
> Senior Software Developer at Open-RnD Sp. z o.o., Poland
> www.open-rnd.pl
> mobile: +48 889 117 365, fax: +48 42 657 9079
>
>
> Niniejsza wiadomo=C5=9B=C4=87 wraz z za=C5=82=C4=85cznikami mo=C5=BCe
> zawiera=C4=87 chronione prawem lub poufne informacje i zosta=C5=82a
> wys=C5=82ana wy=C5=82=C4=85cznie do wiadomo=C5=9Bci i u=C5=BCytku os=C3=
=B3b, do kt=C3=B3rych
> zosta=C5=82a zaadresowana. Je=C5=9Bli wiadomo=C5=9B=C4=87 zosta=C5=82a ot=
rzymana
> przypadkowo zabrania si=C4=99 jej kopiowania lub rozsy=C5=82ania do os=C3=
=B3b
> trzecich. W takim przypadku uprasza si=C4=99 o natychmiastowe
> zniszczenie wiadomo=C5=9Bci oraz poinformowanie nadawcy o
> zaistnia=C5=82ej sytuacji za pomoc=C4=85 wiadomo=C5=9Bci zwrotnej.
> Dzi=C4=99kujemy.
>
> This message, including any attachments hereto,
> may contain privileged or confidential information and is sent
> solely for the attention and use of the intended addressee(s).
> If you are not an intended addressee, you may neither use this
> message nor copy or deliver it to anyone. In such case, you
> should immediately destroy this message and kindly notify the
> sender by reply email. Thank you.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
*Andrei Gherzan*

--14dae9cc90b8dafb44050d81a3f3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dizzy branch on its way. Maintainer received the ping.</di=
v><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Dec 18,=
 2014 at 5:45 PM, Maciej Borzecki <span dir=3D"ltr">&lt;<a href=3D"mailto:m=
aciej.borzecki@open-rnd.pl" target=3D"_blank">maciej.borzecki@open-rnd.pl</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On =
12/18 16:42, Petter Gustad wrote:<br>
&gt; From: Maciej Borzecki &lt;<a href=3D"mailto:maciej.borzecki@open-rnd.p=
l">maciej.borzecki@open-rnd.pl</a>&gt;<br>
&gt; Subject: Re: [yocto] [meta-raspberrypi] Image will halt soon after boo=
t<br>
&gt; Date: Thu, 18 Dec 2014 10:12:28 +0100<br>
&gt;<br>
&gt; &gt; Have you seen the same on 1.7 or current master? I&#39;m using a =
number of<br>
&gt; &gt; Yocto built images (sone on 1.7.x, other mostly follow poky +<br>
&gt; &gt; meta-raspberrypi master branches) and things seem to work just fi=
ne.<br>
&gt;<br>
&gt; Thanks! I just tried the master branch as given below and it works<br>
&gt; fine. I will switch to a more recent release. However, I can&#39;t see=
m to<br>
&gt; find a dizzy branch in meta-raspberrypi?<br>
<br>
</span>It seems that thee is no dizzy branch at all in meta-raspberrypi. Yo=
u<br>
might want to ping the layer&#39;s maintainers about that.<br>
<span class=3D"im HOEnZb"><br>
--<br>
Maciej Borz=C4=99cki<br>
Senior Software Developer at Open-RnD Sp. z o.o., Poland<br>
<a href=3D"http://www.open-rnd.pl" target=3D"_blank">www.open-rnd.pl</a><br=
>
mobile: <a href=3D"tel:%2B48%20889%20117%20365" value=3D"+48889117365">+48 =
889 117 365</a>, fax: <a href=3D"tel:%2B48%2042%20657%209079" value=3D"+484=
26579079">+48 42 657 9079</a><br>
<br>
<br>
Niniejsza wiadomo=C5=9B=C4=87 wraz z za=C5=82=C4=85cznikami mo=C5=BCe<br>
zawiera=C4=87 chronione prawem lub poufne informacje i zosta=C5=82a<br>
wys=C5=82ana wy=C5=82=C4=85cznie do wiadomo=C5=9Bci i u=C5=BCytku os=C3=B3b=
, do kt=C3=B3rych<br>
zosta=C5=82a zaadresowana. Je=C5=9Bli wiadomo=C5=9B=C4=87 zosta=C5=82a otrz=
ymana<br>
przypadkowo zabrania si=C4=99 jej kopiowania lub rozsy=C5=82ania do os=C3=
=B3b<br>
trzecich. W takim przypadku uprasza si=C4=99 o natychmiastowe<br>
zniszczenie wiadomo=C5=9Bci oraz poinformowanie nadawcy o<br>
zaistnia=C5=82ej sytuacji za pomoc=C4=85 wiadomo=C5=9Bci zwrotnej.<br>
Dzi=C4=99kujemy.<br>
<br>
This message, including any attachments hereto,<br>
may contain privileged or confidential information and is sent<br>
solely for the attention and use of the intended addressee(s).<br>
If you are not an intended addressee, you may neither use this<br>
message nor copy or deliver it to anyone. In such case, you<br>
should immediately destroy this message and kindly notify the<br>
sender by reply email. Thank you.<br>
</span><div class=3D"HOEnZb"><div class=3D"h5">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"text-align:ce=
nter"></div><div style=3D"text-align:center"><div align=3D"left"><b style=
=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:center=
">Andrei Gherzan</b><br></div></div></div></div>
</div>

--14dae9cc90b8dafb44050d81a3f3--
