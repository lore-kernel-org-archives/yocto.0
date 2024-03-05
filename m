Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67636C5478C
	for <webhook@archiver.kernel.org>; Tue,  5 Mar 2024 05:43:42 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web11.15193.1709617417830842284
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Mar 2024 21:43:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mnoSnRA3;
 spf=pass (domain: gmail.com, ip: 209.85.218.52, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a293f2280c7so909042566b.1
        for <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 21:43:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709617416; x=1710222216; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cW3XXLkjI14dHDUbU/OjBEietve2zKDMZZvsxkxubTY=;
        b=mnoSnRA3x5AJXxdJe/evt8ZDinOF03qHqjs2uLqPM4OdM+V9cq6Ie2r+PHBP3Fe71I
         DM19jVNOS61NiHa2GeNC152GWdjFImJmUzwQamODUnY0Kfm5ta/vzZsrGuFAV5qiwcpj
         zblmW2Snmb9UiUXq91PyJIMkyLAISUZ5z2pr4KS5eAWpQWmN/dttHun30lmaClmi3F7K
         wz/jNoMhdz6iGgYQ54ySs/76TEn9lUxRq7z7Vmn7xw/DOuJ/o7nCfSFvCDEEHStYPrmE
         g2Qtq7NV/2RXEKzqPetqTENW+BYkyENkcKB0YUfiMVtXppuGcgjcC4y9kYPL5NGDqCxh
         y0vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709617416; x=1710222216;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cW3XXLkjI14dHDUbU/OjBEietve2zKDMZZvsxkxubTY=;
        b=G983N1IOH9SBUTtKIFF+GEysnpSBBoFJswsQJ3d0yK95Jj1dw8izljAAtq7E2o9Kbs
         UnmnlPJO3gYHWIRPxVdh/V22tSYP7B8Ujl9h7pSUWHWNFxMym24OTGhkQn+6RsCRs55R
         to8F5I0OEsbz8/SJk0tm8PtaHKFHNShsqcwiaqPw0e1bI0+IkrHYKykht7BGawHmaFCf
         o6ti4TN1pWlm2nqImhl+I6IQnUsSDjCwO5IGL1cozXRN+On8jT0x+CIGTsyo7KIbETdg
         dUOq8wBTp9fo59jrWFEkaG0F8AwymlJgtxb8WRueGG0tznCDM9AvD8+T6Klzc7sqCPfB
         TfcA==
X-Gm-Message-State: AOJu0Yz/HAbFZ5PmSqppqGUv8TJhARC35OB158Ju45yCTFjmO1gewDcZ
	Tf8v0w9Y/09erBohW5EBwHlqVX1Q2/HzuTWcRu7t2QnRAB0tnYnWd7UMYqkiwYKXx+8kkXuaL6b
	EaFsNEQfWt9vxISsNEJeLmepQRi9iS7rNQLU=
X-Google-Smtp-Source: AGHT+IGMweFqUfSQFx4Rn/VwMLx4DBC3aN11TM9x7TG4x/7PmKmWwITgeAeYAbHdsQbDdSbc2IjX8bNkQC156WSHDAU=
X-Received: by 2002:a17:906:4806:b0:a44:51c1:733c with SMTP id
 w6-20020a170906480600b00a4451c1733cmr7399315ejq.39.1709617415961; Mon, 04 Mar
 2024 21:43:35 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 4 Mar 2024 22:43:25 -0700
Message-ID: <CAK5yBb8zw-FudpCFZ4LZB9Gp4-gi2QeU0K+LOPYGr6MqdTBPHQ@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW09
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c7c2110612e3527d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Mar 2024 05:43:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62680

--000000000000c7c2110612e3527d
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW09 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 15415 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15415>
Compiler
option "-fzero-call-used-regs=used" fails for openssh-9.6p1 during linking
stage on qemuppc64 randy.macleod@windriver.com william.lyu@windriver.com
0.0.0 5.0 M4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000c7c2110612e3527d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW09 are li=
sted below: <br></span><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><table cellspac=
ing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-layout:=
fixed;font-size:11pt;font-family:Calibri;width:0px;border-collapse:collapse=
;border:none"><colgroup><col width=3D"63"><col width=3D"43"><col width=3D"5=
43"><col width=3D"235"><col width=3D"242"><col width=3D"53"><col width=3D"5=
3"></colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px soli=
d rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgrou=
nd-color:rgb(219,229,241);font-weight:bold">Priority</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold">Bug ID</td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;background-color:rgb(219,229,241);font-weight:bold">Short Description</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Change=
r</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0=
,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">O=
wner</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold=
">Was</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bol=
d">Became</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold">Medium+=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;=
text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D15415" target=3D"_blank">15415</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">Compiler option &quot;-fzero-call-used-regs=3Dused&qu=
ot; fails for openssh-9.6p1 during linking stage on qemuppc64</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@=
windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:william.lyu@=
windriver.com">william.lyu@windriver.com</a></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">0.0=
.0</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom">5.0 M4</td></tr></tbody></table><p class=3D"M=
soNormal" style=3D"background-image:initial;background-position:initial;bac=
kground-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,san=
s-serif">Thanks,<span></span></span></p>

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

--000000000000c7c2110612e3527d--

