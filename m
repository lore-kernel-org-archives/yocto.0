Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29479F8FA8E
	for <webhook@archiver.kernel.org>; Tue, 21 Apr 2026 14:55:16 +0000 (UTC)
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.33242.1776783312931820194
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Apr 2026 07:55:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=lOlWyJrj;
 spf=pass (domain: gmail.com, ip: 74.125.82.178, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-2bd9a485bd6so2747086eec.1
        for <yocto@lists.yoctoproject.org>; Tue, 21 Apr 2026 07:55:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776783312; cv=none;
        d=google.com; s=arc-20240605;
        b=FJ4SmvC0mBPm3PWNHlDmH1L0gmae+A1NHQrAr9qweK87G5sPRA6PQumMmET05GIFdY
         0auujaUTDLs8hcUeg4zqB4moSt3kt1T8PL76ZECTjfeyxIe128YxefFtrgpVw7cRP92p
         En+nkCHALX9g+iCv7kSse09ognlJ9FfuwduEnT0y0mKMPtL8IFPbhjgfD9cKCxTEyuQe
         /3RObqLlbApF6PuCZxfpu9wawuZktODQi4El0eY375U0w2zbZTz/D3X84StPfqvPmnH2
         2hpAPiSUGtS+Xn6Zyjd5FBiQzVqXJCbEZHbEONr7YKRLjmX0VCyGdcbgHZI+2oh5dDdn
         MRtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=oQPnLQ5AUeiZG+y3vfKwE3uJqlbAU3qI0BM6xvwEPmQ=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=Gc/SfBS3SgrWMVpvlzLD5PLdbPLXM4Kbae8EojNi/ayGBF7rUhaV4KD2nyDL0CY+CY
         BA3RSyQe3L+09QQTw4E2fTiLldyhRhFJshas6rm75clNlN+RiJxnC/n/RZgy9UNRgjtS
         5Glpe6DinhUMuuRKCSgXaoj26iLJS+s2Xrakdk4/hmjn5sSWLb36LpxGLLQsP1U4/Cbj
         Ibngnx3G9k1YFKtYImstfo7Ku8MjORVzz78nxiYsT6hROzwf8UUjOu8oS9C5f9VLlzJU
         rQE6qGuhqbs59TA06lThH9d5UrnNGnH0kgfEyi5J0o7r41pcudCGYLfHnpRGjHLFI+69
         NQyA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776783312; x=1777388112; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oQPnLQ5AUeiZG+y3vfKwE3uJqlbAU3qI0BM6xvwEPmQ=;
        b=lOlWyJrjSmEVdA72PMe+Jzn6Wqq2rSldlPVhnC/jWbjiJ+AFV6+jGrQecco6ZALJKx
         1RwjWuvY4G3tTS1huGu7fFBUhd3PdGi1pgOJiEsXzbXVFplNtFznKuGLPQfnt0uCf4Lx
         Sfn3WhmwlLHGgb73P/Lz/ooCRqmWqjXEef8bkNYOs7EajvHp3A3U3xoJVihJA+fXBqaq
         l506V7pAqnj+vjbaX51ZGTmjKRgmDUmLO6dFksqO4TX9cZRY8mnwTfup8A/LcWHEvjxP
         2x/grmj6D7QO8101/oJhyUp9isyHBidTcZSnb4bq7pj2zBMhfMFIXG4ywFxBfN0UGQWr
         opvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776783312; x=1777388112;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oQPnLQ5AUeiZG+y3vfKwE3uJqlbAU3qI0BM6xvwEPmQ=;
        b=Aa8kwC9c3i/XIS6rTVYcppAERbAykKj9YQ8EGusQYQvt7XOSIQrMEGaHRTbveN8l1w
         5XMMupocoAtRn+FrbeCNLfs9V0eWoqQhhOZyvjFS/YHC2V4PwGBpKaBGApPjHveCL7BA
         qYt6JKZtd2pnA3ThaOKdsJKoEmDaHrydfgBmLkyxoMqkiYlXiBfMjGfbTSllYDUnY4d9
         zgFRDq14i5hExYD/ujJhR6GgvFZZSGwnm458mS0xZg0glMDJKcB9w54WxeMGBT2w6+8u
         ZnjRimNurZdtnthTjg3bwmxm/AgJ7Va5VzCb60NaUQTkxaS9t7ylLU0GFDIzOU0G7Cou
         ZcfQ==
X-Gm-Message-State: AOJu0YwVecCEezDIXTPRBJhXaTgS53GuSG40ydMGbXSj3oz0cPmDHU6o
	MlyYxYRgYW1nKjr7Qeo++GAf1amMj+WOF3gA0GxuRzkPxY16TJQZPUzz9tF331Oq0CFLsW1+qvY
	/qmHpHnWzur6drnYged/fGBn/8o1WmIYi+B6d
X-Gm-Gg: AeBDiesVdJI1crpRsHqSEUWUMlXNLsDkgTgXYeycJao6czp0xhmK+JIMk2u2cFptKDr
	Kus947sMGDhJlg4QlFxMmPkSn9UmoKEFeVlQbi3zsWZNMQFAWVni4DnMjgTPRytUJhAAcwu7hNV
	IF5FIDU8TxfuXj3vqog/EgN4rfCBXUW5oaxsF4veVKaaI2lEPZy+rBRxR0/wAYFctkGAlV0jXgr
	gTr3cm2u3rNe4za6F9BSEM6yR0cNHFw2rgcEo+xhEIdUOS1y3xqOQi8xOgVg5G3TPPsgUZj2UUW
	kcXIys+44Mt1IhZv0AAOEoZ0Fj+7bpDjtfa1jngMOG2kFpns1MNamFif7Qmzf8mH+hBykgTsiJV
	sSgxEEJbyAXSTwWSFFPc/e6ROuXrhbPvuv++JAZir/6GSyGNWdYyn13PWGfxpmWGdZZ+RuCC4in
	/ieAitS7RfKrTYjFB3
X-Received: by 2002:a05:7300:c011:10b0:2e6:e504:5431 with SMTP id
 5a478bee46e88-2e6e5045e19mr5454927eec.22.1776783311780; Tue, 21 Apr 2026
 07:55:11 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 21 Apr 2026 07:54:59 -0700
X-Gm-Features: AQROBzCgOYEopvJLP-tZ5qkBDo9TA2zORivh9uha4DmfCYDK_WtE9dLdQrzXWAg
Message-ID: <CAK5yBb_WLCYp0oU=OjeFNwG3gUYKd9FYb4f=dZJ9DJKvkqD7SA@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW16
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000243e25064ff99ad5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Apr 2026 14:55:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66429

--000000000000243e25064ff99ad5
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW16 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 12688 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=12688>
yocto-check-layer
should allow PV changes randy.macleod@windriver.com denis@denix.org 5.2 M4 6.1
M1
15637 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15637> cargo uses
$HOME/.cargo/config randy.macleod@windriver.com
Hemanth.KumarMD@windriver.com 6.0 M3 6.1 M4
15826 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15826> Disabling
multilib for riscv targets randy.macleod@windriver.com
unassigned@yoctoproject.org 5.3 M3 6.0 M4
15875 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15875> Improve
message error around mirroring selftest randy.macleod@windriver.com
unassigned@yoctoproject.org 5.3 M3 6.1 M2
15948 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15948> PREMIRROR
does not work with git lfs randy.macleod@windriver.com
unassigned@yoctoproject.org 5.3 M4 6.1 M1
15982 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15982>
yocto-check-layer
doesn't work with multiconfig/baremetal machines randy.macleod@windriver.com
denis@denix.org 5.3 M4 6.1 M2
16074 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16074> x86 KVM
broken on intel ultra 7 cpu randy.macleod@windriver.com
tgamblin@baylibre.com 6.0 M4 6.1 M1
16239 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16239> [SDK] make
prepare fails with __attribute_const__ redefinition and redundant
redeclaration of strtol/strtoul in kernel 6.18 randy.macleod@windriver.com
Harish.Sadineni@windriver.com 6.0 M4 6.1 M2
16243 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16243> Exception
Maximum PB reference count exceeded. randy.macleod@windriver.com
unassigned@yoctoproject.org 0.0.0 6.1 M1
16246 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16246> AB-INT:
wic: env file doesn't exist randy.macleod@windriver.com twoerner@gmail.com
0.0.0 6.0 M4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000243e25064ff99ad5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW16 a=
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
t.org/show_bug.cgi?id=3D12688" target=3D"_blank">12688</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom">yocto-check-layer should allow PV changes</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"><a href=3D"mailto:denis@denix.org">deni=
s@denix.org</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">5.2 M4</td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
">6.1 M1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overf=
low:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;font-weight:bold;text-decoration:underline;text-align:right"><a class=3D"=
gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?=
id=3D15637" target=3D"_blank">15637</a></td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">cargo us=
es $HOME/.cargo/config</td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.m=
acleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom"><a href=3D"mailto:Hemanth.KumarMD@windriver.com">Hemanth.KumarMD@wind=
river.com</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom">6.0 M3</td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
6.1 M4</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
font-weight:bold;text-decoration:underline;text-align:right"><a class=3D"gm=
ail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D15826" target=3D"_blank">15826</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">Disabling =
multilib for riscv targets</td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ran=
dy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"><a href=3D"mailto:unassigned@yoctoproject.org">unassigned@yoctopr=
oject.org</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom">5.3 M3</td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
6.0 M4</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
font-weight:bold;text-decoration:underline;text-align:right"><a class=3D"gm=
ail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D15875" target=3D"_blank">15875</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">Improve me=
ssage error around mirroring selftest</td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D=
"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom"><a href=3D"mailto:unassigned@yoctoproject.org">unassig=
ned@yoctoproject.org</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M3</td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom">6.1 M2</td></tr><tr style=3D"height:20px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;font-weight:bold;text-decoration:underline;text-align:right"><=
a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D15948" target=3D"_blank">15948</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m">PREMIRROR does not work with git lfs</td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:unassigned@yoctoproject.org">unas=
signed@yoctoproject.org</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M4</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">6.1 M1</td></tr><tr style=3D"height:20px"><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom;font-weight:bold;text-decoration:underline;text-align:right">=
<a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D15982" target=3D"_blank">15982</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om">yocto-check-layer doesn&#39;t work with multiconfig/baremetal machines<=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">r=
andy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto=
:denis@denix.org">denis@denix.org</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M4</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom">6.1 M2</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;font-weight:bold;text-decoration:underline;text-ali=
gn:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctopro=
ject.org/show_bug.cgi?id=3D16074" target=3D"_blank">16074</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">x86 KVM broken on intel ultra 7 cpu</td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:tgamblin@baylibre.com">t=
gamblin@baylibre.com</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom">6.0 M4</td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom">6.1 M1</td></tr><tr style=3D"height:20px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;font-weight:bold;text-decoration:underline;text-align:right"><=
a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D16239" target=3D"_blank">16239</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m">[SDK] make prepare  fails with __attribute_const__ redefinition and redu=
ndant redeclaration of strtol/strtoul in kernel 6.18</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"><a href=3D"mailto:Harish.Sadineni@windr=
iver.com">Harish.Sadineni@windriver.com</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">6.0 =
M4</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom">6.1 M2</td></tr><tr style=3D"height:20px"><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:botto=
m"></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom;font-weight:bold;text-decoration:underline;te=
xt-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D16243" target=3D"_blank">16243</a></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom">Exception Maximum PB reference count exceeded.</td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.mac=
leod@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:unassig=
ned@yoctoproject.org">unassigned@yoctoproject.org</a></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom">0.0.0</td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom">6.1 M1</td></tr><tr style=3D"height:=
20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration:und=
erline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bu=
gzilla.yoctoproject.org/show_bug.cgi?id=3D16246" target=3D"_blank">16246</a=
></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom">AB-INT: wic: env file doesn&#39;t exist</td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.m=
acleod@windriver.com</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:twoer=
ner@gmail.com">twoerner@gmail.com</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom">6.0 M4</td></tr></tbody></table><p class=3D"MsoNorma=
l" style=3D"background-image:initial;background-position:initial;background=
-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif=
">Thanks,<span></span></span></p>

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

--000000000000243e25064ff99ad5--

