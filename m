Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B232AC47258
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 04:20:05 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web11.4286.1705983597907026662
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 20:19:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FsVtEn1W;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a2d04888d3dso405118966b.2
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 20:19:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705983596; x=1706588396; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YCBKUdwRiqaPXmr+rMWX9o8DguBhesFbNKMzKHjrI74=;
        b=FsVtEn1WYIw/6L+VoCWCnXod9hjq5WEPcMW6SnNtgHADLAApT77xejH9V2gNUkODkj
         Ij7nuT2+tqHID4Vkuir9Y5c+AZoSjDqmA6IVWu0Iv+GJJYI3Al14cPRxtQo8OkiNfeD+
         NIiq8/9oP+jrVO4xoBUL/QpZt1bW6mtOvQNeNt4zPh7nWEEDWeWLDYuva+Ah44YcQhnG
         6h0A2AjHr+FPeua8Fs2WQRCe1T+EVTh9g5JVTbzDzfB+dBk4uo3ATTKQ7C8BBHXPaP9D
         S0slEGBSmm1hL1C03pTYTc+7asoRiusFQoQogjuGiCWlC57kmEFSuPDuZHu25FsEplpV
         qr0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705983596; x=1706588396;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YCBKUdwRiqaPXmr+rMWX9o8DguBhesFbNKMzKHjrI74=;
        b=Z86EGhFR7qBdUfkjgME18ro8Go4tGopCGXt4yW4xPrrkDhwiNCfd+8TaHerBZh5JEi
         0hJw8IzIy7hfNjW3LgOqWJ3We25MRgRRuxc0wM4LOSvukOWk8BIuEqRqmRQt0+nWG5eg
         uKd48SVF7uniG+0iTjW3lVQwZoGaH1OmEbQno2oRGGWFjPsLLdSYjqTl72Edgxu8sKL1
         Ll8ML5ha+gkwtvJUICFWZFfTD0TBggrFEcg5ltWWxWi3pO7Z6kI30qmZYZUq4xhioUzw
         W3iM6vnkiUCOqjDKh6SwdFBgOCt8sd9KK8La6hvY+9EPUvAtgdauZbWryTTXqs+UcFmx
         YAlA==
X-Gm-Message-State: AOJu0YyKm3ReX8oDmYijMd9LUlhCOtXSeDModSEeazGcuVWstE396nI9
	MtmiWuFBYGOnEJEcYDHTF0/mE9vuQI/gmg3JGbiBbVcT8ga3DhWNPsbV3EN1PDEv1PJpymxdYSc
	vF9DTPJhCr/msYUaRWWLDKRaPFuifmcwuZu0=
X-Google-Smtp-Source: AGHT+IHr4V/c0a7M8+JxuOdvPV2DixAxXMj4j9SI7Zmo3ofAeoEXKY6L3YTIRXCwgCnsXKGM42On+R+TyuMRoHRD2JA=
X-Received: by 2002:a17:907:d042:b0:a30:721d:75e9 with SMTP id
 vb2-20020a170907d04200b00a30721d75e9mr960515ejc.24.1705983595840; Mon, 22 Jan
 2024 20:19:55 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 22 Jan 2024 21:19:44 -0700
Message-ID: <CAK5yBb-jY+nRP29q0qr=qG3E0wDqiv_DbCQr=4OO=VNOOuBNiA@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW03
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000390740060f954293"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 04:20:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62239

