Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52345C54F30
	for <webhook@archiver.kernel.org>; Tue, 27 May 2025 06:57:07 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web10.45428.1748329026633389567
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 May 2025 23:57:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HoYA0cpU;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-3114c943367so1817202a91.1
        for <yocto@lists.yoctoproject.org>; Mon, 26 May 2025 23:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748329026; x=1748933826; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KRv9BTy7U9unV62eQHDVlBB8WBEXDCB9cDHbCY2r9sM=;
        b=HoYA0cpUcs7YWj5U0TDj0TfWSVNm6SicXDZ9tYHWxhKVygMyh0vvNtAWS5vOhf2MZq
         QHY7TUeVBTKIBP0EGpltW0UHPmBi9IOeo7iJ+84/1i7of0bVQjYnv3/+gXtmJvj3hh58
         Tp7rXQ1qoxZaDTL80AMBSyo9EjQwxaQRRV9ywhy4RAXix9legNkaYKFZ2VZO3mqUd2i2
         vTW7PcD9awy8XWOrtMBXwmENRWz3biWJbQnzkoa059VDzWkS30lHEOmrIaZ94HnCu8+M
         cHvHPS0PY3VbuuS0Irw+JDFXS+492fw4tz4XhIVfwK04rJ6mq8wHwn6X/nswJa985drQ
         8skQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748329026; x=1748933826;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KRv9BTy7U9unV62eQHDVlBB8WBEXDCB9cDHbCY2r9sM=;
        b=aZp7ncec5z6yg7NpA3qlzngnW8hppo3WS7WS1Xcf0p4+6wmCKlpjQIyxRVj3USJGIr
         BwnDnW12vXzy87csvjz7p8nWzpcg4yrkKpNEe13OZzOc+ww+Ge0UbUHPkrMmvZpyMuYd
         s1Jo0glJDtKVeG3+PaFXmBilVgJgJfYj2vWfHb8anMCAByIlfJ3oekDGFNfcj5u96TyU
         gO75Qq8E4aDiRyPLAGLTPF0+soDdzhxhxaRMmrx/vcpeG3IwmMGPfj2el5/fOnMyWN4f
         LiJRyJVyfFdVaWkY9ggzMU41+GI1JO0OtYIs9qIWcDguspJbO0b1MQArmZT9w3gdallY
         zfzg==
X-Gm-Message-State: AOJu0YwPRgvrfk9dWd0LNtU9Z5+AAEaDrt4pPYtfXrpUY8rZSRuFtqFN
	R1NMlFGKc02qUy5pJeO4Gi4piojxnImyateRRoPLt/F+g+vtewbQX576ljZXtYBTBmoUW4euXnV
	mZDOQ5/tk0vb6tWnl38KejGWmvtut3bZVVcc5
X-Gm-Gg: ASbGncs8f+E6mFZG/aZZ3lgy6dxNQSj8TjVf9o8JgLAi/VildgAoTTJV9ztOphQ/W0c
	/NZBhsU7iM+QRkP/ai54LVPQmSZkXxE0BUe48UR1C80S/rvMkiugJ4cWZNxMbhkXROxYxu+OCre
	yJdcfTLe8MJwLWvnFpkLBBNck4SjWwmknV10V59IDOKZV4MoENHS4gsS7IxF/BOE8M3A==
X-Google-Smtp-Source: AGHT+IEvLxQHK48GWzC0TZ+H3PWeNpzeosSnMfj/dRFilQHRhYgC2eIM0FphQsC6kR7eDybI04CpRaEaU7qLURNpQbY=
X-Received: by 2002:a17:90b:4b83:b0:2fe:baa3:b8bc with SMTP id
 98e67ed59e1d1-311104b6bdfmr15473822a91.23.1748329025677; Mon, 26 May 2025
 23:57:05 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 26 May 2025 23:56:54 -0700
X-Gm-Features: AX0GCFtEm7B9mjxn0DCmAo3GZ5AyCIYxJ-uazl67nY_AQH3RLyDLLrweLUI56-s
Message-ID: <CAK5yBb80=ECO-ZAfdtVg-oCDG+YxvgY+a8A=ZXBs03sReRD5Uw@mail.gmail.com>
Subject: Enhancements/Bugs closed WW21!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000086ada306361892cd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 May 2025 06:57:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65427

--00000000000086ada306361892cd
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 4
yoann.congal@smile.fr 1
ross.burton@arm.com 1
richard.purdie@linuxfoundation.org 1
mhalstead@linuxfoundation.org 1
JPEWhacker@gmail.com 1
Grand Total 9

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000086ada306361892cd
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
x 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann=
.congal@smile.fr</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr=
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
ailto:mhalstead@linuxfoundation.org">mhalstead@linuxfoundation.org</a></td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px=
"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"><a href=3D"mailto:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20=
px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom;background-color:rgb(219,229,241);font-weight:bold">Grand Total</t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold;=
text-align:right">9</td></tr></tbody></table><p class=3D"MsoNormal" style=
=3D"background-image:initial;background-position:initial;background-repeat:=
initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks=
,<span></span></span></p>

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

--00000000000086ada306361892cd--

