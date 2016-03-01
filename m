Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C5FDE00C3A; Tue,  1 Mar 2016 10:06:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78F2DE00C11
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 10:06:12 -0800 (PST)
Received: by mail-wm0-f44.google.com with SMTP id p65so45110770wmp.0
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 10:06:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=2oiKEVyt13YcwuJuyeb3jKUKupH1B8uUBMNwIE8qoko=;
	b=oMQaUbD2dKXxSzWbW6NDVXmSgMHMVBV/1v1CKfL2fQ+u8j7b9Vly1qbPnQJe/9joHU
	lHxN6+Jzs6KHFiEyAKvqY7E1XE4jNmqsnlO3Lj2ZH3ZIXjQgChweiUkrKW37U/AMJq6V
	Y3t9b6VO6V2uyv0ZKtqB+m8QCEdiN7gGGwUDlt5ktxQnCABQPLTGnZJeyWfhfVUP2UoE
	Muh/xj5PaNIezIK4Vyu8YiWVHxQerq9aRDK6Cln5UG06+HfNP1wWPAZiXYyIi2dHWCcD
	k/UjTrOj9JtCjq5sDfZH4j1t1V8XmKkqJkKk9LoQBgX16k/bpjBFD0KkzHVrBLyPZWCz
	eLWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=2oiKEVyt13YcwuJuyeb3jKUKupH1B8uUBMNwIE8qoko=;
	b=RyNOAVNHnbF7cCO60Dt7w0GrIT3SPgEjX85raNEWvRqVVOAkfO7LZqVcD01qS6Odq7
	yJt+WHLoPlOxbRN5UkFVreilXrOy1DLY4qsIAiYz0ot1WrZAlFWOMFqHh7saLgTwxWHR
	0hbbkyk1E4apFKbnLeUh6hMR20+Xa2tXX9Dz59u0uUEZZSVv8on0dhK7rMP4gQD/F4vw
	4vYuj9FvQITWTlrT+kZQSgTKGEs/3e9SGuFGTK01g9O+YD11KKfvj06oyz1W7QnGiEbP
	zhPMUUNZBcsB5EpUQpyoOgFzkON0iBevZCwIqT2UGg+7zOYSPagVA/sObEmfsYQBkVLc
	xjeg==
X-Gm-Message-State: AD7BkJLOAzp9HD3HybGRJ2uecRtPC0nK7D7yhYs/09eRiFeMWpPbQ1HjtqnDaRT9FI3D03/u4E95ykqidll7Tg==
MIME-Version: 1.0
X-Received: by 10.194.95.40 with SMTP id dh8mr24550861wjb.146.1456855571795;
	Tue, 01 Mar 2016 10:06:11 -0800 (PST)
Received: by 10.28.126.135 with HTTP; Tue, 1 Mar 2016 10:06:11 -0800 (PST)
X-Originating-IP: [185.46.137.52]
Received: by 10.28.126.135 with HTTP; Tue, 1 Mar 2016 10:06:11 -0800 (PST)
In-Reply-To: <CAP2S6e4jFEo+Px26kYnR02DeL8TteHmY2mtCOyJHBwVkPBaSfw@mail.gmail.com>
References: <CAP2S6e6T3LqwAaFF-cn7eUY4Y5QbiYy0Ej_LSZtbuF3GRomkLg@mail.gmail.com>
	<CAP2S6e4jFEo+Px26kYnR02DeL8TteHmY2mtCOyJHBwVkPBaSfw@mail.gmail.com>
Date: Tue, 1 Mar 2016 19:06:11 +0100
Message-ID: <CAK18fxGSHfxxniOosyh8XvTBbU865DhRLfso4mkoXsa2PxtaDg@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Valentin Le bescond <valentin.lebescond@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 01 Mar 2016 18:06:19 -0000
Content-Type: multipart/alternative; boundary=047d7bea350ed8a929052d009ee9

--047d7bea350ed8a929052d009ee9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

