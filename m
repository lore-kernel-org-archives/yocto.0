Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 235F9EB106C
	for <webhook@archiver.kernel.org>; Tue, 10 Mar 2026 15:10:40 +0000 (UTC)
Received: from mail-dy1-f169.google.com (mail-dy1-f169.google.com [74.125.82.169])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.42362.1773155432900950238
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2026 08:10:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MqPgd0UM;
 spf=pass (domain: gmail.com, ip: 74.125.82.169, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f169.google.com with SMTP id 5a478bee46e88-2be3bdfda8eso6530863eec.1
        for <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2026 08:10:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773155432; cv=none;
        d=google.com; s=arc-20240605;
        b=jEX91D3UsGot1qEUii1rR8SFIEfwDRkHtKiI+iH1dTNf1LjrQ94htych8u06T5eJ5u
         Pfdr3JI5dNixn48kdHckGRdrr34XgSNOqKRnml1gCcBK2yXQTNj30SORzCwLS597e8Xd
         tXJx7KyVZ94PbZ0d0bMGxawqZU7Obos1Bq/3GXtkQlnJ8y+AJE/F4/853qd5L89nrxnB
         3wlkzGF/5g+aswm6oEe6QEcTGpofDSQ90f0w6AWWpor+v/NfwhLmJdKprWxWc5byCLav
         Z7dW+4eWs2XEyZ4rVBUSkvVO39k6iypU1zx3dEmD3Po7yBEWPncmsWmAr5jt+YwgCmkB
         73QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=3ts4KYZi+uKJ/QsnstV3U98Qjzhpi0IK19gSeoz/Twg=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=enwn9NkmVlmduScbOI+uxhvhXpFzoqz0Ruf2Rt8H800YJQbvH4KGe9ApZcG30waZwS
         o/hC+PDTfO2O++OjaCdcVY5UIq1RtoPdT8+1smljyzCRqE4tmCpVW3X0ZErp65Y3F10j
         58Oy5vxWLxZnPADC/UQHNf6AuyhBfUFeIXUsPlCl0GcI4tSc9QeBVJhFe+QiYIqMJgb3
         P3ePWSlcrbN9xofHM9phWtK8t/BmCGOFhaweXwOrSZq8N62FHimHo65x3iHcakKXJgNt
         6yK5PNO/js014rl/3UQnj72N4cmF00uwcfUa/1iyRb0z//Zx2ZETpR+bnjyqOhcIh17M
         e2/Q==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773155432; x=1773760232; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3ts4KYZi+uKJ/QsnstV3U98Qjzhpi0IK19gSeoz/Twg=;
        b=MqPgd0UMyRcnre0BeHSmu9+otetd9imlfPu4hAnUNFvjfQpWg6ALHka/YIGf7rvS5R
         cof/eGNQ/VenZta7AUZcEMQXXYDUgvih7FKLJXrFJB2hypTisrNSAt2Kfmgibagj/pfG
         ecUfTAAfahQ8uyzWUD0CL4qM7JgFi0h5wZNrz7AsExG19NAfT6hEmfl708qfwlLL1AnM
         SnF61PqIv3cBqHxk63BxBRiWlb0K2zwiIroC0RZ5CMzzbZqN7G76fmX39gmdGvg+h9dX
         bw/iH/NjgBSWOYoHZxS6oGhQyKrYlxOKBgAdlktiTHoB7r9rwpsDXriQ+RTvC1jy8tPH
         BZ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773155432; x=1773760232;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3ts4KYZi+uKJ/QsnstV3U98Qjzhpi0IK19gSeoz/Twg=;
        b=mKZwxUTlPGF3LLU6kbJaD/dU8TkCZDBeIXPqaX7FWL5eDy43PrR02oKZ/8Vyly8hwx
         aVvvU84wE+RpRsOS4yuGQaWWwJ83Q4FsUm0Hmc2xx1Kc00+ldaAZ3sWqN6xviJAFwT3c
         or4xqC3nnVXwmeaITfdLPOUv/h51x1MjjugyaqnouKYpZ2+umUFvCobGCGIi1V7QTGSU
         WdvF/qBungVIgs9+CnCHECMIYCBWkWq6GfKPORWmHXTx0bsNBy6FoqXc93esoHFfc6Gm
         jnua6ZafCk7Jjax+VruN+qnfqADVHnAdh3pDhaiPFqrI3hMQsH8lugY49x3iVOPLlFXe
         0gAw==
X-Gm-Message-State: AOJu0YxTxRjS/NuhAeGOcZsFUiDgW3hbqIwCnF5MC/JfoEjGEFRiZos5
	Mp/ASBj8EhKBLvRHVUn/1JUh7+rkiCfL8Twsj6SPUX1CR/bhisnp/B2NfXZj59626KW/YDhWtOV
	iQcxAqK+qKCh0xrnOwTTU5vsPnbJo/ZAie375
X-Gm-Gg: ATEYQzwB587fQ22gIEz5faEDQB1jV46/llLDNs0qDDtj9WZEtMpazfZy3d7ejccTr6u
	lLoPNU7Sr1pB8V06rwmH7nV2p6XIdoLT4Zr7KP7hS5Qi1lSD5fE/ocNfPtmkaFzAsTKjG3s5xXR
	TPSxYnb139opooM1JNoKB/eXjKY+PlJKBWLImvRCpKrL1k2IcDqzvJi+i721guppLBBAvZmpvp3
	0TeXVphrQGoDGgifAgQKcwhDXkbdnUGsuB5KGqqAzegEqm20TBkX4uwAdEAPTukKMboYGcyIJjN
	Z3n4k0+bPZtbP3lcdW1Za+KuJWzZ3y33ZbRaBiD2GQyJH55WGHJifJagpnT9HyQY4xrZG9QaYpt
	UdH2fVbqhaKAKMYmn6U5MsOLz3DY=
X-Received: by 2002:a05:7301:eab:b0:2be:d62:abfc with SMTP id
 5a478bee46e88-2be4e03eb9amr6225847eec.31.1773155431740; Tue, 10 Mar 2026
 08:10:31 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 10 Mar 2026 08:10:20 -0700
X-Gm-Features: AaiRm51U9-k_PQ5r7mQKl7zOu78KK-m9pwBYpMgn9VhVSg71Cx0VCjpZhufhKM0
Message-ID: <CAK5yBb_+RYCVP3aaXGH+W5WJzRm4dUmFNQtcCni-zU4-sH288Q@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW10
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a3f984064cacebd3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2026 15:10:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66319

--000000000000a3f984064cacebd3
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW10 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 14781 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14781> Add
indication that a layer/branch is no longer being updated.
tim.orling@konsulko.com unassigned@yoctoproject.org 5.99 6.99
14946 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14946> Image
rebuilds with rm_work result in missing license manifests
randy.macleod@windriver.com unassigned@yoctoproject.org 5.3 6.0 M4
14957 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14957> AB-INT:
inode mismatch in oeqa.buildperf.test_basic.Test1P3 (pseudo issue)
randy.macleod@windriver.com unassigned@yoctoproject.org 6.0 M1 6.0 M4
15799 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15799> Add default
non-root user (e.g. "admin") randy.macleod@windriver.com
unassigned@yoctoproject.org 6.0 M2 6.0 M4
15853 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15853> Non-minimal
eSDKs cannot install randy.macleod@windriver.com
unassigned@yoctoproject.org 6.0
M2 6.0 M3
16016 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16016> Add test
case to verify that Poky can build poky randy.macleod@windriver.com
unassigned@yoctoproject.org 6.0 M1 6.1 M1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000a3f984064cacebd3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW10 a=
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
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14781" target=3D"_b=
lank">14781</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">Add indication that a layer/bran=
ch is no longer being updated.</td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto=
:tim.orling@konsulko.com">tim.orling@konsulko.com</a></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom"><a href=3D"mailto:unassigned@yoctoproject.org">unassigned@yoctoprojec=
t.org</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;text-align:right">5.99</td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;text-align:right">6.99</td></tr><tr style=3D"height:20px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;t=
ext-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D14946" target=3D"_blank">14946</a></td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom">Image rebuilds with rm_work result in missing license =
manifests</td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windri=
ver.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:unassigned@yoctoproject.org">unassigned@yoctoproject.org</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom;text-align:right">5.3</td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">6.0=
 M4</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;fon=
t-weight:bold;text-decoration-line:underline;text-align:right"><a class=3D"=
gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?=
id=3D14957" target=3D"_blank">14957</a></td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">AB-INT: =
inode mismatch in oeqa.buildperf.test_basic.Test1P3 (pseudo issue)</td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.mac=
leod@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:unassig=
ned@yoctoproject.org">unassigned@yoctoproject.org</a></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom">6.0 M1</td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom">6.0 M4</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-li=
ne:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"http=
s://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15799" target=3D"_blank">15=
799</a></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom">Add default non-root user (e.g. &quot;ad=
min&quot;)</td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windr=
iver.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hre=
f=3D"mailto:unassigned@yoctoproject.org">unassigned@yoctoproject.org</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom">6.0 M2</td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom">6.0 M4</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold=
;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell=
-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15853" t=
arget=3D"_blank">15853</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom">Non-minimal eSDKs can=
not install</td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@wind=
river.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hr=
ef=3D"mailto:unassigned@yoctoproject.org">unassigned@yoctoproject.org</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom">6.0 M2</td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom">6.0 M3</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bol=
d;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cel=
l-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16016" =
target=3D"_blank">16016</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom">Add test case to ver=
ify that Poky can build poky</td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:r=
andy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:unassigned@yoctoproject.org">unassigned@yoc=
toproject.org</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">6.0 M1</td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om">6.1 M1</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"backgro=
und-image:initial;background-position:initial;background-repeat:initial"><s=
pan style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></sp=
an></span></p>

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

--000000000000a3f984064cacebd3--

