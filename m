Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47487E01370
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2012 08:20:34 -0700 (PDT)
Received: by qafk30 with SMTP id k30so2683196qaf.14
	for <yocto@yoctoproject.org>; Mon, 03 Sep 2012 08:20:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=ASGBmxke/gcL8pWxkI9Etlhnu/FmmtUnLSGtjcEj/+k=;
	b=et9h+OQR0CC/EN1pq6bfX1gkOEB+E+2xsxCfDtKOTlAfexyjVduzbrSGXA6CquYWUs
	6Mfl0jdl4Ob/EtUU/ci26vKGArQLcZsb1eCoL/BdfjTXuG09DGYYMgJQE93e3y71mnAn
	HU9eVU7iY2pP9y632dd7y/OanLYD+MaRcGuP19dSbD6GnNwO1NT98sioOkRVRUEsS6W4
	FJDZcKbR4R40EBhSkTNoIr3C6484Rqiv/d62ppY092+J6en9H0Ft0rcRv3UAtoyUOM8k
	c7d0Wk/15nzW6HPhLUMBv03ujH3KAHlsL0tzC0FoTlso1MpluqiJLmA6asLXpgE3XB8Q
	cFxA==
MIME-Version: 1.0
Received: by 10.224.9.9 with SMTP id j9mr3906227qaj.32.1346685633360; Mon, 03
	Sep 2012 08:20:33 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.49.116.77 with HTTP; Mon, 3 Sep 2012 08:20:33 -0700 (PDT)
In-Reply-To: <20120903094412.GA17136@ad.chargestorm.se>
References: <504144D8.40605@intel.com>
	<CA+gsK-r_rXoS2mGntN87jS_VHjMO3FVhFFGgug0N73Wv7qjUnA@mail.gmail.com>
	<CAMKF1so68xho-Bpf2Pw8C7HJskfx1G1zdLf=hDXsznwrbfvTog@mail.gmail.com>
	<CA+gsK-rQ2UBXU4g6fwKLpn-bGsFR5b-Tw3Y03QPXtKWj+_rHGg@mail.gmail.com>
	<20120903094412.GA17136@ad.chargestorm.se>
Date: Mon, 3 Sep 2012 08:20:33 -0700
X-Google-Sender-Auth: w9XR66xIK_72qMxEwZ7AhHcYn8I
Message-ID: <CA+gsK-pVKx71iWJF92vsTyvP8tUhJ3CMFhA1_=W5Syx6rKKaYw@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlcQBHnFi3cRV1U5N5Gi3zn9KL6/2H3a4Ac6OVdXRQfqB+ae7kyLmSGuDgPvRomyYqMDnjx
Subject: Re: Beaglebone BSP for denzil?
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
X-List-Received-Date: Mon, 03 Sep 2012 15:20:34 -0000
Content-Type: multipart/alternative; boundary=bcaec517ad6cccf3f304c8cdaef6

--bcaec517ad6cccf3f304c8cdaef6
Content-Type: text/plain; charset=ISO-8859-1

Yes, I will share it once I got it working. It's not that much a function
of if and how but more of when. My time during the next couple of weeks
will be mostly consumed by the Linux Foundation's Automotive Linux Summit.

Cheers,
Rudi

On Mon, Sep 3, 2012 at 2:44 AM, Anders Darander <anders@chargestorm.se>wrote:

