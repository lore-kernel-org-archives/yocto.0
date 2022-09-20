Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCEEECAAD8
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 08:23:56 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web08.9334.1663662231713535061
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 01:23:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kyhm1xOV;
 spf=pass (domain: gmail.com, ip: 209.85.167.45,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id f9so2542537lfr.3
        for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 01:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=bjdwR4dJbqei7RJfHSh2IhXrAa2XJPT13thhpcOXICg=;
        b=kyhm1xOV3slwYFgqoSyYprKYLqLH80NMriimx4iR9zVQUvvda99Qa6qQ6gZxQoibyz
         KiI/I4UtytWpRr1S7TmS9iYCDUjatUL8RasfR6UzXJWQRcZLDBj96+qyd5NAr5Ybappj
         pddHL9JtpYqKaYvyzdCkdjy4wWvBxuTJE1ydTbUoCG3Vn4FyB6/EVAJpyX1vDgGkJl7v
         txA9jCs58d3UlF907pMpo/0ir32WyxA9xkbf46apH5rIUuvl473pNLJXAY4DD6tQUaKp
         uQe5NuPRaR6f82YIljqUAfzlbNljt3yOjLWtGKeXMP68oWsNbWd5cGutBT3AcnHvEASA
         flTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=bjdwR4dJbqei7RJfHSh2IhXrAa2XJPT13thhpcOXICg=;
        b=MJ1bmJeUZTw0qVq515bIWNZWjENo3T6J9yrSmzQ3dRj0s93ZhK4JnRCi3An1JCuu1z
         UaotLcufJm3Wo5AsXzbOJ8GqZdCODdJiKwiI2Ge2S2t+HYJGwYIld13aH6J87H2ZAu9B
         /HFHqM/wYbBcLXL64/e38frOATsf/CvVDyw6rPB9tnziTaqryv/V4uZSqdWQyAbAGY12
         UTkfzmIEGxy3ZuHA/181z962vuVM7C8F26/wiGqaRwsBVApHJnnZURVp4AsZ8B3RC2xK
         0oKWza/+WUaeipBMZb0NVLnGAr06zCa56EifgeRkYQTpM0e6mQMTFU1pjcw9gk29UmM4
         mOLw==
X-Gm-Message-State: ACrzQf2a6j43rCOgndxg7FAGUlJv8G7JT5f32lOo7cxu9jTP2PrRS41Q
	ms3q6UIDDCAmJhYOuyJRP8bVdgGT+vxowfqU4LI=
X-Google-Smtp-Source: 
 AMsMyM5u/qd9NiyZNIBtQYSTSCP1CnbTPAwPJruP8y2/EuBdYSZm7ZHyZcIkaK5gONCYT+g5OKIA5BlnSAsVsiTOojU=
X-Received: by 2002:a05:6512:3091:b0:49a:d800:2828 with SMTP id
 z17-20020a056512309100b0049ad8002828mr7961565lfd.534.1663662229694; Tue, 20
 Sep 2022 01:23:49 -0700 (PDT)
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
 <CANNYZj-0ewbydhAYAw6u0JgnKcBEJTSgZ+QzTxnwD2Lmh9vDgA@mail.gmail.com>
 <P5UGIR.ETKUECS9HZXY1@t-online.de>
 <PH0PR84MB1835BCF1ACDC3CAC1357FECCC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <40WGIR.ECG3N5TIIYMJ1@t-online.de>
 <PH0PR84MB183594E043D2D4644D204710C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB183594E043D2D4644D204710C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 20 Sep 2022 09:23:38 +0100
Message-ID: 
 <CANNYZj8ZmE4_KY41Xe90YSFSm-t3MPVQjDH+gTw8TJBFgTjoWw@mail.gmail.com>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
To: Edgar Mobile <heideggm@hotmail.com>
Cc: Markus Volk <f_l_k@t-online.de>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003a2ca405e9178cf3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 08:23:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58088

--0000000000003a2ca405e9178cf3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Don=E2=80=99t bother with virgl yet. Start with the pure software implement=
ation in
Mesa.

Alex

On Tue 20. Sep 2022 at 8.39, Edgar Mobile <heideggm@hotmail.com> wrote:

> Ok, I added these two lines now to a file named virglrenderer_0.9.1.bb .
> Bitbake now says:
>
> ERROR: Nothing PROVIDES 'ninja-nativevulkan-loader' (but virtual:native:
> ... DEPENDS on or otherwise requires it)
> ERROR: Required build target 'core-image-weston' has no buildable
> providers.
> Missing or unbuildable dependency chain was: {'core-image-weston',
> 'meta-extsdk-toolchain', 'qemu-helper-native', 'qemu-system-native',
> 'virglrenderer-native', 'ninja-nativevulkan-loader'
>
> ------------------------------
> *From:* Markus Volk <f_l_k@t-online.de>
> *Sent:* Monday, September 19, 2022 5:16 PM
> *To:* Edgar Mobile <heideggm@hotmail.com>
> *Cc:* Alexander Kanavin <alex.kanavin@gmail.com>;
> yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> *Subject:* Re: [yocto] Adding Vulkan to core-image-weston
>
> Am Mo, 19. Sep 2022 um 16:54:52 +0000 schrieb Edgar Mobile <
> heideggm@hotmail.com>:
>
> This wasn't enough
>
>
> i guess you would also need to add venus support to virglrenderer.bb for
> qemu:
>
> DEPENDS:append =3D "vulkan-loader vulkan-headers"
> EXTRA_OEMESON +=3D "-Dvenus-experimental=3Dtrue"
>
> but i have never tested this
>

--0000000000003a2ca405e9178cf3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Don=E2=80=99t bother with virgl yet. Start with the pure =
software implementation in Mesa.=C2=A0</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue 20. Sep 2022 at 8.39, Edgar Mobile &lt;<a hr=
ef=3D"mailto:heideggm@hotmail.com">heideggm@hotmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-co=
lor:rgb(204,204,204)">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Ok, I added these two lines now to a file named <a href=3D"http://virglrend=
erer_0.9.1.bb" target=3D"_blank" style=3D"font-family:Calibri,Helvetica,san=
s-serif">virglrenderer_0.9.1.bb</a> . Bitbake now says:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
ERROR: Nothing PROVIDES &#39;ninja-nativevulkan-loader&#39; (but virtual:na=
tive: ... DEPENDS on or otherwise requires it)</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
ERROR: Required build target &#39;core-image-weston&#39; has no buildable p=
roviders.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Missing or unbuildable dependency chain was: {&#39;core-image-weston&#39;, =
&#39;meta-extsdk-toolchain&#39;, &#39;qemu-helper-native&#39;, &#39;qemu-sy=
stem-native&#39;, &#39;virglrenderer-native&#39;, &#39;ninja-nativevulkan-l=
oader&#39;=C2=A0
<br></div></div><div dir=3D"ltr"><div style=3D"font-family:Calibri,Helvetic=
a,sans-serif;font-size:12pt;color:rgb(0,0,0)">
</div>
<div>
<div id=3D"m_-8286224681170601673appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-8286224681170601673divRplyFwdMsg" dir=3D"ltr"><font style=3D"=
font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,0)" face=3D"Cal=
ibri, sans-serif"><b style=3D"font-family:Calibri,sans-serif">From:</b> Mar=
kus Volk &lt;<a href=3D"mailto:f_l_k@t-online.de" target=3D"_blank" style=
=3D"font-family:Calibri,sans-serif">f_l_k@t-online.de</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Monday, September 19,=
 2022 5:16 PM<br>
<b style=3D"font-family:Calibri,sans-serif">To:</b> Edgar Mobile &lt;<a hre=
f=3D"mailto:heideggm@hotmail.com" target=3D"_blank" style=3D"font-family:Ca=
libri,sans-serif">heideggm@hotmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Cc:</b> Alexander Kanavin &lt;<=
a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank" style=3D"font-fa=
mily:Calibri,sans-serif">alex.kanavin@gmail.com</a>&gt;; <a href=3D"mailto:=
yocto@lists.yoctoproject.org" target=3D"_blank" style=3D"font-family:Calibr=
i,sans-serif">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@=
lists.yoctoproject.org" target=3D"_blank" style=3D"font-family:Calibri,sans=
-serif">yocto@lists.yoctoproject.org</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Subject:</b> Re: [yocto] Adding=
 Vulkan to core-image-weston</font>
<div>=C2=A0</div>
</div>
<div>
<div id=3D"m_-8286224681170601673x_geary-body" dir=3D"auto">Am Mo, 19. Sep =
2022 um 16:54:52 +0000 schrieb Edgar Mobile &lt;<a href=3D"mailto:heideggm@=
hotmail.com" target=3D"_blank">heideggm@hotmail.com</a>&gt;:<br>
<blockquote type=3D"cite">This wasn&#39;t enough</blockquote>
<div><br>
</div>
<div>i guess you would also need to add venus support to <a href=3D"http://=
virglrenderer.bb" target=3D"_blank">virglrenderer.bb</a> for qemu:</div>
<div><br>
</div>
<div>DEPENDS:append =3D &quot;vulkan-loader vulkan-headers&quot;</div>
<div>EXTRA_OEMESON +=3D &quot;<span>-D</span><span>venus-experimental=3Dtru=
e&quot;</span></div>
<div><span><br>
</span></div>
<div><span>but i have never tested this</span></div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--0000000000003a2ca405e9178cf3--

