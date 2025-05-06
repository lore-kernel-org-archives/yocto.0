Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF09C3ABAC
	for <webhook@archiver.kernel.org>; Tue,  6 May 2025 05:43:52 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web10.69692.1746510231479934026
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 May 2025 22:43:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=c048n2Yp;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-30a89c31ae7so382952a91.2
        for <yocto@lists.yoctoproject.org>; Mon, 05 May 2025 22:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746510230; x=1747115030; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=P1DCc0m6haEY3rtds4O3EgAVt/1eroVbNjhoTx3i8ik=;
        b=c048n2YpLyGqeo+1VAtwU12muOCZYxg2sinXZDPQqZP5hrr8EI8Ok3xFFC1kUHQ0Vg
         ePTj+nGJyGAkHRlLb+nm5LXPQk3J+iLxk4kYLJEZyeUnWSOghod/tVFH2/0gL7Lq9B4R
         ix4h9WNM7Mj9eiP6TVYa+2buOw0TRFUUs+f2XmWCZVv7ReAJPz+PJQDVv9qjMmTRoYJC
         VXrFboEhq8qNVV43yqKWUvna64ov1qfrs7nUicEWOAHwVYWGMovpocNDne3ehpbC2NzN
         /OhwPg5Fk2MJyrruibi38oJp0oB5AoS1QgUvLvONhQpUFMWsPz0Nz79ubes6SGcZiiL4
         GN6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746510230; x=1747115030;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P1DCc0m6haEY3rtds4O3EgAVt/1eroVbNjhoTx3i8ik=;
        b=JFsZzT6xvcJQJBwPQyQw5ucAo4YQWuRWq7CKz7Nj/gX65DGfpcCxRIHH4YKvJuuluU
         gLf4S0XZL/5Y51Q/d8C16enB7BCzqYqRq8FrwWKVzRKAV1KQ5vrTmZI9e5jf/+X0oJnx
         DJ94yN0Nmj2MTwk4DwccwRNNTR6vdTih0AWcYXDegYYK6jCXdNCC5lejmocJZjbcdQvQ
         cKmVg0//PJg8etz6KNZHqtOsk2SwN0gNghP+yC3ZawfwR9/CEvL9oQdIO2gYEmWkZFB3
         LhcNv3kDUGzLHMb6rJXlB5Oggk9gG54lGghM3VD6l+NkRfzayorOa53RR0PqKxu+34SQ
         g8kQ==
X-Gm-Message-State: AOJu0YwJscAoJnKJ0TEcaEpYgFRiDW9wUFKbPMLgRMFh4zPMdRp2LH+w
	zMln+ghvCUyg6NDy5wNad/oOtu9J3/t8EibVcW1ugc1+BlJVvab1/2RMskPfD1tuxw9R8EVfu32
	lrSCwE3SeEP+n9zIxgxRo4I4ogUyJHe7c
X-Gm-Gg: ASbGncu1euvNGD1A8CQaeSZeUdY9okeGjz15Vz5oK3jDNJJaZNfv53Cv65uHTyIKfkW
	EGsY3sKtOJh5rQbW4o96V99wiynoAuLjiz5EGz5K9OvbMNMmZtr7U1ju1X54LoaRO52GYwZKUpz
	xmPHMV1k0Rth9MaQdbLemhlJgtcgqEd3P2pXp1+24/Po2u9oIFDChzVrM=
X-Google-Smtp-Source: AGHT+IF+kwPAtvzQIzK/MVDaZKdMhUFjt9zhBxBPXhMcii9HdB3nOlcdv7jjjI6FxqlIWviybra/56ha1ZTiTL0/oAM=
X-Received: by 2002:a17:90b:2e41:b0:30a:4c44:cc05 with SMTP id
 98e67ed59e1d1-30a6198d00amr16257625a91.10.1746510230562; Mon, 05 May 2025
 22:43:50 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 5 May 2025 22:43:40 -0700
X-Gm-Features: ATxdqUGGk9tsTyOfzUgGBIf2oT5IendHF32e8xKI9_XodyA1KioLlh5A385ZYyI
Message-ID: <CAK5yBb_tYdcqP1TyKZhVyDg09XHDgM1=K4_hDowtJ8bg3Zc+dw@mail.gmail.com>
Subject: Enhancements/Bugs closed WW18!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e3af600634711975"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 May 2025 05:43:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65284

--000000000000e3af600634711975
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
twoerner@gmail.com 1
randy.macleod@windriver.com 1
Grand Total 2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000e3af600634711975
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
px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:2=
0px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@win=
driver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr s=
tyle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px =
3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bol=
d">Grand Total</td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);=
font-weight:bold;text-align:right">2</td></tr></tbody></table><p class=3D"M=
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

--000000000000e3af600634711975--

