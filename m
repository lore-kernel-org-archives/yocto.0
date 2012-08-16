Return-Path: <munoz0raul@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B602E002AC
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 12:11:56 -0700 (PDT)
Received: by lagr15 with SMTP id r15so1894455lag.35
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 12:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=zM78qzILuuP6SDr+YHsn4aRySXO0SM/fZse+qdzPLOo=;
	b=gONdtidzLdCGaskfM1wR5OzLG1gWYoRuDyID6UbXuUp/jQWKBlVQZJermeChtus4DA
	4YGmxDy3bAfje2x7V5TgvZ3XaGdtF8vAHlfArFaiNauKZDmWBeO5d4FcZGcQRByqwqWD
	2xly0+fTsvRPjh/1KGmLaHH1+iS46l3mbkeH1JICJygT8r0t41nP1NGCD5ioTLpGgr0z
	CQPyWeNCenOmW0j6yc9UbY+lNLFGTYlbOnOkujJ4BxRZld8T6C3T0uo0fMXPj/bGfrtM
	hWFywLoGvXF0Qc/iCXvFDsC4R5yGTMZFltzHTGqxwD89E1n0rmiphCtB4hovyQDD3KMw
	xL+A==
MIME-Version: 1.0
Received: by 10.152.114.3 with SMTP id jc3mr2337987lab.11.1345144315993; Thu,
	16 Aug 2012 12:11:55 -0700 (PDT)
Received: by 10.112.21.194 with HTTP; Thu, 16 Aug 2012 12:11:55 -0700 (PDT)
In-Reply-To: <CAEsOVNfRQeD24cqyPGJh7G_fLRVrj+bWmKmm0K6ORy=Gaek7KQ@mail.gmail.com>
References: <CANmVirjvYNf0kedcpWP1zhNuu9_4_f-Zr-LR8aQS=1JBpUPJLQ@mail.gmail.com>
	<CAEsOVNdLwWySAnOc9J8umOU75oV1S8f-9RWJFxHV2n1e4Q=MqA@mail.gmail.com>
	<CANmViri9CS7CHj_p9emS8dFTZNOXeKDLYxLaznsLasX+sb_FBg@mail.gmail.com>
	<CAEsOVNfRQeD24cqyPGJh7G_fLRVrj+bWmKmm0K6ORy=Gaek7KQ@mail.gmail.com>
Date: Thu, 16 Aug 2012 16:11:55 -0300
Message-ID: <CANmVirgEXgjqcPggzic7oepx3H+tETPUzQz9oNG8CLfWpDP-rA@mail.gmail.com>
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
X-List-Received-Date: Thu, 16 Aug 2012 19:11:57 -0000
Content-Type: multipart/alternative; boundary=f46d04088c7f205d1304c766d1a0

--f46d04088c7f205d1304c766d1a0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

don't work.....




2012/8/16 McClintock Matthew-B29882 <B29882@freescale.com>

> What about the -f?
>
> -M
>
> On Thu, Aug 16, 2012 at 2:02 PM, Raul Rosetto Munoz
> <munoz0raul@gmail.com> wrote:
> > I did all de comands with -c and do not work!
> >
> > Some one no some thing that I can try to update de uImage file?
> >
> > Thanks for the sugestion.
> >
> >
> >
> > 2012/8/16 McClintock Matthew-B29882 <B29882@freescale.com>
> >>
> >> On Thu, Aug 16, 2012 at 7:11 AM, Raul Rosetto Munoz
> >> <munoz0raul@gmail.com> wrote:
> >> > Hello All,
> >> >
> >> > I'm use yocto to create a linux for imx28, with meta-fsl-arm and
> >> > meta-openembedded.
> >> >
> >> > Until now, every thing is ok, I Have a
> >> > core-image-minimal-imx28evk.sdcard
> >> > that working in the machine.
> >> >
> >> > My problem is that when I try to add some things in the kernel
> >> > configuration, I feel like the system build dont generate a new uIma=
ge
> >> > file
> >> > or the thing that I selected in the Kernel dont be atached in the
> >> > core-image-minimal-imx28evk.sdcard!
> >> >
> >> > What I did is:
> >> >
> >> > ...tmp/deploy/images$ ls
> >> > -rw-r--r--  1 raul raul   2511696 2012-08-15 16:23
> >> > uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
> >> > lrwxrwxrwx  1 raul raul        47 2012-08-15 16:23 uImage-imx28evk.b=
in
> >> > ->
> >> > uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
> >> >
> >> > then:
> >> >
> >> > bitbake -c menuconfig virtual/kernel
> >> > bitbake -c patch virtual/kernel
> >> > bitbake -c compile virtual/kernel
> >> > bitbake  virtual/kernel
> >>
> >> Try
> >>
> >> bitbake -c compile virtual/kernel -f
> >>
> >> -M
> >>
> >> >
> >> > and I'm looking again:
> >> >
> >> > ...tmp/deploy/images$ ls
> >> > -rw-r--r--  1 raul raul   2511696 2012-08-15 16:23
> >> > uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
> >> > lrwxrwxrwx  1 raul raul        47 2012-08-15 16:23 uImage-imx28evk.b=
in
> >> > ->
> >> > uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
> >> >
> >> > Some One can explain to me what is the correct way to re-build the
> >> > virtual/kenel target?
> >> >
> >> > Thanks for all Help!
> >> >
> >> > --
> >> > Raul Rosetto Mu=F1oz
> >> >
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >> >
> >
> >
> >
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

