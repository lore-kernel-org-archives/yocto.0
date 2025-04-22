Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2698C369CB
	for <webhook@archiver.kernel.org>; Tue, 22 Apr 2025 06:56:22 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web11.34186.1745304981671491117
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Apr 2025 23:56:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EL2UY1fR;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-30828fc17adso4113819a91.1
        for <yocto@lists.yoctoproject.org>; Mon, 21 Apr 2025 23:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745304981; x=1745909781; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KibieggpReCEf8Z6ZGzJ6E3HzIYQfUl72RD1WLGLXmM=;
        b=EL2UY1fRORQWRYwbAjex7FDZNfTsqOR+4ew1lqRLto8BjHEhrj2FJVW22OvjH1b/wO
         KabVHQZWuqo2NAXGVHrhHq4zJY6uB5BzpqbpgXjmOkbrtRnt6bumwrTOIkY5TC0brATm
         QEMlJoNFB+TPWlQxdBG1KbsPglJghhR4dxpuLaOnNZEc/GXn4ZVrpt24wH8qMH5GC7Se
         masCEAwowsfb5LYNn/Xvf67/PhyYoAVwi+DeXkj26vtuNPJz7NDeKejg+hpE+XEXQcj/
         EjWTs7fGrJzhS0EN2KNLY+ZIzZ2EuzKHcF/5TUDjZ0PK+X1gmYN2O9egTFI6QmFiOsbf
         XKXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745304981; x=1745909781;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KibieggpReCEf8Z6ZGzJ6E3HzIYQfUl72RD1WLGLXmM=;
        b=YgI2duw740J5c+9mwYssV+O9tGHDmvSUHO2buQFhsQDsD67V0QPyqHinPWNZhnzF2A
         O/VBHXlA7ZQ/adVUYM7IabPHvcT4RWgGymMMbrij3rf3wd7jjLaVFlD3XhI9ikwaIBd6
         L5Aw8bUmhVTeVhl6YLFxoDLm9DPo9minY7dVZz+SgZ2f8eYXBlyf7Ih9blxkC/OZKY6s
         qBYJjgZgrlAnOc0SfXSqLE9e6QoCk1mjJmYkLMPk5AsL1jsbzKOEdzAgx1WlD4MzyA1w
         MqRibMerYpY1WADgnvIF7VCNtkmicg+c3iAckcmbJo/3EPrroUGLcvO6JOq1PsJujP86
         16CQ==
X-Gm-Message-State: AOJu0YzbaDyHdplOHpca1qYJez2ZAc4IrgekU5RgbPcWrQVW/d76Noij
	OIglO3F7NzElIZLGBuO5PH6qsxVfxXqJ82Jcjq8gj+jhnASY1w+GdL8WbOdnnpJz9IM/T2no9Xk
	pEuI/uQ50CrKR8ELfbvtWp/EOHbTp357z
X-Gm-Gg: ASbGnctgeTDgyVAX528TyIHll2xVqVEh8Z8a20CrGd39S/jtzHhPWXCF2XDTQEiq2+/
	u0iKoVBX7rYaCpVMNBB9MpBSaEqLGDIiCX3mxWdlHMg/VA38Hi7t/fwOsSaP5T3ISw4lUQDEPXH
	VUpTkTYVGQgBTUMSKO+QyG8xffsjJShiAWnA4wKfsxWrc7ylN8WAaGP1c=
X-Google-Smtp-Source: AGHT+IGjbhhLPDW/V43mK/QsRgNyVb7wmW1tit+u9BMddBQBu3BN8hfmQPCHsB50fcRtz4Rkf3uSGstMP+P7bIgvuio=
X-Received: by 2002:a17:90b:2d0d:b0:2f9:9ddd:689b with SMTP id
 98e67ed59e1d1-3087bbbcdbfmr18379325a91.22.1745304980826; Mon, 21 Apr 2025
 23:56:20 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 21 Apr 2025 23:56:10 -0700
X-Gm-Features: ATxdqUHQkkECuQk57ZRvlJi-V11RlHc3PFa4LIs_VTAFhC4HImi8hAIyx5BncuA
Message-ID: <CAK5yBb8jbFDkWTGUuOK7Hhh3wQfHLTczySk6tY=PB-EqoUWcyg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW16!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006833f30633587b08"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Apr 2025 06:56:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65220

--0000000000006833f30633587b08
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 2
ross.burton@arm.com 1
mhalstead@linuxfoundation.org 1
Grand Total 4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000006833f30633587b08
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
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@ar=
m.com">ross.burton@arm.com</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhalstead@linu=
xfoundation.org">mhalstead@linuxfoundation.org</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-co=
lor:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;background-color:rgb(219,229,241);font-weight:bold;text-align:right">4</t=
d></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:ini=
tial;background-position:initial;background-repeat:initial"><span style=3D"=
font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p=
>

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

--0000000000006833f30633587b08--

