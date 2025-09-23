Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 417ABCAC5A5
	for <webhook@archiver.kernel.org>; Tue, 23 Sep 2025 04:00:28 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web10.8909.1758600027358960106
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Sep 2025 21:00:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=E4tmYmeg;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b55517e74e3so1819931a12.2
        for <yocto@lists.yoctoproject.org>; Mon, 22 Sep 2025 21:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758600026; x=1759204826; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cmPiIwPY9/bw/3yEdZwl5ACMvRr/Mt8wZFq43P548gg=;
        b=E4tmYmega17/CuIcgMuffY0mX4SCvC7NSofqcLRf/Vr4eLkTesKnB6EeJIOIChFzeW
         pnyDKbE0h5xSV9IGLoVgKmkKBBGs/ypyxJWQISOY2YvpyymIwUkylbgk95CKPkhcZoqi
         6GF58H/6HgbwtD50ia8UbhMFx253zUj8oSwWMGX47tqPW/cEBsrqvzsi3tuzOJ7AwrlD
         QGXqTQDZ51W/y7SVWZllti+QMSngLjeUZbUY5Wuq62iM3VnEQ7KXxpbmPY1HKoceVdeg
         TAUPHEFg7CMRwxy7jfoJy5nYXs+VLWGVqRVUNS13UBcptOhkT5ZvvY5ev+JF5OLyUrDL
         t7Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758600026; x=1759204826;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cmPiIwPY9/bw/3yEdZwl5ACMvRr/Mt8wZFq43P548gg=;
        b=MRjFe47NGJSkPIq3mysrA1bgjshhd9ogYByO79rlUcAQP2gtucOUSBiSNau69Gx+9J
         sjjnAMv5t5nw4eldHnL0EL4AgYl0xLx4wwNjbAB0iAqF7S2VxxDWwMU07Z2F7VHP+LlE
         pqZmjZDcGAB80MQ+WXZjfS7ClXfKT579zecYCJphKfw/yVbSAl/tfqLqrzsFaEWmrkKD
         s9u5A8W+l29iRNfH9l0ErEof8F9H++yalWGgqEb4BWSCTHLdg1p7tTyWGvB/dQqBv+xA
         TysZzDYe5QpiA8OLQMCPcoXGXQa+x7YGSF3fFn17gXB4E9BK93E8FnvXCRcTi7ofWQ+m
         zgUw==
X-Gm-Message-State: AOJu0YxVSlex1OpwB8yFIjvQQLtQ51fQMjugMFK20Lg1fti2uXgcTlG2
	4EVaLiVXQAaGl+hRxk/qmHEC70UoVtW+Mak0z0+CNLNcEKZGtThsrmZgKVZEfi0Pe1FP9aV/lQa
	mYBHeP28TgOvSyrluMDL/ek4eHd9+qj7G4IKi
X-Gm-Gg: ASbGncujMedl0dW3/Tc6Il13Y4vKWVvcojaCchUwmgMFr+cyyy4bwDdoRcHQ0c/TaaG
	XRkdLUAC6GmYXG4bAkEn7IbZkL0RUoFkmJ3oFSPUKaYmzid7DQsP/D6sLxmoDKiGKTP40ilyqjK
	6hZToTFEbfHXikbmmFwv+CSuEBYsHFjhneePDh4dILERcJ7Tj5DC+5cCWLBrkUYzhOSfEH50m8O
	WBJ3YgQMt33jM3sQnikOWGpAP/+tE5vhYaEaxOOHz6JZ1AGZmBKtbUXvuPOKIBnqnCeftag0YKD
	EjjwuJWX25HXA8etx24QYvLxk5fJye9iSBWRTg==
X-Google-Smtp-Source: AGHT+IFnwyVwrXZIqYc8iCAsehPFm39jqMRPK/QEV1oyelbe6yGxlsCO5SS0c8WGEfwZLJ17rhRDmA//4HggY0nHb1Q=
X-Received: by 2002:a17:902:e5d0:b0:268:db2:b78f with SMTP id
 d9443c01a7336-27cc5fcd4e4mr13966975ad.44.1758600026371; Mon, 22 Sep 2025
 21:00:26 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 22 Sep 2025 21:00:14 -0700
X-Gm-Features: AS18NWBweIbgpOgtGc9cfbXfVrVZR5bKIZik6IgBapaacy5iOMN18eXk-xnPMuo
Message-ID: <CAK5yBb_Yo4UA5fpvBNLoh61Y7cNKoVUQEXLMWDud5VQwEsm68Q@mail.gmail.com>
Subject: Enhancements/Bugs closed WW38!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000dfb7b9063f6ff968"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Sep 2025 04:00:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65866

--000000000000dfb7b9063f6ff968
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 1
Grand Total 1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000dfb7b9063f6ff968
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
dden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:b=
old">Grand Total</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241=
);font-weight:bold;text-align:right">1</td></tr></tbody></table><p class=3D=
"MsoNormal" style=3D"background-image:initial;background-position:initial;b=
ackground-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,s=
ans-serif">Thanks,<span></span></span></p>

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

--000000000000dfb7b9063f6ff968--

