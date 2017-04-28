Return-Path: <carlon.luca@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E66CE009CE; Fri, 28 Apr 2017 09:01:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (carlon.luca[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3726AE009A0
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 09:01:54 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id f187so44488545ite.1
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 09:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=kC6cpKGDOg/oGIZjP+lfLX7F35MY8i5M5/Er7Znx50E=;
	b=bb1EtNVIk3rYh1vUgzOGMdN+oxDW8GnPyQ2fg56H9mzqtsfg50iQy4Ej71Su2FDlY6
	7QD3eG4k1daZRwnHVG+Bx962pUDpK7BQsoVyst2PB4QWgziMxPAXrEL+Q2QTkCR5ymE8
	CLmwuzfcZ0G8vN22DvDLBK+ll4wl+k9gbdPa98uaNS9e4PtS6M3YQ5LORzQY9a9IGQTV
	dTeneyiLgqj9g7M9aGLz7Fnw9DZw+11J06XEB2RlDlFL/sttqOVSW9zUvVYiMN/hxly+
	nGOTa9M5o7sHsZ9v+Je7bbQBVLj+F+8qT+rg19taMbT6z+S/LE/jI48Av/GGE5K+nfQ/
	lDXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=kC6cpKGDOg/oGIZjP+lfLX7F35MY8i5M5/Er7Znx50E=;
	b=hPGSmyLua7vdYdcNRTZ9tKQ2fVVjzVoYMlfLgMeP+qDGW0z97PCvF8Ex1nFLtMdRpp
	KZYOMqNCz9jraHjwIFajIzegy9wNltY9NsdGZGmV8vlbp9w5xdsqcIXHGH3Dt8KF0Qe2
	apxGOEZFQi7C8eRsz6rjJdRUp+dhYLMIcI2jI6F0Mx12lmr/TqOTWhAzcMg8vkNMJHPq
	xcheXLWqkNPIl4SMaxNSemVu2zTb8uzrboNEBF8TsZZ5dLh08zdeLx+fad1NglwJFeKl
	2xwNUDPFiCnfJYMbcWHicUTOcKu5An19h3fNwdB3U21MOS92Nw9cXKvg8t+dASSsasd4
	vm0w==
X-Gm-Message-State: AN3rC/4YhqcJVjhX2GcFwByZL1vEEgrKc6DC4LH1hL+oxj1ilGgj0+EO
	Lm51VXUPyFrTD0UeqlNe5AIGy+sInWNQ
X-Received: by 10.157.33.89 with SMTP id l25mr4808782otd.141.1493395314062;
	Fri, 28 Apr 2017 09:01:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.63.197 with HTTP; Fri, 28 Apr 2017 09:01:53 -0700 (PDT)
From: Luca Carlon <carlon.luca@gmail.com>
Date: Fri, 28 Apr 2017 18:01:53 +0200
Message-ID: <CAMC=D=s=KwPN8ydYD+u0CXKJ-w4f3OtKu6f_rx-egEomjx37+Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] Building rpi-test-image for Pi3 64 bit
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
X-List-Received-Date: Fri, 28 Apr 2017 16:01:58 -0000
Content-Type: multipart/alternative; boundary=001a1135c02a343da3054e3c3186

--001a1135c02a343da3054e3c3186
Content-Type: text/plain; charset=UTF-8

Hello,
I'm trying to build rpi-test-image for Raspberry Pi 3 64 bit but I'm
getting this error: https://pastebin.com/rYJ0PL7h. It seems it is looking
for a file that is not there, and I don't see it in the linux repo either:
https://github.com/raspberrypi/linux/tree/53460a0a50f3dd5e60266e945d0ac794ce0eca77/arch/arm64/boot/dts
.

The same build seems to succeed for machine raspberrypi2 and raspberrypi3,
instead. Any idea what I may be doing wrong?
Thank you.

Luca

--001a1135c02a343da3054e3c3186
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br>I&#39;m trying to build rpi-test-image for Raspb=
erry Pi 3 64 bit but I&#39;m getting this error:=C2=A0<a href=3D"https://pa=
stebin.com/rYJ0PL7h">https://pastebin.com/rYJ0PL7h</a>. It seems it is look=
ing for a file that is not there, and I don&#39;t see it in the linux repo =
either:=C2=A0<a href=3D"https://github.com/raspberrypi/linux/tree/53460a0a5=
0f3dd5e60266e945d0ac794ce0eca77/arch/arm64/boot/dts">https://github.com/ras=
pberrypi/linux/tree/53460a0a50f3dd5e60266e945d0ac794ce0eca77/arch/arm64/boo=
t/dts</a>.<div><br><div><div><div>The same build seems to succeed for machi=
ne raspberrypi2 and raspberrypi3, instead. Any idea what I may be doing wro=
ng?</div><div>Thank you.</div><div><br></div><div>Luca</div></div></div></d=
iv></div>

--001a1135c02a343da3054e3c3186--
