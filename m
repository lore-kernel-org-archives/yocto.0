Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 734F6CAC598
	for <webhook@archiver.kernel.org>; Tue, 16 Sep 2025 14:47:26 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web11.131.1758034045770762993
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Sep 2025 07:47:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PvRjpfDZ;
 spf=pass (domain: gmail.com, ip: 209.85.214.176, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-26685d63201so21304675ad.0
        for <yocto@lists.yoctoproject.org>; Tue, 16 Sep 2025 07:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758034045; x=1758638845; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eqNC2xrVilwPMsGdClOpvKUMGf7neNoJNPABPBpDUSY=;
        b=PvRjpfDZYKKn/KJiOeJnvf7GYKAty9E9c6lbjoAk1DS3ATnHzSriVG+4VcT8u6x5k6
         l3h9crXjssFtiqAb1tOBXfw9+lHUUunw9qTk7bXKsN2yApV8JYsJVAhEuurOQR131oTP
         QeobPb0ewXqClkaVX9wvUz/XiBDhnlFAUpqVno95JM4h3HKrRvPfuJxRo6B5WfyOKHY+
         ivgX3mW6i0luV+SIC8DH6qkFIfoKxo9TmvuDMgazmtpxsDTQZ4aoeJqP4R/G88wM7VLU
         a38mUL0PX1oMYUi62gX+SEngsJZa3ttzY84D+POARk0fGoPR0nO8v4wo8RpI9aVbujPW
         qLDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758034045; x=1758638845;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eqNC2xrVilwPMsGdClOpvKUMGf7neNoJNPABPBpDUSY=;
        b=LgLdZCWUqyn4TVy3bNtCqCgTgwtud7ZbV9tuyavodIb5bx0tqHc1afpgwa8IiEdJcE
         5VZO6yC52T/TgjH/EKeySieJCmaBC8LPIu6wul4M924m4faiAJobJmzLdbIUwRtl0tPf
         rof++IkMd+iK+QucZWcJ8YTMlljigRlTQfe2Pl56oBn6aBBo2T230fSkU5fyvkWSKWC4
         KXZFOnREGn0V5NtuB0mfWW90xW+7OmmEoIxrNAB51Mj5H82cC33Ae5U4vyxjpOZ7R2Uh
         vita/zU6OmLYdG4VwUNke4SjX6sR5ykD7JNb+WFPhniJSPMWFgWM+COC0YWV25Qmwtk2
         etCQ==
X-Gm-Message-State: AOJu0YxR8ddb/HAR+PLWd9W/pACjNbM6loR+prk3kiz7m3kG0mKtoouj
	iMmzVTKNqe8cg5NgMoLASBNIGcoQbZro6DKZzqrwWXjOPyXNgN6MKSBhavIRQrEvRGiE+Rg3Udd
	04YMCrTiOGRsxgzwIPIlQZTgSuwXe5k/ClRuR
X-Gm-Gg: ASbGnctkNn4cMTCICPEWLp8P3/stR+0Q+E4aS1KoeeEQQThncaM5Mmy8ZBdc/n1IchN
	UDgJX1z6IDmoes73r1/Ln4ezvyKCva9S+eCh8xM4cPt1ZTG6icf/qYnZGRKblPT8O0LYGP2ZYx+
	alum10Fh78iSWl+gtLtjaBioKT7aZeWW5sA+U339xigL64/7aJGAmywWYpkrUr8HjX2bucx5RCg
	4UGGZHuTYnnYJ7qOR7lGtK12tQqAA41B016d5tSWqchi23VVGug5mqWr+EKWPRryVI=
X-Google-Smtp-Source: AGHT+IGAJniWKbiV+8EFgYJVRVLHaQKLzWvaEtjub0tJiMrOITn86lbuYCRqAHBp47OzJFzzQqjK35GLb2V5/AXyVlk=
X-Received: by 2002:a17:902:dac8:b0:267:6649:ec17 with SMTP id
 d9443c01a7336-2676649f0bamr97283445ad.23.1758034044898; Tue, 16 Sep 2025
 07:47:24 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 16 Sep 2025 07:47:13 -0700
X-Gm-Features: AS18NWAaLv_-4l5hQq3ZdYws_morY2ZY3SbC9M2ZRSz_b892uhJUQrAuK8tkPyY
Message-ID: <CAK5yBb8D-ixuCtKseLCmtKLVBATvS64+ciWG1SShG=uSan-Bmw@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW37
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000bfd112063eec3259"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Sep 2025 14:47:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65845

--000000000000bfd112063eec3259
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW37 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 15932 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15932> musl
CVE-2025-26519 missing in LTS releases randy.macleod@windriver.com
raj.khem@gmail.com 5.0.12 5.0.13

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000bfd112063eec3259
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW37 a=
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
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15932" target=3D"_b=
lank">15932</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">musl CVE-2025-26519 missing in L=
TS releases</td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@wind=
river.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hr=
ef=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom">5.0.12</td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom">5.0.13</td></tr></tbody></table><=
p class=3D"MsoNormal" style=3D"background-image:initial;background-position=
:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-fami=
ly:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000bfd112063eec3259--