--f46d04088c7f205d1304c766d1a0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

don&#39;t work.....<div><br></div><div><div><br></div><div><br><br><div cla=
ss=3D"gmail_quote">2012/8/16 McClintock Matthew-B29882 <span dir=3D"ltr">&l=
t;<a href=3D"mailto:B29882@freescale.com" target=3D"_blank">B29882@freescal=
e.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">What about the -f?<br>
<br>
-M<br>
<br>
On Thu, Aug 16, 2012 at 2:02 PM, Raul Rosetto Munoz<br>
<div class=3D"HOEnZb"><div class=3D"h5">&lt;<a href=3D"mailto:munoz0raul@gm=
ail.com">munoz0raul@gmail.com</a>&gt; wrote:<br>
&gt; I did all de comands with -c and do not work!<br>
&gt;<br>
&gt; Some one no some thing that I can try to update de uImage file?<br>
&gt;<br>
&gt; Thanks for the sugestion.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; 2012/8/16 McClintock Matthew-B29882 &lt;<a href=3D"mailto:B29882@frees=
cale.com">B29882@freescale.com</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Aug 16, 2012 at 7:11 AM, Raul Rosetto Munoz<br>
&gt;&gt; &lt;<a href=3D"mailto:munoz0raul@gmail.com">munoz0raul@gmail.com</=
a>&gt; wrote:<br>
&gt;&gt; &gt; Hello All,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I&#39;m use yocto to create a linux for imx28, with meta-fsl-=
arm and<br>
&gt;&gt; &gt; meta-openembedded.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Until now, every thing is ok, I Have a<br>
&gt;&gt; &gt; core-image-minimal-imx28evk.sdcard<br>
&gt;&gt; &gt; that working in the machine.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; My problem is that when I try to add some things in the kerne=
l<br>
&gt;&gt; &gt; configuration, I feel like the system build dont generate a n=
ew uImage<br>
&gt;&gt; &gt; file<br>
&gt;&gt; &gt; or the thing that I selected in the Kernel dont be atached in=
 the<br>
&gt;&gt; &gt; core-image-minimal-imx28evk.sdcard!<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; What I did is:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ...tmp/deploy/images$ ls<br>
&gt;&gt; &gt; -rw-r--r-- =A01 raul raul =A0 2511696 2012-08-15 16:23<br>
&gt;&gt; &gt; uImage-2.6.35.3-r24-imx28evk-20120815191927.bin<br>
&gt;&gt; &gt; lrwxrwxrwx =A01 raul raul =A0 =A0 =A0 =A047 2012-08-15 16:23 =
uImage-imx28evk.bin<br>
&gt;&gt; &gt; -&gt;<br>
&gt;&gt; &gt; uImage-2.6.35.3-r24-imx28evk-20120815191927.bin<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; then:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; bitbake -c menuconfig virtual/kernel<br>
&gt;&gt; &gt; bitbake -c patch virtual/kernel<br>
&gt;&gt; &gt; bitbake -c compile virtual/kernel<br>
&gt;&gt; &gt; bitbake =A0virtual/kernel<br>
&gt;&gt;<br>
&gt;&gt; Try<br>
&gt;&gt;<br>
&gt;&gt; bitbake -c compile virtual/kernel -f<br>
&gt;&gt;<br>
&gt;&gt; -M<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; and I&#39;m looking again:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ...tmp/deploy/images$ ls<br>
&gt;&gt; &gt; -rw-r--r-- =A01 raul raul =A0 2511696 2012-08-15 16:23<br>
&gt;&gt; &gt; uImage-2.6.35.3-r24-imx28evk-20120815191927.bin<br>
&gt;&gt; &gt; lrwxrwxrwx =A01 raul raul =A0 =A0 =A0 =A047 2012-08-15 16:23 =
uImage-imx28evk.bin<br>
&gt;&gt; &gt; -&gt;<br>
&gt;&gt; &gt; uImage-2.6.35.3-r24-imx28evk-20120815191927.bin<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Some One can explain to me what is the correct way to re-buil=
d the<br>
&gt;&gt; &gt; virtual/kenel target?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks for all Help!<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; Raul Rosetto Mu=F1oz<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" tar=
get=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Raul Rosetto Mu=F1oz<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<b>Raul Rosetto Mu=F1oz</b><br>
</div></div>

--f46d04088c7f205d1304c766d1a0--
