Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE602ECAAD3
	for <webhook@archiver.kernel.org>; Mon, 19 Sep 2022 14:36:38 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web08.20712.1663598190098668740
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 07:36:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FvtrkR5O;
 spf=pass (domain: gmail.com, ip: 209.85.208.175,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id x29so1870394ljq.2
        for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 07:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=+WjusRaR5QKJVTRUSHQGED9bQilJY2Ihb00sw1EKRng=;
        b=FvtrkR5O/I/r++7OrvC16BWMJU4b+BS3NkaiKsxa4VAAcXZd36nNP9t0NKCYKvkAMB
         YEVM1gt8jEa02nUsT0wZcS05ax2wutg57Fz7BXYMn1sL2r8S7PFJKAp2HRk+9C+8mvWU
         fua8qPhP/Vy4JDc3bSldYhF2Fy81jEfFYAL7C5+dVg9+iF7v5xnlrYv+CRZUjYj6kKek
         uaKtbwl4bz8Cqb5kk9P69dEAJzqXMrn058qRhHG6Z+E4zT+b3DurgtnNBXYuoX0VEtNN
         gZfEeapdEEPX/vEdG99S5Wdr4lb2qw+HSCZb1cGQV95T+T4S6D1R+c/oh8FcfjZbWZL9
         +xCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=+WjusRaR5QKJVTRUSHQGED9bQilJY2Ihb00sw1EKRng=;
        b=a/Qqdhmre/3q2xpBnxxsMC2tnTleHgAfbIkitPSschlKrcoc0rFBJlLV5+5QpI6me7
         6LpIl3cugqRHDoDCzh4siWcH5SfJeOwiGGYKUhszS5w6wGaZ4BbeOsTqAG8PIZ2b8tya
         IeoJ3BS2xphYIgdScRXUQtgzviGuLKcHF1YvHIPl+Lf+TkFb3zB+N8mQqjiS5X16I+V3
         lUBO3dPDeCMOIS3ctQm9wzzo4IiHLXij/iG/LLvXtoxhsYIB1m6+DIpTILXSAqkQ3QMq
         rkMztvQimyuWWDM/BoTB+Mvw7nWRAPa9WruHu0/bf9rEwjHf9JueRLlAVWHmqgCY/VxQ
         R1Mw==
X-Gm-Message-State: ACrzQf1d0SSkh9oeU9QmvammBv0qAkL9x0G+yS8tPeMZrnXXo77KNeIR
	ploWuzeUcnTIwTDD/H2izYZAyb7m9EoHcQk1VIQ=
X-Google-Smtp-Source: 
 AMsMyM4Kjfm/Q/bX/8DDf1DFpyNEfv1/bhmmq5JeDJ8aaGFmoWqjZfvweICXds/QSrDzlI66qoIbETSLaBr5kq6syX0=
X-Received: by 2002:a2e:9e50:0:b0:261:e3fd:cdc5 with SMTP id
 g16-20020a2e9e50000000b00261e3fdcdc5mr5271229ljk.56.1663598188066; Mon, 19
 Sep 2022 07:36:28 -0700 (PDT)
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
In-Reply-To: 
 <PH0PR84MB183571245531C6D271BD5A90C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 19 Sep 2022 15:36:16 +0100
Message-ID: 
 <CANNYZj-rLXUAXn_BNYCM8bjeeWVCWU3YYFvnr5bagw7e0V8Akw@mail.gmail.com>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
To: Edgar Mobile <heideggm@hotmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000c7bfe05e908a331"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Sep 2022 14:36:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58075

--0000000000000c7bfe05e908a331
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You do, yes. It=E2=80=99s not qemu, it=E2=80=99s in Mesa. You can see the o=
ptions here:
https://gitlab.freedesktop.org/mesa/mesa/-/blob/main/meson_options.txt


Alex

On Mon 19. Sep 2022 at 15.30, Edgar Mobile <heideggm@hotmail.com> wrote:

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

--0000000000000c7bfe05e908a331
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">You do, yes. It=E2=80=99s not qemu, it=E2=80=99s in Mesa.=
 You can see the options here:=C2=A0</div><div dir=3D"auto"><div><a href=3D=
"https://gitlab.freedesktop.org/mesa/mesa/-/blob/main/meson_options.txt">ht=
tps://gitlab.freedesktop.org/mesa/mesa/-/blob/main/meson_options.txt</a></d=
iv><br></div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon =
19. Sep 2022 at 15.30, Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.=
com">heideggm@hotmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-lef=
t-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
What are the qemu params to activate swrast vulkan driver? And do I still n=
eed mesa vulkan package? meson logs show it wasnt&#39;t compiled with vulka=
n-drivers.<br>
</div>
<div>
<div id=3D"m_-5488592202682781880appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-5488592202682781880divRplyFwdMsg" dir=3D"ltr"><font style=3D"=
font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,0)" face=3D"Cal=
ibri, sans-serif"><b style=3D"font-family:Calibri,sans-serif">From:</b> Ale=
xander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_bla=
nk" style=3D"font-family:Calibri,sans-serif">alex.kanavin@gmail.com</a>&gt;=
<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Monday, September 19,=
 2022 2:20 PM</font></div></div></div><div dir=3D"ltr"><div><div id=3D"m_-5=
488592202682781880divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt;=
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
<div id=3D"m_-5488592202682781880x_m_-6479862864363465798appendonsend"></di=
v>
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
<div id=3D"m_-5488592202682781880x_m_-6479862864363465798divRplyFwdMsg" dir=
=3D"ltr"><font style=3D"font-size:11pt;font-family:Calibri,sans-serif;color=
:rgb(0,0,0)" face=3D"Calibri, sans-serif"><b style=3D"font-family:Calibri,s=
ans-serif">From:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@g=
mail.com" style=3D"font-family:Calibri,sans-serif" target=3D"_blank">alex.k=
anavin@gmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Monday, September 19,=
 2022 1:31 PM</font></div>
</div>
</div>
<div dir=3D"ltr">
<div>
<div id=3D"m_-5488592202682781880x_m_-6479862864363465798divRplyFwdMsg" dir=
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
<div id=3D"m_-5488592202682781880x_m_-6479862864363465798x_m_-8200384101095=
602077appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-5488592202682781880x_m_-6479862864363465798x_m_-8200384101095=
602077divRplyFwdMsg" dir=3D"ltr">
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
<div id=3D"m_-5488592202682781880x_m_-6479862864363465798x_m_-8200384101095=
602077divRplyFwdMsg" dir=3D"ltr">
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
<div id=3D"m_-5488592202682781880x_m_-6479862864363465798x_m_-8200384101095=
602077x_m_-3031302158469435834appendonsend">
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-5488592202682781880x_m_-6479862864363465798x_m_-8200384101095=
602077x_m_-3031302158469435834divRplyFwdMsg" dir=3D"ltr">
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
<div id=3D"m_-5488592202682781880x_m_-6479862864363465798x_m_-8200384101095=
602077x_m_-3031302158469435834divRplyFwdMsg" dir=3D"ltr">
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

</blockquote></div></div>

--0000000000000c7bfe05e908a331--

