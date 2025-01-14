Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FFCE77188
	for <webhook@archiver.kernel.org>; Tue, 14 Jan 2025 08:21:22 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web11.40500.1736842872983684699
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2025 00:21:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=giTcvShv;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2ef760a1001so8681077a91.0
        for <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2025 00:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736842872; x=1737447672; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4/5lHmqeQb5ABesvjZVbOJCUoGPFr4orP5RtmWwbezw=;
        b=giTcvShvlDf7aUgn31nkRD+vx1alJUSv87ZyXhRGNV2cUIFDqJyJvqPVJdG3mPTY21
         /f6P4KBJ5qHnort0+D5uqk6KNfTqXcKssllDrjy6sskU97VUhEUbrN5cAGHcdO9GuZLm
         4uG5Mf/HlKLJ53rI5nDIqFmbyEcCIm2FhnS3G4CUZDzqMvl3DSonJtNv+haBBS6/TLE8
         ypJHJsl6K7yoyQQIMBv1s0uGa8hlog2C648RpXdtN3Y1B/IqVBon1HiBzho86Hy+PDjI
         mxS3BzebqAFdqG6wF0ZFrJ4IcjyeWLZX3RixrkCNiij0z+C9x2ZkuoA7UyzObe0pmH/H
         qF1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736842872; x=1737447672;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4/5lHmqeQb5ABesvjZVbOJCUoGPFr4orP5RtmWwbezw=;
        b=wBZAZZiqTYT2fVGlhzCI96W3dGe/7OnGPq5xmih/ilD1m0HDNSSldO/b3Gu3RM7UW1
         NF/muosNKxc1Yes5tWLtA+1niV5XIO2QRasS5NMbEgccwiZf39gQkZWjblh9vWv6D7jn
         OdONOhmnr048Plqwh24Fqj0fVzeC9gqbAXhBEHH/3dqnUL0NGXLT2HTHR7y0KZGrXbLL
         L6sowLKZ/Hvp/gt+vtyEqtfOauh9ozmnsW135n9PysA3g1MKQKiEMAcYKg534d0mFqJi
         QBZiBNqy33nUNyDOgG0DD0T1KBOpxfJl4+TRoawlyRtmA2oDLIxvMq8mrcRO7kplQ/nS
         OXjw==
X-Gm-Message-State: AOJu0Yz9BW0KKzU81AETx6vd/Erx6EIFNbtch2O9QVXQMHX3Gz5BmTyT
	DaUC1ARndkoZCSDEzcTeFVIM5ikbQvaEeoSm3Z4cY4eEFmp/glffYflneaOkwxfH4LsZZtjzMah
	Gk0DwpCyGlmjYWhJlU2shgtbiR68IFoce
X-Gm-Gg: ASbGncs3SbufMBOESPiDIJSXjbkBrMxxYTkHlWG3Sxxy4IxM2/cF1Y0UqGn5kMA+6zz
	2SLHESt4UxsTre63A1ODySqXL9Pu1Ng9v5q/4HSrA2+R1SB1u6ukMHwrQ7g95frzE7M4OjKQ0
X-Google-Smtp-Source: AGHT+IEQ+Ne4U14RMfYvVlDab+se/edAcb6hbSMuAqz6I7KRwKTqd/iCHQSlah7yOgS2gKLUSZN2c4nsKiz7LBM0jBk=
X-Received: by 2002:a17:90b:4c88:b0:2ee:5958:828 with SMTP id
 98e67ed59e1d1-2f548f2a01emr36799048a91.9.1736842872103; Tue, 14 Jan 2025
 00:21:12 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 14 Jan 2025 01:21:01 -0700
X-Gm-Features: AbW1kvbLj0G8PiSrzJR6T2Op8tWxNUPe1KOkVS0BBShXyeB1UA1vTzvBLuVnPEI
Message-ID: <CAK5yBb9==4o7MvD5cd_L5Vi1VVXVU5HGiq_xUg9ceO3=uD0zDQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW02!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006c2975062ba63e08"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2025 08:21:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64543

--0000000000006c2975062ba63e08
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 12
peter.kjellerstedt@gmail.com 1
Grand Total 13

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000006c2975062ba63e08
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
dden;padding:0px 3px;vertical-align:bottom;text-align:right">12</td></tr><t=
r style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:peter.kjellerstedt@gmail.co=
m">peter.kjellerstedt@gmail.com</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:ri=
ght">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229=
,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-co=
lor:rgb(219,229,241);font-weight:bold;text-align:right">13</td></tr></tbody=
></table><p class=3D"MsoNormal" style=3D"background-image:initial;backgroun=
d-position:initial;background-repeat:initial"><span style=3D"font-size:12pt=
;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--0000000000006c2975062ba63e08--

