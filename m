Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26A3BE00283
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 23:14:33 -0700 (PDT)
Received: by iagt4 with SMTP id t4so7016418iag.35
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 23:14:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=3NPUJGV2JDxNWJAT+6NbKyodgs/iOGjbPE8q38wselo=;
	b=LdWznq484ift/KKD38RHaY2YqulphOeUZcgysEJ7Yl14jF4QS4Ts6G6tBKIAblTaTB
	6BJVh8po97uxm0PHyj6ndswZyeLkttgIVzD/hYZngcYqYhGW+xdwO8Cd8tmARYyHtdGg
	SP6Us2kgL6rIq+gCbNVJA/cOhHo1oXz3Wy+Vgxt+HCxZ2kAWPcSHgmf++oWKaEzwxaPk
	obq30YaOY+2T8NtNFT7GgB2bmVikexDzOFKlWPIpaIUa5F3jDCO1wZ1wp5YP66N/ZHb9
	iF6C3YAPw6OkEkwI3mdIqlN5xQw7z1kldxxLY4Vhwzv2K/H0HgXm2/2jdRqaa5WKcdUL
	4NJw==
MIME-Version: 1.0
Received: by 10.50.188.233 with SMTP id gd9mr5198494igc.73.1346480070115; Fri,
	31 Aug 2012 23:14:30 -0700 (PDT)
Received: by 10.64.89.104 with HTTP; Fri, 31 Aug 2012 23:14:30 -0700 (PDT)
Received: by 10.64.89.104 with HTTP; Fri, 31 Aug 2012 23:14:30 -0700 (PDT)
In-Reply-To: <CAMKF1so68xho-Bpf2Pw8C7HJskfx1G1zdLf=hDXsznwrbfvTog@mail.gmail.com>
References: <504144D8.40605@intel.com>
	<CA+gsK-r_rXoS2mGntN87jS_VHjMO3FVhFFGgug0N73Wv7qjUnA@mail.gmail.com>
	<CAMKF1so68xho-Bpf2Pw8C7HJskfx1G1zdLf=hDXsznwrbfvTog@mail.gmail.com>
Date: Fri, 31 Aug 2012 23:14:30 -0700
Message-ID: <CA+gsK-rQ2UBXU4g6fwKLpn-bGsFR5b-Tw3Y03QPXtKWj+_rHGg@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
X-Gm-Message-State: ALoCoQld/xHlGmpvsjCKy1zQtn5AtcynR0PzjBH/zbzh3avxvqMmn0uILnwVGStuhoDZLM+cdmde
Cc: yocto@yoctoproject.org, Scott A Garman <scott.a.garman@intel.com>
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
X-List-Received-Date: Sat, 01 Sep 2012 06:14:33 -0000
Content-Type: multipart/alternative; boundary=14dae934085d46c04504c89dd2f5

--14dae934085d46c04504c89dd2f5
Content-Type: text/plain; charset=ISO-8859-1

Yes, there were a lot of patches that I applied to the upstream kernel. It
worked but I do not think that they are all required. That's what I am
currently trying to figure out.
On Aug 31, 2012 8:03 PM, "Khem Raj" <raj.khem@gmail.com> wrote:

