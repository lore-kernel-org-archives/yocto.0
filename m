Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC7D6E6F09F
	for <webhook@archiver.kernel.org>; Tue, 23 Dec 2025 15:47:54 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.103430.1766504873964217680
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Dec 2025 07:47:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=aEGyuCCC;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-c0ec27cad8cso3122859a12.1
        for <yocto@lists.yoctoproject.org>; Tue, 23 Dec 2025 07:47:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766504873; x=1767109673; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iCVJLw7Tci2PWw2VkjekFfCD1rogmOnJIPfiDaSIkIc=;
        b=aEGyuCCCaF3ez5IN9IYy1idVRCVIml8SfpydW8PGbp33WlJ9UxqtuaArXjCSzpMQsk
         Qt74fpVZlmvRJxA4L0amAmf/MdAUg6f6p48S2I8jFEY+g+HguK10AYSvflw0BVgd65LG
         g1aj+YhOQxSIdYGW9fj0QnbH8BdCPiXyNmosER7LH1pFRmZwSxkVVmU24cvSvDhcr+pv
         T/9wehh19E/ZDxu82nDvkga9SxapyUPLZCpt5LlVXLa9NKqLddBdy4lCP0YqfV53aS7h
         uO79vgOkkD68Gddf/yBEqO5PTuZt9nz9xdqrxX1ogU6Oc7JR/imYd6Ybn7ZqOF9D+G44
         35DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766504873; x=1767109673;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iCVJLw7Tci2PWw2VkjekFfCD1rogmOnJIPfiDaSIkIc=;
        b=rJYzamsn7W8EWqBMjGMD+uEVx5Z98+xdqnECwcNteXHiXEUv7AlOZtr/6HMnTw85DQ
         m8j39njrgPYso8Juv1/161nIl7teVMrpFm3J+MWMrzcL+fCc77VnL2Gtrv7YGpEED6Ys
         n5Il4BZfmznbgV/bm2Bwf9Y/4/RIdJaBo8DJgDIuh5xZ2aaflk6J96KNWZiOxBP6Yd5n
         BFpqMCl0yO3LGmID9+jN0Pd9ptvW6Vrl3/NTMwoIXoTR3rvvraozMrd9doQXdbaD7DxC
         30rwQbK9oh8WzI4yH0gRr3AxHZJIaTJiY6NILNMt3cDxQHicT6iX3qS2X17O/7QgPSpD
         UO9w==
X-Gm-Message-State: AOJu0Yy3Spqv8Po42tWU3B3T8gl5t4LwdAN9caF52HBwMnnhz5EveEZ4
	vbJ9+jrdPKlUiVI6AQ0rPHh18pvr96uFta0OPO//S+u7m4sguUIPBgK3TI3JzhhLjAxbHnJTzbl
	JWMg/flpxhnglrP3xR2Soa32TW1omo9MxY7jI
X-Gm-Gg: AY/fxX4zz8/jpGP/QfR/PZPtzd9bpmUKdzcfoRE15xmuKY7x4C7K2+EJacd5vnCJejE
	iKHuOsjn1buwCn/WyC2GI7EhjMkgjdy5Qrsf20A9f9CFhNsmM34KkTKGwLjDimw4QJDtjzXrHwi
	+p25EyEYgym9QPgUouMURN6ecfRBr5LTYsNqGQARYLfOcAepDo0z3LpkoIo3iY2gs3OsPo55M5j
	n0yKZ4y8+7+0oSbQ8vgH5h09rYLNGvhJMbDZ/Kaudxh+cf8LjFl+SAPJJILzKo8sjiSBtHL2asW
	yUloK1vIfZT0bAQYufQ0foKM9E8YY54p14a+mtdXmNmnke7gjNhd5VA4rnmp/NhPASo3qH+QTHV
	gGk8Kh/c7RTiC5gw=
X-Google-Smtp-Source: AGHT+IHZHE78uadVTUYPh75h+5VXeBfaGfi0P/ieXq3mEXyygUNUhi/IUq0bJmRamJvnGBFohb4op/sLOwZmzcV5l5c=
X-Received: by 2002:a05:7300:e78e:b0:2ae:5c71:3535 with SMTP id
 5a478bee46e88-2b05ebd0d0dmr18602946eec.9.1766504872884; Tue, 23 Dec 2025
 07:47:52 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 23 Dec 2025 08:47:41 -0700
X-Gm-Features: AQt7F2ooXjQ_Ju8XVBF5Ttc3DJ2pLr4vip3FGvmeD0MpZ8MkPIjktileFdAou4E
Message-ID: <CAK5yBb-5km2U+aFPeFeeaN6tdOPo2_wd9NJbZdGPzfZ2G87wWA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW51!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000713cd30646a0777d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Dec 2025 15:47:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66123

--000000000000713cd30646a0777d
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 2
paul@pbarker.dev 1
Grand Total 3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000713cd30646a0777d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>The below were the owners of enhancements or bugs closed du=
ring the last week!<br></span></div><div dir=3D"ltr" class=3D"gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><t=
able cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"=
table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-coll=
apse:collapse;border:none"><colgroup><col width=3D"249"><col width=3D"42"><=
/colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-c=
olor:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-=
color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.=
purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:paul@pbarker.d=
ev">paul@pbarker.dev</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td>=
</tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-=
weight:bold">Grand Total</td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219=
,229,241);font-weight:bold;text-align:right">3</td></tr></tbody></table><p =
class=3D"MsoNormal" style=3D"background-image:initial;background-position:i=
nitial;background-repeat:initial"><span style=3D"font-size:12pt;font-family=
:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000713cd30646a0777d--

