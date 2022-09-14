Return-Path: <edmundwatson@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 564AAC6FA82
	for <webhook@archiver.kernel.org>; Wed, 14 Sep 2022 18:05:36 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web09.293.1663178731640829794
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Sep 2022 11:05:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=EibL4jV4;
 spf=pass (domain: gmail.com, ip: 209.85.216.51,
 mailfrom: edmundwatson@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id
 o70-20020a17090a0a4c00b00202f898fa86so5756911pjo.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 14 Sep 2022 11:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=2edc/ciabi2auuR2xKSW/OWNzkuzluIOQQaRfmxFXu4=;
        b=EibL4jV4816ZDLUr7kJ+Mu9P6oVy24c2GUzLCrtWcx75XsmTmF7S32HUUjTmVXqcna
         KsTDt2SbdAjC/WRrDS7a77kIuCOVLo4rWr8X6GUtJl49BuvaC33StV2S7+zayYUnBlQj
         T7nkz9rNgdygLDuQaRow+sPo9pE7aVX7K+Oj2QDiNZN8cfMo1uQHL115FpGJQYIUP3eX
         fWqkm34yk+JHcsvtFfTeaNuMjhJzsi709WTXG50EW5oXTDYEvucNbDdaye/nlL2dXVS9
         ZJ5JdV1qAWpH/W5ySwKM+49T1nCa3mFQuyax7bG5QpPM1BGqTc4hvOaPTEKb8VoFhAar
         1gGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=2edc/ciabi2auuR2xKSW/OWNzkuzluIOQQaRfmxFXu4=;
        b=5zNC0/74s7ftD0K5MnYlb5IZ0mwhQ1IN/K1ECmfptCxLMgptaSeWOuv2XgQgEZCI6k
         dmu/u1GP0b4ZJKgVmD+O7LiuItArKGzSA+HPc8JloXRCray3ylea39CCZP3nvZDIZGE/
         ieBq8fcTmSsHH1doR2W7PIGRXpGMa5+Ipy9W13QoCOEdsi8c6J30jp8MQA4+8DT5/h3/
         B8vrOlAXBGRbhYhSYMajqEBh53KCl8IW39ZXVHfnJ7plf7Yz8YTmauUEn0fghwuiPQX6
         Un/5DjnsCDX14uCrTEAax5laYd3IYogmrGwdRjN3UnO2xfC54NTB6A39+I0cx4uHnLso
         r91A==
X-Gm-Message-State: ACrzQf2bXVGTMgBxTMOMyg7IxwQQoCFQ9U5HRprR9+zqa4X+1QWf3S/+
	USh/d7AKRjs4eWc7hROpQHYgfLJQNlVcUyurRQ==
X-Google-Smtp-Source: 
 AMsMyM6URTzwDto2YtueYVusJEB6Rif3GMCgwJLBTb1gswWHX3rgVfK+K2xaCk0MpsAFurYQ+FMvckQUk0ySGXPD+E0=
X-Received: by 2002:a17:90a:67c1:b0:202:e10a:4f14 with SMTP id
 g1-20020a17090a67c100b00202e10a4f14mr6200067pjm.238.1663178729970; Wed, 14
 Sep 2022 11:05:29 -0700 (PDT)
MIME-Version: 1.0
References: <cZtA.1663177353817106080.nKg8@lists.yoctoproject.org>
 <CANNYZj__GxuzidL4KVuxmtdqp4MK4PVi86+z+-wzmWpmibzJ_Q@mail.gmail.com>
In-Reply-To: 
 <CANNYZj__GxuzidL4KVuxmtdqp4MK4PVi86+z+-wzmWpmibzJ_Q@mail.gmail.com>
From: Ed Watson <edmundwatson@gmail.com>
Date: Wed, 14 Sep 2022 20:05:19 +0200
Message-ID: 
 <CADD-u4vZMwdhCT0HLGLK4thWTn9XMN-nf73yEtV1+6BMXz4aAQ@mail.gmail.com>
Subject: Re: [yocto] meta-go dependencies #dunfell #golang
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000065e42805e8a6f9c9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Sep 2022 18:05:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58041

--00000000000065e42805e8a6f9c9
Content-Type: text/plain; charset="UTF-8"

Hello

Sure thanks it is https://github.com/aler9/rtsp-simple-server

Ed Watson




On Wed, 14 Sept 2022 at 19:53, Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> It helps if you can name the project. Are the sources public?
>
> Alex
>
> On Wed 14. Sep 2022 at 18.42, <edmundwatson@gmail.com> wrote:
>
>> Hello,
>>
>>
>> I am trying to include a go project in my yocto build. It has quite a few
>> dependencies. I may have missed something, there is a meta-go around that I
>> have missed? Or a quick way of pulling in multiple dependencies.
>> Thanks
>>
>> Edmund Watson
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#58039):
>> https://lists.yoctoproject.org/g/yocto/message/58039
>> Mute This Topic: https://lists.yoctoproject.org/mt/93683134/1686489
>> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
>> Mute #golang:https://lists.yoctoproject.org/g/yocto/mutehashtag/golang
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> alex.kanavin@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>>

--00000000000065e42805e8a6f9c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello=C2=A0<br><br>Sure thanks it is=C2=A0<a href=3D"https=
://github.com/aler9/rtsp-simple-server">https://github.com/aler9/rtsp-simpl=
e-server</a><br><br><div><div dir=3D"ltr" class=3D"gmail_signature" data-sm=
artmail=3D"gmail_signature"><div dir=3D"ltr"><div>Ed Watson<br><br><br></di=
v></div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, 14 Sept 2022 at 19:53, Alexander Kanavin &l=
t;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"auto">It helps if you can name the project. Are the sources public?</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed 14. Sep 202=
2 at 18.42, &lt;<a href=3D"mailto:edmundwatson@gmail.com" target=3D"_blank"=
>edmundwatson@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">Hello,<br><br><br>I am trying to include a go projec=
t in my yocto build. It has quite a few dependencies. I may have missed som=
ething, there is a meta-go around that I have missed? Or a quick way of pul=
ling in multiple dependencies.=C2=A0<br>Thanks<br><br>Edmund Watson
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58039): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58039" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58039</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93683134/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/93683134/1686489</a><br>
Mute #dunfell:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/dunfell" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/dunfell</a><br>
Mute #golang:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/=
golang" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/mutehashtag/golang</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</blockquote></div>

--00000000000065e42805e8a6f9c9--

