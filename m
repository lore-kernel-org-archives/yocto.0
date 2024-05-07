Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA07EC25B10
	for <webhook@archiver.kernel.org>; Tue,  7 May 2024 02:10:51 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.2124.1715047846052526807
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 May 2024 19:10:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=R622J/XM;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-51f0f6b613dso3215529e87.1
        for <yocto@lists.yoctoproject.org>; Mon, 06 May 2024 19:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715047844; x=1715652644; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bja+cWPgI60Kvj0Bqgfygv9qj7rdMdJriMbU7nkvWpQ=;
        b=R622J/XMgqSm9asOE3SGcYpDTQvMfgok85VPgdmOk7iDgTZsJ2zP8/wwNvxX2SLFtS
         oVVcFJg+frIinlVPm0z60QD9UUUD01kq0bT9tAwPceXd4dgefK2tYoPUsw+yoyNj4Lgr
         V4UAi8nuF4RXgnanu1VgItcbtFje+P+D7Lll1qkkWEVeg01DbnJjJPliexcmkkiUqeiG
         X54xA5acJnX1FoeHbY2n2Nv5tVR6SxRH7l5gLRrfLl6j2w/26DGz4/H4SRN1Q+ukGdOn
         U6ufH/HU9PJomWUtp5ofGjAHpxVl91omA2yNzKQviFPcYWraArIRonp/pFuGjXRahoQD
         IUKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715047844; x=1715652644;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bja+cWPgI60Kvj0Bqgfygv9qj7rdMdJriMbU7nkvWpQ=;
        b=aiWAney0LSrOQph+Gn2zHrDRDzfFh5IJOHvkkqEBPHseDSJsBP0P9ZEe2Jz3cJuVOM
         0u+qHQEl4NYh7T/6LH7PPfnVe0GcvNzUTCk8fzZL45YtEhESb10cjrT/ELr4uFyevXov
         fVx01co3q/4Bp1ut+PGBde1VJmfqMRv97poBvuXN8XQ1e29/Qyb4CoXrl1P0NgK4agwp
         bYTMtqfYObIa07ymE9+1O51tR65LkQrI0DW+kUBZ1iviUjsUCNDi5ZjNdL7a/PTOtRbg
         U2HWq1fbLOwoNo44PaO1GdTjSXAjPF5SM4XUa5Tdx44sMXwK29XX4TzEP/mz34x9pmzT
         mJeQ==
X-Gm-Message-State: AOJu0YyyjpDegCrhr06e+8ZKl+/Ut2UZr99CYXs7Sq7Hnn+FK6QRx47K
	xw43xUCF13b+6Zf5POOcj15YSyyduEzJTejMegulsLFvIeohqJfDq1+aS6qB1EqsEwC7Vj3t7nM
	gNzIdYLSbN+PE9dL8kvbrhOlznl2wZAUV
X-Google-Smtp-Source: AGHT+IE3xVaHftcDF+5bk4URK9zezEwIH+RZf+UtHjPv8ZyOYZqNjMRabviR0vLz0QcJ1dscmOmU0cPtlZnOJcCQV48=
X-Received: by 2002:a19:2d56:0:b0:51f:3d37:91d5 with SMTP id
 t22-20020a192d56000000b0051f3d3791d5mr7285108lft.10.1715047843817; Mon, 06
 May 2024 19:10:43 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 6 May 2024 19:10:32 -0700
Message-ID: <CAK5yBb_GtnvNbtG-3KtjfB3yLymr+nHD8M7E9YnrnWxuhDFhzw@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW18
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000080ef540617d3b19f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 May 2024 02:10:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63038

--00000000000080ef540617d3b19f
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW18 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 15473 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15473> Source
MIRROR not work for svn when change the host randy.macleod@windriver.com
richard.purdie@linuxfoundation.org 0.0.0 5.1 M1
15474 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15474> [kernel]
Oops (page fault) in mmc driver on multiple hardware when using mmc-utils
randy.macleod@windriver.com bruce.ashfield@gmail.com 0.0.0 5.1 M1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000080ef540617d3b19f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW18 are li=
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
yoctoproject.org/show_bug.cgi?id=3D15473" target=3D"_blank">15473</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">Source MIRROR not work for svn when change the host</=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">ra=
ndy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:=
richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a><=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M1</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bol=
d;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cel=
l-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15474" =
target=3D"_blank">15474</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom">[kernel] Oops (page =
fault) in mmc driver on multiple hardware when using mmc-utils</td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod=
@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:bruce.ashfi=
eld@gmail.com">bruce.ashfield@gmail.com</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">0.0.=
0</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom">5.1 M1</td></tr></tbody></table><p class=3D"Ms=
oNormal" style=3D"background-image:initial;background-position:initial;back=
ground-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans=
-serif">Thanks,<span></span></span></p>

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

--00000000000080ef540617d3b19f--

