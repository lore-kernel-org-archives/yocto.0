Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f179.google.com (mail-ea0-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58C34E0148C
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 21:50:04 -0700 (PDT)
Received: by mail-ea0-f179.google.com with SMTP id h14so281228eaj.10
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 21:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=1WGKLELsopX5cx95ud0dE7UOd7VQqgfyMiofI1TxUeI=;
	b=WaMJcezHrAbV4voZZjsOmVWWRKA8oO9OqnGkwEGsg1BYGl3DuW5UFnjb3KKqJ+FuNe
	HwU+harVAO/oGCJ0vhMQ9XK+Ac1/70gWy8yCL6cUo84zhIQOeK5BfLPfs2CErg7PAgNd
	QuD91MCyf6A6Qn9RgV+MwL7mw8vBbiwmAd4uw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=1WGKLELsopX5cx95ud0dE7UOd7VQqgfyMiofI1TxUeI=;
	b=Q3xtgl5yxZOPf4dWgtvw00LRAU2k5ypoNZwwMhWHLQ/tR9flTBXAixv4fLYwoLa89w
	TAuhqyOBqMGBfvG+niOJCGrtY6OXiZbZK/8c89kCH+ZfoZPk7K4Erucx/p4r1DSddxyk
	qCiGgOWllYubndwhWPSYT7773mkENkxW0J2POiLUluOjp6R8tI6ffie2KoTbUarZQ9om
	lBXJ8yL0edOCi8tf8RRtC1+iLWYL5Xu0FmDg47dYKWG9nq+8j69kYOtVClt73w4mgt17
	OvV26YmYwVTtUhDstva1AyLIr3iEc8iym3qzypNJ9MR/XMsAk+K75I+m9N2892nUJbqN
	Qznw==
MIME-Version: 1.0
X-Received: by 10.14.89.69 with SMTP id b45mr25912013eef.10.1366260603078;
	Wed, 17 Apr 2013 21:50:03 -0700 (PDT)
Received: by 10.223.87.73 with HTTP; Wed, 17 Apr 2013 21:50:02 -0700 (PDT)
In-Reply-To: <CAHUNapS_dMQnpqCFMLqyGrbch0SQbJZc4aSVxFk+SRO9mU=2rQ@mail.gmail.com>
References: <CAHUNapTBjAg2U6p3nk8E_dtrJAcJ3BJ-EFYvsCtQ2R71dtGRwg@mail.gmail.com>
	<CAHUNapRTY=2TtCSFE=OJz_iGwuaJHKv8iHsL3VrJ=jKXSCf=SQ@mail.gmail.com>
	<CA+gsK-r=iE4CmnUXb79J-T5g6dy5csKZNNpMu5=SnFM4WBdKbg@mail.gmail.com>
	<CAHUNapS_dMQnpqCFMLqyGrbch0SQbJZc4aSVxFk+SRO9mU=2rQ@mail.gmail.com>
Date: Wed, 17 Apr 2013 21:50:02 -0700
Message-ID: <CA+gsK-pdGWseY5mcf3naYoFaqLieXFaVazNWQ9yo5BZEDuSm7g@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Trevor Woerner <twoerner@gmail.com>
X-Gm-Message-State: ALoCoQlauaTwey5f5IwChgBNSfhDvrA/7ZnWlHoJBIb7dHGLcEDQWWoSm/ui6I/dCuXVx3DWed4V
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: runqemu: Could not initialize SDL(No available video device) - exiting
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
X-List-Received-Date: Thu, 18 Apr 2013 04:50:04 -0000
Content-Type: multipart/alternative; boundary=001a11c1b0c0eafda504da9b55d4

--001a11c1b0c0eafda504da9b55d4
Content-Type: text/plain; charset=ISO-8859-1

> I would have assumed that if something was missing from my host, then
> I would not have been able to run the virtual machine using the
> qemu-system-i386 that I had compiled for my host natively outside of
> Yocto? As it happened, using my own qemu the images ran fine, but when
> I tried using the runqemu script that's when I'd see problems.
>
> Well, there is not much I can tell about your build system and then there
is of course a sequence of events. What I do know for sure is that YP will
build Qemu without video support if libsdl-devel is missing on your host
system because that happened to me before. You will not notice it unless
you go back to the log of the configure task and check the output.


> Removing/moving/deleting my sstate fixed the problem, which suggests
> to me that there something stored in there that's bad (does that make
> sense?).
>

Removing sstate triggered a rebuilt of qemu-native which also includes
running the configure task again whose output sets the switch whether or
not Qemu is built with video support. Apparently the first time you built
it it could not find libsdl-devel on your host but the second time it
could. But of course I cannot tell you why that happened. Do you still have
the logs? Did you install libsdl-devel between the two attempts?

:rjs

--001a11c1b0c0eafda504da9b55d4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div=
>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">I would have assumed that if somet=
hing was missing from my host, then<br>

I would not have been able to run the virtual machine using the<br>
qemu-system-i386 that I had compiled for my host natively outside of<br>
Yocto? As it happened, using my own qemu the images ran fine, but when<br>
I tried using the runqemu script that&#39;s when I&#39;d see problems.<br>
<br></blockquote><div style>Well, there is not much I can tell about your b=
uild system and then there is of course a sequence of events. What I do kno=
w for sure is that YP will build Qemu without video support if libsdl-devel=
 is missing on your host system because that happened to me before. You wil=
l not notice it unless you go back to the log of the configure task and che=
ck the output.</div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">
Removing/moving/deleting my sstate fixed the problem, which suggests<br>
to me that there something stored in there that&#39;s bad (does that make<b=
r>
sense?).<br>
</blockquote></div><br>Removing sstate triggered a rebuilt of qemu-native w=
hich also includes running the configure task again whose output sets the s=
witch whether or not Qemu is built with video support. Apparently the first=
 time you built it it could not find libsdl-devel on your host but the seco=
nd time it could. But of course I cannot tell you why that happened. Do you=
 still have the logs? Did you install libsdl-devel between the two attempts=
?<br clear=3D"all">
<div><br></div><div style><font face=3D"garamond, serif"><span style=3D"bor=
der-collapse:collapse;color:rgb(102,102,102);font-family:arial,sans-serif;f=
ont-size:13px">:rjs</span></font></div>
</div></div>

--001a11c1b0c0eafda504da9b55d4--
