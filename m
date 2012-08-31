Return-Path: <andrei@gherzan.ro>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA3B3E0074B
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 02:20:31 -0700 (PDT)
Received: by iagt4 with SMTP id t4so5518722iag.35
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 02:20:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=+PqpodJTqsTEe9ZC+h09BDRhW3ujXYo7VDD/mt+9A+Q=;
	b=U83cwUOzcIuGf/ND/XVYYo994k+rOSsiexAxM/XTv6iiCY7qj2nm79IAhJS/sRGmoJ
	3X4oF0dHpfIXp6P0V9NYdcjdFkOZ2TP/bx7NSQtgTCxo7QIO64BwZsIIkjZmXB6I42Bj
	MngZmUiNb/xnDQW4MAMyeoCexY6hhjjE42w0BCCLPZ+eAbaIqz96drl9+ZgEzAfwtOig
	+vLtN5uTDKcW+2Xcoa43jifuLlDH/hO90lTE1M0o1zfxUFvxiOr7av4qWcIMJPl7EACl
	ujelofwODdKmxecOwni+MGtqJ5+W5yR4TEjfr3mUcRDRSV+vqoB1Gn9ayleRrV17O4K+
	MuVw==
Received: by 10.50.187.229 with SMTP id fv5mr1742303igc.57.1346404829143; Fri,
	31 Aug 2012 02:20:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.129.232 with HTTP; Fri, 31 Aug 2012 02:20:08 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <5040814D.8030106@r-finger.com>
References: <5040751B.2070900@communistcode.co.uk> <1800372.7lpHqO07Rq@helios>
	<50407985.7000108@communistcode.co.uk>
	<50407DDE.8070208@r-finger.com>
	<50407F73.5060308@communistcode.co.uk> <5040814D.8030106@r-finger.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 31 Aug 2012 12:20:08 +0300
Message-ID: <CAK18fxG=VeHuVgoOz9zpe-am+NCPodAVVecDNFgzDTAtNAFFHw@mail.gmail.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
X-Gm-Message-State: ALoCoQl7+PkDYAk5HJ7bumtdGvdQt9obCsfYD/i7DcmrjzffyKM9STZuMaXpkepsDAhtq7GqMpcW
Cc: yocto@yoctoproject.org
Subject: Re: meta-raspberry pi libav bbappend
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 31 Aug 2012 09:20:32 -0000
Content-Type: multipart/alternative; boundary=14dae9340a7790a17004c88c4dac

--14dae9340a7790a17004c88c4dac
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Aug 31, 2012 at 12:18 PM, Tomas Frydrych <
tf+lists.yocto@r-finger.com> wrote:

> On 31/08/12 10:10, Jack Mitchell wrote:
> > Thanks for the suggestion but unfortunately no dice. It was working
> > about a week ago with this BBMASK...The only big change I can see is
> > that omxplayer now depends in libav, but I have tried just masking the
> > whole recipes-multimedia path with the same result, so I don't it's that.
>
>
> I think the poky-raspberrypi.conf is overriding your BBMASK and it no
> longer masks out libav, see
>
> https://github.com/djwillis/meta-raspberrypi/commit/3e0cf999e8fe547a52cb8af28eefdf0f8482daba
>
>
> yes. BBMASK is set in distro conf. I will fix it. Wait a sec.

--14dae9340a7790a17004c88c4dac
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Fri, Aug 31, 2012 at 12:18 PM, Tomas Frydrych=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:tf+lists.yocto@r-finger.com" targe=
t=3D"_blank">tf+lists.yocto@r-finger.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">

<div class=3D"im">On 31/08/12 10:10, Jack Mitchell wrote:<br>
&gt; Thanks for the suggestion but unfortunately no dice. It was working<br=
>
&gt; about a week ago with this BBMASK...The only big change I can see is<b=
r>
&gt; that omxplayer now depends in libav, but I have tried just masking the=
<br>
&gt; whole recipes-multimedia path with the same result, so I don&#39;t it&=
#39;s that.<br>
<br>
<br>
</div>I think the poky-raspberrypi.conf is overriding your BBMASK and it no=
<br>
longer masks out libav, see<br>
<a href=3D"https://github.com/djwillis/meta-raspberrypi/commit/3e0cf999e8fe=
547a52cb8af28eefdf0f8482daba" target=3D"_blank">https://github.com/djwillis=
/meta-raspberrypi/commit/3e0cf999e8fe547a52cb8af28eefdf0f8482daba</a><br><d=
iv class=3D"HOEnZb">

<div class=3D"h5"><br></div><div class=3D"h5"><br></div></div></blockquote>=
<div><span style=3D"background-color:rgb(255,255,255);color:rgb(34,34,34);f=
ont-family:arial,sans-serif;font-size:13px">yes. BBMASK is set in distro co=
nf. I will fix it. Wait a sec.</span>=A0</div>

</div>

--14dae9340a7790a17004c88c4dac--
