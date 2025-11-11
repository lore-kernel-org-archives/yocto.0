Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 377C5CCFA18
	for <webhook@archiver.kernel.org>; Tue, 11 Nov 2025 14:57:59 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.19284.1762873070539424415
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Nov 2025 06:57:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=m9l3mSjO;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-29845b06dd2so4623715ad.2
        for <yocto@lists.yoctoproject.org>; Tue, 11 Nov 2025 06:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762873070; x=1763477870; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=I8IRGP884CsOleuzKDG+ougqP8xq+UL5VnTxlTBc220=;
        b=m9l3mSjOPK2B/5dVoFAQ3wCwK//pyV5KDzEmz26mq0Ub9+FvSZ1IJZmKDC95nbou/A
         CI75fbfXrg9NBOXwPNWH+WMNOXrdkvXy6OSX1q/nI8FvharaIFs3dR2cslaSHznm3zLl
         RVM4Bu5scrrsiHGnL4ipahGa2J0GVw/Xg318AGAbKNyVvZLIN/WVaOEdfgPowfK8jxS6
         JSsUMknavnsx1D+8+53n+5TUuhd3a1ujq5h/vBUrfBvydbKr/63zdcPkvze0QYnlUAum
         LDxLHT+6T0B/1xz8F4q29I/kxqioiSQgeSDXh2CUYZ72OtGuq8JPJLh72d7XXHVLLRee
         K/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762873070; x=1763477870;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I8IRGP884CsOleuzKDG+ougqP8xq+UL5VnTxlTBc220=;
        b=vthjQCCu/N6nBIzxYsliSVEI/R1GDKyxgenN8Cpht5q1E6fufA0OebgFgXfQgVjwo2
         9E5NztIOGMXbhhIYvXl7hxmAewEh8vgpz+wREaCXnzkzZ5CZOTR8oyLyl7aGlQuoUZIa
         EXFfkN/teCTt3ffXBDO0+Gxet+1TD/TROi2ZmalV/dll14J+vmBHMSQloWdboQZEbg+r
         p7AjJJcONbVQf0nQaqev31+xj5kqbds8NyIN/YXXb9AX4fJMUY9uymEYzYOM2DG+2+ko
         DX4FxL/B9+O9uAnjjlCI1f5Ss26TyB93OYHMK2EVKjsiwxtKhLtLDhwBs6+ToZ2qxOU8
         89SQ==
X-Gm-Message-State: AOJu0YwyyzpoqOntiT2a9daowkfsoCD8yuCPNvA9YUE9Shaa36Y90rI4
	P30i0QDFlqonYBx/CMmOpBqhRwe7oQhVTiTnO1ihjM6JPJwdUUg8Q32GaV9U6wFZXchsP1Y+6mr
	U0MLGhXShH7Zk3VAqjbbV8htWiXLtmRCqljp7
X-Gm-Gg: ASbGncv12ibXnkCZV7zKO1VU8F1iyRepNYEN6Ah3w2XJeYaeubbGdb+gZsOioE8+5An
	XXvXfxc1wsbpA7Nnrf3BEfAiz1VphpSSF+7aIFWggwLL65R4JCMoYuFv78MaH9D2j3+q4kKqr9y
	SGGqmoHM+1I6h8TE76cj1qS/AK/LKfJu/7Z9Iqw06M7lKKlasdFANNcl7yrtfZzGmIBnQZzasjH
	JfNpP22CdVqW4uh3eHvGTkVTdcchEJKReFlFG5gdfHr5mvNiPgC/eZ/sDQFI87NJSan98xU0KGI
	XzDfrr9jesCMqZHX3Ct/oCy32OStkjSSiN+CKeLbGzJwHv8jJz8DO6/rNH1VV8FrxG2weZyDKGc
	60153
X-Google-Smtp-Source: AGHT+IHCtBhVhPL19GQOKqgy0lyFDt+PpMTDl4fuzKpjfbA+TrvOGuHmbA2N+45H3fQ9S3Qi/Uuqewqk2QsrAwnRZ1Q=
X-Received: by 2002:a17:903:2c5:b0:295:fac:7b72 with SMTP id
 d9443c01a7336-297e570a7a7mr150974455ad.52.1762873069679; Tue, 11 Nov 2025
 06:57:49 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 11 Nov 2025 07:57:37 -0700
