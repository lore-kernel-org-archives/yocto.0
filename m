Return-Path: <ppanaccio78@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E3FDC3DA63
	for <webhook@archiver.kernel.org>; Wed, 24 Jul 2024 17:15:21 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web10.16437.1721841314925350005
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jul 2024 10:15:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ejw+zDBj;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: ppanaccio78@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7a1d067d5bbso30947585a.3
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jul 2024 10:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721841314; x=1722446114; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dEXZH+yJzMC4PljaxRQZ97ddqeFS6z5RUPrAGmdlxL0=;
        b=Ejw+zDBjeXrckHSgCzU4VbS/w5VcBkzylNChKtoYGO4cj9Tx9c61S+NHwETkCqlCIj
         8sW9mH9CdJRGJvUCsS5LNLXtK2RQPDWw2HSE5R+5r81ErhL+oGQM4ruusLzUcWbjSh4r
         zjByF2l4zf3Mhc5my1g823+RgtnJ4Q22gxfayNPkM+GU+w8weu7M0JPDiJYwl7KdLNoi
         0plRCRrabaCb8rtU4HRMuH1nrbjy63dolzh4E8XnmXVwf6uyEXWlIi6BtyAKr7ef1gSr
         9ghTNjk2RoS6kIk6YOhu1ZkhLado10T6VPfByqVnHlb5RlVId4tmskAFGSijmV+rVYIa
         s3hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721841314; x=1722446114;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dEXZH+yJzMC4PljaxRQZ97ddqeFS6z5RUPrAGmdlxL0=;
        b=OptfKriqPryn/HXBlQPwiIAqIRaLIhbMloMwlKeR/xFEixrfMibeirZB40e7kmfiKg
         Wpwt4xtxFjcoZk8JJh5EerzHDdI7EVuxqE+fqgbI5cVwHSdPPx863UbaKBnM9dTvh1Uy
         HQDpDzTcJbCqRU9w0gfNAYGOguof7VQ9GDRZqYsRFW9fhbsFRffWxiOFBPnUvKO1nIhz
         2uC3ex1SvhYT3bqB+fTc4XoFYMprsAFs0cQeyhowyrd+cbIi94P/XBxFPUI5biJyTHLN
         cSN37KSYRq88AKwN5wpEKRAqD4U24CVbw1zUn8EW2O0O/7rDlhadTevCXUboLaHowGaU
         zYBA==
X-Gm-Message-State: AOJu0Yx7BHzmq0eX3ZmkqgMg4sucpAldZvNWrXGyze5SYRDni5hqNTzh
	Wi/F7hr/pSS4XhU6LhHG8KG2t+5NPwJH5SrPdprI0+hJAy4QuNy8Jk53xhIOshiy+3VgiuUPoMr
	jl0xmfMObhUzJRg4z4jztMi62wvo=
X-Google-Smtp-Source: AGHT+IEuPQFCXisVaVvt6+I63JUMqwYUBZXiNnX5HRsytoplsdwJYa5guy74STppxNi2KQI8/BLjpe1br1PhuC+8Xtg=
X-Received: by 2002:a05:622a:4a18:b0:44f:e158:3b1c with SMTP id
 d75a77b69052e-44fe32b7070mr4506331cf.3.1721841313351; Wed, 24 Jul 2024
 10:15:13 -0700 (PDT)
MIME-Version: 1.0
References: <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.49fee02e-5090-4596-8083-c31b2097e034@emailsignatures365.codetwo.com>
 <U46J.1721525980821149221.YLk8@lists.yoctoproject.org> <bd265972-6b03-4bc2-a0a7-bc87d54ffdf9@topic.nl>
In-Reply-To: <bd265972-6b03-4bc2-a0a7-bc87d54ffdf9@topic.nl>
From: Paul Panaccio <ppanaccio78@gmail.com>
Date: Wed, 24 Jul 2024 19:15:00 +0200
Message-ID: <CA+vHWb6py9w0=NcvGTrTqdut2VxgiEtN4x6mmF8VY44dFL=XvA@mail.gmail.com>
Subject: Re: [yocto] NAND together with SD CARD images
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d78de8061e016b36"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jul 2024 17:15:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63567

--000000000000d78de8061e016b36
Content-Type: text/plain; charset="UTF-8"

Hi Mike,
The approach you describe is really  interesting. Especially the part where
the "flash the NAND" is made dependant on the nand image. Though this means
technicians in the field should flash a new sd card for every new release
instead of just scp-ipping the files to the live (old) SD image.
Thanks for sharing!


Il mer 24 lug 2024, 13:09 Mike Looijmans <mike.looijmans@topic.nl> ha
scritto:

