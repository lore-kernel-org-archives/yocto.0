Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15EDDE009A0; Mon, 19 Jun 2017 12:47:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FBCDE0084A
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 12:47:15 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id u195so2491676wmd.1
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 12:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pMJ/vsHZ3eTYASolS9FiGE2B4X33DXxle9R+nhEWEWw=;
	b=tdo63BgTURYE0B3jIm8fe39HS691pRj54BkuHgqqXfBhTsy9ru7wJ68nKoyXlbkgoP
	5Wj+UOvQU1YcEEBEjNVbIJ/iLcvlqpdQkFinjZuwTBSJp7YwXaelRj+xEGZrzHumPxjj
	ZHTeYfGUoz9MN65+ciXvXAVJZtJiJIwMO7ItqMa+ptNNyp55m/o4aXLMRB/vBCjDt0y4
	knCnGhmbUQvzMk5rdqxwcQFY0i+Y9rTfghm93ZM51jgmQ3mYnr5SMlhRWis/sLQiWAxr
	oYKldvAWto3iSyE4A97rGb8Dzjubii317iIl6jTjr616nEKgBApXFLo+cljB4NmpONN2
	ofNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pMJ/vsHZ3eTYASolS9FiGE2B4X33DXxle9R+nhEWEWw=;
	b=lnjevZWCQeJHB421wmJkask92gmXviuzvFv5y3e0awB/pQkBAD5O0hFFVaPRpuhhjE
	INSov7pnyi5yEnjtvnFEhuoCEWitrtiXolRQ+0l9dMHB3XAveN9F+hCGpxpoJgQZ/jQX
	BZmDXylCJfE+n/LK52qIdwJZ3YH7CqMAlaDLeKGLGrpp/s/LmZ0jVPf+zRKeJa2MbpNh
	ZAYioiLvPrXQtmZwmHlFpK5r7wv5Ryb80MaRfI4XyV7qIdgyGlZ6vXVku8IaCPVpDHVm
	M9qTC3r7jJpZmhqZ5wS0lxzeBwyOvxqvmgB9kh+wo7xirjhZOtDFGCbwLCZHRm+DAWlX
	zLSQ==
X-Gm-Message-State: AKS2vOxhzdO52oAZGlPVsffvGQovyLfQIx5tlG9Hb8yG4gsfGYT0VY/m
	n951s9WhbeqhWmxu2ha+VOBsxnE98w==
X-Received: by 10.80.180.188 with SMTP id w57mr18511694edd.42.1497901634204;
	Mon, 19 Jun 2017 12:47:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.153.222 with HTTP; Mon, 19 Jun 2017 12:46:43 -0700 (PDT)
In-Reply-To: <DB6PR0701MB1879D229F084DD8D85A55A22D3C40@DB6PR0701MB1879.eurprd07.prod.outlook.com>
References: <DB6PR0701MB1879D229F084DD8D85A55A22D3C40@DB6PR0701MB1879.eurprd07.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 19 Jun 2017 12:46:43 -0700
Message-ID: <CAMKF1srsX4shLQ5pz1Yj69GzbJiSRyPZ3Bc5DOabosJHg=4T5w@mail.gmail.com>
To: Thomas Thorne <Thomas.Thorne@net2edge.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Configure eth0 to come up with Link-Local IPv6 address only
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
X-List-Received-Date: Mon, 19 Jun 2017 19:47:23 -0000
X-Groupsio-MsgNum: 36661
Content-Type: multipart/related; boundary="94eb2c0edf74d143680552556638"

--94eb2c0edf74d143680552556638
Content-Type: multipart/alternative; boundary="94eb2c0edf74d143650552556637"

--94eb2c0edf74d143650552556637
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 19, 2017 at 4:15 AM, Thomas Thorne <Thomas.Thorne@net2edge.com>
wrote:

