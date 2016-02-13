Return-Path: <haemarkus@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77CECE00CF2; Sat, 13 Feb 2016 09:12:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (haemarkus[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBE35E00CEE
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 09:12:44 -0800 (PST)
Received: by mail-lb0-f182.google.com with SMTP id x4so60289802lbm.0
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 09:12:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=3qYruwXpl95/IAF3zoVLrImv9Au7R3rjjVhY0yWLZeY=;
	b=gcjwyUZ+PJ6XfzB1UkdFKwMYOTivTMZuTZ9ccgtTsbACmDJuVTESAnVjlOvxwClxwe
	W0qiYwWtuYdLBADIV2sl+hEiMbtg/ZAgLc56CzcZVfdn7j4Ft70xSN/4HEGjcKVMZ4KU
	2BQSq8V0YC9OymyWDY+6ERO2pczVjJteGlEafocurm7CFT6287EYxhxP2NW9I42e13s6
	9rzkURpQ3MPMOTi4qr6Ye1Or+wJ7hnVc05MsSDKrlo3/y+3Sf49qfSrvEPP8ZJ62gQm0
	iF4dRsT3IdbFLL7HXL1riUohPN89lLbXrko2eu7hukiWvvjCiAfcOR+n41uE1EykvHS4
	qg5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=3qYruwXpl95/IAF3zoVLrImv9Au7R3rjjVhY0yWLZeY=;
	b=eG+l/+RPOrUZHagI/XJnG2mHcn48oxLaL/yQM9RtL0bLYnMvOgdz9H90Usd9LE24aK
	ihwNJFIfdUynRVmFDqcP+Z1s4iP3hS0PVCdkM6Ocmy2JAubcfWOFGYT2WM6WqaXJ9Li6
	ngZ9qHDSJo2NRc1+Z3eK5oclp1OIRo9WOfge9x7zqVdVb/1jnJrgiG72KWSz1l/gYafA
	6uz8LSgIWepHCw2ZIFWnh9dPOglQ6Zd0OBfYCPdreGh22XEwApTVHK6nIiKfW1+ibYs6
	nmoGudFGqfN33sDowab1QW4sRJ41JHLR7lY4fzVGhQJkOVHzUPOl/GA/6DUtE3QUMAgC
	XE1w==
X-Gm-Message-State: AG10YOSf39YBHCzMcxuPYDti0fiGDdLRNp/vJPcCnKz/hhEefEqMryQkZ3THFOTvu9EpAQdwb3QZX1uTHr+GCA==
MIME-Version: 1.0
X-Received: by 10.112.138.66 with SMTP id qo2mr3272651lbb.35.1455383562672;
	Sat, 13 Feb 2016 09:12:42 -0800 (PST)
Received: by 10.112.75.9 with HTTP; Sat, 13 Feb 2016 09:12:42 -0800 (PST)
Date: Sat, 13 Feb 2016 18:12:42 +0100
Message-ID: <CAJ0mxByFQ9WxhorQ7Es6f7Drf+RZE5eMMxUQMR+KXGZBd9nZgw@mail.gmail.com>
From: Markus Haege <haemarkus@gmail.com>
To: yocto@yoctoproject.org
Subject: doesn't find toolchain in new branch
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
X-List-Received-Date: Sat, 13 Feb 2016 17:12:48 -0000
Content-Type: multipart/alternative; boundary=089e01182ddc43e171052ba9e438

--089e01182ddc43e171052ba9e438
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello there,

I'm new to yocto-linux and don't find the right information in the net.
After I read lots of manuals and HowTo's
I build an image for the raspberry Pi in the default folder. This works, I
accessed it via SSH.
Then I wanted to make my own branch /poky/meta-raspberrypi and it doesn't
find the crosscompiler.
I tried some commands like bitbake meta-toolchain
but it doesn't work.


make: arm-poky-linux-gnueabi-gcc: Command not found
| make: *** No rule to make target '=E2=88=92j'.  Stop.
| WARNING: exit code 1 from a shell command.


A very BeginnerQuestion but nothing helps.

thanks

Markus

--089e01182ddc43e171052ba9e438
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello there,<div><br></div><div>I&#39;m new to yocto-linux=
 and don&#39;t find the right information in the net. After I read lots of =
manuals and HowTo&#39;s</div><div>I build an image for the raspberry Pi in =
the default folder. This works, I accessed it via SSH.</div><div>Then I wan=
ted to make my own branch /poky/meta-raspberrypi and it doesn&#39;t find th=
e crosscompiler.</div><div>I tried some commands like=C2=A0<span style=3D"c=
olor:rgb(255,255,255);font-size:13.3333px;background-color:rgb(51,51,51)">b=
itbake meta-toolchain=C2=A0</span></div><div>but it doesn&#39;t work.</div>=
<div><br></div><div><br></div><div><div>make: arm-poky-linux-gnueabi-gcc: C=
ommand not found</div><div>| make: *** No rule to make target &#39;=E2=88=
=92j&#39;.=C2=A0 Stop.</div><div>| WARNING: exit code 1 from a shell comman=
d.</div></div><div><br></div><div><br></div><div>A very BeginnerQuestion bu=
t nothing helps.</div><div><br></div><div>thanks</div><div><br></div><div>M=
arkus</div></div>

--089e01182ddc43e171052ba9e438--
