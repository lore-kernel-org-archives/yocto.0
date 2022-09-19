Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC90CECAAD3
	for <webhook@archiver.kernel.org>; Mon, 19 Sep 2022 15:33:31 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web09.475.1663601604914052959
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 08:33:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=iTYPIN1T;
 spf=pass (domain: gmail.com, ip: 209.85.208.179,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id a10so1470548ljq.0
        for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 08:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=d+0aaG8kRMJTnrkBaOVzxIvpZ+AyKx7m+OFoIizHlEQ=;
        b=iTYPIN1TLPHbU7AuQQmZwbm+Rra/gT5XX6yEdInyOnMqyRAlEn8AHKuM92dyTmDE8P
         wB4jRq/Skc010QoO9zYPNgla/bHGA4CKEPtO5OdwYt3zF4ydD1NhF9vwVozCLvpCqIIq
         6daxHQ6JMwV5NmxPnYDZVhFOK0OyZsVhaM/BXPrM7PdWKgU1ELNosbfwLsQGYkn+1D/m
         6SS9/64mrQZaR9uedh2QSMK+qAuToZ+nan8RFT/uR7cMcvP5m1KQt5mqjspgS6WFug2e
         C6wtUci/5AZL37dXhEnBpdi8RVgJz5OyVpY0t592nGcQPp0uTZ2dOPvHo3EL9cin91zl
         mNSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=d+0aaG8kRMJTnrkBaOVzxIvpZ+AyKx7m+OFoIizHlEQ=;
        b=qjqf9oaus/u5/QM2w0b1wrexjBdyzUgEolfsi4eEYVYJfeNmFckqXhIL+kqBeuKBS9
         qfntySAozmYq44bDrhtAYxF5h14qzuVoU8WUh7pmczEhPlZ3PbEEHzHQhS+w5XoiUugF
         pmen9AxbOjUR42UrGCzyTvemo6/COQQU1RlIxOPxBD/kteROmfDPy3sunuWB2q5AGq/4
         xJTKbKs6iAMguVPvDZYwCNRkR5O2V0luDPWuHboB6zELqqmmpGlOjvs/Po25emxIof0s
         EGDMdKPB++spRhyyeJqQG5OUG5/b0h64Uf1dwqKj3rhEAxJtIcJrtQ5vwdVpc46eLSfc
         DCcg==
X-Gm-Message-State: ACrzQf2yrr40otErrzJP121FtXXtRTXYOja+jgck1J9JtK2b3i/A/lBW
	0PNtfF2uPY1xo/hq/Mu/ZJsDLnT2jGfMolX7vgY=
X-Google-Smtp-Source: 
 AMsMyM7xKEIE/88bKkv2SwEgO+q9ueKAl2y1/FbZ1ApqqZTVBDAo63aYcOKxbQ/D8EH+3u5QpmvALrwDHDRq28MhxnA=
X-Received: by 2002:a2e:6d02:0:b0:26a:cf02:40c4 with SMTP id
 i2-20020a2e6d02000000b0026acf0240c4mr5908925ljc.513.1663601602671; Mon, 19
 Sep 2022 08:33:22 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-tD-v_Cb4F7cOqyQRWpgWOBavxqhgJPhZzQ2gw1dkWxw@mail.gmail.com>
 <SJ0PR84MB1846B369EB668E66A065A4FCC7489@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_jSuNdush++p=NWW86M2rs2fpnTzOuRw1xjvDBrAdsZw@mail.gmail.com>
 <PH0PR84MB1835D30B90E3ED9ADADA471BC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8diBFzwNe_veJG-Vx9cam0u=-uG6O1c=gSL9J9kO6NEg@mail.gmail.com>
 <PH0PR84MB183555F695A0E7C8818C14E5C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9oFKPYa63AiH4tDJ8Jku0826ySM22uXxxq=vOwbbD+vA@mail.gmail.com>
 <PH0PR84MB1835788AFD16FEB8E4A15790C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8ANJ_EnvBgi+mZH52kr5rxyhBbBWEDoaOFPR9MDLDgZg@mail.gmail.com>
 <PH0PR84MB183571245531C6D271BD5A90C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-rLXUAXn_BNYCM8bjeeWVCWU3YYFvnr5bagw7e0V8Akw@mail.gmail.com>
 <PH0PR84MB1835BFBD2F24974F9B69E9E3C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB1835BFBD2F24974F9B69E9E3C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 19 Sep 2022 16:33:11 +0100
Message-ID: 
 <CANNYZj-0ewbydhAYAw6u0JgnKcBEJTSgZ+QzTxnwD2Lmh9vDgA@mail.gmail.com>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
To: Edgar Mobile <heideggm@hotmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000933acb05e9096e0e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Sep 2022 15:33:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58077

--000000000000933acb05e9096e0e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You need to check the Mesa recipe to see how the build options are defined,
and add swrast to the list of vulkan drivers if necessary. Meson_options
only defines available options in Mesa, not the actual set used in yocto.

Alex

On Mon 19. Sep 2022 at 15.40, Edgar Mobile <heideggm@hotmail.com> wrote:

> Is editing meson_options.txt the recommended way to customize Mesa in
> Yocto?
>
> ------------------------------
> *From:* Alexander Kanavin <alex.kanavin@gmail.com>
> *Sent:* Monday, September 19, 2022 2:36 PM
>
> *To:* Edgar Mobile <heideggm@hotmail.com>
> *Cc:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> *Subject:* Re: [yocto] Adding Vulkan to core-image-weston
>
> You do, yes. It=E2=80=99s not qemu, it=E2=80=99s in Mesa. You can see the=
 options here:
> https://gitlab.freedesktop.org/mesa/mesa/-/blob/main/meson_options.txt
>
>
> Alex
>
> On Mon 19. Sep 2022 at 15.30, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> What are the qemu params to activate swrast vulkan driver? And do I still
> need mesa vulkan package? meson logs show it wasnt't compiled with
> vulkan-drivers.
>
> ------------------------------
> *From:* Alexander Kanavin <alex.kanavin@gmail.com>
> *Sent:* Monday, September 19, 2022 2:20 PM
>
> *To:* Edgar Mobile <heideggm@hotmail.com>
> *Cc:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> *Subject:* Re: [yocto] Adding Vulkan to core-image-weston
>
> I think swrast Vulkan driver may be a better option to start with. At
> least that is contained entirely in qemu guest so you won=E2=80=99t have =
to wrestle
> with pass through code paths to the host which are all experimental. It=
=E2=80=99s
> entirely uncharted waters for me as well.
>
> Alex
>
> On Mon 19. Sep 2022 at 14.52, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> For the time being I use vulkan-tools so I get vulkaninfo. It fails
> apparently due to no appropriate driver available.
> I think adding virtio-experimental to mesa may be necessary, right? Or is
> there another core recipse that will add mesa vulkan drivers?
>
> Regards
>
> ------------------------------
> *From:* Alexander Kanavin <alex.kanavin@gmail.com>
> *Sent:* Monday, September 19, 2022 1:31 PM
>
> *To:* Edgar Mobile <heideggm@hotmail.com>
> *Cc:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> *Subject:* Re: [yocto] Adding Vulkan to core-image-weston
>
> As I said you need to inspect the working directory of the recipe to find
> out what goes where.
>
>
> Alex
>
> On Mon 19. Sep 2022 at 13.28, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> I have the impression that the only binary vulkan-samples installs is
> /usr/bin/spirv-cross . Are there other packages that install more samples=
?
>
> ------------------------------
> *From:* Alexander Kanavin <alex.kanavin@gmail.com>
> *Sent:* Monday, September 19, 2022 8:25 AM
>
> *To:* Edgar Mobile <heideggm@hotmail.com>
> *Cc:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> *Subject:* Re: [yocto] Adding Vulkan to core-image-weston
>
> I suppose you need to look at compile and install logs for vulkan-samples=
.
> And how the installed items get split into packages. I=E2=80=99m short, i=
nspect
> ${WORKDIR} for it.
>
> Alex
>
> On Mon 19. Sep 2022 at 9.36, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> Greetings,
>
> I see the libvulkan.so.* libs now, but I don't see any sample binaries
> that look like Vulkan. Is there a list somewhere for all the files in
> vulkan-samples?
> Regards
>
> ------------------------------
> *From:* Alexander Kanavin <alex.kanavin@gmail.com>
> *Sent:* Saturday, September 17, 2022 8:28 AM
>
> *To:* Edgar Mobile <heideggm@hotmail.com>
> *Cc:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> *Subject:* Re: [yocto] Adding Vulkan to core-image-weston
>
> If the samples don't link with libvulkan directly, it won't get pulled
> into the images. How are they loading that library, is it via dlopen()
> somewhere? Invisible dlopen() dependencies typically need to be listed
> explicitly in RDEPENDS.
>
> As a quick fix, you can add vulkan-loader to the same
> CORE_IMAGE_EXTRA_INSTALL list.
>
> Alex
>
> On Fri, 16 Sept 2022 at 19:17, Edgar Mobile <heideggm@hotmail.com> wrote:
> >
> > Ok, so I switched to Kirkstone and added vulkan-samples to
> CORE_IMAGE_EXTRA_INSTALL.
> > But no libvulkan.so in /usr/lib.
> >
> > Am I missing something?
> >
> > ________________________________
> > From: Alexander Kanavin <alex.kanavin@gmail.com>
> > Sent: Friday, September 16, 2022 12:14 PM
> > To: Edgar Mobile <heideggm@hotmail.com>
> > Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> > Subject: Re: [yocto] Adding Vulkan to core-image-weston
> >
> > You can start by adding vulkan-samples to the image - the recipe is in
> > core. We do not test vulkan in qemu, because the software vulkan
> > rendering is still under active development, and marked as
> > experimental in virglrenderer.
> >
> > It may help if you use qemux86_64 and kvm for it, because software
> > graphical paths are too slow without it generally.
> >
> > Alex
> >
> > On Fri, 16 Sept 2022 at 13:43, Edgar Mobile <heideggm@hotmail.com>
> wrote:
> > >
> > > Greetings,
> > >
> > > I'd like to test graphics rendering with Vulkan on an Aarch64 Yocto
> honister (qemu, host is x64). Can you tell me which parameters I need to
> add to local.conf to get all libs and headers installed (plus maybe some
> useful tools and demo if present)?
> > >
> > > Regards
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#58059):
> https://lists.yoctoproject.org/g/yocto/message/58059
> > > Mute This Topic: https://lists.yoctoproject.org/mt/93720286/1686489
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >
>
>

--000000000000933acb05e9096e0e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">You need to check the Mesa recipe to see how the build op=
tions are defined, and add swrast to the list of vulkan drivers if necessar=
y. Meson_options only defines available options in Mesa, not the actual set=
 used in yocto.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</di=
v><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Mon 19. Sep 2022 at 15.40, Edgar Mobile &lt;<a href=3D"mailto:heideggm@=
hotmail.com">heideggm@hotmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Is editing meson_options.txt the recommended way to customize Mesa in Yocto=
?<br>
</div>
<div>
<div id=3D"m_-6571421496253137002appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-6571421496253137002divRplyFwdMsg" dir=3D"ltr"><font style=3D"=
font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,0)" face=3D"Cal=
ibri, sans-serif"><b style=3D"font-family:Calibri,sans-serif">From:</b> Ale=
xander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_bla=
nk" style=3D"font-family:Calibri,sans-serif">alex.kanavin@gmail.com</a>&gt;=
<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Monday, September 19,=
 2022 2:36 PM</font></div></div></div><div dir=3D"ltr"><div><div id=3D"m_-6=