> Good afternoon,
>
>
>
> I am trying to generate an image for a Raspberry Pi 3 that includes a
> `/etc/network/interfaces` file which causes the Pi to start with an =E2=
=80=9Cup=E2=80=9D
> eth0 connection with only an IPv6 link local address.
>

=E2=80=8BI get IPV4 address assigned automatically on my
image (core-image-full-cmdline)=E2=80=8B

=E2=80=8Btry with

iface eth0 inet auto
 =E2=80=8B

>
>
> The Pi will be connected to an active switch on boot so the copper
> ethernet interface will by electrically up.  So far I have found that
> unless I set a static IPv4 address or connect to a network that uses DHCP
> to handout IPv4 addresses by eth0 interface does not come up on boot.
> Based on reading the interfaces man page I have attempted the following
> variations I in the interfaces file:
>
>
>
> auto lo
>
> iface lo inet loopback
>
>
>
> auto eth0
>
> iface eth0 inet manual
>
> iface eth0 inet6 manual
>
>
>
>
>
> auto lo
>
> iface lo inet loopback
>
>
>
> auto eth0
>
> iface eth0 inet6 manual
>
>
>
>
>
> auto lo
>
> iface lo inet loopback
>
>
>
> auto eth0
>
> iface eth0 inet6 static
>
>
>
>
>
>
>
> auto lo
>
> iface lo inet loopback
>
>
>
> auto eth0
>
> iface eth0 inet6 manual
>
>                 autoconf 1
>
>
>
>
>
> auto lo
>
> iface lo inet loopback
>
>
>
> auto eth0
>
> iface eth0 inet manual
>
> iface eth0 inet6 manual
>
>                 autoconf 1
>
>
>
>
>
> auto lo
>
> iface lo inet loopback
>
>
>
> auto eth0
>
> iface eth0 inet manual
>
> iface eth0 inet6 auto
>
>
>
>
>
> auto lo
>
> iface lo inet loopback
>
>
>
> auto eth0
>
> #iface eth0 inet manual
>
> iface eth0 inet6 auto
>
>
>
>
>
>
>
> This could well be a more general problem with my understanding of how to
> write IPv6 interface files than something specific to the Raspberry Pi
> running a Yocto build.  It is much easier for me to send this email
> question now though, before I start trying to mess around with the same
> settings on my Ubunut PC to see if I can get the behaviour I want out of
> that.
>
>
>
> Any advice or suggestions would be greatfully received.
>
>
>
> Regards,
>
>
>
> Thomas A. F. Thorne MEng. AUS MIET
>
> *Software Engineer*
>
>
>
> *Tel:* *+44 3450 130 030 <+44-3450-130-030>*
>
> *Email:* *Thomas.Thorne@Net2Edge.com <Thomas.Thorne@Net2Edge.com>*
>
> *Web:* *http://www.Net2Edge.com/ <http://www.net2edge.com/>*
>
>
>
> [image: Net2Edge Logo]
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c0edf74d143650552556637
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace"><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Mon, Jun 19, 2017 at 4:15 AM, Thomas Thorne <span dir=3D"ltr">&lt;=
<a href=3D"mailto:Thomas.Thorne@net2edge.com" target=3D"_blank">Thomas.Thor=
ne@net2edge.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">





<div lang=3D"EN-GB">
<div class=3D"gmail-m_4349613782464571202WordSection1">
<p class=3D"MsoNormal">Good afternoon,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am trying to generate an image for a Raspberry Pi =
3 that includes a `/etc/network/interfaces` file which causes the Pi to sta=
rt with an =E2=80=9Cup=E2=80=9D eth0 connection with only an IPv6 link loca=
l address.=C2=A0</p></div></div></blockquote><div><br></div><div><div class=
=3D"gmail_default" style=3D"font-family:monospace,monospace">=E2=80=8BI get=
 IPV4 address assigned automatically on my</div><div class=3D"gmail_default=
