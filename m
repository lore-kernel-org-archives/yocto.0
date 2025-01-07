Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A0FE77197
	for <webhook@archiver.kernel.org>; Tue,  7 Jan 2025 04:05:44 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web11.13385.1736222734101808340
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jan 2025 20:05:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YZ1tiv4n;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2f4409fc8fdso18814750a91.1
        for <yocto@lists.yoctoproject.org>; Mon, 06 Jan 2025 20:05:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736222733; x=1736827533; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wbu526j8LX+C1KhwplCLhp4NXLltOYoNS19ErCUpK8M=;
        b=YZ1tiv4n5nRSf9dkGrP6CEjKfGnhGklu0b89JRfCuma4ui+m6b5OXYF++5+DHFgWVx
         HfMOIsi47q9BbwnwkMtA+Oi+abU38mLOEvPcpqgu8yDuOBSEFkWgaLwOWkNb8FKslI5i
         cR8Ek5v230CmkFD0OrD3YzNerGEk6D4DaLjSoXoQPlEfUE3rqnj7hnqznhn7AM+lz0RK
         wYO66YeI6QfendC8k+t5gSsk+FJ1pU7hzulMDZN5HH6rOz+GIbsiJWnV6aBn6OB4LfR4
         tr5kdQQIrS3oA6vLR/uA79lKdV14Np4JO+PJDlGbog7s3sGun7ZIc+4MBK5qn9ExDYtP
         KGrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736222733; x=1736827533;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wbu526j8LX+C1KhwplCLhp4NXLltOYoNS19ErCUpK8M=;
        b=KSvRzIp177nJ8bIRCHJ5paQrnxX7qi0kkkq8HOAzZnaljzS8g2f548BkSpo4kOZ8pZ
         oNT157MXg5ktSqfE8Q79bVwma5k/NhOUvF6hecQj3Uk0cy9SvRAzNQWcCxwXCruDlpyT
         fr8ZnEtsVWLBI7TON8YugGUhYvqLJTUAlh6wib5jXabaax8C0a6Upsk4Qfj0ikL0qdy+
         5egOikeGRHVe7eIsH5cId6ZW9efEpgr9J1P4AbzlvG1MnarEYmTaIQwhxe6GpXfcVAx/
         bCfXjR3ohmQE4g/zz4epJL4IAymGixq9SyUwmNVT9V64lHZyCyj1zpcVQGBcmFjbVL4l
         8wcw==
X-Gm-Message-State: AOJu0YwhtiVL8jb2ALqhVGDUZBB6HwNOmL0uv6T+hEwFZoSTPRKyrZew
	NkhtTlkiy5gNwwsXXRwlkA/gt4qN5iYPwRVvbd5fGGSKifU7brbl0bEAYuo29A3yxpBD/eCzs2k
	qttYVHXWHplSjgtp3Ij3mt33Hv3H5TY31
X-Gm-Gg: ASbGncue29tLKzEpJJfxGS34K5pu+aPbxz/rRQIWwBpyohw8xF+vWoG57H9Y+gvrYSq
	X/6c2VgZkPAYz0tshJWwg4+lyNsBI/LIEPjBuTjQbjXOCplfLJBxwTMMBzpilTst1K5CrMeo/
X-Google-Smtp-Source: AGHT+IGIuO0e03oHFUmBSecI4fO/CSzXLnISicdL8aIZOSRGQBCSq/vuBmIktgh7ahYTnGgVVi0OKQZAfe/u5gtJ0Ls=
X-Received: by 2002:a17:90b:270e:b0:2ee:9229:e4bd with SMTP id
 98e67ed59e1d1-2f53cba7a0dmr2476181a91.2.1736222733175; Mon, 06 Jan 2025
 20:05:33 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 6 Jan 2025 21:05:22 -0700
X-Gm-Features: AbW1kvajsgfRgXLj3C35zpPb2I3OICOtq4rXGf-RQrqd0AB7IifBHjorikSqp6I
Message-ID: <CAK5yBb-UxCVxXqJ_r4pDDTL7KyvxPwThpiJKigQ2EUUjHRgWVA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW01!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000431471062b15db62"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 04:05:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64501

--000000000000431471062b15db62
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last 3
weeks!
Who Count
richard.purdie@linuxfoundation.org 5
mhalstead@linuxfoundation.org 2
JPEWhacker@gmail.com 1
Grand Total 8

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000431471062b15db62
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>The below were the owners of enhancements or bugs closed du=
ring the last 3 weeks!<br></span></div><div dir=3D"ltr" class=3D"gmail_sign=
ature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"=
><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=
=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-=
collapse:collapse;border:none"><colgroup><col width=3D"249"><col width=3D"4=
2"></colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px soli=
d rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgrou=
nd-color:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgro=
und-color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=3D"he=
ight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">rich=
ard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:rig=
ht">5</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow=
:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhalstead@=
linuxfoundation.org">mhalstead@linuxfoundation.org</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom;text-align:right">2</td></tr><tr style=3D"height:20px"><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;back=
ground-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-align:=
right">8</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"backgroun=
d-image:initial;background-position:initial;background-repeat:initial"><spa=
n style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span=
></span></p>

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

--000000000000431471062b15db62--

