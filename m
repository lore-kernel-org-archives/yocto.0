Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04C82C3DA45
	for <webhook@archiver.kernel.org>; Tue,  9 Jul 2024 03:06:47 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web10.4545.1720494404384762766
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Jul 2024 20:06:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=U6HhF54g;
 spf=pass (domain: gmail.com, ip: 209.85.218.48, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a77c25beae1so489230066b.2
        for <yocto@lists.yoctoproject.org>; Mon, 08 Jul 2024 20:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720494402; x=1721099202; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MwPPTZfsZ9R5BeeZxFap+ObUNxRajf8r0nv0qYeQs2s=;
        b=U6HhF54gmVMV3/eWhzfItaunsgYFv8b3vMyqZvUODrfvmISmlq5cDMTz6wzparIfQJ
         kKi3WhxbHij2fiC8iXfP+6HvCWSthm0Ex+7jUo9piYJn86HZvnFZeq0yq/Ldtr7jd9Vm
         dANyI0xh+KPmztyGZdiHDUAesJiNkqmCkdtVO6PvbOn7GsYdQpagWhwpf7zt5cfFOwI4
         yQnxL0R5UeEK73q+MRRlzn6nP9VtjB0rhl8nN7vyujqBftdZHC7SKm2we+HwgA3HVsgj
         zADnoVLJuhIfD1yo9onZYPkn6tE3XLNUzdcmOM292TfingJ9GXQwi6rpaYyD098ViOV1
         jlzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720494402; x=1721099202;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MwPPTZfsZ9R5BeeZxFap+ObUNxRajf8r0nv0qYeQs2s=;
        b=EN7ZnTmfz8HYxDXN6/t92+mTudmVIrLsEFoRP32UA2P+lh1DhVvRL79rth5L8Hjzw+
         tYFpWadzCNK9bCydYk045v8eiOB4D4j6XYWz5tmjvtRlDbtLqJpLTRnVGnaoXNSck3mY
         OnTL+Fm6Oe7/ZQPZnnn3gIb2sb4SsbxDUY7HJxRO31epAZoC0trMsY/XTHF/l9sjm7xs
         CThXOdTtpr2wmq/J0QmLRl/Q7ovgy4Li5y62vG+j45XUZR3aBQy27tFDDdigkpmWzFai
         F7veiEYEsaWdPwFf6V/wd9qu6bQ9ovtOAZ0K4ltmFdh8xVZSCLOGLp+Pisvqtn8MKTAS
         xKEw==
X-Gm-Message-State: AOJu0Yy2luj4eMhUzYJSWP3PbyUWqCd9ZgDj8lmWii/EIzAChaNwCQql
	De5oDWM3tHSxhrptO/JP4P9evrD2o9zCsPYSBLsTOUiRqDi2jSCYmkBjvluC9/vL/hCUicyu2dl
	FvxXh59uo2UCtaY+iq+q58wT6HpKxGsG6
X-Google-Smtp-Source: AGHT+IHh0DMIIq8fPi4hfmWIG0Xv4NhRseN/CmnORxe8GS7b1s8kg3kQz/JMIfAQUs80nSiSARZHcMKa5sAePgSDUwo=
X-Received: by 2002:a17:906:d285:b0:a77:df8a:5bfd with SMTP id
 a640c23a62f3a-a780b6b1180mr66952366b.23.1720494402304; Mon, 08 Jul 2024
 20:06:42 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 8 Jul 2024 20:06:31 -0700
Message-ID: <CAK5yBb_+0m994FsddP9OpDq8WHAXkVcEjW7vAxYTv11q0LjEZw@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW27
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000afff14061cc7d10c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Jul 2024 03:06:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63447

--000000000000afff14061cc7d10c
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW27 are listed below:
Priority Bug ID Short Description Changer Owner Was
Medium+ 15530 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15530> Display
a "deprecation candidate" status on RSS recipe page
randy.macleod@windriver.com yoann.congal@smile.fr 0.0.0
15531 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15531> AUH: run
core-image-ptest-${BPN} for testimage (not core-image-sato)
randy.macleod@windriver.com tim.orling@konsulko.com 0.0.0

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000afff14061cc7d10c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW27 are li=
sted below: <br></span><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><table cellspac=
ing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-layout:=
fixed;font-size:11pt;font-family:Calibri;width:0px;border-collapse:collapse=
;border:none"><colgroup><col width=3D"63"><col width=3D"43"><col width=3D"5=
43"><col width=3D"235"><col width=3D"242"><col width=3D"53"></colgroup><tbo=
dy><tr style=3D"height:20px"><td style=3D"border:1px solid rgb(0,0,0);overf=
low:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,2=
29,241);font-weight:bold">Priority</td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb=
(219,229,241);font-weight:bold">Bug ID</td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color=
:rgb(219,229,241);font-weight:bold">Short Description</td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;b=
ackground-color:rgb(219,229,241);font-weight:bold">Changer</td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;background-color:rgb(219,229,241);font-weight:bold">Owner</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom;background-color:rgb(219,229,241);font-weight:bold">Was</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom;font-weight:bold">Medium+</td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom;font-weight:bold;text-decoration-line:underline;text-align:right"><a c=
lass=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D15530" target=3D"_blank">15530</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
Display a &quot;deprecation candidate&quot; status on RSS recipe page</td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.=
macleod@windriver.com</a></td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:yoan=
n.congal@smile.fr">yoann.congal@smile.fr</a></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">0.0=
.0</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font=
-weight:bold;text-decoration-line:underline;text-align:right"><a class=3D"g=
mail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?i=
d=3D15531" target=3D"_blank">15531</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">AUH: run =
core-image-ptest-${BPN} for testimage (not core-image-sato)</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@=
windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tim.orling@k=
onsulko.com">tim.orling@konsulko.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</=
td></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:in=
itial;background-position:initial;background-repeat:initial"><span style=3D=
"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></=
p>

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

--000000000000afff14061cc7d10c--

