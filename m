Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC6F7E8180D
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 01:31:05 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.9297.1695691857767153731
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Sep 2023 18:30:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lOUA2+Pu;
 spf=pass (domain: gmail.com, ip: 209.85.128.53, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-405361bb93bso74735395e9.3
        for <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 18:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695691856; x=1696296656; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eC8Tf+EZikmntpaPXkn9L7ukRowP/FkdqVk/3H8H6Cc=;
        b=lOUA2+PufoyWtkiBgksrGlB+yomPI1spYL/la03O7RNgEVx4nk79/tm1vU+tBeebQM
         9/S3fET458LCRpEX+4fSgK9+QnT5pD4dqYEPTJR6M9YWzRWYjSMkn3YWu1pKVyS/JHSq
         F1eXoUUmQ9vd+E1itczpJzDLHJjSJHT3Q+uFDMvrqm3CgmFRJAazmWd7EFEco1BcOnsf
         ZeGMbOn4RN6Wvu79o4Xv0AO6VRi9sleM4loGWQ7ikbjP4XPWmo+/5njd7WBbL1vjAnhn
         PWMkNVmBaJDt7GvSDBKf5ViQru+U+xQUxf0IiANQO0san3A5SOT16TSXPU5lxujOZb0v
         3dXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695691856; x=1696296656;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eC8Tf+EZikmntpaPXkn9L7ukRowP/FkdqVk/3H8H6Cc=;
        b=dSL/WJ+KNungjdwwoiw7oNnyd1jf9DzWuIbPGUytlL3OwJbM8qsJuBuY/92R+GRQZk
         mdMURJvA+4rlGGDMfeC7k5GmM07LOu7xeCdrZGLKmd+/JtSUqYYBYkJkkEBetGgF18S+
         xk1u4B+4tpKurMoqT5RRhkLEgkxOq6/C6auFRHEROhlg+mB93n+I9UDd4S4lsLxFMPQi
         U3mueYNll+P5AeWn2h2zf8Xv8TW4zAHM5ypkWDoBHfnbwkpjGDggaMPrAVAwRVkkxlJL
         ceBk7z0xNjxRFJFYX793oW2yrrugpH0m4eybwyw7wbC388cis3xwl+dXBZfcU6PUTCTl
         n+WA==
X-Gm-Message-State: AOJu0YwiRSDY0sUzZkVbrtPkyVKQjSicrW5QLTjF5UhksYlZFYdvn2A6
	4raoXelndTppsxfFY++LcTu+DP59o6vuh5eZVkOVUHXeUjY=
X-Google-Smtp-Source: AGHT+IG9ZZnbpcZ+Ei5vzG8/ZvtHV2KbUCySDZcgQRfVxftNAaolFrPEAUA7lT8sKaYsTnijyTFAPPzadXXTy75Cu5I=
X-Received: by 2002:a5d:5389:0:b0:31f:6524:2de1 with SMTP id
 d9-20020a5d5389000000b0031f65242de1mr7731086wrv.32.1695691855886; Mon, 25 Sep
 2023 18:30:55 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 25 Sep 2023 18:30:43 -0700
Message-ID: <CAK5yBb8PpZ41b7aT6DyuOzhC+D2axu3CLh5UoXyirLOfTctOOg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW38!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b7ff7b06063906ec"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 01:31:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61109

--000000000000b7ff7b06063906ec
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 7
ross.burton@arm.com 1
Grand Total 8

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000b7ff7b06063906ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>The below were the owners of enhancements or bugs closed during =
the last week!<br></span><div dir=3D"ltr" class=3D"gmail_signature" data-sm=
artmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><table cellsp=
acing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-layou=
t:fixed;font-size:11pt;font-family:Calibri;width:0px;border-collapse:collap=
se;border:none"><colgroup><col width=3D"249"><col width=3D"42"></colgroup><=
tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(21=
9,229,241);font-weight:bold">Who</td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(2=
19,229,241);font-weight:bold">Count</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linu=
xfoundation.org</a></td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">7</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross=
.burton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weigh=
t:bold">Grand Total</td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,=
241);font-weight:bold;text-align:right">8</td></tr></tbody></table><p class=
=3D"MsoNormal" style=3D"background-image:initial;background-position:initia=
l;background-repeat:initial"><span style=3D"font-size:12pt;font-family:Aria=
l,sans-serif">Thanks,<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-fam=
ily:Arial,sans-serif">=C2=A0<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><i><span style=3D"font-size:16pt;co=
lor:purple">Stephen K. Jolley</span></i></b><span style=3D"font-size:12pt;f=
ont-family:Arial,sans-serif"><span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><span style=3D"font-size:8pt;font-f=
amily:&quot;Courier New&quot;;color:blue">Yocto Project Program Manager</sp=
an></b></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings;color:black">(</span><span style=3D"font-size:9pt;font-family:=
&quot;MS Sans Serif&quot;,serif;color:teal">=C2=A0=C2=A0=C2=A0=C2=A0</span>=
<b><span style=3D"font-size:8pt;font-family:&quot;Comic Sans MS&quot;;color=
:teal">Cell</span></b><span style=3D"font-size:9pt;font-family:&quot;MS San=
s Serif&quot;,serif;color:teal">:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font=
-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif">(208) 244-4460</span=
><span style=3D"font-size:12pt;font-family:Arial,sans-serif"><span></span><=
/span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings">*=C2=A0</span><b><span lang=3D"FR" style=3D"font-size:8pt;fon=
t-family:&quot;Comic Sans MS&quot;;color:teal">Email</span></b><span lang=
=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;=
color:teal">:</span><span lang=3D"FR" style=3D"font-size:9pt;font-family:&q=
uot;MS Sans Serif&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><u><span=
 lang=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,s=
erif;color:blue"><span style=3D"color:rgb(17,85,204)"><a href=3D"mailto:ste=
phen.k.jolley@intel.com" target=3D"_blank">s</a><a href=3D"mailto:jolley.yp=
.pm@gmail.com" target=3D"_blank">jolley.yp.pm@gmail.com</a></span></span></=
u></p></div></div></div></div>

--000000000000b7ff7b06063906ec--