--000000000000390740060f954293
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW03 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
High 14901 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14901> lttng:
collect TAP output randy.macleod@windriver.com alexis.lothore@bootlin.com 5.0
M2 5.0 M3
Medium+ 4530 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=4530> gconv
data needs virtual providers randy.macleod@windriver.com
bernhard.guillon@begu.org 5.0 M1 5.0 M3
10820 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=10820> devtool:
-d/--debug doesn't show bitbake debug output randy.macleod@windriver.com
pidge@pidge.org 4.3 M4 5.0 M3
11704 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=11704> Add other
resource monitoring options to conf/local.conf STOPTASKS/ABORT
randy.macleod@windriver.com randy.macleod@windriver.com 5.0 M2 5.0 M3
11781 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=11781> bitbake
--observe-only may get KeyError richard.purdie@linuxfoundation.org
richard.purdie@linuxfoundation.org 5.0 M1 5.0 M3
11899 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=11899> broken
'bitbake --status-only' and 'bitbake -m' for multiple connections
richard.purdie@linuxfoundation.org richard.purdie@linuxfoundation.org
5.0 M1 5.0
M3
13424 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=13424> devupstream
doesn't work with mutilib richard.purdie@linuxfoundation.org
richard.purdie@linuxfoundation.org 5.0 M1 5.0 M3
13599 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=13599> Enhancement:
Detect variables that shouldn't be defined in image scope, but in global
(distro) scope richard.purdie@linuxfoundation.org
richard.purdie@linuxfoundation.org 5.0 M1 5.0 M3
13808 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=13808> do_task[noexec]
= "" marks task noexec, which is inconsistent with docs
richard.purdie@linuxfoundation.org richard.purdie@linuxfoundation.org
5.0 M1 5.0
M3
14125 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14125> busybox
wget ssl is exposed to MitM attack due to CVE-2018-1000500
randy.macleod@windriver.com randy.macleod@windriver.com 5.0 M2 5.0 M3
14311 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14311> valgrind
drd/tests ptest intermittent failure randy.macleod@windriver.com
randy.macleod@windriver.com 5.0 M1 5.0 M3
14385 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14385> mode of
sstate files created under pseudo randy.macleod@windriver.com
pidge@pidge.org 4.3 M4 5.0 M3
14430 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14430> valgrind
memcheck/tests/linux/stack_changes failure randy.macleod@windriver.com
randy.macleod@windriver.com 5.0 M2 5.0 M3
14443 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14443> valgrind
none/tests/amd64/fb_test_amd64 ptest intermittent failure
randy.macleod@windriver.com randy.macleod@windriver.com 5.0 M2 5.0 M3
14620 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14620> QA error
not seen when reusing SSTATE richard.purdie@linuxfoundation.org
richard.purdie@linuxfoundation.org 5.0 M1 5.0 M3
14693 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14693> cmake-native
do_configure fails when rebuilding without sstate on NIS hosts
randy.macleod@windriver.com randy.macleod@windriver.com 5.0 M2 5.0 M3
14710 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14710> Improve
cargo fetcher test cases randy.macleod@windriver.com
randy.macleod@windriver.com 5.0 M2 5.0 M3
14717 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14717>
OEToolchainConfig.cmake
sets wrong and unsuitable compiler flags richard.purdie@linuxfoundation.org
richard.purdie@linuxfoundation.org 5.0 M1 5.0 M3
14723 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14723> patches not
applied by devtool when using overrides in SRC_URI
randy.macleod@windriver.com chris.laplante@agilent.com 4.3 M4 5.99
14811 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14811> Incorrect
path matching in pseudo cause package failure in yocto
richard.purdie@linuxfoundation.org richard.purdie@linuxfoundation.org
5.0 M1 5.0
M3
14870 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14870> Dangling
bbappend behaviour can lead to unexpected surprises (error vs warn)
richard.purdie@linuxfoundation.org richard.purdie@linuxfoundation.org
5.0 M1 5.0
M3
14960 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14960> valgrind
ptest fails 12 tests for arm64 targets randy.macleod@windriver.com
randy.macleod@windriver.com 5.0 M2 5.0 M3
15061 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15061> Rust
multilib sdks broken randy.macleod@windriver.com
Deepthi.Hemraj@windriver.com 5.0 M1 5.0 M3
15079 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15079> AB-INT
PTEST: strace count ptest failure randy.macleod@windriver.com
randy.macleod@windriver.com 5.0 M2 5.0 M3
15080 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15080> AB-INT
PTEST: strace regex.gen ptest failure randy.macleod@windriver.com
randy.macleod@windriver.com 5.0 M2 5.0 M3
15102 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15102> Using
overrides on security flags may produce an incorrect meta-environment for
the generated SDK richard.purdie@linuxfoundation.org
richard.purdie@linuxfoundation.org 5.0 M1 5.0 M3
15130 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15130> bitbake
should warn if a function is defined only for specific cases
richard.purdie@linuxfoundation.org richard.purdie@linuxfoundation.org
5.0 M1 5.0
M3
15148 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15148> Is
uninative-tarball reproducible? richard.purdie@linuxfoundation.org
richard.purdie@linuxfoundation.org 5.0 M1 5.0 M3
15162 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15162> devtool
build does not cope with multiple SRC_URI in a recipe
randy.macleod@windriver.com jstephan@baylibre.com 4.3 M4 5.0 M3
15172 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15172> tzdata
recipe: build tzdata.zi zoneinfo file randy.macleod@windriver.com
Qi.Chen@windriver.com 5.0 M1 5.0 M3
15213 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15213> Using
icecream leads to error during parsing richard.purdie@linuxfoundation.org
richard.purdie@linuxfoundation.org 5.0 M1 5.0 M3
15239 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15239> cve-check
corruption of cvss3 data richard.purdie@linuxfoundation.org
rybczynska@gmail.com 5.0 M1 5.0 M3
15273 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15273> multiconfig
race in sstate/SDE with combined tmp/work-shared
richard.purdie@linuxfoundation.org richard.purdie@linuxfoundation.org
5.0 M1 5.0
M3
15276 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15276> perf:
setting PACKAGECONFIG in .bbappend does not work as expected
richard.purdie@linuxfoundation.org richard.purdie@linuxfoundation.org
5.0 M1 5.0
M3
15316 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15316> AB-INT
PTEST: strace sched.gen failure randy.macleod@windriver.com
randy.macleod@windriver.com 5.0 M2 5.0 M3
15328 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15328> AB-INT:
PTEST: valgrind drd/tests/atomic_var timeout randy.macleod@windriver.com
randy.macleod@windriver.com 5.0 M2 5.0 M3
15345 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15345> do_qa_patch
no longer process patch-status-core/patch-status-noncore options
randy.macleod@windriver.com michael.opdenacker@bootlin.com 0.0.0 5.0 M3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000390740060f954293
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW03 are li=
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
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold">High</t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;tex=
t-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D14901" target=3D"_blank">14901</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">lttng: collect TAP output</td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:alexis.lothore@bootlin.com">a=
lexis.lothore@bootlin.com</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M2</td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom">5.0 M3</td></tr><tr style=3D"height:20px"><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:=
bold">Medium+</td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-li=
ne:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"http=
s://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4530" target=3D"_blank">453=
0</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom">gconv data needs virtual providers</td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.ma=
cleod@windriver.com</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:bernha=
rd.guillon@begu.org">bernhard.guillon@begu.org</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m">5.0 M1</td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=3D"height:20=
px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:=
underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D10820" target=3D"_blank">10820=
</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom">devtool: -d/--debug doesn&#39;t show bitbak=
e debug output</td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@w=
indriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a=
 href=3D"mailto:pidge@pidge.org">pidge@pidge.org</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom">4.3 M4</td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=3D"height:=
