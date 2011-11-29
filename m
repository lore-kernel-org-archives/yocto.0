Return-Path: <josefahmad1@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08888E0030A
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2011 01:06:50 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eaal12 with SMTP id l12so3946965eaa.35
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2011 01:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=Sg8k2mLI/+snlrcQ9DevhrFtDmHnIJ3mgFHxfS9PmII=;
	b=TvcO3ZZW330xWbTgzYYuh12SWutWlqSalQZF5XX7/t6fX6b8BieLCV/yeRHFyrIXBR
	RU/oFBB70yFfmDOoBSJTZ1OWQtCF7kXuCxbRhj6DnglN66klSsZpkqSXN7wGcCS+uY8K
	fEvSxLJcTHLZXY8kGoro6j1QSl9LF7TKviW1k=
MIME-Version: 1.0
Received: by 10.213.4.208 with SMTP id 16mr2533414ebs.60.1322557609470; Tue,
	29 Nov 2011 01:06:49 -0800 (PST)
Sender: josefahmad1@gmail.com
Received: by 10.213.19.194 with HTTP; Tue, 29 Nov 2011 01:06:49 -0800 (PST)
In-Reply-To: <4ED3A1AE.3090107@linux.intel.com>
References: <CACJvPv2FrniU=pVT1WfLPv+4vnNNxxR0WgGFwUER3sYy5HoVtw@mail.gmail.com>
	<4ECD138D.50401@linux.intel.com>
	<CACJvPv3f-zZ6zK6roH0F5-WnoK6JRt6YEFQBvi2B_dz0ZKOeAg@mail.gmail.com>
	<4ECE6A6D.8000309@linux.intel.com>
	<CACJvPv3J+8y+GNGqXJC2oE720jzk0A8cYKHL_EFgpik7kCOeHg@mail.gmail.com>
	<4ED3A1AE.3090107@linux.intel.com>
Date: Tue, 29 Nov 2011 09:06:49 +0000
X-Google-Sender-Auth: v8Dbd0-VzTr1k4Lo-xW2idiOq6Y
Message-ID: <CACJvPv0tg6dHbwUFCxvDs_gkEYvDQ+PPCL+3J_RoTtttm1cSQQ@mail.gmail.com>
From: Josef Ahmad <josef.ahmad@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] EFI support for IA
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
X-List-Received-Date: Tue, 29 Nov 2011 09:06:51 -0000
Content-Type: multipart/alternative; boundary=00151750d87c81eae504b2dbf0a7

--00151750d87c81eae504b2dbf0a7
Content-Type: text/plain; charset=ISO-8859-1

Darren,

My bad. I added the two configuration statements into local.conf.
Now I moved the two statements into my machine configuration files, and I
confirm it works. The system image is deployed including bootia32.efi and
configuration file, and I successfully booted the kernel.

Good work!
Regarding Grub vs Syslinux as the adopted bootloader, I agree with choosing
the second one as the default, as soon as an EFI release of Syslinux shows
up.
At the same time though, I reckon it might be worthy to keep Grub as a
second choice for EFI bootloading, rather than drop its support. Also,
because of the way you refactored the boot image generation procedure,
adding further bootloaders doesn't require any longer a big effort.

Josef

On 28 November 2011 14:58, Darren Hart <dvhart@linux.intel.com> wrote:

