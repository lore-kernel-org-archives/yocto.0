Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 180BDCEE334
	for <webhook@archiver.kernel.org>; Tue, 18 Nov 2025 16:10:20 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.711.1763482211744425354
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Nov 2025 08:10:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TQW2OFAU;
 spf=pass (domain: gmail.com, ip: 209.85.215.181, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-bb7799edea8so4754310a12.3
        for <yocto@lists.yoctoproject.org>; Tue, 18 Nov 2025 08:10:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763482211; x=1764087011; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rFt8ZVjNVuVQZqlrvwdHruneQ3tw4YwufZ5Q3W14lKA=;
        b=TQW2OFAU5b7EmiYlER8qdaQ2YBUT74w2cCXpvcGwXaglMOhfYEXJCenKeJoKthOSeJ
         InS7OzCGmJ+tbd6BcaY+aWpCaetBN2xe+ViSNpgwAn/4O0MpPjCxRoN9d0eIrwNrSOg6
         KDD8AoDuwi5tckCwqTA1TEqfwHvCL2fuvqRiSMGEW2aloI/HgzIgcxEF9tE9crqYN6Aq
         3sn3QvANu8WQQytcLzHkvIxfNbwKLxAu/tCeDhB/SiXYmA8vQ4LBLUvOgc71zW5/+b+3
         xAcCjIBiVBgQ3GWUHmr/yxs2KmTX+DSK6H70KpVge21VTttLAkcxDoQQxpS5AoyBHMxy
         G0cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763482211; x=1764087011;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rFt8ZVjNVuVQZqlrvwdHruneQ3tw4YwufZ5Q3W14lKA=;
        b=OC2u8dP3eVTxLlyFktGWAWQKIHefz69lJlRVilKK5peygOQVMu5gvG+77OIgeexDkZ
         UOeRyaOeVp4XG4jkablGSGX0WuClifSNtUV43cpqhFmLY2WNhSpysoMS1b83L+D+GhY7
         t4bsTpmHxEGYMcfdTocIAv+hwEUn4rgUH46EanNGpLX71Z7Dg0GKoj7PShTV/Aip1n0L
         SvwwYxnj/e43mpczv2ofRSyBWHRROROH3Dolli1UsKvcmTa3DAfYef/vjlfcRmZIcdJh
         hjXT8OkfUtiIEt1XgLn/HVyKLEnjypYuZF7XxTJ6zYaog+3CH/9baAhGMAwwgAIGVs3g
         LZjA==
X-Gm-Message-State: AOJu0Yz6LxcQr+xVWnr3FxkjwFhKAYYG9ZrQg38VhWdsporsF+HMWU6b
	hhtdOEVTIyQ4VbpPy/PHulZ0FM7rF43pI13Jdqp13I18GE7Dg6HcH+WIV3s1hYlMNnau4w5yTNG
	kZbkvcNi4m+X6uyb77cl1Z+/fxpKolWesK7Qq
X-Gm-Gg: ASbGncuo4nm5evFMmX80GJlWawvHkMyRvL6vO/WgU419GGu+OZW6zcTwewCMhRrWSJY
	sY04+h6Xyf2erXUcbMLRj4LjwZW4TwQ3vnkpJDbFMb6Emwuox2fOpG6x2XhND0KWxGQux/ftuJq
	NYkN92pSdPbQW2agwfSa835uqvgRzqEl9Gyx94/QB3wfuTkbA/wS+GRqOWmUZ7Jf2W6JTVk1RpG
	tQG2t9c0eAj/VK156BflxLg2IKIKqSs/FqSJsmwUEWOWpew7fat3s1/rTMVYrH/WHUZ6hM14H/w
	IWMMsLPWwveSUVBMnmBi3hLPsbonMgZVmtlPZRfffuEpH9y8JY4UKrJN32SGr/H2G9Cb0XUzSxR
	895/kvpkxCjo2QRxGMhrsJqL1wQ==
X-Google-Smtp-Source: AGHT+IGMk/cZgx7rtbsQ1+ItkVaasTxXx6pt5O10VQombJi3osFt/5nhvI8r9RPjygLheF6kBBMnaUJFgNtothkhmRw=
X-Received: by 2002:a05:7300:f78b:b0:2a4:3593:968a with SMTP id
 5a478bee46e88-2a4ab8a950bmr4527274eec.7.1763482210825; Tue, 18 Nov 2025
 08:10:10 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 18 Nov 2025 09:09:59 -0700
X-Gm-Features: AWmQ_bknsmTdCt1OfInrkvgd4m-mGSXICQ2_K0RjKU2E7cNU20gLfqmtyYvhZ20
Message-ID: <CAK5yBb98buCyrZDLKd0VnCCP3qKC+_e+WT9dtmP3LdSUTfN9Mg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW46!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000be7ab00643e0b256"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Nov 2025 16:10:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66029

--000000000000be7ab00643e0b256
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 2
david.reyna@windriver.com 2
yoann.congal@smile.fr 1
mhalstead@linuxfoundation.org 1
JPEWhacker@gmail.com 1
Grand Total 7

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000be7ab00643e0b256
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
dden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:david.reyna@windriver.com">d=
avid.reyna@windriver.com</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2<=
/td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smi=
le.fr">yoann.congal@smile.fr</a></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right=
">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhalstead@li=
nuxfoundation.org">mhalstead@linuxfoundation.org</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D=
"mailto:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgroun=
d-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom;background-color:rgb(219,229,241);font-weight:bold;text-align:right">=
7</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image=
:initial;background-position:initial;background-repeat:initial"><span style=
=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span=
></p>

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

--000000000000be7ab00643e0b256--