> * Rudolf Streif <rstreif@linuxfoundation.org> [120901 08:15]:
>
> > Yes, there were a lot of patches that I applied to the upstream kernel.
> It
> > worked but I do not think that they are all required. That's what I am
> > currently trying to figure out.
>
> Sounds interesting!
>
> Do plan to share your efforts in a layer somewhere?
>
> Cheers,
> Anders
>
>
> > On Aug 31, 2012 8:03 PM, "Khem Raj" <raj.khem@gmail.com> wrote:
>
> >     On Fri, Aug 31, 2012 at 6:44 PM, Rudolf Streif
> >     <rstreif@linuxfoundation.org> wrote:
> >     > Hey Scott,
> >     >
> >     > I am doing the same thing for a Linux Foundation class.
> >     >
> >     > The root filesystem that YP builds for the BBoard works just fine
> for the
> >     > BBone. That's at least true for core-image-minimal. I tested that
> with
> >     the
> >     > kernel that comes with the BBone.
> >     >
> >     > The kernel does not work. The BBoard has an OMAP3 CPU the BBoard
> has an
> >     > AM3359 CPU.
> >     >
> >     > I built a kernel with YP from kernel.org some patches and a
> defconfig. My
> >     > goal is to use linux-yocto so I started from scratch and did not
> use
> >     > meta-ti. And it's educational too.
> >     >
> >     > I still used MLO and UBoot that came with the BBone. My next steps
> are to
> >     > build the kernel using linux-yocto and then eventually also
> building
> >     UBoot
> >     > with YP.
>
> >     you need to add the right .config and may be patches. But there are
> lot
> >     of patches see meta-ti for more details.
>
> >     >
> >     > I can give more info but right now I am just typing this on a
> mobile with
> >     no
> >     > access to my dev box. I will follow up.
> >     >
> >     > Cheers,
> >     > Rudi
> >     >
> >     > On Aug 31, 2012 4:11 PM, "Scott Garman" <scott.a.garman@intel.com>
> wrote:
> >     >>
> >     >> Hello,
> >     >>
> >     >> Am I correct in understanding that the TI Beagleboard BSP from
> >     >> yoctoproject.org should work with the Beaglebone, or do I need
> meta-ti?
> >     I'm
> >     >> not looking for accelerated graphics or anything - this will just
> be
> >     used in
> >     >> a classroom setting where there will be Beaglebones I'd like to
> boot up
> >     to a
> >     >> minimal console image.
> >     >>
> >     >> I'll be doing this with the denzil release.
> >     >>
> >     >> Thanks,
> >     >>
> >     >> Scott
> >     >>
> >     >> --
> >     >> Scott Garman
> >     >> Embedded Linux Engineer - Yocto Project
> >     >> Intel Open Source Technology Center
> >     >> _______________________________________________
> >     >> yocto mailing list
> >     >> yocto@yoctoproject.org
> >     >> https://lists.yoctoproject.org/listinfo/yocto
> >     >
> >     >
> >     > _______________________________________________
> >     > yocto mailing list
> >     > yocto@yoctoproject.org
> >     > https://lists.yoctoproject.org/listinfo/yocto
> >     >
>
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Anders Darander
> ChargeStorm AB / eStorm AB
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--bcaec517ad6cccf3f304c8cdaef6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Yes, I will share it once I got it working. It&#39;s not that much a functi=
on of if and how but more of when. My time during the next couple of weeks =
will be mostly consumed by the Linux Foundation&#39;s Automotive Linux Summ=
it.<div>
<br></div><div><div>Cheers,</div><div>Rudi<br><br><div class=3D"gmail_quote=
">On Mon, Sep 3, 2012 at 2:44 AM, Anders Darander <span dir=3D"ltr">&lt;<a =
href=3D"mailto:anders@chargestorm.se" target=3D"_blank">anders@chargestorm.=
se</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">* Rudolf Streif &lt;<a href=3D"mailto:rstrei=
f@linuxfoundation.org">rstreif@linuxfoundation.org</a>&gt; [120901 08:15]:<=
br>

<div class=3D"im"><br>
&gt; Yes, there were a lot of patches that I applied to the upstream kernel=
. It<br>
&gt; worked but I do not think that they are all required. That&#39;s what =
I am<br>
&gt; currently trying to figure out.<br>
<br>
</div>Sounds interesting!<br>
<br>
Do plan to share your efforts in a layer somewhere?<br>
<br>
Cheers,<br>
Anders<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt; On Aug 31, 2012 8:03 PM, &quot;Khem Raj&quot; &lt;<a href=3D"mailto:ra=
j.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
<br>
&gt; =A0 =A0 On Fri, Aug 31, 2012 at 6:44 PM, Rudolf Streif<br>
&gt; =A0 =A0 &lt;<a href=3D"mailto:rstreif@linuxfoundation.org">rstreif@lin=
uxfoundation.org</a>&gt; wrote:<br>
&gt; =A0 =A0 &gt; Hey Scott,<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; I am doing the same thing for a Linux Foundation class.<b=
r>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; The root filesystem that YP builds for the BBoard works j=
ust fine for the<br>
&gt; =A0 =A0 &gt; BBone. That&#39;s at least true for core-image-minimal. I=
 tested that with<br>
