Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEBF5D11700
	for <webhook@archiver.kernel.org>; Tue,  2 Dec 2025 15:58:55 +0000 (UTC)
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.654.1764691126469686371
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Dec 2025 07:58:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HvDzox/Y;
 spf=pass (domain: gmail.com, ip: 209.85.215.174, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-bc09b3d3afeso3217368a12.0
        for <yocto@lists.yoctoproject.org>; Tue, 02 Dec 2025 07:58:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764691126; x=1765295926; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YI1ozD1MlfGHByYug3Pz8SIq/4rkqwBk6MNcAKHf8sc=;
        b=HvDzox/Yt463oh6VUni8wkLnO/4WXeQ53cjm1XQUkvInZsAudta/HvY76/vUUU+15w
         u7lWTehRgtwFfNYgivuSjaNex0AxVoaAjZNWSkGCjcNiVayfobE+fHNmJiodm6IDq/UU
         BkYzIU4LFV7u1tKFTdYOyQ++gtPL7qp6WZLkIySQFf5CjWYPB0EZC+2Jph8RRsDGkhNo
         vbfUQDLXPlptn7zuDpijb2KRpxZ8oMAiwJUWV8yHQ4B6u1bmKrz1FCyFj4GYc4Se2IQl
         OMUqLhFSopCtroWJ/NHQx4839Hpv+2sGRgqi7jTjLjJak+7l8IiJIhP3GcitfyUdiq1a
         VbBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764691126; x=1765295926;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YI1ozD1MlfGHByYug3Pz8SIq/4rkqwBk6MNcAKHf8sc=;
        b=K+ntNRbSzOA0xFlIpuHaNQcz9fFg1YWYiOtiVAwrknI4a53YPq23T3mf4RrxVt0stu
         x06WaXIc91e0XWPBCk3R2YMMiWTkJuJyz49dUYXT+45zrDCvhxYn/lwhgUF5n1Y1s5lc
         8m6UJEcJbOwQnda/mjuf+HA8jeQaJuTOpayaygVsuEHITDkSNaCFYWqihb+CFV/89r2e
         +p3twXERCDFWjRouj7mrrhO135N1jesKoAidq5Kh8b0TBQT+z5iQd0W4dKUOyLzHfzVj
         jOrkY4dk+xCrYxOAwOmlGENKN+G3vqhaOuwj26UvhVbn74a4X6vaD4fB5axrqhHYT6bx
         Idmg==
X-Gm-Message-State: AOJu0YzP5ZqzKu4rS94pj0+za/RQsamkTaji3JRzWtOgzpMbBDMW1ig9
	SPQDY3DTr1p6VI2I6TnJiPO95hwNRbYFisBvnq/QyM3Ju5MOzHn7+Df4DUahAGp54+HdJEN2gCQ
	slIc7A4o1WiecMICNkSm4O/u8iSLdqrNxhBeg
X-Gm-Gg: ASbGncts40uk+VnJhmP+T8+HsZ87wJusjLtKAozVctPOcLV2B06tM7vXS2WIXrHp05G
	4WSuExFT4hoW4J1GLFSq/J0uIEqk8hW8YbwpGkA1U0GR6JrF9FIwcdDT1OY7vk8RWGf61Ge27cz
	xBo/9H5ulNZnCCegXssOwQ09u0yKkqt2tb9XimNI8blL8HQXF3pCEsplId2JJGFC4tVvL0ZzPzB
	O11QRqsOJ6LsY0UZtTTtus1pd5Rnb9hPfYauepL45ev21JupzjU1OklRYt7Zz9Uqb6DUiyuO229
	Q1/p5ZJtPAdOzrrSfRVs3jUddWzOZqpKmFT0hf31D3mCrwZ/oxYuiDJTwQVmF2dN+73gc8iiJRN
	SrjK8ecoa9Vos+Sw=
X-Google-Smtp-Source: AGHT+IGX2LM91C3V+5rpRhy+BJZiz7eE96bWUyipsTPs4uhSweYxlMoZAPX74MnGPEwjRTlgDM63XISAyDGXOWCPp9k=
X-Received: by 2002:a05:7301:9bc1:b0:2a9:97bc:69e7 with SMTP id
 5a478bee46e88-2a997bc6a29mr4977527eec.2.1764691125403; Tue, 02 Dec 2025
 07:58:45 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 2 Dec 2025 08:58:34 -0700
X-Gm-Features: AWmQ_blvtdFWqQGmKuv1WfTRZE4uacc4dEqsaqp1OS4D0OGCh50BZfbGQplJex4
Message-ID: <CAK5yBb-P+wETyzavNmA0z3fjKxRHLyY6vA5wmKCJnec22M7uKQ@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 5.3
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ab038c0644fa2b2b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Dec 2025 15:58:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66083

--000000000000ab038c0644fa2b2b
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 20 bug owners as of the end of WW48 who have open
medium or higher bugs and enhancements against YP 5.3. There are 100
possible work days left until the final release candidates for YP 5.3 needs
to be released.
Who Count
ross.burton@arm.com 24
tgamblin@baylibre.com 22
randy.macleod@windriver.com 10
bruce.ashfield@gmail.com 8
JPEWhacker@gmail.com 7
pavel@zhukoff.net 6
sundeep.kokkonda@windriver.com 4
mingli.yu@windriver.com 4
Yash.Shinde@windriver.com 3
richard.purdie@linuxfoundation.org 2
raj.khem@gmail.com 2
Harish.Sadineni@windriver.com 2
tvgamblin@gmail.com 1
toni.lammi@tl-software.fi 1
sundeep.kokkonda@gmail.com 1
paul@pbarker.dev 1
mhalstead@linuxfoundation.org 1
denis@denix.org 1
david.reyna@windriver.com 1
bbergquist@canogaperkins.net 1
Grand Total 102

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000ab038c0644fa2b2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>Below is the list of top 20 bug owners as of the end of WW4=
8 who have open medium or higher bugs and enhancements against YP 5.3.   Th=
ere are 100 possible work days left until the final release candidates for =
YP 5.3 needs to be released.<br></span></div><div dir=3D"ltr" class=3D"gmai=
l_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=
=3D"ltr"><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1=
" style=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;=
border-collapse:collapse;border:none"><colgroup><col width=3D"249"><col wid=
th=3D"42"></colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1=
px solid rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;b=
ackground-color:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
background-color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr styl=
e=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@=
arm.com</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom;text-align:right">24</td></tr><tr sty=
le=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"><a href=3D"mailto:tgamblin@baylibre.com">tgamblin@=
baylibre.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">22</td></tr><t=
r style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com=
">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:righ=
t">10</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow=
:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:bruce.ashf=
ield@gmail.com">bruce.ashfield@gmail.com</a></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text=
-align:right">8</td></tr><tr style=3D"height:20px"><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:=
JPEWhacker@gmail.com">JPEWhacker@gmail.com</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">7</td></tr><tr style=3D"height:20px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:pavel@zhukoff.net">pavel@zhukoff.net</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-a=
lign:right">6</td></tr><tr style=3D"height:20px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:su=
ndeep.kokkonda@windriver.com">sundeep.kokkonda@windriver.com</a></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;text-align:right">4</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:mingli.yu@windriver.com">mingli.yu@windriver.com</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;text-align:right">4</td></tr><tr style=3D"height:20=
px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"><a href=3D"mailto:Yash.Shinde@windriver.com">Yash.Shinde@windrive=
r.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org=
">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:raj.=
khem@gmail.com">raj.khem@gmail.com</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align=
:right">2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);over=
flow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:Harish=
.Sadineni@windriver.com">Harish.Sadineni@windriver.com</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;text-align:right">2</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:tvgamblin@gmail.com">tvgamblin@gmail.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
a href=3D"mailto:toni.lammi@tl-software.fi">toni.lammi@tl-software.fi</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:2=
0px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"><a href=3D"mailto:sundeep.kokkonda@gmail.com">sundeep.kokkonda@g=
mail.com</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr sty=
le=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"><a href=3D"mailto:paul@pbarker.dev">paul@pbarker.d=
ev</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"=
height:21px"><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalste=
ad@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</t=
d></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:denis@denix.org">d=
enis@denix.org</a></td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><=
tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:=
0px 3px;vertical-align:bottom"><a href=3D"mailto:david.reyna@windriver.com"=
>david.reyna@windriver.com</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:bbergquist@can=
ogaperkins.net">bbergquist@canogaperkins.net</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-colo=
r:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
background-color:rgb(219,229,241);font-weight:bold;text-align:right">102</t=
d></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:ini=
tial;background-position:initial;background-repeat:initial"><span style=3D"=
font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p=
>

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

--000000000000ab038c0644fa2b2b--

