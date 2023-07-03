Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84F2EB64DC
	for <webhook@archiver.kernel.org>; Mon,  3 Jul 2023 15:24:32 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
 by mx.groups.io with SMTP id smtpd.web10.35849.1688397866893170504
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jul 2023 08:24:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Stn2azET;
 spf=pass (domain: gmail.com, ip: 209.85.219.176, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-c50c797c31bso1796550276.0
        for <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 08:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688397866; x=1690989866;
        h=thread-index:content-language:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=avHtD9thcVre5eRpPwBIL386XA5yfMmc7jpbUq2f/Ng=;
        b=Stn2azET40CmB6gXE3wlV9AYOdHYfE9xs6c/QvgR1JmCGKcyN9YG34f15t+N+KvVfK
         8qJ0IQjRlMlt2GYL22tmRwRiy2onidtCufZnoEqLAQDsVNop25BY2acIq4/W4wRPdwrD
         XAT2N1yx+g511NNVY2ntxxWq7qo+DtUjX22WnAP80Zk5fEzu6jNKmaVIV2LAsmAK7udq
         STXoedwTSjKMahqa3V7IL9Kux+sH0Irx6G1yYiTmBaRcSQYEilA/cds6r+Ycfo0dVUlj
         iZdIAmmVeDSTpi3XYktb0nJcKTKiphf9eVISpGgxQJ3Ou+IxQIexqzhlrNtwpSosEvb9
         XlJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688397866; x=1690989866;
        h=thread-index:content-language:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=avHtD9thcVre5eRpPwBIL386XA5yfMmc7jpbUq2f/Ng=;
        b=fHG4takrO5Ra3J1/nBuRmoT5NowXny/Tg0Xc12htTIziiF2GO0SeTFBs91jPiWiXv/
         NfuE5Ja19vU+VPFA6FGIllUzHj9jm0aT5Egqdph6RbLDpkmfQkye3ahNawWlX5A08e+X
         en2Vfri3LwaNCPvaVo8oPqEvu+xVrW7nGdv+G60hpwLXN9nX4B9+VE8j7rPXPC54/2Zj
         poo/q//atq0I0PG2iwzeWapTpJPtb2xYHmBfCZdhcHpH7R5z8lREW/NvJgwAlIkjQYs8
         A2ns2Z9Am3wRyqewstXwt6FD5bY7uu2ZJO7gsHziqimX+nJjD4douCFCQ9riXXKO88GC
         Q3wQ==
X-Gm-Message-State: ABy/qLbU+pUDqWpYmotW7RMcndSMYyoLvNkKVsQ7+oWII31GJ9VY27a/
	ZzsQ1XnelTqKHicp3AvGEVCS/IzIodI=
X-Google-Smtp-Source: APBJJlFp2f+UbIZIalMx8RapzZWxB0R+tsk00ZwFvGon/r079+3p1dHzSf23cCEks14IRFETkdU5lw==
X-Received: by 2002:a25:c058:0:b0:c2c:1b68:99b9 with SMTP id c85-20020a25c058000000b00c2c1b6899b9mr9968751ybf.8.1688397865982;
        Mon, 03 Jul 2023 08:24:25 -0700 (PDT)
Received: from skjolley ([69.39.4.66])
        by smtp.gmail.com with ESMTPSA id b16-20020a5b0b50000000b00bcf788d09e3sm4228734ybr.34.2023.07.03.08.24.25
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Jul 2023 08:24:25 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: Enhancements/Bugs closed WW26!
Date: Mon, 3 Jul 2023 08:24:25 -0700
Message-ID: <07cc01d9adc2$73da3040$5b8e90c0$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_07CD_01D9AD87.C77DC940"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AdmtwlwsOEE9NyXGQh6sFRZF6l0ynA==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 15:24:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60501

This is a multipart message in MIME format.

------=_NextPart_000_07CD_01D9AD87.C77DC940
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

The below were the owners of enhancements or bugs closed during the last
week!


Who

Count


richard.purdie@linuxfoundation.org

1


randy.macleod@windriver.com

1


Grand Total

2

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_07CD_01D9AD87.C77DC940
Content-Type: text/html;
	boundary="----=_NextPart_000_1166_01D9A835.ED8EC4B0";
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
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'>1<o:p></o:p></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in 2.25pt;height:15.0pt'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
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
style=3D'color:black'>2</span></b><b><o:p></o:p></b></p></td></tr></table=
><p class=3DMsoNormal><span =
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
------=_NextPart_000_07CD_01D9AD87.C77DC940--


