Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48B8D0EE08
	for <webhook@archiver.kernel.org>; Tue, 25 Nov 2025 15:49:58 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.503.1764085791061248895
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Nov 2025 07:49:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CiUB0kTw;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-bc8198fbaf8so5099126a12.1
        for <yocto@lists.yoctoproject.org>; Tue, 25 Nov 2025 07:49:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764085790; x=1764690590; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ezQKo+Uh7xHFVo3pe1/qMRhXjUDV7BPy3JYx8yfYcW0=;
        b=CiUB0kTwVtZ7VTP8TL9r7xUymCuxlz+NaRdlgqIgHyk6TklrHxkTmiTUaCNsL0r4Q/
         VbGlqXiK81jLfVsoca6cH4g/bjVJqOT/lgTZ2NpCUfz2NnAOc7lRuWjzydnm29gQOJ/h
         jg4ZLXZbxGkikXo5PenBdbYJ8FuCgfThG3/syfW4Ys6DsXn1TRjpsE9tJPzADqW2nDAq
         iBzk1GEbgmupjch44Fo99fg2TTvyNbcIXt9BuM1fYZzBtk9oQUQAbrC9L5G8HR5xOqzH
         aClTJ4JUvkYey8BK+s9BeGiup58fovXrskKC3kORheE52Yq9YNg0fd9KbiF296pqm8Dt
         KpmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764085790; x=1764690590;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ezQKo+Uh7xHFVo3pe1/qMRhXjUDV7BPy3JYx8yfYcW0=;
        b=H5fA4q+P0HYQgwDPaZT2sAQptYvp+v07bs5w9tTs5o7FCVWlXI3Twuj0tOKqo+kHHX
         bjDXJvjc8a6UHah8UlgURgUoN/1LXrpcOCRYpHtHw5m6hD9po8B7Y12hv7VMX0xZtks1
         5KJUXr7Mn2xKiEcEBBegdEXn7dMAAAp4ByTCdccojnBbQ0JvSk8jELT4MTIA+Kxx5DTi
         iE2jFlfV9y6zeUL0KWOEafQz1bvO2J11OMBEHzYo1byCMQUIynych0s3bMOO5sZ8Yzeo
         6Frof0l+cq9E8TiUlo6SWZR3I2GTHHoYfTTkQkAt8bMpBQLzi3GbB2MQrdFj6abjxU4I
         pWLQ==
X-Gm-Message-State: AOJu0Yxu8WG/wb5+9GOGdQNlH1wjosX2nhXAlVvQX0FPiicWrPwsEev8
	OsmDAkyyU5blNMTQPco/t5iD2zm0IMpaZOAuTMyYlygE21t5/RPjhUUwUTKA1yhQWFeKq5sALjm
	CXsgt4OkYwmyh1gFsYTbOtqQcHm85cdU0kB4W
X-Gm-Gg: ASbGncsba0/04XZgrXdrEogA5gQQJiPqjzxqQna1JCLJl4UHClZyZ/uwilSBF5ntFa/
	5qx/+hEtGDlykQONqy5bq6TUN1Ul5YhiTxWplHHZCkydb+vADMqOJ9N7CT8v/nMadfkSnPSkscc
	wBDfaUVLIFBV+mcoSJr/Blv210cn7RTlWvbe5YhDMSf5v+PNtjA1iaQ3q74uSYYoQ5cm2WhkLaq
	atsH2LM8Kmi8KTDsvcI9hpCd5kA6X+gfdWftAsnsy05+Gn+rSjwsYunQTCgFptS16P9t1DOxn4j
	YXtvMw6zc74mZu6qYzcMG4tnHQ6xMzHXpC225W2E/vsK1fWkmN1oKN2xwMPLsG3cULGlRJElMGk
	F
X-Google-Smtp-Source: AGHT+IF7g5ITJ2GoOdPPUNl4CBDZVE0ppqiQ5K1QKdaTDJDWMGyEWihjqSqoRdPj4EeWFRkT9yVH/IQ/4PqMU2yKnhY=
X-Received: by 2002:a05:693c:6085:b0:2a4:4eca:8406 with SMTP id
 5a478bee46e88-2a7192dee9bmr7405383eec.38.1764085790121; Tue, 25 Nov 2025
 07:49:50 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 25 Nov 2025 08:49:38 -0700
X-Gm-Features: AWmQ_bnssm0tnMRwflDd68ScVVh_C602mV2SfKHPs5xSk_n_8M0UhEvFhxoFbNA
Message-ID: <CAK5yBb9SzpFsaChRzFaHBOYVD=G+fMx-BNcDvw+zViPtJq244w@mail.gmail.com>
Subject: Enhancements/Bugs closed WW47!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000dfa1a006446d3a4d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Nov 2025 15:49:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66062

--000000000000dfa1a006446d3a4d
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 1
richard.purdie@linuxfoundation.org 1
Qi.Chen@windriver.com 1
alex.kanavin@gmail.com 1
Grand Total 4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000dfa1a006446d3a4d
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
 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.=
purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:Qi.Chen@windri=
ver.com">Qi.Chen@windriver.com</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:rig=
ht">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow=
:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:alex.kanav=
in@gmail.com">alex.kanavin@gmail.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(21=
9,229,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgrou=
nd-color:rgb(219,229,241);font-weight:bold;text-align:right">4</td></tr></t=
body></table><p class=3D"MsoNormal" style=3D"background-image:initial;backg=
round-position:initial;background-repeat:initial"><span style=3D"font-size:=
12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000dfa1a006446d3a4d--

