Return-Path: <fede@evolware.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B989FC433F5
	for <webhook@archiver.kernel.org>; Thu, 13 Jan 2022 08:32:10 +0000 (UTC)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com
 [209.85.221.173])
 by mx.groups.io with SMTP id smtpd.web12.6435.1642062729322519619
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 00:32:09 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: gmail.com, ip: 209.85.221.173, mailfrom: fede.evol@gmail.com)
Received: by mail-vk1-f173.google.com with SMTP id v192so329572vkv.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 00:32:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6MhUm5nDnX6PZu5qb8oTrYbDo7k/FHtHAD0cohpKRW8=;
        b=SvkoTgnnC+cCgOeuwWuiOk9T67ot2WtX8JPB4gwPrfQuXKoHGTt0mxGf33cENUkc3g
         8ZJnuT/Z5eEht5vqnYACrsY97xzjl8JUmCntNKQdSMHeIYasQI8Q6yEc8NpgOvnO3q4k
         DaRXMJyCGM77xBWiWWjbYjeMSS7HU4Jh2yiJOpwsaVi/oM6t45gevWhneFb4YI+2gjWn
         ZLCwbZCqF5ZaR1J8FYDgi4y/I+kXIhme2ysj/RCF6TnBu2uxphWmN5apMQKZOww6rgSN
         Ofa+Es2j+pyHYKCfM5w2TpTJBvz4sFdIonRQcqhF4CwFBqNcEWqKXzrObQZrMWQjsMyn
         LzLA==
X-Gm-Message-State: AOAM533ZJHKhw6MqW1dPtB224vDBwK8Vj6MTmtjmigaFDUSb+cYpDFZ4
	7pzV1MeXi1VpL7Z0MzyXJWHC+5EJqDn5Qk81XlI=
X-Google-Smtp-Source: 
 ABdhPJxBZWR3rVSQi4y0XU7bL8Wv6Fn5XwGuTXWEc8QcgVOFQYCqI9yApNcw1JSz6C/JbvdvtktOFcsBIDMt0LE9cko=
X-Received: by 2002:a1f:4146:: with SMTP id o67mr1792937vka.25.1642062728448;
 Thu, 13 Jan 2022 00:32:08 -0800 (PST)
MIME-Version: 1.0
References: <4qne.1642061871982983169.90Lq@lists.yoctoproject.org>
In-Reply-To: <4qne.1642061871982983169.90Lq@lists.yoctoproject.org>
From: Federico Pellegrin <fede@evolware.org>
Date: Thu, 13 Jan 2022 09:31:57 +0100
Message-ID: 
 <CAM6O0ZhZJnAW2_6_dXU_piqYYszK2qnR=_3BVUfVMqF8+fU3gQ@mail.gmail.com>
Subject: Re: [yocto] The "/etc/resolv.conf" file becomes empty after each
 restart #yocto
To: sateesh m <sateesh0457@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a0d1da05d572852e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jan 2022 08:32:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55833

--000000000000a0d1da05d572852e
Content-Type: text/plain; charset="UTF-8"

Hello,
Some more details would be needed (ie. you have systemd?), but this could
be a good point to start: https://wiki.archlinux.org/title/Systemd-resolved

(ie. see a bit down, like:
https://wiki.archlinux.org/title/Systemd-resolved#Manually )

Cheers,
Federico

Il giorno gio 13 gen 2022 alle ore 09:17 sateesh m <sateesh0457@gmail.com>
ha scritto:

> Hi,
>
>        I assume it shouldn't be empty resov. conf. Manually I am updating
> nameserver always. but when I reboot my machine it's empty. So for this, I
> want to make permanent my nameserver always. I have added packages support
> IMAGE_INSTALL_append = " resolvconf"  but I am not able to fix this
> solution. Can anybody know this issue please guide me. How always will be
> automatically set without manual effort?
>
>
> --
> Regards,
> Sateesh
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55832):
> https://lists.yoctoproject.org/g/yocto/message/55832
> Mute This Topic: https://lists.yoctoproject.org/mt/88392943/5117409
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> fede@evolware.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000a0d1da05d572852e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hello,</div><div>Some more details wou=
ld be needed (ie. you have systemd?), but this could be a good point to sta=
rt: <a href=3D"https://wiki.archlinux.org/title/Systemd-resolved">https://w=
iki.archlinux.org/title/Systemd-resolved</a></div><div><br></div><div>(ie. =
see a bit down, like: <a href=3D"https://wiki.archlinux.org/title/Systemd-r=
esolved#Manually">https://wiki.archlinux.org/title/Systemd-resolved#Manuall=
y</a> )<br></div><div><br></div><div>Cheers,</div><div>Federico<br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il=
 giorno gio 13 gen 2022 alle ore 09:17 sateesh m &lt;<a href=3D"mailto:sate=
esh0457@gmail.com">sateesh0457@gmail.com</a>&gt; ha scritto:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">Hi,<br><br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0<span style=3D"color:rgb(77,81,86);font-family:&quot;Google Sans =
Text&quot;,arial,sans-serif;letter-spacing:0.1px">I assume it shouldn&#39;t=
 be=C2=A0</span><span style=3D"font-weight:bold;color:rgb(95,99,104);font-f=
amily:&quot;Google Sans Text&quot;,arial,sans-serif;letter-spacing:0.1px">e=
mpty resov. conf. Manually I am updating nameserver always. but when I rebo=
ot my machine it&#39;s empty. So for this, I want to make permanent my name=
server always. I have added packages support IMAGE_INSTALL_append =3D &quot=
; resolvconf&quot;</span><span style=3D"color:rgb(77,81,86);font-family:&qu=
ot;Google Sans Text&quot;,arial,sans-serif;letter-spacing:0.1px">=C2=A0 but=
 I am not able to fix this solution. Can anybody know this issue please gui=
de me. How always will be automatically set without manual effort?<br><br><=
/span><br>-- <br>Regards,<br>Sateesh
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55832): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55832" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55832</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88392943/5117=
409" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/88392943/5117409</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:fede@evolware.org" target=3D"_blank">fede@evolwa=
re.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000a0d1da05d572852e--

