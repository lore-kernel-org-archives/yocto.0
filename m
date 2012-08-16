Return-Path: <munoz0raul@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50268E002AB
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 12:02:02 -0700 (PDT)
Received: by lagr15 with SMTP id r15so1887296lag.35
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 12:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=K51uN0/gtIJhFRUkJscKvdtJEx6eOuQfyVm3L3fHY5I=;
	b=DGp5vM07W0kG7Jyal55x3/h9QnIklYhBnMw8TQkrXBr2cIW4GyGHiex7eqVkbQvQDa
	K5wYUOBsiodupAE18Nan11ahzJu87Jj5y7Kk7+FY2QZLvp+sUc+O2tacaq5InBzZZDm4
	xwaE4FdCeGj+7BB6MTC45z0mA8lI7z2e3VdDvcfl+fK9fLkDV3PQXmjO8wFDtbb6tK+u
	NgevUl59f/gt7V24lhArQlayaRa9OZCwWAaSGZZsBUwEBiOANWN632krP+q7QpB9fO1P
	j82fAf1P9OvqDYhJlRPCs3+X+q+ZQAJucioNDQWD5vjS6VSs7AK0NnuytKy92qxrJ6jm
	tvvg==
MIME-Version: 1.0
Received: by 10.112.9.68 with SMTP id x4mr1137937lba.46.1345143720977; Thu, 16
	Aug 2012 12:02:00 -0700 (PDT)
Received: by 10.112.21.194 with HTTP; Thu, 16 Aug 2012 12:02:00 -0700 (PDT)
In-Reply-To: <CAEsOVNdLwWySAnOc9J8umOU75oV1S8f-9RWJFxHV2n1e4Q=MqA@mail.gmail.com>
References: <CANmVirjvYNf0kedcpWP1zhNuu9_4_f-Zr-LR8aQS=1JBpUPJLQ@mail.gmail.com>
	<CAEsOVNdLwWySAnOc9J8umOU75oV1S8f-9RWJFxHV2n1e4Q=MqA@mail.gmail.com>
Date: Thu, 16 Aug 2012 16:02:00 -0300
Message-ID: <CANmViri9CS7CHj_p9emS8dFTZNOXeKDLYxLaznsLasX+sb_FBg@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Re-Build virtual/kernel
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
X-List-Received-Date: Thu, 16 Aug 2012 19:02:02 -0000
Content-Type: multipart/alternative; boundary=485b390f7ae4a9247904c766ad74

--485b390f7ae4a9247904c766ad74
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I did all de comands with -c and do not work!

Some one no some thing that I can try to update de uImage file?

Thanks for the sugestion.



2012/8/16 McClintock Matthew-B29882 <B29882@freescale.com>

> On Thu, Aug 16, 2012 at 7:11 AM, Raul Rosetto Munoz
> <munoz0raul@gmail.com> wrote:
> > Hello All,
> >
> > I'm use yocto to create a linux for imx28, with meta-fsl-arm and
> > meta-openembedded.
> >
> > Until now, every thing is ok, I Have a core-image-minimal-imx28evk.sdca=
rd
> > that working in the machine.
> >
> > My problem is that when I try to add some things in the kernel
> > configuration, I feel like the system build dont generate a new uImage
> file
> > or the thing that I selected in the Kernel dont be atached in the
> > core-image-minimal-imx28evk.sdcard!
> >
> > What I did is:
> >
> > ...tmp/deploy/images$ ls
> > -rw-r--r--  1 raul raul   2511696 2012-08-15 16:23
> > uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
> > lrwxrwxrwx  1 raul raul        47 2012-08-15 16:23 uImage-imx28evk.bin =
->
> > uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
> >
> > then:
> >
> > bitbake -c menuconfig virtual/kernel
> > bitbake -c patch virtual/kernel
> > bitbake -c compile virtual/kernel
> > bitbake  virtual/kernel
>
> Try
>
> bitbake -c compile virtual/kernel -f
>
> -M
>
> >
> > and I'm looking again:
> >
> > ...tmp/deploy/images$ ls
> > -rw-r--r--  1 raul raul   2511696 2012-08-15 16:23
> > uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
> > lrwxrwxrwx  1 raul raul        47 2012-08-15 16:23 uImage-imx28evk.bin =
->
> > uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
> >
> > Some One can explain to me what is the correct way to re-build the
> > virtual/kenel target?
> >
> > Thanks for all Help!
> >
> > --
> > Raul Rosetto Mu=F1oz
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>



