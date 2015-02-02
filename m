Return-Path: <Erwin.Rieger.ext@rohde-schwarz.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0701E00596; Mon,  2 Feb 2015 05:36:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [80.246.32.97 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 911 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 Feb 2015 05:36:25 PST
Received: from mail02.rohde-schwarz.com (mail02.rohde-schwarz.com
	[80.246.32.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A53E1E002F9
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 05:36:25 -0800 (PST)
Received: from amu315.rsint.net ([10.0.26.64]) by mail02.rohde-schwarz.com
	with ESMTP id 2015020214211078-209916 ;
	Mon, 2 Feb 2015 14:21:10 +0100 
Received: from rus19.rsint.net ([10.0.33.19])
	by amu315.rsint.net (Totemo SMTP Server) with SMTP ID 869
	for <yocto@yoctoproject.org>; Mon, 2 Feb 2015 14:21:10 +0100 (CET)
X-Disclaimed: 1
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
In-Reply-To: 
References: 
From: Erwin.Rieger.ext@rohde-schwarz.com
To: yocto@yoctoproject.org
Message-ID: <OFE9FE701D.62B0AD26-ONC1257DE0.004958B3-C1257DE0.004958B5@rohde-schwarz.com>
Date: Mon, 2 Feb 2015 14:21:08 +0100
X-Mailer: Lotus Domino Web Server Release 8.5.3FP6 HF1218 December 12, 2014
X-KeepSent: E9FE701D:62B0AD26-C1257DE0:004958B3;
	type=4; flags=0; name=$KeepSent
X-RUS_SENSITIVITY: 10
X-Sign: 0
X-MIMETrack: Itemize by SMTP Server on RSSMTP02/RSSMTP at 02.02.2015 14:21:10, 
	Serialize by Router on RSSMTP02/RSSMTP at 02.02.2015 14:36:34,
	Serialize complete at 02.02.2015 14:36:34
Subject: How to use different busybox defconfig's in the initramfs and rootfs image
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
X-List-Received-Date: Mon, 02 Feb 2015 13:36:36 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 004958B3C1257DE0_="

--=_alternative 004958B3C1257DE0_=
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hello list,

i have used Yocto to create a initramfs linux kernel and a corresponding ro=
otfs for a embedded linux system.

Things are working as expected, so far.

Now i want to fine-tune my setup and want to use a different busybox config=
uration in the initramfs as the one in the rootfs image.
For example, the initramfs busybox should contain support for switch-root a=
nd that is not needed in the rootfs.
On the other hand, the rootfs should contain a=C2=A0"full-fledged" busybox =
(with inetd enabled, for example).

So the question is: How can i build/install a package two times with differ=
ing configurations in one bitbake run?.

How can this be done the Yocto-way without copying busybox.bb and hacking i=
t the way i need it?

I've tried various combinations, e.g. bb-appending busybox, inheriting from=
 busybox and so on - but to no avail.

Maybe someone have an idea on how to do that?


PS:
* The kernel recipe is derived (bbappend) from=C2=A0core-image-minimal-init=
ramfs.
* Rootfs recipe is derived from=C2=A0core-image-minimal.bb.


--=C2=A0
Erwin Rieger
--=C2=A0

--=_alternative 004958B3C1257DE0_=
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8
Content-ID: <>

<font face=3D"Default Sans Serif,Verdana,Arial,Helvetica,sans-serif" size=
=3D"2"><font face=3D"Verdana, Arial, Helvetica, sans-serif">Hello list,</fo=
nt><div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;"><br><=
/div><div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">i h=
ave used Yocto to create a initramfs linux kernel and a corresponding rootf=
s for a embedded linux system.</div><div style=3D"font-family: Verdana, Ari=
al, Helvetica, sans-serif;"><br></div><div style=3D"font-family: Verdana, A=
rial, Helvetica, sans-serif;">Things are working as expected, so far.</div>=
<div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;"><br></di=
v><div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">Now i =
want to fine-tune my setup and want to use a different busybox configuratio=
n in the initramfs as the one in the rootfs image.</div><div style=3D"font-=
family: Verdana, Arial, Helvetica, sans-serif;">For example, the initramfs =
busybox should contain support for switch-root and that is not needed in th=
e rootfs.</div><div style=3D"font-family: Verdana, Arial, Helvetica, sans-s=
erif;">On the other hand, the rootfs should contain a&nbsp;"full-fledged" b=
usybox (with inetd enabled, for example).</div><div style=3D"font-family: V=
erdana, Arial, Helvetica, sans-serif;"><br></div><div style=3D"font-family:=
 Verdana, Arial, Helvetica, sans-serif;">So the question is: How can i buil=
d/install a package two times with differing configurations in one bitbake =
run?.</div><div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif=
;"><br></div><div style=3D"font-family: Verdana, Arial, Helvetica, sans-ser=
if;">How can this be done the Yocto-way without copying busybox.bb and hack=
ing it the way i need it?</div><div style=3D"font-family: Verdana, Arial, H=
elvetica, sans-serif;"><br></div><div style=3D"font-family: Verdana, Arial,=
 Helvetica, sans-serif;">I've tried various combinations, e.g. bb-appending=
 busybox, inheriting from busybox and so on - but to no avail.</div><div st=
yle=3D"font-family: Verdana, Arial, Helvetica, sans-serif;"><br></div><div>=
<font face=3D"Verdana, Arial, Helvetica, sans-serif">Maybe someone have an =
idea on how to do that?</font></div><div><font face=3D"Verdana, Arial, Helv=
etica, sans-serif"><br></font></div><div><font face=3D"Verdana, Arial, Helv=
etica, sans-serif"><br></font></div><div><font face=3D"Verdana, Arial, Helv=
etica, sans-serif">PS:</font></div><div><font face=3D"Verdana, Arial, Helve=
tica, sans-serif">* The kernel recipe is derived (bbappend) from&nbsp;core-=
image-minimal-initramfs.</font></div><div><font face=3D"Verdana, Arial, Hel=
vetica, sans-serif">* Rootfs recipe is derived from&nbsp;core-image-minimal=
.bb.</font></div><div><font face=3D"Verdana, Arial, Helvetica, sans-serif">=
<br></font></div><div><font face=3D"Verdana, Arial, Helvetica, sans-serif">=
<br></font></div><div><font face=3D"Verdana, Arial, Helvetica, sans-serif">=
<div>--&nbsp;</div><div>Erwin Rieger</div><div>--&nbsp;</div></font></div><=
div></div></font>

--=_alternative 004958B3C1257DE0_=--
