Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDBDAE006F9
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 15:32:44 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id kp14so48733pab.36
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 15:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=sNM1vdysU7JSTGcm7yQFELCcJkyRVFlSXCUtOaPiYLI=;
	b=RzJw4EXHE31V6Xh+6tw4UuvCK7ezEjt9vKrmwvLgJkLowj81lu9KKE+yuC0f3B18Nh
	1v1rec+RXz3hLGW7jeX9JWcDkGEunXC5TP3NxHnBuuD1503R21EKlMKeN4irjJQ3u7el
	Rq1ct1xBU24uCMp92EHCdV2qtkrxh5atfygf/P71ZnRaVnLo4+jPxLQZsWZdfp71xxgw
	JL5URBkakPQRqx0MlJFMZ9AyhTUH+UeuyjY6aLy/jV0A+RLA7gH5ptIXU9OYqCMYBXLx
	2/wJSh8bmyja6mnjDu0aPjGzmfQqKlHqRsb9mI8LNmoHdGNpoohgPBvjpxqu6lXQI7ZT
	du5Q==
X-Received: by 10.66.83.65 with SMTP id o1mr17771753pay.195.1366669964565;
	Mon, 22 Apr 2013 15:32:44 -0700 (PDT)
Received: from sa-nc-common-173.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPS id ef4sm26677684pbd.38.2013.04.22.15.32.43
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 22 Apr 2013 15:32:43 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <0342A6AD36648742A199353A51DDC7031155B93D@ESESSMB305.ericsson.se>
Date: Mon, 22 Apr 2013 15:32:42 -0700
Message-Id: <778F75EC-D5AD-416E-99D7-7AC4244F8D89@gmail.com>
References: <0342A6AD36648742A199353A51DDC70311546C9C@ESESSMB305.ericsson.se>
	<CAMKF1sp5Rq-mwpM79J3vr7LmZyyQFHBRz7WDhtKXpVBUimHokQ@mail.gmail.com>
	<0342A6AD36648742A199353A51DDC7031155B93D@ESESSMB305.ericsson.se>
To: Jonas Jonsson L <jonas.l.jonsson@ericsson.com>
X-Mailer: Apple Mail (2.1503)
Cc: "Yocto Mailinglist \(yocto@yoctoproject.org\)" <yocto@yoctoproject.org>
Subject: Re: SSTATE_MIRRORS problems, libpthread.so.0 not found ...
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
X-List-Received-Date: Mon, 22 Apr 2013 22:32:44 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1D39EDFF-2910-482F-B2BA-B52B762831B4"

--Apple-Mail=_1D39EDFF-2910-482F-B2BA-B52B762831B4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


On Apr 22, 2013, at 7:40 AM, Jonas Jonsson L =
<jonas.l.jonsson@ericsson.com> wrote:

> Hi, sorry for late answer, but yes, the libpthread-files exists in my =
customized sandbox sysroot (as well as in the =91clean=92 sandbox =
sysroot).  The (autotooled) project that I=92m build is trying to link =
an application and it uses CXXLD (which is CXX =3D> =
arm-poky-linux-gnuabi-g++).=20
> LD has the =96sysroot flag appended in the command, CXXLD doesn=92t =
have it (according to the generated Makefile).  Am I or autotools doing =
something wrong here?
> =20

who is defining CXXLD ?
you should probably capture it in bit bake.conf if its common enough if =
not then you should append ${TOOLCHAIN_OPTIONS} to it via recipe



> /Jonas
> =20
> =20
> From: Khem Raj [mailto:raj.khem@gmail.com]=20
> Sent: den 14 april 2013 23:48
> To: Jonas Jonsson L
> Cc: Yocto Mailinglist (yocto@yoctoproject.org)
> Subject: Re: [yocto] SSTATE_MIRRORS problems, libpthread.so.0 not =
found ...
> =20
>=20
>=20
> On Thursday, April 11, 2013, Jonas Jonsson L =
<jonas.l.jonsson@ericsson.com> wrote:
> > Hi!
> >
> > =20
> >
> > I=92m building several different Raspberry Pi images that are almost =
the same, some configuration issues (ip-address, hostnames etc) differs =
on those different images.  My solution was to simply build a =91clean=92 =
image without any tweaking, then use all the packages from the =91clean=92=
 image via SSTATE_MIRRORS and build my images with their own =