X-Gm-Features: AWmQ_blwwMxfN43Gggqa4NNZWWZv4PqC4t7bYeT_swkQ1posX9d7iedJ-U4STd0
Message-ID: <CAK5yBb_hLRgwUB_h59GiAO9s_Y4EgFwZaMW5mb6UURsGKi0pHg@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW45
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001a3adb064352df0f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Nov 2025 14:57:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66019

--0000000000001a3adb064352df0f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

All,

YP M+ or high bugs which moved to a new milestone in WW45 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 12723 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12723> m=
ysql
requires unicode and char length filtering david.reyna@windriver.com
david.reyna@windriver.com 5.3 M3 6
13103 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13103> [Bug][QA
2.7 M1 rc1][Toaster] "Recipes" table=C3=82  and =C3=82 "machines" table are=
 not
getting populated after clicking=C3=82 on imported layer as well as after
clicking Machines Tab on project page david.reyna@windriver.com
david.reyna@windriver.com 5.3 M3 6
13533 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13533> Devtool
finish on _git package with SRCPV in PV points to wrong WORKDIR
david.reyna@windriver.com david.reyna@windriver.com 5.3 M3 6
14136 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14136> If u-boot
defconfig is incomplete, 'bitbake u-boot -c configure' hangs and eats all
memory yoann.congal@smile.fr yoann.congal@smile.fr 5.3 M4 6.0 M1
14957 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14957> AB-INT:
inode mismatch in oeqa.buildperf.test_basic.Test1P3 (pseudo issue)
randy.macleod@windriver.com unassigned@yoctoproject.org 5.3 M3 6.0 M1
15337 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15337>
SERIAL_CONSOLES_CHECK
removed, but behavior changed ross.burton@arm.com ross.burton@arm.com
5.3 M3 6.0
M2
15524 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15524> AB-INT
PTEST: strace ptest failure: in nanosleep.gen randy.macleod@windriver.com
randy.macleod@windriver.com 5.3 M3 6.0 M1
15527 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15527> toaster
test failures on fedora {39,40}, selenium crashes david.reyna@windriver.com
david.reyna@windriver.com 5.3 M3 6
15530 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15530> Display a
"deprecation candidate" status on RRS recipe page yoann.congal@smile.fr
yoann.congal@smile.fr 5.99 6.0 M1
15863 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15863> useradd:
using only USERADD_DEPENDS gives errors about not setting one of the
useradd class variables yoann.congal@smile.fr yoann.congal@smile.fr 5.3 M4 =
6.0
M1
15932 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15932> musl
CVE-2025-26519 missing in LTS releases randy.macleod@windriver.com
paul@pbarker.dev 5.0.13 5.0.14
15961 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15961> AB-INT:
qemuriscv64-tc: rust.RustSelfTestSystemEmulated.test_rust failure: kernel
segfault tgamblin@baylibre.com tgamblin@baylibre.com 5.3 M4 6.0 M1
16028 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16028> Investiga=
te
pseudo/uutils incompatibilities ross.burton@arm.com ross.burton@arm.com 5.3
M4 6.0 M2
16051 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16051> Add a che=
ck
for git:// SRC_URI without a SRCREV randy.macleod@windriver.com
yoann.congal@smile.fr 0.0.0 6.0 M1
16055 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16055> Need new
milestones. sjolley.yp.pm@gmail.com mhalstead@linuxfoundation.org Q1 Q4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>=
*

--0000000000001a3adb064352df0f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW45 a=
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
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12723" target=3D"_b=
lank">12723</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">mysql requires unicode and char =
length filtering</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:david.reyna@w=
indriver.com">david.reyna@windriver.com</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a h=
ref=3D"mailto:david.reyna@windriver.com">david.reyna@windriver.com</a></td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom">5.3 M3</td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">6=
</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-w=
eight:bold;text-decoration-line:underline;text-align:right"><a class=3D"gma=
il-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D13103" target=3D"_blank">13103</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">[Bug][QA 2=
.7 M1 rc1][Toaster] &quot;Recipes&quot; table=C3=82=C2=A0 and =C3=82=C2=A0&=
quot;machines&quot; table are not getting populated after clicking=C3=82=C2=
=A0on imported layer as well as after clicking Machines Tab on project page=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:david.reyna@windriver.com">da=
vid.reyna@windriver.com</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:da=
vid.reyna@windriver.com">david.reyna@windriver.com</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom">5.3 M3</td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;text-align:right">6</td></tr><tr st=
yle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-=
decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link"=
 href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13533" target=
=3D"_blank">13533</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom">Devtool finish on _git pac=
kage with SRCPV in PV points to wrong WORKDIR</td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a=
 href=3D"mailto:david.reyna@windriver.com">david.reyna@windriver.com</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"><a href=3D"mailto:david.reyna@windriver.com">david=
