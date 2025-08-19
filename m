Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1FA4CA0EF5
	for <webhook@archiver.kernel.org>; Tue, 19 Aug 2025 07:55:11 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web11.8558.1755590105608048376
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Aug 2025 00:55:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Hx23Rh9L;
 spf=pass (domain: gmail.com, ip: 209.85.210.180, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-76e6cbb9956so1342690b3a.0
        for <yocto@lists.yoctoproject.org>; Tue, 19 Aug 2025 00:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755590105; x=1756194905; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mXWkVYbdaT59rPdu+ZpS5QTu9eoQsr7YNb7f+OteHtw=;
        b=Hx23Rh9LsS2GmA/fkvth7M97aWSXbSMlI37BFoH2DLDXra2pkxlNUUx0M2x3MFuwiS
         sjgG9cl5xczZjhlqPtmXFAA7nHWwf9cpVOpFFjGPmw2oxd54Ayg15HoPUbaNReEMq0he
         VReFyvom02Ojd033EvqEIiIfmM3qbL9AR+6tTF1yS0M6tSNZiYDKc4923UCmRkefZoXv
         N7oa07SYWGPrkOpdf0DyQBu/Olbg60DYUMhn2KLTEw0M8bRpwRaIffUt+7uLg9CR6oFJ
         5CGRyVevSWBUYbj5r9tbnj3c2X1o3eTBuZjodp5Vu4I+kViHsBdE9jzbBf70ayYeyoXw
         yFHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755590105; x=1756194905;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mXWkVYbdaT59rPdu+ZpS5QTu9eoQsr7YNb7f+OteHtw=;
        b=MGh/Zrmq3tpw54E2ppN+XfkcrLNu3+qln59rkHu21+Cz6KMta+GQVqNWhEJoe00GCr
         /fbExiEPgvwADzw3rJMjku8ni7J0xa7GWiP9gk9hRQgnXLKB1BgnWiNLpV+knu0H4Mam
         V3Ye9Cpb69rCiI05vzUgoYonx1Q3Wn1AKFz0JWTdd3pBxNYWpzEb8RwNjNF9mSdwZtzB
         ax62bd+o3hZqWzpZaNcRvyi2M3GMMDP4olhT5+uztOUp8tdUxZRQRGmK97moPNxozem/
         7cjR4DRKxds0wP3bqHIQOpcdwQPVhufVzPg16vEyLHZqdJdDnQCqGqBUYI24DfrHZ7GF
         uTIw==
X-Gm-Message-State: AOJu0Yx0NqD9TrYE6jGggFjQQlMQuIssygJ4Otz6QEkqRvE48sLXYgWu
	g4JikhTl7BduAnba05wy8q9Rs2tJJi0zjEDdAvU43hnpInaPGulzAINqw/5aRh4pR5Us4Eo7nDg
	AE/taHcFdAyTs8Iv5ZqhslD/nbQeddsOEoRza
X-Gm-Gg: ASbGncsba6/BeviudQ9lvyWCHq3Gge4kWyshrncjs/U6kqf6vrLHb2xBBYze+Cafxkn
	vas6fJV/bilZ1jxA1TADGLWzVM4Sxj9idEkihszYhf7B9hcmyClOG0V5AGWM1iYuMBhcoMB3dmX
	7x+azEm8V1vsuKp684dPPbY5GqjzJ+Ev6pKyO+SXdZccAhjvBlLZv2NGH31py3dZA7DkXWaQ2HD
	WeJH7bGVL5AiqTsg16+xUTeZjLup6DDTL4r9bs5
X-Google-Smtp-Source: AGHT+IFY/3tTpyWAOHd5YzZXDbnrMlTTiOTY9cVabpNHfl/4ezsCz/LG/abKarinZiMluUQujYosYid6AQvhm05Y35o=
X-Received: by 2002:a17:902:fc8e:b0:242:fb7d:1d57 with SMTP id
 d9443c01a7336-245e04c4f44mr16837725ad.42.1755590104650; Tue, 19 Aug 2025
 00:55:04 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 19 Aug 2025 00:54:53 -0700
X-Gm-Features: Ac12FXwrqMplUgUtlnLrYX9TQw-BXR6EU62NzerTqu_EfyNeJpj7A3mp1wNC1l0
Message-ID: <CAK5yBb9n+Un5Q8HzD=63TN0yzSKiuf83S8cQ4e_WxBrKsZ-q-Q@mail.gmail.com>
Subject: Enhancements/Bugs closed WW33!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008f169d063cb32c0b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Aug 2025 07:55:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65766

--0000000000008f169d063cb32c0b
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 2
richard.purdie@linuxfoundation.org 1
JPEWhacker@gmail.com 1
Grand Total 4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000008f169d063cb32c0b
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
x 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundati=
on.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-colo=
r:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
background-color:rgb(219,229,241);font-weight:bold;text-align:right">4</td>=
</tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:initi=
al;background-position:initial;background-repeat:initial"><span style=3D"fo=
nt-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--0000000000008f169d063cb32c0b--

