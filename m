Return-Path: <munoz0raul@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2275E002AB
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 12:49:44 -0700 (PDT)
Received: by lboi15 with SMTP id i15so1960951lbo.35
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 12:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ecmhaiIQ+u4N1o47T7i2EZkEUdsPVwW+SMsJgb6FRoY=;
	b=vWSmEIWVjFUZkzbPLrqrh51H2ifvlRPdUYc5TNtwHfQaeYJGn6WBHcDjJ5OOKzAatT
	Y7rmQd61aUYUe+y0o4rJwvNLvw64X13dRkXI0i8nU0xi37XWv0LWTpLaNhStmC7pT+0H
	esrHKVNJ1CJ/tU/BqmBUs5vEKAvMIXMGn6A4mSnmSmYOsLfSGxKnRUyXk4+s6/36NSad
	N01VEidfl5aYa6E4k9+kL/eI6RR6gZdpMPkgc6pwlHbymlSn/kt25Gzgd9i45KTz9yn+
	y7rw1ylUQLvAmGh96es2aPjEVIwVC55tL5RQtcJhb/vl3QHCzlbYv1sIPVTyQm0iUuHu
	D2uA==
MIME-Version: 1.0
Received: by 10.152.114.3 with SMTP id jc3mr2440536lab.11.1345146583599; Thu,
	16 Aug 2012 12:49:43 -0700 (PDT)
Received: by 10.112.21.194 with HTTP; Thu, 16 Aug 2012 12:49:43 -0700 (PDT)
In-Reply-To: <CAEsOVNccf=Xh5xax=9G-D0cGai=q=GYMVy4CyDD+QWLks_yjNw@mail.gmail.com>
References: <CANmVirjvYNf0kedcpWP1zhNuu9_4_f-Zr-LR8aQS=1JBpUPJLQ@mail.gmail.com>
	<CAEsOVNdLwWySAnOc9J8umOU75oV1S8f-9RWJFxHV2n1e4Q=MqA@mail.gmail.com>
	<CANmViri9CS7CHj_p9emS8dFTZNOXeKDLYxLaznsLasX+sb_FBg@mail.gmail.com>
	<CAEsOVNfRQeD24cqyPGJh7G_fLRVrj+bWmKmm0K6ORy=Gaek7KQ@mail.gmail.com>
	<CANmVirgEXgjqcPggzic7oepx3H+tETPUzQz9oNG8CLfWpDP-rA@mail.gmail.com>
	<CAEsOVNccf=Xh5xax=9G-D0cGai=q=GYMVy4CyDD+QWLks_yjNw@mail.gmail.com>
Date: Thu, 16 Aug 2012 16:49:43 -0300
Message-ID: <CANmVirhPS-ZfBZn9JrYtOW5r-5sYWe+HGcduKHhV5G+jnm5qRw@mail.gmail.com>
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
X-List-Received-Date: Thu, 16 Aug 2012 19:49:45 -0000
Content-Type: multipart/alternative; boundary=f46d04088c7f494b5704c767583d

--f46d04088c7f494b5704c767583d
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All the time before loking at tmp/deploy/image/

I did bitbake core-image-minimal.

Maybe the .sdcard use the correct uImage and this image is not the uImage
in deploy/image path!

How can I see the .sdcard using the uImage?

Thanks for Help

2012/8/16 McClintock Matthew-B29882 <B29882@freescale.com>