571421496253137002divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt;=
font-family:Calibri,sans-serif;color:rgb(0,0,0)" face=3D"Calibri, sans-seri=
f"><br>
<b style=3D"font-family:Calibri,sans-serif">To:</b> Edgar Mobile &lt;<a hre=
f=3D"mailto:heideggm@hotmail.com" target=3D"_blank" style=3D"font-family:Ca=
libri,sans-serif">heideggm@hotmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Cc:</b> <a href=3D"mailto:yocto=
@lists.yoctoproject.org" target=3D"_blank" style=3D"font-family:Calibri,san=
s-serif">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists=
.yoctoproject.org" target=3D"_blank" style=3D"font-family:Calibri,sans-seri=
f">yocto@lists.yoctoproject.org</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Subject:</b> Re: [yocto] Adding=
 Vulkan to core-image-weston</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"auto">You do, yes. It=E2=80=99s not qemu, it=E2=80=99s in Mesa.=
 You can see the options here:=C2=A0</div>
<div dir=3D"auto">
<div><a href=3D"https://gitlab.freedesktop.org/mesa/mesa/-/blob/main/meson_=
options.txt" target=3D"_blank">https://gitlab.freedesktop.org/mesa/mesa/-/b=
lob/main/meson_options.txt</a></div>
<br>
</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Alex</div>
<div><br>
<div>
<div dir=3D"ltr">On Mon 19. Sep 2022 at 15.30, Edgar Mobile &lt;<a href=3D"=
mailto:heideggm@hotmail.com" target=3D"_blank">heideggm@hotmail.com</a>&gt;=
 wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-=
