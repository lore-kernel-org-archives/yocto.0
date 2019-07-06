Return-Path: <sb@baader.hu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93CF0E00C9E; Sat,  6 Jul 2019 10:07:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
	[209.85.167.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC189E00B8D
	for <yocto@yoctoproject.org>; Sat,  6 Jul 2019 10:07:20 -0700 (PDT)
Received: by mail-oi1-f179.google.com with SMTP id t76so9400906oih.4
	for <yocto@yoctoproject.org>; Sat, 06 Jul 2019 10:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=baader-hu.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=gpsTOHgHXRxRzK0lHnJ+dO2qUov+W0euxenpFXhDTO0=;
	b=xBatUcqm8WPQ9OLaOJH3qoOEuoz9UU9xN3LeKhX60YU/hFPpKNmMyFGrWz92xzUMJy
	/yHMzJJ5SkEWi2liBAJZzLf2aHZtJeKMjj0nzMT42Vw3HbNo+A46DtZpf5hCTnXd1e8H
	yFxX6utM0TKYuF+rVMV+w8CEauc27gEVh9DFMf7GSCCvM4wHE4rVDhkzlfX5IGg0OgDB
	zZan+9T3KRp2gVBm3EQdFY7bJ9XWhpuTHg3FUkNeyqJFJIGaEvlHiIwkKe3k4MGZy7SF
	MKKH6+GSbJ0D6Gu9rIdz9VxXaHYXO/aH40+rsbLGe1ylPpA3/tzeXC6RKPBzXCZjhgxM
	nSUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gpsTOHgHXRxRzK0lHnJ+dO2qUov+W0euxenpFXhDTO0=;
	b=sZ5e1KjrmujN1oX17fZNQYlmXIW7GAaPlZ5HQECKRS9Sjz5ghz0f838ZjkLaipLc/1
	EO9oZa/Uj0VxQR4cE4elLFrd/2HcDqrhIUpYzFqeQW4yIzchCZMM7DdyZjO1eviNBAe5
	MamuBhk0pSBdSrmP0oTWG5kS3k9epvwQpvJ7qco82rMYnFX6JoMqVlA2mqOcSlFwVxfA
	Xhbq8XLG52oTTnyeepdXiT/rgWoA8nWTNSj+oN1r4+Z63ywVpHRND298T9PeQsVLIikh
	0HxC+TgjmvJTKVEeIpbj/jUghb3YHehYrWkTfjpFAbonNguJiEcKUiVjsGkAz0r8CsYz
	x+Wg==
X-Gm-Message-State: APjAAAWWwjgnTl4M2rAt0wsQGgRcsdXJauWeud/VinTsJZXFr8hxSe7B
	b2I+RyByoxSdDabOKg4stCxNVbrOsU/c8246ev1XsGQDkHISYw==
X-Google-Smtp-Source: APXvYqyTWvINWtAkItogehOnbP2NmN6HwiuHHmKNHHGqfvTeXCzoGgH4Il3DIgal85J7xUqmLMI7egl1egaX8RBrEUU=
X-Received: by 2002:aca:c64d:: with SMTP id w74mr5190906oif.137.1562432839203; 
	Sat, 06 Jul 2019 10:07:19 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Szabolcs_B=C3=A1der?= <sb@baader.hu>
Date: Sat, 6 Jul 2019 19:07:08 +0200
Message-ID: <CAH_3R3KTkkpWak8bftvyL9ipXNnVHJKDLceAufMR22gJ0oZXGg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Help to add uboot/standalone binary program for yocto projects
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
X-List-Received-Date: Sat, 06 Jul 2019 17:07:21 -0000
Content-Type: multipart/alternative; boundary="0000000000005dd2c9058d063e14"

--0000000000005dd2c9058d063e14
Content-Type: text/plain; charset="UTF-8"

Hello

I follow my last email, I solved the reboot things. Works fine.. but I
found a cool/interesting thing, what I would like to integrate. >>

I read about standalone binaries (from C, or with Rust generated too?)
could use at uboot.
http://www.denx.de/wiki/view/DULG/UBootCmdGroupExec#Section_5.9.4.1
Hello World example: http://www.denx.de/wiki/view/DULG/UBootStandalone

I understand but really not, how possible use with Yocto. I just create a
similar hello_world.c program like at example and solved? Drop to the same
folder? .. (I use rpi3.) Somebody did similar thing in the past? Or good
example?

On Stackoverflow:
https://stackoverflow.com/questions/49814470/u-boot-how-to-run-a-standalone-binary-program
"You can use the Yocto toolchain but you cannot link against the C library
(which is done by default) so you have to put some extra options to GCC to
let it know that, also, you cannot use the go instruction from U-Boot to
jump to an ELF binary that you just loaded in memory, the ELF binary has to
be converted to a 'raw' binary (list of ARM instructions in your case) with
the tool objdump. An ELF binary it's a specific format that encapsulate
your code/your data and some extra information, and the first part of the
ELF is the description of the binary, so right now, when you do a go at the
first address, you are trying to tell the CPU to execute something which is
not an ARM instruction. You basically want to execute what we call the
'.text' section of the ELF binary."

Many thanks,
Szabolcs

--0000000000005dd2c9058d063e14
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello</div><div><br></div><div>I follow my last email=
, I solved the
 reboot things. Works fine.. but I found a cool/interesting thing, what I
 would like to integrate. &gt;&gt;</div><div><br></div><div>I read about st=
andalone binaries (from C, or with Rust generated too?) could use at uboot.=
 <br></div><div><a href=3D"http://www.denx.de/wiki/view/DULG/UBootCmdGroupE=
xec#Section_5.9.4.1" target=3D"_blank">http://www.denx.de/wiki/view/DULG/UB=
ootCmdGroupExec#Section_5.9.4.1</a></div><div>Hello World example: <a href=
=3D"http://www.denx.de/wiki/view/DULG/UBootStandalone" target=3D"_blank">ht=
tp://www.denx.de/wiki/view/DULG/UBootStandalone</a></div><div><br></div><di=
v>I
 understand but really not, how possible use with Yocto. I just create a
 similar hello_world.c program like at example and solved? Drop to the=20
same folder? .. (I use rpi3.) Somebody did similar thing in the past? Or
 good example?<br></div><div><br></div><div>On Stackoverflow: <a href=3D"ht=
tps://stackoverflow.com/questions/49814470/u-boot-how-to-run-a-standalone-b=
inary-program" target=3D"_blank">https://stackoverflow.com/questions/498144=
70/u-boot-how-to-run-a-standalone-binary-program</a></div><div>&quot;You ca=
n use the Yocto toolchain but you cannot link against the C=20
library (which is done by default) so you have to put some extra options
 to GCC to let it know that, also, you cannot use the <code>go</code>=20
instruction from U-Boot to jump to an ELF binary that you just loaded in
 memory, the ELF binary has to be converted to a &#39;raw&#39; binary (list=
 of=20
ARM instructions in your case) with the tool <code>objdump</code>. An=20
ELF binary it&#39;s a specific format that encapsulate your code/your data=
=20
and some extra information, and the first part of the ELF is the=20
description of the binary, so right now, when you do a <code>go</code>=20
at the first address, you are trying to tell the CPU to execute=20
something which is not an ARM instruction. You basically want to execute
 what we call the &#39;.text&#39; section of the ELF binary.&quot;</div><di=
v><br></div><div>Many thanks,</div><div>Szabolcs</div></div>

--0000000000005dd2c9058d063e14--
