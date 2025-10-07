Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D11B7CCA476
	for <webhook@archiver.kernel.org>; Tue,  7 Oct 2025 14:42:34 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web11.20663.1759848153417392682
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Oct 2025 07:42:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fsEVcPK2;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b5565f0488bso4096012a12.2
        for <yocto@lists.yoctoproject.org>; Tue, 07 Oct 2025 07:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759848152; x=1760452952; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Sf3iwa9LF0ku05bl7Gp/6oP1CkpgaQxULNkoc2V/aO4=;
        b=fsEVcPK2t2KaPDY5EYqit5cnfg2yy6wWpVTKZC2HqqgYpQUgERJ5xyo6hq1WJNZEJF
         r+vvDcpstHPDLL8x8rHybATtuq7KRgsHec4FocNMggiQUf2SBQtYTosvmMXiFBl4ai8J
         ToWXpoxAacR3dDZ9bNVq2lNo2dpNkNggLmFCFdM3RTyt+AHvFxc52a/EhXoz8A1O45ST
         uD0jL5auDTfeAtEb6MksE8N5GxbmDWPACUf8jzXK/0O5ZNkd7LcEAXZ9iJHvP9kHIdbh
         YBrQD9kFKe0sgDBPjyuQjl7+m2gpJ6M14RSDpopWMMKdty/llIcsX3AfmTrnsLMO0mx4
         57dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759848152; x=1760452952;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sf3iwa9LF0ku05bl7Gp/6oP1CkpgaQxULNkoc2V/aO4=;
        b=W1tRAt90v2MSZafAX15RvGJ8g0XGqw5UCXSKfFOpTp9rIAgQCtcd5lOzmXw8XT/HfQ
         4K6qgI/8yhoLMUiMp9UMkAKsSZIlWmNL7S9a+Sybk5eFIuQlKHyM2lJ6VmqY6yjkCFIk
         tuDxxPhVoPYJwHWlh9mW/U/nWcXgRzyBBb6Ual5AGFkMePw9zmlgkcVo5luSrorPdmbf
         0T4VXGBYIG/JtV48DcQnN7RIdJHL2DS2BMnJHY17wRG7/qlzx5za2tEcj6e+MoDU/TIN
         zVHYydyCwC3p+CUJ+jdZq7JVc0ZiLNQWv/Pjrb7gQXNGHxLBpgxXaVigsY0KPM3O5keE
         0YiA==
X-Gm-Message-State: AOJu0YxBCcmEfs8B9nMURXAmM+2xeIYIS3LQZQ70GC4tm/IgcjmLLJJE
	UGnNEvSD+eLu+n2mkDmzmbRmahgIi1E7PLuyTPcD0R9/409sCF8uofRufq6uxFg9wNlmObuyhRo
	aDZzisWvWT3vE7TCXfdYmSNqjXNKiibXvmTK5
X-Gm-Gg: ASbGncuYROXeo00bs5Mg1Qyed7gM9/TauUGT3QvFtA8l+Yl08J/xbyAa5jHho/OwV63
	G6f3EdH4mvQ4hQCLsdj+wpxPKTerjHYT/0eGwLmf4/nKTR17BY1cs1hDyeQHY2Yp6gQuMZqiADd
	LIP1OvfYXzA0a7m3RHsdeKcLMmOU1O3OUnVnpVejrn8vVX2/rR0Syid4ZNi3BwwVePBzWckPP9y
	kehzEN1YcRpfLLiJTDPd4UcH0xXkI56R7MGZWEC0jnQ60+24SCpJ1pkEtnMmHWYuQ==
X-Google-Smtp-Source: AGHT+IH870SDX0vKjsG7csg2cKYsdoMIG25IBnnQy/teRCPr4mD5MyyLO5UcePPLNfAdZ+jmrwDxg92A723cM0H0CSA=
X-Received: by 2002:a17:902:ef11:b0:251:5900:9803 with SMTP id
 d9443c01a7336-2902723b876mr251745ad.21.1759848152388; Tue, 07 Oct 2025
 07:42:32 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 7 Oct 2025 07:42:20 -0700
X-Gm-Features: AS18NWB0TEauJxqf5TwfpequUG1kgYvLThTfqfakUDkQHS-kb4IZ30ESWMSJKQ4
Message-ID: <CAK5yBb-ZYPbP1Xr7inakVrGB0RMKJzXm2JZUwbdOTU89SSnAeg@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW40
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000fb56ae0640929306"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Oct 2025 14:42:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65911

--000000000000fb56ae0640929306
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW40 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 14649 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14649> AB-INT
PTEST: openssl ptest failure in Dubious,_test_returned_1
randy.macleod@windriver.com unassigned@yoctoproject.org 5.3 5.3 M4
15982 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15982>
yocto-check-layer
doesn't work with multiconfig/baremetal machines randy.macleod@windriver.com
denis@denix.org 0.0.0 5.3 M4
15987 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15987> Fragment
enable/disable is confusing and can cause user error
randy.macleod@windriver.com alex.kanavin@gmail.com 0.0.0 5.3 M4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000fb56ae0640929306
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW40 a=
re listed below:=C2=A0<br></span></div><div dir=3D"ltr" class=3D"gmail_sign=
ature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"=
><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=
=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-=
collapse:collapse;border:none"><colgroup><col width=3D"63"><col width=3D"43=
"><col width=3D"543"><col width=3D"235"><col width=3D"242"><col width=3D"53=
"><col width=3D"53"></colgroup><tbody><tr style=3D"height:20px"><td style=
=3D"border:1px solid rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom;background-color:rgb(219,229,241);font-weight:bold">Priority</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Bug ID=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,=
0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Sh=
ort Description</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-=
weight:bold">Changer</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);=
font-weight:bold">Owner</td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,24=
1);font-weight:bold">Was</td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,2=
41);font-weight:bold">Became</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;font=
-weight:bold">Medium+</td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decor=
ation-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14649" target=3D"_b=
lank">14649</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">AB-INT PTEST: openssl ptest fail=
ure in Dubious,_test_returned_1</td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom"><a href=3D"mailto:unassigned@yoctoproject.org">unassigned@yo=
ctoproject.org</a></td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;text-align:right">5.3</td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">5.3 M4</td></tr><tr style=3D"height:20px"><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom;font-weight:bold;text-decoration-line:underline;text-ali=
gn:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctopro=
ject.org/show_bug.cgi?id=3D15982" target=3D"_blank">15982</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">yocto-check-layer doesn&#39;t work with multiconfig/baremetal=
 machines</td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windri=
ver.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:denis@denix.org">denis@denix.org</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
0.0.0</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom">5.3 M4</td></tr><tr style=3D"height:20px">=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom"></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:unde=
rline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bug=
zilla.yoctoproject.org/show_bug.cgi?id=3D15987" target=3D"_blank">15987</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom">Fragment enable/disable is confusing and can ca=
use user error</td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@w=
indriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a=
 href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">0.0.0</td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M4</td></tr></tbody=
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

--000000000000fb56ae0640929306--