> We usually have one machine and let the bootloader figure it out.
>
> If there are bootswitches to boot from NAND vs SD card, there's usually a
> way
> to get at those switches through reading some register. Set U-boot's
> "boot_targets" based on that, so it tries to boot from that media first.
>
> Another quick way is to just try SD first then revert to NAND boot. The SD
> check is usually very quick because of the card-detect.
>
> You can create the same image for SD and NAND by setting IMAGE_FSTYPES (to
> ubifs and ext4 I'd  guess). Handy to be able to run directly from SD
> during
> development.
>
> To create the "flash the NAND" image, just create a recipe that RDEPENDS
> on
> the production image. Add a dependency on "image_complete" and then you
> can
> just fetch the image from the deploy directory and pack it in.
>
> So no new machine, just a new image.
>
>
>
>
> Met vriendelijke groet / kind regards,
>
> Mike Looijmans
> System Expert
>
>
> TOPIC Embedded Products B.V.
> Materiaalweg 4, 5681 RJ Best
> The Netherlands
>
> T: +31 (0) 499 33 69 69
> E: mike.looijmans@topic.nl
> W: www.topic.nl
>
> Please consider the environment before printing this e-mail
> On 21-07-2024 03:39, ppanaccio78 via lists.yoctoproject.org wrote:
> > Hello community,
> > I have a project where I work with two different image recipes. One is
> meant
> > for production  and targets NAND, another one for SD CARD. The second
> one is
> > basically a tiny image that contains scripts to flash the NAND with the
> > production image.
> > My question is: what's the recommended way to manage these two images in
> terms
> > of MACHINE and UBOOT_CONFIG?
> > How I did till now: just changed the weak default for UBOOT_CONFIG found
> in
> > the machine.conf depending on the image I was baking. This does not look
> good
> > to me because it clutters the deploy dir for the given machine with
> unrelated
> > build artifacts.
> > A better alternative comes to my mind: the physical board is just one,
> so it
> > makes sense that both images should refer to the same MACHINE variable.
> The
> > machine.conf provides a weak assignment for UBOOT_CONFIG and image
> recipes
> > should  change its value depending on their needs.
> > But I suspect that since the data store for each recipe (comprised image
> > recipes) is a local coly, such assignment does not work.
> > Then only two bins are left: mess up the deploy dir as I did till now OR
> use
> > two different machines with different weak defaults, which I think is
> somewhat
> > wrong as the hardware is one.
> > Can you help me sort this out?
> > Thanks
>
>
>

--000000000000d78de8061e016b36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Mike,<div dir=3D"auto">The approach you describe is re=
ally=C2=A0 interesting. Especially the part where the &quot;flash the NAND&=
quot; is made dependant on the nand image. Though this means technicians in=
 the field should flash a new sd card for every new release instead of just=
 scp-ipping the files to the live (old) SD image.=C2=A0</div><div dir=3D"au=
to">Thanks for sharing!</div><br><br><div class=3D"gmail_quote" dir=3D"auto=
"><div dir=3D"ltr" class=3D"gmail_attr">Il mer 24 lug 2024, 13:09 Mike Looi=
jmans &lt;<a href=3D"mailto:mike.looijmans@topic.nl">mike.looijmans@topic.n=
l</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">We usually ha=
ve one machine and let the bootloader figure it out.<br>
<br>
If there are bootswitches to boot from NAND vs SD card, there&#39;s usually=
 a way <br>
to get at those switches through reading some register. Set U-boot&#39;s <b=
r>
&quot;boot_targets&quot; based on that, so it tries to boot from that media=
 first.<br>
<br>
Another quick way is to just try SD first then revert to NAND boot. The SD =
<br>
check is usually very quick because of the card-detect.<br>
<br>
You can create the same image for SD and NAND by setting IMAGE_FSTYPES (to =
<br>
ubifs and ext4 I&#39;d=C2=A0 guess). Handy to be able to run directly from =
SD during <br>
development.<br>
<br>
To create the &quot;flash the NAND&quot; image, just create a recipe that R=
DEPENDS on <br>
the production image. Add a dependency on &quot;image_complete&quot; and th=
en you can <br>
just fetch the image from the deploy directory and pack it in.<br>
<br>
So no new machine, just a new image.<br>
<br>
<br>
<br>
<br>
Met vriendelijke groet / kind regards,<br>
<br>
Mike Looijmans<br>
System Expert<br>
<br>
<br>
TOPIC Embedded Products B.V.<br>
Materiaalweg 4, 5681 RJ Best<br>
The Netherlands<br>
<br>
T: +31 (0) 499 33 69 69<br>
E: <a href=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank" rel=3D"nore=
ferrer">mike.looijmans@topic.nl</a><br>
W: <a href=3D"http://www.topic.nl" rel=3D"noreferrer noreferrer" target=3D"=
_blank">www.topic.nl</a><br>
<br>
Please consider the environment before printing this e-mail<br>
On 21-07-2024 03:39, ppanaccio78 via <a href=3D"http://lists.yoctoproject.o=
rg" rel=3D"noreferrer noreferrer" target=3D"_blank">lists.yoctoproject.org<=
/a> wrote:<br>
&gt; Hello community,<br>
&gt; I have a project where I work with two different image recipes. One is=
 meant <br>
&gt; for production=C2=A0 and targets NAND, another one for SD CARD. The se=
cond one is <br>
&gt; basically a tiny image that contains scripts to flash the NAND with th=
e <br>
&gt; production image.<br>
&gt; My question is: what&#39;s the recommended way to manage these two ima=
ges in terms <br>
&gt; of MACHINE and UBOOT_CONFIG?<br>
&gt; How I did till now: just changed the weak default for UBOOT_CONFIG fou=
nd in <br>
&gt; the machine.conf depending on the image I was baking. This does not lo=
ok good <br>
&gt; to me because it clutters the deploy dir for the given machine with un=
related <br>
&gt; build artifacts.<br>
&gt; A better alternative comes to my mind: the physical board is just one,=
 so it <br>
&gt; makes sense that both images should refer to the same MACHINE variable=
. The <br>
&gt; machine.conf provides a weak assignment for UBOOT_CONFIG and image rec=
ipes <br>
&gt; should=C2=A0 change its value depending on their needs.<br>
&gt; But I suspect that since the data store for each recipe (comprised ima=
ge <br>
&gt; recipes) is a local coly, such assignment does not work.<br>
&gt; Then only two bins are left: mess up the deploy dir as I did till now =
OR use <br>
&gt; two different machines with different weak defaults, which I think is =
somewhat <br>
&gt; wrong as the hardware is one.<br>
&gt; Can you help me sort this out?<br>
&gt; Thanks<br>
<br><br>
</blockquote></div></div>

--000000000000d78de8061e016b36--

