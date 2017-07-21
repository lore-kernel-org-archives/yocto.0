Return-Path: <dinara.vv@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C80E1E00944; Fri, 21 Jul 2017 04:09:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dinara.vv[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFFFDE0083A
	for <yocto@yoctoproject.org>; Fri, 21 Jul 2017 04:09:27 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id w191so5695589wmw.1
	for <yocto@yoctoproject.org>; Fri, 21 Jul 2017 04:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=qZIB6Co0rtzksOSOnfggcicKFCEyRWuaz9noKTC6MVM=;
	b=gPcMe7NROk7wk1GwVu1eC4OHwY267+jjWBONVBqr6uzml7GToOafUfXrQk12BKx6p5
	RU5oWqPKJE3hpnGEEZ5gNlKeDjZS6hplwUBJxjEqAuiuL49xFJLnIRvMHNqS0Fk+0ToU
	4/nH+/0o1i4YaGGt8svtmmIJSCNeeo9JvsgUQGfys4bbVmL8aIHs6Jq7ca11/oRtFzE3
	yV9BanZPLAnvaVqNMWZ2b363h7ipRHPlwymrs6p6pyjrfB8J8aLGKwfMHGwI5yWjUtp/
	snVMtm4LGo3Lrk8OrV2VGANyoHdIqvoL/vaNs3oPEN8d2cZIk9MKQGTMqXkJ2IjVblG9
	cZLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=qZIB6Co0rtzksOSOnfggcicKFCEyRWuaz9noKTC6MVM=;
	b=aQPwGtWisomnkD2nGYxJkxJR1ZccHhd0sIuEW/5fj3bxENzIe8LdfxwNePSOy+qQT2
	0gSAQenSFh95L9xZY3Rx5aaIeJ1YkeWt+Q/zAEZu43c2vp1G1/mwVaq3IkFHNmXyfWo8
	zf+0WPfOCl+RMZkYOPYZXRUXDlOhRd9eHwUc1O7rKPXuDaXjHZir6G0l/tkoOthf7oe5
	Z/HoqfSZnp5KTzLRLOCZm9ivL31IUnVkLpgPHONb3Ja3CVsj+qdIjhamyVTAqMCF94bo
	nawT0KFGWm2ovGv5KIRxWKsMeYbgaXk3On8GUgj/6547eewIkOmB4coH10cnZMlEjeLi
	q9zA==
X-Gm-Message-State: AIVw112pWXtLAtPkP8YeZosTgLaHMSD7VuRZuA7+n8LOEwE4PenQpRGW
	W0rGFuQOqc7tF3E9iY4WHyhC+AGQCPK4
X-Received: by 10.80.168.132 with SMTP id k4mr5741146edc.198.1500635366779;
	Fri, 21 Jul 2017 04:09:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.185.38 with HTTP; Fri, 21 Jul 2017 04:09:26 -0700 (PDT)
From: Dinara Vadimovna <dinara.vv@gmail.com>
Date: Fri, 21 Jul 2017 13:09:26 +0200
Message-ID: <CAB+WSgz7XFVhyw7+WRt=1e-vpNc0Gr2vZSJBd-+owrzE_Q8GGg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: new machine on mips32 r5
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
X-List-Received-Date: Fri, 21 Jul 2017 11:09:28 -0000
Content-Type: multipart/alternative; boundary="94eb2c195006f9725a0554d1e5c7"

--94eb2c195006f9725a0554d1e5c7
Content-Type: text/plain; charset="UTF-8"

Hi,

Actually I'm quite a beginner with Yocto project. And in general with all
of this story of processors and processor architecture.
In my studying project I have to build Linux for a hardware on processor
P5600 MIPS
<https://ru.wikipedia.org/wiki/MIPS_(%D0%B0%D1%80%D1%85%D0%B8%D1%82%D0%B5%D0%BA%D1%82%D1%83%D1%80%D0%B0)>32
Release 5. And I am recently trying to do it. I have some questions that
can be quite general but I can not understand.

1) As I could found in openembedded git there is a meta layer meta-image
that has some of the include files for mips architecture. But only for
mips32/64 r2/r6 et not for my processor exacltly something like
*tune-mips32r2.inc*. And I can't understand what exactly I should do.
Does it mean that I have to create one other .inc-file for this processor
or not? is it generally the same as for other mips processors? If you can
advise me something it will be greate. what exactly I have to do?

2) As I've catched for my machine I have two ways to create an image
- create a new bsp layer using *yocto-bsp* command (in the properties I
have to chose those for my machine.), add it to bblayers before build,
chose MACHINE ?= "mymachine" in local.conf. And that is all

