Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FD37CD13DA
	for <webhook@archiver.kernel.org>; Tue,  5 May 2026 05:35:38 +0000 (UTC)
Received: from mail-dy1-f175.google.com (mail-dy1-f175.google.com [74.125.82.175])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.32643.1777959334609641323
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2026 22:35:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=pe4dYzL7;
 spf=pass (domain: gmail.com, ip: 74.125.82.175, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f175.google.com with SMTP id 5a478bee46e88-2f33ae12f97so2217858eec.1
        for <yocto@lists.yoctoproject.org>; Mon, 04 May 2026 22:35:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777959334; cv=none;
        d=google.com; s=arc-20240605;
        b=VikB4wX03tWB1ed/dmQUp98ZbOmdYUjxAFSPfNBQzy28gS3kT2PMTRh4uBuhJ/hHGK
         Ow5gBO3LDyfArpaT49qwCwefzSa/ehGwiLBNhwl+jBMIevyoBUaZJqXo5b0ffWIioxUd
         84f/ghRwzw6Olgy9E46sFkD3kODZKXUPUKqCTUZWke9k9mchuY0G7pgYjTjkJnMC7JLQ
         6POpfIy9NBbKmf4exCIIjVhg/FUEda2y0jlU1HMM3kV4JznsnXoALZFrSkazWTjrB764
         SRYFT6r/SO46PJ1dH4k6A7yEyYGT5pMX8O8J8lo3Zvxav2ELQQCsNaGFN79PX2xiXPc7
         2Gig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=AP9n7oUNk8i79MHwSGLYUHnomjpAUNhIwJI0GqPtJg4=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=CD5Gu7Mf/Y9drRtDS23+lWVyOVjXx23/T4zZ91XWEKYtU8tvbQNFFQZVZwsoHMfA3w
         OWnGLJ0wCbHQakPALIr8MqEVqhqHARNk14p/cKewnLu+RvtLYIKszw57zxL504YUENrm
         llr3OZTCrWtbztuGrDymuiv+RegUdHdzcVlC460EsuaJ73jVQ6NgY72gyJ7Av/7IT5PT
         SPQ8VPR0SO6n12ynG6c5vM93/k5pYixYj6p8RVlUwcMUr19JwGnoM5Mo5726StXzYWA/
         hjICL21bl/opZ54prTJA4o/RZ9OcZU0sT4aqyQzt5htgB+84M765w6XPS278gp18h+IT
         M7fQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777959334; x=1778564134; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AP9n7oUNk8i79MHwSGLYUHnomjpAUNhIwJI0GqPtJg4=;
        b=pe4dYzL7D9XZze3/awLosHctKS2o4+OC+dDMwpa6+8XMXex0xyLzowjTjGKrn3ciJ9
         5kWVxdmkdatMvIMB03Xu80mJ7BLvH2ywV8Z21gm92jzaRPWGt3qVnr6JmMqXDQG9UvFH
         SNY1B2Z21HItdqkfKxtRdKGr8pKcUYpEd88WQScFR6KdVrZdSdEfDW4cDr9pKQMsOjbo
         zSrRIGM86K/3mbCb9QbOgOhHay2Ko4hAzl/U3+dotujkqfom0hhd3i/b1LQrJhyEHekJ
         vSl7q/GbXW/VZpdrjQECGnIX7Bs2X9ohU/SH9ufsdxTxSJ0m+Lg8ucq0cpwHhNjgXvK8
         xf1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777959334; x=1778564134;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AP9n7oUNk8i79MHwSGLYUHnomjpAUNhIwJI0GqPtJg4=;
        b=nW5ObtUAFSiaN8t4EWHgKXrSoi9TrH2JhxrwKPwbFqHM70nn14r96C5Fn6UddPwuiN
         Bp/db4pTdXBXsR5N1QPL+A+xnHapOU0W7DykwiaEkJ0eSYVz5SLadl1gBGaOyndrBwlx
         uEPnRrczhs6iBx0W8qALN86jZsMAqQKEpBGYGIJ2rm5t4ExcMlyEY3gKQCtznJtVrUjB
         a5NWJYD86hluV9M3L5IpPDGMT0QmQfkpz+D2z0cHjlrRjF/azcX/pp8jpOQPKafvIbJg
         /KZW/4ePSYCIKf/sB4pOY8UnFVrbwobYukw0N/vjUSHqA1TD/P1tRSj66O5W/a+5yg2r
         do+Q==
X-Gm-Message-State: AOJu0Yyk2d/KewWyGToB0GopBlC8no/GpeiXAaMoq/jQzBirZqZYUl/0
	0hSLQaTafC2MD9UH/ywYx5N1WEbEyVy2DfjsqUk3L8WDnWbqeYKleAwAW2MIrK0+jTFAU25n6Jq
	8VbHWWfv+ZUgDsvX9hxLC2Cj4+V5O4M2KwALD
X-Gm-Gg: AeBDievDDqSkFPoRlTTECzKjGg9xHL4Py5QQAhZ6s2vDdgy3Kg4215XI1hLOAKC3Y3P
	tsFdqPPnHwN3D/8Kl3j+eTyQEU9PaGJbiU2p2psjsHDaOh2kGWTeQzL0d2f8JqCmysekQNc6pyO
	naoLSBjgvDit/5NGz/K+mdrtX/cUr9jwmdZ7q6BmZX1F9DurT/DiaNpZdGyr91U67saOa/shXb1
	XS/WALvoTGAPw/t3lY6aRQ5rSh7FnRLP050350VjwIhY7ORTetAFf5J+Vn2LaI4uhR70aA92e49
	qQoGDl0tcSNia9awoLYwt/1w5CwyTQnohRHiusoYkuvnSceg2J8f7DdgarCTlshRh6Xkaaz7EbU
	aXariktkv2EYUzBlUGpn8KxQqIz2WYAM9A1lvcrv9wqrIktx2kuXBbVMCKVAT3LaqsQ6wSiTC+X
	RstYkcLcE0ZW2OzLB/CVVwQMDwthSV
X-Received: by 2002:a05:7300:fd04:b0:2ed:6f94:9d9d with SMTP id
 5a478bee46e88-2efb7dcd1camr6148760eec.8.1777959333747; Mon, 04 May 2026
 22:35:33 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 4 May 2026 23:35:22 -0600
X-Gm-Features: AVHnY4IJpadDNNLMyryHJrg9uPoqLX0DdWHZd9bDkBO68aCXe8ZO1yHqSBqLtLU
Message-ID: <CAK5yBb-gL=uabksf1F2j-Oq3Uc2M1q1+ZBEwiHQSGbpdGKdv2w@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW18
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000835feb06510b6a67"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 May 2026 05:35:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66481

--000000000000835feb06510b6a67
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW18 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 14348 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14348> Layer
dependencies not updated tim.orling@konsulko.com unassigned@yoctoproject.org
5.99 6.99
14523 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14523> oe-pkgdata-util
list-pkg-files doesn't ignore target-sdk-provides-dummy.bb
richard.purdie@linuxfoundation.org unassigned@yoctoproject.org 5.99 6.99
16265 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16265> glibc
recipe accidentally disables stack protector (instead of using
--enable-stack-protector=strong) mathieu.dubois-briand@bootlin.com
sundeep.kokkonda@windriver.com 0.0.0 6.1
16266 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16266>
yocto-check-layer
usability improvements mathieu.dubois-briand@bootlin.com paul@pbarker.dev
0.0.0 6.1
16273 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16273> AB-INT:
indexing: HTTP Error 522 mathieu.dubois-briand@bootlin.com
mhalstead@linuxfoundation.org 0.0.0 6.1 M1
16274 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16274> Implement
Autobuilder QA test to check microcode version(s)
mathieu.dubois-briand@bootlin.com richard.purdie@linuxfoundation.org 0.0.0 6.1
M2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000835feb06510b6a67
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW18 a=
re listed below:=C2=A0<br></span></div><div dir=3D"ltr" class=3D"gmail_sign=
ature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"=
><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=
=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-=
collapse:collapse;border-width:medium;border-style:none;border-color:curren=
tcolor"><colgroup><col width=3D"63"><col width=3D"43"><col width=3D"543"><c=
ol width=3D"235"><col width=3D"242"><col width=3D"53"><col width=3D"53"></c=
olgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rgb(=
0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-col=
or:rgb(219,229,241);font-weight:bold">Priority</td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgrou=
nd-color:rgb(219,229,241);font-weight:bold">Bug ID</td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;back=
ground-color:rgb(219,229,241);font-weight:bold">Short Description</td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0=
,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom;background-color:rgb(219,229,241);font-weight:bold">Changer</td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Owner</=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Was<=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Bec=
ame</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;font-weight:bold">Medium+</td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;font-weight:bold;text-decoration:underline;text-align:=
right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D14348" target=3D"_blank">14348</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom">Layer dependencies not updated</td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hre=
f=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko.com</a></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"><a href=3D"mailto:unassigned@yoctoproject.org">unassigned@=
yoctoproject.org</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">5.99</td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;text-align:right">6.99</td></tr><tr style=3D"height:20=
px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration:under=
line;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D14523" target=3D"_blank">14523</a><=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom">oe-pkgdata-util list-pkg-files doesn&#39;t ignor=
e <a href=3D"http://target-sdk-provides-dummy.bb">target-sdk-provides-dummy=
.bb</a></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfo=
undation.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"><a href=3D"mailto:unassigned@yoctoproject.org">unassigned@yoctoproject=
.org</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;text-align:right">5.99</td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom;text-align:right">6.99</td></tr><tr style=3D"height:20px"><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;font-weight:bold;text-decoration:underline;text-al=
ign:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D16265" target=3D"_blank">16265</a></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom">glibc recipe accidentally disables stack protector (instead =
of using --enable-stack-protector=3Dstrong)</td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a h=
ref=3D"mailto:mathieu.dubois-briand@bootlin.com">mathieu.dubois-briand@boot=
lin.com</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:sundeep.kokkonda@w=
indriver.com">sundeep.kokkonda@windriver.com</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
>0.0.0</td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom;text-align:right">6.1</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-dec=
oration:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16266" target=3D"_blan=
k">16266</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom">yocto-check-layer usability improve=
ments</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:mathieu.dubois-briand@bo=
otlin.com">mathieu.dubois-briand@bootlin.com</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
><a href=3D"mailto:paul@pbarker.dev">paul@pbarker.dev</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom">0.0.0</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;text-align:right">6.1</td></tr><t=
r style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;t=
ext-decoration:underline;text-align:right"><a class=3D"gmail-in-cell-link" =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16273" target=
=3D"_blank">16273</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom">AB-INT: indexing: HTTP Err=
or 522</td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom"><a href=3D"mailto:mathieu.dubois-briand@b=
ootlin.com">mathieu.dubois-briand@bootlin.com</a></td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@linuxfoundatio=
n.org</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">6.1 M=
1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-=
weight:bold;text-decoration:underline;text-align:right"><a class=3D"gmail-i=
n-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16=
274" target=3D"_blank">16274</a></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom">Implement Autob=
uilder QA test to check microcode version(s)</td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:mathieu.dubois-briand@bootlin.com">mathieu.dubois-briand@boo=
tlin.com</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@li=
nuxfoundation.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom">0.0.0</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">6.1 M2</td></tr></tbody></table>=
<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-fam=
ily:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000835feb06510b6a67--

