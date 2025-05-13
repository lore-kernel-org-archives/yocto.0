Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72FFDC3ABC3
	for <webhook@archiver.kernel.org>; Tue, 13 May 2025 06:33:20 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web10.69836.1747117995701882061
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 May 2025 23:33:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KvQ86OAZ;
 spf=pass (domain: gmail.com, ip: 209.85.210.176, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7427a4def77so599464b3a.0
        for <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 23:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747117995; x=1747722795; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+AFwvZhxBa8jn4BlYpOLDhAJFJhPXu51s4r31+ABiAM=;
        b=KvQ86OAZboT9JGUb4Ml3bj6avmKQSIdELSHAkWgnrjSSbein/WBQsWkdnRx1IDWlkU
         cSsDcvlZl+AvGnRz1MaJdt2pfLaixx0W3k5iIFDIvUyyu0egDh6694OEflyJSordhWnb
         Rfx+gnRCqB5Z5Ut/89I1MBZSQo4G5EuX1NoOBXWvA9qHh71bU69fcgNJuwdPud74dIMY
         KYl0anAxnUL08JHkSI5tVru0tXUcb4ex1GSlhBsNr8M+XaOlOtWPqGVcRcKGjCGnGFDp
         rdVi86jRieh+gMLn8v2F0r+kddNxLx7lE3KsuFxZ7P0HQuvM44vyXODo/xCHFAz5I64o
         2/QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747117995; x=1747722795;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+AFwvZhxBa8jn4BlYpOLDhAJFJhPXu51s4r31+ABiAM=;
        b=aigmane/eAAAaLm8cLu7fzK+azstIC9OjJGwzfu3Cia6Yk6O1JoRx013fBFPSTAp+Z
         bV6HJ2R0pWVWp8P4xHbuuqo1sRdoXVu0Qdm276YKCvS/blbtPRi1R2UzcHALlD1QJUOn
         WrtnLtFK1MzX+Dpi0MRqTvP/eMpYGf8e5vV32LjxWq3eKACo6q/QWOEBLG7xglfaBsJP
         TXg9461yKp8r0/XcQwO3s5DRuz6EuFS9SShhlqItGTUibKPs532sxUGVlfO1G2cShgYG
         gchKa+UV7VaryhKDbBS2fadSKSuWzYQK4icXdgLEXU2CjKAAd9K/cxUvVIestSNrOLnq
         gatw==
X-Gm-Message-State: AOJu0YyEai+6OJOeoeCFefvtMELyfCsDhtRYniSwPedCDn6sN0fGl5lJ
	cxcwRUghXXgehj5vnPRyodkyUtZ2JcaY5sIRt8nvg5y74W/qJP+wAdJb7N3YdS1dTZ0x6YmjbTe
	qlq89HobeHlfi7gk6MkIwDnjhDHbIq+5K
X-Gm-Gg: ASbGncsJ5IDDgzkb1WT257FMYp58QdWYwwC7ZEMA5ElQ3cAJDneHJTBlzuQCzCxgsK8
	c/RA7AeabencQNG1GgedIZ5HKyqYHj3yr0JkivwNj8RcFZpnriHKUIhXnIMqaX6+z+ZrW6YYTPj
	S/I2nOHUnwvDoIu3FVhU/fATJ8qxT7yPQ5wXNGOS5mll0PS8GaLdep6DlHeAn2BAWlsyk=
X-Google-Smtp-Source: AGHT+IE/LenwGfSZSyLEPbKgKWbwLjZ41juEneLFStuVckG4vA4nhyuTt0j83964g9UaK12AyPK7e63rSTk3IN760E4=
X-Received: by 2002:a17:902:f545:b0:22e:627f:ebc9 with SMTP id
 d9443c01a7336-22fc8b0fad4mr205594955ad.3.1747117984847; Mon, 12 May 2025
 23:33:04 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 12 May 2025 23:32:54 -0700
X-Gm-Features: AX0GCFtucaZbXDWezb-qe5VJNt75Bb6QQiOvZ_Bp0lUgHM2V0C-Uh1r5xv2q_OY
Message-ID: <CAK5yBb_OiFMw82QsmQ_RHGts4g1UXOL2LuQ35GVLAOMKEEoBRQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW19!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000de1f660634fe9a0b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 May 2025 06:33:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65322

--000000000000de1f660634fe9a0b
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 1
randy.macleod@windriver.com 1
Grand Total 2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000de1f660634fe9a0b
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
);font-weight:bold;text-align:right">2</td></tr></tbody></table><p class=3D=
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

--000000000000de1f660634fe9a0b--