- make my own machine.conf file with the specifications for my machine and
chose MACHINE ?= "mymachine" in local.conf (which I think yocto-bsp do
itself).

I don't understand where I specificate that it is on P5600 MIPS
<https://ru.wikipedia.org/wiki/MIPS_(%D0%B0%D1%80%D1%85%D0%B8%D1%82%D0%B5%D0%BA%D1%82%D1%83%D1%80%D0%B0)>32
Release 5 processor. Do I have to do it and if so how exactly?

Also do I have to change kernel properties or anything else?

3) one question off topic:
Can I run any image (whatever it is fir harware or simulation) with qemu
emulator or not?


Thanks a lot

And have a nice day!

Dinara

--94eb2c195006f9725a0554d1e5c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Actually I&#39;m quite a beginner w=
ith Yocto project. And in general with all of this story of processors and =
processor architecture.</div><div>In my studying project I have to build Li=
nux for a hardware on processor=C2=A0<span style=3D"font-family:sans-serif;=
font-size:14px">P5600=C2=A0</span><a href=3D"https://ru.wikipedia.org/wiki/=
MIPS_(%D0%B0%D1%80%D1%85%D0%B8%D1%82%D0%B5%D0%BA%D1%82%D1%83%D1%80%D0%B0)" =
title=3D"MIPS (=D0=B0=D1=80=D1=85=D0=B8=D1=82=D0=B5=D0=BA=D1=82=D1=83=D1=80=
=D0=B0)" style=3D"text-decoration-line:none;color:rgb(11,0,128);background-=
image:none;background-position:initial;background-size:initial;background-r=
epeat:initial;background-origin:initial;background-clip:initial;font-family=
:sans-serif;font-size:14px">MIPS</a><span style=3D"font-family:sans-serif;f=
ont-size:14px">32 Release 5. And I am=C2=A0</span>recently trying to do it.=
 I have some questions that can be quite general but I can not understand.<=
/div><div><br></div><div>1) As I could found in openembedded git there is a=
 meta layer meta-image that has some of the include files for mips architec=
ture. But only for mips32/64 r2/r6 et not for my processor exacltly somethi=
ng like <i>tune-mips32r2.inc</i>. And I can&#39;t understand what exactly I=
 should do.=C2=A0</div><div>Does it mean that I have to create one other .i=
nc-file for this processor or not? is it generally the same as for other mi=
ps processors? If you can advise me something it will be greate. what exact=
ly I have to do?</div><div><br></div><div>2) As I&#39;ve catched for my mac=
hine I have two ways to create an image=C2=A0</div><div>- create a new bsp =
layer using=C2=A0<i>yocto-bsp</i> command (in the properties I have to chos=
e those for my machine.), add it to bblayers before build, chose MACHINE ?=
=3D &quot;mymachine&quot; in local.conf. And that is all</div><div>=C2=A0</=
div><div>- make my own machine.conf file with the specifications for my mac=
hine and chose MACHINE ?=3D &quot;mymachine&quot; in local.conf (which I th=
ink yocto-bsp do itself).<br></div><div><br></div><div>I don&#39;t understa=
nd where I specificate that it is on=C2=A0<span style=3D"font-family:sans-s=
erif;font-size:14px">P5600=C2=A0</span><a href=3D"https://ru.wikipedia.org/=
wiki/MIPS_(%D0%B0%D1%80%D1%85%D0%B8%D1%82%D0%B5%D0%BA%D1%82%D1%83%D1%80%D0%=
B0)" title=3D"MIPS (=D0=B0=D1=80=D1=85=D0=B8=D1=82=D0=B5=D0=BA=D1=82=D1=83=
=D1=80=D0=B0)" style=3D"color:rgb(11,0,128);background-image:none;backgroun=
d-position:initial;background-size:initial;background-repeat:initial;backgr=
ound-origin:initial;background-clip:initial;text-decoration-line:none;font-=
family:sans-serif;font-size:14px">MIPS</a><span style=3D"font-family:sans-s=
erif;font-size:14px">32 Release 5 processor. Do I have to do it and if so h=
ow exactly?</span></div><div><span style=3D"font-family:sans-serif;font-siz=
e:14px"><br></span></div><div>Also do I have to change kernel properties or=
 anything else?</div><div><br></div><div>3) one question off topic:</div><d=
iv>Can I run any image (whatever it is fir harware or simulation) with qemu=
 emulator or not?</div><div><br></div><div><br></div><div>Thanks a lot</div=
><div><br></div><div>And have a nice day!</div><div><br></div><div>Dinara</=
div></div>

--94eb2c195006f9725a0554d1e5c7--