left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
What are the qemu params to activate swrast vulkan driver? And do I still n=
eed mesa vulkan package? meson logs show it wasnt&#39;t compiled with vulka=
n-drivers.<br>
</div>
<div>
<div id=3D"m_-6571421496253137002x_m_-5488592202682781880appendonsend"></di=
v>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-6571421496253137002x_m_-5488592202682781880divRplyFwdMsg" dir=
=3D"ltr"><font style=3D"font-size:11pt;font-family:Calibri,sans-serif;color=
:rgb(0,0,0)" face=3D"Calibri, sans-serif"><b style=3D"font-family:Calibri,s=
ans-serif">From:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@g=
mail.com" style=3D"font-family:Calibri,sans-serif" target=3D"_blank">alex.k=
anavin@gmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Monday, September 19,=
 2022 2:20 PM</font></div>
</div>
</div>
<div dir=3D"ltr">
<div>
<div id=3D"m_-6571421496253137002x_m_-5488592202682781880divRplyFwdMsg" dir=
=3D"ltr"><font style=3D"font-size:11pt;font-family:Calibri,sans-serif;color=
:rgb(0,0,0)" face=3D"Calibri, sans-serif"><br>
<b style=3D"font-family:Calibri,sans-serif">To:</b> Edgar Mobile &lt;<a hre=
f=3D"mailto:heideggm@hotmail.com" style=3D"font-family:Calibri,sans-serif" =
target=3D"_blank">heideggm@hotmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Cc:</b> <a href=3D"mailto:yocto=
@lists.yoctoproject.org" style=3D"font-family:Calibri,sans-serif" target=3D=
"_blank">
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org" style=3D"font-family:Calibri,sans-serif" target=3D"_blank">yocto@=
lists.yoctoproject.org</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Subject:</b> Re: [yocto] Adding=
 Vulkan to core-image-weston</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"auto">I think swrast Vulkan driver may be a better option to st=