--=20
*Raul Rosetto Mu=F1oz*

--485b390f7ae4a9247904c766ad74
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I did all de comands with -c and do not work!<div><br></div><div>Some one n=
o some thing that I can try to update de uImage file?</div><div><br></div><=
div>Thanks for the sugestion.</div><div><br></div><div><br><br><div class=
=3D"gmail_quote">
2012/8/16 McClintock Matthew-B29882 <span dir=3D"ltr">&lt;<a href=3D"mailto=
:B29882@freescale.com" target=3D"_blank">B29882@freescale.com</a>&gt;</span=
><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">
<div class=3D"im">On Thu, Aug 16, 2012 at 7:11 AM, Raul Rosetto Munoz<br>
&lt;<a href=3D"mailto:munoz0raul@gmail.com">munoz0raul@gmail.com</a>&gt; wr=
ote:<br>
&gt; Hello All,<br>
&gt;<br>
&gt; I&#39;m use yocto to create a linux for imx28, with meta-fsl-arm and<b=
r>
&gt; meta-openembedded.<br>
&gt;<br>
&gt; Until now, every thing is ok, I Have a core-image-minimal-imx28evk.sdc=
ard<br>
&gt; that working in the machine.<br>
&gt;<br>
&gt; My problem is that when I try to add some things in the kernel<br>
&gt; configuration, I feel like the system build dont generate a new uImage=
 file<br>
&gt; or the thing that I selected in the Kernel dont be atached in the<br>
&gt; core-image-minimal-imx28evk.sdcard!<br>
&gt;<br>
&gt; What I did is:<br>
&gt;<br>
&gt; ...tmp/deploy/images$ ls<br>
&gt; -rw-r--r-- =A01 raul raul =A0 2511696 2012-08-15 16:23<br>
&gt; uImage-2.6.35.3-r24-imx28evk-20120815191927.bin<br>
&gt; lrwxrwxrwx =A01 raul raul =A0 =A0 =A0 =A047 2012-08-15 16:23 uImage-im=
x28evk.bin -&gt;<br>
&gt; uImage-2.6.35.3-r24-imx28evk-20120815191927.bin<br>
&gt;<br>
&gt; then:<br>
&gt;<br>
&gt; bitbake -c menuconfig virtual/kernel<br>
&gt; bitbake -c patch virtual/kernel<br>
&gt; bitbake -c compile virtual/kernel<br>
&gt; bitbake =A0virtual/kernel<br>
<br>
</div>Try<br>
<br>
bitbake -c compile virtual/kernel -f<br>
<br>
-M<br>
<div class=3D"im"><br>
&gt;<br>
&gt; and I&#39;m looking again:<br>
&gt;<br>
&gt; ...tmp/deploy/images$ ls<br>
&gt; -rw-r--r-- =A01 raul raul =A0 2511696 2012-08-15 16:23<br>
&gt; uImage-2.6.35.3-r24-imx28evk-20120815191927.bin<br>
&gt; lrwxrwxrwx =A01 raul raul =A0 =A0 =A0 =A047 2012-08-15 16:23 uImage-im=
x28evk.bin -&gt;<br>
&gt; uImage-2.6.35.3-r24-imx28evk-20120815191927.bin<br>
&gt;<br>
&gt; Some One can explain to me what is the correct way to re-build the<br>
&gt; virtual/kenel target?<br>
&gt;<br>
&gt; Thanks for all Help!<br>
&gt;<br>
&gt; --<br>
&gt; Raul Rosetto Mu=F1oz<br>
&gt;<br>
</div>&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><b>Raul Rose=
tto Mu=F1oz</b><br>
</div>

--485b390f7ae4a9247904c766ad74--
