Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE05CA0ECF
	for <webhook@archiver.kernel.org>; Mon, 11 Sep 2023 21:48:09 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web10.10858.1694468883864930928
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Sep 2023 14:48:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=Z2PhPYKX;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-529fb2c6583so6363601a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 14:48:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694468882; x=1695073682; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=S84vCmDEI/PE8BUuDiAyFGJ1x4iMCL3aitnDBEQVgkc=;
        b=Z2PhPYKX+ysFExFMo0rkOOuIIokXrFWUrEsx9jhtoy4vlYur6WsMMutl3lww8DdCNT
         VbeLsZkm/V+A8KV/mticmx2MUutofyxuRqMWr6XUXBN6MFj0nhfn4/UhG6d/MKZ2AA9x
         FrQpokpnNUnSEaQqdEQCh0iV9fHf1F3HWjJ5dqYS4ZE6w9P8o9uZITt/d/LyNyB1EhCf
         D2RdyscRfScEiMaFnZI2iNJ5Q4DGoWQquUOnrzi8bEM+TO6tKyiqqrzbRnvGAJVrXSJY
         6/y0W4bdDkN8ouXOIZiKIf3gsPxGgG93Nm+ysPYtcHjqMnFE0ekDDXZDxZDCgM8VjZ6T
         2VDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694468882; x=1695073682;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S84vCmDEI/PE8BUuDiAyFGJ1x4iMCL3aitnDBEQVgkc=;
        b=FjkV9PFCK14qMPURMupygpwr1BenG4YacCvR5OxPbGV3YjhL8JoeDyMfNzFQ7e9SZy
         qzn0/BxhOBwGtjqztJyX3Dp27Z5WIcPdwALIMjfwVYk22eosxR+GIq8t/FG3jaBnAPw3
         uynUqvD9oUKvpxaeIO8DiL8vIeMme7D2ujjWhi0UWCj9W5BtIjk3lbmOTNKtDwxGMEIP
         ppnYaNlgUEhfQIjEVM7MEB5ip35T3wIDU+tlMVEGPETyvRye/2xiPqGxrqM4FsPLu4oR
         PgDjG5996+7kYL0CqRluP9s0rQrEB/rVz8RJn86nwbSHqwxjXS1l5a9jx0Oc2X6MDV3z
         t9lA==
X-Gm-Message-State: AOJu0Yx8Q0B4XJNpmuIlKrIzYkfhHFfHXuDSHnmKlbMQoZvbHAU6h1ce
	hHbikFOaBC6t+gZe4laGTNu1Qbq6FuVJM8/2HtLMd6zDXP0=
X-Google-Smtp-Source: AGHT+IHiSRGgRPALsOC5KJyxgThSUazdruSPs6L/t5yQPtv0doCGP69V40jdHTmBHfAvrVrMdxO39MPVbaK+78D4SbE=
X-Received: by 2002:a17:906:30c7:b0:9a5:7e63:2df with SMTP id
 b7-20020a17090630c700b009a57e6302dfmr9206432ejb.1.1694468881769; Mon, 11 Sep
 2023 14:48:01 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 11 Sep 2023 14:47:50 -0700
Message-ID: <CAK5yBb-vup3UXGf294qYvN+Wx7OQs1qVtg87zEMY_SP8HdsmXQ@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW36
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c7ea7606051c47d3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 21:48:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60978

--000000000000c7ea7606051c47d3
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW36 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
High 14901 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14901> lttng:
collect TAP output randy.macleod@windriver.com alexis.lothore@bootlin.com 4.3
M4 5.0 M1
Medium+ 15205 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15205> Need
to cleanup work directories for cancelled builds
richard.purdie@linuxfoundation.org unassigned@yoctoproject.org 0.0.0 4.3 M4
15206 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15206> qemumips
BUG using smp_processor_id() in preemptible randy.macleod@windriver.com
unassigned@yoctoproject.org 0.0.0 4.3 M4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000c7ea7606051c47d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW36 are li=
sted below: <br></span><div><table cellspacing=3D"0" cellpadding=3D"0" dir=
=3D"ltr" border=3D"1" style=3D"table-layout:fixed;font-size:11pt;font-famil=
y:Calibri;width:0px;border-collapse:collapse;border:none"><colgroup><col wi=
dth=3D"63"><col width=3D"43"><col width=3D"543"><col width=3D"235"><col wid=
th=3D"242"><col width=3D"53"><col width=3D"53"></colgroup><tbody><tr style=
=3D"height:20px"><td style=3D"border:1px solid rgb(0,0,0);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font=
-weight:bold">Priority</td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241=
);font-weight:bold">Bug ID</td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229=
,241);font-weight:bold">Short Description</td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-co=
lor:rgb(219,229,241);font-weight:bold">Changer</td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgrou=
nd-color:rgb(219,229,241);font-weight:bold">Owner</td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;backg=
round-color:rgb(219,229,241);font-weight:bold">Was</td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;back=
ground-color:rgb(219,229,241);font-weight:bold">Became</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;font-weight:bold">High</td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font=
-weight:bold;text-decoration-line:underline;text-align:right"><a class=3D"g=
mail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?i=
d=3D14901" target=3D"_blank">14901</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">lttng: co=
llect TAP output</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod=
@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:alexis.lothore@bootlin.com">alexis.lothore@bootlin.com</a=
></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom">4.3 M4</td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M1</td><=
/tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;font-weight:bold">Medium+</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;font-weight:bold;text-decoration-line:underline;text-align:rig=
ht"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D15205" target=3D"_blank">15205</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom">Need to cleanup work directories for cancelled builds</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard=
.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:unassigned@yoctoproject.org">unassigned@yoctoproject.org</a></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom">0.0.0</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom">4.3 M4</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;font-weight:bold"></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-wei=
ght:bold;text-decoration-line:underline;text-align:right"><a class=3D"gmail=
-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
15206" target=3D"_blank">15206</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">qemumips BUG =
using smp_processor_id() in preemptible</td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:unassigned@yoctoproject.org">unas=
signed@yoctoproject.org</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">4.3 M4</td></tr></tbody></table></div><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><p class=3D"MsoNormal" style=3D"background-image:initial;bac=
kground-position:initial;background-repeat:initial"><span style=3D"font-siz=
e:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000c7ea7606051c47d3--

