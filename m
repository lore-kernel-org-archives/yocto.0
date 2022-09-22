Return-Path: <benjamin.esquivel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69C0DC6FA91
	for <webhook@archiver.kernel.org>; Thu, 22 Sep 2022 16:37:04 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web09.1114.1663864622058231452
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Sep 2022 09:37:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WJ7fJ6iA;
 spf=pass (domain: gmail.com, ip: 209.85.216.48,
 mailfrom: benjamin.esquivel@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id
 i15-20020a17090a4b8f00b0020073b4ac27so2713651pjh.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 22 Sep 2022 09:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:from:to:cc:subject:date;
        bh=hIap71GpErhLBaCqcaKIGTM4wsTcvFLanARLOwsUwCc=;
        b=WJ7fJ6iAuivVr4T2jRzFxMObz21ABLpHVrqPk4kITQdYvKUGSLLL3YvKqTnTlQa44o
         xl3yOj9SP+9BY5LQlLcj7RWS0WZ1PzKkipsA/DyB0ZX/kYHlS6Bd1mAL8CiJfpWDH92L
         eQYpNJ48UjSJW0FW4IHw3QrL62RjzxIe0QwW396LMZGeeO6yVTtKdKEyWsi5So935cT/
         24D8snOIatfqeGSit4HFytcSPRDSgk9w/nVNhoNAeyOwgR+q4xhTJdxl9GuWstbwDpxH
         92tsGrwa9zgAchZnqmMjRVxVvcHanHhm6HIpvEyg9UWrVofNm5xAmG5YGPjkninla2hS
         PEiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:x-gm-message-state:from:to:cc:subject:date;
        bh=hIap71GpErhLBaCqcaKIGTM4wsTcvFLanARLOwsUwCc=;
        b=FqBn7ocfbtN/u1bjl/rSPBYfrs+GE07jEEKyGdThIqj0VeOdVzScSOLmJkOh+uIb95
         YIj7qkLKW9T5P6YCa2UBfKQUNU/OVEfk1kAZz0D6XABjFl5U/B7vcadGYiPdmtqyXTDq
         Qp8qwAWwNwZ/O+KQIV4yGQ2YFbBMxSYK0wOfS9cRi//Ry9ZJtECindbdvz9NtWzBAZnp
         WJu333xKrG2zfL0HYUN8P8YryXvpKa2otJcBEdLp9O6oSP2GwDBdQlatGikxMQi81a4N
         xUmdSq2DZ6t6ZUPRbPY1EJ293QNEjZl0kgGLg9xw40soZ6khEotMbfeo0ZSnoJ6sJdty
         NRkw==
X-Gm-Message-State: ACrzQf35bQge8cpwXKdgUlcxPbcOEC38FP7+xPc7ZhAOnhUS6qJ6uSNb
	UibH8k67+vs0aXB9PC1imgQ=
X-Google-Smtp-Source: 
 AMsMyM4JjTd1uRz/XbGebzKJiP80lXLQ14ZaBMB4QVOeH7ENJDFDJmBf2yjqqTBDQd0y3mY0aWIsrA==
X-Received: by 2002:a17:902:e294:b0:178:8a69:5b25 with SMTP id
 o20-20020a170902e29400b001788a695b25mr4021052plc.163.1663864621476;
        Thu, 22 Sep 2022 09:37:01 -0700 (PDT)
Received: from smtpclient.apple ([24.16.138.215])
        by smtp.gmail.com with ESMTPSA id
 q12-20020a170902dacc00b0016c50179b1esm4386310plx.152.2022.09.22.09.37.00
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2022 09:37:00 -0700 (PDT)
From: Benjamin Esquivel <benjamin.esquivel@gmail.com>
Message-Id: <0AECD2F7-B229-451C-B328-2DD5D82A2DB2@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_DE5AF7A5-60F8-47EA-B52D-F38F76E1933C"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: [yocto] [yocto-autobuilder2][PATCH] config.py: default repository
 updates
Date: Thu, 22 Sep 2022 09:36:59 -0700
In-Reply-To: 
 <e97d25b8f041f395ed6645b4a1e3f44d16ecb5ce.camel@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org,
 tarxf@esquibits.com
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <20220922023334.386489-1-benjamin.esquivel@gmail.com>
 <e97d25b8f041f395ed6645b4a1e3f44d16ecb5ce.camel@linuxfoundation.org>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Sep 2022 16:37:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58137


--Apple-Mail=_DE5AF7A5-60F8-47EA-B52D-F38F76E1933C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Sep 22, 2022, at 5:42 AM, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>=20
> On Wed, 2022-09-21 at 19:33 -0700, benjamin.esquivel@gmail.com =
<mailto:benjamin.esquivel@gmail.com> wrote:
>> From: Benjamin Esquivel <benjamin.esquivel@gmail.com>
>>=20
>> the repos that are used as defaults in the build requests are =
outdated
>> hence the update.
>>=20
>> Signed-off-by: Benjamin Esquivel <benjamin.esquivel@gmail.com>
>> ---
>> config.py | 22 +++++++++++-----------
>> 1 file changed, 11 insertions(+), 11 deletions(-)
>>=20
>> diff --git a/config.py b/config.py
>> index 042a1ec..2249e82 100644
>> --- a/config.py
>> +++ b/config.py
>> @@ -38,23 +38,23 @@ repos =3D {
>>                           "neon-master"],
>>     "eclipse-poky-oxygen": =
["ssh://git@push.yoctoproject.org/eclipse-yocto",
>>                             "oxygen-master"],
>> -    "poky": ["ssh://git@push.yoctoproject.org/poky", "master"],
>> -    "meta-intel": ["ssh://git@push.yoctoproject.org/meta-intel", =
"master"],
>> -    "meta-arm": ["ssh://git@push.yoctoproject.org/meta-arm", =
"master"],
>> +    "poky": ["git://git.yoctoproject.org/poky", "master"],
>> +    "meta-intel": ["git://git.yoctoproject.org/meta-intel", =
"master"],
>> +    "meta-arm": ["git://git.yoctoproject.org/meta-arm", "master"],
>>     "meta-agl": ["https://git.automotivelinux.org/AGL/meta-agl", =
"next"],
>>     "meta-aws": ["https://github.com/aws/meta-aws.git", "master"],
>> -    "meta-ti": ["ssh://git@push.yoctoproject.org/meta-ti", =
"master"],
>> -    "meta-security": =
["ssh://git@push.yoctoproject.org/meta-security", "master"],
>> +    "meta-ti": ["git://git.yoctoproject.org/meta-ti", "master"],
>> +    "meta-security": ["git://git.yoctoproject.org/meta-security", =
"master"],
>>     "oecore": ["git://git.openembedded.org/openembedded-core",
>>                           "master"],
>>     "bitbake": ["git://git.openembedded.org/bitbake", "master"],
>> -    "meta-qt4": ["ssh://git@push.yoctoproject.org/meta-qt4", =
"master"],
>> -    "meta-qt3": ["ssh://git@push.yoctoproject.org/meta-qt3", =
"master"],
>> -    "meta-mingw": ["ssh://git@push.yoctoproject.org/meta-mingw", =
"master"],
>> -    "meta-gplv2": ["ssh://git@push.yoctoproject.org/meta-gplv2", =
"master"],
>> +    "meta-qt4": ["git://git.yoctoproject.org/meta-qt4", "master"],
>> +    "meta-qt3": ["git://git.yoctoproject.org/meta-qt3", "master"],
>> +    "meta-mingw": ["git://git.yoctoproject.org/meta-mingw", =
"master"],
>> +    "meta-gplv2": ["git://git.yoctoproject.org/meta-gplv2", =
"master"],
>>     "meta-openembedded": =
["git://git.openembedded.org/meta-openembedded", "master"],
>> -    "meta-virtualization": =
["ssh://git@push.yoctoproject.org/meta-virtualization", "master"],
>> -    "yocto-docs": ["ssh://git@push.yoctoproject.org/yocto-docs", =
"master"]
>> +    "meta-virtualization": =
["git://git.yoctoproject.org/meta-virtualization", "master"],
>> +    "yocto-docs": ["git://git.yoctoproject.org/yocto-docs", =
"master"]
>> }
>=20
> Sadly this isn't the case. The push servers are where people with push
> access push things, which then mirror out to the other mirror servers.
>=20
> The autobuilder works off push since other wise, we might trigger a
> build and it may build the wrong thing if the mirrors hadn't updated
> yet.
>=20
> Whilst I appreciate that is a problem for only certain users, it was a
> really problematic corner case for the main project AB.
Ah, I was missing this context. I know that in the build request =
interface=20
you can override some of these repos but I believe not all of them so =
you=E2=80=99ll
get an error eventually and need to go tweak the config.py file to make =
it
work. I don=E2=80=99t know if there is a way to user override this but =
I=E2=80=99ll check.

