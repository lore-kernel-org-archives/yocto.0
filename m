Return-Path: <michael.d.dumont@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DADCEE00CA3; Fri,  1 Apr 2016 21:57:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michael.d.dumont[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7813DE00A9C
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 21:57:13 -0700 (PDT)
Received: by mail-lb0-f175.google.com with SMTP id bc4so87463844lbc.2
	for <yocto@yoctoproject.org>; Fri, 01 Apr 2016 21:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rxLFYfiFUnpzbrCuvUbxXtz0+cBXawng8QdzvKu0Elo=;
	b=Fyg7BzD9qRSKTG0NnI4ORfgUkq+jhlarj6wHFUprdBimw2XXeydFS9QjJm9EcEo7ZZ
	qcEvzTBmJpZp4Gg28w5NxvKQTTkAc6hUbJzxjj0Kb621Vo0EnvMgGIikisciZfMpZD7t
	g5qDePtBy8XC7PTj/+eKdpU5gClWm56YvqEaxenvV3w+Mq57/HNRZO6fUEdHjiCljlhY
	g4zwaOfN5eesLublajv1WXZbgiCAEAfNMmTkLKnU4EBOuEFZsPYBtWgANHl7sxY78URC
	LYImqr47acnJ556kV+UtNw19H7JUCoxV74vrff4gt8htWe4NB3ncJEZ8cpGR69YDqGij
	STrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rxLFYfiFUnpzbrCuvUbxXtz0+cBXawng8QdzvKu0Elo=;
	b=eSd68qrc2LuS0ArHd1aB8TdqceEAJ95MXyG/iKoMpEZLrn2Wssq+nhIjjR0yRGuE65
	3gCOjO7A74YORyjsTLSB3ke719F4XSSWLQIb5m0JCzXRMjaeS6Rdox0QH9gLI/ul7Z2x
	pFeRjUgmB0l6QZ+eI38EBEiUvb0AH8/NP1Azs/m2Ee+m0+wH4HTeEVcbUR99Y7LxkdgM
	EOe0pWN9Vo1ytH0xGtHFy+IM6/6DsG3UWYcQGOTEA3WkEJTErOqKjokVhpQ/WKnN2WJl
	MvPMlMrqyjsZp5OCUjLLPGx140DRVzwnWcC/SOVZtV90Q4sP1Q6moHOJQ9UHJBZ8r86v
	J7Cg==
X-Gm-Message-State: AD7BkJKjBQ/w+ZYMWNqta3qQKdqNzVP5DE+fvYSZVTwD+KmIuuxbroSzcBaPcu7WVf+lfpD+R+iOEurUmSdidA==
X-Received: by 10.112.128.225 with SMTP id nr1mr4827996lbb.101.1459573031606; 
	Fri, 01 Apr 2016 21:57:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.231 with HTTP; Fri, 1 Apr 2016 21:56:52 -0700 (PDT)
In-Reply-To: <20160402040301.GA20785@linux-mkz6>
References: <1704123.nFWplM32RM@valkyrie> <20160331152604.GA23623@linux-yxv0>
	<655B9BF4-0067-4E41-9B09-BD74A530B79C@gmail.com>
	<20160401191729.GA25051@linux-yxv0>
	<20160401224604.GA30256@linux-yxv0>
	<46A38E77-8BDD-4272-9619-2583EC019F1E@gmail.com>
	<20160402040301.GA20785@linux-mkz6>
From: Michael Dumont <michael.d.dumont@gmail.com>
Date: Fri, 1 Apr 2016 21:56:52 -0700
Message-ID: <CAK_GGH-sUj-5xdRWh+U=hnGYnBQeCOmKsR0fL0WcikABnphtsg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailman-Approved-At: Sat, 02 Apr 2016 15:43:12 -0700
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberry] Raspberry Pi 3
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
X-List-Received-Date: Sat, 02 Apr 2016 04:57:18 -0000
Content-Type: multipart/alternative; boundary=047d7b3a865c129ff7052f795403

--047d7b3a865c129ff7052f795403
Content-Type: text/plain; charset=UTF-8

Trevor,

I know with the Pi3 they swapped ttyAMA0 to support Bluetooth.

They put ttyS0 on the 40-pin header, but the clock used for the baud rate
generation on ttyS0 is tied to the core frequency, and it can cause
fluctuations when the core frequency scales up and down.

I believe the official fix is to set core_freq=250 so that the core clock
is always at it's lowest value and never needs to change.  There's also a
dtoverlay that swaps the two UARTs back so you can get the stable UART on
the 40-pin header.

Not clear to me that this is your exact problem, but it might be worth a
quick test?

Some notes here:
https://www.raspberrypi.org/forums/viewtopic.php?f=107&t=138223

Hope this helps,

-Mike

On Fri, Apr 1, 2016 at 9:03 PM, Trevor Woerner <twoerner@gmail.com> wrote:

