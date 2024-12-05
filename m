Return-Path: <posinaaravind0205@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A158E77170
	for <webhook@archiver.kernel.org>; Thu,  5 Dec 2024 09:36:22 +0000 (UTC)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
 by mx.groups.io with SMTP id smtpd.web11.6614.1733391377875646612
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2024 01:36:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iHBK/Ojq;
 spf=pass (domain: gmail.com, ip: 209.85.215.177, mailfrom: posinaaravind0205@gmail.com)
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7fcdbfd8090so571581a12.2
        for <yocto@lists.yoctoproject.org>; Thu, 05 Dec 2024 01:36:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733391377; x=1733996177; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HXnYYPdILgSBuav7pjBBnwEopLttBKnC87fsT2xszBg=;
        b=iHBK/OjqEvpYa6fIDPPpoDV7cYiNAn4kogZ5x0qqO3y9EM6w6U7aNimX0iGjnao2Uy
         WnqDpPhd6DjFZreGr5UwtCV4RtmXXbEzm+srl0Gb1ERI/+fevLGRZhfFHbu+VTGsS5mV
         Pn84AYJowt9HPRX1e3LWW/m/PPngQwG3yNcdOTS1LgMvsmIYzqrUqbomgTpZsnpF0ZIS
         w+jd/VJSFsLvQDgqofsvwH16/n/uXQSX+gHWwZhOYcyvveysDWDspSNJ+kosBRAFfmQw
         KXbOPw6PJq7esejF01gSdCzxe2SzrD0cY+70bHIljxv3iepw14eNcqjmbC5T6GhO1q1k
         hg2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733391377; x=1733996177;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HXnYYPdILgSBuav7pjBBnwEopLttBKnC87fsT2xszBg=;
        b=d5lD8PVCi6LHIpdZypYJ8TDK3MjIBYhj7sdDOxreRTfVE6MbnmngwfpW6Kd1T2bOgR
         +w2m3KtVaK6KOquZQ04mr0VRZwTFs7GbOOge9p3ExtEwSFhczn3fdyf6/2kbZwGo2XYw
         jncBWIeZfQrzp8cfCSmlH1oKCJNc0lRI89yDdC7drXRrr2QCon1KGHzDWMTPVqGvcDWL
         2ksmwKRrfSQaIp9lmdAE5aJEgLUhGijg+25dsm/IdHK+6mi14NN51YiHX1BMORPIwi0V
         nssc3u095M4E2lrEBGNsi+AIQE31GmpPTZhtc0cZYdpdJGcYII9dRD7IymBZvTk0W1Gy
         hadQ==
X-Gm-Message-State: AOJu0YyDDXzCE4Uq/MHzmqv8W9sKQjdb/8ymAJAYQyG+PZoqRisouUuH
	3iGV1v2ENXE+LvXpORD6FxnkAi6xKIHHuNqh6T1A8/3wk5sRVi2XI1scpORiNW6daMkj5qLgf6y
	C1SmZ97Bbv6+N9Xx+69/GOTzyifpFznbZ
X-Gm-Gg: ASbGncvRHO5czr9pPHuH/OrqzOGp7i73x9lE1s/4ioRyhxeTn2pDxzWoE3SXiISsxs9
	s+walTGpUz8Nj3GFn7Uo0yrj+1+HznQ==
X-Google-Smtp-Source: AGHT+IGYmQrlpgD2lHf0QIXGyGF4Lk8NUwOnfFNy3LjsZZUtuNbDkmd09VzDnjLQMiKSPNdY1pmVqaugF5GxDdlXn1Y=
X-Received: by 2002:a17:90b:1d43:b0:2ee:ed1c:e451 with SMTP id
 98e67ed59e1d1-2ef011fc568mr14419296a91.15.1733391376672; Thu, 05 Dec 2024
 01:36:16 -0800 (PST)