> You have to also run a target that deploy's the kernel or at least run
> the deploy command manuall
>
> bitbake core-image-minimal
>
> or
>
> bitbake virtual/kernel -c deploy
>
> -M
>
> On Thu, Aug 16, 2012 at 2:11 PM, Raul Rosetto Munoz
> <munoz0raul@gmail.com> wrote:
> > don't work.....
> >
> >
> >
> >
> > 2012/8/16 McClintock Matthew-B29882 <B29882@freescale.com>
> >>
> >> What about the -f?
> >>
> >> -M
> >>
> >> On Thu, Aug 16, 2012 at 2:02 PM, Raul Rosetto Munoz
> >> <munoz0raul@gmail.com> wrote:
> >> > I did all de comands with -c and do not work!
> >> >
> >> > Some one no some thing that I can try to update de uImage file?
> >> >
> >> > Thanks for the sugestion.
> >> >
> >> >
> >> >
> >> > 2012/8/16 McClintock Matthew-B29882 <B29882@freescale.com>
> >> >>
> >> >> On Thu, Aug 16, 2012 at 7:11 AM, Raul Rosetto Munoz
> >> >> <munoz0raul@gmail.com> wrote:
> >> >> > Hello All,
> >> >> >
> >> >> > I'm use yocto to create a linux for imx28, with meta-fsl-arm and
> >> >> > meta-openembedded.
> >> >> >
> >> >> > Until now, every thing is ok, I Have a
> >> >> > core-image-minimal-imx28evk.sdcard
> >> >> > that working in the machine.
> >> >> >
> >> >> > My problem is that when I try to add some things in the kernel
> >> >> > configuration, I feel like the system build dont generate a new
> >> >> > uImage
> >> >> > file
> >> >> > or the thing that I selected in the Kernel dont be atached in the
> >> >> > core-image-minimal-imx28evk.sdcard!
> >> >> >
> >> >> > What I did is:
> >> >> >
> >> >> > ...tmp/deploy/images$ ls
> >> >> > -rw-r--r--  1 raul raul   2511696 2012-08-15 16:23
> >> >> > uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
> >> >> > lrwxrwxrwx  1 raul raul        47 2012-08-15 16:23
> >> >> > uImage-imx28evk.bin
> >> >> > ->
> >> >> > uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
> >> >> >
> >> >> > then:
> >> >> >
> >> >> > bitbake -c menuconfig virtual/kernel
> >> >> > bitbake -c patch virtual/kernel
> >> >> > bitbake -c compile virtual/kernel
> >> >> > bitbake  virtual/kernel
> >> >>
> >> >> Try
> >> >>
> >> >> bitbake -c compile virtual/kernel -f
> >> >>
> >> >> -M
> >> >>
> >> >> >
> >> >> > and I'm looking again:
> >> >> >
> >> >> > ...tmp/deploy/images$ ls
> >> >> > -rw-r--r--  1 raul raul   2511696 2012-08-15 16:23
> >> >> > uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
> >> >> > lrwxrwxrwx  1 raul raul        47 2012-08-15 16:23
> >> >> > uImage-imx28evk.bin
> >> >> > ->
> >> >> > uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
> >> >> >
> >> >> > Some One can explain to me what is the correct way to re-build th=
e
> >> >> > virtual/kenel target?
> >> >> >
> >> >> > Thanks for all Help!
> >> >> >
> >> >> > --
> >> >> > Raul Rosetto Mu=F1oz
> >> >> >
> >> >> > _______________________________________________
> >> >> > yocto mailing list
> >> >> > yocto@yoctoproject.org
> >> >> > https://lists.yoctoproject.org/listinfo/yocto
> >> >> >
> >> >
> >> >
> >> >
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

