Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7C40C83F17
	for <webhook@archiver.kernel.org>; Mon, 14 Jul 2025 23:51:29 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web10.2533.1752537087003301110
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jul 2025 16:51:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=S8gGfm4D;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-315f6b20cf9so5309467a91.2
        for <yocto@lists.yoctoproject.org>; Mon, 14 Jul 2025 16:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752537086; x=1753141886; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+EYLsYO/erBeeQoXLokYXrLJ88spJV0/IcPCy3THfrw=;
        b=S8gGfm4Dn/0hpbdH3WmfjL6aLY56YhraseJzdfaowudJDIcrb3DVipto6iJ8ZxdVLj
         F0ArzLimnHOxp+NMUsBw//NAPBrDLFrM4X3x0ywlH0+WWGGW4MI2USASFNDVwihjQW/3
         LjpE5Zhd3n9OH2rUIR1pidA9wZv15ndLvhLXYmEWyX5iXMoQgnCDQNYCT2a1vDGuiKBR
         FqzyPDLNmEwE7B8YKVRbxLjeG5TEY8SHG5ObgryVPql+V1V2KWOI9tE8GrQZ1nQVRhNS
         csE5BPVdXxxQpwnqqhKgV/i+WykHANnZYRMB+gaijD7DXSls+8lT+qdIe9LRrnlR2LMi
         LeBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752537086; x=1753141886;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+EYLsYO/erBeeQoXLokYXrLJ88spJV0/IcPCy3THfrw=;
        b=aIx+/mXRbz4vbi/Z95Szr79SnTCpT4T88Rob8KAIhzI4dOvCYitrWU058nFP0nT70L
         cHxps4swZCc+xRLsNTBPz/BuMp2szPAWh+nJERQ6kAQaHGpe+11GZOKxtJwgrDF2Pmpo
         /v2/tFhNPzI3k/Q1XoQ4F9uoKLxgZ4z+NuMY4MuDy3XOKmU9zqA1p8ZWG894supFxQxd
         1NZ8JdpcjvKwDmrfZyjyN97e9IB0Eqv/cTAwPf4fwgGS9IieVVs0bEJsv4T8Y3KNi437
         WWDE3UD7UVuvrcsMrHRxfjzlnoQ9zbqqcvq9kG8NN/iJEQbGy3oY3dDmN6pqsV3XliWc
         KwwQ==
X-Gm-Message-State: AOJu0YwVlbe9lXQ0NCAHbhrCYbH986YAE8SIld2qP5q8XrIHl7iRGvc8
	UVsxrZLjHOmk+xpBmE1zXozTFduxuJwV60zaONx9oJyUh4DGTlvHubOl0Js6s2v0qvj8QOsNmYo
	E4N4xE4v6Ar3ZIBz1Ws+BDdBoplBI4k/VlMMfEv8=
X-Gm-Gg: ASbGncvgueRF+R/OlpS5zVzrf1S61fRNbNMqt65WrbMWtuiYPxz8VXnhoaPwmMVeOwx
	39TcBQ7lpmumy4i4hn/3JzOLxwUnnLIiGLpe7d2xwEzVuTkbfU8+XUAKfhegumeNzggd2jSukXw
	kjFfWUQwvSkLIxooPUZ9cmv3dTlL10Pgr6CPZ/1z0ZkqPEhMTVbgEFKPbyBLyPhBYWWUMpx1t7a
	oXaCVrQ4/IH9Sp0N0ABXjjkOqTxmvB1tMYES5DBjw==
X-Google-Smtp-Source: AGHT+IFIePrpWZ7kqMGEv2osTS6Lg4V+X5NHvmEcPF8iN6HBWyN5lyH21vKDoMN5Uql+nSKts3DeEtBD2PiPpi9rocs=
X-Received: by 2002:a17:90a:e18e:b0:312:e8ed:763 with SMTP id
 98e67ed59e1d1-31c4f5733a0mr21156884a91.22.1752537086116; Mon, 14 Jul 2025
 16:51:26 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 14 Jul 2025 16:51:15 -0700
X-Gm-Features: Ac12FXzWnzS8zw-kr0NTzIed3_j-tZOaazdVKmY3efIzX-DudgQb8FuHyzYgKP4
Message-ID: <CAK5yBb_ZmB3aHr7JQSNATrRB9ZzGexsQURPkVP-Fd4b=7nO6SQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW28!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007988c20639ec56bf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Jul 2025 23:51:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65656

--0000000000007988c20639ec56bf
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 1
mark.hatle@kernel.crashing.org 1
Grand Total 2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000007988c20639ec56bf
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
lign:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.=
purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mark.hatle@ker=
nel.crashing.org">mark.hatle@kernel.crashing.org</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-=
color:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;background-color:rgb(219,229,241);font-weight:bold;text-align:right">2<=
/td></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:i=
nitial;background-position:initial;background-repeat:initial"><span style=
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

--0000000000007988c20639ec56bf--

