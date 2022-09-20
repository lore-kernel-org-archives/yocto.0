Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2221FC54EE9
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 09:17:37 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.9734.1663665456057946676
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 02:17:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=EvT1um+v;
 spf=pass (domain: gmail.com, ip: 209.85.208.175,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id j24so1715592lja.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 02:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=aJc+eKNManGz5Dx+EoAWD8wJe9nqTdbRUF6/gLWYYaQ=;
        b=EvT1um+vH/KwAO5gP38xKnujA/VAAKxhISi00yGhatM51XkwMZvK8gLpwMSIVYpbdP
         XtcgCO2Hr3UKHC+oT7fCzgbunasbzaVsRBtvHfc37d+gBVdJxLDhBYW2ukn8UeAbyLqF
         qd8qYEmBul2wpbBRD8M98nrf0DGo2R6MNUF3CfaucDJDMrnmaizbPbSOm37qHomVtlWO
         L6JNV0+XKMAx9t+iNGYu2OVoNLcUPyLGcHkNvvJ8/MyqB6guTGc887dknyeGAeW+zmN3
         maLyNEJcFPB6D+2vf5hGS1br2IncTXppggtXHfcyb/cVpMqTFAqODGuNbTWpnrLP9BK1
         +toQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=aJc+eKNManGz5Dx+EoAWD8wJe9nqTdbRUF6/gLWYYaQ=;
        b=ffzfL4Q8X7IQJq5BBm2wrLeJdVBTcgDW7X3iFvO6gNk9j7aNpCxgw2Wp5pH5lm8InD
         ZlTdqB3m+3sYYN+ObYeLI85ljsZuty9iH7+jgS9RxXunN59wsxkyq6mW5YYyoKeuNcY3
         rG6lIpLiqeZe7KupzKd9SNle+hCExwG+0iiU8PkL0Yk5r6q4rAsldvFYcYPDlthIA8RY
         QgdodEVZfviV+EZ5RH02dBnf0MtLFiUCA+J4Kybzk2Q+uaZ28ueCDwSLlozo+0KuarHn
         /PhpEPNZc+CItt7rrQrqFJOYjmls75eBF2GSHnVvRSdju949OFvwHFgQ08JM0ZjQlKdH
         Aw+Q==
X-Gm-Message-State: ACrzQf0EX4dVU6QHMA/Z9b70RqyTwouBUkna1JSPFdDoJvw8j7yOZxCX
	nUVBFVvRO9I4ky3/H3KUjVp3zUBweNodtcVg/xg=
X-Google-Smtp-Source: 
 AMsMyM7D6SlvS7Y8eA2mVpM3gEbIjKYQJfOhMMQDvVAPw9gW1DuryWrtR0LFMAltawyjx/tsTAR2JD0TaDXv3kl6eXI=
X-Received: by 2002:a05:651c:17aa:b0:26c:27cd:3fe3 with SMTP id
 bn42-20020a05651c17aa00b0026c27cd3fe3mr6348520ljb.68.1663665454029; Tue, 20
 Sep 2022 02:17:34 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
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
 <CANNYZj8ZmE4_KY41Xe90YSFSm-t3MPVQjDH+gTw8TJBFgTjoWw@mail.gmail.com>
 <PH0PR84MB1835BEBC6B143383119B2EA7C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB1835BEBC6B143383119B2EA7C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 20 Sep 2022 10:17:22 +0100
Message-ID: 
 <CANNYZj-DASeVZAJKe5SURTNec_uth5CofkyOu6ytn9rv2dc76g@mail.gmail.com>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
To: PHIL <heideggm@hotmail.com>
Cc: Markus Volk <f_l_k@t-online.de>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000069a07005e9184cb1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 09:17:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58091

--00000000000069a07005e9184cb1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It helps if you say what you did precisely and show the complaint.

Alex

On Tue 20. Sep 2022 at 9.40, PHIL <heideggm@hotmail.com> wrote:

> What would be the simplest way to achieve that with bitbake? I tried
> swrast in mesa yesterday but it complained because it wants Gallium.
>
>
> Am 20. September 2022 10:23:38 MESZ schrieb Alexander Kanavin <
> alex.kanavin@gmail.com>:
>>
>> Don=E2=80=99t bother with virgl yet. Start with the pure software implem=
entation
>> in Mesa.
>>
>> Alex
>>
>> On Tue 20. Sep 2022 at 8.39, Edgar Mobile <heideggm@hotmail.com> wrote:
>>
>>> Ok, I added these two lines now to a file named virglrenderer_0.9.1.bb
>>> . Bitbake now says:
>>>
>>> ERROR: Nothing PROVIDES 'ninja-nativevulkan-loader' (but virtual:native=
:
>>> ... DEPENDS on or otherwise requires it)
>>> ERROR: Required build target 'core-image-weston' has no buildable
>>> providers.
>>> Missing or unbuildable dependency chain was: {'core-image-weston',
>>> 'meta-extsdk-toolchain', 'qemu-helper-native', 'qemu-system-native',
>>> 'virglrenderer-native', 'ninja-nativevulkan-loader'
>>>
>>> ------------------------------
>>> *From:* Markus Volk <f_l_k@t-online.de>
>>> *Sent:* Monday, September 19, 2022 5:16 PM
>>> *To:* Edgar Mobile <heideggm@hotmail.com>
>>> *Cc:* Alexander Kanavin <alex.kanavin@gmail.com>;
>>> yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
>>> *Subject:* Re: [yocto] Adding Vulkan to core-image-weston
>>>
>>> Am Mo, 19. Sep 2022 um 16:54:52 +0000 schrieb Edgar Mobile <
>>> heideggm@hotmail.com>:
>>>
>>> This wasn't enough
>>>
>>>
>>> i guess you would also need to add venus support to virglrenderer.bb
>>> for qemu:
>>>
>>> DEPENDS:append =3D "vulkan-loader vulkan-headers"
>>> EXTRA_OEMESON +=3D "-Dvenus-experimental=3Dtrue"
>>>
>>> but i have never tested this
>>>
>> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.
>

--00000000000069a07005e9184cb1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">It helps if you say what you did precisely and show the c=
omplaint.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tu=
e 20. Sep 2022 at 9.40, PHIL &lt;<a href=3D"mailto:heideggm@hotmail.com">he=
ideggm@hotmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style=
:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">
<div>What would be the simplest way to achieve that with bitbake? I tried s=
wrast in mesa yesterday but it complained because it wants Gallium.</div><d=
iv><br><br><div class=3D"gmail_quote">Am 20. September 2022 10:23:38 MESZ s=
chrieb Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" targ=
et=3D"_blank">alex.kanavin@gmail.com</a>&gt;:<blockquote class=3D"gmail_quo=
te" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left-width:1px;border-left-sty=
le:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">
<div dir=3D"auto">Don=E2=80=99t bother with virgl yet. Start with the pure =
software implementation in Mesa.=C2=A0</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue 20. Sep 2022 at 8.39, Edgar Mobile &lt;<a hr=
ef=3D"mailto:heideggm@hotmail.com" target=3D"_blank">heideggm@hotmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:=
1ex;border-left-color:rgb(204,204,204)">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Ok, I added these two lines now to a file named <a href=3D"http://virglrend=
erer_0.9.1.bb" style=3D"font-family:Calibri,Helvetica,sans-serif" target=3D=
"_blank">virglrenderer_0.9.1.bb</a> . Bitbake now says:</div>
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
<div id=3D"m_-5337679858840708807m_-8286224681170601673appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-5337679858840708807m_-8286224681170601673divRplyFwdMsg" dir=
=3D"ltr"><font style=3D"font-size:11pt;font-family:Calibri,sans-serif;color=
:rgb(0,0,0)" face=3D"Calibri, sans-serif"><b style=3D"font-family:Calibri,s=
ans-serif">From:</b> Markus Volk &lt;<a href=3D"mailto:f_l_k@t-online.de" s=
tyle=3D"font-family:Calibri,sans-serif" target=3D"_blank">f_l_k@t-online.de=
</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Monday, September 19,=
 2022 5:16 PM<br>
<b style=3D"font-family:Calibri,sans-serif">To:</b> Edgar Mobile &lt;<a hre=
f=3D"mailto:heideggm@hotmail.com" style=3D"font-family:Calibri,sans-serif" =
target=3D"_blank">heideggm@hotmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Cc:</b> Alexander Kanavin &lt;<=
a href=3D"mailto:alex.kanavin@gmail.com" style=3D"font-family:Calibri,sans-=
serif" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;; <a href=3D"mailto:=
yocto@lists.yoctoproject.org" style=3D"font-family:Calibri,sans-serif" targ=
et=3D"_blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@=
lists.yoctoproject.org" style=3D"font-family:Calibri,sans-serif" target=3D"=
_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Subject:</b> Re: [yocto] Adding=
 Vulkan to core-image-weston</font>
<div>=C2=A0</div>
</div>
<div>
<div id=3D"m_-5337679858840708807m_-8286224681170601673x_geary-body" dir=3D=
"auto">Am Mo, 19. Sep 2022 um 16:54:52 +0000 schrieb Edgar Mobile &lt;<a hr=
ef=3D"mailto:heideggm@hotmail.com" target=3D"_blank">heideggm@hotmail.com</=
a>&gt;:<br>
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
</blockquote></div><div style=3D"white-space:pre-wrap"><div>-- <br>Diese Na=
chricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.</div></d=
iv></div></blockquote></div></div>

--00000000000069a07005e9184cb1--

