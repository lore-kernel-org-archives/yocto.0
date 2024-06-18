Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A6F3C2BA18
	for <webhook@archiver.kernel.org>; Tue, 18 Jun 2024 14:44:04 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web11.88169.1718721837055209170
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jun 2024 07:43:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FU7a4A5o;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-57cad4475e0so9222204a12.1
        for <yocto@lists.yoctoproject.org>; Tue, 18 Jun 2024 07:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718721835; x=1719326635; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fVAXyM5WNbf9PguHqYLHy9azRT6LW1qvLUshmmN83p4=;
        b=FU7a4A5oVC75nDP5i6O20Jn0uvXcsBkhvn+ja2/E48b1QqwhJJX+fXS/3bsNIX95kE
         +GqeoQfL3SZ4Mqm+I4Jhd5vX4Hp5rUVynk7LWgDh8glLoekyIbxAjcMqZGtLgG7tmp5+
         M7+SaqjNO5FGuH2ymahKTFgKZEDFg+CI9DC+h8qgTsIQw/aU85WHSaWZbOBuxbnSLrc3
         DyHCHFx2yw/KTMZR4oJ/PzTFaohSFh5Y8a5ypS8LbiBrMc3R1JoWvacKzUERvxWyqDuC
         KmKAUfLyCKSAIU+t1RwK/Cw0awgBEF+rsgaEAvmvXwdomMClpvEfglWaSIMasiwFVnVx
         49AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718721835; x=1719326635;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fVAXyM5WNbf9PguHqYLHy9azRT6LW1qvLUshmmN83p4=;
        b=cIS1y5pAKBs6dBRLMF0vMoek4PDi5jyL9e7Nic6pnGV14yU8SKX3yC5TQYuydu6ibo
         ywE2gwkVvRMP6ScUWMmi4JLX+YIxFoORYUgkR2nlZZhmzFP1Cj17Qq6qzbz6nT/SbmyN
         dzgApf/rqt+Fy6vS1daqel8BuIHbK+yZbbSPmzV09rwXKnpt1W0QUHXqdnV20ls/2CoV
         PaI0GT+7Ip67gdK2XnMv0u0l7UjS+6kRTYm0hpC+YAdsWHI6mK1uhdTLJP/ZgrHsorbk
         ZFAO+fbTCJrxIQy5QC+JSpF6/w3aLMlGWwLZBBTvq8YVHtT0+pw1eBbmMLa/u7U2KrWK
         pqag==
X-Gm-Message-State: AOJu0Yytx4S1uZh3lZfi9nHTgxsGs0f7ZBRWRGFGqVhoj2mVK6wNi9Hi
	xJ3nn+/LAWgFJ/1cMeo5fj34GLz+dCYAoISi/iBuEiWnm8rI6CbKv6Umf66gXBwc9LBGKwGWw0K
	4YihyXBsedIzWOSxXETgaVK7kyJjTIfYP
X-Google-Smtp-Source: AGHT+IG4FM4GAo7H9Vhp8S2sN8HF5E0k1PgK6a4FM2qM3nKNbrQlEqqU2daCgdaHQehhtV/fWdS5NFLxVTBDerTSKGM=
X-Received: by 2002:a17:906:bfc3:b0:a6f:1e1b:f9ea with SMTP id
 a640c23a62f3a-a6fa4498e9dmr3373966b.31.1718721834933; Tue, 18 Jun 2024
 07:43:54 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 18 Jun 2024 07:43:41 -0700
Message-ID: <CAK5yBb83DsM=K4J9srDERwP9iGmaa8sRD2OS5-Vjc1vaa7VBww@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW23
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000706397061b2b1ce3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jun 2024 14:44:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63360

