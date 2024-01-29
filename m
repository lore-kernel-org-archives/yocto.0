Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43625C47DA9
	for <webhook@archiver.kernel.org>; Mon, 29 Jan 2024 22:08:42 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web10.3946.1706566118849112485
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Jan 2024 14:08:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Hzm1cegX;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a26ed1e05c7so383432066b.2
        for <yocto@lists.yoctoproject.org>; Mon, 29 Jan 2024 14:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706566117; x=1707170917; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hSPSk5T7Fzl7xlCXcIKJPWNUjCH0jbuXr4GX1JriEhU=;
        b=Hzm1cegXiNF9aG6zNB6mPZ8A7CXIbiveddI7Fw8rGP/UC0MfjbdQIpWfNzT3tSS2xc
         dQrafXlmAU0WBjWipFUtY/mQkydTxjBfUkAi7cpcbOik7xlKFzxcd+VERuwgfRXUiZH1
         DM9JSIwgoZvRCsu/sE0z33F0P8YcuUBAT10CetPt1CNwBbrX4LZHB2Y8sZsdiDfvttbo
         xBBIY6KY2HjhcewPx5+2/joylqeDCirueGxY+Xm8MGwpdGUGicMGu+9qOqKgPkfAADxC
         FSjGYK2eH2aTJO8NlOx7t1NngykujsQ0Ait7IzDiXtVu/6VdDjcZhoIvA/DCsMbRlaX4
         NKBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706566117; x=1707170917;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hSPSk5T7Fzl7xlCXcIKJPWNUjCH0jbuXr4GX1JriEhU=;
        b=Yhg/7O/kf2Mx+DZzOEBknQzkbNVOJG71MWjDI/vYCxOUCLlfFM8qr8lOlMGWPh9cdq
         OwzlfcsbCxc8xMw+vbJje1SkgWfMOeh9JsXZXriiNnJczjliFA8q/vFjAOrnfJ+u4xxg
         k4ud4JfWI30gzH3Cl+DeWSTML0lbrF08W8FQqM/3AroAsRjh0AsbAGawH2ZkbStnIZRk
         PyH459SafvBYHIr2I29ekGFx4YLZnNaQ4hXYmuZsjwGdNyb/JSlpQ3NHLMnF+PXe73oZ
         cnjZ6cZxWMGcdL32rNqNK0j2j0ASKBfwHIKMTJsdUgMPS35uG6vAf+4OMqQPw6zg2MZP
         3wXA==
X-Gm-Message-State: AOJu0Yy9WhE1rm4aCR7k+bWfsRVcoEDk8xn37lnTwaLvQci6pRc2wX3O
	Yr9FQg/nDyvIhQTSBEWe3QoMEmd4V+5+g+hcPlX5rMsW3NyapuOre2mbv9gLvBQ4uoEPxzWsWUl
	lU4ZuJLHguAGkDO/Kxv95fFNB4Y42zsHS4cI=
X-Google-Smtp-Source: AGHT+IG0fATvUltED4j4BskggiwUaUcqtxFIlp1xS51XydMXQpIH/2EJL65vgYjNlbC+xGKWTlyTcygVwEBJeumwMJ4=
X-Received: by 2002:a17:906:1912:b0:a35:a71d:81fe with SMTP id
 a18-20020a170906191200b00a35a71d81femr2982017eje.43.1706566117020; Mon, 29
 Jan 2024 14:08:37 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 29 Jan 2024 15:08:26 -0700
Message-ID: <CAK5yBb97r8HrEZj9667-eRHQAoN-GxZehnpb6N7VrXeqdaWC0g@mail.gmail.com>
Subject: Enhancements/Bugs closed WW04!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000030d92806101ce39f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Jan 2024 22:08:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62325

--00000000000030d92806101ce39f
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
pavel@zhukoff.net 5
alexandre.belloni@bootlin.com 3
yoann.congal@smile.fr 1
ross.burton@arm.com 1
richard.purdie@linuxfoundation.org 1
randy.macleod@windriver.com 1
bruce.ashfield@gmail.com 1
Grand Total 13

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000030d92806101ce39f
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
"><a href=3D"mailto:pavel@zhukoff.net">pavel@zhukoff.net</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">5</td></tr><tr style=3D"height:20px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
a href=3D"mailto:alexandre.belloni@bootlin.com">alexandre.belloni@bootlin.c=
om</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr style=3D"=
height:20px"><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann.congal@sm=
ile.fr</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@a=
rm.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org=
">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:rand=
y.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hre=
f=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bott=
om;background-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-a=
lign:right">13</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"bac=
kground-image:initial;background-position:initial;background-repeat:initial=
"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span>=
</span></span></p>

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

--00000000000030d92806101ce39f--