>
>
> On 11/28/2011 01:06 AM, Josef Ahmad wrote:
> > Hi Darren,
> >
> > I checked out your dvhart/efi branch and attempted to build my BSP.
> > I inlcuded "efi" to my MACHINE_FEATURES, and "live" to my IMAGE_FSTYPES,
> > so as to get an .hddimg file.
> >
> > I haven't found GRUB in my deployed hddimg though. Maybe I'm missing
> > something?
>
>
> Hi Josef,
>
> Do you see bootia32.efi and grub.cfg in the root directory of the
> hddimg? That is all it installs.
>
> --
> Darren
>
> >
> > Thanks
> >
> > Josef
> >
> > On 24 November 2011 16:01, Darren Hart <dvhart@linux.intel.com
> > <mailto:dvhart@linux.intel.com>> wrote:
> >
> >     On 11/24/2011 12:48 AM, Josef Ahmad wrote:
> >     > Hi Darren,
> >     >
> >     > I'll track your branch to sync our efforts.
> >
> >     Hi Josef,
> >
> >     Great. I just sent an RFC patch series to this list last night.
> Please
> >     try it out and see how it goes.
> >
> >     >
> >     > I meant to only generate the Grub EFI binary for the target,
> without
> >     > including any tool/library into the root filesystem: I assumed
> >     that it's
> >     > sufficient to deploy the bootloader onto the top-level image.
> >     That's why
> >
> >     Agreed.
> >
> >     > I build natively the mkimage tool and run that on the host to get
> the
> >     > EFI executable. Now, as you justly point out, there's a target
> >     mismatch:
> >     > mkimage incorrectly calls out the host architecture under the -O
> >     switch,
> >     > whereas it should have been something like ${TARGET_ARCH}-efi.
> >
> >     Right. That took some doing, but it is now resolved in my branch.
> >
> >     >
> >     > That said, surely a solution that embodies the GRUB tools into the
> >     root
> >     > filesystem is desirable.
> >
> >     That can be accomplished using the grub_1.99 recipe. Perhaps we
> should
> >     enable building with EFI if MACHINE_FEATURES includes "efi". I
> consider
> >     that to be separate from this effort.
> >
> >
> >     > Feel free to merge my grub config generator into your branch, as
> >     well as
> >     > any of my contrib you may like. Speaking of grub.bbclass, I named
> >     it so
> >     > as it's not specifically tied to the EFI mode. It basically builds
> up
> >     > the grub configuration menu, based off machine-specific
> parameters. I
> >     > implemented it among the lines of syslinux.bbclass.
> >
> >     While the menu creation isn't necessarily EFI specific, the rest of
> the
> >     bbclass is. If we wanted to, we could create another grub.bbclass
> that
> >     can do a live image with GRUB legacy booting. However, I'm also
> working
> >     to use the syslinux family of loaders wherever possible. I'm using
> >     grub-efi as a stop-gap until an EFI syslinux becomes available. The
> idea
> >     here is to keep things consistent from the live image to the
> installed
> >     image, as well as reduce the number of bootloaders and configuration
> >     files we need deal with for a given BSP.
> >
> >     Please review the patch series I sent out and let me know if it works
> >     for your purposes. General code review is needed as well.
> >
> >     Thanks Josef!
> >
> >     --
> >     Darren Hart
> >     Intel Open Source Technology Center
> >     Yocto Project - Linux Kernel
> >     _______________________________________________
> >     yocto mailing list
> >     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >     https://lists.yoctoproject.org/listinfo/yocto
> >
> >
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
>

--00151750d87c81eae504b2dbf0a7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Darren,<br><br>My bad. I added the two configuration statements into local.=
conf. <br>Now
 I moved the two statements into my machine configuration files, and I=20
confirm it works. The system image is deployed including bootia32.efi=20
and configuration file, and I successfully booted the kernel.<br><br>Good w=
ork! <br>Regarding
 Grub vs Syslinux as the adopted bootloader, I agree with choosing the=20
second one as the default, as soon as an EFI release of Syslinux shows=20
up.<br>At the same time though, I reckon it might be worthy to keep Grub
 as a second choice for EFI bootloading, rather than drop its support.=20
Also, because of the way you refactored the boot image generation=20
procedure, adding further bootloaders doesn&#39;t require  any longer a big=
=20
effort.<br>
<br>
Josef <br><br><div class=3D"gmail_quote">On 28 November 2011 14:58, Darren =
Hart <span dir=3D"ltr">&lt;<a href=3D"mailto:dvhart@linux.intel.com">dvhart=
@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">
<div class=3D"im"><br>
<br>
On 11/28/2011 01:06 AM, Josef Ahmad wrote:<br>
&gt; Hi Darren,<br>
&gt;<br>
</div><div class=3D"im">&gt; I checked out your dvhart/efi branch and attem=
pted to build my BSP.<br>
&gt; I inlcuded &quot;efi&quot; to my MACHINE_FEATURES, and &quot;live&quot=
; to my IMAGE_FSTYPES,<br>
&gt; so as to get an .hddimg file.<br>
&gt;<br>
&gt; I haven&#39;t found GRUB in my deployed hddimg though. Maybe I&#39;m m=
issing<br>
&gt; something?<br>
<br>
<br>
</div>Hi Josef,<br>
<br>
Do you see bootia32.efi and grub.cfg in the root directory of the<br>
hddimg? That is all it installs.<br>
<br>
--<br>
Darren<br>
<div class=3D"im"><br>
&gt;<br>
&gt; Thanks<br>
&gt;<br>
&gt; Josef<br>
&gt;<br>
&gt; On 24 November 2011 16:01, Darren Hart &lt;<a href=3D"mailto:dvhart@li=
nux.intel.com">dvhart@linux.intel.com</a><br>
</div><div><div class=3D"h5">&gt; &lt;mailto:<a href=3D"mailto:dvhart@linux=
.intel.com">dvhart@linux.intel.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt; =A0 =A0 On 11/24/2011 12:48 AM, Josef Ahmad wrote:<br>
&gt; =A0 =A0 &gt; Hi Darren,<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; I&#39;ll track your branch to sync our efforts.<br>
&gt;<br>
&gt; =A0 =A0 Hi Josef,<br>
&gt;<br>
&gt; =A0 =A0 Great. I just sent an RFC patch series to this list last night=
. Please<br>
&gt; =A0 =A0 try it out and see how it goes.<br>
&gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; I meant to only generate the Grub EFI binary for the targ=
et, without<br>
&gt; =A0 =A0 &gt; including any tool/library into the root filesystem: I as=
sumed<br>
&gt; =A0 =A0 that it&#39;s<br>
&gt; =A0 =A0 &gt; sufficient to deploy the bootloader onto the top-level im=
age.<br>
&gt; =A0 =A0 That&#39;s why<br>
&gt;<br>
&gt; =A0 =A0 Agreed.<br>
&gt;<br>
&gt; =A0 =A0 &gt; I build natively the mkimage tool and run that on the hos=
t to get the<br>
&gt; =A0 =A0 &gt; EFI executable. Now, as you justly point out, there&#39;s=
 a target<br>
