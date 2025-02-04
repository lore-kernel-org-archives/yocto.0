Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41585C0218F
	for <webhook@archiver.kernel.org>; Tue,  4 Feb 2025 07:33:16 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web10.111080.1738654386482772077
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Feb 2025 23:33:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Cf3R8M1T;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-21f01fe1ce8so6083475ad.2
        for <yocto@lists.yoctoproject.org>; Mon, 03 Feb 2025 23:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738654385; x=1739259185; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1cTIaKV1MZczkt1pxNfbYhsGuEM6hEACwZAFGqcGL1c=;
        b=Cf3R8M1TxZXKVXkKk6Lu7Kre3U/OCnpQfJDXdFl3j+vUH0brV2ECIdU7yL7cMCh0nM
         4agW48RuZkSChAOukWDrZV7IRWC6VCC9cscgh6wmKAOc4gI2Rgls5RRLE4eQSyLHACdz
         RlyEf672GYKYkf6aCyUTnrhZrsI5ryMNk8g8uw6tT9X/8GKB1ltpXT0ogFvtpxFl1szf
         0xnNv2YPJB6Zf6b0tSMyf6Boh/zM18yFJfTDnkSzy1Eboyxmi0/SuCF08QxiDJNMNifh
         Kl1UzhAIhKwyYiyCaQACGqINpVh1aR+Y8hcjVIQlyW4giy0dae85f69EetI+0zqQ5WlV
         onyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738654385; x=1739259185;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1cTIaKV1MZczkt1pxNfbYhsGuEM6hEACwZAFGqcGL1c=;
        b=kLDlslIGDGOXgwoM3CCIXZO06Zv6E/xGfiscb6V476ufLeUjnhcZ2cZKKMO8SLDOMU
         Lm/T8yoBYRT9IJRVBizDuDtoCoqan3/N65WHNQTyMak97H+QXB6wJBfS4cwW65KjPb9t
         mwOWXipFaAR2/30+GjNUB7bOz1FWqvjQ/fCcxLrW/JOpOAybEOR8WbuMP+SEj3HN9gbu
         7kVDH8gxlZCCm/kfo+qRvocufGg3oGBOzi3l2ewm1GW7ZbKhuHtvmzXyFfb131L/ZbU9
         +bIKSEnHtFbxadhkHAYHYdrS9z+oSmJK7Z5YaGhiGn87MRQOKqVuG6Ul1oAGPKfD4NPS
         g+ig==
X-Gm-Message-State: AOJu0YxJoaoOUh9wS6k0RilD/2hdpeXZt9rh1PHp0AxXQtwFY4BRDWrQ
	j5Csjbi58M9zcPbOuZkmV9CAyyp2Xpa/vo5gElSOgCt44s0nVd88Ba+xyHKVxKDn2v9m8ZrCP/R
	oRX3u2WVnMejBXbRfn0LtVdJLfCfDQdoq
X-Gm-Gg: ASbGnct47WjSg2X3t9YWavaI0dZGp/p5AXAK6jylvj7NekoErTXLFSIAy+id/z7LHab
	1gkwD36biDvNDyDQSTlzbJNLkAha1dDc+BiKSvXeNvVf8kksCT5DZH9Z2tdLSa1iZepSJZhwb+h
	9RsmrIxW2JPnMJtmTm0ECFxar5BX8R+Gw=
X-Google-Smtp-Source: AGHT+IFwgPfNaBscoCgaS4PlUfL/jY1Q7uiXvyp5kSNT8B0R0pYvsmPZ70OVFtiZ9dhlLNX/1gwl2xfz6wJjOyha9LY=
X-Received: by 2002:a17:902:db03:b0:215:b33b:e26d with SMTP id
 d9443c01a7336-21dd7c5141fmr382232905ad.21.1738654385646; Mon, 03 Feb 2025
 23:33:05 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 4 Feb 2025 00:32:55 -0700
X-Gm-Features: AWEUYZkW2N-aITfRCJIo7uoWmj8y2MabxIbVNHApcAYID7UjNk2qz0h7e1xDUBs
Message-ID: <CAK5yBb8X2HGqgkUvrmCKQg=AhdzEeZ2v9hXP=6xFPv3ggT6Ozg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW05!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000b3333062d4c05f0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Feb 2025 07:33:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64706

--0000000000000b3333062d4c05f0
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
steve@sakoman.com 1
ross.burton@arm.com 1
richard.purdie@linuxfoundation.org 1
Grand Total 3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000000b3333062d4c05f0
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
lign:bottom"><a href=3D"mailto:steve@sakoman.com">steve@sakoman.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20p=
x"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align=
:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20p=
x"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align=
:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purd=
ie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</t=
d></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);fon=
t-weight:bold">Grand Total</td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(2=
19,229,241);font-weight:bold;text-align:right">3</td></tr></tbody></table><=
p class=3D"MsoNormal" style=3D"background-image:initial;background-position=
:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-fami=
ly:Arial,sans-serif">Thanks,<span></span></span></p>

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

--0000000000000b3333062d4c05f0--

