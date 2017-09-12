Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86B27E00970; Tue, 12 Sep 2017 05:09:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_24,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM,T_REMOTE_IMAGE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (yahiafarghaly[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.6 HTML_IMAGE_ONLY_24 BODY: HTML: images with 2000-2400 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA45DE0090A
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 05:09:22 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id j141so45323842ioj.4
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 05:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=syGwbIo+Mqcyx/nU5X4CYlnElvWinba6nUS3Bb/1j+U=;
	b=WODYREBlNonABec7YcHXSdsxEl14SBK0yTIgYxJ/b9EX/5rt8LNEa7lc8LMQB1rTIh
	DiJFjLV1j5aAPswYIrgFNWK8VOEcFqRJDRAzNJ/d/5FOI7/G6IJJ7/p90S1nfLBL30OZ
	B3mCionhH9LqHMHnfA6+QE7hNJKBY9j8tvlOEy106lKtp5MW/sGo8+PWUv6sgiOF8mf8
	hsAcQa1L8T1ILpI/Rzle3YhM9o3c0nS9N7p+CugMUM6AanIclebOxFwnj3WoUAqC++IF
	t0ShCw+pUyd5hyw7j74xnRQJr0wqT6nbcZI6CASE4icDWyyy4FFXZnLeZ5Ysw/umrP/j
	2RMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=syGwbIo+Mqcyx/nU5X4CYlnElvWinba6nUS3Bb/1j+U=;
	b=tlj1e3kZ6FkHBb0BDNEpOsEJp2G2kc5ajYf9pSwrakIoSOPFs6dZrLaP038NXGBG8D
	DoePDC97Qj6dLL1vSX+ZxgQN1gbjKV0MFjO8YFnRoOwRFzeVGrSb5smmo0WBRUGGDITm
	rGdFJ0B+WV8hNlLW2dF7WV7rqDN/aB97rMaHe2ThKwSi0A4we/cGYk0rWJsafM4W4gLI
	0iqUgmQr+EBlsOuCf9uL8e/8qN1QdX3YDOyb+bcADuoPZH0bYOntyDdRdo91LXLAgzgS
	kezrcBL+uR5rz1zj5jYp/EyoGEwv2OCyPTDTqEhDSzNDUTCMPFhho40fd+NwXuEL3k9O
	mKLA==
X-Gm-Message-State: AHPjjUg2NdMuUOIHqk4QegmWtGzi4ieZVzkfx3OeG2pJDGMLUqrlfHb2
	onvq2Pqxfko1f0pHFFC7wlFM1bAQFmPqo00=
X-Google-Smtp-Source: AOwi7QCJlujbYqEeL9+9zIJIFRvVlKl3nQIs93j46Xztgh1jNmqFyAKSeH7JjYqBcjTSFc9N+kp98OqPYO0eiwkboS4=
X-Received: by 10.202.173.11 with SMTP id w11mr13342431oie.239.1505218161760; 
	Tue, 12 Sep 2017 05:09:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.82.15 with HTTP; Tue, 12 Sep 2017 05:09:21 -0700 (PDT)
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Tue, 12 Sep 2017 14:09:21 +0200
Message-ID: <CABFXn3EHj=o=FoAdkO9B3F+tSsBg-TmHQVc=T7PiW+dBbmY_8g@mail.gmail.com>
To: yocto@yoctoproject.org, Andrei Gherzan <andrei@gherzan.ro>
Subject: [meta-raspberrypi] enable serial communication pi 3
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
X-List-Received-Date: Tue, 12 Sep 2017 12:09:23 -0000
Content-Type: multipart/alternative; boundary="001a113ce896d75d700558fce9cc"

--001a113ce896d75d700558fce9cc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have bitbaked rpi-hwup-image for raspberry pi 3 on sd card and connected
the serial ports to *usb to ttl device* . i have set the minicom to
port: /dev/ttyUSB0
baud rate: 115200
the image is booting fine and i can see the prompt on the screen but cannot
see in my serial console using minicom.
*is serial enabled by default for this image ? *
i also tried ENABLE_UART =3D "1" in local.conf but doesn't help.

how to enable it ? and what the serial device name with respect to
raspberry pi

thanks,

--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>



=E2=80=8C

--001a113ce896d75d700558fce9cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"mailtrack-img" alt=
=3D"" style=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/a0a4afa=
6b354f54a22287e7d9fb585337adb304b.png?u=3D1822760">I have bitbaked=C2=A0rpi=
-hwup-image for raspberry pi 3 on sd card and connected the serial ports to=
 <i>usb to ttl device</i>=C2=A0. i have set the minicom to=C2=A0<br>port: /=
dev/ttyUSB0<div>baud rate:=C2=A0115200=C2=A0</div><div>the image is booting=
 fine and i can see the prompt on the screen but cannot see in my serial co=
nsole using minicom.=C2=A0</div><div><b>is serial enabled by default for th=
is image ?=C2=A0</b><br clear=3D"all"><div>i also tried ENABLE_UART =3D &qu=
ot;1&quot; in local.conf but doesn&#39;t help.=C2=A0</div><div><br></div><d=
iv>how to enable it ? and what the serial device name with respect to raspb=
erry pi</div><div><br></div><div>thanks,</div><div><br></div>-- <br><div cl=
ass=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font size=
=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,serif=
,EmojiFont"><span style=3D"font-size:13px">Yahia Farghaly=C2=A0</span></fon=
t><span style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,EmojiFont;font-size:16px"></span><div><font color=3D"#777777" f=
ace=3D"Tahoma, sans-serif, Arial, serif, EmojiFont"><span style=3D"font-siz=
e:13px">Graduated from Faculty of Engineering - Electronics and Communicati=
ons Department at Cairo University.</span></font><br></div><div style=3D"co=
lor:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFo=
nt;font-size:16px"><div><a href=3D"https://linkedin.com/in/yahiafarghaly" r=
el=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" style=3D"font=
-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:1=
3px">Linkedin</span></font></a><font size=3D"1" color=3D"#777777" style=3D"=
font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-si=
ze:13px">=C2=A0-=C2=A0</span></font><a href=3D"https://github.com/yahiafarg=
haly" rel=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" style=
=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"fon=
t-size:13px">GitHub</span></font></a></div></div></div></div></div></div>
<br><br><br>=E2=80=8C</div></div>

--001a113ce896d75d700558fce9cc--
