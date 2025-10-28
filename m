Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47A55CCF9E0
	for <webhook@archiver.kernel.org>; Tue, 28 Oct 2025 05:13:25 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web10.4966.1761628395267069164
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Oct 2025 22:13:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LyzZlmbH;
 spf=pass (domain: gmail.com, ip: 209.85.214.176, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-29488933a91so52560645ad.2
        for <yocto@lists.yoctoproject.org>; Mon, 27 Oct 2025 22:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761628394; x=1762233194; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4sHzUsxo6/DQApYMiC4Nxr5CpiHbPTiOVU3+BS7jvAs=;
        b=LyzZlmbHLA9zEg46LsLOCBFM9M/rkZSoi6bgWtdcBe6OhtWqOhap9STZzei6Ssg/dI
         Haf/T+zyH6A8LQbhEWs5QSDhJ+DS51QSX2YKXRWnZ4tVTZoEmfcp7DgxfbwPc07p5+gt
         CLOUBEG+a0xGlW8Rzgz/f2NiI29/21roCAkKGXxTBXQpkV3DfT+b60/ypSQ9PWAe5YKV
         LyQkdAX/LGQT9NwFvwnvF91Soj4qxuRHWY7Rf0Z7WIH1dHo0xZvxrn8FV1UEZCuGkWcq
         LB3ziqvuExN4y0S/Md1bS3+f8cUSwKIGh/l1hH4x6mHcNv5lYsdmSyo+iBQFkpxFl4Ea
         0wDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761628394; x=1762233194;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4sHzUsxo6/DQApYMiC4Nxr5CpiHbPTiOVU3+BS7jvAs=;
        b=eyqWMbK9gQfs09uyaNo3zv+IozMRTac+1BnT6y8jgt9DPq03SEwMNPpu3xHXpZ592E
         x2ykgynQ9V0VTMYquSmMvvvszf0NWy2QN28jwTF3Wqc1xu/GSj2WGSLcbd62ryfUncHL
         v1LSEpcJfSQu/WAra537+ofS9tnsF/hWUU5fH/u3Yj1441ULwZ9iKLb6w4l3jOO29wLX
         19uQ3YgzfnykbNpy9CHZbgMz0jgTgiA2fmqYtFG++7FCycFk1hyZBW6ZdLtfSPH1lHIo
         WJG1Uie60SSZMFA5hraSYY1lp7LJlTjv/pC5sGsgNgpkA+4hlHe5dRlaWb+BqVLQoojc
         i4ug==
X-Gm-Message-State: AOJu0YxdIzpnvL84SO4bITdVPMn5IaprOeZ72Z6LvHLKOyXC+g2IVqK2
	7LU7vxDAg2EX1lzE2ocnF+RNFWBfwi30K7NRSElSFL99Iw22QEOGbmJRjBCaZouPgPXJu6v/5VP
	K6899/Rj2kf269DexBrlL5bftAPhtz9tTNOQk
X-Gm-Gg: ASbGncvSaV2MrbXNQyiYB1YAHdAmAIatpg5qWC7oCKmIXfsuIm3uqdaLu5PneQ1UU4n
	tRDdU3VEtS7+fugc666pfyTvS9q88GS+l9SWmk4+UaQyiSvSIlEroL1KNR1IQEWmcXYwgqwQ+cY
	/K69ARWl0S3b9osySD0gG680HdyEeH8vzGkQkifGyy4yZZLvW37jGSE1y+ua6ZMXf5I5GvIIj/d
	niGTdnycVif3P+eXp4k7DQzilb1lyATIIF6Q6+jXauVetUlOP/AiXKmTdfEYuzfJSNU5+dgHUDy
	MKsLh52ZfmmtwzpPQw==
X-Google-Smtp-Source: AGHT+IHW1bAGvtYBiAEiwzTtyXbc2VdRQfRV/Vrtf+jdXyTm51G9qC2SEhnuIH5T017wc3bwZmLAtLdM1YqEH1o7cic=
X-Received: by 2002:a17:902:dad2:b0:290:b53b:7459 with SMTP id
 d9443c01a7336-294cb668c58mr27834775ad.56.1761628394318; Mon, 27 Oct 2025
 22:13:14 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 27 Oct 2025 22:13:02 -0700
X-Gm-Features: AWmQ_bnO1lCN26sf_at6-m_iN2uuBZUwSdWTEpgoZAlqaO9mxTl5VuYLQdm0jfw
Message-ID: <CAK5yBb_2H1bkno=pBFPbUOceqh_Xe4fH-z_1d7xU02LyHPtqdA@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW43
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ab713f0642311272"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Oct 2025 05:13:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65973

--000000000000ab713f0642311272
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW43 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 15977 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15977>
python-core:
importlib.metadata RDEPENDS on several other packages
tim.orling@konsulko.com colinmca242@gmail.com 5.3 M4 6.0 M2
16016 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16016> Add test
case to verify that Poky can build poky tim.orling@konsulko.com
unassigned@yoctoproject.org 6 6.0 M1
16019 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16019> Review
python standard library splitting tim.orling@konsulko.com
tgamblin@baylibre.com 5.3 M1 6.0 M2
16026 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16026> Recent rust
changes to use external LLVM breaks rust with clang + llvm runtime
tim.orling@konsulko.com raj.khem@gmail.com 0.0.0 6.0 M1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000ab713f0642311272
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW43 a=
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
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15977" target=3D"_b=
lank">15977</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">python-core: importlib.metadata =
RDEPENDS on several other packages</td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"ma=
ilto:tim.orling@konsulko.com">tim.orling@konsulko.com</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"><a href=3D"mailto:colinmca242@gmail.com">colinmca242@gmail.com</a=
></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom">5.3 M4</td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">6.0 M2</td><=
/tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:=
bold;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in-=
cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1601=
6" target=3D"_blank">16016</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom">Add test case to =
verify that Poky can build poky</td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:tim.orling@konsulko.com">tim.orling@konsulko.com</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom"><a href=3D"mailto:unassigned@yoctoproject.org">unassigned@yoctoproje=
ct.org</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">6</td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom">6.0 M1</td></tr><tr style=3D"height:20px"><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom;font-weight:bold;text-decoration-line:underline;text-align:right">=
<a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D16019" target=3D"_blank">16019</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om">Review python standard library splitting</td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko.com</a></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom"><a href=3D"mailto:tgamblin@baylibre.com">tgamblin@bayli=
bre.com</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom">5.3 M1</td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">6.=
0 M2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:=
hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;fo=
nt-weight:bold;text-decoration-line:underline;text-align:right"><a class=3D=
"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D16026" target=3D"_blank">16026</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">Recent =
rust changes to use external LLVM breaks rust with clang + llvm runtime</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:tim.orling@konsulko.com">tim.orli=
ng@konsulko.com</a></td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:raj.khem@g=
mail.com">raj.khem@gmail.com</a></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom">6.0 M1</td></tr></tbody></table><p class=3D"MsoNormal" st=
yle=3D"background-image:initial;background-position:initial;background-repe=
at:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Tha=
nks,<span></span></span></p>

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

--000000000000ab713f0642311272--