20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-lin=
e:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11704" target=3D"_blank">117=
04</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom">Add other resource monitoring options to =
conf/local.conf STOPTASKS/ABORT</td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod=
@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom">5.0 M2</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom">5.0 M3</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom;font-weight:bold;text-decoration-line:underline;text-align:right"><a c=
lass=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D11781" target=3D"_blank">11781</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
bitbake --observe-only may get KeyError</td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundati=
on.org</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linu=
xfoundation.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom">5.0 M1</td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=3D"heig=
ht:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical=
-align:bottom"></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-=
line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11899" target=3D"_blank">=
11899</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom">broken &#39;bitbake --status-only&#39;=
 and &#39;bitbake -m&#39; for multiple connections</td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@lin=
uxfoundation.org</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.p=
urdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a></td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom">5.0 M1</td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr sty=
le=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-d=
ecoration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13424" target=
=3D"_blank">13424</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom">devupstream doesn&#39;t wo=
rk with mutilib</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie=
@linuxfoundation.org">richard.purdie@linuxfoundation.org</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard=
.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M1</td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom">5.0 M3</td></tr><tr style=3D"height:20px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom;font-weight:bold;text-decoration-line:underline;text-alig=
n:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproj=
ect.org/show_bug.cgi?id=3D13599" target=3D"_blank">13599</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">Enhancement: Detect variables that shouldn&#39;t be defined i=
n image scope, but in global (distro) scope</td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a h=
ref=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfound=
ation.org</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@l=
inuxfoundation.org">richard.purdie@linuxfoundation.org</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom">5.0 M1</td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=3D"h=
eight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"></td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decorati=
on-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13808" target=3D"_blan=
k">13808</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom">do_task[noexec] =3D &quot;&quot; ma=
rks task noexec, which is inconsistent with docs</td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linux=
foundation.org</a></td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.pur=
die@linuxfoundation.org">richard.purdie@linuxfoundation.org</a></td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom">5.0 M1</td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-dec=
oration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14125" target=3D"=
_blank">14125</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">busybox wget ssl is exposed to=
 MitM attack due to CVE-2018-1000500</td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"=
mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.ma=
cleod@windriver.com</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M2</td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom">5.0 M3</td></tr><tr style=3D"height:20px"><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;font-weight:bold;text-decoration-line:underline;text-align:right"=
><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D14311" target=3D"_blank">14311</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom">valgrind drd/tests ptest intermittent failure</td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.c=
om</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver=
.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M1</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom">5.0 M3</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;tex=
t-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D14385" target=3D"_blank">14385</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">mode of sstate files created under pseudo</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@=
windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:pidge@pidge.=
org">pidge@pidge.org</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom">4.3 M4</td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom">5.0 M3</td></tr><tr style=3D"height:20px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;font-weight:bold;text-decoration-line:underline;text-align:rig=
ht"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D14430" target=3D"_blank">14430</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom">valgrind memcheck/tests/linux/stack_changes failure</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@=
windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleo=
d@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
>5.0 M2</td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=3D"height:20px=
"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:un=
derline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D14443" target=3D"_blank">14443</=
a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom">valgrind none/tests/amd64/fb_test_amd64 ptest=
 intermittent failure</td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.ma=
cleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom">5.0 M2</td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M=
3</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-=
weight:bold;text-decoration-line:underline;text-align:right"><a class=3D"gm=
ail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D14620" target=3D"_blank">14620</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">QA error n=
ot seen when reusing SSTATE</td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ri=
chard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.o=
rg">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M=
1</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underlin=
e;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzill=
a.yoctoproject.org/show_bug.cgi?id=3D14693" target=3D"_blank">14693</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom">cmake-native do_configure fails when rebuilding wit=
hout sstate on NIS hosts</td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy=
.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windri=
ver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom">5.0 M2</td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.=
0 M3</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:=
hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;fo=
nt-weight:bold;text-decoration-line:underline;text-align:right"><a class=3D=
"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D14710" target=3D"_blank">14710</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">Improve=
 cargo fetcher test cases</td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:rand=
y.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windr=
iver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom">5.0 M2</td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5=
.0 M3</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow=
:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;f=
ont-weight:bold;text-decoration-line:underline;text-align:right"><a class=
=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D14717" target=3D"_blank">14717</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">OETo=
olchainConfig.cmake sets wrong and unsuitable compiler flags</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard=
.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a=
></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom">5.0 M1</td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M3</td><=
/tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:=
bold;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in-=
cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1472=
3" target=3D"_blank">14723</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom">patches not appli=
ed by devtool when using overrides in SRC_URI</td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a=
 href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a=
></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:chris.laplante@agilent.com">=
chris.laplante@agilent.com</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom">4.3 M4</td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;text-align:right">5.99</td></tr><tr style=3D"height:21px"><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:under=
line;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D14811" target=3D"_blank">14811</a><=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom">Incorrect path matching in pseudo cause package =
failure in yocto</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdi=
e@linuxfoundation.org">richard.purdie@linuxfoundation.org</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard=
.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M1</td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom">5.0 M3</td></tr><tr style=3D"height:21px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom;font-weight:bold;text-decoration-line:underline;text-alig=
n:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproj=
ect.org/show_bug.cgi?id=3D14870" target=3D"_blank">14870</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">Dangling bbappend behaviour can lead to unexpected surprises =
(error vs warn)</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie=
@linuxfoundation.org">richard.purdie@linuxfoundation.org</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard=
.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M1</td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom">5.0 M3</td></tr><tr style=3D"height:21px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom;font-weight:bold;text-decoration-line:underline;text-alig=
n:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproj=
ect.org/show_bug.cgi?id=3D14960" target=3D"_blank">14960</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">valgrind ptest fails 12 tests for arm64 targets</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@=
windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleo=
d@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
>5.0 M2</td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=3D"height:21px=
"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:un=
derline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D15061" target=3D"_blank">15061</=
a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom">Rust multilib sdks broken</td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windri=
ver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:Deepthi.Hemraj@win=
driver.com">Deepthi.Hemraj@windriver.com</a></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0=
 M1</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=3D"height:21px"><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bott=