MIME-Version: 1.0
References: <pjL4.1733330505962809259.ABTE@lists.yoctoproject.org>
 <AM9P122MB0266D1F34895376563012228D6372@AM9P122MB0266.EURP122.PROD.OUTLOOK.COM>
 <BN7PR03MB4305C62DFFC631CEA38BA04CF9302@BN7PR03MB4305.namprd03.prod.outlook.com>
In-Reply-To: <BN7PR03MB4305C62DFFC631CEA38BA04CF9302@BN7PR03MB4305.namprd03.prod.outlook.com>
From: aravind posina <posinaaravind0205@gmail.com>
Date: Thu, 5 Dec 2024 15:06:05 +0530
Message-ID: <CALvuYrnyHjmj4+japnqWom4a_2La16ND8uq4bqaC3b5iu4LtGg@mail.gmail.com>
Subject: Re: [yocto] Installing empty directory
To: yocto@lists.yoctoproject.org, Jesus.JimenezSanchez@verifone.com
Cc: "Bejar-Colonia, Carlos" <carlos.bejar-colonia@philips.com>
Content-Type: multipart/alternative; boundary="00000000000043703e062882a11b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Dec 2024 09:36:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64403

--00000000000043703e062882a11b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

just insert one more line in your recipe like this.

INSANE_SKIP_${PN} =3D "installed-vs-shipped"

if your moving empty directory also just try to give any name for better .

Thanks & Regards
Aravind P


On Thu, Dec 5, 2024 at 3:03=E2=80=AFPM Jesus Jimenez Sanchez via
lists.yoctoproject.org <Jesus.JimenezSanchez=3D
verifone.com@lists.yoctoproject.org> wrote:

> Hi,
>
> It turns out I was modifying a different copy of the recipe I was
> building. FILES:${PN} +=3D "/bt_firmware" is working now.
>
> Thank you anyways.
>
>
> Best regards,
> Jes=C3=BAs Jim=C3=A9nez S=C3=A1nchez
> ------------------------------
> *From:* Bejar-Colonia, Carlos <carlos.bejar-colonia@philips.com>
> *Sent:* Wednesday 4 December 2024 16:53
> *To:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; Jesus
> Jimenez Sanchez <Jesus.JimenezSanchez@verifone.com>
> *Subject:* RE: [yocto] Installing empty directory
>
> You don't often get email from carlos.bejar-colonia@philips.com. Learn
> why this is important <https://aka.ms/LearnAboutSenderIdentification>
>
> *CAUTION:* This email originated from outside of our organization. Do not
> click links or open attachments unless you recognize the sender and know
> the content is safe.
>
> Which yocto version are you using?
>
> You may want to try:
>
> FILES:${PN} +=3D "/bt_firmware"
>
>
>
>
>
> -Carlos
>
>
>
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On
> Behalf Of *Jesus Jimenez Sanchez via lists.yoctoproject.org
> *Sent:* Wednesday, December 4, 2024 11:42 AM
> *To:* yocto@lists.yoctoproject.org
> *Subject:* [yocto] Installing empty directory
>
>
>
> *Caution: *This e-mail originated from outside of Philips, be careful for
> phishing.
>
>
>
> Hello,
>
>
>
> I am trying to add an empty directory using a recipe. I have this in the
> do_install:
>
>
>
> do_install() {
>     install -d ${D}/bt_firmware
>
> }
>
>
>
> FILES_${PN} +=3D "/bt_firmware"
>
>
>
> But I get the following error:
>
>
>
> Files/directories were installed but not shipped in any package:
>   /bt_firmware
> Please set FILES such that these items are packaged. Alternatively if the=
y
> are unneeded, avoid installing them or delete them within do_install.
>
>
>
> What am I missing here? What should I add to get it shipped?
>
> ------------------------------
> The information contained in this message may be confidential and legally
> protected under applicable law. The message is intended solely for the
> addressee(s). If you are not the intended recipient, you are hereby
> notified that any use, forwarding, dissemination, or reproduction of this
> message is strictly prohibited and may be unlawful. If you are not the
> intended recipient, please contact the sender by return e-mail and destro=
y
> all copies of the original message.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64402):
> https://lists.yoctoproject.org/g/yocto/message/64402
> Mute This Topic: https://lists.yoctoproject.org/mt/109922958/8556823
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> posinaaravind0205@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000043703e062882a11b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">just insert one more line in your recipe like this.<br><br=
>INSANE_SKIP_${PN} =3D &quot;installed-vs-shipped&quot;<br><br>if your movi=
ng empty directory also just try to give any name for better .<br><br>Thank=
s &amp;=C2=A0Regards<br>Aravind P<div><br></div></div><br><div class=3D"gma=
il_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Th=
u, Dec 5, 2024 at 3:03=E2=80=AFPM Jesus Jimenez Sanchez via <a href=3D"http=
://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;Jesus.JimenezSanc=
hez=3D<a href=3D"mailto:verifone.com@lists.yoctoproject.org">verifone.com@l=
ists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div class=3D"msg-7817359897175661708">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
It turns out I was modifying a different copy of the recipe I was building.=
 FILES:${PN} +=3D &quot;/bt_firmware&quot; is working now.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thank you anyways.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-992940567649146572Signature">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Best regards,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Jes=C3=BAs Jim=C3=A9nez S=C3=A1nchez</div>
