Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01E83CCFA00
	for <webhook@archiver.kernel.org>; Tue,  4 Nov 2025 06:50:01 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.12293.1762238997529825973
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Nov 2025 22:49:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Q04VRyFH;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-ba2450aba80so225512a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 03 Nov 2025 22:49:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762238997; x=1762843797; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YEnOIQreqmiDoHAIppb2aDTOpSbSCzk6QX8XhOQsOro=;
        b=Q04VRyFHdQuAS8bBEpovNCkR7A1O2ykiEph4/XSlMTVDJeQehm3Dv3Fd5GgLNgnX6o
         O1v9HIW+1AnLUD2EwxhJykLVn5U/aNdT4q1o52Jynygx6uLyJzSGV7v2sQD78RE+BipA
         dpCpDs/FNcdF037HfqqmO6D0BoWjiOH9hio8F1wyfXMHlRa1M6X0z6FoUhNSdvrLgttC
         JYSJH4Qozv+5XOsXML2oVzhjqHpcxuAzXnJmSjEKbn27gj8P1Hti9gOuS1zqQBy0eXPN
         wHCfgrLJciE/ciV/pxbYZ6C4V19DD9E30EDKIcGT30CreAfDjovhA1ZM0wzvEYmwPwcL
         Twlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762238997; x=1762843797;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YEnOIQreqmiDoHAIppb2aDTOpSbSCzk6QX8XhOQsOro=;
        b=aFj1hVcg4KYzpzaL56i072UKG8S4XIl6bK0KiMq87Q/3d20XjC8fWOl4PLJ36jz81b
         a3HDRyef0D2zP7tOOQMcUqQ+HFfhrAHk9jRyhYJypBu7l5AnCy+8lRUdUel/4x3/fXRQ
         CNsa3fcuJUDhguJrPlzPFHl/NwDg6dQ1rzvE2XZpGbqsO2qRQwobOAvRbsh4tG7yjf7L
         WZVJBWEMa3YVqZkjejEZIPjrI7I+wCoMXm5XgS3/rsd9wdORHbOdj8Ep54gzR0C6ngQD
         36WV2WNVZUDFhfquLeYgSO5jtJHRl82w8u4JtbO9/kMch2ukHVKm7a+nRA7FHZL4SRLL
         IE7Q==
X-Gm-Message-State: AOJu0YwqflHn9wBDTWU2AWKNms5XquMi+1xzMddJVXZrXkbADSU+3IBY
	Q6JFXyE/4MMB9nfrz9XczfGVRuQEScmXSVYSfMJbJD/GqE78ZUfAfSVBEXnpLxeW+hN4u8TJO6P
	aLOHPv/bWXi7w4OKAU0NlMyJ1KX7OV0u1JrZR
X-Gm-Gg: ASbGnct57ww7SKAhuLAq04F1d063iIPq0Tp0ORhK4fxhLYcUjS8DjnOP8Rvp8zVihjt
	eAuIzZK9r9ZgYnenU4FYUX0V+gPW08jKbbZfn+Nyjm/cFmEH6/BTj8eha9k+pckfZGwEqbLLCwZ
	ZxcZ95fmNHGfAoGMFu0TgefyWk4P588tc67MX1OWYnYRiwN5d2OWwI0S+jh/QtkoZ45OlO8uK1d
	WuOlzAojjjxPGPsFZ4hQWFu8B2pVwRiiGH7hJcMDnrTXt89Du5BjFQke1R7ygu+Fh5kjc8YRrhO
	48WmlUNZAbsRiaIaBdG/qGbnqoUVvgeKFBIsi+VhuaB9RbUGG3i8tmQpMvlWV+LE5r6T8WwbweK
	6SFg=
X-Google-Smtp-Source: AGHT+IEKrRlMaJ7IR8mdShG29+D4FppDfjGNvBxJhFXfnjUnSsFJ3Ds/62CbGBKaomnKM3g1cTezv4MrlosFq5c96vs=
X-Received: by 2002:a17:902:d2cd:b0:295:8dbb:b3cc with SMTP id
 d9443c01a7336-2958dbbb68emr94176675ad.42.1762238996640; Mon, 03 Nov 2025
 22:49:56 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 3 Nov 2025 23:49:44 -0700
X-Gm-Features: AWmQ_bmXhwRZqZPi1699IFQW7gJ__Y_fctngdeWWfLUe-v_k4foKV2_M8NqyqdQ
Message-ID: <CAK5yBb8ZKzTOf13fpwCb7A=o6ZyvXVrKSQwN+iuO-iTxRynK+Q@mail.gmail.com>
Subject: Enhancements/Bugs closed WW44!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006779b60642bf3d50"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Nov 2025 06:50:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65997

--0000000000006779b60642bf3d50
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
tim.orling@konsulko.com 1
ross.burton@arm.com 1
richard.purdie@linuxfoundation.org 1
mingli.yu@windriver.com 1
Grand Total 4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000006779b60642bf3d50
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
lign:bottom"><a href=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@a=
rm.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org=
">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ming=
li.yu@windriver.com">mingli.yu@windriver.com</a></td><td style=3D"border-wi=
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

--0000000000006779b60642bf3d50--