om"></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underl=
ine;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D15079" target=3D"_blank">15079</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom">AB-INT PTEST: strace count ptest failure</td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.mac=
leod@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.m=
acleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom">5.0 M2</td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=3D"height=
:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-li=
ne:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"http=
s://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15080" target=3D"_blank">15=
080</a></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom">AB-INT PTEST: strace regex.gen ptest fai=
lure</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.c=
om">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"m=
ailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">5.0 M2</td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr st=
yle=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-=
decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link"=
 href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15102" target=
=3D"_blank">15102</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom">Using overrides on securit=
y flags may produce an incorrect meta-environment for the generated SDK</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.or=
g">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hre=
f=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundat=
ion.org</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom">5.0 M1</td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.=
0 M3</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:=
hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;fo=
nt-weight:bold;text-decoration-line:underline;text-align:right"><a class=3D=
"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D15130" target=3D"_blank">15130</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">bitbake=
 should warn if a function is defined only for specific cases</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard=
.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a=
></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom">5.0 M1</td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M3</td><=
/tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:=
bold;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in-=
cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1514=
8" target=3D"_blank">15148</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom">Is uninative-tarb=
all reproducible?</td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purd=
ie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richar=
d.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M1</td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">5.0 M3</td></tr><tr style=3D"height:21px"><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom;font-weight:bold;text-decoration-line:underline;text-ali=
gn:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctopro=
ject.org/show_bug.cgi?id=3D15162" target=3D"_blank">15162</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">devtool build does not cope with multiple SRC_URI in a recipe=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">=
randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:jstephan@baylibre.com">jstephan@baylibre.com</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m">4.3 M4</td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=3D"height:21=
px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:=
underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D15172" target=3D"_blank">15172=
</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom">tzdata recipe: build tzdata.zi zoneinfo fil=
e</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com"=
>randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mail=
to:Qi.Chen@windriver.com">Qi.Chen@windriver.com</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om">5.0 M1</td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=3D"height:2=
1px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line=
:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D15213" target=3D"_blank">1521=
3</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom">Using icecream leads to error during parsi=
ng</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundat=
ion.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxf=
oundation.org</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">5.0 M1</td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om">5.0 M3</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;font-weight:bold;text-decoration-line:underline;text-align:right"><a cl=
ass=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D15239" target=3D"_blank">15239</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">c=
ve-check corruption of cvss3 data</td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mai=
lto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org<=
/a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom"><a href=3D"mailto:rybczynska@gmail.com">rybc=
zynska@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom">5.0 M1</td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom">5.0 M3</td></tr><tr style=3D"height:21px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom;font-weight:bold;text-decoration-line:underline;text-align:right"><a=
 class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D15273" target=3D"_blank">15273</a></td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
">multiconfig race in sstate/SDE with combined tmp/work-shared</td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richar=
d.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mail=
to:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</=
a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom">5.0 M1</td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M3</td>=
</tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight=
:bold;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in=
-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D152=
76" target=3D"_blank">15276</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom">perf: setting PA=
CKAGECONFIG in .bbappend does not work as expected</td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@lin=
uxfoundation.org</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.p=
urdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a></td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom">5.0 M1</td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr sty=
le=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-d=
ecoration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15316" target=
=3D"_blank">15316</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom">AB-INT PTEST: strace sched=
.gen failure</td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@win=
driver.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a h=
ref=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a><=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom">5.0 M2</td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M3</td></t=
r><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bo=
ld;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in-ce=
ll-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15328"=
 target=3D"_blank">15328</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom">AB-INT: PTEST: valg=
rind drd/tests/atomic_var timeout</td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mai=
lto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macle=
od@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom">5.0 M2</td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom">5.0 M3</td></tr><tr style=3D"height:21px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom;font-weight:bold;text-decoration-line:underline;text-align:right"><a=
 class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D15345" target=3D"_blank">15345</a></td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
">do_qa_patch no longer process patch-status-core/patch-status-noncore opti=
ons</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.co=
m">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"ma=
ilto:michael.opdenacker@bootlin.com">michael.opdenacker@bootlin.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M3</td></tr></=
tbody></table><p class=3D"MsoNormal" style=3D"background-image:initial;back=
ground-position:initial;background-repeat:initial"><span style=3D"font-size=
:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000390740060f954293--

