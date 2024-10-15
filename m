Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA40BCFC264
	for <webhook@archiver.kernel.org>; Tue, 15 Oct 2024 03:34:07 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web10.5031.1728963241117696724
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Oct 2024 20:34:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IPI+W4il;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2e2cc47f1d7so3274880a91.0
        for <yocto@lists.yoctoproject.org>; Mon, 14 Oct 2024 20:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728963240; x=1729568040; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VFdONuby3BtusSzsXx05kfkIRyCVuOm3sh7FHRunqaM=;
        b=IPI+W4ilsChEQcEiZBPlVlD881r8bnMtspcRTsf12BymwS0Ecy5jghAqmKDPqHIhrs
         4i5uNAxKfbHWxkxAC1rHThYzVVMeihxl7GgAcqDEXMHHp/lpWLe1Wy9vUsQPk8skG4TC
         kLfKdHKDNmfRMKOXPtpTtjn5L1TUPoWY3wi2cB1FCutT4whS+SBblge/uD3F/NqlGbZM
         TTw97ATmSOxSpxqJeKeWphoFpK6MawNsmtRT6Y7mG66mPLB8JHXnVvV6AJ92WQorsFTq
         4zocLlVf6St5uTCcR+kWLS6RbW6ZHmQGfAo/cVTckc/m0i0U1GK2Jx5wfRD8Cm30bW6y
         Nqbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728963240; x=1729568040;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VFdONuby3BtusSzsXx05kfkIRyCVuOm3sh7FHRunqaM=;
        b=Kr6iZnr5tIfyDouNpo5RzVBYHCvmTVLoy8Hmoj+HInxJpFF/GidvSBSGuJ2DepdxJe
         RLQu6m2jG0LF3k3QL452dLp6khGtXbDpToxKmJ6NZyoJ2ceNCSLvqC/KeOM5TngJvBxY
         bwpg8M0JypybUARFBd4Q3ja30NGOr/s0iQE0WGI53zhKMWsEcebHi9sObM0c9QHLjvE+
         5MIA9b1ZsyEsawcBB+CnrchicPgHj0ZeBK7IiK8Z8wgtiMvCyThGFgAg7vcg+w/MMeE7
         jr7ZIjO82QYQZbiuYf6hC2YR4namxv9GDQGO+bGcxWoCe/sa7s5gYjpepLpI0n8uAwqx
         wtgw==
X-Gm-Message-State: AOJu0Yz8mAkIreivuRxrbELkAIATMNh1VvWR06cCdBEVQLn3oTfATK+/
	O7FjjvhWe8qT2BFNOFXAoyeU8l/XQ4mE76eBn1sVVDDwphBDT3KWgiKfMYFs+PSdRnQk72JrIYM
	IW7zBANxX1709frgM8Clm524wiRou3VW5
X-Google-Smtp-Source: AGHT+IGUbfHRzUfgBe6TizNdBlbgatKYGipMhLd5CsPoH+PAZxN+voEybXJIfJ7w5XBoycFWC64PGpmr0eEcg5pcdFs=
X-Received: by 2002:a17:90a:3041:b0:2e0:8780:ecb with SMTP id
 98e67ed59e1d1-2e2f0af2eaamr20098218a91.12.1728963240161; Mon, 14 Oct 2024
 20:34:00 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 14 Oct 2024 20:33:48 -0700
Message-ID: <CAK5yBb-UoCg-CfWD_17T=-gtdFTPyctie+iUpZwQjq95fmp1fw@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW41
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c27a5c06247b9ff0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Oct 2024 03:34:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64023

--000000000000c27a5c06247b9ff0
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW41 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 14946 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14946> Image
rebuilds with rm_work result in missing license manifests
ross.burton@arm.com ross.burton@arm.com 5.1 5.2
14963 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14963> qemuarm64
doesn't have a wks file ross.burton@arm.com ross.burton@arm.com 5.1 5.2
15101 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15101> AB-INT:
dnf.DnfRepoTest.test_dnf_reinstall failure sjolley.yp.pm@gmail.com
pavel@zhukoff.net 5.1 M3 5.2 M1
15352 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15352> AB-INT
PTEST: gnutls naked-alerts test failure sjolley.yp.pm@gmail.com
simone.p.weiss@posteo.com 5.1 M3 5.2 M1
15364 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15364> glibc/gcc
test suite causes false positives in regression report
Harish.Sadineni@windriver.com Harish.Sadineni@windriver.com 5.1 M3 5.2
15426 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15426> dbus-wait
timeout uses a 'success' exit code ross.burton@arm.com ross.burton@arm.com
5.1 5.2 M2
15435 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15435> Clock in
the desktop panel resizes ross.burton@arm.com ross.burton@arm.com 5.1 5.2 M2
15611 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15611> buildhistory
package generation fails for empty package tim.orling@konsulko.com
steve@sakoman.com 0.0.0 5.0.5
15612 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15612> Dead link
in https://www.yoctoproject.org/reproducible-build-results/
mhalstead@linuxfoundation.org alexis.lothore@bootlin.com Q1 5.2 M1
15614 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15614> oe-selftest
fails with output: Disk full tim.orling@konsulko.com
richard.purdie@linuxfoundation.org 0.0.0 5.2 M1
15615 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15615> Builds
schedule unevenly across the cluster tim.orling@konsulko.com
richard.purdie@linuxfoundation.org 0.0.0 5.2 M2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000c27a5c06247b9ff0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW41 are li=
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
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold">Medium+=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;=
text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D14946" target=3D"_blank">14946</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">Image rebuilds with rm_work result in missing license=
 manifests</td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com=