> On Fri 2016-04-01 @ 03:55:31 PM, Khem Raj wrote:
> >
> > > On Apr 1, 2016, at 3:46 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> > >
> > > On Fri 2016-04-01 @ 03:17:29 PM, Trevor Woerner wrote:
> > >> As far as I can tell there are two raspberry pi OE layers which
> include this
> > >> commit:
> > >>
> > >> 1. git://git.yoctoproject.org/meta-raspberrypi::master
> > >> 2. https://github.com/kraj/meta-raspberrypi.git::kraj/master
> > > [...]
> > >> - Using 1 (the official layer from Andrei) I get an image that boots
> but the
> > >>   console remains messed up (as before).
> > >>
> > >> - Using 2 (the layer from Khem) I get an image that flashes the
> rainbow
> > >>   pattern on the HDMI monitor, shows the 4 berries, then stops.
> Nothing else
> > >>   happens, no messages on the console.
> > >
> > > I get the same results with no local.conf tweaks and building the
> > > rpi-basic-image.
> > >
> > > Does anyone have a run-tested, OE-built, raspi3 image with working
> console?
> > >
> >
> > can you select 4.1 for kernel and try with master, Andre has merged all
> my changes
> > today
>
> Yes, that's one of the options I have already tried; it boots but the
> console
> is still garbled.
>
> The 4.1 kernel is the default in Andrei's layer. Using the 4.4 kernel from
> your layer I can't get past the 4 raspberries.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b3a865c129ff7052f795403
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Trevor,<div><br></div><div>I know with the Pi3 they swappe=
d ttyAMA0 to support Bluetooth.</div><div><br></div><div>They put ttyS0 on =
the 40-pin header, but the clock used for the baud rate generation on ttyS0=
 is tied to the core frequency, and it can cause fluctuations when the core=
 frequency scales up and down.<br></div><div><br></div><div>I believe the o=
fficial fix is to set core_freq=3D250 so that the core clock is always at i=
t&#39;s lowest value and never needs to change.=C2=A0 There&#39;s also a dt=
overlay that swaps the two UARTs back so you can get the stable UART on the=
 40-pin header.</div><div><br></div><div>Not clear to me that this is your =
exact problem, but it might be worth a quick test?</div><div><br></div><div=
>Some notes here:=C2=A0<a href=3D"https://www.raspberrypi.org/forums/viewto=
pic.php?f=3D107&amp;t=3D138223">https://www.raspberrypi.org/forums/viewtopi=
c.php?f=3D107&amp;t=3D138223</a></div><div><br></div><div>Hope this helps,<=
/div><div><br></div><div>-Mike</div></div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">On Fri, Apr 1, 2016 at 9:03 PM, Trevor Woerner <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:twoerner@gmail.com" target=3D"_blank">=
twoerner@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<span class=3D"">On Fri 2016-04-01 @ 03:55:31 PM, Khem Raj wrote:<br>
&gt;<br>
&gt; &gt; On Apr 1, 2016, at 3:46 PM, Trevor Woerner &lt;<a href=3D"mailto:=
twoerner@gmail.com">twoerner@gmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; On Fri 2016-04-01 @ 03:17:29 PM, Trevor Woerner wrote:<br>
&gt; &gt;&gt; As far as I can tell there are two raspberry pi OE layers whi=
ch include this<br>
&gt; &gt;&gt; commit:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; 1. git://<a href=3D"http://git.yoctoproject.org/meta-raspberr=
ypi::master" rel=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/meta=
-raspberrypi::master</a><br>
&gt; &gt;&gt; 2. <a href=3D"https://github.com/kraj/meta-raspberrypi.git::k=
raj/master" rel=3D"noreferrer" target=3D"_blank">https://github.com/kraj/me=
ta-raspberrypi.git::kraj/master</a><br>
&gt; &gt; [...]<br>
&gt; &gt;&gt; - Using 1 (the official layer from Andrei) I get an image tha=
t boots but the<br>
&gt; &gt;&gt;=C2=A0 =C2=A0console remains messed up (as before).<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; - Using 2 (the layer from Khem) I get an image that flashes t=
he rainbow<br>
&gt; &gt;&gt;=C2=A0 =C2=A0pattern on the HDMI monitor, shows the 4 berries,=
 then stops. Nothing else<br>
&gt; &gt;&gt;=C2=A0 =C2=A0happens, no messages on the console.<br>
&gt; &gt;<br>
&gt; &gt; I get the same results with no local.conf tweaks and building the=
<br>
&gt; &gt; rpi-basic-image.<br>
&gt; &gt;<br>
&gt; &gt; Does anyone have a run-tested, OE-built, raspi3 image with workin=
g console?<br>
&gt; &gt;<br>
&gt;<br>
&gt; can you select 4.1 for kernel and try with master, Andre has merged al=
l my changes<br>
&gt; today<br>
<br>
</span>Yes, that&#39;s one of the options I have already tried; it boots bu=
t the console<br>
is still garbled.<br>
<br>
The 4.1 kernel is the default in Andrei&#39;s layer. Using the 4.4 kernel f=
rom<br>
your layer I can&#39;t get past the 4 raspberries.<br>
<div class=3D"HOEnZb"><div class=3D"h5">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--047d7b3a865c129ff7052f795403--