peculiarities.  The =91clean=92 image is basically a =
=91core-image-minimal=92 image (rpi-hwup-image for Raspberry Pi).
> >
> > =20
> >
> > So in =91clean=92 I have the sstate-cache, and in the other =
configurations, I set up
> >
> > SSTATE_MIRRORS ?=3D =93file://.* =
file:///home/foobar/clean/sstate-cache/PATH=94
> >
> > in my local.conf =85.  It works like a charm with regards to speed =
and disk-space.
> >
> > =20
> >
> > The package that I=92ve built builds clean without any warnings in =
the =91clean=92 build.  However, if I don=92t build my package in the =
clean image, but in one of my =91configured=92 images, it fails.  All of =
a sudden, the linker can=92t find neither /lib/libpthread.so.0 nor =
/usr/lib/libpthread_nonshared.a L
> >
>=20
> It seems you have totally different workspaces per image which share =
same state is that right ?
>=20
> Do you have these files populated in one of customised sandboxes=20
>=20
> Linker should look into the customised Sandbox's sysroot not clean =
sandbox one
> > =20
> >
> > buildfolder/tmp/sysroots/raspberrypi > ls -ll lib/libpthread.so.0 =
usr/lib/libpthread_nonshared.a lib/libpthread-2.17.so
> >
> > -rwxr-xr-x 1 foobar bitbakers 960802 Apr 11 12:47 =
lib/libpthread-2.17.so
> >
> > lrwxrwxrwx 1 foobar bitbakers     18 Apr 11 12:47 =
lib/libpthread.so.0 -> libpthread-2.17.so
> >
> > -rw-r--r-- 1 foobar bitbakers   3376 Apr 11 12:47 =
usr/lib/libpthread_nonshared.a
> >
> > =20
> >
> > What=92s going on here?  The sysroot (for the GNU tools) points to =
the correct folder, and the project is a standard autotools project, =
thus no magic involved.  Is there any particular dependency that I must =
set up in order to use pthreads?=20
> >
> > =20
> >
> > Any ideas?  By the way, I=92m on poky/master (march 7:th), =91git =
log =96n 1=92 shows =916d9a3ac0515380d0789ee3d316c08212592a6f9a=92 (if =
that=92s interesting=85)
> >
> > =20
> >
> > Best regards,
> >
> > Jonas Jonsson


