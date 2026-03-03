Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C632FEA4E18
	for <webhook@archiver.kernel.org>; Tue,  3 Mar 2026 03:41:54 +0000 (UTC)
Received: from mail-dl1-f42.google.com (mail-dl1-f42.google.com [74.125.82.42])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.10614.1772509308384406830
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2026 19:41:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LGKCJEe9;
 spf=pass (domain: gmail.com, ip: 74.125.82.42, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dl1-f42.google.com with SMTP id a92af1059eb24-1270adc5121so6486978c88.0
        for <yocto@lists.yoctoproject.org>; Mon, 02 Mar 2026 19:41:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772509308; cv=none;
        d=google.com; s=arc-20240605;
        b=DBcK6juw+lWSt/HzZO4oJlJ/RS60IqW0Xf1fgWZ9Sevk6PeC9OGv61M5+HsowlAgOZ
         voFYps7ZwDP3RDOXyOCH3HuytcUU9TeeaLh/Gg7EfuMLhxSJMK5ZhiPLEU3UEdDUGYVF
         yiz0eTXriMvcugMtOE770FvZf0x6WGbqVGWCXaFvOdWhQ0zUSGNxE6ptbZ9Wmr/W+6T1
         21AmRBgSeiEhpqUAZZTvpl3P1vmkUNxfo5y3S3LyklX90pf4S0WAHWihogFeDCHHyWQO
         hBRfqH9i3u0j++w6bVIJuEtvvDAJ/AGMxpP/0rFdsndgF4UlzzkVyOUblIqjsp4aZ/aq
         conQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Q7GNNbK8HR49RzFyezAJnW7x/I7biqRAKt4nehaODgc=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=NcQgFxf0RWMpE8Y9uOBSlhquS5KIl5smGYOgzKHiEj4CcOAzzkJ7sOCpGQTGw7+zft
         KnlfyieXbOWXhS8tfopG/aCsseF8GSR5n6d/BDa8eIBkcL+oymUsvDqE8sQnVX6jSakS
         mAUASkgzcS77ceGpRpuFXifTcK/+6/8LcFxhS7kG+bsANpwLeumfF72ZoKlJbkg1C67N
         QVaqkBv0XGqux2zRBXb5RFObNVEOeegx/sYVkVVbrRwNXOPAyJlbovqGR/jQCKtRUkag
         jYuu5H2WAyBF3/NxJ8AUKJlpmuf4j04b1Gb9FnAmadIhHkdoGYTt81vj0+cOcuW9GBWR
         kABw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772509308; x=1773114108; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Q7GNNbK8HR49RzFyezAJnW7x/I7biqRAKt4nehaODgc=;
        b=LGKCJEe9ookSqbJE2/263SS1A08hMS77hpqKcJWxk75wX+fgrqtgS7qbix47vFSyfP
         5T/5ROhXoHWBbtXH2CdFvxv0NEd+Nvr6VZIER5VaesfvCiZHxsIsJRC7sght8YdQd3PF
         u579K4KV58MnBbarD2cBGA+Gm8UboWMX3pNt+vilNU/B37VfRHK/iUtk0Ich6QXQJup3
         5gJI7UmospOLR9d6DnwizbuRkpSaXuyWVPFun11thM1NU3tor5O/+cqMFBHjFvaDuR9H
         Y3U6QwbUDmQSTTtFdo7dwD3u6RpxI+u/a4QcPhSzh4OZur/T/BJrE9X5D5Q5Tz1uhIZl
         ehpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772509308; x=1773114108;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q7GNNbK8HR49RzFyezAJnW7x/I7biqRAKt4nehaODgc=;
        b=s1NVXIfGa7mF+DE/eg2OFLQVtAk+xwxGNWC+rUhSBNB53Pb/mmezeySFZjGRUcyM0y
         8YZg9JtwCZB58fHo2X02rJuUoaewx3HqaYcWfj0WbDO2inKhGzwIawlSae5VotEoxy+m
         EZNOIRbRPQpH+UkHx+cx1pQBmxZTSMuSrXaMXxbLu2FQzkJwY79zmcDUB1HWiiO9MwFG
         RlDh1gR79tdliP7sfS40MwEcsdYWjeTeE7bwqd7U1wu1pA0lR9bnQ6SlwwW4CHi0xxF2
         9wvWoDMbFBQdqCEkBLz7uAtVrB0fBPfdfq8H/wyd2GF9AW24aE5oHuIBggRxC2iPO73c
         qgcw==
X-Gm-Message-State: AOJu0Yxwi5GCTwyquZR57qjTAnlu2biogoWR147ekyAgldt9clbGK+w3
	oGRwlBV+eCzT5MsXNyodx4aYiPH3itJwVlky0WSgf4+QlQ/ooFCgoA7qdnD36jqEVfia0szJFvz
	AZyp1lKLr94Z/HhUpXOaRBumMRP9WRmPSPmx9
X-Gm-Gg: ATEYQzy7RmNDw1XJP9U+azu4lg71k6UeH3sIfdlJbP6vb4h1bNc4wmAHW/HtEePcv/+
	yTTvXSroYBw1h0IKxJyrLnnXybdMxvwEqAawi75ZeiIQLQBiQ13+yvwQfJiGObWMxOqXFYmJHTP
	IjbTdybP8ejPcQaEUTwZaZcecgNK4YiAJIEN/HKK5ffLiVcvD/aq2+MUim1yYkgxI9jP06XYLY3
	r11/3otSNyf3RvkLeXifcHmdqBK0wjvX6diauJgm0nvTf6PhVKPrd7Esk5gG8Me1oQChkZs90Sj
	ZTCRluYJIGaIZzfqj3trH2m2v72/ovivbIahOoh/BL1PeNBjbnxeaUGwbYqjxFgI5RYCgszhyH4
	iZ7JHudXg08EYo+FPFs7KEdkzkr9D7Uf8qTea9A==
X-Received: by 2002:a05:7301:1f10:b0:2ae:5e6b:dc41 with SMTP id
 5a478bee46e88-2bde1c9482emr4811186eec.14.1772509307484; Mon, 02 Mar 2026
 19:41:47 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 2 Mar 2026 20:41:35 -0700
X-Gm-Features: AaiRm53MEDbzPAPAkwSh9CL039xZoSJSp4YLFGqpld49vYk-K69PCYgrO6Q3JkI
Message-ID: <CAK5yBb9D1-Tx83ntpKn5a=t9i3a-BFUT2V1sK8i8AxYd_GQY=g@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW09
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a23b51064c167b4f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2026 03:41:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66294

--000000000000a23b51064c167b4f
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW09 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 13002 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=13002> Create
a set of tests to run after upgrading patchtest randy.macleod@windriver.com
tgamblin@baylibre.com 5.3 M3 6.0 M4
13005 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=13005> Patchtest
did not detect missing bb files changes randy.macleod@windriver.com
tgamblin@baylibre.com 5.3 M3 6.0 M4
13251 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=13251> Symlinks
overridden when building multitple kernels randy.macleod@windriver.com
bruce.ashfield@gmail.com 6.0 M1 6.99
13360 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=13360> kernel-dev:
package full kernel source and headers for reference purposes
randy.macleod@windriver.com bruce.ashfield@gmail.com 6.0 M1 6.99
13428 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=13428> patchtest-oe:
test-pylint need enhancement for new files tgamblin@baylibre.com
tgamblin@baylibre.com 5.3 6.1
13634 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=13634> patchtest
should run maintainers test on new recipes tgamblin@baylibre.com
tgamblin@baylibre.com 5.3 M3 6.1
13931 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=13931> evaluate
simplification of headers_install requirements randy.macleod@windriver.com
bruce.ashfield@gmail.com 6.0 M1 6.0 M3
14879 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14879> Fix for
target definitions returning 'NoneType' for arm' results in 'NoneType when
arch_abi is arm-eabi ross.burton@arm.com ross.burton@arm.com 4.0.32 4.0.35
14885 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14885> We need to
rebuild all modules when the kernel is rebuild randy.macleod@windriver.com
bruce.ashfield@gmail.com 6.0 M1 6.0 M3
14963 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14963> qemuarm64
doesn't have a wks file randy.macleod@windriver.com ross.burton@arm.com 5.3
6.1
15130 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15130> bitbake
should warn if a function is defined only for specific cases
randy.macleod@windriver.com tgamblin@baylibre.com 5.3 6.1
15256 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15256> Use images
built with Autobuilder for patchtest guest mode tgamblin@baylibre.com
tgamblin@baylibre.com 5.3 6.1
15257 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15257> meta-patchtest
layer needs to be checked for Yocto Project Compatible status
tgamblin@baylibre.com tgamblin@baylibre.com 5.3 M3 6.1
15258 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15258> Patchtest
should test an entire series together, rather than checking patches
individually tgamblin@baylibre.com tgamblin@baylibre.com 5.3 M3 6.1
15259 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15259> Patchtest
should report test results back to Patchwork tgamblin@baylibre.com
tgamblin@baylibre.com 5.3 M3 6.1
15260 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15260> Patchtest
automated test process should boot the VM once per series
tgamblin@baylibre.com tgamblin@baylibre.com 5.3 M3 6.1
15263 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15263> Expand
patchtest test suite tgamblin@baylibre.com tgamblin@baylibre.com 5.3 6.1
15265 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15265> Make
patchtest compatible with other layers tgamblin@baylibre.com
tgamblin@baylibre.com 5.3 6.1
15269 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15269> patchtest
test_lic_files_chksum_modified_not_mentioned is inconsistent between local
and automated runs tgamblin@baylibre.com tgamblin@baylibre.com 5.3 6.1
15329 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15329> Default
https://localhost:8081/accounts/login throws a 403 error;
CSRF_TRUSTED_ORIGINS needs the port appended tim.orling@konsulko.com
tim.orling@konsulko.com 6.0 M1 6.0 M4
15341 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15341> False
positive on missing S-O-B ! tgamblin@baylibre.com tgamblin@baylibre.com 5.3
6.1
16011 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16011> Fix
errors.yoctoproject.org after bitbake-setup switch tim.orling@konsulko.com
unassigned@yoctoproject.org 5.3 M4 6.0 M4
16176 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16176> FILE
variable is inconsistent within bbclass files randy.macleod@windriver.com
richard.purdie@linuxfoundation.org 0.0.0 6.0 M4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000a23b51064c167b4f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW09 a=
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
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13002" target=3D"_b=
lank">13002</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">Create a set of tests to run aft=
er upgrading patchtest</td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.m=
acleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom"><a href=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom">5.3 M3</td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom">6.0 M4</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold=
;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell=
-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13005" t=
arget=3D"_blank">13005</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom">Patchtest did not det=
ect missing bb files changes</td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:r=
andy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom">5.3 M3</td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">6.0 M4</=
td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-wei=
ght:bold;text-decoration-line:underline;text-align:right"><a class=3D"gmail=
-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
13251" target=3D"_blank">13251</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">Symlinks over=
ridden when building multitple kernels</td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:bruce.ashfield@gmail.com">bruce.a=
shfield@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom">6.0 M1</td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom;text-align:right">6.99</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;tex=
t-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D13360" target=3D"_blank">13360</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">kernel-dev: package full kernel source and headers for r=
eference purposes</td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleo=
d@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
><a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom">6.0 M1</td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right=
">6.99</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
font-weight:bold;text-decoration-line:underline;text-align:right"><a class=
=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D13428" target=3D"_blank">13428</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">patc=
htest-oe: test-pylint need enhancement for new files</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"><a href=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:tgamblin@baylibre.com">tgamblin@b=
aylibre.com</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;text-align:right">5.3</td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom;text-align:right">6.1</td></tr><tr style=3D"height:20px"><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:botto=
m"></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underli=
ne;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzil=
la.yoctoproject.org/show_bug.cgi?id=3D13634" target=3D"_blank">13634</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom">patchtest should run maintainers test on new recip=
es</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:tgamblin@baylibre.com">tgam=
blin@baylibre.com</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tgamblin=
@baylibre.com">tgamblin@baylibre.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M3<=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom;text-align:right">6.1</td></tr><tr style=3D"heigh=
t:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-l=
ine:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"htt=
ps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13931" target=3D"_blank">1=
3931</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom">evaluate simplification of headers_inst=
all requirements</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod=
@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom">6.0 M1</td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom">6.0 M3</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold=
;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell=
-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14879" t=
arget=3D"_blank">14879</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom">Fix for target defini=
tions returning &#39;NoneType&#39; for arm&#39; results in &#39;NoneType wh=
en arch_abi is arm-eabi</td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.b=
urton@arm.com">ross.burton@arm.com</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom">4.0.32</td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom">4.0.35</td></tr><tr style=3D"heig=
ht:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical=
-align:bottom"></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-=
line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14885" target=3D"_blank">=
14885</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom">We need to rebuild all modules when th=
e kernel is rebuild</td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macl=
eod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m"><a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom">6.0 M1</td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">6.0 M3</td></=
tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:b=
old;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in-c=
ell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14963=
" target=3D"_blank">14963</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom">qemuarm64 doesn&#3=
9;t have a wks file</td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macl=
eod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a></td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;text-align:right">5.3</td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align=
:right">6.1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom;font-weight:bold;text-decoration-line:underline;text-align:right"><a c=
lass=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D15130" target=3D"_blank">15130</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
bitbake should warn if a function is defined only for specific cases</td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.m=
acleod@windriver.com</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tgamb=
lin@baylibre.com">tgamblin@baylibre.com</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-=
align:right">5.3</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">6.1</td></tr><=
tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:=
0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;=
text-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell-=
link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15256" ta=
rget=3D"_blank">15256</a></td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom">Use images built with =
Autobuilder for patchtest guest mode</td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"=
mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"><a href=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a><=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom;text-align:right">5.3</td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;t=
ext-align:right">6.1</td></tr><tr style=3D"height:20px"><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom;font-weight:bold;text-decoration-line:underline;text-align:ri=
ght"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.=
org/show_bug.cgi?id=3D15257" target=3D"_blank">15257</a></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom">meta-patchtest layer needs to be checked for Yocto Project Compati=
ble status</td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tgamblin@baylibre.c=
om">tgamblin@baylibre.com</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:=
tgamblin@baylibre.com">tgamblin@baylibre.com</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
>5.3 M3</td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom;text-align:right">6.1</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-dec=
oration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15258" target=3D"=
_blank">15258</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">Patchtest should test an entir=
e series together, rather than checking patches individually</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:tgamblin@baylibre.com">t=
gamblin@baylibre.com</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M3</td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;text-align:right">6.1</td></tr><tr style=3D"height:20px"><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;te=
xt-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D15259" target=3D"_blank">15259</a></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom">Patchtest should report test results back to Patchwork<=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom"><a href=3D"mailto:tgamblin@baylibre.com">tgambli=
n@baylibre.com</a></td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tgamblin@ba=
ylibre.com">tgamblin@baylibre.com</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M3</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom;text-align:right">6.1</td></tr><tr style=3D"height:2=
0px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line=
:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D15260" target=3D"_blank">1526=
0</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom">Patchtest automated test process should bo=
ot the VM once per series</td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tgam=
blin@baylibre.com">tgamblin@baylibre.com</a></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a></td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom">5.3 M3</td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">6.1</td>=
</tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight=
:bold;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in=
-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D152=
63" target=3D"_blank">15263</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom">Expand patchtest=
 test suite</td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tgamblin@baylibre.=
com">tgamblin@baylibre.com</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto=
:tgamblin@baylibre.com">tgamblin@baylibre.com</a></td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
;text-align:right">5.3</td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">6.1</td>=
</tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight=
:bold;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in=
-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D152=
65" target=3D"_blank">15265</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom">Make patchtest c=
ompatible with other layers</td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tg=
amblin@baylibre.com">tgamblin@baylibre.com</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
a href=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a></td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;text-align:right">5.3</td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align=
:right">6.1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom;font-weight:bold;text-decoration-line:underline;text-align:right"><a c=
lass=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D15269" target=3D"_blank">15269</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
patchtest test_lic_files_chksum_modified_not_mentioned is inconsistent betw=
een local and automated runs</td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:t=
gamblin@baylibre.com">tgamblin@baylibre.com</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom;text-align:right">5.3</td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-alig=
n:right">6.1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom;font-weight:bold;text-decoration-line:underline;text-align:right"><a =
class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D15329" target=3D"_blank">15329</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
>Default <a href=3D"https://localhost:8081/accounts/login">https://localhos=
t:8081/accounts/login</a> throws a 403 error; CSRF_TRUSTED_ORIGINS needs th=
e port appended</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tim.orling@kon=
sulko.com">tim.orling@konsulko.com</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko.com</a></td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom">6.0 M1</td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom">6.0 M4</td></tr><tr style=
=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-dec=
oration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15341" target=3D"=
_blank">15341</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">False positive on missing S-O-=
B !</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom"><a href=3D"mailto:tgamblin@baylibre.com">tga=
mblin@baylibre.com</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tgambli=
n@baylibre.com">tgamblin@baylibre.com</a></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-al=
ign:right">5.3</td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">6.1</td></tr><tr=
 style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;te=
xt-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell-li=
nk" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16011" targ=
et=3D"_blank">16011</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom">Fix <a href=3D"http://er=
rors.yoctoproject.org">errors.yoctoproject.org</a> after bitbake-setup swit=
ch</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:tim.orling@konsulko.com">ti=
m.orling@konsulko.com</a></td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:unas=
signed@yoctoproject.org">unassigned@yoctoproject.org</a></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom">5.3 M4</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">6.0 M4</td></tr><tr style=3D"hei=
ght:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom"></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration=
-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16176" target=3D"_blank"=
>16176</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom">FILE variable is inconsistent within =
bbclass files</td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@wi=
ndriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoun=
dation.org</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
6.0 M4</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-=
image:initial;background-position:initial;background-repeat:initial"><span =
style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span><=
/span></p>

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

--000000000000a23b51064c167b4f--