&gt; =A0 =A0 mismatch:<br>
&gt; =A0 =A0 &gt; mkimage incorrectly calls out the host architecture under=
 the -O<br>
&gt; =A0 =A0 switch,<br>
&gt; =A0 =A0 &gt; whereas it should have been something like ${TARGET_ARCH}=
-efi.<br>
&gt;<br>
&gt; =A0 =A0 Right. That took some doing, but it is now resolved in my bran=
ch.<br>
&gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; That said, surely a solution that embodies the GRUB tools=
 into the<br>
&gt; =A0 =A0 root<br>
&gt; =A0 =A0 &gt; filesystem is desirable.<br>
&gt;<br>
&gt; =A0 =A0 That can be accomplished using the grub_1.99 recipe. Perhaps w=
e should<br>
&gt; =A0 =A0 enable building with EFI if MACHINE_FEATURES includes &quot;ef=
i&quot;. I consider<br>
&gt; =A0 =A0 that to be separate from this effort.<br>
&gt;<br>
&gt;<br>
&gt; =A0 =A0 &gt; Feel free to merge my grub config generator into your bra=
nch, as<br>
&gt; =A0 =A0 well as<br>
&gt; =A0 =A0 &gt; any of my contrib you may like. Speaking of grub.bbclass,=
 I named<br>
&gt; =A0 =A0 it so<br>
&gt; =A0 =A0 &gt; as it&#39;s not specifically tied to the EFI mode. It bas=
ically builds up<br>
&gt; =A0 =A0 &gt; the grub configuration menu, based off machine-specific p=
arameters. I<br>
&gt; =A0 =A0 &gt; implemented it among the lines of syslinux.bbclass.<br>
&gt;<br>
&gt; =A0 =A0 While the menu creation isn&#39;t necessarily EFI specific, th=
e rest of the<br>
&gt; =A0 =A0 bbclass is. If we wanted to, we could create another grub.bbcl=
ass that<br>
&gt; =A0 =A0 can do a live image with GRUB legacy booting. However, I&#39;m=
 also working<br>
&gt; =A0 =A0 to use the syslinux family of loaders wherever possible. I&#39=
;m using<br>
&gt; =A0 =A0 grub-efi as a stop-gap until an EFI syslinux becomes available=
. The idea<br>
&gt; =A0 =A0 here is to keep things consistent from the live image to the i=
nstalled<br>
&gt; =A0 =A0 image, as well as reduce the number of bootloaders and configu=
ration<br>
&gt; =A0 =A0 files we need deal with for a given BSP.<br>
&gt;<br>
&gt; =A0 =A0 Please review the patch series I sent out and let me know if i=
t works<br>
&gt; =A0 =A0 for your purposes. General code review is needed as well.<br>
&gt;<br>
&gt; =A0 =A0 Thanks Josef!<br>
&gt;<br>
&gt; =A0 =A0 --<br>
&gt; =A0 =A0 Darren Hart<br>
&gt; =A0 =A0 Intel Open Source Technology Center<br>
&gt; =A0 =A0 Yocto Project - Linux Kernel<br>
&gt; =A0 =A0 _______________________________________________<br>
&gt; =A0 =A0 yocto mailing list<br>
</div></div>&gt; =A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org">yocto@yo=
ctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org">yoc=
to@yoctoproject.org</a>&gt;<br>
&gt; =A0 =A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targ=
et=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
&gt;<br>
<br>
--<br>
Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel<br>
</div></div></blockquote></div><br>

--00151750d87c81eae504b2dbf0a7--