On 24 Feb 2016 12:04 am, "Valentin Le bescond" <valentin.lebescond@gmail.co=
m>
wrote:
>
> I searched a bit more :
>
> The sunxi-spl-with-ecc.bin is built using the spl-image-builder bin in
the CHIP-tools folder (found here :
https://github.com/NextThingCo/CHIP-tools.git)
> I found a set of parameters (here : line 52 :
https://github.com/soderstrom-rikard/CHIP-tools/blob/chip/stable/chip-fel-f=
lash.sh)
but I have no idea if it's right or wrong.
> That would give us :
> spl-image-builder -d -r 3 -u 4096 -o 1664 -p 16384 -c 1024 -s 64
sunxi-spl.bin sunxi-spl-with-ecc.bin
>
> I found that the uboot-env.bin file is not used to flash the chip (using
chip-fel-flash.sh file).
> But it should be easy to generate it as it is made with the "mkenvimage"
program that is found (an built by yocto) in the CHIP-uboot repo.
>
> Still not flashing though.
>
> I will look on the UART port of the chip for further tests. I hope to see
u-boot messages while flashing.
>
>
>
> Le mar. 23 f=C3=A9vr. 2016 =C3=A0 21:09, Valentin Le bescond <
valentin.lebescond@gmail.com> a =C3=A9crit :
>>
>> Hi,
>>
>> I'm wondering if anyone managed to flash the CHIP board with a
(successful) yocto image build.
>>
>> I didn't succeed but here are the few things I found :
>>
>> Comparing the files expected in CHIP-tools/ and the ones available in
Yocto deploy/image/chip/ I see some are missing in yocto :
>> uboot-env.bin
>> sunxi-spl-with-ecc.bin
>>
>> I tried using the ones downloaded with chip-update-firmware.sh but it
doesn't work...
>>
>> While flashing, at some point, the chip (in FEL mode) disconnects the
USB connection. If it goes well the chip reconnects as a ttyACM0. If it
doesn't go well (which is my case), chip never shows up !
>>
>> If anyone managed to get the thing working please let me know. If not I
am willing to try any idea you may have.
>>

I did flash chip successfully with Yocto artifacts. Haven't tried since I
created the layer but it surely worked and should work now too. Hopefully
I'll get some time to try it.

Andrei

--047d7bea350ed8a929052d009ee9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hello,</p>
<p dir=3D"ltr">On 24 Feb 2016 12:04 am, &quot;Valentin Le bescond&quot; &lt=
;<a href=3D"mailto:valentin.lebescond@gmail.com">valentin.lebescond@gmail.c=
om</a>&gt; wrote:<br>
&gt;<br>
&gt; I searched a bit more :<br>
&gt;<br>
&gt; The sunxi-spl-with-ecc.bin is built using the spl-image-builder bin in=
 the CHIP-tools folder (found here : <a href=3D"https://github.com/NextThin=
gCo/CHIP-tools.git">https://github.com/NextThingCo/CHIP-tools.git</a>)<br>
&gt; I found a set of parameters (here : line 52 : <a href=3D"https://githu=
b.com/soderstrom-rikard/CHIP-tools/blob/chip/stable/chip-fel-flash.sh">http=
s://github.com/soderstrom-rikard/CHIP-tools/blob/chip/stable/chip-fel-flash=
.sh</a>) but I have no idea if it&#39;s right or wrong. <br>
&gt; That would give us :<br>
&gt; spl-image-builder -d -r 3 -u 4096 -o 1664 -p 16384 -c 1024 -s 64 sunxi=
-spl.bin sunxi-spl-with-ecc.bin<br>
&gt;<br>
&gt; I found that the uboot-env.bin file is not used to flash the chip (usi=
ng chip-fel-flash.sh file).<br>
&gt; But it should be easy to generate it as it is made with the &quot;mken=
vimage&quot; program that is found (an built by yocto) in the CHIP-uboot re=
po.<br>
&gt;<br>
&gt; Still not flashing though.<br>
&gt;<br>
&gt; I will look on the UART port of the chip for further tests. I hope to =
see u-boot messages while flashing. <br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Le=C2=A0mar. 23 f=C3=A9vr. 2016 =C3=A0=C2=A021:09, Valentin Le bescond=
 &lt;<a href=3D"mailto:valentin.lebescond@gmail.com">valentin.lebescond@gma=
il.com</a>&gt; a =C3=A9crit=C2=A0:<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m wondering if anyone managed to flash the CHIP board with a=
 (successful) yocto image build.<br>
&gt;&gt;<br>
&gt;&gt; I didn&#39;t succeed but here are the few things I found :<br>
&gt;&gt;<br>
&gt;&gt; Comparing the files expected in CHIP-tools/ and the ones available=
 in Yocto deploy/image/chip/ I see some are missing in yocto : <br>
&gt;&gt; uboot-env.bin<br>
&gt;&gt; sunxi-spl-with-ecc.bin<br>
&gt;&gt;<br>
&gt;&gt; I tried using the ones downloaded with chip-update-firmware.sh but=
 it doesn&#39;t work...<br>
&gt;&gt;<br>
&gt;&gt; While flashing, at some point, the chip (in FEL mode) disconnects =
the USB connection. If it goes well the chip reconnects as a ttyACM0. If it=
 doesn&#39;t go well (which is my case), chip never shows up !<br>
&gt;&gt;<br>
&gt;&gt; If anyone managed to get the thing working please let me know. If =
not I am willing to try any idea you may have.<br>
&gt;&gt;</p>
<p dir=3D"ltr">I did flash chip successfully with Yocto artifacts. Haven&#3=
9;t tried since I created the layer but it surely worked and should work no=
w too. Hopefully I&#39;ll get some time to try it.</p>
<p dir=3D"ltr">Andrei</p>

--047d7bea350ed8a929052d009ee9--