art with. At least that is contained entirely in qemu guest so you won=E2=
=80=99t have to wrestle with pass through code paths to the host which are =
all experimental. It=E2=80=99s entirely uncharted waters
 for me as well.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Alex</div>
<div><br>
<div>
<div dir=3D"ltr">On Mon 19. Sep 2022 at 14.52, Edgar Mobile &lt;<a href=3D"=
mailto:heideggm@hotmail.com" target=3D"_blank">heideggm@hotmail.com</a>&gt;=
 wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-=
left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
For the time being I use vulkan-tools so I get vulkaninfo. It fails apparen=
tly due to no appropriate driver available.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I think adding virtio-experimental to mesa may be necessary, right? Or is t=
here another core recipse that will add mesa vulkan drivers?<br>
</div>
<div>
<div id=3D"m_-6571421496253137002x_m_-5488592202682781880x_m_-6479862864363=
465798appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Regards<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-6571421496253137002x_m_-5488592202682781880x_m_-6479862864363=
465798divRplyFwdMsg" dir=3D"ltr">
<font style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,=
0)" face=3D"Calibri, sans-serif"><b style=3D"font-family:Calibri,sans-serif=
">From:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com"=
 style=3D"font-family:Calibri,sans-serif" target=3D"_blank">alex.kanavin@gm=
ail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Monday, September 19,=
 2022 1:31 PM</font></div>