" style=3D"font-family:monospace,monospace">image (core-image-full-cmdline)=
=E2=80=8B</div><br></div><div class=3D"gmail_default" style=3D"font-family:=
monospace,monospace">=E2=80=8Btry with</div><div class=3D"gmail_default" st=
yle=3D"font-family:monospace,monospace"><br></div><div class=3D"gmail_defau=
lt" style=3D"font-family:monospace,monospace"><span style=3D"font-size:12.8=
px;font-family:arial,sans-serif">iface eth0 inet auto</span></div><div clas=
s=3D"gmail_default" style=3D"font-family:monospace,monospace"><span style=
=3D"font-size:12.8px;font-family:arial,sans-serif">=C2=A0</span>=E2=80=8B<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-G=
B"><div class=3D"gmail-m_4349613782464571202WordSection1"><p class=3D"MsoNo=
rmal">
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The Pi will be connected to an active switch on boot=
 so the copper ethernet interface will by electrically up.=C2=A0 So far I h=
ave found that unless I set a static IPv4 address or connect to a network t=
hat uses DHCP to handout IPv4 addresses
 by eth0 interface does not come up on boot.=C2=A0 Based on reading the int=
erfaces man page I have attempted the following variations I in the interfa=
ces file:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">auto lo <u></u><u></u></p>
<p class=3D"MsoNormal">iface lo inet loopback<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">auto eth0<u></u><u></u></p>
<p class=3D"MsoNormal">iface eth0 inet manual<u></u><u></u></p>
<p class=3D"MsoNormal">iface eth0 inet6 manual<u></u><u></u></p>
<div style=3D"border-top:none;border-right:none;border-left:none;border-bot=
tom:1pt solid windowtext;padding:0cm 0cm 1pt">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><u></u>=C2=A0<u></=
u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">auto lo <u></u><u></u></p>
<p class=3D"MsoNormal">iface lo inet loopback<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">auto eth0<u></u><u></u></p>
<p class=3D"MsoNormal">iface eth0 inet6 manual<u></u><u></u></p>
<div style=3D"border-top:none;border-right:none;border-left:none;border-bot=
tom:1pt solid windowtext;padding:0cm 0cm 1pt">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><u></u>=C2=A0<u></=
u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">auto lo <u></u><u></u></p>
<p class=3D"MsoNormal">iface lo inet loopback<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">auto eth0<u></u><u></u></p>
<p class=3D"MsoNormal">iface eth0 inet6 static<u></u><u></u></p>
<div style=3D"border-top:none;border-right:none;border-left:none;border-bot=
tom:1pt solid windowtext;padding:0cm 0cm 1pt">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><u></u>=C2=A0<u></=
u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">auto lo <u></u><u></u></p>
<p class=3D"MsoNormal">iface lo inet loopback<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">auto eth0<u></u><u></u></p>
<p class=3D"MsoNormal">iface eth0 inet6 manual<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 autoconf 1<u></u><u></u></p>
<div style=3D"border-top:none;border-right:none;border-left:none;border-bot=
tom:1pt solid windowtext;padding:0cm 0cm 1pt">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><u></u>=C2=A0<u></=
u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">auto lo <u></u><u></u></p>
<p class=3D"MsoNormal">iface lo inet loopback<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">auto eth0<u></u><u></u></p>
<p class=3D"MsoNormal">iface eth0 inet manual<u></u><u></u></p>
<p class=3D"MsoNormal">iface eth0 inet6 manual<u></u><u></u></p>
<div style=3D"border-top:none;border-right:none;border-left:none;border-bot=
tom:1pt solid windowtext;padding:0cm 0cm 1pt">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 au=
toconf 1<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><u></u>=C2=A0<u></=
u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">auto lo <u></u><u></u></p>
<p class=3D"MsoNormal">iface lo inet loopback<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">auto eth0<u></u><u></u></p>
<p class=3D"MsoNormal">iface eth0 inet manual<u></u><u></u></p>
<p class=3D"MsoNormal">iface eth0 inet6 auto<u></u><u></u></p>
<div style=3D"border-top:none;border-right:none;border-left:none;border-bot=
tom:1pt solid windowtext;padding:0cm 0cm 1pt">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><u></u>=C2=A0<u></=
u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">auto lo <u></u><u></u></p>
<p class=3D"MsoNormal">iface lo inet loopback<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">auto eth0<u></u><u></u></p>
<p class=3D"MsoNormal">#iface eth0 inet manual<u></u><u></u></p>
<p class=3D"MsoNormal">iface eth0 inet6 auto<u></u><u></u></p>
<div style=3D"border-top:none;border-right:none;border-left:none;border-bot=
tom:1pt solid windowtext;padding:0cm 0cm 1pt">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><u></u>=C2=A0<u></=
u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">This could well be a more general problem with my un=
derstanding of how to write IPv6 interface files than something specific to=
 the Raspberry Pi running a Yocto build.=C2=A0 It is much easier for me to =
