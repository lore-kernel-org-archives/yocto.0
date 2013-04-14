Return-Path: <raj.khem@gmail.com>
Received: from mail-ia0-f176.google.com (mail-ia0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D14E0E0140A
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2013 14:47:59 -0700 (PDT)
Received: by mail-ia0-f176.google.com with SMTP id i9so1503225iad.35
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2013 14:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=UhjQLCuRrVloEtsLmu2Lyv8leIp9L/hveZ1It7lS5Lg=;
	b=eNhRgwfgcvxZlD75nMTBvvMp0t6Kqvo00WNLXYcgp/S8NvLN6z+nmrs3moGvotl/dY
	g8YWm6if5XItWmKK9GhNEzeXbLBN68v8tA3HDYiwA6zGYtWT0gDU5jO8G5UtYI3gmLBC
	SO2EbzF06GT/zM4+omvE9+RQLGieyQP+JUDmqOfjtJonBpulIej4BrchJW9i8jKAbQZt
	UEUP62KWSjJ1bVdY7r+oDFcY3aDgCAibMkAP/kW5nNF23ECQ8oZSO9fOZ5reRnG/52H8
	YqEta/qjvSKvW8jpsG4G7OiuL9ujeMG68Bs3wIFsUnLLi7+DRxTNpXpp1c0bUZWfbM62
	jGqA==
MIME-Version: 1.0
X-Received: by 10.43.134.202 with SMTP id id10mr10402395icc.46.1365976079446; 
	Sun, 14 Apr 2013 14:47:59 -0700 (PDT)
Received: by 10.50.191.170 with HTTP; Sun, 14 Apr 2013 14:47:59 -0700 (PDT)
In-Reply-To: <0342A6AD36648742A199353A51DDC70311546C9C@ESESSMB305.ericsson.se>
References: <0342A6AD36648742A199353A51DDC70311546C9C@ESESSMB305.ericsson.se>
Date: Sun, 14 Apr 2013 14:47:59 -0700
Message-ID: <CAMKF1sp5Rq-mwpM79J3vr7LmZyyQFHBRz7WDhtKXpVBUimHokQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Jonas Jonsson L <jonas.l.jonsson@ericsson.com>
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
X-List-Received-Date: Sun, 14 Apr 2013 21:48:00 -0000
Content-Type: multipart/alternative; boundary=20cf307f365cfcbb3804da591608

--20cf307f365cfcbb3804da591608
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thursday, April 11, 2013, Jonas Jonsson L <jonas.l.jonsson@ericsson.com>
wrote:
> Hi!
>
>
>
> I=E2=80=99m building several different Raspberry Pi images that are almos=
t the
same, some configuration issues (ip-address, hostnames etc) differs on
those different images.  My solution was to simply build a =E2=80=98clean=
=E2=80=99 image
without any tweaking, then use all the packages from the =E2=80=98clean=E2=
=80=99 image via
SSTATE_MIRRORS and build my images with their own peculiarities.  The
=E2=80=98clean=E2=80=99 image is basically a =E2=80=98core-image-minimal=E2=
=80=99 image (rpi-hwup-image for
Raspberry Pi).
>
>
>
> So in =E2=80=98clean=E2=80=99 I have the sstate-cache, and in the other c=
onfigurations, I
set up
>
> SSTATE_MIRRORS ?=3D =E2=80=9Cfile://.* file:///home/foobar/clean/sstate-c=
ache/PATH=E2=80=9D
>
> in my local.conf =E2=80=A6.  It works like a charm with regards to speed =
and
disk-space.
>
>
>
> The package that I=E2=80=99ve built builds clean without any warnings in =
the
=E2=80=98clean=E2=80=99 build.  However, if I don=E2=80=99t build my packag=
e in the clean image,
but in one of my =E2=80=98configured=E2=80=99 images, it fails.  All of a s=
udden, the
linker can=E2=80=99t find neither /lib/libpthread.so.0 nor
/usr/lib/libpthread_nonshared.a L
>

It seems you have totally different workspaces per image which share same
state is that right ?

Do you have these files populated in one of customised sandboxes

Linker should look into the customised Sandbox's sysroot not clean sandbox
one
>
>
> buildfolder/tmp/sysroots/raspberrypi > ls -ll lib/libpthread.so.0
usr/lib/libpthread_nonshared.a lib/libpthread-2.17.so
>
> -rwxr-xr-x 1 foobar bitbakers 960802 Apr 11 12:47 lib/libpthread-2.17.so
>
> lrwxrwxrwx 1 foobar bitbakers     18 Apr 11 12:47 lib/libpthread.so.0 ->
libpthread-2.17.so
>
> -rw-r--r-- 1 foobar bitbakers   3376 Apr 11 12:47
usr/lib/libpthread_nonshared.a
>
>
>
> What=E2=80=99s going on here?  The sysroot (for the GNU tools) points to =
the
correct folder, and the project is a standard autotools project, thus no
magic involved.  Is there any particular dependency that I must set up in
order to use pthreads?
>
>
>
> Any ideas?  By the way, I=E2=80=99m on poky/master (march 7:th), =E2=80=
=98git log =E2=80=93n 1=E2=80=99
shows =E2=80=986d9a3ac0515380d0789ee3d316c08212592a6f9a=E2=80=99 (if that=
=E2=80=99s interesting=E2=80=A6)
>
>
>
> Best regards,
>
> Jonas Jonsson

--20cf307f365cfcbb3804da591608
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Thursday, April 11, 2013, Jonas Jonsson L &lt;<a href=3D"mailto:=
jonas.l.jonsson@ericsson.com">jonas.l.jonsson@ericsson.com</a>&gt; wrote:<b=
r>&gt; Hi!<br>&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; I=E2=80=99m building seve=
ral different Raspberry Pi images that are almost the same, some configurat=
ion issues (ip-address, hostnames etc) differs on those different images.=
=C2=A0 My solution was to simply build a =E2=80=98clean=E2=80=99 image with=
out any tweaking, then use all the packages from the =E2=80=98clean=E2=80=
=99 image via SSTATE_MIRRORS and build my images with their own peculiariti=
es.=C2=A0 The =E2=80=98clean=E2=80=99 image is basically a =E2=80=98core-im=
age-minimal=E2=80=99 image (rpi-hwup-image for Raspberry Pi).<br>
&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; So in =E2=80=98clean=E2=80=99 I have th=
e sstate-cache, and in the other configurations, I set up<br>&gt;<br>&gt; S=
STATE_MIRRORS ?=3D =E2=80=9Cfile://.* file:///home/foobar/clean/sstate-cach=
e/PATH=E2=80=9D<br>&gt;<br>&gt; in my local.conf =E2=80=A6.=C2=A0 It works =
like a charm with regards to speed and disk-space.<br>
&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; The package that I=E2=80=99ve built bui=
lds clean without any warnings in the =E2=80=98clean=E2=80=99 build.=C2=A0 =
However, if I don=E2=80=99t build my package in the clean image, but in one=
 of my =E2=80=98configured=E2=80=99 images, it fails.=C2=A0 All of a sudden=
, the linker can=E2=80=99t find neither /lib/libpthread.so.0 nor /usr/lib/l=
ibpthread_nonshared.a L<br>
&gt;<br><br>It seems you have totally different workspaces per image which =
share same state is that right ?<br><br>Do you have these files populated i=
n one of customised sandboxes <br><br>Linker should look into the customise=
d Sandbox&#39;s sysroot not clean sandbox one<br>
&gt; =C2=A0<br>&gt;<br>&gt; buildfolder/tmp/sysroots/raspberrypi &gt; ls -l=
l lib/libpthread.so.0 usr/lib/libpthread_nonshared.a lib/<a href=3D"http://=
libpthread-2.17.so">libpthread-2.17.so</a><br>&gt;<br>&gt; -rwxr-xr-x 1 foo=
bar bitbakers 960802 Apr 11 12:47 lib/<a href=3D"http://libpthread-2.17.so"=
>libpthread-2.17.so</a><br>
&gt;<br>&gt; lrwxrwxrwx 1 foobar bitbakers=C2=A0=C2=A0=C2=A0=C2=A0 18 Apr 1=
1 12:47 lib/libpthread.so.0 -&gt; <a href=3D"http://libpthread-2.17.so">lib=
pthread-2.17.so</a><br>&gt;<br>&gt; -rw-r--r-- 1 foobar bitbakers=C2=A0=C2=
=A0 3376 Apr 11 12:47 usr/lib/libpthread_nonshared.a<br>
&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; What=E2=80=99s going on here?=C2=A0 The=
 sysroot (for the GNU tools) points to the correct folder, and the project =
is a standard autotools project, thus no magic involved.=C2=A0 Is there any=
 particular dependency that I must set up in order to use pthreads?=C2=A0<b=
r>
&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; Any ideas?=C2=A0 By the way, I=E2=80=99=
m on poky/master (march 7:th), =E2=80=98git log =E2=80=93n 1=E2=80=99 shows=
 =E2=80=986d9a3ac0515380d0789ee3d316c08212592a6f9a=E2=80=99 (if that=E2=80=
=99s interesting=E2=80=A6)<br>&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; Best rega=
rds,<br>
&gt;<br>&gt; Jonas Jonsson

--20cf307f365cfcbb3804da591608--