Thanks for checking my patch.=20
>=20
> Cheers,
>=20
> Richard


--Apple-Mail=_DE5AF7A5-60F8-47EA-B52D-F38F76E1933C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Sep 22, 2022, at 5:42 AM, Richard Purdie &lt;<a =
href=3D"mailto:richard.purdie@linuxfoundation.org" =
class=3D"">richard.purdie@linuxfoundation.org</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><meta =
charset=3D"UTF-8" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">On Wed, 2022-09-21 at 19:33 -0700,<span =
class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"mailto:benjamin.esquivel@gmail.com" style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" =
class=3D"">benjamin.esquivel@gmail.com</a><span style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D""><span =
class=3D"Apple-converted-space">&nbsp;</span>wrote:</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D""><blockquote type=3D"cite" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D"">From: =
Benjamin Esquivel &lt;<a href=3D"mailto:benjamin.esquivel@gmail.com" =
class=3D"">benjamin.esquivel@gmail.com</a>&gt;<br class=3D""><br =
class=3D"">the repos that are used as defaults in the build requests are =
outdated<br class=3D"">hence the update.<br class=3D""><br =
class=3D"">Signed-off-by: Benjamin Esquivel &lt;<a =
href=3D"mailto:benjamin.esquivel@gmail.com" =
class=3D"">benjamin.esquivel@gmail.com</a>&gt;<br class=3D"">---<br =
class=3D"">config.py | 22 +++++++++++-----------<br class=3D"">1 file =
changed, 11 insertions(+), 11 deletions(-)<br class=3D""><br =
class=3D"">diff --git a/config.py b/config.py<br class=3D"">index =
042a1ec..2249e82 100644<br class=3D"">--- a/config.py<br class=3D"">+++ =
b/config.py<br class=3D"">@@ -38,23 +38,23 @@ repos =3D {<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;"neon-master"],<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;"eclipse-poky-oxygen": ["<a =
href=3D"ssh://git@push.yoctoproject.org/eclipse-yocto" =
class=3D"">ssh://git@push.yoctoproject.org/eclipse-yocto</a>",<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"oxygen-master"],<br class=3D"">- =
&nbsp;&nbsp;&nbsp;"poky": ["<a =
href=3D"ssh://git@push.yoctoproject.org/poky" =
class=3D"">ssh://git@push.yoctoproject.org/poky</a>", "master"],<br =
class=3D"">- &nbsp;&nbsp;&nbsp;"meta-intel": ["<a =
href=3D"ssh://git@push.yoctoproject.org/meta-intel" =
class=3D"">ssh://git@push.yoctoproject.org/meta-intel</a>", =
"master"],<br class=3D"">- &nbsp;&nbsp;&nbsp;"meta-arm": ["<a =
href=3D"ssh://git@push.yoctoproject.org/meta-arm" =
class=3D"">ssh://git@push.yoctoproject.org/meta-arm</a>", "master"],<br =
class=3D"">+ &nbsp;&nbsp;&nbsp;"poky": ["<a =
href=3D"git://git.yoctoproject.org/poky" =
class=3D"">git://git.yoctoproject.org/poky</a>", "master"],<br =
class=3D"">+ &nbsp;&nbsp;&nbsp;"meta-intel": ["<a =
href=3D"git://git.yoctoproject.org/meta-intel" =
class=3D"">git://git.yoctoproject.org/meta-intel</a>", "master"],<br =
class=3D"">+ &nbsp;&nbsp;&nbsp;"meta-arm": ["<a =
href=3D"git://git.yoctoproject.org/meta-arm" =
class=3D"">git://git.yoctoproject.org/meta-arm</a>", "master"],<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;"meta-agl": ["<a =
href=3D"https://git.automotivelinux.org/AGL/meta-agl" =
class=3D"">https://git.automotivelinux.org/AGL/meta-agl</a>", =
"next"],<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;"meta-aws": ["<a =
href=3D"https://github.com/aws/meta-aws.git" =
class=3D"">https://github.com/aws/meta-aws.git</a>", "master"],<br =
class=3D"">- &nbsp;&nbsp;&nbsp;"meta-ti": ["<a =
href=3D"ssh://git@push.yoctoproject.org/meta-ti" =
class=3D"">ssh://git@push.yoctoproject.org/meta-ti</a>", "master"],<br =
class=3D"">- &nbsp;&nbsp;&nbsp;"meta-security": ["<a =
href=3D"ssh://git@push.yoctoproject.org/meta-security" =
class=3D"">ssh://git@push.yoctoproject.org/meta-security</a>", =
"master"],<br class=3D"">+ &nbsp;&nbsp;&nbsp;"meta-ti": ["<a =
href=3D"git://git.yoctoproject.org/meta-ti" =
class=3D"">git://git.yoctoproject.org/meta-ti</a>", "master"],<br =
class=3D"">+ &nbsp;&nbsp;&nbsp;"meta-security": ["<a =
href=3D"git://git.yoctoproject.org/meta-security" =
class=3D"">git://git.yoctoproject.org/meta-security</a>", "master"],<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;"oecore": ["<a =
href=3D"git://git.openembedded.org/openembedded-core" =
class=3D"">git://git.openembedded.org/openembedded-core</a>",<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;"master"],<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;"bitbake": ["<a =
href=3D"git://git.openembedded.org/bitbake" =
class=3D"">git://git.openembedded.org/bitbake</a>", "master"],<br =
class=3D"">- &nbsp;&nbsp;&nbsp;"meta-qt4": ["<a =
href=3D"ssh://git@push.yoctoproject.org/meta-qt4" =
class=3D"">ssh://git@push.yoctoproject.org/meta-qt4</a>", "master"],<br =
class=3D"">- &nbsp;&nbsp;&nbsp;"meta-qt3": ["<a =
href=3D"ssh://git@push.yoctoproject.org/meta-qt3" =
class=3D"">ssh://git@push.yoctoproject.org/meta-qt3</a>", "master"],<br =
class=3D"">- &nbsp;&nbsp;&nbsp;"meta-mingw": ["<a =
href=3D"ssh://git@push.yoctoproject.org/meta-mingw" =
class=3D"">ssh://git@push.yoctoproject.org/meta-mingw</a>", =
"master"],<br class=3D"">- &nbsp;&nbsp;&nbsp;"meta-gplv2": ["<a =
href=3D"ssh://git@push.yoctoproject.org/meta-gplv2" =
class=3D"">ssh://git@push.yoctoproject.org/meta-gplv2</a>", =
"master"],<br class=3D"">+ &nbsp;&nbsp;&nbsp;"meta-qt4": ["<a =
href=3D"git://git.yoctoproject.org/meta-qt4" =
class=3D"">git://git.yoctoproject.org/meta-qt4</a>", "master"],<br =
class=3D"">+ &nbsp;&nbsp;&nbsp;"meta-qt3": ["<a =
href=3D"git://git.yoctoproject.org/meta-qt3" =
class=3D"">git://git.yoctoproject.org/meta-qt3</a>", "master"],<br =
class=3D"">+ &nbsp;&nbsp;&nbsp;"meta-mingw": ["<a =
href=3D"git://git.yoctoproject.org/meta-mingw" =
class=3D"">git://git.yoctoproject.org/meta-mingw</a>", "master"],<br =
class=3D"">+ &nbsp;&nbsp;&nbsp;"meta-gplv2": ["<a =
href=3D"git://git.yoctoproject.org/meta-gplv2" =
class=3D"">git://git.yoctoproject.org/meta-gplv2</a>", "master"],<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;"meta-openembedded": ["<a =
href=3D"git://git.openembedded.org/meta-openembedded" =
class=3D"">git://git.openembedded.org/meta-openembedded</a>", =
"master"],<br class=3D"">- &nbsp;&nbsp;&nbsp;"meta-virtualization": ["<a =
href=3D"ssh://git@push.yoctoproject.org/meta-virtualization" =
class=3D"">ssh://git@push.yoctoproject.org/meta-virtualization</a>", =
"master"],<br class=3D"">- &nbsp;&nbsp;&nbsp;"yocto-docs": ["<a =
href=3D"ssh://git@push.yoctoproject.org/yocto-docs" =
class=3D"">ssh://git@push.yoctoproject.org/yocto-docs</a>", "master"]<br =
class=3D"">+ &nbsp;&nbsp;&nbsp;"meta-virtualization": ["<a =
href=3D"git://git.yoctoproject.org/meta-virtualization" =
class=3D"">git://git.yoctoproject.org/meta-virtualization</a>", =
"master"],<br class=3D"">+ &nbsp;&nbsp;&nbsp;"yocto-docs": ["<a =
href=3D"git://git.yoctoproject.org/yocto-docs" =
class=3D"">git://git.yoctoproject.org/yocto-docs</a>", "master"]<br =
class=3D"">}<br class=3D""></blockquote><br style=3D"caret-color: rgb(0, =
0, 0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Sadly this isn't the case. The push servers are where people =
with push</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">access push =
things, which then mirror out to the other mirror servers.</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">The autobuilder works off push =
since other wise, we might trigger a</span><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">build and it may build the wrong thing if the mirrors hadn't =
updated</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">yet.</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">Whilst I appreciate that is a =
problem for only certain users, it was a</span><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">really problematic corner case for the main project =
AB.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""></div></blockquote><span style=3D"caret-color: rgb(0, =
0, 0); color: rgb(0, 0, 0);" class=3D"">Ah, I was missing this context. =
I know that in the build request interface&nbsp;</span></div><div><font =
color=3D"#000000" class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" =
class=3D"">you can override some of these repos but I believe not all of =
them so you=E2=80=99ll</span></font></div><div>get an error eventually =
and need to go tweak the config.py file to make it</div><div>work. I =
don=E2=80=99t know if there is a way to user override this but I=E2=80=99l=
l check.</div><div><br class=3D""></div><div>Thanks for checking my =
patch.&nbsp;<br style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0);" class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">Cheers,</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" =
class=3D"">Richard</span></div></blockquote></div><br =
class=3D""></body></html>=

--Apple-Mail=_DE5AF7A5-60F8-47EA-B52D-F38F76E1933C--