&gt; =A0 =A0 the<br>
&gt; =A0 =A0 &gt; kernel that comes with the BBone.<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; The kernel does not work. The BBoard has an OMAP3 CPU the=
 BBoard has an<br>
&gt; =A0 =A0 &gt; AM3359 CPU.<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; I built a kernel with YP from <a href=3D"http://kernel.or=
g" target=3D"_blank">kernel.org</a> some patches and a defconfig. My<br>
&gt; =A0 =A0 &gt; goal is to use linux-yocto so I started from scratch and =
did not use<br>
&gt; =A0 =A0 &gt; meta-ti. And it&#39;s educational too.<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; I still used MLO and UBoot that came with the BBone. My n=
ext steps are to<br>
&gt; =A0 =A0 &gt; build the kernel using linux-yocto and then eventually al=
so building<br>
&gt; =A0 =A0 UBoot<br>
&gt; =A0 =A0 &gt; with YP.<br>
<br>
&gt; =A0 =A0 you need to add the right .config and may be patches. But ther=
e are lot<br>
&gt; =A0 =A0 of patches see meta-ti for more details.<br>
<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; I can give more info but right now I am just typing this =
on a mobile with<br>
&gt; =A0 =A0 no<br>
&gt; =A0 =A0 &gt; access to my dev box. I will follow up.<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; Cheers,<br>
&gt; =A0 =A0 &gt; Rudi<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; On Aug 31, 2012 4:11 PM, &quot;Scott Garman&quot; &lt;<a =
href=3D"mailto:scott.a.garman@intel.com">scott.a.garman@intel.com</a>&gt; w=
rote:<br>
&gt; =A0 =A0 &gt;&gt;<br>
&gt; =A0 =A0 &gt;&gt; Hello,<br>
&gt; =A0 =A0 &gt;&gt;<br>
&gt; =A0 =A0 &gt;&gt; Am I correct in understanding that the TI Beagleboard=
 BSP from<br>
&gt; =A0 =A0 &gt;&gt; <a href=3D"http://yoctoproject.org" target=3D"_blank"=
>yoctoproject.org</a> should work with the Beaglebone, or do I need meta-ti=
?<br>
&gt; =A0 =A0 I&#39;m<br>
&gt; =A0 =A0 &gt;&gt; not looking for accelerated graphics or anything - th=
is will just be<br>
&gt; =A0 =A0 used in<br>
&gt; =A0 =A0 &gt;&gt; a classroom setting where there will be Beaglebones I=
&#39;d like to boot up<br>
&gt; =A0 =A0 to a<br>
&gt; =A0 =A0 &gt;&gt; minimal console image.<br>
&gt; =A0 =A0 &gt;&gt;<br>
&gt; =A0 =A0 &gt;&gt; I&#39;ll be doing this with the denzil release.<br>
&gt; =A0 =A0 &gt;&gt;<br>
&gt; =A0 =A0 &gt;&gt; Thanks,<br>
&gt; =A0 =A0 &gt;&gt;<br>
&gt; =A0 =A0 &gt;&gt; Scott<br>
&gt; =A0 =A0 &gt;&gt;<br>
&gt; =A0 =A0 &gt;&gt; --<br>
&gt; =A0 =A0 &gt;&gt; Scott Garman<br>
&gt; =A0 =A0 &gt;&gt; Embedded Linux Engineer - Yocto Project<br>
&gt; =A0 =A0 &gt;&gt; Intel Open Source Technology Center<br>
&gt; =A0 =A0 &gt;&gt; _______________________________________________<br>
&gt; =A0 =A0 &gt;&gt; yocto mailing list<br>
&gt; =A0 =A0 &gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a><br>
&gt; =A0 =A0 &gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yo=
cto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br=
>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; _______________________________________________<br>
&gt; =A0 =A0 &gt; yocto mailing list<br>
&gt; =A0 =A0 &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproj=
ect.org</a><br>
&gt; =A0 =A0 &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; =A0 =A0 &gt;<br>
<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
Anders Darander<br>
ChargeStorm AB / eStorm AB<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5">_____________________=
__________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div></div>

--bcaec517ad6cccf3f304c8cdaef6--
