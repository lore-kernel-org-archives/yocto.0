Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D6B5C5478C
	for <webhook@archiver.kernel.org>; Tue,  5 Mar 2024 05:42:42 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web10.14857.1709617358406076096
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Mar 2024 21:42:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YB3sQrty;
 spf=pass (domain: gmail.com, ip: 209.85.218.45, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a45a15f2bafso37585766b.0
        for <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 21:42:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709617356; x=1710222156; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=J+7TDVN5KcHjS+IWSTBiH7DnKczQ1nAtqctKRkRTlTc=;
        b=YB3sQrtyQpTz2UFySq8o6LvsHrw9QW/vtOh1cZJmnQQbTZM4jo0OURogb9aR9LDpB4
         7CzUDBlMaPZFUyS+YaBYxMb3Ybji+vZE1zSYFh59b0Mh5kwQR5ef1LyXidEGJiJQRmrj
         1fQfnXwqdfQRtq4TG3s1StX7NdOC7VlZuI2tPAvS6HlaOa7AG9xWCkOdswD2zhwNZugC
         QP9oAXbJInJLrrxEfoSqg0CeiAFyhuWEVaALpb+4zq1VLJCvDLpBRlZ6B/gj/3HjFcqJ
         Eqdpl8eX7mACv9e4tJA72sGmiAI9lt2i2qJWykOdhQmcwozkDj/aEk1GB1ewT5JKFkXU
         9r7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709617356; x=1710222156;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J+7TDVN5KcHjS+IWSTBiH7DnKczQ1nAtqctKRkRTlTc=;
        b=ld8oQaPrtMEpT/jZrElPY5GRi7LqSVg+0J7NUmK3xKVyX3u6EQZMXpAJ8i7vvOOys0
         OzPft3qeRvg9FRF7gEBOkTiQMW0INeXLg9opuU6YEry4Bvf/90+S1Fc7Q/U0PZxAToej
         +E2zpEbsZ+tCIdWoR9NZYb2vgWMkYCf8Njr5yYiljm2VS0sD5NJmI6T1OWjHM6gTldCH
         IVZgp8+aO23SlHJdCURkJQvOo7SeH47WUCVSQel6NQFTBKf0wZ+ibtl9mhA0Eu4eVXQ+
         RMoKSK+PmSh5Xs1aWB5yL4tR3FBFDOq9Ibfff6C1YrTWMFLOF4gxM8Bm39d/WQV2UoVm
         CNNw==
X-Gm-Message-State: AOJu0YwOKbhB89V1/gS2ZF1qQ9VsTDv9wbPYVurXfYifENdHYdp6KEWc
	+bbv+BypwqLEuBXc5x3STNn6NUaAQSPM8zKvXCzf0nVmmsYxPEJBhPiV62OCGjqzbKn6Oh2hq4f
	n/W9sBhuYNEzmkQis0v/mCAe60lhjWEB7+5I=
X-Google-Smtp-Source: AGHT+IHNInXjjTRUasYHd0aFqrd+pA+VqJ5kGitXFm08A+jGr3FGQYbiDhIjr1cDqY6G075hxgK4QHXns6BIHMZJMqE=
X-Received: by 2002:a17:906:c7c3:b0:a3f:1b49:c92b with SMTP id
 dc3-20020a170906c7c300b00a3f1b49c92bmr7951349ejb.48.1709617356298; Mon, 04
 Mar 2024 21:42:36 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 4 Mar 2024 22:42:25 -0700
Message-ID: <CAK5yBb_bhqT-O4c0U5scduK1zn2FO3nFt--WuRzMV9p3HZFmuA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW09!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003961bf0612e34fd0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Mar 2024 05:42:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62679

--0000000000003961bf0612e34fd0
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 3
tim.orling@konsulko.com 2
randy.macleod@windriver.com 2
nick.owens@eero.com 1
Grand Total 8

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000003961bf0612e34fd0
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
"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;text-align:right">3</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko.com</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;text-align:right">2</td></tr><tr style=3D"height:20=
px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@wind=
river.com</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr st=
yle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"><a href=3D"mailto:nick.owens@eero.com">nick.owens=
@eero.com</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr st=
yle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold=
">Grand Total</td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);f=
ont-weight:bold;text-align:right">8</td></tr></tbody></table><p class=3D"Ms=
oNormal" style=3D"background-image:initial;background-position:initial;back=
ground-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans=
-serif">Thanks,<span></span></span></p>

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

--0000000000003961bf0612e34fd0--

