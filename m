Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B34F3E00C54; Tue,  1 May 2018 06:39:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f180.google.com (mail-ua0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 813F3E00C40
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 06:39:45 -0700 (PDT)
Received: by mail-ua0-f180.google.com with SMTP id a3so7383077uad.8
	for <yocto@yoctoproject.org>; Tue, 01 May 2018 06:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KHjeqePtQLmNhE+SuowvI/tHFLiRsviJWV8MUyaRrOc=;
	b=E+qerWHIFPrHdl/UMNhfpXZOZ+CnqpuSK68eQN71ELDc4Bi/UOHt9LD6U+n0v7in7V
	Lwsqu7IzB85VBVLW3RDiBnp4r1wuOtpPEdnPY5za4v/8d6AWe16UPzbhkfzdVgCgVfcd
	GmHgCN6wlV5fDC6vtJ2kTplhFPHTM7mNYWeDLtFcLG0pjEVRPjwLzNt3I4srnylXfi61
	d7/EYzLRytOVY0Dt1FkWbrsY5koapdPtYMWiFSpZ1X3D+1etwqyV/BpNyVz1GMIUlLoY
	rBrBh/5Kn5Scl8gE7DMx8XSqcnpfbFAyCzFjGSeQmVJcPbzJo77QQUhAPx1EPsZ1cklw
	DpUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KHjeqePtQLmNhE+SuowvI/tHFLiRsviJWV8MUyaRrOc=;
	b=BLKEikxF/bx5z6XaKozyfArwi/hd9Arw9CzMNUr+Ep2j3aAK7rG9CjE3U5GZS8MNGk
	jzOO92KhGbzynFOhqkTlUObCVUWOv5ZksvT2Z4F+qXeUdxs0u1FZsbWk+lqxqyovfkqK
	jzvcNeq/UGQyv5BdLfYj2f8mg0FEwvsVo3YCeO9tEHRfAuU28U/3EiFiUoUs3IRKTu9t
	nkFZBCmAy3Det2s7Yx5ZPaP5JioDngXcHz8KUOJr3vRy0sa0G7zBMP3W0CQk03H67xsw
	uas8dKmvpOdc50/IjY2zTJj9G7mtsKUrdFGDMSoVNgTCavRAIsSg9pZoVszxgFzCDjj4
	/Ogg==
X-Gm-Message-State: ALQs6tBynImirBREwzTQhcMhXZWEhKmzXHKQ5Rw1JDYFj+zJYF+JBDJq
	OtmoEMzt8nmAQD7sWK7Yw+rlmhW2XOz9OajmDyK7w691
X-Google-Smtp-Source: AB8JxZq9VxLyJFgGcR/pDRW3sq0EM0Acv/kXE5Pzrwh7s3Xf5s4jSpd6zESpBNcvQmtOe/mGIvyU5Iv+hixmY5XxbMY=
X-Received: by 10.176.90.48 with SMTP id l45mr13508175uad.79.1525181984497;
	Tue, 01 May 2018 06:39:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.4.108 with HTTP; Tue, 1 May 2018 06:39:03 -0700 (PDT)
X-Originating-IP: [90.152.4.98]
In-Reply-To: <05108809-5601-43F4-B1D3-5F2B8D675EFC@korgrd.com>
References: <05108809-5601-43F4-B1D3-5F2B8D675EFC@korgrd.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 1 May 2018 14:39:03 +0100
Message-ID: <CAK18fxEEQ3BGKqeTciFkvzUbsyFNzkHBuz+drQ5j78OuqmZi7g@mail.gmail.com>
To: Steve Pavao <stevep@korgrd.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Compute Module 3 machine .conf questions
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
X-List-Received-Date: Tue, 01 May 2018 13:39:46 -0000
Content-Type: multipart/alternative; boundary="001a11453560677a54056b251ac4"

--001a11453560677a54056b251ac4
Content-Type: text/plain; charset="UTF-8"

Hi Steve,

On Tue, May 1, 2018 at 12:40 AM, Steve Pavao <stevep@korgrd.com> wrote:

> Hello,
>
> My company has bought a Raspberry Pi Compute Module 3 for evaluation, and
> I have a 2 questions about the supplied machine .conf files for it.
>
> 1. Should the supplied raspberrypi-cm3.conf file internally refer to the
> Raspberry Pi 3 instead of the Raspberry Pi 2, since the RPi3 is the
> hardware basis of the Compute Module 3?
>

RaspberryPi 3 is currently almost the same as RaspberryPi 2 in terms of
configuration. What is the problem you are facing?


> 2. Should there also be an additional .conf file supplied in the
> meta-raspberry pi layer for a 64-bit version of poky Linux for the Compute
> Module 3, just as there is a raspberrypi3-64 machine .conf for the RPi3?
>

You can use directly raspberrypi3-64 as far as I am aware. The cm confs are
used as aliases right now. They point to one of the Raspberrypi 2 or 3
machine configurations.

--
Andrei G.

--001a11453560677a54056b251ac4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">Hi S=
teve,</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">=
On Tue, May 1, 2018 at 12:40 AM, Steve Pavao <span dir=3D"ltr">&lt;<a href=
=3D"mailto:stevep@korgrd.com" target=3D"_blank">stevep@korgrd.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">Hello,<br>
<br>
My company has bought a Raspberry Pi Compute Module 3 for evaluation, and I=
 have a 2 questions about the supplied machine .conf files for it.<br>
<br>
1. Should the supplied raspberrypi-cm3.conf file internally refer to the Ra=
spberry Pi 3 instead of the Raspberry Pi 2, since the RPi3 is the hardware =
basis of the Compute Module 3?<br></blockquote><div><br></div><div>Raspberr=
yPi 3 is currently almost the same as RaspberryPi 2 in terms of configurati=
on. What is the problem you are facing?=C2=A0</div><div>=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">
2. Should there also be an additional .conf file supplied in the meta-raspb=
erry pi layer for a 64-bit version of poky Linux for the Compute Module 3, =
just as there is a raspberrypi3-64 machine .conf for the RPi3?<br></blockqu=
ote><div><br></div><div>You can use directly raspberrypi3-64 as far as I am=
 aware. The cm confs are used as aliases right now. They point to one of th=
e Raspberrypi 2 or 3 machine configurations.</div><div><br></div><div><div =
style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;f=
ont-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,2=
55,255);text-decoration-style:initial;text-decoration-color:initial">--</di=
v><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline">Andrei G.</span><br></div></div></div></div>

--001a11453560677a54056b251ac4--
