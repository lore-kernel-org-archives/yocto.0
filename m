Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DDB5EB64DA
	for <webhook@archiver.kernel.org>; Tue, 20 Jun 2023 00:41:13 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web10.122.1687221672356185928
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jun 2023 17:41:12 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=MsaVQi6T;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-668704a5b5bso2069120b3a.0
        for <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 17:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687221671; x=1689813671;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rctQPASOJAzGuZuh78IW2HOZK8fQxkO+V7xk6KNpq30=;
        b=MsaVQi6TxRQQfVf6qMdCaTjoxzH+iow5kdC62SE2idNQnTm3INupHxt2VrMMgt543z
         dkVVdFIXh9brroPWk23Q2emZWKpjIbEpeNVpMubdefjzOQz3WyhNGliHjktWMtN/wlAf
         v/FNv4mFOJbTzrqJtfFIk6xu1D6JmlhsRXWrUv2fOGqCQJepiiLXqNRGiFSbqJMEkqxo
         NxRywWX7MlPTfRWTc3EAsoQGBn4I8VCNOFqNUqAITA3ApnJwo0m3i3a83PgW9/ko+LvR
         +NAHN1cMeU+mc+rM6FCybgsymccOumOpHinaA7fspEVF4UvYF5EUwwwmuu4AV5qRE+y8
         7J9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687221671; x=1689813671;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rctQPASOJAzGuZuh78IW2HOZK8fQxkO+V7xk6KNpq30=;
        b=OL7FKg5+SOhe6C6XZEJ7TGNcqOBsdFN3Lad+fYQuPPHNcKBNPM1HxWuaLnA4ZWlSF1
         KUZM2KW9hA+Fm6Iig02i3YaqKRzTJbuCXO3wPxGz81H+Vwm2zTQDot1tTL/5ryvd3Adu
         F8Zm039ohLsYhd74px/ypsBsGPm0TJ+zWrynxN4JRtOXF61ge3HYB8Q00bXBLTFOz7V/
         Q1hkGL2Hjy5mBtPDGM8rgI9dotcHFCAyXcg7oUeLYu1y0kDnnL2nEtPTslTGvf7AbnL/
         ZeJBNkwe9nCKxD7UTKVCRze38bqwupfD0FK3aPWQuj5GJZqkmuih2Z2J6dzUtm4ZiyTQ
         iMRA==
X-Gm-Message-State: AC+VfDyM0lcg+or0TSIOH9bHgI9WejCeKhx71CEJxAVkC+pv9xdabIk2
	xYV2xkQiXp758qZifXSsVItxpAr8guM=
X-Google-Smtp-Source: ACHHUZ47d6QBcyVSTMV+isC91n5jmOFpOsXpH9tEnQaRXzuT3ReTqnAnFZk/rTvP0qcWdkBdZBQGdQ==
X-Received: by 2002:a05:6a21:900c:b0:122:3b4c:9d0c with SMTP id tq12-20020a056a21900c00b001223b4c9d0cmr1747872pzb.45.1687221671611;
        Mon, 19 Jun 2023 17:41:11 -0700 (PDT)
Received: from skjolley ([2600:1011:a122:34d2:28e7:9ea4:5bbb:7068])
        by smtp.gmail.com with ESMTPSA id i1-20020a170902c94100b001ae7fad1598sm381307pla.29.2023.06.19.17.41.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Jun 2023 17:41:11 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: Enhancements/Bugs closed WW24!
Date: Mon, 19 Jun 2023 17:41:10 -0700
Message-ID: <124e01d9a30f$e9127c40$bb3774c0$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_124F_01D9A2D5.3CB85F30"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdmjD9ri6CspRfP7RbW8pHilB7CpyQ==
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Jun 2023 00:41:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60354

This is a multipart message in MIME format.

------=_NextPart_000_124F_01D9A2D5.3CB85F30
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

The below were the owners of enhancements or bugs closed during the last
week!


Who

Count


randy.macleod@windriver.com

7


richard.purdie@linuxfoundation.org

2


ross.burton@arm.com

1


louis.rannou@syslinbit.com

1


bruce.ashfield@gmail.com

1


Grand Total

12

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_124F_01D9A2D5.3CB85F30
Content-Type: text/html;
	boundary="----=_NextPart_000_0D04_01D99D51.A4529E50";
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:"MS Sans Serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>All,<br><br>The below were the =
owners of enhancements or bugs closed during the last week!<span =
style=3D'color:black'><o:p></o:p></span></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 =
width=3D0 style=3D'border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;background:#DBE5F1;padding:0in 2.25pt 0in 2.25pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Who</span></b><b><o:p></o:p></b></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Count</span></b><b><o:p></o:p></b></p></td></tr><tr=
 style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in 2.25pt;height:15.0pt'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'>7<o:p></o:p></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in 2.25pt;height:15.0pt'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'>2<o:p></o:p></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in 2.25pt;height:15.0pt'><p =
class=3DMsoNormal>ross.burton@arm.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'>1<o:p></o:p></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in 2.25pt;height:15.0pt'><p =
class=3DMsoNormal>louis.rannou@syslinbit.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'>1<o:p></o:p></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in 2.25pt;height:15.0pt'><p =
class=3DMsoNormal>bruce.ashfield@gmail.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'>1<o:p></o:p></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Grand =
Total</span></b><b><o:p></o:p></b></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;background:#DBE5F1;padding:0in =
2.25pt 0in 2.25pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span =
style=3D'color:black'>12</span></b><b><o:p></o:p></b></p></td></tr></tabl=
e><p class=3DMsoNormal><span =
style=3D'color:black'>T</span>hanks,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal =
style=3D'page-break-after:avoid;text-autospace:none'><b><i><span =
style=3D'font-size:16.0pt;font-family:"Times New =
Roman",serif;color:purple'>Stephen K. Jolley</span></i></b><b><i><span =
style=3D'font-size:16.0pt;font-family:"Tahoma",sans-serif;color:purple'><=
o:p></o:p></span></i></b></p><p class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;font-family:"Courier New";color:blue'>Yocto =
Project Program Manager<o:p></o:p></span></b></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings;color:black'>(</span><span=
 style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>&nbsp;&nbsp;&nbsp; </span><b><span =
style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Cell</span></b><span =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'font-size:9.0pt;font-family:"MS Sans Serif"'>(208) =
244-4460<span style=3D'color:black'><o:p></o:p></span></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings'>* </span><b><span =
lang=3DFR style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Email</span></b><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>:</span><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;<u><span style=3D'color:blue'><a =
href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a></span=
></u></span><span lang=3DFR =
style=3D'font-size:12.0pt;font-family:"Arial",sans-serif'><o:p></o:p></sp=
an></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_124F_01D9A2D5.3CB85F30--


