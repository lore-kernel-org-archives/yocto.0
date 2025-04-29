Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FC6AC369CB
	for <webhook@archiver.kernel.org>; Tue, 29 Apr 2025 04:01:23 +0000 (UTC)
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
 by mx.groups.io with SMTP id smtpd.web11.7261.1745899276555818413
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Apr 2025 21:01:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=b2h6xSuT;
 spf=pass (domain: gmail.com, ip: 209.85.160.47, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-2d0364e9231so1478301fac.1
        for <yocto@lists.yoctoproject.org>; Mon, 28 Apr 2025 21:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745899275; x=1746504075; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3muW6262EDHz2UGqUUw9GMuwun2rZG202eYNtIs2FSM=;
        b=b2h6xSuT7YCW9laUNxZnTSkbDI/3S4lcPJk0zBqqNZgXvqQri45iEAvG4MN9td3dt+
         rqzSZ3fMZqyPQp4Q5AMFxM9GSFcqtq0aLL5lv/ON3yMK/31TtyJcVSGlgTzKvH9pdzqu
         tHRhKxrR3t3TkRKfZoo80KOVWFyCRGYdfd6Azpou/bIRJeIF10jDkjAiMa+AUyMymTkp
         GtPe9D8eFN8nN3PIhjw8J798HjW/S8q7dpaBL7jmiV7aPrT+Z9BL69u9U9cCYkeFd+Vf
         KU4uRAK6Z0eiUB9O4WElhxsr27RLPtc2SdWdHQHN/Ko66CxtQPbVLQzeMtlgE+RuEN9m
         7bKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745899275; x=1746504075;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3muW6262EDHz2UGqUUw9GMuwun2rZG202eYNtIs2FSM=;
        b=jW/3X5c6ImCjABAkBuyiOq2bt0Las4T84lk2bfQ8kkfFP3QpkKX2ijQm6XKf4KmcKb
         ZVZKS9xz+Yl5WbFfkoIlp3kCC4IBgeRQ6QWnxLLUprX+EgFk6PVPJrnq+Qa5xYkl3HdT
         HjjDMlRysCCsSyphV0llB6MAMR4faEgUbD+Ih6DMUlDreroTGy8GYyY3iWMk0xYkVVf8
         ep4kvSm2JPXX/MxzrRhJygu1M3fzDjHipLHV2tmIQi7ZHB9zEMPVEXnBfloCV1Vtsp1a
         2zihu46A/i2R6JrEhGTl4/tG7X6Wh+skzRVszL+jHt7aSuJHxbEm83OL3qeRmFcxMI8L
         pDxw==
X-Gm-Message-State: AOJu0Yx9MxJO5LykCEJ+kqLv7N2jMpzoCMAqdVPGoX+zEk9i9BTUav8P
	qSkjrhYNtxK0GcQ8kEg9mn6Efqu/mz4P30vOFLHh8rFBgC7JZOoMKT/lKpk5iBwssenM1WJZHmh
	JrBhtWHhNC9v0b2cA2Gc4gXrXDfVhrXBI
X-Gm-Gg: ASbGncvBP4JcLL8YX3yubpX6Os1QGkaR647Rh+kTThRurOcX5Z4XHg4YMy/Nkyt0CTi
	ipQXsJuL6oJANwOF080S/PHxkbGoZT0EYmV8zDUPPhebwxOG6/wqrV8VFDS/b0SV+1iqjzXcWwk
	dw4X6A4RBRCz1wTS940WHAouEwQz6oQNn3P/QFwdvB8bTMCm7Cd6KprIG4
X-Google-Smtp-Source: AGHT+IH7Wuf90/sOjhOsLj/fNK0HSzyYV6eSQvjuqn4mr9YZt1u5ro/pYzh9LxfBnc+UEdqd1lnKHjOcBI4gpPIS5rQ=
X-Received: by 2002:a05:6870:70a6:b0:2d4:ce45:6989 with SMTP id
 586e51a60fabf-2da48415037mr736184fac.3.1745899274995; Mon, 28 Apr 2025
 21:01:14 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 28 Apr 2025 21:01:02 -0700
X-Gm-Features: ATxdqUE2D5vCx868ycH1oSkxvRAJNx6De_VK6R9lRDTReSwSMz4pwKeSmkt2rUU
Message-ID: <CAK5yBb99nz2teHa7GMLTZhDWYhTW6JK-rEDgjFuPE3OmoKX7=g@mail.gmail.com>
Subject: Enhancements/Bugs closed WW17!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000198a300633e2da04"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Apr 2025 04:01:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65262

--000000000000198a300633e2da04
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
twoerner@gmail.com 2
ross.burton@arm.com 2
richard.purdie@linuxfoundation.org 1
mingli.yu@windriver.com 1
Grand Total 6

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000198a300633e2da04
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
lign:bottom"><a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;text-align:right">2</td></tr><tr style=3D"height:2=
0px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;text-align:right">2</td></tr><tr style=3D"height:2=
0px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.pu=
rdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1<=
/td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mingli.yu@windri=
ver.com">mingli.yu@windriver.com</a></td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:r=
ight">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,22=
9,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-c=
olor:rgb(219,229,241);font-weight:bold;text-align:right">6</td></tr></tbody=
></table><p class=3D"MsoNormal" style=3D"background-image:initial;backgroun=
d-position:initial;background-repeat:initial"><span style=3D"font-size:12pt=
;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000198a300633e2da04--

