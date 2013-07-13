Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f175.google.com (mail-we0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBA87E0140D
	for <yocto@yoctoproject.org>; Sat, 13 Jul 2013 03:39:01 -0700 (PDT)
Received: by mail-we0-f175.google.com with SMTP id t59so8567950wes.6
	for <yocto@yoctoproject.org>; Sat, 13 Jul 2013 03:39:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=7buguxFmcmwQ2U0ORTrWpnr1nCZ7j9U9TXjRsieUCsg=;
	b=mhIFcFf350GiIERhQKWcL77LNzLXrgor6WuyotRyVzZ3R7wnFUiZjXRsqSoRuKU7LN
	aqsGiye2lFcxsJ/n3i7UIWg8Frurchlv/EMM6hwAfIp63KoPmuWJpIq51aItxpw0suYV
	ZaLDzvgpPqvDwh6SZsEUvezDQKKsDYEtjimGqkNb+dA3xED1iI9jeJ0UpzyZklGYQuZw
	oFEjJy/cJZEFbR6g3GOvLn7ECeESuW+rtZ2aB0PrIrlu9MfkQnLEPHt6iU//Ai3+catb
	xRcXpr0W6a0lQK70kan/tCe7vUXbqSchSVho3GwFIJsGPk9xz2e+3xGcbAqhT8K01/0k
	6e7w==
X-Received: by 10.194.63.229 with SMTP id j5mr25808652wjs.79.1373711940586;
	Sat, 13 Jul 2013 03:39:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.51.201 with HTTP; Sat, 13 Jul 2013 03:38:39 -0700 (PDT)
X-Originating-IP: [5.13.206.158]
In-Reply-To: <CANyK_8dd-2amNRAQoP9Wqqy5veSyUbWShm0pnien5DNu-yt3aQ@mail.gmail.com>
References: <CANyK_8fZbLNj8zi3AUiUdGU-rVQEHYMPvyp5nMKndvV02LrFQg@mail.gmail.com>
	<51DA7FFA.2060900@r-finger.com>
	<CANyK_8dd-2amNRAQoP9Wqqy5veSyUbWShm0pnien5DNu-yt3aQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sat, 13 Jul 2013 13:38:39 +0300
Message-ID: <CAK18fxFQBXKEHw-3g5Y4Mw6=Cy7hYErH+nL=UU+0vGT_yZtNXg@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQkGMEZFbb/cy9jsWouPSk8wGJ4n/CUBbbMarohVYKIsu3YC3NWoO1Qh3m6DN1Y+kgXW+cJf
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Userland and vc-graphics
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
X-List-Received-Date: Sat, 13 Jul 2013 10:39:04 -0000
Content-Type: multipart/alternative; boundary=047d7ba975183e291004e1623ca2

--047d7ba975183e291004e1623ca2
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jul 8, 2013 at 2:12 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 8 July 2013 10:01, Tomas Frydrych <tf+lists.yocto@r-finger.com> wrote:
> > On 06/07/13 12:22, Paul Barker wrote:
> >>
> >> Does anyone else who's worked with meta-raspberrypi agree with this?
> >> If so I'll throw together patches to achieve this.
> >
> > vc-graphics is the original package before the userland sources were
> > made available; in principle the two should be equivalent, but the last
> > time I tried to build userland, which admittedly is two or three months
> > back, it was failing miserably due to some missing broadcom headers that
> > were nowhere to be found among the released sources. I assume the
> > userland packages now build OK?
> >
>
> It all builds and installs correctly for me (I'm using core-image-sato
> for testing). It would probably be good to put together a simple test
> plan to ensure that it does run correctly.
>
> I must admit to being happier working on console applications rather
> GUIs and especially OpenGL/EGL type things but there are probably a
> few basic tests I can do. I could see if glxgears runs correctly. I
> could also look at EGL/GLES output from gstreamer.
>
> Any other suggestions?
>
>
Hello guys.

So, graphics libraries were shipped as binaries months ago until userland
was released and we had the opportunity to have access to sources and build
libraries from them. We kept binaries and sources packages because the
first sources versions had a couple of building issues or some missing
files. So in order not to break ppl's work we kept them in the repo. Now, I
don't have time to test if everything is OK with the graphics libraries
generated from the userland package. If you guys have some apps and test
that these libraries are behaving correctly, we can drop the binaries. On
another hand we can keep them as a fallback solution.

ag

--047d7ba975183e291004e1623ca2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Mon, Jul 8, 2013 at 2:12 PM, Paul Barker <span dir=3D"ltr">&lt;<=
a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.m=
e.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 8 July 2013 10:01, Toma=
s Frydrych &lt;<a href=3D"mailto:tf%2Blists.yocto@r-finger.com">tf+lists.yo=
cto@r-finger.com</a>&gt; wrote:<br>


&gt; On 06/07/13 12:22, Paul Barker wrote:<br>
&gt;&gt;<br>
</div><div class=3D"im">&gt;&gt; Does anyone else who&#39;s worked with met=
a-raspberrypi agree with this?<br>
&gt;&gt; If so I&#39;ll throw together patches to achieve this.<br>
&gt;<br>
&gt; vc-graphics is the original package before the userland sources were<b=
r>
&gt; made available; in principle the two should be equivalent, but the las=
t<br>
&gt; time I tried to build userland, which admittedly is two or three month=
s<br>
&gt; back, it was failing miserably due to some missing broadcom headers th=
at<br>
&gt; were nowhere to be found among the released sources. I assume the<br>
&gt; userland packages now build OK?<br>
&gt;<br>
<br>
</div>It all builds and installs correctly for me (I&#39;m using core-image=
-sato<br>
for testing). It would probably be good to put together a simple test<br>
plan to ensure that it does run correctly.<br>
<br>
I must admit to being happier working on console applications rather<br>
GUIs and especially OpenGL/EGL type things but there are probably a<br>
few basic tests I can do. I could see if glxgears runs correctly. I<br>
could also look at EGL/GLES output from gstreamer.<br>
<br>
Any other suggestions?<br>
<div class=3D"im HOEnZb"><br></div></blockquote><div><br></div><div style>H=
ello guys.=A0</div><div style><br></div><div style>So, graphics libraries w=
ere shipped as binaries months ago until userland was released and we had t=
he opportunity to have access to sources and build libraries from them. We =
kept binaries and sources packages because the first sources versions had a=
 couple of building issues or some missing files. So in order not to break =
ppl&#39;s work we kept them in the repo. Now, I don&#39;t have time to test=
 if everything is OK with the graphics libraries generated from the userlan=
d package. If you guys have some apps and test that these libraries are beh=
aving correctly, we can drop the binaries. On another hand we can keep them=
 as a fallback solution.=A0</div>

<div style><br></div><div style>ag</div></div>
</div></div>

--047d7ba975183e291004e1623ca2--
