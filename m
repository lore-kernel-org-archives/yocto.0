Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5D53C83F26
	for <webhook@archiver.kernel.org>; Tue, 29 Jul 2025 14:54:32 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web10.9556.1753800863545962980
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Jul 2025 07:54:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KwVZT+zC;
 spf=pass (domain: gmail.com, ip: 209.85.214.176, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2401b855980so20324955ad.1
        for <yocto@lists.yoctoproject.org>; Tue, 29 Jul 2025 07:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753800863; x=1754405663; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=No36LuNTQdRtl7Z0gDdY7DF87pzPpVklW+jfJai1pEE=;
        b=KwVZT+zCDoxOcv17czrrPjO/NU1t1CaYNpHN0EPPfUG7JbJM9LutuKnHn1WGQHWaih
         eQepmV1DgK1nh/12zlKd7wxMIWXnMXPQtH+TuUFKJwpJU4+aPsbdKTG+KAeH70JrbUS5
         2tih10XA3pYY91EkbhtWGQLh3EVGnsD00Z5NyhkZ3edbBBfRAmfXb+YohutSL0KoxT+x
         jmaynkMm3vmvNmEpEk1gosMSR50b/bD8XLooeV3R/N+T2i+55WDtzA2x56xybTP+6RzC
         6QQkzwGm5p7X+sr685Av0/Zf/dBD3//hIkkBVjboBQV7B5bMTczyG0ie/4HFPn46oEYK
         VIKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753800863; x=1754405663;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=No36LuNTQdRtl7Z0gDdY7DF87pzPpVklW+jfJai1pEE=;
        b=qqbzzt/rZeD2ebqwJ/IKZ3SKFNO9rJC3dfZY5F8EwZrgK+cWaAczksMRnJB8LO1cc6
         mfspyhF1SqeiAzyNWWxVF492ac5IHfkirGvBJYH32e+jkOK5OxyVQhZVpQ1OlIydF0/W
         Bh/S8XCNyqHxp6Stzh0aIWT/Uc142+crnz7X47IoKAGgt7AZ7eJu1Ey7vVfhxGOp4o+T
         t6+q+J56rcbF6l2MIC6gYGRq6ejZWeh/WEbUBnuFR3uizvT0BjOSV+kVMOmI1t7Y5NsQ
         b9IcAn/bW3RIjFprisvEuNZIYzdwBh3nolK1ye7oxsiJOx26TC4jJcoU6HoOSlsCcGLh
         iORw==
X-Gm-Message-State: AOJu0Yx9HIaMXWmuzxP8QIgDmf6Dk6NHMKREeqB7bOx82QyM8M/ueky9
	fOlAU4vxI6CYIzDLWUR5X9iThNqeGFag13/S54QDvYdIiFrOL4BDXulONh7VirNNYyHG9ac4SkH
	Z0pfx7Soo93hSDZFRCCHA6Qg4jQwj7m+gfxvm0CM=
X-Gm-Gg: ASbGnctOhHEX/pllHebDxnLSEr5PlBqM0sy/qJzAJb9dCGUf08e33s/yqZJHEGrXopk
	JfJfIMwBdR58xSHQsJN80ec5I0Ip0dHpYubDYn8dj5ordYwUtsGeJCr1Y4/DwoA0MJoS7XUMaRF
	pN22tNE9ur3G/DzM2nRrwf6q2DFW0o+X0GZQCdJWDWxSNEXHeRNScyYtcdLpL5uxrK6PVpNVTe6
	Y1zm7b6qSdnZ7WpxBFGA9BDN6I/xPPPE+cPe5pRKjl9XHpr2nG1
X-Google-Smtp-Source: AGHT+IFvGuHpk3WoeAd8GP33OY3HHWUhm16G/kgcKY8d7cQJSWKjrE+d3aEB5Bej6yGyVm5DjpYji0zLn601GU5504s=
X-Received: by 2002:a17:903:4b50:b0:236:9726:7264 with SMTP id
 d9443c01a7336-23fb305083dmr276096695ad.5.1753800862581; Tue, 29 Jul 2025
 07:54:22 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 29 Jul 2025 07:54:11 -0700
X-Gm-Features: Ac12FXy1l-atASVTrU3W0goOuZ28SWdkM7xJ-AbsMTGilSEXOMojp6WCeeNDwHU
Message-ID: <CAK5yBb8eDH9i=+BU5FROOiHO7_PDvwcRKS2EGPDxSpqSTH3qxA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW30!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006bc7f4063b1295eb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Jul 2025 14:54:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65718

--0000000000006bc7f4063b1295eb
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 2
JPEWhacker@gmail.com 1
Grand Total 3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000006bc7f4063b1295eb
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
 3px;vertical-align:bottom;text-align:right">2</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:JPEWhacker@gmail.com">JPEWhacker@gmail.com</=
a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"heig=
ht:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical=
-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Grand Tot=
al</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:=
bold;text-align:right">3</td></tr></tbody></table><p class=3D"MsoNormal" st=
yle=3D"background-image:initial;background-position:initial;background-repe=
at:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Tha=
nks,<span></span></span></p>

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

--0000000000006bc7f4063b1295eb--

