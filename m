Return-Path: <josefahmad1@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A931E0030A
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2011 01:06:23 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eaal12 with SMTP id l12so2222299eaa.35
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2011 01:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=LaJryn8IIQNeKik90ow8MIpFMFNDVEu1RRH1PDv7O9Q=;
	b=o//MlMvhYxI8VjlBT//vwwOFGHcR8XArsLDm7TeqDgi0biBkLHs0bnkIdp88qx0mOJ
	obEmvYH4UsNW1Sra6LT6uh7qXwp5eXFtjGYcKDxu7BCQDV4On1/BizZNTNTu3t5Ge5xS
	AQffad9wFy/qdN7HU3V7ib8uDd/3rpvQMTJCA=
MIME-Version: 1.0
Received: by 10.213.8.6 with SMTP id f6mr114028ebf.22.1322471180107; Mon, 28
	Nov 2011 01:06:20 -0800 (PST)
Received: by 10.213.19.194 with HTTP; Mon, 28 Nov 2011 01:06:19 -0800 (PST)
In-Reply-To: <4ECE6A6D.8000309@linux.intel.com>
References: <CACJvPv2FrniU=pVT1WfLPv+4vnNNxxR0WgGFwUER3sYy5HoVtw@mail.gmail.com>
	<4ECD138D.50401@linux.intel.com>
	<CACJvPv3f-zZ6zK6roH0F5-WnoK6JRt6YEFQBvi2B_dz0ZKOeAg@mail.gmail.com>
	<4ECE6A6D.8000309@linux.intel.com>
Date: Mon, 28 Nov 2011 09:06:19 +0000
Message-ID: <CACJvPv3J+8y+GNGqXJC2oE720jzk0A8cYKHL_EFgpik7kCOeHg@mail.gmail.com>
From: Josef Ahmad <josefahmad1@gmail.com>
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
X-List-Received-Date: Mon, 28 Nov 2011 09:06:23 -0000
Content-Type: multipart/alternative; boundary=0015174c0f7cea81ce04b2c7d0b9

--0015174c0f7cea81ce04b2c7d0b9
Content-Type: text/plain; charset=ISO-8859-1

Hi Darren,

I checked out your dvhart/efi branch and attempted to build my BSP.
I inlcuded "efi" to my MACHINE_FEATURES, and "live" to my IMAGE_FSTYPES, so
as to get an .hddimg file.

I haven't found GRUB in my deployed hddimg though. Maybe I'm missing
something?

Thanks

Josef

On 24 November 2011 16:01, Darren Hart <dvhart@linux.intel.com> wrote:

> On 11/24/2011 12:48 AM, Josef Ahmad wrote:
> > Hi Darren,
> >
> > I'll track your branch to sync our efforts.
>
> Hi Josef,
>
> Great. I just sent an RFC patch series to this list last night. Please
> try it out and see how it goes.
>
> >
> > I meant to only generate the Grub EFI binary for the target, without
> > including any tool/library into the root filesystem: I assumed that it's
> > sufficient to deploy the bootloader onto the top-level image. That's why
>
> Agreed.
>
> > I build natively the mkimage tool and run that on the host to get the
> > EFI executable. Now, as you justly point out, there's a target mismatch:
> > mkimage incorrectly calls out the host architecture under the -O switch,
> > whereas it should have been something like ${TARGET_ARCH}-efi.
>
> Right. That took some doing, but it is now resolved in my branch.
>
> >
> > That said, surely a solution that embodies the GRUB tools into the root
> > filesystem is desirable.
>
> That can be accomplished using the grub_1.99 recipe. Perhaps we should
> enable building with EFI if MACHINE_FEATURES includes "efi". I consider
> that to be separate from this effort.
>
>
> > Feel free to merge my grub config generator into your branch, as well as
> > any of my contrib you may like. Speaking of grub.bbclass, I named it so
> > as it's not specifically tied to the EFI mode. It basically builds up
> > the grub configuration menu, based off machine-specific parameters. I
> > implemented it among the lines of syslinux.bbclass.
>
> While the menu creation isn't necessarily EFI specific, the rest of the
> bbclass is. If we wanted to, we could create another grub.bbclass that
> can do a live image with GRUB legacy booting. However, I'm also working
> to use the syslinux family of loaders wherever possible. I'm using
> grub-efi as a stop-gap until an EFI syslinux becomes available. The idea
> here is to keep things consistent from the live image to the installed
> image, as well as reduce the number of bootloaders and configuration
> files we need deal with for a given BSP.
>
> Please review the patch series I sent out and let me know if it works
> for your purposes. General code review is needed as well.
>
> Thanks Josef!
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0015174c0f7cea81ce04b2c7d0b9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Darren,<br><br>I checked out your dvhart/efi branch and attempted to bui=
ld my BSP.<br>I inlcuded &quot;efi&quot; to my MACHINE_FEATURES, and &quot;=
live&quot; to my IMAGE_FSTYPES, so as to get an .hddimg file.<br><br>I have=
n&#39;t found GRUB in my deployed hddimg though. Maybe I&#39;m missing some=
thing?<br>
<br>Thanks<br><br>Josef<br><br><div class=3D"gmail_quote">On 24 November 20=
11 16:01, Darren Hart <span dir=3D"ltr">&lt;<a href=3D"mailto:dvhart@linux.=
intel.com">dvhart@linux.intel.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex;">
<div class=3D"im">On 11/24/2011 12:48 AM, Josef Ahmad wrote:<br>
&gt; Hi Darren,<br>
&gt;<br>
&gt; I&#39;ll track your branch to sync our efforts.<br>
<br>
</div>Hi Josef,<br>
<br>
Great. I just sent an RFC patch series to this list last night. Please<br>
try it out and see how it goes.<br>
<div class=3D"im"><br>
&gt;<br>
&gt; I meant to only generate the Grub EFI binary for the target, without<b=
r>
&gt; including any tool/library into the root filesystem: I assumed that it=
&#39;s<br>
&gt; sufficient to deploy the bootloader onto the top-level image. That&#39=
;s why<br>
<br>
</div>Agreed.<br>
<div class=3D"im"><br>
&gt; I build natively the mkimage tool and run that on the host to get the<=
br>
&gt; EFI executable. Now, as you justly point out, there&#39;s a target mis=
match:<br>
&gt; mkimage incorrectly calls out the host architecture under the -O switc=
h,<br>
&gt; whereas it should have been something like ${TARGET_ARCH}-efi.<br>
<br>
</div>Right. That took some doing, but it is now resolved in my branch.<br>
<div class=3D"im"><br>
&gt;<br>
&gt; That said, surely a solution that embodies the GRUB tools into the roo=
t<br>
&gt; filesystem is desirable.<br>
<br>
</div>That can be accomplished using the grub_1.99 recipe. Perhaps we shoul=
d<br>
enable building with EFI if MACHINE_FEATURES includes &quot;efi&quot;. I co=
nsider<br>
that to be separate from this effort.<br>
<div class=3D"im"><br>
<br>
&gt; Feel free to merge my grub config generator into your branch, as well =
as<br>
&gt; any of my contrib you may like. Speaking of grub.bbclass, I named it s=
o<br>
&gt; as it&#39;s not specifically tied to the EFI mode. It basically builds=
 up<br>
&gt; the grub configuration menu, based off machine-specific parameters. I<=
br>
&gt; implemented it among the lines of syslinux.bbclass.<br>
<br>
</div>While the menu creation isn&#39;t necessarily EFI specific, the rest =
of the<br>
bbclass is. If we wanted to, we could create another grub.bbclass that<br>
can do a live image with GRUB legacy booting. However, I&#39;m also working=
<br>
to use the syslinux family of loaders wherever possible. I&#39;m using<br>
grub-efi as a stop-gap until an EFI syslinux becomes available. The idea<br=
>
here is to keep things consistent from the live image to the installed<br>
image, as well as reduce the number of bootloaders and configuration<br>
files we need deal with for a given BSP.<br>
<br>
Please review the patch series I sent out and let me know if it works<br>
for your purposes. General code review is needed as well.<br>
<br>
Thanks Josef!<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
--<br>
Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br>

--0015174c0f7cea81ce04b2c7d0b9--