</div>
<div id=3D"m_-992940567649146572appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-992940567649146572divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b> =
Bejar-Colonia, Carlos &lt;<a href=3D"mailto:carlos.bejar-colonia@philips.co=
m" target=3D"_blank">carlos.bejar-colonia@philips.com</a>&gt;<br>
<b>Sent:</b> Wednesday 4 December 2024 16:53<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctop=
roject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;; Jesus J=
imenez Sanchez &lt;<a href=3D"mailto:Jesus.JimenezSanchez@verifone.com" tar=
get=3D"_blank">Jesus.JimenezSanchez@verifone.com</a>&gt;<br>
<b>Subject:</b> RE: [yocto] Installing empty directory</font>
<div>=C2=A0</div>
</div>

<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" alig=
n=3D"left" style=3D"background:revert;color:revert;direction:revert;font-si=
ze:revert;height:revert;letter-spacing:revert;line-height:revert;margin:rev=
ert;opacity:revert;outline:revert;overflow:revert;padding:revert;text-align=
:revert;text-indent:revert;text-orientation:revert;text-overflow:revert;tex=
t-transform:revert;vertical-align:revert;white-space:revert;word-break:reve=
rt;word-spacing:revert;writing-mode:revert;zoom:revert;border:0px;display:t=
able;width:100%;table-layout:fixed;float:none;border-spacing:0px">
<tbody style=3D"background:revert;border:revert;color:revert;direction:reve=
rt;font-size:revert;height:revert;letter-spacing:revert;line-height:revert;=
margin:revert;opacity:revert;outline:revert;overflow:revert;padding:revert;=
table-layout:revert;text-align:revert;text-indent:revert;text-orientation:r=
evert;text-overflow:revert;text-transform:revert;vertical-align:revert;whit=
e-space:revert;width:revert;word-break:revert;word-spacing:revert;writing-m=
ode:revert;zoom:revert;display:block">
<tr style=3D"background:revert;border:revert;color:revert;direction:revert;=
display:revert;font-size:revert;height:revert;letter-spacing:revert;line-he=
ight:revert;margin:revert;opacity:revert;outline:revert;overflow:revert;pad=
ding:revert;table-layout:revert;text-align:revert;text-indent:revert;text-o=
rientation:revert;text-overflow:revert;text-transform:revert;vertical-align=
:revert;white-space:revert;width:revert;word-break:revert;word-spacing:reve=
rt;writing-mode:revert;zoom:revert">
<td valign=3D"middle" width=3D"1px" bgcolor=3D"#A6A6A6" cellpadding=3D"7px =
2px 7px 2px" style=3D"background-image:revert;background-position:revert;ba=
ckground-size:revert;background-repeat:revert;background-origin:revert;back=
ground-clip:revert;border:revert;color:revert;direction:revert;display:reve=
rt;font-size:revert;height:revert;letter-spacing:revert;line-height:revert;=
margin:revert;opacity:revert;outline:revert;overflow:revert;table-layout:re=
vert;text-align:revert;text-indent:revert;text-orientation:revert;text-over=
flow:revert;text-transform:revert;vertical-align:revert;white-space:revert;=
word-break:revert;word-spacing:revert;writing-mode:revert;zoom:revert;paddi=
ng:7px 2px;background-color:rgb(166,166,166);width:0px">
</td>
<td valign=3D"middle" width=3D"100%" bgcolor=3D"#EAEAEA" cellpadding=3D"7px=
 5px 7px 15px" color=3D"#212121" style=3D"background-image:revert;backgroun=