--Apple-Mail=_1D39EDFF-2910-482F-B2BA-B52B762831B4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"><base href=3D"x-msg://312/"></head><body =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><br><div><div>On Apr 22, 2013, =
at 7:40 AM, Jonas Jonsson L &lt;<a =
href=3D"mailto:jonas.l.jonsson@ericsson.com">jonas.l.jonsson@ericsson.com<=
/a>&gt; wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><div class=3D"WordSection1" style=3D"page: WordSection1; "><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif; "><span style=3D"font-size: 11pt; font-family: =
Calibri, sans-serif; color: rgb(31, 73, 125); ">Hi, sorry for late =
answer, but yes, the libpthread-files exists in my customized sandbox =
sysroot (as well as in the =91clean=92 sandbox sysroot). &nbsp;The =
(autotooled) project that I=92m build is trying to link an application =
and it uses CXXLD (which is CXX =3D&gt; =
arm-poky-linux-gnuabi-g++).&nbsp;<o:p></o:p></span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif; "><span style=3D"font-size: 11pt; font-family: =
Calibri, sans-serif; color: rgb(31, 73, 125); ">LD has the =96sysroot =
flag appended in the command, CXXLD doesn=92t have it (according to the =
generated Makefile).&nbsp; Am I or autotools doing something wrong =
here?<o:p></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif; "><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125); =
">&nbsp;</span></div></div></div></blockquote><div><br></div><div>who is =
defining CXXLD ?</div><div>you should probably capture it in bit =
bake.conf if its common enough if not then you should =
append&nbsp;${TOOLCHAIN_OPTIONS} to it via =
recipe</div><div><br></div><div><br></div><br><blockquote =
type=3D"cite"><div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><div class=3D"WordSection1" style=3D"page: WordSection1; "><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif; "><span style=3D"font-size: 11pt; font-family: =
Calibri, sans-serif; color: rgb(31, 73, 125); =
">/Jonas<o:p></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif; "><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125); ">&nbsp;</span></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif; =
"><span style=3D"font-size: 11pt; font-family: Calibri, sans-serif; =
color: rgb(31, 73, 125); ">&nbsp;</span></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif; =
"><b><span style=3D"font-size: 10pt; font-family: Tahoma, sans-serif; =
">From:</span></b><span style=3D"font-size: 10pt; font-family: Tahoma, =
sans-serif; "><span class=3D"Apple-converted-space">&nbsp;</span>Khem =
Raj [mailto:raj.khem@<a href=3D"http://gmail.com" style=3D"color: =
purple; text-decoration: underline; ">gmail.com</a>]<span =
class=3D"Apple-converted-space">&nbsp;</span><br><b>Sent:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>den 14 april 2013 =
23:48<br><b>To:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Jonas Jonsson =
L<br><b>Cc:</b><span class=3D"Apple-converted-space">&nbsp;</span>Yocto =
Mailinglist (<a href=3D"mailto:yocto@yoctoproject.org" style=3D"color: =
purple; text-decoration: underline; =
">yocto@yoctoproject.org</a>)<br><b>Subject:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Re: [yocto] SSTATE_MIRRORS =
problems, libpthread.so.0 not found ...<o:p></o:p></span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif; "><o:p>&nbsp;</o:p></div><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif; =
"><br><br>On Thursday, April 11, 2013, Jonas Jonsson L &lt;<a =
href=3D"mailto:jonas.l.jonsson@ericsson.com" style=3D"color: purple; =
text-decoration: underline; ">jonas.l.jonsson@ericsson.com</a>&gt; =
wrote:<br>&gt; Hi!<br>&gt;<br>&gt; &nbsp;<br>&gt;<br>&gt; I=92m building =
several different Raspberry Pi images that are almost the same, some =
configuration issues (ip-address, hostnames etc) differs on those =
different images.&nbsp; My solution was to simply build a =91clean=92 =
image without any tweaking, then use all the packages from the =91clean=92=
 image via SSTATE_MIRRORS and build my images with their own =
peculiarities.&nbsp; The =91clean=92 image is basically a =
=91core-image-minimal=92 image (rpi-hwup-image for Raspberry =
Pi).<br>&gt;<br>&gt; &nbsp;<br>&gt;<br>&gt; So in =91clean=92 I have the =
sstate-cache, and in the other configurations, I set up<br>&gt;<br>&gt; =
SSTATE_MIRRORS ?=3D =93<a =
href=3D"file:///\\.*%20file:\home\foobar\clean\sstate-cache\PATH" =
style=3D"color: purple; text-decoration: underline; ">file://.* =
file:///home/foobar/clean/sstate-cache/PATH</a>=94<br>&gt;<br>&gt; in my =
local.conf =85.&nbsp; It works like a charm with regards to speed and =
disk-space.<br>&gt;<br>&gt; &nbsp;<br>&gt;<br>&gt; The package that I=92ve=
 built builds clean without any warnings in the =91clean=92 build.&nbsp; =
However, if I don=92t build my package in the clean image, but in one of =
my =91configured=92 images, it fails.&nbsp; All of a sudden, the linker =
can=92t find neither /lib/libpthread.so.0 nor =
/usr/lib/libpthread_nonshared.a L<br>&gt;<br><br>It seems you have =
totally different workspaces per image which share same state is that =
right ?<br><br>Do you have these files populated in one of customised =
sandboxes<span class=3D"Apple-converted-space">&nbsp;</span><br><br>Linker=
 should look into the customised Sandbox's sysroot not clean sandbox =
one<br>&gt; &nbsp;<br>&gt;<br>&gt; buildfolder/tmp/sysroots/raspberrypi =
&gt; ls -ll lib/libpthread.so.0 usr/lib/libpthread_nonshared.a lib/<a =
href=3D"http://libpthread-2.17.so" style=3D"color: purple; =
text-decoration: underline; ">libpthread-2.17.so</a><br>&gt;<br>&gt; =
-rwxr-xr-x 1 foobar bitbakers 960802 Apr 11 12:47 lib/<a =
href=3D"http://libpthread-2.17.so" style=3D"color: purple; =
text-decoration: underline; ">libpthread-2.17.so</a><br>&gt;<br>&gt; =
lrwxrwxrwx 1 foobar bitbakers&nbsp;&nbsp;&nbsp;&nbsp; 18 Apr 11 12:47 =
lib/libpthread.so.0 -&gt;<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"http://libpthread-2.17.so" style=3D"color: purple; =
text-decoration: underline; ">libpthread-2.17.so</a><br>&gt;<br>&gt; =
-rw-r--r-- 1 foobar bitbakers&nbsp;&nbsp; 3376 Apr 11 12:47 =
usr/lib/libpthread_nonshared.a<br>&gt;<br>&gt; &nbsp;<br>&gt;<br>&gt; =
What=92s going on here?&nbsp; The sysroot (for the GNU tools) points to =
the correct folder, and the project is a standard autotools project, =
thus no magic involved.&nbsp; Is there any particular dependency that I =
must set up in order to use pthreads?&nbsp;<br>&gt;<br>&gt; =
&nbsp;<br>&gt;<br>&gt; Any ideas?&nbsp; By the way, I=92m on poky/master =
(march 7:th), =91git log =96n 1=92 shows =
=916d9a3ac0515380d0789ee3d316c08212592a6f9a=92 (if that=92s =
interesting=85)<br>&gt;<br>&gt; &nbsp;<br>&gt;<br>&gt; Best =
regards,<br>&gt;<br>&gt; Jonas =
Jonsson<o:p></o:p></div></div></div></blockquote></div><br></body></html>=

--Apple-Mail=_1D39EDFF-2910-482F-B2BA-B52B762831B4--
