Return-Path: <adam.yh.lee@gmail.com>
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B267E005BB
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2014 10:40:38 -0800 (PST)
Received: by mail-lb0-f180.google.com with SMTP id n15so2872545lbi.11
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2014 10:40:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=eTDTc1VItC9+YM5UTXY9yJMHJ6rmN1p0hlHtX6hH45k=;
	b=Nmt39J82KC0ArVhA15y+jrz9YMrmfDwjrE/IlcKSc/gJJV9VciyesMGut1OcQlsXBH
	egAs24BmvFdmgSV/1uWST69hWge5X8UYuOtSTklX6B7l/b1mqTmFGzi4wMg6Ltz7LyrB
	wmJa4wV7Jdj3e+QKUqW9pc/2tES0usKZoRBeFW32JihqdYQl192v0A3OxS8cCeoq+tUY
	WBkTamrctTPblr8463mBnVxtb3GjAP3yo9lAqGJkn/lLaDj0oT5ZTN/YTh/PsL9KkrXZ
	8/S+7B3N38b6/MwX6/v/IIpmkNor8rEL4N3L5bPnEzMQeRkMWp5h5f20xvexYEMGUtaE
	fcXg==
MIME-Version: 1.0
X-Received: by 10.112.204.104 with SMTP id kx8mr10153538lbc.12.1391107237115; 
	Thu, 30 Jan 2014 10:40:37 -0800 (PST)
Received: by 10.114.57.68 with HTTP; Thu, 30 Jan 2014 10:40:37 -0800 (PST)
In-Reply-To: <52E96001.7030000@dynamicdevices.co.uk>
References: <52E96001.7030000@dynamicdevices.co.uk>
Date: Thu, 30 Jan 2014 10:40:37 -0800
Message-ID: <CAFeBWL737fZb2RsWoTJnU-xw-XuO5g3ynhvpDaEGZnbUijXi0g@mail.gmail.com>
From: Adam Lee <adam.yh.lee@gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to temporarily disable a package rebuild during an image build?
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
X-List-Received-Date: Thu, 30 Jan 2014 18:40:41 -0000
Content-Type: multipart/alternative; boundary=001a11c3c7f0b67b0804f13464aa

--001a11c3c7f0b67b0804f13464aa
Content-Type: text/plain; charset=ISO-8859-1

I am not sure if that's the correct behaviour at all. If you are building
the kernel, it should only build the kernel (and its deps).
How are you building it? I suppose you are doing 'bitbake virtual/kernel',
but just checking!

Adam


On Wed, Jan 29, 2014 at 12:09 PM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

> Hi,
>
> I was wondering if there's a per-package environment variable I could
> use to contrain the rebuilding of packages?
>
> i.e. I am modifying a linux-imx kernel, rebuilding that kernel package
> and then generating an output filesystem image to boot from an SD card
> for testing.
>
> Each time I modify linux-imx I am finding that qt4 does a rebuild.
>
> So whilst I'm making changes to linux-imx for test I'd rather that q4
> didn't rebuild when I build the image, and was wondering if there's a
> way to prevent that?
>
> (I could, I suppose, move to a testing model that didn't use a
> completely rebuilt SD card image but I like this approach as if it
> works, well, it works, and I can distribute. Perhaps there's a better way?)
>
> Thanks,
>
> Alex
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c3c7f0b67b0804f13464aa
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am not sure if that&#39;s the correct behaviour at all. =
If you are building the kernel, it should only build the kernel (and its de=
ps).<div>How are you building it? I suppose you are doing &#39;bitbake virt=
ual/kernel&#39;, but just checking!</div>
<div><br></div><div>Adam</div></div><div class=3D"gmail_extra"><br><br><div=
 class=3D"gmail_quote">On Wed, Jan 29, 2014 at 12:09 PM, Alex J Lennon <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=
=3D"_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<br>
<br>
I was wondering if there&#39;s a per-package environment variable I could<b=
r>
use to contrain the rebuilding of packages?<br>
<br>
i.e. I am modifying a linux-imx kernel, rebuilding that kernel package<br>
and then generating an output filesystem image to boot from an SD card<br>
for testing.<br>
<br>
Each time I modify linux-imx I am finding that qt4 does a rebuild.<br>
<br>
So whilst I&#39;m making changes to linux-imx for test I&#39;d rather that =
q4<br>
didn&#39;t rebuild when I build the image, and was wondering if there&#39;s=
 a<br>
way to prevent that?<br>
<br>
(I could, I suppose, move to a testing model that didn&#39;t use a<br>
completely rebuilt SD card image but I like this approach as if it<br>
works, well, it works, and I can distribute. Perhaps there&#39;s a better w=
ay?)<br>
<br>
Thanks,<br>
<br>
Alex<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--001a11c3c7f0b67b0804f13464aa--