d-position:revert;background-size:revert;background-repeat:revert;backgroun=
d-origin:revert;background-clip:revert;border:revert;direction:revert;displ=
ay:revert;height:revert;letter-spacing:revert;line-height:revert;margin:rev=
ert;opacity:revert;outline:revert;overflow:revert;table-layout:revert;text-=
indent:revert;text-orientation:revert;text-overflow:revert;text-transform:r=
evert;vertical-align:revert;white-space:revert;word-break:revert;word-spaci=
ng:revert;writing-mode:revert;zoom:revert;width:100%;background-color:rgb(2=
34,234,234);padding:7px 5px 7px 15px;font-family:wf_segoe-ui_normal,&quot;S=
egoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;font-size:12px;f=
ont-weight:normal;color:rgb(33,33,33);text-align:left">
<div style=3D"background:revert;border:revert;color:revert;direction:revert=
;display:revert;font-size:revert;height:revert;letter-spacing:revert;line-h=
eight:revert;margin:revert;opacity:revert;outline:revert;overflow:revert;pa=
dding:revert;table-layout:revert;text-align:revert;text-indent:revert;text-=
orientation:revert;text-overflow:revert;text-transform:revert;vertical-alig=
n:revert;white-space:revert;width:revert;word-break:revert;word-spacing:rev=
ert;writing-mode:revert;zoom:revert">
You don&#39;t often get email from <a href=3D"mailto:carlos.bejar-colonia@p=
hilips.com" target=3D"_blank">carlos.bejar-colonia@philips.com</a>. <a href=
=3D"https://aka.ms/LearnAboutSenderIdentification" style=3D"background:reve=
rt;color:revert;direction:revert;display:revert;font-size:revert;opacity:re=
vert" target=3D"_blank">
Learn why this is important</a> </div>
</td>
<td valign=3D"middle" align=3D"left" width=3D"75px" bgcolor=3D"#EAEAEA" cel=
lpadding=3D"7px 5px 7px 5px" color=3D"#212121" style=3D"background-image:re=
vert;background-position:revert;background-size:revert;background-repeat:re=
vert;background-origin:revert;background-clip:revert;border:revert;directio=
n:revert;display:revert;height:revert;letter-spacing:revert;line-height:rev=
ert;margin:revert;opacity:revert;outline:revert;overflow:revert;table-layou=
t:revert;text-indent:revert;text-orientation:revert;text-overflow:revert;te=
xt-transform:revert;vertical-align:revert;white-space:revert;word-break:rev=
ert;word-spacing:revert;writing-mode:revert;zoom:revert;width:75px;backgrou=
nd-color:rgb(234,234,234);padding:7px 5px;font-family:wf_segoe-ui_normal,&q=
uot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;font-size:1=
2px;font-weight:normal;color:rgb(33,33,33);text-align:left">
</td>
</tr>
</tbody>
</table>
<div>
<p style=3D"margin-left:35.4pt"><span></span></p>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"left" widt=
h=3D"100%" style=3D"width:100%">
<tbody>
<tr>
<td style=3D"background:rgb(187,165,85);padding:5.25pt 5.5pt 5.25pt 1.5pt">=
<span></span></td>
<td><span></span>
</td><td width=3D"98%" style=3D"width:98.44%;background:rgb(255,229,153);pa=
dding:5.25pt 3.75pt 5.25pt 11.25pt">
<p><span><b><span style=3D"font-family:Arial,sans-serif;color:rgb(33,33,33)=
">CAUTION:</span></b></span><span><span style=3D"font-family:Arial,sans-ser=
if;color:rgb(33,33,33)"> This email originated from outside of our organiza=
tion. Do not click
 links or open attachments unless you recognize the sender and know the con=
