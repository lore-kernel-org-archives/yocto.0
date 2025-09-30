Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7133CAC5B9
	for <webhook@archiver.kernel.org>; Tue, 30 Sep 2025 05:46:17 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web11.18405.1759211173438249886
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Sep 2025 22:46:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iqr0LtzN;
 spf=pass (domain: gmail.com, ip: 209.85.214.178, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-269af38418aso70503165ad.1
        for <yocto@lists.yoctoproject.org>; Mon, 29 Sep 2025 22:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759211172; x=1759815972; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VJNeegBGJNzAP9W57fztw9un5Zy6LsPsLlHmXkIeqJI=;
        b=iqr0LtzNQhmDRh5/gY5PqpMk+cXyibS99/B5gsa2SOxRbjIJYkHhS+J9C3bMiSdjR9
         f0maYiM28MJR/LwK2nhr3YfT4ybiuW1I7PJhRzYEcPxxXA1//XZ2eiqbWVXzUPTdNaDA
         qUi+ytt4s4tp+ZuepL/GnQG4KHBGk5RiVZgy7rtb8JyjWsxkNBWw381fh4E9dMRGVkZ7
         u+EJ0eGG6N1YBikqXNAJZhxmcDsxLFgoD2aTmkGJzVE18i5CsYM09bxW2S6XEQB1iaIr
         oFrSV3S/9qti/98lJgCpIpyICnqRAinSSACyJmb0sdLSjeOuwebDVh2jg7TW2syPsvOa
         tF9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759211172; x=1759815972;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VJNeegBGJNzAP9W57fztw9un5Zy6LsPsLlHmXkIeqJI=;
        b=efueU3ZA3Iouu48bGc0B0uZYHcRzqKfkcEAIAoVCUuYqwvRMxUUkP59gH78K4CzH9f
         75Qv4Yx660tWIGILy72Iv0uCx/Z4T6uqw8G5AZuZ2Hr/YgafHqDY3xOe5bY8ZEKLAJxA
         b3QB/Y21KRHlcSSFlPORo1aFS4f5ClLt9vFeGexowPgEYX0zMcpqfgbqVsB9aPGfq8o/
         DANq6iYxg97F26gquIpYP3/zfL4Z7f8PXbbKUCDVPkjw5CN+BtA5koa0+J2A6PAwi65I
         5iPz6lKrnXXI8ZqkQkw/o76VqKHLY4l1CiAXSt68g+nlqd7qarLLjr1u4i5T8AiNW+dN
         XSrg==
X-Gm-Message-State: AOJu0YytSkURP8wzOnVzKd5iLyywrA6/2kAx6OPYq+WiG5UHl5K/T7vW
	/mIa6ciayXFWxUrabIIMmmg+ITWbioLFEpPaFqF/KSzxTBuG23Yr+tQS5Zlgta3ouSraU4WGNNk
	hZgXbrlYD2ZaCbGNczjodAof/vHxnpXOpq9u4
X-Gm-Gg: ASbGncvS08CgP4PLF41sBlGX/RTWi6Q9OSafS9bAI81dgWLZCnmvZ1eJYypg7+d4uNs
	sj3ZrQFeHiwasyXfA/2ZXxnpyRIjULDYNS5vaRDRdj9CM9D6MIlFOAHWFgtQJy0izPEDpbKulvB
	Wxa0UlUOqd9MBkT1A5cu3V1PNPp6REfwfdGf37s3zBnhVodBsS9mfNfAGynakUhupJijeqVeSmA
	NIpL67rX+FtfZAKImRn2cb2hoid6LTK0Ndxes8NM+UHArYURwf5aZnCA7w+tTe8alM0tfpi5L98
	YaY1xubRiGHT7TX7g5GBckxF9U0UvmaHi2EiKFsDVhv+fcDTTUTzQISMBOH2nw==
X-Google-Smtp-Source: AGHT+IFkSPLhYFhkOrW+zeUffiMNHdWvVoLr2avKG7ACM9lyQvs4f4lAlaGpX2Vl4H2PDJ81Gs7Al0RB1lPunPaOZsM=
X-Received: by 2002:a17:902:ef47:b0:267:a230:c657 with SMTP id
 d9443c01a7336-27ed4a0d38emr215812285ad.24.1759211172510; Mon, 29 Sep 2025
 22:46:12 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 29 Sep 2025 22:45:59 -0700
X-Gm-Features: AS18NWARFi_HT0iU-b2r0WhJXnLjS2nEStMtHjlCGBmeDRGC7c1wDpPiLLE2Eas
Message-ID: <CAK5yBb8hyfJdmxSZ_48RA=eHY-kavd47EW1uqmBFuPy7sh=c0Q@mail.gmail.com>
Subject: Enhancements/Bugs closed WW39!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000005bfd0063ffe45e7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Sep 2025 05:46:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65890

--00000000000005bfd0063ffe45e7
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 2
Grand Total 2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000005bfd0063ffe45e7
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
lign:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@w=
indriver.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:b=
old">Grand Total</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241=
);font-weight:bold;text-align:right">2</td></tr></tbody></table><p class=3D=
"MsoNormal" style=3D"background-image:initial;background-position:initial;b=
ackground-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,s=
ans-serif">Thanks,<span></span></span></p>

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

--00000000000005bfd0063ffe45e7--

