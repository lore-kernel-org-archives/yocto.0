Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 386D9F34C61
	for <webhook@archiver.kernel.org>; Tue, 14 Apr 2026 04:31:40 +0000 (UTC)
Received: from mail-dl1-f50.google.com (mail-dl1-f50.google.com [74.125.82.50])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11649.1776141093844757569
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2026 21:31:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=cuoI0ND9;
 spf=pass (domain: gmail.com, ip: 74.125.82.50, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dl1-f50.google.com with SMTP id a92af1059eb24-12c565476d7so1261403c88.1
        for <yocto@lists.yoctoproject.org>; Mon, 13 Apr 2026 21:31:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776141093; cv=none;
        d=google.com; s=arc-20240605;
        b=ausH5G2Jf8iVqrl5U2u5ggu/nr+gzYqJiQkA34kzr6+wpS9uON2P2qGAuxVbllH/ja
         9dc0ThU7eOxnJaA5Vl/PBhF0qn3ORm3HQSb4q9XKkp0n+KA2lfGS+cUgeqdOrEM9xpm1
         2IqnQN/E5IgCHGUOfuQ+IOvnsMFYNGk0W5Jsubkt/UZBsyuLmpp3RwkXYeqNC0hYoL5M
         Lu3d2QWt7vymg7qLsV2WL2EaSWzoNG2fQbX4GYgGG217GE31V4e2iAOE81ocw/jwR0qe
         Woeii5Jc07jtW2YWNquldoxMCeZJd4yld9xRs9boDA/3rTGTHW5tpfQ4jTxAN6SqP0bn
         XFiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=7QUW3MEWReWDJqM+GV+1JGZHCBH/6LCWxgkbbnhA5Bc=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=QrsbUBBiM5Wub+U7zEN0jtMqUKPrItEWs9TxXofTf2sm8uGTBbVhbzZL+oYqN6fmjG
         enU7Q2PlX0BLdRg2VyqKh7WE5FWUoORrVPh9rKr4aI0fyJ/Cn6iKG/rGSGU9DdLri63s
         qlhe4Xupwr78kLNZ6339RmgyFz6n9Wi3DGa6iWabs/o6zwjeG2P8VEnGy6akWs57+t6G
         Vyg/2j3Y8FuHySdiJ50dsH65WmkCSe14rMaKji5qyIQx/AAJxBOUfwHIEZNfu0zWny6i
         axXo1O4KSsaUECOC1BvZVnslbpmF055uuhY2WFQDq0TLiuV8GxrP4S+cfIu/01rDuqGM
         Fd0Q==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776141093; x=1776745893; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7QUW3MEWReWDJqM+GV+1JGZHCBH/6LCWxgkbbnhA5Bc=;
        b=cuoI0ND9MGeUzomB+hISYzu5t2V4ZQ/KHpJqDP9z4WNU9kNJ8Crv/Lb3f9qx+3Bo4e
         iVHGJ1KqQ7DdiwvsP/r2EOf5C8zK0aC2Gxj67keCNshndCXvIWVA8nLkORu0zFEs6qhG
         A/SOKXMYKQP0pKSAbLa96TDxuQXKSdudO7+EGQrTv+I2i4uj86j4aVwZSWCRlzwvSA6r
         DAPiXhERJkPRz3vVxyrwZaPdYtxbbcuAdbFm1Ld6WZMLN3xjHSmMT5S+4jISFQnTxMZk
         P1xqu5KY92yFYTyMO7Qk35/63Nmmy2Fh0EEhihbiebNwgDMALa2luLJRfEPCkd3dXGtO
         hx9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776141093; x=1776745893;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7QUW3MEWReWDJqM+GV+1JGZHCBH/6LCWxgkbbnhA5Bc=;
        b=Wk/zDsrPF5un++qL6ZxX0N/hziWiFfkLuUn4oFEYXoURCKlD9ZUHywOHUG+slkyDqW
         DvSNRpVJyKj4WFJ6mqnvQMvLc02JySDlN8u7Y/m1hLe51LbqdebfRuQJI6xYv/96J+s5
         hd92iAz/AVKiXXPmW1WfFODrStYQG/I7tC2lHBugpUvRoRALm7b/tSgemfR0iE8zg67X
         FuaZ9fzJ5AjGaSojh7548bm19VqcQUMX4kyW5ZscWlAJ2uBiM8lJLGNTUN9gdHVY0+Lo
         P+CHT4J2FDmSDrkqRb4McYdXuG+UXSXgBOzPYvwBqwU2wOxBi9QMxoIoO6exQ42C6/Vm
         Ag6w==
X-Gm-Message-State: AOJu0Yx6Tx07yx7YF5/Sl7URF9A3sOUtBNWKcQxaj1yAM6kAKQYynmzD
	rRAeveNP8MctTfhQWVgWuq30zXqfrlPEFppf2pbcbZ8Ipsv8QRJbOIbvfaYFC32a+klwvJsP5Wu
	3uxwYshJPSzeT3Fy3lHKQOEOknxkCW8iSjvGP
X-Gm-Gg: AeBDies7GQySsLeNDo1rzR8Pm1g7Fswes7SLfQ/nmUW30RTgp/ofKYKck7nBG3K5uDW
	af4uObcY+SM0i337n+Eqr3ntwyRydH+ntuX30st145WR2pjd232XMGxcwBMJJKT2EfbDn+Ue3ID
	cTNgrN+PMr0moJcG2J75Mx3tY8TmkRb8lMIoGK/Dx+/+a+p3BF1kf2Itr75q1nuVG9zswrG6agQ
	QTV/c9Zt0FXnZuDr/8lNrp8aa1BhQBJE6fskS7cnhozUj9re53h5yVyB3sdDonGPOGYzXQmuDO/
	iSbRpXMbRARaB12a/6VKL2vHSg4rVOrF8NZUII+ufBBkLYCK8gt7VSUvUAwOK/hbjXV5p03d9Cl
	ATfKJ7DaQRQjgWPmbTWxNnbmZo+DWN7G1j/cd+/SBqdnu75+foJmcT+d1pcPYmc4N3QGuf8E3ov
	tQ1xUsg/Y=
X-Received: by 2002:a05:7301:1988:b0:2c6:31f0:a018 with SMTP id
 5a478bee46e88-2d589aa4243mr9658956eec.22.1776141092956; Mon, 13 Apr 2026
 21:31:32 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 13 Apr 2026 21:31:21 -0700
X-Gm-Features: AQROBzCvEhcgdypl2-1aIZpmZRUF9i_VfOp71VerwWXNVb4Qw6iu_gr5MCIXCR8
Message-ID: <CAK5yBb9nLNMc1yQir9nTLRqN+ooszOETHxHnAi75efA0rOnWSA@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW15
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000eaac19064f6412d0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Apr 2026 04:31:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66414

--000000000000eaac19064f6412d0
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW15 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 15810 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15810> qemux86
musl has ptest failures randy.macleod@windriver.com
unassigned@yoctoproject.org 5.3 M3 6.1 M1
15811 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15811> qemux86-64
musl ptest failures randy.macleod@windriver.com unassigned@yoctoproject.org 5.3
M4 6.1 M1
15814 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15814> qemuarm64
musl ptest failures randy.macleod@windriver.com unassigned@yoctoproject.org 5.3
M4 6.1 M1
15816 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15816> recipetool
create should add tag= for git SRC_URI randy.macleod@windriver.com
unassigned@yoctoproject.org 5.3 M3 6.1 M1
16237 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16237> AB-INT: no
available tap devices to use for networking - unable to start QEMU
randy.macleod@windriver.com mhalstead@linuxfoundation.org 0.0.0 6.0 M4
16239 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16239> [SDK] make
prepare fails with __attribute_const__ redefinition and redundant
redeclaration of strtol/strtoul in kernel 6.18 randy.macleod@windriver.com
Harish.Sadineni@windriver.com 0.0.0 6.0 M4
16240 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16240> All layer
index git.yoctoproject.org cgit links broken tim.orling@konsulko.com
tim.orling@konsulko.com 0.0.0 6.0 M4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000eaac19064f6412d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW15 a=
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
t.org/show_bug.cgi?id=3D15810" target=3D"_blank">15810</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom">qemux86 musl has ptest failures</td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hr=
ef=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"><a href=3D"mailto:unassigned@yoctoproject.org">un=
assigned@yoctoproject.org</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M3</td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom">6.1 M1</td></tr><tr style=3D"height:20px"><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;font-weight:bold;text-decoration:underline;text-align:right=
"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org=
/show_bug.cgi?id=3D15811" target=3D"_blank">15811</a></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom">qemux86-64 musl ptest failures</td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"=
mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom"><a href=3D"mailto:unassigned@yoctoproject.org">unassign=
ed@yoctoproject.org</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M4</td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom">6.1 M1</td></tr><tr style=3D"height:20px"><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;font-weight:bold;text-decoration:underline;text-align:right"><a c=
lass=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D15814" target=3D"_blank">15814</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
qemuarm64 musl ptest failures</td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:=
randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:unassigned@yoctoproject.org">unassigned@yoc=
toproject.org</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">5.3 M4</td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om">6.1 M1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;font-weight:bold;text-decoration:underline;text-align:right"><a class=
=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D15816" target=3D"_blank">15816</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">reci=
petool create should add tag=3D for git SRC_URI</td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com<=
/a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom"><a href=3D"mailto:unassigned@yoctoproject.or=
g">unassigned@yoctoproject.org</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M3</td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom">6.1 M1</td></tr><tr style=3D"height:20px"><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;font-weight:bold;text-decoration:underline;text-align:=
right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D16237" target=3D"_blank">16237</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom">AB-INT: no available tap devices to use for networking - unable =
to start QEMU</td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@wi=
ndriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@linuxfoundation.org=
</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">6.0 M4</td=
></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weigh=
t:bold;text-decoration:underline;text-align:right"><a class=3D"gmail-in-cel=
l-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16239" =
target=3D"_blank">16239</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom">[SDK] make prepare  =
fails with __attribute_const__ redefinition and redundant redeclaration of =
strtol/strtoul in kernel 6.18</td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:=
randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:Harish.Sadineni@windriver.com">Harish.Sadin=
eni@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom">6.0 M4</td></tr><tr style=3D"height:20px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom;font-weight:bold;text-decoration:underline;text-align:right"><a clas=
s=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug=
.cgi?id=3D16240" target=3D"_blank">16240</a></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">All=
 layer index <a href=3D"http://git.yoctoproject.org">git.yoctoproject.org</=
a> cgit links broken</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tim.orlin=
g@konsulko.com">tim.orling@konsulko.com</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a h=
ref=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko.com</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">0.0.0</td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom">6.0 M4</td></tr></tbody=
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

--000000000000eaac19064f6412d0--

