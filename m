Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CD27CFA760
	for <webhook@archiver.kernel.org>; Fri, 21 Nov 2025 09:21:15 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7853.1763716873694194041
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Nov 2025 01:21:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=P+QOaZe4;
 spf=pass (domain: smile.fr, ip: 209.85.221.54, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-42b427cda88so1235409f8f.0
        for <yocto@lists.yoctoproject.org>; Fri, 21 Nov 2025 01:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1763716872; x=1764321672; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fxHSFsZmEH/CWhFahzfJQiunJTS/vSG+Fndym9cYEfs=;
        b=P+QOaZe4H2Vay0ZpKM4NmPZyx7SVCEZxajmmr8xVzV+BFs52mQlqjNCJYJVI+HG202
         W/eGQ/fJTYSWlsb8k6MQSUlLVRBdwj1WtgyCrKEwLQXmHDf9jKakrh+K0yzg6aTv2Hhc
         LfSuq32hl4S8EqeXCcouWw1Jk+BEQ/etpIgrw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763716872; x=1764321672;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fxHSFsZmEH/CWhFahzfJQiunJTS/vSG+Fndym9cYEfs=;
        b=rMuqoNHeujWTDpzaly4GV/dJAbO//zWbFf6YfFfI+0ZjPgDT8TW4vVLONt6Braezcr
         gyepjprw+d9bSz6oiSbrxkId6BPjWbbreP8F5+5fGN/2xKsh0bgOjISlY5FzPk/DoQV0
         KbnHKRelW+Hvsz0+j+KYS2aUsQ1G6uADYXwPmbZ3U3yazE9Ell6U/BSyEmPqMhIP6l+8
         /punQUHNGMVUYrRe3H9BLCJYy22tOQiex9l5yzdGyr8fWnvLXf+q29cbXllX93HQQsNr
         Xa8lL8XyD87FnLNKKgg7fkrqdS82Ii0N1tnR5yHWfOhlK8KWEFSF/NbfdKSALziB+fLP
         soBg==
X-Gm-Message-State: AOJu0YyZk3X+0WuUQT8qXR3RJJmbWpiW0uym6KL9Kl0XWDjdJVJNjA9J
	jueqyfU/C15nmD/euesCBRNG1Qq59waPrU19bTqorNAWh05H3dbVnWlU8P+amDoPmxofngqpFYz
	OGT6PNXSGL+B1S0OOxTTWCZPOYzVbM24ZSyBdulzIO73H1vlD9njD+Ik=
X-Gm-Gg: ASbGncs6wUng2uG9gUjHvjewbNIueTLoxPdMMcUl48sdtqUWMruC0M5ULInS63lZiuB
	nQa01VQmhltKLM3G4xyXYyAkiv5bc36ZldVuot65Wxcy6x0RS7tEa1ukfMfPbVOPAedlbB8x7jd
	VSQ3hLdW9ExFO9rYBMV+fxBKxQ6FfMpjwWvnR2Q/CkDswTJvmWS9di/PmY7g/Uzu4yC9Qo+X8Sj
	/9Jpqjy7Dl/uCy6pQT+HPlA60dhzvpqUBS5DwHPBfIOKohYil8KpymKB1bE2TGagSslBXQFDovQ
	6tsUK/V8c8D91tBKWu8Nf4SMPzvqMA==
X-Google-Smtp-Source: AGHT+IGEH5EkphHSaTVjooFAvspVJ8+lxO3PGP2qFvDr9WLM6rs8CN9TFcyucmQOBmJ9s5Gd0DHwAj0dz4pG57Ov7b4=
X-Received: by 2002:a05:6000:18a9:b0:42b:3806:2bb4 with SMTP id
 ffacd0b85a97d-42cc1cf3b0emr1447888f8f.27.1763716871410; Fri, 21 Nov 2025
 01:21:11 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb-xUF-+Av5wZgfErwCavLpJ1wd27BD5dgQ9Py7_2wC=8g@mail.gmail.com>
 <580804.1763714849616118716@lists.yoctoproject.org>
In-Reply-To: <580804.1763714849616118716@lists.yoctoproject.org>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Fri, 21 Nov 2025 10:20:44 +0100
X-Gm-Features: AWmQ_bl04hBoZH-GThfguMPB9RG_nnJ5Ge4zUBp2ru5le5EFIzE9tXpI1SqdVCk
Message-ID: <CAMSfU+7COCvTVk-o6Wynscqwor1jGHV9wKvpLvjjxnG1U7_BcA@mail.gmail.com>
Subject: Re: [yocto] Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: yocto@lists.yoctoproject.org, swami310@gmail.com
Cc: Stephen Jolley <sjolley.yp.pm@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000009aeadb0644175536"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Nov 2025 09:21:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66040

--0000000000009aeadb0644175536
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le ven. 21 nov. 2025 =C3=A0 09:47, swami310 via lists.yoctoproject.org <swa=
mi310=3D
gmail.com@lists.yoctoproject.org> a =C3=A9crit :

> I can spare time and would like to help with this. However, I am a
> complete novice and need guidance on how to get started.
> If someone could guide me on how to get started, I would understand the
> process and start contributing.
> Kindly let me know
>

Hello Swami,

Thanks for volunteering!

Here's how I would approach this:
First, request a bugzilla account here :
https://bugzilla.yoctoproject.org/createaccount.cgi
Then, choose one of the unassigned newcomer bugs (those have been
identified to be good first contributions). This link will take you to the
current list:
https://bugzilla.yoctoproject.org/buglist.cgi?bug_status=3DNEW&query_format=
=3Dadvanced&resolution=3D---&status_whiteboard=3DNEWCOMER&status_whiteboard=
_type=3Dallwordssubstr
And start working on it. When your account is accepted, assign the bug to
yourself to signal that you are working on it.
During the build times, read
https://docs.yoctoproject.org/dev/contributor-guide/index.html to read how
to format and send your contribution.
If you get stuck, describe your problem on this ML and we will try to help
(FYI, we are very near release so there may be less answer than usual)

Enjoy :)