--000000000000706397061b2b1ce3
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW23 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 10820 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=10820>
devtool:
-d/--debug doesn't show bitbake debug output randy.macleod@windriver.com
pidge@pidge.org 5.1 M1 5.1 M3
14125 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14125> busybox
wget ssl is exposed to MitM attack due to CVE-2018-1000500
randy.macleod@windriver.com randy.macleod@windriver.com 5.1 M1 5.1 M2
14710 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14710> Improve
cargo fetcher test cases randy.macleod@windriver.com
randy.macleod@windriver.com 5.1 M1 5.1 M3
14876 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14876> rust:
Improve reproducibility patch randy.macleod@windriver.com
Yash.Shinde@windriver.com 5.1 M1 5.1 M2
14907 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14907> packaging
debugsrc breaks for recipes with externalsrc and debug-with-srcpkg
randy.macleod@windriver.com pavel@zhukoff.net 4.0.17 4.0.20
14909 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14909>
file_5.41.bb:do_configure error with GCC 11.3.0 from SDK 4.0.3
randy.macleod@windriver.com pavel@zhukoff.net 4.0.17 4.0.20
15061 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15061> Rust
multilib sdks broken randy.macleod@windriver.com
Deepthi.Hemraj@windriver.com 5.1 M1 5.1 M3
Thanks, 15101 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15101> AB-INT:
dnf.DnfRepoTest.test_dnf_reinstall failure randy.macleod@windriver.com
pavel@zhukoff.net 5.1 M1 5.1 M2
15162 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15162> devtool
build does not cope with multiple SRC_URI in a recipe
randy.macleod@windriver.com jstephan@baylibre.com 5.1 M1 5.1 M2
15180 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15180> AB-INT:
mips rust.RustSelfTestSystemEmulated.test_rust failure
randy.macleod@windriver.com sundeep.kokkonda@windriver.com 5.1 M1 5.1 M2
15225 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15225> AB-INT
PTEST: openssl 80-test_ssl_new.t ptest failure randy.macleod@windriver.com
randy.macleod@windriver.com 5.1 M1 5.1 M2
15286 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15286> AB-INT:
PTEST: valgrind callgrind/tests/clreq ptest failures
randy.macleod@windriver.com randy.macleod@windriver.com 5.1 M1 5.1 M3
15288 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15288> systemtap
is not reproducible randy.macleod@windriver.com bruce.ashfield@gmail.com 5.1
M1 5.1 M2
15333 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15333>
bitbake/lib/hashserv/sqlite.py:294:
DeprecationWarning: The default datetime adapter is deprecated as of Python
3.12 randy.macleod@windriver.com JPEWhacker@gmail.com 5.1 M1 5.1 M2
15335 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15335> AB-INT:
sstatetests.SStateMirrors.test_cdn_mirror: Missing objects in the cache
randy.macleod@windriver.com mhalstead@linuxfoundation.org 5.1 M1 5.1 M2
15342 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15342> Serial
issue with 6.6.9 linux-yocto randy.macleod@windriver.com
bruce.ashfield@gmail.com 5.1 M1 5.1 M2
15364 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15364> glibc/gcc
test suite causes false positives in regression report
randy.macleod@windriver.com Harish.Sadineni@windriver.com 5.1 M1 5.1 M2
15423 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15423> glibc
toolchain tests leave stale qemu processes randy.macleod@windriver.com
Yash.Shinde@windriver.com 5.1 M1 5.1 M3
15454 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15454> wic:
rootdirectory of the partition is always owned by root
randy.macleod@windriver.com pavel@zhukoff.net 5.1 M1 5.1 M3
15463 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15463> 6.6.23
qemux86 boot hang [qemu, not kernel] randy.macleod@windriver.com
bruce.ashfield@gmail.com 5.1 M1 5.1 M2
15464 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15464>
OECORE_NATIVE_SYSROOT
set but not exported in the external SDK randy.macleod@windriver.com
ghaderer@wyplay.com 5.1 M1 5.1 M2
15465 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15465> AB-INT
PTEST: valgrind ptest failure: in memcheck/tests/leak_cpp_interior
randy.macleod@windriver.com randy.macleod@windriver.com 5.1 M1 5.1 M3
15470 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15470> Leading
space before } silently breaks parse randy.macleod@windriver.com
newcomer@yoctoproject.org 5.1 M1 5.1 M3
15474 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15474> [kernel]
Oops (page fault) in mmc driver on multiple hardware when using mmc-utils
randy.macleod@windriver.com bruce.ashfield@gmail.com 5.1 M1 5.1 M3
15478 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15478> do_menuconfig
for linux-yocto fails with kernel-fitimage and UBOOT_CONFIG
randy.macleod@windriver.com bruce.ashfield@gmail.com 5.1 M1 5.1 M3
15512 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15512> Add testing
for install-buildtools randy.macleod@windriver.com
unassigned@yoctoproject.org 0.0.0 5.1 M3
15515 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15515> Improve
oe.qa.handle_error not to depend on whole ERROR_QA and WARN_QA value
randy.macleod@windriver.com Martin.Jansa@gmail.com 0.0.0 5.1 M3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000706397061b2b1ce3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW23 are li=
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
yoctoproject.org/show_bug.cgi?id=3D10820" target=3D"_blank">10820</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">devtool: -d/--debug doesn&#39;t show bitbake debug ou=
tput</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.c=
om">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"m=
ailto:pidge@pidge.org">pidge@pidge.org</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M=
1</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom">5.1 M3</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underlin=
e;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzill=
a.yoctoproject.org/show_bug.cgi?id=3D14125" target=3D"_blank">14125</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom">busybox wget ssl is exposed to MitM attack due to C=
VE-2018-1000500</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@=
windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</=
a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom">5.1 M1</td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M2</td>=
</tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight=
:bold;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in=
-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D147=
10" target=3D"_blank">14710</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom">Improve cargo fe=
tcher test cases</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod=
@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com<=
/a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom">5.1 M1</td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M3</td=
></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weigh=
t:bold;text-decoration-line:underline;text-align:right"><a class=3D"gmail-i=
n-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14=
876" target=3D"_blank">14876</a></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom">rust: Improve r=
eproducibility patch</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.mac=
leod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om"><a href=3D"mailto:Yash.Shinde@windriver.com">Yash.Shinde@windriver.com<=
/a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom">5.1 M1</td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M2</td=
></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weigh=
t:bold;text-decoration-line:underline;text-align:right"><a class=3D"gmail-i=
n-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14=
907" target=3D"_blank">14907</a></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom">packaging debug=
src breaks for recipes with externalsrc and debug-with-srcpkg</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@=
windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:pavel@zhukof=
f.net">pavel@zhukoff.net</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom">4.0.17</td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom">4.0.20</td></tr><tr style=3D"height:20px"><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom;font-weight:bold;text-decoration-line:underline;text-align:r=
ight"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject=
.org/show_bug.cgi?id=3D14909" target=3D"_blank">14909</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom">file_5.41.bb:do_configure error with GCC 11.3.0 from SDK 4.0.3</t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">ran=
dy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:p=
avel@zhukoff.net">pavel@zhukoff.net</a></td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">4.0.17</=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom">4.0.20</td></tr><tr style=3D"height:20px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;t=
ext-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D15061" target=3D"_blank">15061</a></td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom">Rust multilib sdks broken</td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</=
a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:Deepthi.Hemraj@windriver.co=
m">Deepthi.Hemraj@windriver.com</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M1</td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">5.1 M3</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;font=
-weight:bold">Thanks,</td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decor=
ation-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15101" target=3D"_b=
lank">15101</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">AB-INT:  dnf.DnfRepoTest.test_dn=
f_reinstall failure</td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macl=
eod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m"><a href=3D"mailto:pavel@zhukoff.net">pavel@zhukoff.net</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">5.1 M1</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom">5.1 M2</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-dec=
oration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15162" target=3D"=
_blank">15162</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">devtool build does not cope wi=
th multiple SRC_URI in a recipe</td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom"><a href=3D"mailto:jstephan@baylibre.com">jstephan@baylibre.c=
om</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom">5.1 M1</td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M2<=
/td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-we=
ight:bold;text-decoration-line:underline;text-align:right"><a class=3D"gmai=
l-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D15180" target=3D"_blank">15180</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">AB-INT: mi=
ps rust.RustSelfTestSystemEmulated.test_rust failure</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"><a href=3D"mailto:sundeep.kokkonda@wind=
river.com">sundeep.kokkonda@windriver.com</a></td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.=
1 M1</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom">5.1 M2</td></tr><tr style=3D"height:20px"><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:under=
line;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D15225" target=3D"_blank">15225</a><=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom">AB-INT PTEST: openssl 80-test_ssl_new.t ptest fa=
ilure</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.=
com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"=
mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom">5.1 M1</td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M2</td></tr><tr s=
tyle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px =
3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text=
-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link=
" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15286" target=
=3D"_blank">15286</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom">AB-INT: PTEST: valgrind ca=
llgrind/tests/clreq ptest failures</td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"ma=
ilto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macl=
eod@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M1</td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom">5.1 M3</td></tr><tr style=3D"height:20px"><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom;font-weight:bold;text-decoration-line:underline;text-align:right"><=
a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D15288" target=3D"_blank">15288</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m">systemtap is not reproducible</td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mail=
to:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom"><a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfield@=
gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom">5.1 M1</td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
5.1 M2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
font-weight:bold;text-decoration-line:underline;text-align:right"><a class=
=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D15333" target=3D"_blank">15333</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">bitb=
ake/lib/hashserv/sqlite.py:294: DeprecationWarning: The default datetime ad=
apter is deprecated as of Python 3.12</td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D=
"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom"><a href=3D"mailto:JPEWhacker@gmail.com">JPEWhacker@gma=
il.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom">5.1 M1</td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.1=
 M2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;fon=
