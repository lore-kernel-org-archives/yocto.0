Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7D1F3029B
	for <webhook@archiver.kernel.org>; Tue, 17 Mar 2026 05:31:27 +0000 (UTC)
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.69565.1773725486920223233
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2026 22:31:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JmNNXpFB;
 spf=pass (domain: gmail.com, ip: 74.125.82.178, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-2c0bb213b16so2302728eec.0
        for <yocto@lists.yoctoproject.org>; Mon, 16 Mar 2026 22:31:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773725486; cv=none;
        d=google.com; s=arc-20240605;
        b=dBmJ7owg9CDMgJTsl5p5JUCG16JPBtQPxJcdZI5W+CKxuKVVBY7pdb0HFw0aw1Eo66
         Wx3CtAD1MrmhyIC9nDRSaAP/mCk++wJi8c1vCYHmj0B35F4D0pAe4yRm3psppyzyNzj5
         dqtOL0JyGs+4S13I8v2myxqbaMul3+K47eL7AdhoBFunF/d4SQm4eqn7HWeRR5E48oAR
         XHArm20hRPSrOt+eKgMcf3Ay6DXXG6Ct27qPaNRSw5JIQnWVuYnpDBJYwCpzFN41rhMF
         dnFI3oRpDHvocdWQ8Xmdk5OBWlO/Lbn/VNgpzRRGRxUSjXjjvlmUeFqAhGeRQYnYnB4j
         b/7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=7Ig+vmW3+n1WL/2sYMWsA95LHaNzDcf0jPBuZZ/qs1Q=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=RcYYIrq/rwee/f6wodvV+JQLhoaNv8oiGzq8plDhuGlUavPaEzfa6pH5Tsd9tSgYCu
         3OywQj9TMYcu/W8Wr2+78N9rr4my0fMcAvrCVgeC/gP+UuAJYyVurcGiO2QSdmz6SHnE
         TxWKcOqrjVNPCJjqswwl9aK5GSO0nMJJgr+BzCTfuX9E9tNfUccCU+sksUo0OzqKAZIv
         pMgAGKJL9FZJXMkla5aPRQZayqIhfFjCxD4eypcUgw1FTgo90Fc12Bq1jiqEZA4tEgUZ
         TS1EZlSN/ZhC9yFowTZzGwDPKS1+sS/sqrSQunVYcum6m+G6PvA/4mynh/z/OoSi1fI+
         XUlA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773725486; x=1774330286; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7Ig+vmW3+n1WL/2sYMWsA95LHaNzDcf0jPBuZZ/qs1Q=;
        b=JmNNXpFBPnRObVZT6lmzCaWGxBTjHm3O9XL+s3r8e1PfsuDeXFoiaPpuhipTJA6eHc
         DLFp8iOyWnIW2piJZmKJn5XIR1/870507Fr7mkCOPUz7ir4Y5bs0VmOuPkW5hiAzlhTf
         VihRtRx6kiI8fPMlVB+wHWGNJ9rrpRDyvVVI8ENidv+BAO1PmQWleLc2J6bpLHIvoVVz
         p8HN7XB4wiwoT3GmC7tYJZUOb6o8yVhHv4w0u6MKQHJM372+CsRwbq0wMyIxRbCRs3it
         MURieRifjB+3h0Jpyt4/qHGRqxkALh6Vw3s3aTmzCQb31EV+nACYkA22OUQzFnvzBvFp
         9/Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773725486; x=1774330286;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7Ig+vmW3+n1WL/2sYMWsA95LHaNzDcf0jPBuZZ/qs1Q=;
        b=oG1Lfo+Y4Z5l2qHzcIU8/WVufklJp7rwJbiQU1oIJBCnuHC1gvkKTgwFOpRzUHUFtQ
         xSyrU+hoZjR58b1rZRwG/XXSnBkXXYynZ4Bg6w7yJfrkV/YR+si1isQaA9TdGkngRc9s
         YYdVa9+q28oF8tBqueVMHf4LVwgBoBn+0TVCWPrqp1iqs/a0ztS17BIlwhEVZ2TksGpE
         XEiJ0LYaq+IrjdclAw9kQmymc+iPT/PhyX8T2J7CynrX4VpRjeqRPlGeahxHsHIud85j
         usNiDZjREB4IzIFNGKL97SyTT6sO4HZ/F2jezf20NYtsgYVUcrXWWk6mrCcVlryFS5/2
         2Hfg==
X-Gm-Message-State: AOJu0YwtD5nZz5Zfh441TY1xSSCS1HKICKo5Gs59wrUejTng5cZmYbr8
	U8O0g1L80JB44CtSMfb7XKYg4pTL0EiVRc7qazYEXHRNUIWDzy3Qv3YlMOPr7yxI3eJ+WCp79MI
	zFOJexk9NeZy8hhEpwPWaHCpkcL3/gwMSJD3m
X-Gm-Gg: ATEYQzwM/9Y2oxQ2GVd8AmZ4h4ogAC8tO+4rfjgnxRid0MGEwCgV6YTuY40z11nNkBJ
	RjEoTaj0EJ5KwM5Z02yBjDxxNhtNKUoHwxrg53yhDUecYwUkIAvBm1enjX3TXnytRHI02zoA4YV
	bNxSdSYp1Gq4m1ixQdZxBCMJSFc4tCQwAeRcHX5p+mCVZcndZtDCEBQdR7rVdeoTSE/yG51H2Oj
	WfRIgunwEMarJYGg20aeNTBoZDfbQYhVGuVBsvE7/JRTaoiQ6m9b75DchaQu7y5QuEqj/e1+TNF
	F5bpLz2FSyREi3LvcHPxbonTdmL9L+zlAHT1XilLGKTKxCi/xh3CJPIT3tKm6DhRp7UT+fdjnHZ
	no7bMpSFluM/6hIb5VDYNmdce9Tg=
X-Received: by 2002:a05:7300:d10:b0:2be:8650:b0e4 with SMTP id
 5a478bee46e88-2bea540204amr7998782eec.6.1773725486078; Mon, 16 Mar 2026
 22:31:26 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 16 Mar 2026 22:31:14 -0700
X-Gm-Features: AaiRm52g8_Ntio0jQ183KV_JRGCJGz4a3HMAqlVQS2vvKYU1uFoye4xVtLIpRfI
Message-ID: <CAK5yBb-O-Gp=6CqX0gTDrhUcS=SCff8E7BsDwe4gG3Bbt0gicQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW11!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000086def9064d31a54f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2026 05:31:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66337

--00000000000086def9064d31a54f
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 4
ross.burton@arm.com 3
yoann.congal@smile.fr 2
richard.purdie@linuxfoundation.org 2
Grand Total 11

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000086def9064d31a54f
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
dden;padding:0px 3px;vertical-align:bottom;text-align:right">4</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.bu=
rton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann=
.congal@smile.fr</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoun=
dation.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;text-align:right">2</td></tr><tr style=3D"height:20px"><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-co=
lor:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;background-color:rgb(219,229,241);font-weight:bold;text-align:right">11</=
td></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:in=
itial;background-position:initial;background-repeat:initial"><span style=3D=
"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></=
p>

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

--00000000000086def9064d31a54f--

