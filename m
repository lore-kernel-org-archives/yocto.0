Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36876E00D73; Tue, 23 Feb 2016 15:02:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B52E0E00D62
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 15:02:34 -0800 (PST)
Received: by mail-wm0-f49.google.com with SMTP id b205so12687928wmb.1
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 15:02:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=R2fb5zJp6NAvtP8ylaumtx2Oq8WAZp9tLhG+RmPLU04=;
	b=ZOE7O6G+Qur6FZQ+NBrBVBLGWJrOxi6WAad6bG2OtBA1hSfmoSxWfNvryKX9m3oCH9
	N6NlIHUoDE1DT0z9KXW6zI6EZroK7CP/Gx5Ucf32heUdSKkrGTMeUn/8lRxnsUs7wTaF
	yZ0JlhVouCrE/eVlozUgE+RmOH1rhM7FJMsBPN3eXzoT17Xsdzib5d11+l+v1b9VyzNe
	FBCphrNzameQ54y/Wdqv9MT/uRLryds9/yiqW4sP1n4VA5WnwEjvchcdQuu+vzqp8sr+
	9Kzx6nNGbFOxQ/fE7GNT1MueFEJDin/pqHQf63q3JS2QqPrIELqvU3MVsRE8D7r4tdn/
	ofSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=R2fb5zJp6NAvtP8ylaumtx2Oq8WAZp9tLhG+RmPLU04=;
	b=IUP3Fc5GK13uCYfYdn8Iy4sM2DSb/XhmVtaTDhwkMz+/6A4dbnLNs7G6wIGYrwsVGp
	UlnXMVTpjwbdusiOEKlnEMDLriHqE8u9RAa9DHqgJTppcBworpwYrL7pO3sOtZfJDnd4
	L67NyL8Yfww8mZllN+iVFiC05olWmlJBN2AOxXyPHZQbCQu+K/+/xB6LZ4MPnoeRjTol
	HLih2ZcmgUOEml80TOnICpGMnAArkvgL/qSd3UdBP0MCwp7bbPMw7Uo6gJaeqHjAgmMf
	g/Kan7f8gKpRMmOTabV7Wgsn7beoxOj5kQ6wOR6I+cMeOz3S7qKclZVuiu11g7jHMQti
	tY8A==
X-Gm-Message-State: AG10YOSVd3/1J6mnCl7BO69KI29JWkjRZM+fI8yh80piru4AHpPGqzr5mDSZaNHyzDop/i+O6a9iNkQibKt8zQ==
X-Received: by 10.28.229.132 with SMTP id c126mr19953650wmh.72.1456268554131; 
	Tue, 23 Feb 2016 15:02:34 -0800 (PST)
MIME-Version: 1.0
References: <CAP2S6e6T3LqwAaFF-cn7eUY4Y5QbiYy0Ej_LSZtbuF3GRomkLg@mail.gmail.com>
In-Reply-To: <CAP2S6e6T3LqwAaFF-cn7eUY4Y5QbiYy0Ej_LSZtbuF3GRomkLg@mail.gmail.com>
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Tue, 23 Feb 2016 23:02:24 +0000
Message-ID: <CAP2S6e4jFEo+Px26kYnR02DeL8TteHmY2mtCOyJHBwVkPBaSfw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, urnen81@yahoo.es
Subject: Re: [meta-chip] How to flash yocto's output into CHIP
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
X-List-Received-Date: Tue, 23 Feb 2016 23:02:37 -0000
Content-Type: multipart/alternative; boundary=001a1145bb92dde160052c77f1fb

--001a1145bb92dde160052c77f1fb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I searched a bit more :

