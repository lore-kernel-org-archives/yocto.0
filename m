Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C71CCF9E0
	for <webhook@archiver.kernel.org>; Tue, 28 Oct 2025 05:12:35 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web10.4960.1761628346899998172
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Oct 2025 22:12:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ObCscCw1;
 spf=pass (domain: gmail.com, ip: 209.85.214.175, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-26e68904f0eso59522285ad.0
        for <yocto@lists.yoctoproject.org>; Mon, 27 Oct 2025 22:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761628346; x=1762233146; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Cdqfnr5FTdOSjQel96g9uCxTT7UEdeMBX8PEfpjcUpQ=;
        b=ObCscCw1UiEyvs7ad1JXH7lKWJ5yeqGb2TejxRCs2I+/W6AQcndBxrAGglwjrX14IT
         3Uw6H5oewG8oSsYrdlkucUqT52oV5pXKRSvGa7LSY5qgvog1hm+DQF2+COaGJA8uJVER
         I8LbEM6cSBgRSKF/h3Z2DqFoyPA/frVbivRk58dI4lsxCS0bWQyAc/XAJZnAbOuOIajt
         ajdg83jU0GjGP4OX05Djz2zTOlgzYFFGSj980muALd6Wsao9zE7z8S/463eKiDjoiEXC
         vusdI57W/nKFjrlsQFflGwA4+0KZRtUe1ch17xaLg0YjW5MgK/5eXZ7IaKMQTVpvyC1Z
         Hfvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761628346; x=1762233146;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cdqfnr5FTdOSjQel96g9uCxTT7UEdeMBX8PEfpjcUpQ=;
        b=o7iYy733h2972gd6i794Z41MjqUrh9mIagmFugBoqJMkoDLVhOihnD3xKCPeslooz2
         R6kT3uiOOGW2OejGvIAQwPwHnDhd0d/fEknFSYA24Gk/tT9oIkeUB9JxLdqBRUQmPRHF
         bncem2fmefwtxOxWOJk71mP7s8q7Fp64MIP1AO+r6aVrurcx/v4z1cgR1eqq75S40pyn
         emfS2ScAUwSmwdMYqj2/9BA5cWgJ9Fre5dhAKB5/YuRtk89RbACq3xOK9s1ya3KzwNw/
         DqvDxk83IBPpCyFkNBRkCbkhcyUKmJrlS2ca3IegP6CVppEzW3m10JUktVZlnte7tFXL
         8INg==
X-Gm-Message-State: AOJu0YzPSC4kmHPoZgBXmj+U7K7zAYOoBUs5AnOYAkQsvIqwMH+WvVEn
	PCNrWGuG3pCc9G5yRARxe0QvsNrOun/Bheq2m6U2WYJmEpBhnZJs9swKuV0wnhg7BfRGQ6+dZaK
	FD7A4NrdJdo+zHT/N0E87mrYwaNjXdqys+KZI
X-Gm-Gg: ASbGncsY0a3SPDmgsD6tusMZyAvihLnNUlf5sFkaZZ9W2YpNKTcucIapKFon3vM1PT/
	0O6O9hjd2Kf4sFDPZ/TvM4VS7YW7gMouaEJaqMMXbg3BjCngXOBV5/ov4ThW8FaCb7ke31gPvA1
	Kd+wjX145LLtXRmmaNfVqoi8nqtSiIdOHCl2nj3ewmLbQ3auAleYDbJHRCt3ff9U9EAfEuU/IGu
	SYThXFeKtruSMW1F1adNb4dUkQ/V8m93krc7yiNhg5PnDPIFCgA6ZhAQjovsxMQFnnXmofnVfI5
	WKwLCIUWwx7q3CjB8g==
X-Google-Smtp-Source: AGHT+IEOjQ4Epbe352GHSUUeKc/v+tqxnukXvpjZqpm4GiSdoGJA5GKqCpDV3ikANzgFx09df2m97BsGA/+nC4opeRI=
X-Received: by 2002:a17:902:ea08:b0:273:31fb:a872 with SMTP id
 d9443c01a7336-294cb37a912mr32616005ad.6.1761628345967; Mon, 27 Oct 2025
 22:12:25 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 27 Oct 2025 22:12:14 -0700
X-Gm-Features: AWmQ_bnSbjwfDb7AnQtFMq0S05fVw7S-nxiHEByayxP0t2KsS8kNFN40rGHlgzQ
Message-ID: <CAK5yBb_XQz6A2nOi3RJDtErNwmJG5SSDQWGf+iUu4h5FytLv=g@mail.gmail.com>
Subject: Enhancements/Bugs closed WW43!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c9a6070642310fa3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Oct 2025 05:12:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65972

--000000000000c9a6070642310fa3
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 6
tim.orling@konsulko.com 1
throos@amazon.de 1
mhalstead@linuxfoundation.org 1
Grand Total 9

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000c9a6070642310fa3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>The below were the owners of enhancements or bugs closed du=
ring the last week!<br></span></div><div dir=3D"ltr" class=3D"gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><t=
able cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"=
table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-coll=
apse:collapse;border:none"><colgroup><col width=3D"249"><col width=3D"42"><=
/colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-c=
olor:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-=
color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;text-align:right">6</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:throos@amazon.de">throos@amazon.de=
</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"he=
ight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead=
@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td>=
</tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-=
weight:bold">Grand Total</td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219=
,229,241);font-weight:bold;text-align:right">9</td></tr></tbody></table><p =
class=3D"MsoNormal" style=3D"background-image:initial;background-position:i=
nitial;background-repeat:initial"><span style=3D"font-size:12pt;font-family=
:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000c9a6070642310fa3--

