Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02A6BC77B61
	for <webhook@archiver.kernel.org>; Mon, 24 Apr 2023 20:57:54 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web11.63777.1682369872302960477
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Apr 2023 13:57:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=aXyrwvIh;
 spf=pass (domain: gmail.com, ip: 209.85.214.174, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1a66b9bd893so43138765ad.1
        for <yocto@lists.yoctoproject.org>; Mon, 24 Apr 2023 13:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682369872; x=1684961872;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PmwdNzT5EG6ce1CEPkBk2JmRBGz2ppWtc+tjnwysmnU=;
        b=aXyrwvIhTX9oByzdNiFhU6LpMqQvSXucV/luSchJm7/56c0uC4wCXPUiEVRoqfHwZn
         USBfrzYynNNSR+uRMpAF3z4kuX+6XHxpvYzOP+4IIG9JPdUfGQxf9JAbt/xPufoBgfNP
         6aCJAZbqLWjkxE6XelpYO2GZ3AdW8/f+UiEOi/y5Ph6uq4gouId0AweNkNUNETKwv+RI
         D+dak/7NswFWWgC4AVuTbuVk9Q6xitDuqUvdlD6wjVlBgLYxaImh8o+cyHXETdiYrwyj
         4ezk7TD4Ap7jTY5U/cZ9JdBzfLbz7iQiZ/0Q6dqbAEPvNUvmmm61mt52hom6qA6vw87R
         kEoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682369872; x=1684961872;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PmwdNzT5EG6ce1CEPkBk2JmRBGz2ppWtc+tjnwysmnU=;
        b=Celg9XU8KbcBLC9Ibd/amGutX7qtCMNnQphOo5vFCMi68Fq1UCosHG3urnVrLH9M0T
         tYFnDTCtMhvlSxXduXVeUE6NwtdSlTrelzc5thirdiT+hoWn18iHY10rE9+lIvnNl5vX
         Ls2WfYyiIRxNUUaqPeQ2+eKLKXyvGIenqpDWYErOFGs6QcKaU5ReQSf3c7u9INJrnQbz
         jz9Uz8KJGFZlMv19jhIZnZushXNR0eUiWQ9WgEz67DEY/td9gl/akDNhlTuh3AC6ucay
         uI904QMxPivSb43Mf30hd+6Bd8Wkm7TnOWaIeqJm9dZbJzgH2vS+DbOClrlt2hnPDvc/
         Wpsw==
X-Gm-Message-State: AAQBX9cl1aGqOtV9hFp3S6uJg2K8/bWijJhIUgPcGbvRxdG7rKFxrZVK
	TcWaSMc0bL1WANV1AobbaL0=
X-Google-Smtp-Source: AKy350aQjHwsq2vADhf5pBNAEfhhYBkFktvoMgd8O5vu+xAShPuADFAhFaFYXnSKOzaNXgtM71QgjA==
X-Received: by 2002:a17:903:22ca:b0:1a1:595a:8e3b with SMTP id y10-20020a17090322ca00b001a1595a8e3bmr19695151plg.34.1682369871746;
        Mon, 24 Apr 2023 13:57:51 -0700 (PDT)
Received: from skjolley ([2600:1011:a110:fb5:3813:85e0:f5e9:8cd9])
        by smtp.gmail.com with ESMTPSA id gv17-20020a17090b11d100b00246b0faa6b1sm6650638pjb.5.2023.04.24.13.57.50
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Apr 2023 13:57:51 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: Enhancements/Bugs closed WW16!
Date: Mon, 24 Apr 2023 13:57:50 -0700
Message-ID: <104801d976ef$6ecadc30$4c609490$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_1049_01D976B4.C26CEE90"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: Adl27238miWPUI2sRrKW1ro8wgQcEA==
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Apr 2023 20:57:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59771

This is a multipart message in MIME format.

------=_NextPart_000_1049_01D976B4.C26CEE90
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

The below were the owners of enhancements or bugs closed during the last
week!


Who

Count


steve@sakoman.com

1


Grand Total

1

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_1049_01D976B4.C26CEE90
Content-Type: text/html;
	boundary="----=_NextPart_000_038D_01D96BEC.AB360B80";
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
	font-size:10.0pt;}
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
class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>All,<br><br>The below were the =
owners of enhancements or bugs closed during the last week!</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;background:#DCE6F2;padding:.75pt .75pt .75pt =
.75pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;color:black'>Who</span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;background:#DCE6F2;padding:.75pt .75pt .75pt =
.75pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;color:black'>Count</span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>steve@sakoman.com</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'font-size:10.0pt;color:black'>1</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td></tr><tr =
style=3D'height:13.5pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;background:#DCE6F2;padding:.75pt .75pt .75pt =
.75pt;height:13.5pt'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;color:black'>Grand Total</span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;background:#DCE6F2;padding:.75pt .75pt .75pt =
.75pt;height:13.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span =
style=3D'font-size:10.0pt;color:black'>1</span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td></tr></table><p =
class=3DMsoNormal><span =
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
------=_NextPart_000_1049_01D976B4.C26CEE90--


