Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B37C0C7EE2A
	for <webhook@archiver.kernel.org>; Tue, 24 Jun 2025 07:30:16 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web10.2985.1750750196715744097
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Jun 2025 00:29:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YoVMDxX7;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-311bd8ce7e4so120826a91.3
        for <yocto@lists.yoctoproject.org>; Tue, 24 Jun 2025 00:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750750196; x=1751354996; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oPkpSC6FpcT3KNHJ9KVN+qPFYVb6ooEPpoVVdQTcen0=;
        b=YoVMDxX7//+CZUto3BtB6Zb1Lj7vmvo8Eo6GbCMI5vP+73owOXcMSudagVxAILw7yB
         7A9lp5KxMQgEQ3mPhC1nWsRHM9iv1H+rJlz3H2vqG6cRvLYeYJoR4NuvlGm1QXNS4uES
         uI64665zcCXxN19++SVV+p37I2gYFF0hX/unDxEuA9Ugk/a4nwID3jLjuSTUJk4+lWBl
         q1Qq3UaEc2WaQQ4zGAzgjRtfcRd7Dmpp+hskMGHlzbkM2gT4XDMeGmx1+jy7iQDMOUwr
         4h3FJA3CQCGjOvtQUwNNgPYnNiYha+moVGwnj/x/w6+0RkVcpnDd/jNbl3AbeqaBHWPf
         F01g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750750196; x=1751354996;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oPkpSC6FpcT3KNHJ9KVN+qPFYVb6ooEPpoVVdQTcen0=;
        b=In5Y9ImvGeWT+5CwNLEW5YoQi+j4XV71eF0ES7l9g6StDQjz6sgvK7bjF/rQIn5Py7
         rwaPopit9+l3wYdPWMg0877xAe0lNULn4SxrTWNMHyvrBzf8Nql3CjzF1LpsL572y59O
         d8XQh1iiYquYhnM0tvMt2o8Pew1P/qXEthA4UQuzl8EG6jtMCpkyPR1lhqddzHOZZPoH
         KMftZNRrTuEvNsrMOi+ndUE3QFxJtwvmPUKpnx8XO2Ik3uTDUgxhoHgpPUqbrYhVX2Af
         mgOmGc03bgBPjR/D7PRUo9XsZKyMe8mGmMBawsdsuHJeUfIzpCOiVMad3acEeS2nJily
         YZvQ==
X-Gm-Message-State: AOJu0YxFCaBoexy6lq1HspM9xsmFj18kc4ry3dMa1AXH3b7ofa+uvl4B
	ll1Jb4CSEu4dq357qy+J982XL5rEfWogWlO/j0NJAFzoqKjdwdWOqgH1HMWdCSvUKVvOjr3b8Mj
	D7e5/alN2aUwIjBMSkDNRdppL/+Un2diQdlgd
X-Gm-Gg: ASbGnctgB0AaTsDDUl75x5zqofT0cz9FaP6wpCY8mG2L4KpW3SXL5hzVwtXbypPwFyO
	G2i1kPBadoLnT3iP5O+KqdLoGJE7M87idHmYTz8sZCnOCe1Dw3poZTTYGV4201/iuP084uLg6bX
	Y4RZIpsQUcxfCymbMEPB9/N6BLIfCzFo5Ca4VtrlHRuiqs9iwlbasqi6I4mAu04iok8Lu8zpioc
	mdMxw==
X-Google-Smtp-Source: AGHT+IHHvvYhGIn5NsPJZmpr4Rx14M1ajNCvPmCjvb0JYAv0gj84/wOINy1TTr0stfDrwuqalKpzI86jbhzzA7P9Eio=
X-Received: by 2002:a17:90b:2703:b0:311:b5ac:6f6b with SMTP id
 98e67ed59e1d1-3159d64caabmr24026444a91.9.1750750195834; Tue, 24 Jun 2025
 00:29:55 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 24 Jun 2025 00:29:45 -0700
X-Gm-Features: Ac12FXxIXxLnrUIGDGjxzF83GB_q-pbMyey2LeVrmcKZ-uaMjQAdR6iCuFO-SbY
Message-ID: <CAK5yBb9JY+ZK8+dkK1C=QFiJwefRaLP=QSPB_XqkxERaR=M19w@mail.gmail.com>
Subject: Enhancements/Bugs closed WW25!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000083663d06384c4b51"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Jun 2025 07:30:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65538

--00000000000083663d06384c4b51
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 2
mhalstead@linuxfoundation.org 2
randy.macleod@windriver.com 1
Grand Total 5

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000083663d06384c4b51
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
lign:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;text-align:right">2</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@lin=
uxfoundation.org</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.=
com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:r=
ight">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,22=
9,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-c=
olor:rgb(219,229,241);font-weight:bold;text-align:right">5</td></tr></tbody=
></table><p class=3D"MsoNormal" style=3D"background-image:initial;backgroun=
d-position:initial;background-repeat:initial"><span style=3D"font-size:12pt=
;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--00000000000083663d06384c4b51--

