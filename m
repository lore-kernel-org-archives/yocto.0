Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.4065.1614044346308143103
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 17:39:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Is8AtLGD;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: karthik.poduval@gmail.com)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8580A38C06A1
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 01:39:05 +0000 (UTC)
Received: by mail-vs1-f51.google.com with SMTP id 68so7589158vsk.11
        for <yocto@yoctoproject.org>; Mon, 22 Feb 2021 17:39:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zfRMDAz1tXt6ah5Z3DJ9nDHY1NVX8GYSIQ5rmKGxw2M=;
        b=Is8AtLGDJBLieedYVKP0/82qmZvLLguox01kAxBfHk4Z9m4GcTl42wH7mVZIhfKN04
         IJ1qQMPcois2lRWJaeBgLLZ7rWORHfUSVM/ejdcbAkJyu8FpsBxtYQ4Erj5I+AllvEN9
         vft2QSfBw4v5WRXld1txSSOU8YFNv8lp9sNt7jNRs52o2j88CbYuGUtJkDOfFbuE3MF4
         bnz6cTL17eJlYe0/bFm6/RGHwmpAWEtZvRaLMpg0sGKS84c38RavVwMuBLSHBMYHE12u
         F4TxaLmEoYV8ZuNwerYJ0WTpQrNWOf1tHcc+21cncIBQfZlR0HIexKhmDprrWyKWq9tw
         K/UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zfRMDAz1tXt6ah5Z3DJ9nDHY1NVX8GYSIQ5rmKGxw2M=;
        b=jKtv0iPVcf4IxmM02Z0vejECdj/h3a4lg2I9zH6yTQOM+jSkZ3sbkFfCSE6rYJaUpw
         zVKAzQz42jotE3RBbZIkE6Mdatk+Ml2qnHV5/p1H63vkixYFsiufkvSzMU1HwDmd8D4b
         3Vpdca7vvTXy1D2nyaKF8VM90TRg+7X5EtnVW7/hXdeSlKHU29JOWY2LPUlSCs8clY+u
         7m+t63TvXCyvDk8dv/DS4uEuMkI8Q59/ylo30fa59/BaRslmgbrHMkqPpF2Ht2qHKQ+M
         9yV+sdclglqg+GG0HZVINKfCuXdw8FFTjwilL1/vbZI26nY5s9POTEiEnlE+5DD4Nmai
         HYsg==
X-Gm-Message-State: AOAM533y3Fg1xVzbBrEzspuEP7+UxEBt+F/rs2jq9q3suGXJFREqT38S
	KZ0Tco/59Ay8RGraDfCze7v0DICmwdkCeo/6Gm4uT+hPWCVyIA==
X-Google-Smtp-Source: ABdhPJzuKeKzOGEx8q7ruLvMha46zwVz72siBIekEe8mzZCBz3VNYxuY2TCGB0PIb8wKDaa87HHGoiSt1h0isxWEWhU=
X-Received: by 2002:a67:15c1:: with SMTP id 184mr98440vsv.12.1614044344476;
 Mon, 22 Feb 2021 17:39:04 -0800 (PST)
MIME-Version: 1.0
References: <CAFP0Ok-UOjo3n1CYtg+k1C8QHz6L+4RMDcOLPnnWGJ6Oxd+azQ@mail.gmail.com>
 <CADkTA4NKtcZYHtWJGs5gOMZxUjf9dn9+KB5-ts4633tdyu8x1Q@mail.gmail.com>
In-Reply-To: <CADkTA4NKtcZYHtWJGs5gOMZxUjf9dn9+KB5-ts4633tdyu8x1Q@mail.gmail.com>
From: "Karthik Poduval" <karthik.poduval@gmail.com>
Date: Mon, 22 Feb 2021 17:38:53 -0800
Message-ID: <CAFP0Ok9+UN=t=22gZQ6MJV5DDfPPn_tSWY1w8AjNh+ojBQ94dg@mail.gmail.com>
Subject: Re: [yocto] Kernel Header UAPI Issue
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000cdf47305bbf6fbf2"

--000000000000cdf47305bbf6fbf2
Content-Type: text/plain; charset="UTF-8"

Hi Khem and Bruce,

I got the patch from raspberry pi github and it looked like it put the
header into include/uapi/linux/dma-heap.h, for kernel 5.4 it doesn't look
like there is a need for a Kbuild file. Are any special steps needed for
exporting the header (I thought kernel 5.4 exports everything from
include/uapi directory) ? The  linux-libc-headers sound like the issue.
Thanks for the pointers, I will dig up further based on the suggestions and
revert.

On Mon, Feb 22, 2021 at 5:14 PM Bruce Ashfield <bruce.ashfield@gmail.com>
wrote:

