Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF9B8C67861
	for <webhook@archiver.kernel.org>; Mon,  8 Apr 2024 19:42:33 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web10.117895.1712605343578703383
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Apr 2024 12:42:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TskCJhst;
 spf=pass (domain: gmail.com, ip: 209.85.208.45, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-56829f41f81so6893607a12.2
        for <yocto@lists.yoctoproject.org>; Mon, 08 Apr 2024 12:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712605341; x=1713210141; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UhkTEavmkEPJ5FHzOo74whnuYxpGUAPPxb0HOShDcyM=;
        b=TskCJhstMrdB9hvH3bi5vfrfSIMGm/Bm9KQ8Vt/vfmmXqBLkBkKARd2OCFsKVyZ8xL
         SPUWp1xZQZKkGrWYJ/b96EvBo0rvy1gCxFeaWyTy43RvL75k+X9AheFf1m6TxzNcdMRl
         re1L5veQSbEV4uLVuvNLLxBm40rk4S2c3FWV7R+IjEo4QPmMxXxpM5NgI/52GqBrv5Sk
         lZyeb/3rWmcMY2J5wYNMO1i8UekJPUCtACaEYtrmd3hhuVm3RxgoJp5If4X/LqFACBWe
         Bbie7CxIyI53Oop5o2KofbXX5HRlnVMTOuQwRTOqDzy3FHrt0BBOGDGNgevPGAoQlaPf
         zCog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712605341; x=1713210141;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UhkTEavmkEPJ5FHzOo74whnuYxpGUAPPxb0HOShDcyM=;
        b=RgCFTsYj52gAdTprs8FHIHcs+vFO6jffH5emWQi54sCsAA/r0ecGkIwZtbIBwZPiJE
         6TFiNC/PVeC6VRt06OJrMfTd4+MO4UugBj5ezHlwsUd9cv3YpBeG2HCWDCGDVGBWk7u1
         lsuuiOiaZtL+4+/Ujv8fSQRkQp+Fv11YdqjhEcA0jx7rziygo7xdQKvy4vlblldtmOEw
         S68wZzG0PnqyIWdC/eJ6WLDvL8iEOc0x1mQUzfg6ftRRFHrk+lVm0auLeMGePIyT/SvM
         sXUH1ZVOMQw9xpbjMsVooRhpxhWo5Iz44ob2u3T6O5ZpVyJtqQwvyaOcC+sot9Boy6Bi
         nfpg==
X-Gm-Message-State: AOJu0YyxDVBG+734U4WSGuC76TCgHLBMvYsgAlDkyUpFt9B5Gg6BbXKB
	kOY9/oRXd4ekkjJVPtsNwiXdAkRT3HzIFVd/16a/iVtnMz376yCeBKt7EyRoCEw+YRUpQ+t9GOV
	zqQOHtxXKF2VbziIugAVTCLphuU+a9drXtoU=
X-Google-Smtp-Source: AGHT+IH9V1pzXmKQP04DVO4vpv4WBI9Su6s/OIn79YsR7n3exXHzXpdBgZrt6Vclo+fZGzZhUcRwt+6TreWMe4n+Bok=
X-Received: by 2002:a17:907:3daa:b0:a51:d4fa:cf92 with SMTP id
 he42-20020a1709073daa00b00a51d4facf92mr2902667ejc.14.1712605341602; Mon, 08
 Apr 2024 12:42:21 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 8 Apr 2024 12:42:11 -0700
Message-ID: <CAK5yBb97fJE8RAV2kkhKb-fkX3bub4JNSr+iR077qcZ1yB4TrA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW14!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000006d9b306159b01c7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Apr 2024 19:42:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62905

--00000000000006d9b306159b01c7
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
tim.orling@konsulko.com 1
Grand Total 1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000006d9b306159b01c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>The below were the owners of enhancements or bugs closed during =
the last week!<br></span><div dir=3D"ltr" class=3D"gmail_signature" data-sm=
artmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><table cellsp=
acing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-layou=
t:fixed;font-size:11pt;font-family:Calibri;width:0px;border-collapse:collap=
se;border:none"><colgroup><col width=3D"249"><col width=3D"42"></colgroup><=
tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(21=
9,229,241);font-weight:bold">Who</td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(2=
19,229,241);font-weight:bold">Count</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko.com</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20=
px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom;background-color:rgb(219,229,241);font-weight:bold">Grand Total</t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold;=
text-align:right">1</td></tr></tbody></table><p class=3D"MsoNormal" style=
=3D"background-image:initial;background-position:initial;background-repeat:=
initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks=
,<span></span></span></p>

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

--00000000000006d9b306159b01c7--

