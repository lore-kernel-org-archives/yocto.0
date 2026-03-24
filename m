Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11607F54ABE
	for <webhook@archiver.kernel.org>; Tue, 24 Mar 2026 14:03:38 +0000 (UTC)
Received: from mail-dy1-f175.google.com (mail-dy1-f175.google.com [74.125.82.175])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.20269.1774361011428692493
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Mar 2026 07:03:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=f3gg8ugw;
 spf=pass (domain: gmail.com, ip: 74.125.82.175, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f175.google.com with SMTP id 5a478bee46e88-2c0ecaae7dfso8818281eec.1
        for <yocto@lists.yoctoproject.org>; Tue, 24 Mar 2026 07:03:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774361011; cv=none;
        d=google.com; s=arc-20240605;
        b=PxMRBHB66lx30pTfSkEYG19F/ohIga+Jvgyl/zBPRNXGr/Mm4oEeNYI9OGUIQPhCV5
         n8K8eRM73EPZ+LYkH+g5qTqi6O3a0UH37Qjs/gkR1ffmYgYfQF5w5erI5T291iQbUrgv
         Q9AI5kxpfA/zyLUAwU7oRmdVFZ7TLRdZ69lu+u6wUTw6iQikcdKK3L8FLhjjX6Gh7xUz
         oBIKgBdO+/ctciQwDczZwq9owv3Sjrh2q0kzq5lCM7bQyvPQD9s37LE/nbfQFfSvUWK8
         jc09h1ubWhV8vYCYxn83tSG6jxV3mMyZmSsHvRIyAoKTzk04c98OlvDl2MLvahqeGonn
         ZGkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=3EYhiz6zsCb0zUWt5BXxdSonhDBpOxp4IQJd3w8MRlM=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=Q+8KZHMydZIPtPz04BP1jt8TrR3qdrrtkKwSTqtu8Ls0ROnU1vgmOMYK6lT2DK/Tin
         II3CBPBuBxSL4dfM7hhAfaFTXFuELFYls+tb5J8LGDxASXKX1A68FSclCbjmxEEPpQo2
         o3doHo6xJEtO7EGcLiN8KV9S8pxjQ2ZNPCwxN/29GePtBC5jE26nlyWDsmBcFbXhaE3z
         f3Pm8Su6YkKPsmP5KWRL2bl4NRE3+ZH6ID+PZs+5IF308Xi+os45mb4ZMUqPryJWTYVm
         IRH/+mgcJnviaXraNxXwpeh/5z6tvd8DTCeqw7kyhpRMzvuTMad4DhAgu6fux9wkFABz
         TvQg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774361011; x=1774965811; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3EYhiz6zsCb0zUWt5BXxdSonhDBpOxp4IQJd3w8MRlM=;
        b=f3gg8ugwyrWcXksV9moY/kDPEC8X9nbs60e7lHYL4siuHOGwYdotG+jOkhyf3uGRqT
         H2S3F30S+5wj15y7DoSS+XyGEpjxQM2Yqv8t5o86EpLaSugwpzKGUCFWmFlTTtQMV636
         dsYVXy84k82k4h+SeI7621zoY9HzVQvTG7blKh7Kmkb5A4ECV4ZA7UNsIM/gq7MBtBPC
         CvwTLmOOdsLb7hsQSVzed5gCDij00f1Q6TKy0ujhshpTtubTBA607VPo1qc/lB7MAor3
         pX4cDjMeUXKcWowLaJqWRNCbabYjBqhI8CUVHUNQ1xZxgJNm5FCHvBOjwzp3CWidEJWW
         vK7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774361011; x=1774965811;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3EYhiz6zsCb0zUWt5BXxdSonhDBpOxp4IQJd3w8MRlM=;
        b=EiJ0O8cMCzHSXe3RpbY3TWOANZdLkTmxAlMp1l+ODdZSjdEiU7mlzQ95My4uUrMc+u
         5G4wf4gO40iof8lcU1A1j1L2jWV0c4BW7Fgl7KKYynBqqSi7IzFxH6LzLcNy/RXPJLRz
         nC7rgJezPIQSXRI1kryLNbaQxC0bMrradBSFfiPBd+Vi6NYsEWCZC9DP3mjPYeA86DhG
         wi4NH1F/uZqYbtTo6BSflV+mpn5+RVqEmdY7AaB3rKuOpT2Ix+157VFzfqUYwfSqqUs4
         KykpqPwGoyw/so90jq86JJtxdAdnw7w8DZHIuBPnZjvEXmodHlIPwsJEynaiG8rUGfqs
         p11Q==
X-Gm-Message-State: AOJu0YzTG0+hoYrruR48M6psbQs19+5qbU8ULK4dlX5qAbVLyUDHnbUr
	ii7/iBUR+VypLA9SMuRpM6Ma4JtKMPgDqdYde3d7u9ZDnBNFbK2tx5++9YoPJAkGlihmPfCtWvu
	H2sls2OwcMUJXw3xDZa/NHjsv9UmQgrOzEm4b
X-Gm-Gg: ATEYQzzealRxiZgm0+e1oShoIwQLgkMLQhN8RoEip/Ec12TGQA7LDmQqC6cWGFjvJKz
	S2RCAutsBl9kLLVr12I96W9HpufajwKcxYZJawKNB0kgpbaIcwbd9KqFOpcenOCxMnaHXZSplvQ
	RvQCZAe6viCqlPurZDe1ZLQsopGUdS0oJsSdWEYM8K3pqFuvISxAJUzHojaQiBK68ibDbwIVF3U
	0bMJyMUVvH+PEZ4TYo6bW9FsAFM7uIgdeCXkrP1k/VbAywDyDeQdqo7PTUqQ4qmi2JhwRZHe77h
	QzMRNk/oaP4PffhR5hBxcsWw0vmQQwLMmYx8EHekx1GNbJtejpdWBhRBa17ueVwZ4B41Dyl3qHN
	1YIhEtUwV0p87TzVkPxHF5Za5Zos=
X-Received: by 2002:a05:7300:d50f:b0:2c1:23d:c73b with SMTP id
 5a478bee46e88-2c1097c1a67mr7705441eec.34.1774361009027; Tue, 24 Mar 2026
 07:03:29 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 24 Mar 2026 07:03:18 -0700
X-Gm-Features: AQROBzDP9WeqK5_JpN5zRYaX3_1y08r5TQF-6qRrxJtapQC2Om9TTVKJtEL0r08
Message-ID: <CAK5yBb_vDtRGMPhTgvPQCHJJ2e7DP7DnozuG7ze2eDFYwumT_A@mail.gmail.com>
Subject: Enhancements/Bugs closed WW12!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a57f83064dc59d62"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Mar 2026 14:03:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66350

--000000000000a57f83064dc59d62
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 10
bruce.ashfield@gmail.com 2
richard.purdie@linuxfoundation.org 1
paul@pbarker.dev 1
JPEWhacker@gmail.com 1
Grand Total 15

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000a57f83064dc59d62
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
dden;padding:0px 3px;vertical-align:bottom;text-align:right">10</td></tr><t=
r style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:bruce.ashfield@gmail.com">b=
ruce.ashfield@gmail.com</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</=
td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@li=
nuxfoundation.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:paul@pbarker.dev">paul@pbarker.dev</a></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;back=
ground-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-align:=
right">15</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"backgrou=
nd-image:initial;background-position:initial;background-repeat:initial"><sp=
an style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></spa=
n></span></p>

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

--000000000000a57f83064dc59d62--