">ross.burton@arm.com</a></td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross=
.burton@arm.com">ross.burton@arm.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">5.1</td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;text-align:right">5.2</td></tr><tr =
style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;tex=
t-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell-lin=
k" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14963" targe=
t=3D"_blank">14963</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom">qemuarm64 doesn&#39;t hav=
e a wks file</td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.c=
om">ross.burton@arm.com</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ro=
ss.burton@arm.com">ross.burton@arm.com</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-a=
lign:right">5.1</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;text-align:right">5.2</td></tr><t=
r style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;t=
ext-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell-l=
ink" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15101" tar=
get=3D"_blank">15101</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom">AB-INT:  dnf.DnfRepoTes=
t.test_dnf_reinstall failure</td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:s=
jolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om"><a href=3D"mailto:pavel@zhukoff.net">pavel@zhukoff.net</a></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom">5.1 M3</td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom">5.2 M1</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-dec=
oration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15352" target=3D"=
_blank">15352</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">AB-INT PTEST: gnutls naked-ale=
rts test failure</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:sjolley.yp.pm=
@gmail.com">sjolley.yp.pm@gmail.com</a></td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:simone.p.weiss@posteo.com">simone.p.weiss@posteo.com</a></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom">5.1 M3</td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom">5.2 M1</td></tr><tr s=
tyle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px =
3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text=
-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link=
" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15364" target=
=3D"_blank">15364</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom">glibc/gcc test suite cause=
s false positives in regression report</td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:Harish.Sadineni@windriver.com">Harish.Sadineni@windriver.com</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:Harish.Sadineni@windriver.com=
">Harish.Sadineni@windriver.com</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M3</td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;text-align:right">5.2</td></tr><tr style=3D"height:20p=
x"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align=
:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:u=
nderline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D15426" target=3D"_blank">15426<=
/a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom">dbus-wait timeout uses a &#39;success&#39; e=
xit code</td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">=
ross.burton@arm.com</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.b=
urton@arm.com">ross.burton@arm.com</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align=
:right">5.1</td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom">5.2 M2</td></tr><tr style=3D"height:=
20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-lin=
e:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15435" target=3D"_blank">154=
35</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom">Clock in the desktop panel resizes</td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">=
ross.burton@arm.com</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">5.1</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom">5.2 M2</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;tex=
t-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D15611" target=3D"_blank">15611</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">buildhistory package generation fails for empty package<=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom"><a href=3D"mailto:tim.orling@konsulko.com">tim.o=
rling@konsulko.com</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:steve@s=
akoman.com">steve@sakoman.com</a></td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">5.0.5</td></tr><tr style=3D"height:20px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom;font-weight:bold;text-decoration-line:underline;text-alig=
n:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproj=
ect.org/show_bug.cgi?id=3D15612" target=3D"_blank">15612</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">Dead link in <a href=3D"https://www.yoctoproject.org/reproduc=
ible-build-results/">https://www.yoctoproject.org/reproducible-build-result=
s/</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhalstead@linuxfoundati=
on.org">mhalstead@linuxfoundation.org</a></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hre=
f=3D"mailto:alexis.lothore@bootlin.com">alexis.lothore@bootlin.com</a></td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom">Q1</td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom">5.2 M1</td></tr><tr st=
yle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-=
decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link"=
 href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15614" target=
=3D"_blank">15614</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom">oe-selftest fails with out=
put: Disk full</td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tim.orling@kons=
ulko.com">tim.orling@konsulko.com</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D=
"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.=
org</a></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.2 M1<=
/td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-we=
ight:bold;text-decoration-line:underline;text-align:right"><a class=3D"gmai=
l-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D15615" target=3D"_blank">15615</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">Builds sch=
edule unevenly across the cluster</td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mai=
lto:tim.orling@konsulko.com">tim.orling@konsulko.com</a></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purd=
ie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">5.2 M2</td></tr></tbody></table><p class=3D"MsoNormal" style=
=3D"background-image:initial;background-position:initial;background-repeat:=
initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks=
,<span></span></span></p>

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

--000000000000c27a5c06247b9ff0--

