Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47140EE57E3
	for <webhook@archiver.kernel.org>; Fri,  8 Sep 2023 08:15:24 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.34627.1694160917556295608
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Sep 2023 01:15:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=pE6IAbe8;
 spf=pass (domain: gmail.com, ip: 209.85.128.41, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4018af1038cso19242005e9.0
        for <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 01:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694160916; x=1694765716; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mTHEcdi2df2F0xvEA45fy6JtPJhmq4jjP01fHg6aaSU=;
        b=pE6IAbe87Iz5IvjWZYKZ+u0gIwjgSCjk6OjYSE4qAHkntbnRGXBRO9pqOQ8wbkbGUX
         Xqw6akLvk8ux+lBb3o/A2FY65etZihE9CsD3bg1ZzQG3NUnD45kNsI/E6RPHtWP/BJrn
         kTIH/YzCcYs4Bb27E83an5sTL1JO17bIfIUgh0tRZ0hTfMRF8/o4qd1PriW70vmGlgGR
         7fEPEE5RsmRUhzZlRPE7Ao3rVIB/jdI3oD56Qq5h+ZjllGFBpxbBwk79Acdhw9dEZKA8
         IBIzivVAMWdCfTzYaFb2mE5Md01gLfYBcWVhmAN9cyU/+ROWJ5np/FpbAZawR+F0YoSE
         29rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694160916; x=1694765716;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mTHEcdi2df2F0xvEA45fy6JtPJhmq4jjP01fHg6aaSU=;
        b=S/aMdywa+iu+jgSMSExykaYsWbRhOHF+luVik4FXBemaPQBjhDedSAOuQk6N64Eyj1
         VJZWxWDvGas968zrgNeKUz/nBejHd/0zzSbE/CvdtUK7ECM/k4JAEU1HP9kxqFFTNJBG
         pTwCIQv4NfS2/bVKool3PlEUxYg9MgNCQRjPGTLPBkqbyyJxFXETqX5zbHpQh7g62PVK
         RI1so9+whTXEEt3ez1zdABfhRCRuWD887XRV3hNeCfxIreUaK29a5pS/LuBEFUm9eTUo
         AtvoUhgkb93Rw2HWHMDGgSIwUs1vrTw5xyV5LBXZPzu2rXEKmYu9CGMItT0kXIlKPqNi
         98sg==
X-Gm-Message-State: AOJu0Yxs7fQyAyW+RforXL5QbpXrqbrR+xMc8lYn5AaHJ+syznpdx/mV
	5rPUXPDxwWWxj65ohG0mZ2W033Iomm+RZM4ksCs=
X-Google-Smtp-Source: AGHT+IFH9YwzPKokrqqHHBngEDR1bvDUsQ5VuB+UGh0eKsV8ro6DBPGwkfcVH1ISqaaF5lnQyX4FVT+6BAm9UuYfFIE=
X-Received: by 2002:adf:f0c2:0:b0:315:8a13:ef17 with SMTP id
 x2-20020adff0c2000000b003158a13ef17mr1354957wro.65.1694160915678; Fri, 08 Sep
 2023 01:15:15 -0700 (PDT)
MIME-Version: 1.0
References: <c737f04f-7bf3-c0f6-4816-87ea4f5c81ac@bootlin.com>
 <3255.1694152878755997438@lists.yoctoproject.org> <CAMSfU+579tns5UJg4=6ryXsstfPYar9YCvghbT3piuNzzCVbWg@mail.gmail.com>
 <CA+chaQdiOTNYTsrhPzbT=9aB3fT9Mo=DoorvNm4Bay2ioRTsdA@mail.gmail.com> <20230908072034c8e150e6@mail.local>
In-Reply-To: <20230908072034c8e150e6@mail.local>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 8 Sep 2023 10:15:04 +0200
Message-ID: <CA+chaQfrtYAJTAkm8VDJFG4E0uQHZR6Uho0H3HZBOgH7nOLLoQ@mail.gmail.com>
Subject: Re: [yocto] Memory requirements for building images with different architectures
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Yoann Congal <yoann.congal@smile.fr>, MOHAMMED HASSAN <hassanchattarki@gmail.com>, 
	yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000924a980604d493b7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 08:15:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60949

--000000000000924a980604d493b7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 8, 2023 at 9:20=E2=80=AFAM Alexandre Belloni <
alexandre.belloni@bootlin.com> wrote:

> On 08/09/2023 09:06:39+0200, Martin Jansa wrote:
> > On Fri, Sep 8, 2023 at 8:42=E2=80=AFAM Yoann Congal <yoann.congal@smile=
.fr>
> wrote:
> >
> > > Hi!
> > > Le ven. 8 sept. 2023 =C3=A0 08:01, MOHAMMED HASSAN <
> hassanchattarki@gmail.com>
> > > a =C3=A9crit :
> > >
> > >> Right, you're not the only one!
> > >> See
> > >>
> > >>
> https://docs.yoctoproject.org/ref-manual/system-requirements.html#minimum=
-free-disk-space
> > >> and https://docs.yoctoproject.org/dev/dev-manual/disk-space.html
> > >>
> > >> I can use rm_work and remove all the build related files, however
> every
> > >> subsequent build would take a lot more time to build. I want my
> builds to
> > >> be as fast as possible. Do you have any suggestions to for faster
> builds
> > >> while consuming less memory space.
> > >>
> > >
> > > rm_work does not impact build time.
> > >
> >
> > That's not true, if only do_install task checksum changed, then without
> > rm_work you can reuse existing do_compile and re-run just following
> tasks,
> > while with rm_work it will need to rebuild from scratch (because
> > do_populate_sysroot and do_package sstate archives won't be valid
> anymore)
> > adding more wear to those NVME drives.
> >
>
> Did you really have any wear related issues on SSD disks? The
> autobuilders are churning a lot of builds and the disk are doing just
> fine.
>

My oldest NVME dedicated for OE builds, bought 2019-11-24
https://www.gigabyte.com/SSD/AORUS-NVMe-Gen4-SSD-2TB#kf
with 3600TBW, shows 60% Estimated Remaining Life after around 21K running
hours and started disconnecting under heavy load (not necessary issue
caused by wear) about a year ago and recently became completely unusable
for builds.

2nd one I bought when the issues started on 2022-05-16 has 8400 hours and
Data Units Read:                    87,481,897 [44.7 TB]
Data Units Written:                 210,637,555 [107 TB]

It's acceptable for me (already bought 4TB Segate Firecuda 530 5100TBW
https://www.seagate.com/products/gaming-drives/pc-gaming/firecuda-530-ssd/#
for 2/3 of the price the older 2TB was), but something to keep in mind when
buying disk for builds - with bigger disk you have higher TBW and also
might not need rm_work as often.