</div>
</div>
<div dir=3D"ltr">
<div>
<div id=3D"m_-6571421496253137002x_m_-5488592202682781880x_m_-6479862864363=
465798divRplyFwdMsg" dir=3D"ltr">
<font style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,=
0)" face=3D"Calibri, sans-serif"><br>
<b style=3D"font-family:Calibri,sans-serif">To:</b> Edgar Mobile &lt;<a hre=
f=3D"mailto:heideggm@hotmail.com" style=3D"font-family:Calibri,sans-serif" =
target=3D"_blank">heideggm@hotmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Cc:</b> <a href=3D"mailto:yocto=
@lists.yoctoproject.org" style=3D"font-family:Calibri,sans-serif" target=3D=
"_blank">
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org" style=3D"font-family:Calibri,sans-serif" target=3D"_blank">yocto@=
lists.yoctoproject.org</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Subject:</b> Re: [yocto] Adding=
 Vulkan to core-image-weston</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"auto">As I said you need to inspect the working directory of th=
e recipe to find out what goes where.=C2=A0</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Alex</div>
<div><br>
<div>
<div dir=3D"ltr">On Mon 19. Sep 2022 at 13.28, Edgar Mobile &lt;<a href=3D"=
mailto:heideggm@hotmail.com" target=3D"_blank">heideggm@hotmail.com</a>&gt;=
 wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-=
left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I have the impression that the only binary vulkan-samples installs is /usr/=
bin/spirv-cross . Are there other packages that install more samples?<br>
</div>
<div>
<div id=3D"m_-6571421496253137002x_m_-5488592202682781880x_m_-6479862864363=
465798x_m_-8200384101095602077appendonsend">
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-6571421496253137002x_m_-5488592202682781880x_m_-6479862864363=
465798x_m_-8200384101095602077divRplyFwdMsg" dir=3D"ltr">
<font style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,=
0)" face=3D"Calibri, sans-serif"><b style=3D"font-family:Calibri,sans-serif=
">From:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com"=
 style=3D"font-family:Calibri,sans-serif" target=3D"_blank">alex.kanavin@gm=
ail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Monday, September 19,=
 2022 8:25 AM</font></div>
</div>
</div>
<div dir=3D"ltr">
<div>
<div id=3D"m_-6571421496253137002x_m_-5488592202682781880x_m_-6479862864363=
465798x_m_-8200384101095602077divRplyFwdMsg" dir=3D"ltr">
<font style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,=
0)" face=3D"Calibri, sans-serif"><br>
<b style=3D"font-family:Calibri,sans-serif">To:</b> Edgar Mobile &lt;<a hre=
f=3D"mailto:heideggm@hotmail.com" style=3D"font-family:Calibri,sans-serif" =
target=3D"_blank">heideggm@hotmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Cc:</b> <a href=3D"mailto:yocto=
@lists.yoctoproject.org" style=3D"font-family:Calibri,sans-serif" target=3D=
"_blank">
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org" style=3D"font-family:Calibri,sans-serif" target=3D"_blank">yocto@=
lists.yoctoproject.org</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Subject:</b> Re: [yocto] Adding=
 Vulkan to core-image-weston</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"auto">I suppose you need to look at compile and install logs fo=
r vulkan-samples. And how the installed items get split into packages. I=E2=
=80=99m short, inspect ${WORKDIR} for it.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Alex</div>
<div><br>
<div>
<div dir=3D"ltr">On Mon 19. Sep 2022 at 9.36, Edgar Mobile &lt;<a href=3D"m=
ailto:heideggm@hotmail.com" target=3D"_blank">heideggm@hotmail.com</a>&gt; =
wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-=
left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Greetings,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I see the libvulkan.so.* libs now, but I don&#39;t see any sample binaries =
that look like Vulkan. Is there a list somewhere for all the files in vulka=
n-samples?</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Regards<br>
</div>
<div>
<div id=3D"m_-6571421496253137002x_m_-5488592202682781880x_m_-6479862864363=
465798x_m_-8200384101095602077x_m_-3031302158469435834appendonsend">
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-6571421496253137002x_m_-5488592202682781880x_m_-6479862864363=
465798x_m_-8200384101095602077x_m_-3031302158469435834divRplyFwdMsg" dir=3D=
"ltr">
<font style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,=
0)" face=3D"Calibri, sans-serif"><b style=3D"font-family:Calibri,sans-serif=
">From:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com"=
 style=3D"font-family:Calibri,sans-serif" target=3D"_blank">alex.kanavin@gm=
