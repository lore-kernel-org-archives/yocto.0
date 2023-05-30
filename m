Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39B72C77B7E
	for <webhook@archiver.kernel.org>; Tue, 30 May 2023 00:22:57 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web10.63346.1685406175617732398
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 May 2023 17:22:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=K2YVWmu7;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2553663f71eso2522674a91.3
        for <yocto@lists.yoctoproject.org>; Mon, 29 May 2023 17:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685406175; x=1687998175;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qdrPrGLUjShSRWl5FEe9FbPoPMXphJo037mp+B2lHFo=;
        b=K2YVWmu7g/2l/xEr93acnkGaY0DAC6mpV9y+9QdLwrvdTiOuU1KyCkFmOdJQVXEqyD
         8FcRQWpmqMHMFn21oOdggEutwCmNhYY/DvMtBHa5WHnQSJOeBUtXnlexQPSTVQx8iXh6
         Sv/b+9BAM+WZrB2geoaq7zpg6APyTrOKPIxxGrlbDUoi3Q04jG0DH2ehju10UtqgJ4Gl
         Ah09iRk1P65iDNvF3Y9g2jmNCHJiuwvE6YQ0mtEC+GkjAzyBcW9QxljkCCQBCiULmRAJ
         YA7sHE23nFxC5B99AONj3TPEHNNp/roH2cmfWyks8zaeS7tYgcfG3va2HUoZuXj6QrQi
         Tt2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685406175; x=1687998175;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qdrPrGLUjShSRWl5FEe9FbPoPMXphJo037mp+B2lHFo=;
        b=W4E/LnW7XjAA5QR79kOjj0GHFUli3kkWnB0+gbpJB4Yz1bf9KAj++6EuzM34Ast5+7
         URMLnBKCSFriV5HwTldsAWzp2AFR5E8pyCW/SAai9E3y98sbyHY8orIzYpTdyJfK9TAD
         9KI4CyeCdd/uhhMYmzoxQFhC9q+n7iRyCp10ltg8DGq+Kr98p/cmWZszuDLS95j+Q2he
         k0LFZWJ5RTUVZVR/vvfpGynFEEEZ4oyR3+scl+Wj95NPcUWaYDBxGztb/fA8kg/pI5Oc
         2fadLlE4WX0U7br5uLIzUfW7etf07+HGWfr5q42jPhkRl2ncNdbE7MC+mDo0QrxkICG5
         VRmg==
X-Gm-Message-State: AC+VfDwO7eapEWb9+zhqdsMudvYXHXEVy1sHrs68qEwGEZX2oQjmxaBa
	bRfGkH20EfCIAS1hjj2asQw=
X-Google-Smtp-Source: ACHHUZ5rxgHGM1EKOUmxxTHjwhyKgZfO+z/TYhd1i2U02bNmI93a7nPuZ6T1/q4gy5C2ScuW3LY4pA==
X-Received: by 2002:a17:90b:33ce:b0:256:2ef:92ec with SMTP id lk14-20020a17090b33ce00b0025602ef92ecmr784736pjb.1.1685406175036;
        Mon, 29 May 2023 17:22:55 -0700 (PDT)
Received: from skjolley ([2600:1011:a110:fb5:3813:85e0:f5e9:8cd9])
        by smtp.gmail.com with ESMTPSA id j6-20020a17090a734600b00253239144c5sm7463439pjs.42.2023.05.29.17.22.54
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 May 2023 17:22:54 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: Enhancements/Bugs closed WW21!
Date: Mon, 29 May 2023 17:22:54 -0700
Message-ID: <07e901d9928c$e0f416b0$a2dc4410$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_07EA_01D99252.3497AFB0"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdmSjNC+0gk+n/0gT92oSJ/LP54vog==
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 May 2023 00:22:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60140

This is a multipart message in MIME format.

------=_NextPart_000_07EA_01D99252.3497AFB0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

The below were the owners of enhancements or bugs closed during the last
week!


Who

Count


randy.macleod@windriver.com

3


Grand Total

3

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_07EA_01D99252.3497AFB0
Content-Type: text/html;
	boundary="----=_NextPart_000_0A94_01D98CD0.D4BAABF0";
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
	{font-family:"MS Sans Serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
style=3D'text-align:right'>3<o:p></o:p></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Grand =
Total</span></b><b><o:p></o:p></b></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;background:#DBE5F1;padding:0in =
2.25pt 0in 2.25pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span =
style=3D'color:black'>3</span></b><b><o:p></o:p></b></p></td></tr></table=
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
------=_NextPart_000_07EA_01D99252.3497AFB0--