.reyna@windriver.com</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M3</td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;text-align:right">6</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;tex=
t-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D14136" target=3D"_blank">14136</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">If u-boot defconfig is incomplete, &#39;bitbake u-boot -=
c configure&#39; hangs and eats all memory</td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hr=
ef=3D"mailto:yoann.congal@smile.fr">yoann.congal@smile.fr</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann.congal@smile.f=
r</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom">5.3 M4</td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">6.0 M1</=
td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-wei=
ght:bold;text-decoration-line:underline;text-align:right"><a class=3D"gmail=
-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
14957" target=3D"_blank">14957</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">AB-INT: inode=
 mismatch in oeqa.buildperf.test_basic.Test1P3 (pseudo issue)</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@=
windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:unassigned@y=
octoproject.org">unassigned@yoctoproject.org</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
>5.3 M3</td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom">6.0 M1</td></tr><tr style=3D"height:20px=
"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:un=
derline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D15337" target=3D"_blank">15337</=
a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom">SERIAL_CONSOLES_CHECK removed, but behavior c=
hanged</td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ro=
ss.burton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.bur=
ton@arm.com">ross.burton@arm.com</a></td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M3</td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom">6.0 M2</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;tex=
t-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D15524" target=3D"_blank">15524</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">AB-INT PTEST: strace ptest failure: in nanosleep.gen</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">rand=
y.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ra=
ndy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom">5.3 M3</td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">6.0 M1</td></tr><tr style=3D"h=
eight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"></td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decorati=
on-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15527" target=3D"_blan=
k">15527</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom">toaster test failures on fedora {39=
,40}, selenium crashes</td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:david.r=
eyna@windriver.com">david.reyna@windriver.com</a></td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:david.reyna@windriver.com">david.reyna@windriver.com</a=
></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom">5.3 M3</td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:ri=
ght">6</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
font-weight:bold;text-decoration-line:underline;text-align:right"><a class=
=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D15530" target=3D"_blank">15530</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">Disp=
lay a &quot;deprecation candidate&quot; status on RRS recipe page</td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann.congal@smi=
le.fr</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.f=
r">yoann.congal@smile.fr</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">5.=
99</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom">6.0 M1</td></tr><tr style=3D"height:20px"><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:botto=
m"></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underli=
ne;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzil=
la.yoctoproject.org/show_bug.cgi?id=3D15863" target=3D"_blank">15863</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom">useradd: using only USERADD_DEPENDS gives errors a=
bout not setting one of the useradd class variables</td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om"><a href=3D"mailto:yoann.congal@smile.fr">yoann.congal@smile.fr</a></td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann.conga=
l@smile.fr</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom">5.3 M4</td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
>6.0 M1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
;font-weight:bold;text-decoration-line:underline;text-align:right"><a class=
=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D15932" target=3D"_blank">15932</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">musl=
 CVE-2025-26519 missing in LTS releases</td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:paul@pbarker.dev">paul@pbarker.de=
v</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom">5.0.13</td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0.14</=
td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-wei=
ght:bold;text-decoration-line:underline;text-align:right"><a class=3D"gmail=
-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
15961" target=3D"_blank">15961</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">AB-INT: qemur=
iscv64-tc: rust.RustSelfTestSystemEmulated.test_rust failure: kernel segfau=
lt</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:tgamblin@baylibre.com">tgam=
blin@baylibre.com</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tgamblin=
@baylibre.com">tgamblin@baylibre.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M4<=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom">6.0 M1</td></tr><tr style=3D"height:20px"><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;=
text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D16028" target=3D"_blank">16028</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">Investigate pseudo/uutils incompatibilities</td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ros=
s.burton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom">5.3 M4</td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom">6.0 M2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom;font-weight:bold;text-decoration-line:underline;text-align:right"><a=
 class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D16051" target=3D"_blank">16051</a></td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
">Add a check for git:// SRC_URI without a SRCREV</td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr">y=
oann.congal@smile.fr</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom">6.0 M1</td></tr><tr style=3D"height:20px"><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;font-weight:bold;text-decoration-line:underline;text-align:right"=
><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D16055" target=3D"_blank">16055</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom">Need new milestones.</td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:sjol=
ley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@linuxfoundation=
.org</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom">Q1</td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">Q4</td></=
tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:initial=
;background-position:initial;background-repeat:initial"><span style=3D"font=
-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--0000000000001a3adb064352df0f--

