Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C738C25B78
	for <webhook@archiver.kernel.org>; Tue, 28 May 2024 05:40:10 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web11.15615.1716874802596409547
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 May 2024 22:40:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Q9UTNHLd;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a6266ffdba8so29511466b.1
        for <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 22:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716874801; x=1717479601; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QHu2QQhSB0dyPk27Q+IHTvaucj/InXGNZN4b9oxQ4SQ=;
        b=Q9UTNHLdHh19ykz5k9k7RIfuzk5jq/JQyJR65ThY+a2LP1crfwkS7+pLS+EgIpbrDF
         mGYyemO1m2m5uuz7ab3Z2rq6hHuSCsoMuLQnSoQcypfw0boFrdPJ6WjplkhocZWF9iC3
         j7AfUuuxmFkAreQfujw5e0/2lKhBqvr51jerIeNoMhN7kUKBqadtG0ufHIMbF5CpmsC7
         clox941uI60CD8mwHLJADwNyXsbongYnmgo260eK9c8ZnLsTIyNZXN1zHkRkXoGHD5T5
         QuNx2Ko+jzOHo8Akwr/bDT5hTfZCQXNz8B5hshS6Mm8C5GRUDrX0nYEEGniE4e3Knehc
         Uqpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716874801; x=1717479601;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QHu2QQhSB0dyPk27Q+IHTvaucj/InXGNZN4b9oxQ4SQ=;
        b=NHj0MWzJtJgPd9SFa/9CgB3XrSX2ayX/jhXu2JClWy1bRmkF12sXbswstDCBAFk/mN
         Scnv8ncVA4uX99lhnAtamBw3qxZnMzbPRkz+LFXacSGmPhgNDJExr5TtNaLSFQYE7dtI
         8FIHtH4iA7Pb90L/3WRRFv6kuxASaKmG+RuguC3xcpNdXzanINdEI+4FSzfgy0yOxotR
         aslI8ZIjHlsIaPhKRE5uE6inaE3nOUIx7jX8eKprGJZlPAiD48bDRepZV5iHpFzuByRD
         SY1d2LFUPaEGOPgPI4qY3CoKwpnDpe6OYe/Tc7YIDSjzAXsvI59CWLS5AkRDMjsesYdu
         Vk/w==
X-Gm-Message-State: AOJu0YyKulVEIIpa6teOk21iIuuZaywf2R8ZOKIY1kWxlRdh3aT9HS3h
	uk62tndtqS0f0IGfMyibwgoRBlSvaYfsL3odpBrD9JvjqeLFQFXUNUcBH+ptQPIIn4f5fLUnx9H
	QrVQrhdXth3TaoMR4sP/Gcr/ezppjOc/E
X-Google-Smtp-Source: AGHT+IFv5LV8Ckk7K+dT4AzuUXLLBGywNB/w0lrLGovB2rtAUuvlMnZ4aBSN8nmdK7p6e8VAJVc9hzO5HADVfAFeQkY=
X-Received: by 2002:a17:906:3b88:b0:a63:41f7:d47 with SMTP id
 a640c23a62f3a-a6341f7167dmr53553366b.39.1716874800762; Mon, 27 May 2024
 22:40:00 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 27 May 2024 22:39:50 -0700
Message-ID: <CAK5yBb_wgrC1Ah7p0Eiaj7jK0krRvvGKwXDmLgE3mTKYFaVJZQ@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW21
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009f961706197d104d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 May 2024 05:40:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63214

--0000000000009f961706197d104d
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW21 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 13190 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=13190> RRS
cannot handle multiple recipes with same PN randy.macleod@windriver.com
unassigned@yoctoproject.org 5.0 M4 5.1 M2
14403 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14403> Qemu error
messages not clear when command line is corrupted.
randy.macleod@windriver.com randy.macleod@windriver.com 5.0 M4 5.1 M3
15270 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15270>
patchtest-send-results
should reply to specific threads randy.macleod@windriver.com
tgamblin@baylibre.com 5.0 M4 5.1 M2
15439 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15439>
python-cryptodomex
has inconsistent internal imports causing ImportError
randy.macleod@windriver.com eroderic@digi.com 5.0 M4 5.1 M2
15486 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15486> Meson
broken in eSDK randy.macleod@windriver.com ross.burton@arm.com 0.0.0 5.1 M2
15491 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15491> libz-src is
not reproducible randy.macleod@windriver.com unassigned@yoctoproject.org
0.0.0 5.1 M2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000009f961706197d104d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW21 are li=
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
yoctoproject.org/show_bug.cgi?id=3D13190" target=3D"_blank">13190</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">RRS cannot handle multiple recipes with same PN</td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.=
macleod@windriver.com</a></td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:unas=
signed@yoctoproject.org">unassigned@yoctoproject.org</a></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom">5.0 M4</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">5.1 M2</td></tr><tr style=3D"hei=
ght:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom"></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration=
-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14403" target=3D"_blank"=
>14403</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom">Qemu error messages not clear when co=
mmand line is corrupted.</td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy=
.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windri=
ver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom">5.0 M4</td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.=
1 M3</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:=
hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;fo=
nt-weight:bold;text-decoration-line:underline;text-align:right"><a class=3D=
"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D15270" target=3D"_blank">15270</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">patchte=
st-send-results should reply to specific threads</td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com=
</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"><a href=3D"mailto:tgamblin@baylibre.com">tg=
amblin@baylibre.com</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M4</td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom">5.1 M2</td></tr><tr style=3D"height:20px"><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;font-weight:bold;text-decoration-line:underline;text-align:right"=
><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D15439" target=3D"_blank">15439</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom">python-cryptodomex has inconsistent internal imports causing ImportErr=
or</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com=
">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mai=
lto:eroderic@digi.com">eroderic@digi.com</a></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0=
 M4</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom">5.1 M2</td></tr><tr style=3D"height:20px"><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bott=
om"></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underl=
ine;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D15486" target=3D"_blank">15486</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom">Meson broken in eSDK</td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</=
a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.b=
urton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m">5.1 M2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);over=
flow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om;font-weight:bold;text-decoration-line:underline;text-align:right"><a cla=
ss=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D15491" target=3D"_blank">15491</a></td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">li=
bz-src is not reproducible</td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ran=
dy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"><a href=3D"mailto:unassigned@yoctoproject.org">unassigned@yoctopr=
oject.org</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5=
.1 M2</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-i=
mage:initial;background-position:initial;background-repeat:initial"><span s=
tyle=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></=
span></p>

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

--0000000000009f961706197d104d--

