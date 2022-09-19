Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7242ECAAD3
	for <webhook@archiver.kernel.org>; Mon, 19 Sep 2022 08:26:06 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.17424.1663575956534809472
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 01:25:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZF0MZrxB;
 spf=pass (domain: gmail.com, ip: 209.85.167.44,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id o2so43532475lfc.10
        for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 01:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=sB1GhGSgVRShbLv2UwEh3MQD/BVvvPtk1uduymbB66Y=;
        b=ZF0MZrxBgK4ZdCAYtGsHER+TcIlnLfux7vp/Vu+1aOs0B+Stz9T+kXtqSejMi8obM3
         kCJzon0JUGKv5MAnGTflju0IYtxdfpzPJq27rdJ0DVpf0kuftoXGf15DJB88TcSLc9EX
         wGvsbdeMQVM+E3jjMDiGpku/8xpCMeHqi/mfiX4k9hLmX59T3tFGkojZFh7XQgn9VlHw
         QmHv7c4yrkd5/DOB7TnD329u8U4vXm9B2V8e5oCoYHOknAPCESnXB3efDTnzZL2BtXae
         r/wa5aDoClWJudRIUY91VFRR2EjmZR41d2f38Bm+pMws1uNdeDHVZ3zpwyCmQKRowUMu
         RL+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=sB1GhGSgVRShbLv2UwEh3MQD/BVvvPtk1uduymbB66Y=;
        b=8PCbATSOxxwmsmrC2wMJ+QKWSbzxZaW3PrEeXEtlH/Qt+B33M6K7O26jQASBzfrbmS
         7CtaWBzgXr/3uNAAVH+8FD6HF9nYcdAqzrD7o+dyAKd/eqeitJiwM09/MavRVnSQJ1mu
         K0+1vtvhqrclS+PE4Q4uo1B7hAXlyPdGe+kfrLQpPMyM4dNhBP9JQWEI1Uth9Q5uH2pL
         GeZ87DsceNu78NNJ7G/RnxaXnHCp/FQIVY5XeP70FEZCyHtpwfmX1aP8FL0XSaZS66qq
         cb0pHIKo8aikZkA5+fFsYvwZ9NL1pXREj81Jw4lIpio2WImRyqZr/2pgM1BENsHkKqzE
         G4mA==
X-Gm-Message-State: ACrzQf3Mbp6clpK1ds7I7Gk+Hm0aXLgTXRqNTL0sCSa/5qAiTIE+j15M
	Kt6MPtSxUpEY0K4t/RKQLQ+rQgDGHRI6rJO3vpk=
X-Google-Smtp-Source: 
 AMsMyM5vH20d/vwk9EJyLuD8YZbmjAu7IPZdqh9s4SAY9HHmsGGr928BHmPIcsnWYcSFUw8D3/Nh4HxGBaNfj+3j/nk=
X-Received: by 2002:a05:6512:10c4:b0:499:4c:64d7 with SMTP id
 k4-20020a05651210c400b00499004c64d7mr5794154lfg.521.1663575954377; Mon, 19
 Sep 2022 01:25:54 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-tD-v_Cb4F7cOqyQRWpgWOBavxqhgJPhZzQ2gw1dkWxw@mail.gmail.com>
 <SJ0PR84MB1846B369EB668E66A065A4FCC7489@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_jSuNdush++p=NWW86M2rs2fpnTzOuRw1xjvDBrAdsZw@mail.gmail.com>
 <PH0PR84MB1835D30B90E3ED9ADADA471BC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB1835D30B90E3ED9ADADA471BC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 19 Sep 2022 10:25:43 +0200
Message-ID: 
 <CANNYZj8diBFzwNe_veJG-Vx9cam0u=-uG6O1c=gSL9J9kO6NEg@mail.gmail.com>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
To: Edgar Mobile <heideggm@hotmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d151f105e903751e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Sep 2022 08:26:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58069

--000000000000d151f105e903751e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I suppose you need to look at compile and install logs for vulkan-samples.
And how the installed items get split into packages. I=E2=80=99m short, ins=
pect
${WORKDIR} for it.

Alex

On Mon 19. Sep 2022 at 9.36, Edgar Mobile <heideggm@hotmail.com> wrote:

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

--000000000000d151f105e903751e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I suppose you need to look at compile and install logs fo=
r vulkan-samples. And how the installed items get split into packages. I=E2=
=80=99m short, inspect ${WORKDIR} for it.</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Mon 19. Sep 2022 at 9.36, Edgar Mobile &lt;<a=
 href=3D"mailto:heideggm@hotmail.com">heideggm@hotmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-left=
-color:rgb(204,204,204)">




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
<div id=3D"m_-3031302158469435834appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-3031302158469435834divRplyFwdMsg" dir=3D"ltr"><font style=3D"=
font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,0)" face=3D"Cal=
ibri, sans-serif"><b style=3D"font-family:Calibri,sans-serif">From:</b> Ale=
xander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_bla=
nk" style=3D"font-family:Calibri,sans-serif">alex.kanavin@gmail.com</a>&gt;=
<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Saturday, September 1=
7, 2022 8:28 AM</font></div></div></div><div dir=3D"ltr"><div><div id=3D"m_=
-3031302158469435834divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11p=
t;font-family:Calibri,sans-serif;color:rgb(0,0,0)" face=3D"Calibri, sans-se=
rif"><br>
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
<div><font size=3D"2" style=3D"color:rgb(0,0,0)"><span style=3D"font-size:1=
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
rg" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
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

</blockquote></div></div>

--000000000000d151f105e903751e--

