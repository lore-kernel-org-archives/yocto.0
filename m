Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13D08C02182
	for <webhook@archiver.kernel.org>; Tue, 21 Jan 2025 09:45:02 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web10.12422.1737452692033658804
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2025 01:44:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KsejOtk0;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2f43d17b0e3so9690520a91.0
        for <yocto@lists.yoctoproject.org>; Tue, 21 Jan 2025 01:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737452691; x=1738057491; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zQ5GhO/dikzJSyyVhqU+rMDOyUmVYkOxfpvbOvtqSSc=;
        b=KsejOtk03FFYKYd0sPHux4YD5SN6bpniGR3ga8rWujKzaSacgWqBHG2/Oe6/nlGVuL
         tbw2hJGk+CVqgbGT7GKSoOotu/4K8qjc2QHyCh+BNx42F58fWym7InaXd8zjZDc5J1Q3
         uUV/SeYmxeb3Gp/CrOTcD9/WUYW990eY3OmWn3FOPJcM9pGeE3iu1smxF8Qrzj3sXa+K
         xRs2U7vPrT1bm8RHz+lRu7BAwV6rGhr7L01Hnv62rnC4iV6jRrk3mNE8NGyS7KZ7SXTe
         qoTm+7hNuJRLk904S9M+97ClZJMPcki/WsJNg0mPP+2foMWY44QHNqvaSEeVIpLRZdUR
         XVxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737452691; x=1738057491;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zQ5GhO/dikzJSyyVhqU+rMDOyUmVYkOxfpvbOvtqSSc=;
        b=EedVVDD+pjgJlCoRuggE7yWDmGOxTwBpyfkI36+G2iC8kXPXfv229Vaz5beIRF4odb
         YcQD+kTydUyMH6UblweBpnYFmrbwqVPOJvbRhzFHay9dbd1sxOgOxnmvj/tRFzjmRrd0
         3mZlQlaFtKIy02TqW59bFe1fUzyzxYyOc8RAblvEk/wtG7BX1VoD7AjHCuIsVmeL+H/x
         lZWdtIPlt7wqZ8BK4BEe9aTddaKszm3im3DGDh0LRrTePgilCsRAwxSl2JBy7+sjNC81
         mDPykoRyYasJPdzLUXCuRHrjaxHlCUn+oftobBonHBhrSOOa86Y1QLksBj14EEjDKtTy
         ay8Q==
X-Gm-Message-State: AOJu0YzEUKXB9MlRwkXP0kgm/G8PQFP9gOEfQBmlGbxtcfuIzFUBy4p8
	ZFAiZuUpO2YIvb8zIeJxcNfwykOux9aGVxvpV0oADDdQD/V5kpM+QafN76Oye0JhsI611FuVJYO
	xHng7nH9+KpbRRRUzAPcghuJO+ci9PzZ8
X-Gm-Gg: ASbGncvc+wNvXt/n7xbpPQFk+3Du7pQ1tD2yBk0qd7PzneHbuCTl7lRdMqc318LB5SY
	pxv+zqIsGmqY5NJXiH9n+DSjJggC7BgZDnR0js2qlrhiXTXj2MFrs2QHauk1A3xj4V6FGy5xFuu
	rSvJiEpgX/hQ==
X-Google-Smtp-Source: AGHT+IEjXAOscaGPJq1P0pZuw8qBFv4nhwHsZbOsdsowFVHxqWMXt3Jrwn3xc3QmDwOI05jnjwDL5559t4p7kHHkJUs=
X-Received: by 2002:a17:90b:2543:b0:2f4:4003:f3ea with SMTP id
 98e67ed59e1d1-2f782d9a1e1mr26852711a91.33.1737452689719; Tue, 21 Jan 2025
 01:44:49 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 21 Jan 2025 02:44:39 -0700
X-Gm-Features: AbW1kvaoLJzUE_b54OYr3MtPLlWSugXte2rVYca9WH8kjxjWKT-HNyxnDJGp598
Message-ID: <CAK5yBb8du5cMpU7CagzPf8nAxVXvuGjNwW+pe4Yg8EAavmGEkQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW03!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006287cf062c343aac"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Jan 2025 09:45:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64597

--0000000000006287cf062c343aac
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 4
yoann.congal@smile.fr 2
ross.burton@arm.com 2
richard.purdie@linuxfoundation.org 1
kexin.hao@windriver.com 1
Grand Total 10

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000006287cf062c343aac
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
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ros=
s.burton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoun=
dation.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"m=
ailto:kexin.hao@windriver.com">kexin.hao@windriver.com</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;back=
ground-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-align:=
right">10</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"backgrou=
nd-image:initial;background-position:initial;background-repeat:initial"><sp=
an style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></spa=
n></span></p>

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

--0000000000006287cf062c343aac--

