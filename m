Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9CD7CFD2F6
	for <webhook@archiver.kernel.org>; Tue,  2 Dec 2025 16:02:15 +0000 (UTC)
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.660.1764691335523985998
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Dec 2025 08:02:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BDRIj4aN;
 spf=pass (domain: gmail.com, ip: 74.125.82.178, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-2a45877bd5eso8273455eec.0
        for <yocto@lists.yoctoproject.org>; Tue, 02 Dec 2025 08:02:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764691335; x=1765296135; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3fFWZ8q3jVuGZ3vIWhhYcbnTLj8zivehXPigaH3tA+U=;
        b=BDRIj4aNtEAz+atbgL5tH9HOCGb6qcZMxjqAxhpYAvnfF91pWwYzDLZzkLNUmQqgmR
         xupAQShEdKBIvcFF3kX/o/IIcLOeDTGpepnrRX/TmG/wLxQAO6xetKjl8v1O8T61qDSh
         2GiwriCBqDtk8s2zw+b/ssHb0radeApIYPgNZaXm86EkLKi0ZcPH9M9DEnxKm3Glz/Ot
         hUJhNmWgloyTBfffWPuBBUj9gxibZqhXBa2jyCSULbbF9sCXDMjrPn6PjG9qUUJQXbsS
         UEu/g6NcxDx7L68lfBCCmL0x20xw+e3nzgUrsg30fahXryoXtmcgsVZblnADOQDspacL
         8iNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764691335; x=1765296135;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3fFWZ8q3jVuGZ3vIWhhYcbnTLj8zivehXPigaH3tA+U=;
        b=PjVEIwhp9ot9Wyh50IBJpMXsqJyTR9D8KZyzrE9ZAntORhPOGUY/sUum8X7g/0h3U6
         VY8WTWIHyUgK1d3/J8cAHY/u/7KXqPsKebhbrzPAPBOeUFZHg46CV31W4whFpjZCAtz5
         ofkWY7++3YmKj2mXdx75zEr7FwLxdmMTpyAHsteDYVS4pl7RWzYfr1+qYKG7HyrrIZBs
         /wGjwU2HYvuVupnNgNUBnOTpPOMMLo7GE3nfej1vFpcr9IMo90zTtKJEhX+AemhzS/x/
         ZnAiYhaQ6rUQc6SB1K7HiQ6XunI6g3HGDIRiGwjJ77/XGckrUfwnPmqJ/vxAx2MFVoGv
         EhKw==
X-Gm-Message-State: AOJu0YxFDMYnCFnB8WgbE+rJ9u9ZIYPAuSMLwbX8nygucemWQg85Q+Ya
	0wJRqu6+4IDgTXRYOy4p6itmI8FMGFwL2OrEGtPSOzQyboNFAWO4Rh/CxKclh1A+8XB1fUkejaw
	tCy4E1LTUo6bXrjQZBsDV+Fnvjb0FaZ9cVHW/
X-Gm-Gg: ASbGncuhhGcv/Llbsk2JTZhu5OTd4km3T4BrntFDSJ1/zIFxZK2yuOW9Mdc2zQRwBU6
	exXZZd8uaQpx3zA/odxgeXG3oo1bStj7RTwtXcFWSVzVlq+LFeCi7+x2yRxN5XuzJyEOTCI3pZO
	7PW8OkoRUWSLfGGJGV70KF3OfhkK/QRftxFf73p+s9Rk+dSwDLQ09P1m2LU73cBDJYwDY7LFtOE
	g7nOsB2S7B47v893T0Adk9BLfV9aq5QHl8g2OtmYonotn8er4MCSc8u6WQqQYyj1Q8z3LCqKI2L
	GYgWF0yEWMcByIhUG7+HkqqrxVUX+s+wSu2kZJm8HZ9Xwf+qFa6kEuYD41jXJ+rfyAIbPKqfDSi
	KrN0+Dtt3yduLnLORlLfstXoCoQ==
X-Google-Smtp-Source: AGHT+IEbuRmT8HgCw56kN/xNpTjhtKFN+UWIHvQv3n4zmPW80behbs5V8WkChhDxCAUY4qQy7wt/AwPxDs3Pz/fBt7E=
X-Received: by 2002:a05:7300:ea14:b0:2a6:9fb5:f78c with SMTP id
 5a478bee46e88-2ab7e661e6emr1457788eec.4.1764691332991; Tue, 02 Dec 2025
 08:02:12 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 2 Dec 2025 09:02:01 -0700
X-Gm-Features: AWmQ_blLFRwcHEUPPwqGcuMnEc-k0rFmCtEerroDbU-T_N81cy8xC0AhLAyHZyE
Message-ID: <CAK5yBb8dfrL74UeeggkBpgNgCTO-edM4r_qAZb3kn0jFVYHeEA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW48!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000a8d8c0644fa3862"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Dec 2025 16:02:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66084

--0000000000000a8d8c0644fa3862
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
mhalstead@linuxfoundation.org 2
ross.burton@arm.com 1
richard.purdie@linuxfoundation.org 1
randy.macleod@windriver.com 1
Grand Total 5

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000000a8d8c0644fa3862
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
lign:bottom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@lin=
uxfoundation.org</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ros=
s.burton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoun=
dation.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"m=
ailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bott=
om;background-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-a=
lign:right">5</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"back=
ground-image:initial;background-position:initial;background-repeat:initial"=
><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span><=
/span></span></p>

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

--0000000000000a8d8c0644fa3862--