--f46d04088c7f494b5704c767583d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>All the time before loking at tmp/deploy/image/</div><div><br></div><d=
iv>I did=A0bitbake core-image-minimal.</div><div><br></div><div>Maybe the .=
sdcard use the correct uImage and this image is not the uImage in deploy/im=
age path!</div>
<div><br></div><div>How can I see the .sdcard using the uImage?</div><div><=
br></div><div>Thanks for Help</div><div><br><div class=3D"gmail_quote">2012=
/8/16 McClintock Matthew-B29882 <span dir=3D"ltr">&lt;<a href=3D"mailto:B29=
882@freescale.com" target=3D"_blank">B29882@freescale.com</a>&gt;</span><br=
>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">You have to also run a target that deploy&#3=
9;s the kernel or at least run<br>
the deploy command manuall<br>
<br>
bitbake core-image-minimal<br>
<br>
or<br>
<br>
bitbake virtual/kernel -c deploy<br>
<br>
-M<br>
<br>
On Thu, Aug 16, 2012 at 2:11 PM, Raul Rosetto Munoz<br>
<div class=3D"HOEnZb"><div class=3D"h5">&lt;<a href=3D"mailto:munoz0raul@gm=
ail.com">munoz0raul@gmail.com</a>&gt; wrote:<br>
&gt; don&#39;t work.....<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; 2012/8/16 McClintock Matthew-B29882 &lt;<a href=3D"mailto:B29882@frees=
cale.com">B29882@freescale.com</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt; What about the -f?<br>
&gt;&gt;<br>
&gt;&gt; -M<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Aug 16, 2012 at 2:02 PM, Raul Rosetto Munoz<br>
&gt;&gt; &lt;<a href=3D"mailto:munoz0raul@gmail.com">munoz0raul@gmail.com</=
a>&gt; wrote:<br>
&gt;&gt; &gt; I did all de comands with -c and do not work!<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Some one no some thing that I can try to update de uImage fil=
e?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks for the sugestion.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; 2012/8/16 McClintock Matthew-B29882 &lt;<a href=3D"mailto:B29=
882@freescale.com">B29882@freescale.com</a>&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Thu, Aug 16, 2012 at 7:11 AM, Raul Rosetto Munoz<br>
&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:munoz0raul@gmail.com">munoz0raul@gm=
ail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt; Hello All,<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; I&#39;m use yocto to create a linux for imx28, with =
meta-fsl-arm and<br>
&gt;&gt; &gt;&gt; &gt; meta-openembedded.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Until now, every thing is ok, I Have a<br>
&gt;&gt; &gt;&gt; &gt; core-image-minimal-imx28evk.sdcard<br>
&gt;&gt; &gt;&gt; &gt; that working in the machine.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; My problem is that when I try to add some things in =
the kernel<br>
&gt;&gt; &gt;&gt; &gt; configuration, I feel like the system build dont gen=
erate a new<br>
&gt;&gt; &gt;&gt; &gt; uImage<br>
&gt;&gt; &gt;&gt; &gt; file<br>
&gt;&gt; &gt;&gt; &gt; or the thing that I selected in the Kernel dont be a=
tached in the<br>
&gt;&gt; &gt;&gt; &gt; core-image-minimal-imx28evk.sdcard!<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; What I did is:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; ...tmp/deploy/images$ ls<br>
&gt;&gt; &gt;&gt; &gt; -rw-r--r-- =A01 raul raul =A0 2511696 2012-08-15 16:=
23<br>
&gt;&gt; &gt;&gt; &gt; uImage-2.6.35.3-r24-imx28evk-20120815191927.bin<br>
&gt;&gt; &gt;&gt; &gt; lrwxrwxrwx =A01 raul raul =A0 =A0 =A0 =A047 2012-08-=
15 16:23<br>
&gt;&gt; &gt;&gt; &gt; uImage-imx28evk.bin<br>
&gt;&gt; &gt;&gt; &gt; -&gt;<br>
&gt;&gt; &gt;&gt; &gt; uImage-2.6.35.3-r24-imx28evk-20120815191927.bin<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; then:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; bitbake -c menuconfig virtual/kernel<br>
&gt;&gt; &gt;&gt; &gt; bitbake -c patch virtual/kernel<br>
&gt;&gt; &gt;&gt; &gt; bitbake -c compile virtual/kernel<br>
&gt;&gt; &gt;&gt; &gt; bitbake =A0virtual/kernel<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Try<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; bitbake -c compile virtual/kernel -f<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; -M<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; and I&#39;m looking again:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; ...tmp/deploy/images$ ls<br>
&gt;&gt; &gt;&gt; &gt; -rw-r--r-- =A01 raul raul =A0 2511696 2012-08-15 16:=
23<br>
&gt;&gt; &gt;&gt; &gt; uImage-2.6.35.3-r24-imx28evk-20120815191927.bin<br>
&gt;&gt; &gt;&gt; &gt; lrwxrwxrwx =A01 raul raul =A0 =A0 =A0 =A047 2012-08-=
15 16:23<br>
&gt;&gt; &gt;&gt; &gt; uImage-imx28evk.bin<br>
&gt;&gt; &gt;&gt; &gt; -&gt;<br>
&gt;&gt; &gt;&gt; &gt; uImage-2.6.35.3-r24-imx28evk-20120815191927.bin<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Some One can explain to me what is the correct way t=
o re-build the<br>
&gt;&gt; &gt;&gt; &gt; virtual/kenel target?<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Thanks for all Help!<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; --<br>
&gt;&gt; &gt;&gt; &gt; Raul Rosetto Mu=F1oz<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoct=
oproject.org</a><br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/y=
octo" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><b=
r>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
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
</div>

--f46d04088c7f494b5704c767583d--
