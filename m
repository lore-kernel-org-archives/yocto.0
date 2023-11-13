Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B8EBC4332F
	for <webhook@archiver.kernel.org>; Mon, 13 Nov 2023 11:26:09 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.34695.1699874761793403469
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Nov 2023 03:26:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Qe4Xwf6H;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-507f1c29f25so5820267e87.1
        for <yocto@lists.yoctoproject.org>; Mon, 13 Nov 2023 03:26:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699874760; x=1700479560; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JBGwShEIRwnyrij62W81Yxvy2FfTNfb2BhHCIgXsGlo=;
        b=Qe4Xwf6H+oTDLF09N1l7Kf0ZUNqra90YVR1mk1mprYdj3U8DMMLX99m+XfcYa2bD43
         XueGwfJ5YPBK2+V5jwyX70SxgOuWY0rJteo1+Mv/atK5kZwZgQXs7YcOTZb6UUZ19HfM
         gExjM7DhMm0Iw+K68wxnaEMTzL9U4exV6wqJR+5OB2osIyO/2XI76eezfba9D9+yroe4
         IMUF6+awx1pgjxhFRhqsUdkfko4YRWwMkzP6kQd2/2dBC2VgTvRFGcZLDSLbNPepjoFz
         zuh3rfpr2hTowUbNFJy3mhH/U7Rmfx8OgSMXmdbtOS5mJimZNYe6r/Kn2AOJ5WIN+VRK
         Tfhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699874760; x=1700479560;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JBGwShEIRwnyrij62W81Yxvy2FfTNfb2BhHCIgXsGlo=;
        b=ZJqLIfEkIZuImSeNg4fOnnhTOHRaSFVF85KE683gqC/547PqAczBOhtuMU4v0b7X2H
         7W8kFoG1u2Ybj/9UgN5vGubDMhIqUyFejTCw4TUprilApbiJSs1z9t5RFz6iuqgggMxn
         eFvPcfLZYVhSybaiF4G6TvmgjGAfh3WXRJAIL2So9KBr29Vswk+BxuJlj38gA0shXxQ+
         Xmat+ZYxDZOtDPuWQNkYzF/6DcJR1uHTfkoQ8cfH3Z87h9lSNJHIh3wXAEakgj53wwam
         PU/ZzCL4YMk81Lktd9yimlTGw4ymUborggA5eA0wOTmgTC78/H884v/h6at1iCvfRyt1
         wXsw==
X-Gm-Message-State: AOJu0Yy3JUIdcNVcCeoD2GQvhNkzltZpURfreKMml4vDMgMW0wvBEQCY
	VVd9YvI5Sa9jrPncrLzK99znyssE4LfDpWxS8XdlYdx0Hkg=
X-Google-Smtp-Source: AGHT+IFB0HsGsv44F9KYN2XZuUtqq7ITt36aOmUvTTWrXG/ongPbDFVHoYI72CFV0gZxCBWWHXRxMaFMDz3FIarurfE=
X-Received: by 2002:ac2:596d:0:b0:50a:6fbb:6eb3 with SMTP id
 h13-20020ac2596d000000b0050a6fbb6eb3mr4270715lfp.11.1699874759449; Mon, 13
 Nov 2023 03:25:59 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 13 Nov 2023 04:25:47 -0700
Message-ID: <CAK5yBb8=opinYdocARO-JW31J6npnDAR8OJgye7Zjb7Vg=TJbA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW45!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003321f8060a06ef2e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Nov 2023 11:26:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61665

--0000000000003321f8060a06ef2e
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
david.reyna@windriver.com 3
richard.purdie@linuxfoundation.org 2
JPEWhacker@gmail.com 1
Grand Total 6

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000003321f8060a06ef2e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>The below were the owners of enhancements or bugs closed during =
the last week!<br></span><div dir=3D"ltr" class=3D"gmail_signature" data-sm=
artmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><table cellsp=
acing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-layou=
t:fixed;font-size:11pt;font-family:Calibri;width:0px;border-collapse:collap=
se;border:none"><colgroup><col width=3D"249"><col width=3D"42"></colgroup><=
tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(21=
9,229,241);font-weight:bold">Who</td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(2=
19,229,241);font-weight:bold">Count</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:david.reyna@windriver.com">david.reyna@windriver.com</a=
></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom;text-align:right">3</td></tr><tr style=3D"heigh=
t:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard=
.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right"=
>2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:JPEWhacker@gm=
ail.com">JPEWhacker@gmail.com</a></td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:righ=
t">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,2=
41);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-colo=
r:rgb(219,229,241);font-weight:bold;text-align:right">6</td></tr></tbody></=
table><p class=3D"MsoNormal" style=3D"background-image:initial;background-p=
osition:initial;background-repeat:initial"><span style=3D"font-size:12pt;fo=
nt-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--0000000000003321f8060a06ef2e--