t-weight:bold;text-decoration-line:underline;text-align:right"><a class=3D"=
gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?=
id=3D15335" target=3D"_blank">15335</a></td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">AB-INT: =
sstatetests.SStateMirrors.test_cdn_mirror: Missing objects in the cache</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">rand=
y.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mh=
alstead@linuxfoundation.org">mhalstead@linuxfoundation.org</a></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom">5.1 M1</td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M2</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-dec=
oration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15342" target=3D"=
_blank">15342</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">Serial issue with 6.6.9 linux-=
yocto</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.=
com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"=
mailto:bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">5.1 M1</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom">5.1 M2</td></tr><tr style=
=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-dec=
oration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15364" target=3D"=
_blank">15364</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">glibc/gcc test suite causes fa=
lse positives in regression report</td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"ma=
ilto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:Harish.Sadineni@windriver.com">Harish.S=
adineni@windriver.com</a></td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M1</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">5.1 M2</td></tr><tr style=3D"height:21px"><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom;font-weight:bold;text-decoration-line:underline;text-align:ri=
ght"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.=
org/show_bug.cgi?id=3D15423" target=3D"_blank">15423</a></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom">glibc toolchain tests leave stale qemu processes</td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@wind=
river.com</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:Yash.Shinde@wind=
river.com">Yash.Shinde@windriver.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M1<=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom">5.1 M3</td></tr><tr style=3D"height:21px"><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;=
text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D15454" target=3D"_blank">15454</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">wic:  rootdirectory of the partition is always owned =
by root</td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windrive=
r.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:pavel@zhukoff.net">pavel@zhukoff.net</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om">5.1 M1</td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom">5.1 M3</td></tr><tr style=3D"height:2=
1px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line=
:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D15463" target=3D"_blank">1546=
3</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom">6.6.23 qemux86 boot hang [qemu, not kernel=
]</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com"=
>randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mail=
to:bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom">5.1 M1</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom">5.1 M2</td></tr><tr style=3D"he=
ight:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoratio=
n-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15464" target=3D"_blank=
">15464</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom">OECORE_NATIVE_SYSROOT set but not ex=
ported in the external SDK</td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ran=
dy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"><a href=3D"mailto:ghaderer@wyplay.com">ghaderer@wyplay.com</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom">5.1 M1</td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M2</td></tr>=
<tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold=
;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell=
-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15465" t=
arget=3D"_blank">15465</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom">AB-INT PTEST: valgrin=
d ptest failure: in memcheck/tests/leak_cpp_interior</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriv=
er.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M1</=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom">5.1 M3</td></tr><tr style=3D"height:21px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;t=
ext-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D15470" target=3D"_blank">15470</a></td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom">Leading space before } silently breaks parse</td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macl=
eod@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:newcomer=
@yoctoproject.org">newcomer@yoctoproject.org</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
>5.1 M1</td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom">5.1 M3</td></tr><tr style=3D"height:21px=
"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:un=
derline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D15474" target=3D"_blank">15474</=
a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom">[kernel] Oops (page fault) in mmc driver on m=
ultiple hardware when using mmc-utils</td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D=
"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom"><a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ashf=
ield@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom">5.1 M1</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom">5.1 M3</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom;font-weight:bold;text-decoration-line:underline;text-align:right"><a c=
lass=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D15478" target=3D"_blank">15478</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
do_menuconfig for linux-yocto fails with kernel-fitimage and UBOOT_CONFIG</=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">ra=
ndy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:=
bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom">5.1 M1</td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom">5.1 M3</td></tr><tr style=3D"heigh=
t:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-l=
ine:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"htt=
ps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15512" target=3D"_blank">1=
5512</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom">Add testing for install-buildtools</td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy=
.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:una=
ssigned@yoctoproject.org">unassigned@yoctoproject.org</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom">0.0.0</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">5.1 M3</td></tr><tr style=3D"hei=
ght:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom"></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration=
-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15515" target=3D"_blank"=
>15515</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom">Improve oe.qa.handle_error not to dep=
end on whole ERROR_QA and WARN_QA value</td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:Martin.Jansa@gmail.com">Martin.Ja=
nsa@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m">5.1 M3</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"backgrou=
nd-image:initial;background-position:initial;background-repeat:initial"><sp=
an style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></spa=
n></span></p>

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

--000000000000706397061b2b1ce3--