tent is safe.
</span><span style=3D"color:black"></span></span></p>
</td>
<td><span></span>
</td></tr>
</tbody>
</table>
<br>
<div>
<div>
<p><span style=3D"font-size:11pt">Which yocto version are you using?</span>=
</p>
<p><span style=3D"font-size:11pt">You may want to try:</span></p>
<p>FILES<span style=3D"background:yellow">:</span>${PN} +=3D &quot;/bt_firm=
ware&quot;</p>
<p><span style=3D"font-size:11pt">=C2=A0</span></p>
<p><span style=3D"font-size:11pt">=C2=A0</span></p>
<p><span style=3D"font-size:11pt">-Carlos</span></p>
<p><span style=3D"font-size:11pt">=C2=A0</span></p>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p><b><span style=3D"font-size:11pt;font-family:Calibri,sans-serif">From:</=
span></b><span style=3D"font-size:11pt;font-family:Calibri,sans-serif"> <a =
href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.=
yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org" ta=
rget=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Jesus Jimenez Sanchez via <a href=3D"http://lists.yocto=
project.org" target=3D"_blank">lists.yoctoproject.org</a><br>
<b>Sent:</b> Wednesday, December 4, 2024 11:42 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Installing empty directory</span></p>
</div>
</div>
<p>=C2=A0</p>
<div style=3D"border:1pt solid rgb(156,101,0);padding:2pt">
<p style=3D"line-height:12pt;background:rgb(255,235,156)"><b><span style=3D=
"font-size:10pt;font-family:Calibri,sans-serif;color:rgb(156,101,0)">Cautio=
n:
</span></b><span style=3D"font-size:10pt;font-family:Calibri,sans-serif;col=
or:black">This e-mail originated from outside of Philips, be careful for ph=
ishing.
</span></p>
</div>
<p>=C2=A0</p>
<div>
<div>
<p>Hello,</p>
</div>
<div>
<p>=C2=A0</p>
</div>
<div>
<p>I am trying to add an empty directory using a recipe. I have this in the=
 do_install:</p>
</div>
<div>
<p>=C2=A0</p>
</div>
<div>
<div>
<p>do_install() {<br>
=C2=A0 =C2=A0 install -d ${D}/bt_firmware</p>
</div>
<div>
<p>}</p>
</div>
<div>
<p>=C2=A0</p>
</div>
<div>
<p>FILES_${PN} +=3D &quot;/bt_firmware&quot;</p>
</div>
<div>
<p>=C2=A0</p>
</div>
<div>
<p>But I get the following error:</p>
</div>
<div>
<p>=C2=A0</p>
</div>
<div>
<p>Files/directories were installed but not shipped in any package:<br>
=C2=A0 /bt_firmware<br>
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.</p>
</div>
<div>
<p>=C2=A0</p>
</div>
<div>
<p>What am I missing here? What should I add to get it shipped?</p>
</div>
</div>
</div>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1">The information contained in=
 this message may be confidential and legally protected under applicable la=
w. The message is intended solely for the addressee(s). If you are not the =
intended recipient, you are hereby notified
 that any use, forwarding, dissemination, or reproduction of this message i=
s strictly prohibited and may be unlawful. If you are not the intended reci=
pient, please contact the sender by return e-mail and destroy all copies of=
 the original message.<br>
</font></div>
</div>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64402): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64402" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64402</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109922958/855=
6823" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/109922958/8556823</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:posinaaravind0205@gmail.com" target=3D"_blank">p=
osinaaravind0205@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</div></blockquote></div>

--00000000000043703e062882a11b--

