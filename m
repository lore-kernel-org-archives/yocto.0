Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 791CEC25B78
	for <webhook@archiver.kernel.org>; Tue, 28 May 2024 05:39:10 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web10.15413.1716874749663242929
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 May 2024 22:39:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kqBSQzcD;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-578517c7ae9so415967a12.3
        for <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 22:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716874748; x=1717479548; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ifkIa9F7YvGhBJqiTMPDUFBy51gy5gbfMgZw9dN7X7o=;
        b=kqBSQzcDd5AxcJp/H1nbJhT4XVJ8IDKV0QNdFHfoLDyr++oJuozOPrmG2BqukiyAgp
         Vd/w2kLlZmMraVhKyo77IUx1Da5K7IGMVSI2e8uSNx6zItM8VOgN51099Lju6lB+ytAc
         lHh830yEqB/vxZW/ZB7/Z+yhqfNKL+7/WgptitmnjV3KXJkzWJOqO/QdkNp1S1zk8+Dy
         IsauencZeAi6mzPjcaKOun/NxsPXVs5l59e3wLHCCnrBguVhogLczmuhnGg1GdMk9Tuv
         HpWnmDQUijNLKx9TjVh1tqkEgtpQ1pSjRWfyNM2qZAsW6Ezvf5/BUwJWhRowbVJppNE4
         AP+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716874748; x=1717479548;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ifkIa9F7YvGhBJqiTMPDUFBy51gy5gbfMgZw9dN7X7o=;
        b=o3yZVDE1r+kEN51bjOoUFYyQtoQhc4Z7xyZjNzzeul5AGWBA/OLH0c0/GS1CJAHLkt
         bvqRuLXjw1ktE3Qjb4oTZNJEvOKu7lBtdNtz9wA6e8vcneIjU7rRqcutfaq9DB251vQM
         0EzmHNMWfnjl2X4+5a8shktlDzz+clCTQXaeU0rm0Cm4shUgsbU4xVuIJoFiYCMjptaG
         ukvl5+ytnJACFM0q9YTVRivMmpgs1xbcVUi3wmBQBga1pNtz1uFfp08QyjUzZw/F0NLb
         MucUlrYP8OOjST9dglZw6OVyBFDR+1w/AEHn9PwUspgo+l8MABr3kav4TLSelKj8SUdB
         oDCA==
X-Gm-Message-State: AOJu0YyOAuBnk7oTSCJjLyfmz5M2m+/xnZVgTfdz/AkSxm4w9n9IVaAs
	6ASnxFKuY29wxxecHhyFlQn7NcI/Vr4xCOWjDt+PzTzr2gsFaKiz/9KiCh+YWFqskXdFozrDcB9
	P3fZQCZeVQPt/2uBwxMNr0OQuBaWpuCuA
X-Google-Smtp-Source: AGHT+IFIDn8Kapy7AvPRICExf8FBu0BKNCqiNKGJRXZunKRa6oJ7yUMwWqTFrpGHigfsTmioVmgeluSqpPwtyEQQbLM=
X-Received: by 2002:a17:906:30cd:b0:a59:c319:f1e3 with SMTP id
 a640c23a62f3a-a62641aa1dbmr700334066b.12.1716874747671; Mon, 27 May 2024
 22:39:07 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 27 May 2024 22:38:57 -0700
Message-ID: <CAK5yBb-4a1iCr9ZoBQho0JbJYaS5YO_5anhagk6Mw9=bbXpHkA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW21!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000075798f06197d0dda"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 May 2024 05:39:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63213

--00000000000075798f06197d0dda
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 4
thomas.perrot@bootlin.com 1
michael.opdenacker@bootlin.com 1
Grand Total 6

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000075798f06197d0dda
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
"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;text-align:right">4</td></tr><tr style=3D"h=
eight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:thomas.perrot@bootlin.com">thomas.perro=
t@bootlin.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><t=
r style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:michael.opdenacker@bootlin.=
com">michael.opdenacker@bootlin.com</a></td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-alig=
n:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219=
,229,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgroun=
d-color:rgb(219,229,241);font-weight:bold;text-align:right">6</td></tr></tb=
ody></table><p class=3D"MsoNormal" style=3D"background-image:initial;backgr=
ound-position:initial;background-repeat:initial"><span style=3D"font-size:1=
2pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--00000000000075798f06197d0dda--