The sunxi-spl-with-ecc.bin is built using the spl-image-builder bin in the
CHIP-tools folder (found here :
https://github.com/NextThingCo/CHIP-tools.git)
I found a set of parameters (here : line 52 :
https://github.com/soderstrom-rikard/CHIP-tools/blob/chip/stable/chip-fel-f=
lash.sh)
but I have no idea if it's right or wrong.
That would give us :
spl-image-builder -d -r 3 -u 4096 -o 1664 -p 16384 -c 1024 -s 64
sunxi-spl.bin sunxi-spl-with-ecc.bin

I found that the uboot-env.bin file is not used to flash the chip (using
chip-fel-flash.sh file).
But it should be easy to generate it as it is made with the "mkenvimage"
program that is found (an built by yocto) in the CHIP-uboot repo.

Still not flashing though.

I will look on the UART port of the chip for further tests. I hope to see
u-boot messages while flashing.



Le mar. 23 f=C3=A9vr. 2016 =C3=A0 21:09, Valentin Le bescond <
valentin.lebescond@gmail.com> a =C3=A9crit :

> Hi,
>
> I'm wondering if anyone managed to flash the CHIP board with a
> (successful) yocto image build.
>
> I didn't succeed but here are the few things I found :
>
> Comparing the files expected in CHIP-tools/ and the ones available in
> Yocto deploy/image/chip/ I see some are missing in yocto :
> uboot-env.bin
> sunxi-spl-with-ecc.bin
> I tried using the ones downloaded with chip-update-firmware.sh but it
> doesn't work...
>
> While flashing, at some point, the chip (in FEL mode) disconnects the USB
> connection. If it goes well the chip reconnects as a ttyACM0. If it
> doesn't go well (which is my case), chip never shows up !
>
> If anyone managed to get the thing working please let me know. If not I a=
m
> willing to try any idea you may have.
>
> Regards,
>
> Valentin
>

--001a1145bb92dde160052c77f1fb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>I searched a bit more :=
<br></div><div><br></div>The sunxi-spl-with-ecc.bin is built using the spl-=
image-builder bin in the CHIP-tools folder (found here : <a href=3D"https:/=
/github.com/NextThingCo/CHIP-tools.git">https://github.com/NextThingCo/CHIP=
-tools.git</a>)<br></div>I found a set of parameters (here : line 52 : <a h=
ref=3D"https://github.com/soderstrom-rikard/CHIP-tools/blob/chip/stable/chi=
p-fel-flash.sh">https://github.com/soderstrom-rikard/CHIP-tools/blob/chip/s=
table/chip-fel-flash.sh</a>) but I have no idea if it&#39;s right or wrong.=
 <br>That would give us :<br><span class=3D"pl-s">spl-image-builder</span> =
-d -r 3 -u 4096 -o 1664 -p 16384 -c 1024 -s 64 sunxi-spl.bin sunxi-spl-with=
-ecc.bin<br><br></div>I found that the uboot-env.bin file is not used to fl=
ash the chip (using chip-fel-flash.sh file).<br></div>But it should be easy=
 to generate it as it is made with the &quot;mkenvimage&quot; program that =
is found (an built by yocto) in the CHIP-uboot repo.<br></div><br></div>Sti=
ll not flashing though.<br><br></div>I will look on the UART port of the ch=
ip for further tests. I hope to see u-boot messages while flashing. <br><di=
v><div><div><div><div><br><br></div></div></div></div></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr">Le=C2=A0mar. 23 f=C3=A9vr. 2016 =C3=
=A0=C2=A021:09, Valentin Le bescond &lt;<a href=3D"mailto:valentin.lebescon=
d@gmail.com">valentin.lebescond@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div>Hi,<br><=
br></div>I&#39;m wondering if anyone managed to flash the CHIP board with a=
 (successful) yocto image build.<br><br></div>I didn&#39;t succeed but here=
 are the few things I found :<p>Comparing the files expected in CHIP-tools/=
 and the ones available in
 Yocto deploy/image/chip/ I see some are missing in yocto : <br>uboot-env.b=
in<br>sunxi-spl-with-ecc.bin</p>

I tried using the ones downloaded with  chip-update-firmware.sh but it does=
n&#39;t work...<br><br></div><div>While flashing, at some point, the chip (=
in FEL mode) disconnects the USB connection. If it goes well the chip recon=
nects as a <span><span>ttyA</span>CM0. If it doesn&#39;t go well (which is =
my case), chip never shows up !<br><br></span></div><div><span>If anyone ma=
naged to get the thing working please let me know. If not I am willing to t=
ry any idea you may have.<br><br></span></div><div><span>Regards,<br><br></=
span></div><div><span>Valentin</span></div></div></blockquote></div>

--001a1145bb92dde160052c77f1fb--
