Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D636C282EC
	for <webhook@archiver.kernel.org>; Tue, 18 Mar 2025 05:37:22 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web10.4891.1742276232994859605
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Mar 2025 22:37:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=niVfsvgA;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-223594b3c6dso106933445ad.2
        for <yocto@lists.yoctoproject.org>; Mon, 17 Mar 2025 22:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742276232; x=1742881032; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Br10VdplUR7oTA9Jvig1fxu2au+85pp1npvIZAHpS8c=;
        b=niVfsvgA47P/6OHF+eUt1GOp8DwTiAhzPowUR0ucyvY3fNcl/K4UUImpv+tROmuS9x
         zje6qY2KiBLiYeVmi/Sz9KEO/LCWJso02yGyXuu61geQdAmCkQct6t0ZwMaQmZWVjMi5
         kJNWP8rUddhx4g8oRTuPO5Rm4GsfHo1UOqqCMHsL6i5mw40yNXd4U5blWKIi1SAesFKl
         qbQDw8To6ZknMEN6ETz02hzRTPaIJClJ7pCAbjIOGDT5u2b3gl3lp2mrHj92Yd/iTzBj
         mvl8x27jrqwf32DzW5qMWVbwZLoaOl2srpb9pjmlZWSyAeFSktXWetoZfZYfHOq4i/Vg
         ll5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742276232; x=1742881032;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Br10VdplUR7oTA9Jvig1fxu2au+85pp1npvIZAHpS8c=;
        b=ZFWUqJ4Q9YBI58xY5ReHEhGdlfg0h1njFlOPhxr2qz9PoDW7VeIOHti2npSd+kHMcz
         NeutP4MNs1jJxqJHVlQR0lhPxrzW+ZuSn6RNagcpUJhqLzlCRwDaVEk2v8kOC71ugHW0
         GmGjY2gf9jbMU0f229JWz+r4uP0kYrphL+ZQKRl0/fPfC+F3hV99BogIiUHEtfaYG2EE
         NQuCebjCspzMrH1yYMfjI8RjrT2QmHKwqrUkfyT1DgClc62lmJLOMXP3g/3dBpvwkYz3
         hLTTd2QIA92dNBviF3iwUk6l1Gap9NPgkVFJX6nEjkk9HcZPTgWWhQA4MiZigc6jOweS
         fLPg==
X-Gm-Message-State: AOJu0YwOZZOw61Nyg5GGLEt3v4cNmXb6ENR+lj6kOp3kg8RubmnStrmj
	e8pS8HxOE444supYiVhY/jLvg2k419gyXLmuwLTB90EJbgpBrJ4dzXag4Xax/onEvIoo7tdAf7S
	5GiGvdYxIiDFcv2bvPedqcd1H9ml4CcDb4zc=
X-Gm-Gg: ASbGncuLQnsyt/cXfca8nYvH7jPgPAbhdBZAnREvhYOeZFWB79GeuIQ70Xt0wMRJXuL
	YuZCwgLkc290RziYRwmoU4NbU5VJbcbaz+k5f8Q8fJsSnL4lCkhtAkkmr7ss2dn2DbuKn6axzNB
	leN372VNrLY7kirEhTJGAb/uKnI3VMRYShOmm+PM7lpe8tsa4fYjwV/LdgeSw=
X-Google-Smtp-Source: AGHT+IGWw5PcnSH95DruqPMwUl6EQs0M/aDP+bxBtB4JHplN+vLSYus2Lcvnp4tF8/PnhYkZsb+kUurKiJQHlg5jDdE=
X-Received: by 2002:a17:902:c941:b0:224:2717:7992 with SMTP id
 d9443c01a7336-225e0afa06dmr140421095ad.33.1742276231739; Mon, 17 Mar 2025
 22:37:11 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 17 Mar 2025 22:37:01 -0700
X-Gm-Features: AQ5f1JoV4VXV0-jhMLn-22OhZhvDAz042jnEhWWiQ-io5ZReYkpDpTe-cF9woNk
Message-ID: <CAK5yBb-iGZ+wn8Buxj1+hRkozK_KY77K7DunQR_cUBSo6xjusQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW11!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e4c01b0630974be4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Mar 2025 05:37:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64969

--000000000000e4c01b0630974be4
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
david.reyna@windriver.com 5
richard.purdie@linuxfoundation.org 1
randy.macleod@windriver.com 1
JPEWhacker@gmail.com 1
Grand Total 8

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000e4c01b0630974be4
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
lign:bottom"><a href=3D"mailto:david.reyna@windriver.com">david.reyna@windr=
iver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;text-align:right">5</td></tr><tr sty=
le=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.o=
rg">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-a=
lign:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ra=
ndy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-align:=
right">8</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"backgroun=
d-image:initial;background-position:initial;background-repeat:initial"><spa=
n style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span=
></span></p>

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

--000000000000e4c01b0630974be4--