send this email question now though, before
 I start trying to mess around with the same settings on my Ubunut PC to se=
e if I can get the behaviour I want out of that.=C2=A0
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Any advice or suggestions would be greatfully receiv=
ed.=C2=A0 <u></u>
<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Regards, <u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Arial,sans-serif;color:rg=
b(67,66,68)">Thomas A. F. Thorne MEng. AUS MIET<u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:Arial,sans-serif;color=
:rgb(67,66,68)">Software Engineer<u></u><u></u></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Arial,sans-serif;color:rg=
b(67,66,68)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:Arial,sans-serif;color=
:rgb(67,66,68)">Tel:</span></b><span style=3D"font-family:Arial,sans-serif;=
color:black">
</span><b><span style=3D"font-family:Arial,sans-serif;color:rgb(32,140,166)=
"><a href=3D"tel:+44-3450-130-030" target=3D"_blank"><span style=3D"color:r=
gb(32,140,166);text-decoration:none">+44 3450 130 030</span></a><u></u><u><=
/u></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:Arial,sans-serif;color=
:rgb(67,66,68)">Email:</span></b><span style=3D"font-family:Arial,sans-seri=
f;color:rgb(67,66,68)">
</span><b><span style=3D"font-family:Arial,sans-serif;color:rgb(32,140,166)=
"><a href=3D"mailto:Thomas.Thorne@Net2Edge.com" target=3D"_blank"><span sty=
le=3D"color:rgb(32,140,166);text-decoration:none">Thomas.Thorne@Net2Edge.co=
m</span></a></span></b><span style=3D"color:rgb(32,140,166)"><u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:Arial,sans-serif;color=
:rgb(67,66,68)">Web:</span></b><span style=3D"font-family:Arial,sans-serif;=
color:rgb(67,66,68)">
</span><b><span style=3D"font-family:Arial,sans-serif;color:rgb(32,140,166)=
"><a href=3D"http://www.net2edge.com/" target=3D"_blank"><span style=3D"col=
or:rgb(32,140,166);text-decoration:none">http://www.Net2Edge.com/</span></a=
></span></b><span><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Arial,sans-serif;color:bl=
ack"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:7.5pt;font-family:Arial,sans-serif;color:rgb(34,22,43)"><img border=3D"0"=
 width=3D"189" height=3D"51" style=3D"width: 1.9687in; height: 0.5312in;" i=
d=3D"gmail-m_4349613782464571202Picture_x0020_1" src=3D"cid:image001.png@01=
D2E8F3.D1EB2030" alt=3D"Net2Edge Logo"></span><span style=3D"color:rgb(67,6=
6,68)"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--94eb2c0edf74d143650552556637--

--94eb2c0edf74d143680552556638
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <image001.png@01D2E8F3.D1EB2030>
X-Attachment-Id: 148e532b8249c380_0.0.1

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
tnP/D6swSSaEGOOdAAAAAElFTkSuQmCC

--94eb2c0edf74d143680552556638--
