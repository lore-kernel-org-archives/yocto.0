Return-Path: <andrei@gherzan.ro>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73713E00282
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 02:56:23 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so12498117ghb.35
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 02:56:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=K1jFpsrtQBw/aXk1nA3161EdHNvkBZyCc393vmw+eMY=;
	b=lbg/PjN5fYVMptLZenTAtk4Rrn61DZV0ooOjHhCB2ligHaYowSmYHSmWFBqhjJqDml
	NPSXEMhn0veGgjc73oULyYQCOx5rBDvQ8MqSUgz9RP/tIm3DEffAhLrKJBRdHg5MCQRt
	+uanThmBVlIccSGQ8qlDQzY5fynAAdVOe5Jq54jjg/uyjXA7MdeD1a1CXpinKaCq21RT
	s+wTmPBsAJ6j3qDG6B3NVizQNWmXlAqnhRExMtlOd0ewhsdq1P21C/0ePbvKaKaC3n4e
	H5M3zwz4Yi168HOKQXUSwE8iXrAr5ESBkPdLV7xlaKB7NW9ffIPQE1hdY1HHQ2ZhZujD
	P2Sw==
Received: by 10.50.189.135 with SMTP id gi7mr10605187igc.8.1341914183284; Tue,
	10 Jul 2012 02:56:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.98.162 with HTTP; Tue, 10 Jul 2012 02:56:03 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1430318.UTTjLmDdLs@helios>
References: <CAE8H0+Wurdc2aHZZ=MEgW1UioSfbnR7jzKQ__ZKfS=CyjqXmoA@mail.gmail.com>
	<2286431.Uqbs7UEu3k@helios>
	<CAK18fxFkZAsyL1+DRPyYzMGy5RX5V9p4RfLgJQWxjaBkhraxfw@mail.gmail.com>
	<1430318.UTTjLmDdLs@helios>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Jul 2012 12:56:03 +0300
Message-ID: <CAK18fxF=P5W_ECsiij6-hwt8gZrFNRKebCQRobKCteOfVubT8Q@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQlEKaIigcTCVIopEas+sxUtlIscKSfd9CG2KHehMpG5BxaRDY0EfbEQdJSjGWfRvXnntouD
Cc: yocto@yoctoproject.org
Subject: Re: Raspberry Pi mailing list?
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
X-List-Received-Date: Tue, 10 Jul 2012 09:56:24 -0000
Content-Type: multipart/alternative; boundary=14dae934040b36b85004c476bedc

--14dae934040b36b85004c476bedc
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jul 10, 2012 at 12:53 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Tuesday 10 July 2012 12:45:28 Andrei Gherzan wrote:
> > On Tue, Jul 10, 2012 at 12:35 PM, Paul Eggleton <
> > paul.eggleton@linux.intel.com> wrote:
> > > FYI Andrei has now created a denzil branch in meta-raspberrypi which
> will
> > > match up with denzil in OE-Core/Poky. I'm not sure if the problem is
> still
> > > there but there may still be an issue building a kernel for the RPi
> with
> > > the toolchain in master - Chris and I have been sticking to denzil for
> the
> > > moment for that reason.
> >
> > Both should work now. Denzil and master.
>
> Just out of interest, have you managed to successfully boot a kernel built
> with master?
>
>
Yes. I switched to Image and things work as expected. It seems like after
updating the bootloader we introduced a bug which makes a compressed kernel
not boot-able. As soon as upstream will solve this we will switch back to
zImage.

About branches. Right now the only difference between denzil and master is
the netbase update.

@g

--14dae934040b36b85004c476bedc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Tue, Jul 10, 2012 at 12:53 PM, Paul Eggleton =
<span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" targ=
et=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">

On Tuesday 10 July 2012 12:45:28 Andrei Gherzan wrote:<br>
&gt; On Tue, Jul 10, 2012 at 12:35 PM, Paul Eggleton &lt;<br>
&gt; <a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.i=
ntel.com</a>&gt; wrote:<br>
&gt; &gt; FYI Andrei has now created a denzil branch in meta-raspberrypi wh=
ich will<br>
&gt; &gt; match up with denzil in OE-Core/Poky. I&#39;m not sure if the pro=
blem is still<br>
&gt; &gt; there but there may still be an issue building a kernel for the R=
Pi with<br>
&gt; &gt; the toolchain in master - Chris and I have been sticking to denzi=
l for the<br>
&gt; &gt; moment for that reason.<br>
&gt;<br>
&gt; Both should work now. Denzil and master.<br>
<br>
Just out of interest, have you managed to successfully boot a kernel built<=
br>
with master?<br><br></blockquote><div>=A0</div><div>Yes. I switched to Imag=
e and things work as expected. It seems like after updating the bootloader =
we=A0introduced=A0a bug which makes a compressed kernel not=A0boot-able. As=
 soon as upstream will solve this we will switch back to zImage.</div>

<div><br></div><div>About branches. Right now the only difference between d=
enzil and master is the netbase update.</div><div><br></div><div>@g</div></=
div>

--14dae934040b36b85004c476bedc--
