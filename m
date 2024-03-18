Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AEEC54E58
	for <webhook@archiver.kernel.org>; Mon, 18 Mar 2024 23:56:54 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
 by mx.groups.io with SMTP id smtpd.web11.2914.1710806212397374238
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Mar 2024 16:56:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=aiZM44mO;
 spf=pass (domain: gmail.com, ip: 209.85.208.46, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-56b92a8f222so220556a12.2
        for <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 16:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710806210; x=1711411010; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cjIoIe5zefX/M3znPM5vMvImNyWQIq/110pwfHss7eA=;
        b=aiZM44mOQYDEuNX0J3J2n4mYomLPxb0YBlCTkX9wTcM6hsEWyQn3ORcTsMqNLff/rZ
         LK/r4Ek/VfuoDZ9SdAug9/RpMNLdU1/wUFlFGRzlAkY3Sj7jt2y7YCNvxRYiQgBr7o2o
         NtcQpi9tNutwf0vHUhdeguznnwJRJcRJT3uw9kyUAlx/6Y6fLrmdggOKwLOTzAKJLy6w
         baPw8qNVDvPv97g6lFYr6GfHR7nAKul5POKhDXB9sJi0QvOOclKmd046+eTULwp6SX31
         ylKgeotn81yovR7bbsQsFcKuw+50PBt1vFWHhAJtrES0eyqhOmcWru6c6FbZsfg6el7r
         peCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710806210; x=1711411010;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cjIoIe5zefX/M3znPM5vMvImNyWQIq/110pwfHss7eA=;
        b=Eg1HrM5oqlZvh2UC/kaIHoh0qJuRfuMT8PEt+BFR5QtItCy1byJIK200dWkm9jyay0
         3CZur4vuVOVtD61uqTfy7ocDFY8BWEdHSr8K7bEy0PJXQQlOJwyWiZzpfLqhUm8ve0xt
         FIZH44W9gD+slTuaZ95aRdOwQ+1RYCxGECO5ImfiKDen9EyW6qdMJXKjT/rLIotXfO+W
         WgM2aQftJqrBRcPD7dITyT60jgpmat6Mw29yVdCNt/ySI3nhNtdXxNWLozLNYDRfXGNY
         kHE4fAPRiW5jm3ePUPxB+Ig2cByNlSg00eYdfy9QnFOOL53IZy56rpDlu8cCTacuEpqs
         iaMw==
X-Gm-Message-State: AOJu0Yxmm4Nzquq7eyjhd3rrrNhATFPBwMMsgEXcyndyzYQExj0nUljX
	XtJWQJoOuM9mAGerbGfY9Bq/p2otNzEk33rXin9SE9JeWLhMj2C+9/uj/xGjacrfQfECwVysw9p
	U3sGHCweKEr361ZGVnXM7JCo+hfLXQa1Vnvs=
X-Google-Smtp-Source: AGHT+IERItSiv3wWxVdx543Dg51+gjdUp982qQwupHwLa2OaV+ssn5klDQ7uw20LrH7j6oTsANCUpDA9Fm22B/FevE4=
X-Received: by 2002:a17:906:7fc8:b0:a46:2760:3c9b with SMTP id
 r8-20020a1709067fc800b00a4627603c9bmr8060051ejs.34.1710806210266; Mon, 18 Mar
 2024 16:56:50 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 18 Mar 2024 16:56:40 -0700
Message-ID: <CAK5yBb8_R9VUkoeNiaL-16-Cf_7vgTEQTsMHwqf=t8AOZ+u4ZQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW11!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000714ddd0613f81cff"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 23:56:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62789

--000000000000714ddd0613f81cff
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 1
Grand Total 1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000714ddd0613f81cff
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
"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
;background-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-ali=
gn:right">1</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"backgr=
ound-image:initial;background-position:initial;background-repeat:initial"><=
span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></s=
pan></span></p>

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

--000000000000714ddd0613f81cff--