> On Fri, Aug 31, 2012 at 6:44 PM, Rudolf Streif
> <rstreif@linuxfoundation.org> wrote:
> > Hey Scott,
> >
> > I am doing the same thing for a Linux Foundation class.
> >
> > The root filesystem that YP builds for the BBoard works just fine for the
> > BBone. That's at least true for core-image-minimal. I tested that with
> the
> > kernel that comes with the BBone.
> >
> > The kernel does not work. The BBoard has an OMAP3 CPU the BBoard has an
> > AM3359 CPU.
> >
> > I built a kernel with YP from kernel.org some patches and a defconfig.
> My
> > goal is to use linux-yocto so I started from scratch and did not use
> > meta-ti. And it's educational too.
> >
> > I still used MLO and UBoot that came with the BBone. My next steps are to
> > build the kernel using linux-yocto and then eventually also building
> UBoot
> > with YP.
>
> you need to add the right .config and may be patches. But there are lot
> of patches see meta-ti for more details.
>
> >
> > I can give more info but right now I am just typing this on a mobile
> with no
> > access to my dev box. I will follow up.
> >
> > Cheers,
> > Rudi
> >
> > On Aug 31, 2012 4:11 PM, "Scott Garman" <scott.a.garman@intel.com>
> wrote:
> >>
> >> Hello,
> >>
> >> Am I correct in understanding that the TI Beagleboard BSP from
> >> yoctoproject.org should work with the Beaglebone, or do I need
> meta-ti? I'm
> >> not looking for accelerated graphics or anything - this will just be
> used in
> >> a classroom setting where there will be Beaglebones I'd like to boot up
> to a
> >> minimal console image.
> >>
> >> I'll be doing this with the denzil release.
> >>
> >> Thanks,
> >>
> >> Scott
> >>
> >> --
> >> Scott Garman
> >> Embedded Linux Engineer - Yocto Project
> >> Intel Open Source Technology Center
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--14dae934085d46c04504c89dd2f5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>Yes, there were a lot of patches that I applied to the upstream kernel. =
It worked but I do not think that they are all required. That&#39;s what I =
am currently trying to figure out.</p>
<div class=3D"gmail_quote">On Aug 31, 2012 8:03 PM, &quot;Khem Raj&quot; &l=
t;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<b=
r type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
On Fri, Aug 31, 2012 at 6:44 PM, Rudolf Streif<br>
&lt;<a href=3D"mailto:rstreif@linuxfoundation.org">rstreif@linuxfoundation.=
org</a>&gt; wrote:<br>
&gt; Hey Scott,<br>
&gt;<br>
&gt; I am doing the same thing for a Linux Foundation class.<br>
&gt;<br>
&gt; The root filesystem that YP builds for the BBoard works just fine for =
the<br>
&gt; BBone. That&#39;s at least true for core-image-minimal. I tested that =
with the<br>
&gt; kernel that comes with the BBone.<br>
&gt;<br>
&gt; The kernel does not work. The BBoard has an OMAP3 CPU the BBoard has a=
n<br>
&gt; AM3359 CPU.<br>
&gt;<br>
&gt; I built a kernel with YP from <a href=3D"http://kernel.org" target=3D"=
_blank">kernel.org</a> some patches and a defconfig. My<br>
&gt; goal is to use linux-yocto so I started from scratch and did not use<b=
r>
&gt; meta-ti. And it&#39;s educational too.<br>
&gt;<br>
&gt; I still used MLO and UBoot that came with the BBone. My next steps are=
 to<br>
&gt; build the kernel using linux-yocto and then eventually also building U=
Boot<br>
&gt; with YP.<br>
<br>
you need to add the right .config and may be patches. But there are lot<br>
of patches see meta-ti for more details.<br>
<br>
&gt;<br>
&gt; I can give more info but right now I am just typing this on a mobile w=
ith no<br>
&gt; access to my dev box. I will follow up.<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Rudi<br>
&gt;<br>
&gt; On Aug 31, 2012 4:11 PM, &quot;Scott Garman&quot; &lt;<a href=3D"mailt=
o:scott.a.garman@intel.com">scott.a.garman@intel.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hello,<br>
&gt;&gt;<br>
&gt;&gt; Am I correct in understanding that the TI Beagleboard BSP from<br>
&gt;&gt; <a href=3D"http://yoctoproject.org" target=3D"_blank">yoctoproject=
.org</a> should work with the Beaglebone, or do I need meta-ti? I&#39;m<br>
&gt;&gt; not looking for accelerated graphics or anything - this will just =
be used in<br>
&gt;&gt; a classroom setting where there will be Beaglebones I&#39;d like t=
o boot up to a<br>
&gt;&gt; minimal console image.<br>
&gt;&gt;<br>
&gt;&gt; I&#39;ll be doing this with the denzil release.<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt;<br>
&gt;&gt; Scott<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Scott Garman<br>
&gt;&gt; Embedded Linux Engineer - Yocto Project<br>
&gt;&gt; Intel Open Source Technology Center<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</blockquote></div>

--14dae934085d46c04504c89dd2f5--