ail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Saturday, September 1=
7, 2022 8:28 AM</font></div>
</div>
</div>
<div dir=3D"ltr">
<div>
<div id=3D"m_-6571421496253137002x_m_-5488592202682781880x_m_-6479862864363=
465798x_m_-8200384101095602077x_m_-3031302158469435834divRplyFwdMsg" dir=3D=
"ltr">
<font style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,=
0)" face=3D"Calibri, sans-serif"><br>
<b style=3D"font-family:Calibri,sans-serif">To:</b> Edgar Mobile &lt;<a hre=
f=3D"mailto:heideggm@hotmail.com" style=3D"font-family:Calibri,sans-serif" =
target=3D"_blank">heideggm@hotmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Cc:</b> <a href=3D"mailto:yocto=
@lists.yoctoproject.org" style=3D"font-family:Calibri,sans-serif" target=3D=
"_blank">
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org" style=3D"font-family:Calibri,sans-serif" target=3D"_blank">yocto@=
lists.yoctoproject.org</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Subject:</b> Re: [yocto] Adding=
 Vulkan to core-image-weston</font>
<div>=C2=A0</div>
</div>
<div><font style=3D"color:rgb(0,0,0)" size=3D"2"><span style=3D"font-size:1=
1pt">
<div>If the samples don&#39;t link with libvulkan directly, it won&#39;t ge=
t pulled<br>
into the images. How are they loading that library, is it via dlopen()<br>
somewhere? Invisible dlopen() dependencies typically need to be listed<br>
explicitly in RDEPENDS.<br>
<br>
As a quick fix, you can add vulkan-loader to the same<br>
CORE_IMAGE_EXTRA_INSTALL list.<br>
<br>
Alex<br>
<br>
On Fri, 16 Sept 2022 at 19:17, Edgar Mobile &lt;<a href=3D"mailto:heideggm@=
hotmail.com" target=3D"_blank">heideggm@hotmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Ok, so I switched to Kirkstone and added vulkan-samples to CORE_IMAGE_=
EXTRA_INSTALL.<br>
&gt; But no libvulkan.so in /usr/lib.<br>
&gt;<br>
&gt; Am I missing something?<br>
&gt;<br>
&gt; ________________________________<br>
&gt; From: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" =
target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
&gt; Sent: Friday, September 16, 2022 12:14 PM<br>
&gt; To: Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com" target=3D=
"_blank">heideggm@hotmail.com</a>&gt;<br>
&gt; Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">=
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
&gt; Subject: Re: [yocto] Adding Vulkan to core-image-weston<br>
&gt;<br>
&gt; You can start by adding vulkan-samples to the image - the recipe is in=
<br>
&gt; core. We do not test vulkan in qemu, because the software vulkan<br>
&gt; rendering is still under active development, and marked as<br>
&gt; experimental in virglrenderer.<br>
&gt;<br>
&gt; It may help if you use qemux86_64 and kvm for it, because software<br>
&gt; graphical paths are too slow without it generally.<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Fri, 16 Sept 2022 at 13:43, Edgar Mobile &lt;<a href=3D"mailto:heid=
eggm@hotmail.com" target=3D"_blank">heideggm@hotmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Greetings,<br>
&gt; &gt;<br>
&gt; &gt; I&#39;d like to test graphics rendering with Vulkan on an Aarch64=
 Yocto honister (qemu, host is x64). Can you tell me which parameters I nee=
d to add to local.conf to get all libs and headers installed (plus maybe so=
me useful tools and demo if present)?<br>
&gt; &gt;<br>
&gt; &gt; Regards<br>
&gt; &gt;<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; Links: You receive all messages sent to this group.<br>
&gt; &gt; View/Reply Online (#58059): <a href=3D"https://lists.yoctoproject=
.org/g/yocto/message/58059" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/message/58059</a><br>
&gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/937=
20286/1686489" target=3D"_blank">
https://lists.yoctoproject.org/mt/93720286/1686489</a><br>
&gt; &gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.o=
rg" target=3D"_blank">
yocto+owner@lists.yoctoproject.org</a><br>
&gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/un=
sub" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:alex.ka=
navin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>]<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt;<br>
</div>
</span></font></div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--000000000000933acb05e9096e0e--

