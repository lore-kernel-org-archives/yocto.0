Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26593C4829A
	for <webhook@archiver.kernel.org>; Tue, 13 Feb 2024 04:55:42 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web11.4829.1707800138180878850
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Feb 2024 20:55:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=B87nqIUp;
 spf=pass (domain: gmail.com, ip: 209.85.208.54, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-560e9c7a094so5090378a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 12 Feb 2024 20:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707800136; x=1708404936; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1lz76MjjFVQDCROyBvAOAnbnlJ5MJF/JRrxF0Lp/DzI=;
        b=B87nqIUp7vYMeRha+mCKQDVSxf0q4MxMh9+3NK6KgeCQUptPoF+GVzWCluOWj5zdZi
         kO9+gW3XVcjY2URmnLkiUrIdC7gxBLLkfg3ugfbWUjudW66g2aZHmQbC0bgK1flAqgDa
         sWLpZdrGkEpSbdWi4wzFYsjCkNk1vLVQqclaCU0QQJ7Z+114aWwdLGMwI6dmXnWG46f8
         tBPx9oGvZpIPyx3dc0fkDWKQwfJZ/MN86gJ+zg+64OySZo2Qhtgha8ENLOZFXcSM9THp
         XWJuWZmJqVgw3vMqQqkdpJmZvCvjWmYjvkiuUjcbKmHehxB9jQTLvRkeONp0ruFWJo8o
         ycjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707800136; x=1708404936;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1lz76MjjFVQDCROyBvAOAnbnlJ5MJF/JRrxF0Lp/DzI=;
        b=lrKc4ywbXokboH12dy0ysQjDevkE36A/bjwAfZTRSBpgR+fF0vntzoTp4+/lxCDzYl
         n5FhRi69syEXn4IMc4ESmZIodJt9UMKr5O+J/CNFc2aiMAQTQ0EHgkdu6uzZDIVvQz8D
         R9cUam65z0Nsc2TARXsNbVvfp95H7phh+XIGNxkZXOkHVmaKPy5NL/EpMeCVyJs6WjFj
         CsVvvmWtBLoTi2LdVz52JUq6BmO4SWHNcpy8XLNpKlE9e1CkSNeUq8dpPGHZHupoiRmJ
         niRbbkLVqiUENHNo+scP13Jvm7PenU+y4rVXcUyZjyOieC7I7o3RcxGZwaURkFtsfq/v
         S43g==
X-Gm-Message-State: AOJu0YwuVuLBQWr2TDz0ld1BVAZi86iqvQ6/UgScnSdaffc8c9/ZeUKC
	3qSgNQ2+liyzVKL1Z+aheiHbY58E8B5W5q18rXRtf3uJPL2CTNuLSmPH+k2PY7RbySynC5/s4jn
	FAMGV+aT5l90Odj7zY5fw9bcKAw4Nb4++A0w=
X-Google-Smtp-Source: AGHT+IGxGiSMzVt6rGE5ZIrzUcUc0jB6qlRNH9DTLd7S4VRCvw1ZqSyMF3mGt0m/7kzE7r+Ayv6iPwxaGK2efjIx/xc=
X-Received: by 2002:a17:906:3489:b0:a3c:e69:a62b with SMTP id
 g9-20020a170906348900b00a3c0e69a62bmr6215682ejb.26.1707800136344; Mon, 12 Feb
 2024 20:55:36 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 12 Feb 2024 21:55:26 -0700
Message-ID: <CAK5yBb9EKS=Xbgr0NYSRNiAnPHTX9n6-OGBjK0kMeLJtrJY_Pw@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW06
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007966c606113c3475"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 04:55:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62473

--0000000000007966c606113c3475
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW06 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
High 15270 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15270>
patchtest-send-results
should reply to specific threads randy.macleod@windriver.com
tgamblin@baylibre.com 5.0 M1 5.0 M3
Medium+ 15383 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15383> rsync:
The fix for CVE-2022-29154 introduced a bug that causes rsync to hang
forever with --relative randy.macleod@windriver.com
matthias.schmitz@port4949.net 0.0.0 3.1.32
15388 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15388> Pagination
needs to be rewritten (e.g. Machine -> Browse isn't paginated)
randy.macleod@windriver.com tim.orling@konsulko.com 0.0.0 5.0 M4
15389 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15389> Patchtest
reports a failure but says "OK" at the end randy.macleod@windriver.com
simone.p.weiss@posteo.com 0.0.0 5.0 M3
15390 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15390> patchtest
didn't report that the patch was still authored by AUH
randy.macleod@windriver.com tgamblin@baylibre.com 0.0.0 5.0 M3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000007966c606113c3475
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW06 are li=
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
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold">High</t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;tex=
t-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D15270" target=3D"_blank">15270</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">patchtest-send-results should reply to specific threads<=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">r=
andy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto=
:tgamblin@baylibre.com">tgamblin@baylibre.com</a></td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
">5.0 M1</td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=3D"height:20p=
x"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align=
:bottom;font-weight:bold">Medium+</td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bol=
d;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cel=
l-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15383" =
target=3D"_blank">15383</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom">rsync: The fix for C=
VE-2022-29154 introduced a bug that causes rsync to hang forever with --rel=
ative</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.=
com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"=
mailto:matthias.schmitz@port4949.net">matthias.schmitz@port4949.net</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom">3.1.32</td></tr><t=
r style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;t=
ext-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell-l=
ink" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15388" tar=
get=3D"_blank">15388</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom">Pagination needs to be =
rewritten (e.g. Machine -&gt; Browse isn&#39;t paginated)</td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@wind=
river.com</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tim.orling@konsu=
lko.com">tim.orling@konsulko.com</a></td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">5.0 M4</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;tex=
t-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D15389" target=3D"_blank">15389</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">Patchtest reports a failure but says &quot;OK&quot; at t=
he end</td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver=
.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D=
"mailto:simone.p.weiss@posteo.com">simone.p.weiss@posteo.com</a></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom">0.0.0</td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-dec=
oration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15390" target=3D"=
_blank">15390</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">patchtest didn&#39;t report th=
at the patch was still authored by AUH</td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:tgamblin@baylibre.com">tgamblin@b=
aylibre.com</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
>5.0 M3</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"background=
-image:initial;background-position:initial;background-repeat:initial"><span=
 style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span>=
</span></p>

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

--0000000000007966c606113c3475--

