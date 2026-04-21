Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E28EF8FA8D
	for <webhook@archiver.kernel.org>; Tue, 21 Apr 2026 14:54:16 +0000 (UTC)
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.33200.1776783248890321287
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Apr 2026 07:54:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=ku6WzA+F;
 spf=pass (domain: gmail.com, ip: 74.125.82.177, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-2bdcf5970cdso3619174eec.0
        for <yocto@lists.yoctoproject.org>; Tue, 21 Apr 2026 07:54:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776783248; cv=none;
        d=google.com; s=arc-20240605;
        b=NXW0cHDD2dpSGctV2mLVGHZeTD23FH7V+XUaRbeMN9o4LeIxfGrW5ExTjlFwje2XBQ
         r3uOtBEvTMoNlFpIDTLuFQWWb3Doh7+VykjMSqd1nPySKGhIt0zycc9M+1ny+qXRHV4p
         tmLIPehXy8S9BBdk1jllAwNh1t0+Td2SCcKzZDhY39EineMVSiSZ0q1n/DM1F2zbxPOP
         jl5juh8kUCy32PU6HgmaCXyr8EgaVTxNc4cIJQRs6X4x6qOv5yKhsVreZnyxXEJ2QtHF
         xi0dHzzc0Zey1jiyL2YqsJoRSJd2twLdumbljjzFhDr6jkE4sgusAQbav1tusM0fSA7Z
         pWAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=JfPY/ZhtA+brofa4/2U6jLLxpekNh3srA++snBbk690=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=JZu8eJxkn3B51yemxOXtAAkQyaZOBIR3GGGDT2Uz4aF0f05eTyI3/xAZI/1+InNIt5
         J872bgwwyqoNSZ48XrbwZ06Kn9l1O3U8HR4w3NY+nwy9pFS3mKlxCbYfJamznKXrSUH0
         zMc7ugiWYnJ4FgtnUGOCcENK2Az7uKE4xIne0/UZrU/iGI//Pfn8kkvQ6NAo+KQvb1SK
         nDGyVf2+fIYjad5+sNMXj54IbjH6pOvs2P5eJUc8fcHtnILrvrzbLQn/zlJWhz0/bRHD
         Jf6oJHN+7F6qIYlXDR458S+RDX3qplQbtQ8MxiCpm8gap5i0lk8aiVJQoKFqgSq3PzST
         VnqQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776783248; x=1777388048; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JfPY/ZhtA+brofa4/2U6jLLxpekNh3srA++snBbk690=;
        b=ku6WzA+F/R5euW6ceTrdyd6s9AbX0ywzkttMC3yyz+LFfqw0BAZlvWlJNujfXbCN7m
         +IihCkIl4sSRu52k3IgZWIlnN7GvNCFN5xvDub9B8qMbovMwoJeRFxc3rtYJxb/QJDwO
         9iM3k3XP5n3qu2T/ehKuvQRsN2MXkEodsOjMRVdlk5oEJtPnTBZ3fAJXl02uANiGtzX/
         1RO/onaLp4KFlidcFGoR+rNcMeobMrvW10su9huZIobmWILCb50f5h9iIu1aJ3KGThmN
         2i8jrEx3vPlhZgztxn51/9MYHRlCvRYPI/1CUd22JecDSMDa+jCw1rorbrjcAE49KdER
         +6/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776783248; x=1777388048;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JfPY/ZhtA+brofa4/2U6jLLxpekNh3srA++snBbk690=;
        b=R0hRhuExAbHBJRR/stQPUvWtFDJLusBojdkMpynXMg8IlWvHVjFNVyM53U+xW64F+j
         lW/XAt6rJ2ZJ/idOEhF8sey0/2FpzHEVLDDxkdn6jIPAQkbDfZstcyV0DD+yviqptgrw
         i8HrSGJ5HSVuAZ2Ldm2cV8Y3razhm/f3eWhU8+qsHWvoyW6Vg/zWM1ggdzSOGWxKab6f
         zuCgge7+8w1ORcj8wtpQINZtZGGKp3pPBzsgHaDnhJFS8A5Xp2sXIprWb64G0hKo4uyO
         adXo8MpVqrJe06Yftjga7bkMWhlOsvDsE9qipS04m+yJygq5M7GJo4lRBZ14TxjWdcso
         NB1w==
X-Gm-Message-State: AOJu0YxJf15it7bssigaYZCr5IPFQvxP8XIJ1jOgxzWxlu5FIMpzeYuP
	pttH1pRtKAgQkG0UhqySYzePjL4X0tQj45tPJ8o9s38dX3cZRarDJUszLpmypfPddxiXZkOrFNm
	oj8+oszDqv47ysk5E78S+pU5Hf5U0J8ERnImi
X-Gm-Gg: AeBDietacNj8bReYdkQp5NLqPHbDVv/axrc3j9iUr60C2F1PYZvUh53mQrg9j/S71eH
	ywFVR0ZsE6if9J+/NZ7vw1xcD2TO8YweVyMcUD984Ois299qHTodhw8ibhYsWMLdPcZCM6ACokx
	na97v5OEmJJWEovDhszLWEkd0NZZzR33fVfa/TfAbzim6/x78NHNUr66gRhwOkj45j0vusOtXtz
	AJo6rOw8mnbjpikjw9P+enzQOQxnpyYIllA6cukCnAb+1CVJoZsvIFj2kUwT2f3azt402EkWldH
	/lvbOFhM3zdK4tbGrukk0Qn1UIjfSNYK5PIB4N/q1e1kDP4iNt+YvO5ntXOyQ79YSgv/Y+SpvAJ
	hI3t85Uqd1jTPF4RIuyPtbAaaK2vDNz08PSTuI6GGG/5wi6INGVcLklHET6DJ0FO10j9vB88PeW
	c7gUYSkLthYBnZGJQT
X-Received: by 2002:a05:693c:3011:b0:2df:7882:1cf3 with SMTP id
 5a478bee46e88-2e42c15cf81mr8412918eec.2.1776783248002; Tue, 21 Apr 2026
 07:54:08 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 21 Apr 2026 07:53:54 -0700
X-Gm-Features: AQROBzC65o_GEDrwTe6mOa1DjS8IEU_Rex8zgZFDbgStXAYv7gGHJt2u7hXasAI
Message-ID: <CAK5yBb9ia2diJKF1S5duEoQa39WOB74gQ0YR1E=+f_3QrkRGNw@mail.gmail.com>
Subject: Enhancements/Bugs closed WW16!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000571081064ff99678"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Apr 2026 14:54:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66428

--000000000000571081064ff99678
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
yoann.congal@smile.fr 2
ross.burton@arm.com 2
richard.purdie@linuxfoundation.org 1
randy.macleod@windriver.com 1
mhalstead@linuxfoundation.org 1
Grand Total 7

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000571081064ff99678
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>The below were the owners of enhancements or bugs closed du=
ring the last week!<br></span></div><div dir=3D"ltr" class=3D"gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><t=
able cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"=
table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-coll=
apse:collapse;border-width:medium;border-style:none;border-color:currentcol=
or"><colgroup><col width=3D"249"><col width=3D"42"></colgroup><tbody><tr st=
yle=3D"height:20px"><td style=3D"border:1px solid rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);f=
ont-weight:bold">Who</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);=
font-weight:bold">Count</td></tr><tr style=3D"height:20px"><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D=
"mailto:yoann.congal@smile.fr">yoann.congal@smile.fr</a></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom;text-align:right">2</td></tr><tr style=3D"height:20px"><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hre=
f=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom;text-align:right">2</td></tr><tr style=3D"height:20px"><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hre=
f=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundat=
ion.org</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr styl=
e=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">rand=
y.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</=
td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhalstead@linuxfo=
undation.org">mhalstead@linuxfoundation.org</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;t=
ext-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color=
:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;b=
ackground-color:rgb(219,229,241);font-weight:bold;text-align:right">7</td><=
/tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:initia=
l;background-position:initial;background-repeat:initial"><span style=3D"fon=
t-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000571081064ff99678--

