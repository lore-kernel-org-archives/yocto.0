Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F558C7EE30
	for <webhook@archiver.kernel.org>; Tue,  1 Jul 2025 06:00:30 +0000 (UTC)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
 by mx.groups.io with SMTP id smtpd.web10.3409.1751349625414036947
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jun 2025 23:00:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kI3truLh;
 spf=pass (domain: gmail.com, ip: 209.85.215.177, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b31f0ef5f7aso1870311a12.3
        for <yocto@lists.yoctoproject.org>; Mon, 30 Jun 2025 23:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751349624; x=1751954424; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pFbuhpCkrH2/n4BMSZgicnfUf7C3klGrGV+mLo9XH0o=;
        b=kI3truLhxq84m94QxIU/k+GB/yutw6SQt+FX3Jbay409PBZX5bv3sSXNt3BMgOHvP+
         YD39U53nYDULMQ5MUeSeXqVK9seZnTqg+wagYg8BHaArMSbBKs681MhOkUrI4cGEOJip
         euyGmqTk/olXbUuH9krmJeTKprpdstP8KA4g1Z2xWTtRh2bVDn8Fl9JyzqcGBQ+SQcvb
         BhPbknOvebVZe2iLSb6QP1PDoqfT15VHedsUO5QFKU2/bfkcfyoJtmZJ03XQdZnaD01Q
         5hO2EudvLLKVhY2AvZZzFoLcYqPmJ8tI0zkOPuHA4sdt3ZMn6eZw2N7GvEWR5c6HxKgb
         28bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751349624; x=1751954424;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pFbuhpCkrH2/n4BMSZgicnfUf7C3klGrGV+mLo9XH0o=;
        b=KLM9haPzCIh4oBFa8CyBTBK470qJdFDymzrryzyupkT+MkGHUffxvnrjORXVPSm434
         ETht7M7lM2FWHqkbdOi2/zYTghr8yjTD4dVEQk2jrARw02grRyEL2zzXtN2HhlTfu+jp
         nhmADed6nDSzY1cmZWNLdwSDUgumyUTek0+pHY4HSSO0lrDJALbjgtevbMIgVvzQC3kY
         Q2TpyDUAWFqeW1/VgwUSfJb9MmUkNvHfLDcdUiuE7KhmalMeOi1OQ4zHkiF4DD7zJMR5
         WM97MDKPdkccAVabbgLStOn8iKSpcEx72oh+3OxaQaRmPdXah4jyjZLo4B09GfUH9Zvl
         VzaQ==
X-Gm-Message-State: AOJu0YxJFHn6yOU+z7DMyG9UNIKBei2W6djMeQw9IcwhF8qJ4z7/K5Pr
	Je0QzHuudK832JuVBJyvXleOV5MU1sqdgQsZD6LDSrlRkQjkezb/sEJqd0vqYGVxAg5awVUveu7
	reD+0IsWNA6p3jn00z4V3SgtGkhdwBeXRUggC
X-Gm-Gg: ASbGncvNjQF9FZs1Zuqc5rIXlEh60kEFHNTHmw7OLErXuZAemnTrWD79m/ObDnDI4j2
	WJB0TiUOzb3e9rghr4dmx9PpKkYDTTTxTFW2XX1XMMRMr32LuWIT805Wg9EvreEAGecbSKL+wOV
	a40mGjGTgEMZ9GLo84CncllfiXx/hwy7JjfYTBCNZRMdrAfse6bXtf2spoBXgwtXHOBHuPGI6Ds
	o1ynw==
X-Google-Smtp-Source: AGHT+IERHOclrldT8HGa6PPz/Hx1SWrwAaYjtAact2oE93Bfz+nU7FCIR5xCR42o8fUsfFlivGEds6+8eEUOkkJMayc=
X-Received: by 2002:a17:90b:5348:b0:311:eb85:96ea with SMTP id
 98e67ed59e1d1-318c910a1e4mr24016843a91.9.1751349624474; Mon, 30 Jun 2025
 23:00:24 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 30 Jun 2025 23:00:13 -0700
X-Gm-Features: Ac12FXywLCaHFguAh5sAbcDKqZJ_HC-agPdsmHZbweD0i6GNKrMV29BPclr8Gqk
Message-ID: <CAK5yBb8-xSBf0P1ba-ODWaFyiSeaAQ9rQaWaQTHJrF1MbO1MDQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW26!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003e8fb20638d7dc8d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Jul 2025 06:00:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65573

--0000000000003e8fb20638d7dc8d
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 4
richard.purdie@linuxfoundation.org 2
Grand Total 6

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000003e8fb20638d7dc8d
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
lign:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@w=
indriver.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">4</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundati=
on.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">2</td></tr><tr style=3D"height:20px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:=
rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold;text-align:right">6</td></=
tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:initial=
;background-position:initial;background-repeat:initial"><span style=3D"font=
-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--0000000000003e8fb20638d7dc8d--

