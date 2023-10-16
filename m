Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20492CDB465
	for <webhook@archiver.kernel.org>; Mon, 16 Oct 2023 23:55:54 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web11.195942.1697500552637648353
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Oct 2023 16:55:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XJAi+GXB;
 spf=pass (domain: gmail.com, ip: 209.85.208.50, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-533c5d10dc7so8907900a12.3
        for <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 16:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697500551; x=1698105351; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SRJwiuNSwAN3aAjrNcW5HT6aVn4MBfzcH9jrHAQBs0Q=;
        b=XJAi+GXB0f0KgCs2ocfR33F5PpJRxyrjTp+JXaCZwnlWTxauJLF+9lgN4LIL+TXbLM
         6Pcjip9zFr+095t7Rn8lXlBKLpGUJ9Cvh3YGHcNtHnH0dnb9v/rdcXvAEMVcKbsKTNg8
         WLfw5lyveMsg7NLrOXqvdVEBhkRbFC+S+5B5rUKyXpGUX8ZPKUdOpiNvIs+2znh+tpOf
         TKI2kC1AnUnhQVRNzop8vWeIOunetgzLrmIT8MEb0uif/duWItT41xuQXNi25Yu8lf0h
         xNog1s4Ici5tGnsfUPeUifB9DhNmDsGQJ/NlyluXz8egpStHfG8W5a6vDeiKgbqSOA9d
         94LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697500551; x=1698105351;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SRJwiuNSwAN3aAjrNcW5HT6aVn4MBfzcH9jrHAQBs0Q=;
        b=eV1WGOEmxdsVvvTI+6R4uh9zAXpMwZD0GoHxYSmHw/1PAyoDe8fA+8ejwrA4W79fUg
         QQFxL01xvYV1LQrGabIx+AVy84yECZrOEOkGT14EHpCOzKoQpD18OJ848mxTQuB+wDEP
         1TKWhdsnJdALNtclmvKeXd9RN7CYIYbZwvFBlkM2hvnnBkPm1oS6/cTT7/3JGGixWkFb
         BYAz03CtiJGkQo6o+MTAGsvdoqn26KsgmBXnGTXq1Q1Q8MRJmBHCE4EJKBFwPvrFmZFI
         ui+H6ULqFhow5yuyLGLD7nAwprUCnLnF0A7B1VVPRG5m2YHzuNiiQ1NEv3QFhAl+v6oN
         NjhA==
X-Gm-Message-State: AOJu0YwRSmJpgpqMtu8V2Oj+zt66d+F8rOArIo3thEe++5Oh6v9+/Mgj
	BegFXsCYkdoyfoAC7jUSbgplucpGF/feJog5xIgryY8wb2E=
X-Google-Smtp-Source: AGHT+IE/uiCF5YSvj+MF4psKgcdP5cdyJ9apFWLlZyIrIzIjp3D4fYptaFPuOk+xqwR2wxfqC7BaNeQS5lJIho2+5g0=
X-Received: by 2002:a17:907:7202:b0:9b2:8c37:eb2b with SMTP id
 dr2-20020a170907720200b009b28c37eb2bmr367446ejc.58.1697500550517; Mon, 16 Oct
 2023 16:55:50 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 16 Oct 2023 16:55:38 -0700
Message-ID: <CAK5yBb8-bhrGeZ0hUA-o8Pb-TyE82dd_NDChZ97SDgN73xse-Q@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW41
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000051d7360607de25d1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 23:55:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61352

--00000000000051d7360607de25d1
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW41 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 14481 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14481>
Programs
built with -flto are not reproducible randy.macleod@windriver.com
Naveen.Gowda@windriver.com 0.0.0 5.99
15227 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15227>
bin_package.bbclass
can not find objcopy or strip randy.macleod@windriver.com
ross.burton@arm.com 0.0.0 5.0 M1
15231 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15231> glibc 2.37
regression test failures on mickledore randy.macleod@windriver.com
sundeep.kokkonda@windriver.com 0.0.0 5.0 M1
15233 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15233> Interfaces,
frontends and tools link dead randy.macleod@windriver.com
michael.opdenacker@bootlin.com 0.0.0 5.0 M1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000051d7360607de25d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW41 are li=
sted below: <br></span><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><table cellspac=
ing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-layout:=
fixed;font-size:11pt;font-family:Calibri;width:0px;border-collapse:collapse=
;border:none"><colgroup><col width=3D"63"><col width=3D"43"><col width=3D"5=
43"><col width=3D"235"><col width=3D"242"><col width=3D"53"><col width=3D"5=
3"></colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px soli=
d rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgrou=
nd-color:rgb(219,229,241);font-weight:bold">Priority</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold">Bug ID</td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;background-color:rgb(219,229,241);font-weight:bold">Short Description</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Change=
r</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0=
,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">O=
wner</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold=
">Was</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bol=
d">Became</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold">Medium+=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;=
text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D14481" target=3D"_blank">14481</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">Programs built with -flto are not reproducible</td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.m=
acleod@windriver.com</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:Navee=
n.Gowda@windriver.com">Naveen.Gowda@windriver.com</a></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom">0.0.0</td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom;text-align:right">5.99</td></tr><tr s=
tyle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px =
3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text=
-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link=
" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15227" target=
=3D"_blank">15227</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom">bin_package.bbclass can no=
t find objcopy or strip</td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.=
macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">0.0.0</td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M1</td></tr><tr =
style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;tex=
t-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell-lin=
k" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15231" targe=
t=3D"_blank">15231</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom">glibc 2.37 regression tes=
t failures on mickledore</td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy=
.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"><a href=3D"mailto:sundeep.kokkonda@windriver.com">sundeep.kokkonda@=
windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m">5.0 M1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);over=
flow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om;font-weight:bold;text-decoration-line:underline;text-align:right"><a cla=
ss=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D15233" target=3D"_blank">15233</a></td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">In=
terfaces, frontends and tools link dead</td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:michael.opdenacker@bootlin.com">m=
ichael.opdenacker@bootlin.com</a></td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">5.0 M1</td></tr></tbody></table><p class=3D"MsoNormal" s=
tyle=3D"background-image:initial;background-position:initial;background-rep=
eat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Th=
anks,<span></span></span></p>

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

--00000000000051d7360607de25d1--

