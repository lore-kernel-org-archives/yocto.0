Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 527F2C54EE9
	for <webhook@archiver.kernel.org>; Mon, 19 Sep 2022 13:31:38 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web12.19822.1663594289101892991
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 06:31:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DorykvmL;
 spf=pass (domain: gmail.com, ip: 209.85.167.45,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id a8so46869395lff.13
        for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 06:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=1ps2VaS+ByFPz9VQQ2/TycJKclH8dTq3Xd4QGyCtmw4=;
        b=DorykvmLCND7CjasA/a3kmJ2YZ+FCnkqIihtTrrrqMKoMMS3w/84oYHoWr3gx+nmeH
         KRnrLOv6cluXe32KTgBNP/yEbXwM0rlhhS004c9a9ZWYK7A+DjfUvo9O5MdnpvQcldPf
         fxWsdUBXdJIgqkmXkINqG670Lhthn1Nj8knFKVgY1eRlI29korfxMjXjlNriPOVnzc0T
         DYW02ArmpAj9t6Sc+EzcMmkfmENRNLIQ2QzpKT7TTgx+VwB2oMy2yjpItA1nIBVOFDZP
         9mpC3toA5gIeNqm72uu0+owBnhDHQzV4w8pobJjcy4LRnQDlTN8+1yyg9+FfrA1XlLOY
         mh+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=1ps2VaS+ByFPz9VQQ2/TycJKclH8dTq3Xd4QGyCtmw4=;
        b=nDPbwsdrLs+VAFMIX+Lnnfm1hfNSQhCMmzqL7OJNZoxrowK+jhWRPBoIl1qyPA+kN3
         dKXGLpUVJWRK31SgjkrwRj4umsaMHaCuVk6ueA/UysTweKRpZhnrr/vN4zLr0r53MPjJ
         3TDetcD3JBc8FoxJliZbNY72MFFlrEnpJZqc22Atal/HyM2lX5RJYYxdeC42vnIYEGAo
         HQs6naf9eUodiktE2UuB5XlWFxhn7zrsQyg1ieWDzLiK/iuqlM3CtjhiUdp9fqm/6weQ
         Y70bxrgCSp67bESEy46rUR51dYElZxPbUThrBFqZ3znq7+yzizi3Ha/ySzG12oQFqMjI
         GZvQ==
X-Gm-Message-State: ACrzQf2zUjBn5KFB5JTen2Y+HLEJMbDa7CtrKFp6TRBhnmA97EytPPCX
	aQxLAa6al/o7BbYXRKtWoMrSFRsp+MNbrvi9XTY=
X-Google-Smtp-Source: 
 AMsMyM4WxuKdT5iR/tPVR4ei5zvsArKRv+j+PogliTr9bqazbgWbtGsuEOBt+FmAIbhgbKlLqXUrJ4bcSTJNlCOnU6M=
X-Received: by 2002:a05:6512:13a4:b0:479:3b9f:f13c with SMTP id
 p36-20020a05651213a400b004793b9ff13cmr5924816lfa.380.1663594287252; Mon, 19
 Sep 2022 06:31:27 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-tD-v_Cb4F7cOqyQRWpgWOBavxqhgJPhZzQ2gw1dkWxw@mail.gmail.com>
 <SJ0PR84MB1846B369EB668E66A065A4FCC7489@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_jSuNdush++p=NWW86M2rs2fpnTzOuRw1xjvDBrAdsZw@mail.gmail.com>
 <PH0PR84MB1835D30B90E3ED9ADADA471BC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8diBFzwNe_veJG-Vx9cam0u=-uG6O1c=gSL9J9kO6NEg@mail.gmail.com>
 <PH0PR84MB183555F695A0E7C8818C14E5C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB183555F695A0E7C8818C14E5C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 19 Sep 2022 14:31:16 +0100
Message-ID: 
 <CANNYZj9oFKPYa63AiH4tDJ8Jku0826ySM22uXxxq=vOwbbD+vA@mail.gmail.com>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
To: Edgar Mobile <heideggm@hotmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008ace2205e907baae"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Sep 2022 13:31:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58071

--0000000000008ace2205e907baae
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

As I said you need to inspect the working directory of the recipe to find
out what goes where.


Alex

On Mon 19. Sep 2022 at 13.28, Edgar Mobile <heideggm@hotmail.com> wrote:

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

--0000000000008ace2205e907baae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">As I said you need to inspect the working directory of th=
e recipe to find out what goes where.=C2=A0</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon 19. Sep 202=
2 at 13.28, Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com">heideg=
gm@hotmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:sol=
id;padding-left:1ex;border-left-color:rgb(204,204,204)">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I have the impression that the only binary vulkan-samples installs is /usr/=
bin/spirv-cross . Are there other packages that install more samples?<br>
</div>
<div>
<div id=3D"m_-8200384101095602077appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-8200384101095602077divRplyFwdMsg" dir=3D"ltr"><font style=3D"=
font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,0)" face=3D"Cal=
ibri, sans-serif"><b style=3D"font-family:Calibri,sans-serif">From:</b> Ale=
xander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_bla=
nk" style=3D"font-family:Calibri,sans-serif">alex.kanavin@gmail.com</a>&gt;=
<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Monday, September 19,=
 2022 8:25 AM</font></div></div></div><div dir=3D"ltr"><div><div id=3D"m_-8=
200384101095602077divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt;=
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
<div id=3D"m_-8200384101095602077x_m_-3031302158469435834appendonsend"></di=
v>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-8200384101095602077x_m_-3031302158469435834divRplyFwdMsg" dir=
=3D"ltr"><font style=3D"font-size:11pt;font-family:Calibri,sans-serif;color=
:rgb(0,0,0)" face=3D"Calibri, sans-serif"><b style=3D"font-family:Calibri,s=
ans-serif">From:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@g=
mail.com" style=3D"font-family:Calibri,sans-serif" target=3D"_blank">alex.k=
anavin@gmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Saturday, September 1=
7, 2022 8:28 AM</font></div>
</div>
</div>
<div dir=3D"ltr">
<div>
<div id=3D"m_-8200384101095602077x_m_-3031302158469435834divRplyFwdMsg" dir=
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

</blockquote></div></div>

--0000000000008ace2205e907baae--