And this is just my personal work station where I do a lot of builds, but
the wear on our CI servers where every build job is starts from clean
workspace (uses sstate and premirror) and some builds run pretty much 24/7
will be much higher.

Cheers,

--000000000000924a980604d493b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Sep 8, 2023 at 9:20=E2=80=AFAM Al=
exandre Belloni &lt;<a href=3D"mailto:alexandre.belloni@bootlin.com">alexan=
dre.belloni@bootlin.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">On 08/09/2023 09:06:39+02=
00, Martin Jansa wrote:<br>
&gt; On Fri, Sep 8, 2023 at 8:42=E2=80=AFAM Yoann Congal &lt;<a href=3D"mai=
lto:yoann.congal@smile.fr" target=3D"_blank">yoann.congal@smile.fr</a>&gt; =
wrote:<br>
&gt; <br>
&gt; &gt; Hi!<br>
&gt; &gt; Le ven. 8 sept. 2023 =C3=A0 08:01, MOHAMMED HASSAN &lt;<a href=3D=
"mailto:hassanchattarki@gmail.com" target=3D"_blank">hassanchattarki@gmail.=
com</a>&gt;<br>
&gt; &gt; a =C3=A9crit :<br>
&gt; &gt;<br>
&gt; &gt;&gt; Right, you&#39;re not the only one!<br>
&gt; &gt;&gt; See<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; <a href=3D"https://docs.yoctoproject.org/ref-manual/system-re=
quirements.html#minimum-free-disk-space" rel=3D"noreferrer" target=3D"_blan=
k">https://docs.yoctoproject.org/ref-manual/system-requirements.html#minimu=
m-free-disk-space</a><br>
&gt; &gt;&gt; and <a href=3D"https://docs.yoctoproject.org/dev/dev-manual/d=
isk-space.html" rel=3D"noreferrer" target=3D"_blank">https://docs.yoctoproj=
ect.org/dev/dev-manual/disk-space.html</a><br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I can use rm_work and remove all the build related files, how=
ever every<br>
&gt; &gt;&gt; subsequent build would take a lot more time to build. I want =
my builds to<br>
&gt; &gt;&gt; be as fast as possible. Do you have any suggestions to for fa=
ster builds<br>
&gt; &gt;&gt; while consuming less memory space.<br>
&gt; &gt;&gt;<br>
&gt; &gt;<br>
&gt; &gt; rm_work does not impact build time.<br>
&gt; &gt;<br>
&gt; <br>
&gt; That&#39;s not true, if only do_install task checksum changed, then wi=
thout<br>
&gt; rm_work you can reuse existing do_compile and re-run just following ta=
sks,<br>
&gt; while with rm_work it will need to rebuild from scratch (because<br>
&gt; do_populate_sysroot and do_package sstate archives won&#39;t be valid =
anymore)<br>
&gt; adding more wear to those NVME drives.<br>
&gt; <br>
<br>
Did you really have any wear related issues on SSD disks? The<br>
autobuilders are churning a lot of builds and the disk are doing just<br>
fine.<br></blockquote><div><br></div><div>My oldest NVME dedicated for OE b=
uilds, bought 2019-11-24</div><div><a href=3D"https://www.gigabyte.com/SSD/=
AORUS-NVMe-Gen4-SSD-2TB#kf">https://www.gigabyte.com/SSD/AORUS-NVMe-Gen4-SS=
D-2TB#kf</a><br></div><div>with=C2=A03600TBW, shows 60% Estimated Remaining=
 Life after around 21K running hours and started disconnecting under heavy =
load (not necessary issue caused by wear) about a year ago and recently bec=
ame completely unusable for builds.</div><div><br></div><div>2nd one I boug=
ht when the issues started on=C2=A02022-05-16 has 8400 hours and</div><div>=
Data Units Read: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A087,481,897 [44.7 TB]<br>Data Units Written: =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 210,637,555 [107 TB]<br></div><div><=
br></div><div>It&#39;s acceptable for me (already bought 4TB Segate Firecud=
a 530 5100TBW=C2=A0 <a href=3D"https://www.seagate.com/products/gaming-driv=
es/pc-gaming/firecuda-530-ssd/#">https://www.seagate.com/products/gaming-dr=
ives/pc-gaming/firecuda-530-ssd/#</a> for 2/3 of the price the older 2TB wa=
s), but something to keep in mind when buying disk for builds - with bigger=
 disk you have higher TBW and also might not need rm_work as often.</div><d=
iv><br></div><div>And this is just my personal work station where I do a lo=
t of builds, but the wear on our CI servers where every build job is starts=
 from clean workspace (uses sstate and premirror) and some builds run prett=
y much 24/7 will be much higher.</div><div><br></div><div>Cheers,</div></di=
v></div>

--000000000000924a980604d493b7--

