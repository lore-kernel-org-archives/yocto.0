Return-Path: <jim@halfman.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7223E0027D
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 08:16:42 -0700 (PDT)
Received: by vcbfl11 with SMTP id fl11so1460187vcb.35
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 08:16:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type
	:x-gm-message-state;
	bh=h6re62+Cp0jRHhHaRpYPtDQgvFrJN9frFbg5spBnbQQ=;
	b=dGPqKkTw/SmhJcYyZFJ4U98sDU0Xt7vSr8AVHqnjzSFGnxFsQlQ6nQAced0R7QETUu
	55+7JXD8vjeytDlP+6HHAkL0DFdYKEuBQUy5iOoRNR84mRMgziQ+pa693E9BLY9UClyq
	DER+9tVln6R/+8jBtjRD4TwibvX75h+5e+6dv1dDmciuwisSZlUIZbrfUEI97Smyt8SR
	WoFoxogqilbPYRntIYFXpGOaVqAxfJhz7GIVMGMcTZEfrpofnDHlazwkLl1jROtS4qZv
	NT9VkpN/IAmOY/K2UNIstOt2cxXZ+CW3Pusqy/Djm/oe2GCSCPzokJzf3yNSpBbJnNCl
	JReg==
Received: by 10.220.142.9 with SMTP id o9mr759686vcu.51.1342192601928; Fri, 13
	Jul 2012 08:16:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.52.91.7 with HTTP; Fri, 13 Jul 2012 08:16:20 -0700 (PDT)
From: Jim Kosem <jim@halfman.com>
Date: Fri, 13 Jul 2012 16:16:20 +0100
Message-ID: <CAG+EMXgTcr6tNYmEcKKcHaKfdb=tz=t77Z1G6-L=pSzc2fKj6A@mail.gmail.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQnKq+uUcuc3O30g2Lu/10RvLo3v9gA3D7LQJqqxGKYo+HyH1RTELncEhpg8ToI1LStlqCK1
X-Mailman-Approved-At: Fri, 13 Jul 2012 09:56:25 -0700
Subject: Week 28 Yocto WebHob update from London
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 Jul 2012 15:16:43 -0000
Content-Type: multipart/alternative; boundary=f46d043c09704214c904c4b791d0

--f46d043c09704214c904c4b791d0
Content-Type: text/plain; charset=UTF-8

Hi,

Here's the latest update (2.0) from the London team on the WebHob design
and last one from me.
https://wiki.yoctoproject.org/wiki/Yocto_Web_Hob_Design

We've also put together a final screencast for the prototype to explain all
the features showing our design thinking around WebHob and our vision for
how it will work.
https://wiki.yoctoproject.org/wiki/images/4/43/Yocto_webHob.2.4_screencast.0.3.mov

On the wiki update there's a PDF of all the screens of the latest version
(v.2.0) of the application<https://wiki.yoctoproject.org/wiki/images/8/8b/Webhob.2.0.pdf>,
a link to the GitHub <https://github.com/jkosem/Yocto-WebHob-Design> where
you can find the HTML5 prototype and graphics files (in Photoshop and PNG
formats), and an explanation of our work.

This past week we've been working on integrating the CSS, finalising and
fixing up the HTML, and a couple of Javascript

Thanks for all the interest.

--
Jim Kosem

--f46d043c09704214c904c4b791d0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:13=
px;background-color:rgb(255,255,255)">Hi,</div><div><div style=3D"font-fami=
ly:arial,sans-serif;font-size:13px;background-color:rgb(255,255,255);color:=
rgb(34,34,34)">

<br></div><div style=3D"font-family:arial,sans-serif;font-size:13px"><span =
style=3D"background-color:rgb(255,255,255)">Here&#39;s the latest=C2=A0upda=
te (2.0)=C2=A0from the London team on the WebHob design and last one from m=
e.</span></div>

<div style=3D"font-family:arial,sans-serif;font-size:13px"><a href=3D"https=
://wiki.yoctoproject.org/wiki/Yocto_Web_Hob_Design" target=3D"_blank"><font=
 color=3D"#000000" style=3D"background-color:rgb(255,255,255)">https://wiki=
.<span class=3D"il">yoctoproject</span>.org/wiki/Yocto_Web_Hob_Design</font=
></a></div>

<div style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"b=
ackground-color:rgb(255,255,255)"><br></span></div><div style=3D"font-famil=
y:arial,sans-serif;font-size:13px">We&#39;ve also put together a final scre=
encast for the prototype to explain all the features=C2=A0<span style=3D"ba=
ckground-color:rgb(255,255,255)">showing our design thinking around WebHob =
and our vision for how it will work</span>.</div>

<div><span style=3D"background-color:rgb(255,255,255)"><font face=3D"arial,=
 sans-serif"><a href=3D"https://wiki.yoctoproject.org/wiki/images/4/43/Yoct=
o_webHob.2.4_screencast.0.3.mov">https://wiki.yoctoproject.org/wiki/images/=
4/43/Yocto_webHob.2.4_screencast.0.3.mov</a></font></span></div>

<div style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"b=
ackground-color:rgb(255,255,255)"><br></span></div><div style=3D"font-famil=
y:arial,sans-serif;font-size:13px"><span style=3D"background-color:rgb(255,=
255,255)">On the wiki update there&#39;s a=C2=A0<a href=3D"https://wiki.yoc=
toproject.org/wiki/images/8/8b/Webhob.2.0.pdf" target=3D"_blank">PDF of all=
 the screens of the latest version (v.2.0) of the application</a>, a link t=
o the=C2=A0<a href=3D"https://github.com/jkosem/Yocto-WebHob-Design" target=
=3D"_blank">GitHub</a>=C2=A0where you can find the HTML5 prototype and grap=
hics files (in Photoshop and PNG formats), and an explanation of our work.<=
/span></div>

<div style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"b=
ackground-color:rgb(255,255,255)"><br></span></div><div style=3D"font-famil=
y:arial,sans-serif;font-size:13px"><span style=3D"background-color:rgb(255,=
255,255)">This past week we&#39;ve been working on integrating the CSS, fin=
alising and fixing up the HTML, and a couple of Javascript=C2=A0</span></di=
v>

</div><div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div>=
<div>Thanks for all the interest.</div><div><br></div>--<div>Jim Kosem</div=
>

--f46d043c09704214c904c4b791d0--
