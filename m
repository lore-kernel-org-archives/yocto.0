Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f172.google.com (mail-lb0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 964F5E0077E
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2013 08:23:55 -0800 (PST)
Received: by mail-lb0-f172.google.com with SMTP id z5so10207898lbh.3
	for <yocto@yoctoproject.org>; Thu, 05 Dec 2013 08:23:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=Ijf4JNueFiBbcuOII42PJJtuVmC7IYmZ2suvJZt/urM=;
	b=hWkUvD6dnc8vINYbmK2Xx0ktvUzziSATm9DRmG0YDrYMcIJBqZXrIwfdGKDzWHe5gr
	r5hAZBKEqQ59fnJyaGUI8DqeSCOGZCXipj3D/nihc+9a9rrZnDTDHn1emeAGAgBqhAgF
	BUdVzfYpKRnVgEQr+vgkNM2yZTqWyEQ5szJJBouFrsrHUtHlcXFz21QfiTg7veuPhKbf
	zdKJXtjKxQOS+XV9EIkSJ44VivQHjFpncG8+jgqREwSkL/rw3pkQgiO4JA4nHX/pv9K0
	vKSlIxiV0ozKdXYMiFisb4DmwWLoDOgudmJPi0uztiY2Z4uvRLa6lyNjngajiHGSpPrT
	s8Ow==
X-Received: by 10.152.115.230 with SMTP id jr6mr91500lab.45.1386260634354;
	Thu, 05 Dec 2013 08:23:54 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.176.201 with HTTP; Thu, 5 Dec 2013 08:23:33 -0800 (PST)
In-Reply-To: <CAFZh4h_b=8NonYoQ_WMTAYXNDWdS=fkG70uGaVOYHYdr_fOK9g@mail.gmail.com>
References: <CAFZh4h-YYSJoaZEM95QO9O0BKpGA3tJ+-GbpDN=yfeLNePUnJQ@mail.gmail.com>
	<CABcZAN=OntXko8XormAbrBsfU24ZS9_MuixNdhqSScm24O_pGg@mail.gmail.com>
	<CAFZh4h91WJ1hbKw95k4f-XuQY-WJxFGwQUQpzCYwOQoqLfEf5w@mail.gmail.com>
	<CABcZANn82u8KXw0kUi-NryqoCbXdV1CDDjUL2ZCZJLk9GCw7xg@mail.gmail.com>
	<CAFZh4h8gNAfjE0OX3vsfJPzvvFT8PE1-ctMm8oTZdRfVBdRskA@mail.gmail.com>
	<CABcZANmtrNW-XWbVKj2+VHFrfvsOJMT6Xm77Bb1jKPBAR5yLbg@mail.gmail.com>
	<CAFZh4h_b=8NonYoQ_WMTAYXNDWdS=fkG70uGaVOYHYdr_fOK9g@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 5 Dec 2013 09:23:33 -0700
X-Google-Sender-Auth: S2vHjvtW3KAzOnAhKls6KZ3qF50
Message-ID: <CABcZANnwToiZcmKb+-0kjW9QxJYGexdp3Sdt1Y-D0pg4DW4NVw@mail.gmail.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to build a non-autotools package that contains only a lib. Getting empty archive - package is not generated
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
X-List-Received-Date: Thu, 05 Dec 2013 16:23:58 -0000
Content-Type: multipart/alternative; boundary=001a11c36742ad4a0c04eccbf481

--001a11c36742ad4a0c04eccbf481
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 5, 2013 at 9:21 AM, Brian Hutchinson <b.hutchman@gmail.com>wrot=
e:

> I had FILES_${PN} +=3D =E2=80=9C${libdir}/*.so=E2=80=9D in there and that=
 didn't work.
> Maybe it was because I was missing the FILES_SOLIBSDEV =3D =E2=80=9C" you=
 mentioned.
> I'll play with it some more and see what happens.  I first started out wi=
th
> FILES_${PN} +=3D =E2=80=9C${libdir}/*.so=E2=80=9D and when that didn't wo=
rk I tried other
> things in the FILES_${PN} =3D line to try and get it picked up.  When I
> couldn't get any of it to work and then saw others (well, at least the li=
nk
> I provided) were seeing the same thing I figured it was time to quit
> spinning my wheels and consult the big guns :)


Heh :) The issue there is that the patterns are matched in the order of the
PACKAGES variable. The first package to include a file gets it, and
${PN}-dev is in PACKAGES before ${PN}. By emptying FILES_SOLIBSDEV, that=E2=
=80=99ll
remove the .so from FILES_${PN}-dev, letting the ${PN} package get it
instead.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c36742ad4a0c04eccbf481
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Dec 5, 2013 at 9:21 AM, Brian Hutchinson <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:b.hutchman@gmail.com" target=3D"_blank">b.hutchman@gmail.com<=
/a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">I had FILES_${PN} +=3D =E2=80=9C${libdir}/*.=
so=E2=80=9D in there and that didn&#39;t work.=C2=A0 Maybe it was because I=
 was missing the FILES_SOLIBSDEV =3D =E2=80=9C&quot; you mentioned.=C2=A0 I=
&#39;ll play with it some more and see what happens.=C2=A0 I first started =
out with FILES_${PN} +=3D =E2=80=9C${libdir}/*.so=E2=80=9D and when that di=
dn&#39;t work I tried other things in the FILES_${PN} =3D line to try and g=
et it picked up.=C2=A0 When I couldn&#39;t get any of it to work and then s=
aw others (well, at least the link I provided) were seeing the same thing I=
 figured it was time to quit spinning my wheels and consult the big guns :)=
</blockquote>

</div><br>Heh :) The issue there is that the patterns are matched in the or=
der of the PACKAGES variable. The first package to include a file gets it, =
and ${PN}-dev is in PACKAGES before ${PN}. By emptying FILES_SOLIBSDEV, tha=
t=E2=80=99ll remove the .so from FILES_${PN}-dev, letting the ${PN} package=
 get it instead.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a11c36742ad4a0c04eccbf481--