regards
> Swami
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66039):
> https://lists.yoctoproject.org/g/yocto/message/66039
> Mute This Topic: https://lists.yoctoproject.org/mt/116358522/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Yoann Congal
Smile ECS

--0000000000009aeadb0644175536
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Le=C2=A0ven. 21 nov. 202=
5 =C3=A0=C2=A009:47, swami310 via <a href=3D"http://lists.yoctoproject.org"=
 target=3D"_blank">lists.yoctoproject.org</a> &lt;swami310=3D<a href=3D"mai=
lto:gmail.com@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoc=
toproject.org</a>&gt; a =C3=A9crit=C2=A0:</div><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div>I can spare time and =
would like to help with this. However, I am a complete novice and need guid=
ance on how to get started.</div>
<div>If someone could guide me on how to get started, I would understand th=
e process and start contributing.</div>
<div>Kindly let me know</div></blockquote><div><br></div><div>Hello=C2=A0Sw=
ami,</div><div><br></div><div>Thanks for volunteering!</div><div><br></div>=
<div>Here&#39;s how I would approach this:</div><div>First, request a bugzi=
lla account here :=C2=A0<a href=3D"https://bugzilla.yoctoproject.org/create=
account.cgi" target=3D"_blank">https://bugzilla.yoctoproject.org/createacco=
unt.cgi</a></div><div>Then, choose one of the unassigned newcomer bugs (tho=
se have been identified to be good first contributions). This link will tak=
e you to the current list:=C2=A0<a href=3D"https://bugzilla.yoctoproject.or=
g/buglist.cgi?bug_status=3DNEW&amp;query_format=3Dadvanced&amp;resolution=
=3D---&amp;status_whiteboard=3DNEWCOMER&amp;status_whiteboard_type=3Dallwor=
dssubstr" target=3D"_blank">https://bugzilla.yoctoproject.org/buglist.cgi?b=
ug_status=3DNEW&amp;query_format=3Dadvanced&amp;resolution=3D---&amp;status=
_whiteboard=3DNEWCOMER&amp;status_whiteboard_type=3Dallwordssubstr</a></div=
><div>And start working on it. When your account is accepted, assign the bu=
g to yourself to signal that you are working on it.</div><div>During the bu=
ild times, read=C2=A0<a href=3D"https://docs.yoctoproject.org/dev/contribut=
or-guide/index.html" target=3D"_blank">https://docs.yoctoproject.org/dev/co=
ntributor-guide/index.html</a> to read how to format and send your contribu=
tion.=C2=A0</div><div>If you get stuck, describe your problem on this ML an=
d we will try to help (FYI, we are very near release so there may be less a=
nswer than usual)</div><div><br></div><div>Enjoy :)</div><div><br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
<div></div>
<div>regards</div>
<div>Swami</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66039): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66039" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66039</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/116358522/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/116358522/4316185</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_blank">yoann.c=
ongal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div><fon=
t face=3D"Raleway, regular">Smile ECS</font></div></div></div></div>
</div>

--0000000000009aeadb0644175536--

