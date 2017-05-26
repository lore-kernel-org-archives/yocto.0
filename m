Return-Path: <gvandenbosch@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 857F2E00C1E; Fri, 26 May 2017 04:05:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gvandenbosch[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE153E00AE4
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 04:05:45 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id 7so124830618wmo.1
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 04:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=rjCzqUVMyssV5eseM3oxL0B4QpcyAAF0Ky7k/J/Y/sQ=;
	b=jQmJhinmW14qrcnJCS/DahB04SPUREMdkOrEYMqyFIJtr1hSvKEJo+I/y0q7NKEUgC
	UCaNtYk+SMjprDUpm5qBJN47WZdj8o33Ygpxe6a7SNXf0P6aIMxwTgwPn178x1KV6z32
	gHfRvFwkoVpFHzddCYrHghN77WFP2KEaXbqX0OmD23dyYqxvsuWLYrf+q9K2JWKELIaM
	NKFg8ecUc280jTSitWeva2JLWACckuczItF2zpxb3++3+CXsG/NvQhkQNBXB93OwdK+j
	IhBRx/3euC0r+0/Dzt589Sm/XfinA3BcqvVvhqWOujUXSu6KwWZJTZoiEW+FOzc36ZtV
	8n0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=rjCzqUVMyssV5eseM3oxL0B4QpcyAAF0Ky7k/J/Y/sQ=;
	b=okaH1E5iUKONUh9zzoXC4Ltxs7hDDbKUAgEUR3BmYuHBXrgyL4+y7sb7gbJ1lCg+XO
	zj+oZXGd9JP6zwh38cvd2JVwmwIchXPEV5Izz2uszL3s1zfAi9LsnGdRzhRje/1KJinA
	pyY+A0UjT+ITZ2RxMnG2cKEeeel72NtG1wI+lET7OQMquW0KiClLAcgQE748g6NPLI02
	kn1b0A0Bx34mLmwpc4KbY5ispuHUohg3a/rmfwkH4fV1xct0n0+vg8T1JFqRej4IHme6
	AhEVId7rGYAr3tRX4IhYoj0RAKUKp3DQqCk5yBU/QaqsZbXRfy+9+pHy2MqsMwkSlUbx
	OmmA==
X-Gm-Message-State: AODbwcDhnBQGF0woJRFdBSKCVmLZCV1KtoVlEoPT/wXJ3AIfMUS1Cgs1
	Rn0L7UHmGSBAuteMw7ZHnjdqJ0r1umTF
X-Received: by 10.28.136.83 with SMTP id k80mr12086658wmd.38.1495796744761;
	Fri, 26 May 2017 04:05:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.73.139 with HTTP; Fri, 26 May 2017 04:05:24 -0700 (PDT)
From: Gerard van den Bosch <gvandenbosch@gmail.com>
Date: Fri, 26 May 2017 19:05:24 +0800
Message-ID: <CADqNDzo_i22kiy7upOZfD2FoRsFAdJ6_+F7pDATSTonooN1fQQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Warning: unable to open an initial console
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
X-List-Received-Date: Fri, 26 May 2017 11:05:49 -0000
Content-Type: multipart/alternative; boundary="001a114440e4a0bb8505506b5143"

--001a114440e4a0bb8505506b5143
Content-Type: text/plain; charset="UTF-8"

Hello,

I have build my vendor custom kernel 2.6.20 with yocto daisy.
Daisy is used because seems to be last release supporting this old kernel.

I tried building core-image-minimal and core-image-base.

The kernel boots and the rootfs is mounted but then I get:

"Warning: unable to open an initial console."

I found on the internet this is because "/dev/console" doesn't exists.
The dev folder in my generated rootfs is empty.

On internet found can do the following commands:
"mknod -m 600 /dev/console c 5 1 "
"mknod -m 666 /dev/null c 1 3"

But if this is the problem how do I add this to my recipe?
Or is there a proper way to populate this devices?

Cheers,
Gerard

--001a114440e4a0bb8505506b5143
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I have build my vendor custom ke=
rnel 2.6.20 with yocto daisy.</div><div>Daisy is used because seems to be l=
ast release supporting this old kernel.</div><div><br></div><div>I tried bu=
ilding core-image-minimal and core-image-base.</div><div><br></div><div>The=
 kernel boots and the rootfs is mounted but then I get:</div><div>
<p style=3D"margin:0px">&quot;Warning: unable to open an initial console.&q=
uot;</p></div><div><br></div><div>I found on the internet this is because &=
quot;/dev/console&quot; doesn&#39;t exists.</div><div>The dev folder in my =
generated rootfs is empty.</div><div><br></div><div>On internet found can d=
o the following commands:</div><div>&quot;mknod -m 600 /dev/console c 5 1 &=
quot;</div><div>&quot;mknod -m 666 /dev/null c 1 3&quot;<br></div><div><br>=
</div><div>But if this is the problem how do I add this to my recipe?</div>=
<div>Or is there a proper way to populate this devices?</div><div><br></div=
><div>Cheers,</div><div>Gerard</div></div>

--001a114440e4a0bb8505506b5143--
