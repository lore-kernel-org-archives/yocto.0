Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12748E006C2
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 14:20:27 -0700 (PDT)
Received: by mail-ob0-f177.google.com with SMTP id wn6so4580829obc.22
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 14:20:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=6qJ3S6b5kvEgJUPzte+kDVJsu9+73CYv+76rLgQF6AI=;
	b=ccWa2qDvsjZmAfPrJ/N98EjHxxFA0/I30YGZzSKtKHgogAlvCtZoCCyHavS/0ZTnbB
	MHP2s96XZJakC57KPUBOT/SV5Ifo5StVZcWLRNykEmNze/RYNrwz3u0mYqVlp/HPOcqZ
	ytvNBbDMNdXPleXOsxx4tKwQS4h5rK3uuYyP7qJ7+xO7oRBDPWGGYdeSb2znzWBRMBsT
	UGNXw1HHnHK2yrMErOlLHkwk7wcbYbIWvcMsRF0vqisUy85mmWkdm/olJ0SMyx3bRmGb
	3UvcUmXED/Gx7XHdjoXFeS0AyRFJbFeY1Cvbvl+eEAMoExAr1I+yrpFZVJGsp5AGFrA2
	jU6A==
X-Received: by 10.60.103.76 with SMTP id fu12mr10118686oeb.71.1369344026077;
	Thu, 23 May 2013 14:20:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.168.67 with HTTP; Thu, 23 May 2013 14:20:06 -0700 (PDT)
In-Reply-To: <0789CF4373FAE1439958EBA64274B10924EFD6C06C@MXCL20.fgremc.it>
References: <0789CF4373FAE1439958EBA64274B10924EFD6C06C@MXCL20.fgremc.it>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 23 May 2013 23:20:06 +0200
Message-ID: <CAP71Wjy3ViuaPxZe+XvWEU3fS6geYymeYkLBxKD-xbTxmWMwbQ@mail.gmail.com>
To: "LIU Yang (MM)" <yang.liu@magnetimarelli.com>
X-Gm-Message-State: ALoCoQl2OH5387Q0iJL7AkB7W1ES21q9YUPC0NCHb/FfQlop278/57JCZ24irR7+Kj1uHT5SPvMQ
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"PAPARO Nino \(MM\)" <nino.paparo@magnetimarelli.com>
Subject: Re: Yocto Qt5
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
X-List-Received-Date: Thu, 23 May 2013 21:20:27 -0000
Content-Type: multipart/alternative; boundary=089e011613e840017304dd6940f0

--089e011613e840017304dd6940f0
Content-Type: text/plain; charset=ISO-8859-1

On Thu, May 23, 2013 at 10:51 PM, LIU Yang (MM) <yang.liu@magnetimarelli.com
> wrote:

> I am first time coming here for help on Yocto project with Qt5, I have two
> questions/problems when I tried to bitbake a recipe in our layer. ****
>
> sorry to hijack (slightly...) that email, but what is the 'plan' for Qt5
in OE? i don't see Qt5 listed in the yocto 1.5 schedule wiki. so are we
going to replace qt4 by qt5 in oe-core? are we going to have them
side-by-side? or is it going to live in its own layer?

thanks

--089e011613e840017304dd6940f0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, May 23, 2013 at 10:51 PM, LIU Yang (MM) <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:yang.liu@magnetimarelli.com" target=3D"_blank">yang.liu@magnet=
imarelli.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><p class=3D"MsoNormal">I am first time comin=
g here for help on Yocto project with Qt5, I have two questions/problems wh=
en I tried to bitbake a recipe in our layer.
<u></u><u></u></p>
<p style=3D"margin-left:.75in"></p></blockquote></div>sorry to hijack (slig=
htly...) that email, but what is the &#39;plan&#39; for Qt5 in OE? i don&#3=
9;t see Qt5 listed in the yocto 1.5 schedule wiki. so are we going to repla=
ce qt4 by qt5 in oe-core? are we going to have them side-by-side? or is it =
going to live in its own layer?</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra" style>thank=
s=A0</div></div>

--089e011613e840017304dd6940f0--