> On Mon, Feb 22, 2021 at 7:52 PM Karthik Poduval
> <karthik.poduval@gmail.com> wrote:
> >
> > I have a 5.4 kernel where I applied a patch (using a .scc file) from
> > kernel 5.6 which brings in dmabuf heaps.
> >
> > The patch exports a uapi header
> > include/uapi/linux/dma-heap.h.
> > I am trying to write an application that uses dmabuf with a recipe (no
> > special DEPENDS).
> >
> > It is able to find
> > #include<linux/dma-buf.h>
> > but not
> > #include<linux/dma-heap.h> (this file is introduced in the patch)
> >
> > I looked at the recipe's sysroot
> > recipe-sysroot/usr/linux/include
>
>
> That's coming from the linux-libc-headers, your new upi header is not
> part of the libc-headers package, so it won't show up there. And no,
> it shouldn't be part of that recipe and the libc-headers should not be
> generated from the current state of whatever kernel is being built.
>
> You need to arrange for it to be exported and staged separately (look
> for examples of 'sysroot_stage' variants in the meta-data, you can
> bbappend the behaviour to your kernel recipe), or your code can look
> for the header in the kernel shared workdir (STAGING_KERNEL_BUILDDIR)
> by adding that to your include paths in the recipe.
>
> As khem also mentioned, you'll need to make sure that the uapi header
> is not just patched in, but properly exported.
>
> Bruce
>
> >
> > and  dma-buf.h is there but not  dma-heap.h
> >
> > Why is the header not being imported ?
> >
> > --
> > Regards,
> > Karthik Poduval
> >
> > 
> >
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>


-- 
Regards,
Karthik Poduval

--000000000000cdf47305bbf6fbf2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Khem and Bruce,<div><br></div><div>I got the patch from=
 raspberry=C2=A0pi github and it looked like it put the header into include=
/uapi/linux/dma-heap.h, for kernel 5.4 it doesn&#39;t look like there is a =
need for a Kbuild file. Are any special steps needed for exporting the head=
er (I thought kernel 5.4 exports everything from include/uapi directory) ? =
The=C2=A0 linux-libc-headers sound like the issue. Thanks for the pointers,=
 I will dig up further based on the suggestions and revert.</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Fe=
b 22, 2021 at 5:14 PM Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@g=
mail.com">bruce.ashfield@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">On Mon, Feb 22, 2021 at 7:52 PM Karthik P=
oduval<br>
&lt;<a href=3D"mailto:karthik.poduval@gmail.com" target=3D"_blank">karthik=
.poduval@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I have a 5.4 kernel where I applied a patch (using a .scc file) from<=
br>
&gt; kernel 5.6 which brings in dmabuf heaps.<br>
&gt;<br>
&gt; The patch exports a uapi header<br>
&gt; include/uapi/linux/dma-heap.h.<br>
&gt; I am trying to write an application that uses dmabuf with a recipe (n=
o<br>
&gt; special DEPENDS).<br>
&gt;<br>
&gt; It is able to find<br>
&gt; #include&lt;linux/dma-buf.h&gt;<br>
&gt; but not<br>
&gt; #include&lt;linux/dma-heap.h&gt; (this file is introduced in the patc=
h)<br>
&gt;<br>
&gt; I looked at the recipe&#39;s sysroot<br>
&gt; recipe-sysroot/usr/linux/include<br>
<br>
<br>
That&#39;s coming from the linux-libc-headers, your new upi header is not<=
br>
part of the libc-headers package, so it won&#39;t show up there. And no,<b=
r>
it shouldn&#39;t be part of that recipe and the libc-headers should not be=
<br>
generated from the current state of whatever kernel is being built.<br>
<br>
You need to arrange for it to be exported and staged separately (look<br>
for examples of &#39;sysroot_stage&#39; variants in the meta-data, you can=
<br>
bbappend the behaviour to your kernel recipe), or your code can look<br>
for the header in the kernel shared workdir (STAGING_KERNEL_BUILDDIR)<br>
by adding that to your include paths in the recipe.<br>
<br>
As khem also mentioned, you&#39;ll need to make sure that the uapi header<=
br>
is not just patched in, but properly exported.<br>
<br>
Bruce<br>
<br>
&gt;<br>
&gt; and=C2=A0 dma-buf.h is there but not=C2=A0 dma-heap.h<br>
&gt;<br>
&gt; Why is the header not being imported ?<br>
&gt;<br>
&gt; --<br>
&gt; Regards,<br>
&gt; Karthik Poduval<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
<br>
-- <br>
- Thou shalt not follow the NULL pointer, for chaos and madness await<br>
thee at its end<br>
- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature">Regards,<br>Karthik Poduval<br></div>

--000000000000cdf47305bbf6fbf2--
