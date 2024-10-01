Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E68ECEB2DE
	for <webhook@archiver.kernel.org>; Tue,  1 Oct 2024 02:11:46 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web10.71964.1727748700542750032
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Sep 2024 19:11:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GeZV5Ezz;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7193010d386so4333798b3a.1
        for <yocto@lists.yoctoproject.org>; Mon, 30 Sep 2024 19:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727748700; x=1728353500; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=H6+opc4ERXxI0kwwALDI7W8/hhv0z1GkUyr5doSem0c=;
        b=GeZV5EzzOXXnBkSWbzUwykI/DXtKD2VKEo7P6MjyhYMIXV6vpvtI+woO3fzLR4AbzY
         fqWOf4IbbsZ/pQdwGj8rAliG+T8h2t/qnHVxsASzaJFWXtHTu9O/qaYWdjtxrxujzpZ7
         mD84vUXFI+uncQA9KRoFMgdW1EhkQwMRJnXd88SHnY95w2s4X68xK536mUbm9WXyhqa8
         Sgzyw7pTOJ++WY0W3fF2XppwGSPuPziwntifFAEdYZ74Sl9GE9sukYSmCCiYkUi3W3Xm
         F8AvcwFnAb6peLcsPFawnBVX69cNhyy4CBu81NYkU7KptcNN1ahmpvAENKWK9V44sa3r
         8s7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727748700; x=1728353500;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H6+opc4ERXxI0kwwALDI7W8/hhv0z1GkUyr5doSem0c=;
        b=gz6Br8vwzQ3HkvXyJK4Cs9mfq2UB+Dfwg2PktkIllSBpmxZevfypjMrM5nhZecunAe
         u68OGhLf0o/EQeoooVuvsG5urbTe5OGX4B70G///A8ZZ6izyouAZ69rJo3l+yHZgodYo
         Y512OD+CPhhvcYVixD40DS4ThF1RFOnIeZoxNoev+JwQ2uxpOF8k/WOJLtioKIPcQBcv
         Swc/QVckBv0/YN/wCMYJsH4f2hRBuCidAnr08ONzFYSEX8fC+9d5haxK/1Xg0TEkBVUZ
         eaLT1Lt83KG0zJ9TWPd8S0W06h5nByxoX3ckg9eq2BAHVbFnJs/V66eMD4FoJZyuDQOe
         gZDA==
X-Gm-Message-State: AOJu0YyuUsLQB/vZPIT/o/YeaoboZku4hLZUpSS0dzkhWxwutTd+96Ve
	MvYBodSDnxvPfUaj+znuslMNvuq7W4wbR/Ufh6DcMCgSnNTIRCBcvtCrikUA9xMcfKNvPLErPqf
	wAbEwAVPA5t2ZslviIaBJa9Wswo/ksPTU
X-Google-Smtp-Source: AGHT+IGSbUKUMxbzAm0hNPCPqwWrUXoJ3cjTGdkG+Km1iVLN2k1wS9vdB8aX2FH1Wog3UYOXz0fQ3gcQaSK7cJAWCXk=
X-Received: by 2002:a05:6a20:cd0e:b0:1d3:45c1:ad1a with SMTP id
 adf61e73a8af0-1d4fa77a379mr20652993637.39.1727748699682; Mon, 30 Sep 2024
 19:11:39 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 30 Sep 2024 19:11:29 -0700
Message-ID: <CAK5yBb9FxSRp_VMaxiyVZ9vTaL5aeWobvna27rkaSQ53QQp6Zg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW39!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000817f3f062360d774"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Oct 2024 02:11:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63916

--000000000000817f3f062360d774
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 10
louis.rannou@syslinbit.com 1
kexin.hao@windriver.com 1
Grand Total 12

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000817f3f062360d774
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
"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;text-align:right">10</td></tr><tr style=3D"=
height:20px"><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom"><a href=3D"mailto:louis.rannou@syslinbit.com">louis.rann=
ou@syslinbit.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:kexin.hao@windriver.com"=
>kexin.hao@windriver.com</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1<=
/td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);f=
ont-weight:bold">Grand Total</td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb=
(219,229,241);font-weight:bold;text-align:right">12</td></tr></tbody></tabl=
e><p class=3D"MsoNormal" style=3D"background-image:initial;background-posit=
ion:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-f=
amily:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000817f3f062360d774--

