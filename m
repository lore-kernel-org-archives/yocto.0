Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EAABCA0FED
	for <webhook@archiver.kernel.org>; Tue,  9 Sep 2025 14:25:44 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web11.14867.1757427942696016734
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Sep 2025 07:25:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=krpkocv9;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-244582738b5so47448775ad.3
        for <yocto@lists.yoctoproject.org>; Tue, 09 Sep 2025 07:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757427942; x=1758032742; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wa7S1uuxZgJi7JuixNd+6btRPJigLE+mXqBT/v/EFUc=;
        b=krpkocv9/xgXZWSsgZDjSjQQPGc4tNwnCtEclm/Ix1wNi60EcCJQAVQ8LPJi9OvpSM
         6YPHhFiVcVI+r0/i0vrnOaXrbuC47lDX8Q17S3uTj6arx8Gd2Q9Q/1wISiOOSsKNVWsT
         5Ml4tl6V5E5Sdx/b8D+RvpkqkGJwtsOtt3fRTTuo7pj4cFdtQ6dPOdtR9SGUWARtJ966
         Xhlm9wyxw/KwUkzcj3jCVyeY8hdtEHyaACrsWVk8l7uZnDz3sw9phhxhAxcj8G6rwm9b
         9QH1QOvLxwVA6Fv3gJTQ3LUB/80/Q59C3xXhjv6Orb3B6O4ZMJDt+ZN9PM0jc2AgkDGk
         O0qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757427942; x=1758032742;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wa7S1uuxZgJi7JuixNd+6btRPJigLE+mXqBT/v/EFUc=;
        b=dzRqmcMjkM9ctciNzU6zRs1ZaSP4sj599IFU5PuJ4H/BKq+P0JumcRCeiVJalkIPTP
         zSGzYAA700WfX0NYatWfgUeTLiO5xciK/kOHd8XYlb3zz1E3Ri4VP3RrEqcZzTLXM51u
         WzLrydYpQyRlKPl1CKTv7vAwwJLPMGUERRDd+25sV0eMflezlvwxLKuhr45rvhPw9fRi
         b2pzyesDmYjrDDZj2dJPr5dzUO0FJuYfj9cjHHBRfKTtHq9ckrxaQETPjH3tDeO0lObi
         agGKLw0YoMFNxEmOYGTzp2aa3LgPQh7IzYYR429bQR3gbudUtkX22sLXBVKmnNFj90gy
         OQJQ==
X-Gm-Message-State: AOJu0Yy4UPSuMBfZ/OGau5sdcbTL8xb7ipnRYYFMGYRU0IMIPbl6Devv
	rcA/gWUUWc6H8Mdxlv9pyUYDN0RnRfrdIB3rRGMSjZqpWtFjOqvOrBC5LtxYmLiFcl/zwOgZc45
	aPIFmwePZErtjbGjuBqVUWJQudETnYjDbcK4O
X-Gm-Gg: ASbGncsMCd8lcsYOgwcnpepH3C1pafO69jcb7pLFdGp67dKW55G+HAFzh8w88bnMjNM
	SQCjqtTO0hPgrLEiJFUNgrKW+93pYF9urMlW5lAdcC9u0G2dk1dni5voOw+Pqy7cqDwrPKiReUQ
	Sjv1LRnNGoySPSfVXOq0idwM7LiSzwxJmhW7HmbgY0sasL2/3C6Wz6hCylgl9y0UZ0n7mAHRBHS
	fNMUjAOTKP6W4ZiVFAkO1PFOr82Da3F9KxXLIcV4g+WWiIiF6DQ4vjfilWifFN5dsREfA==
X-Google-Smtp-Source: AGHT+IFjZjGEV5uM7RUTHx+9sguAJL4MUTzgSmanuXkmlWQgA1p4EQpx7wRDF2BKdx2OWN01w3srwJA6/0ml/MNyvi8=
X-Received: by 2002:a17:902:ef0c:b0:23f:fa79:15d0 with SMTP id
 d9443c01a7336-25174c1cd4fmr144391815ad.46.1757427941746; Tue, 09 Sep 2025
 07:25:41 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 9 Sep 2025 07:25:28 -0700
X-Gm-Features: AS18NWBYOHJXtfO19Q7_WilUzaFzhOmHN5Vf7aavMkb5P6oPADazTzmumpwDa9k
Message-ID: <CAK5yBb_BO70YgNUJ_jRy4YxG6M-nA18VWm=y0mwXYXb90dOaBw@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW36
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002fafbb063e5f14de"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Sep 2025 14:25:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65824

--0000000000002fafbb063e5f14de
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW36 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
High 15963 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15963> installing
pseudo-native from sstate does not pull in sqlite3-native, causing
fall-through to the host sqlite randy.macleod@windriver.com
richard.purdie@linuxfoundation.org 0.0.0 5.3 M4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000002fafbb063e5f14de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW36 a=
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
-weight:bold">High</td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decorati=
on-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15963" target=3D"_blan=
k">15963</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom">installing pseudo-native from sstat=
e does not pull in sqlite3-native, causing fall-through to the host sqlite<=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">r=
andy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto=
:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M4</td></t=
r></tbody></table><p class=3D"MsoNormal" style=3D"background-image:initial;=
background-position:initial;background-repeat:initial"><span style=3D"font-=
size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--0000000000002fafbb063e5f14de--

