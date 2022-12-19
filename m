Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4550DC4332F
	for <webhook@archiver.kernel.org>; Mon, 19 Dec 2022 20:24:48 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web11.33148.1671481480271192179
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Dec 2022 12:24:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Nutm0xbm;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id v13-20020a17090a6b0d00b00219c3be9830so9979173pjj.4
        for <yocto@lists.yoctoproject.org>; Mon, 19 Dec 2022 12:24:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=q9ZMA9DKTjXMgjhAtrrgomA+PGOHBoJEDkKdO6TlR+s=;
        b=Nutm0xbmnzHp3Zd7w7wUbkxnuLQjri/5kmrXOpUQO5Ce6brKrxqmD9e3XPjFYdjSnX
         Ajs2jzPdQnToPUBR6/FvCvgDLk0B1Gc8uEOuCQ91w6WHNRSOVmBrtG0dl3RfsNu9suYN
         NDHstheAX539EKQXHsa4jFAIbYVJ1R31Q+kloFn3snNk/g+f8xA+vFse3qeXXFgblWAA
         w082q8nmqdIyEs8cvOonkFT5wDW1h4JGC036+zYUftGl01tuzz1bsn6qFRKC2YmRwKRT
         nCKd8yfmccq7aWm/fAlTHIIGbRGiz5UE6mPaCc0632IyOu/VEMtt7aaEZsLkuX7uzKrN
         DStA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q9ZMA9DKTjXMgjhAtrrgomA+PGOHBoJEDkKdO6TlR+s=;
        b=YegYCu80BLZ4ittWOHEP0Md5MVocfec6D8ZdhPWu+WkZTgOArKmyS+C6sC1PE7nZt+
         XAvGN2N8UruRDE/GBO0pBpNAjObuDMe1gWPg1o854BBuvKGBXpUMdEJdWMjLoMO3JKuI
         lyShEJk7jiWh6oVh5oqhdrc1FDjVSmLJ8sX7cjpQ3ScLjqLFoHEGrYiqW1XsNX7Z3eqK
         TWCTwOgwJ9MixMOrSPfmeq0qi8r8aDEBzd0McZeDAHTGS7IU+/1YnhoLoqT4ydLLnU+w
         P7EjIz214ykh07yUqhXnuBBqL4pxD7c/CT3vvaEzvSVW/2QKkmyJtUBPl9nt/0cMVsrL
         5q5A==
X-Gm-Message-State: ANoB5pldvKhUZSHt9O3NXv8lwswm0upYxxnEJXi4VKKipjIqu69FRaJD
	b6l+LmQejNfpI72+WY2eEuYhgQT5kZYkLQ==
X-Google-Smtp-Source: AA0mqf5QF8Odc7kIZMADh7IDPVoYkPicBLPy5TZKJa3aa7l2NEWakBX7mefevgalC/bY0wPQT4RFew==
X-Received: by 2002:a17:90a:300f:b0:221:6310:a4f3 with SMTP id g15-20020a17090a300f00b002216310a4f3mr30513387pjb.20.1671481479774;
        Mon, 19 Dec 2022 12:24:39 -0800 (PST)
Received: from skjolley ([2600:1011:a11e:7926:29d3:f1cd:c99b:f73f])
        by smtp.gmail.com with ESMTPSA id g19-20020a17090a579300b002191ffeac8esm6400340pji.20.2022.12.19.12.24.38
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Dec 2022 12:24:39 -0800 (PST)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: Enhancements/Bugs closed WW50!
Date: Mon, 19 Dec 2022 13:24:38 -0700
Message-ID: <150901d913e7$ebd2bc90$c37835b0$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_150A_01D913AD.3F73E490"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHkbtYd+6ZSE50yn9RnMDQCcba/Rg==
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Dec 2022 20:24:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58835

This is a multipart message in MIME format.

------=_NextPart_000_150A_01D913AD.3F73E490
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

The below were the owners of enhancements or bugs closed during the last
week!


Who

Count


tim.orling@konsulko.com

1


Grand Total

1

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_150A_01D913AD.3F73E490
Content-Type: text/html;
	boundary="----=_NextPart_000_0C82_01D90E70.4D1666A0";
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
style=3D'color:black'>All,<br><br>The below were the owners of =
enhancements or bugs closed during the last =
week!<o:p></o:p></span></p><table class=3DMsoNormalTable border=3D0 =
cellspacing=3D0 cellpadding=3D0 width=3D293 =
style=3D'width:220.0pt;margin-left:-.15pt;border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Who<o:p></o:p></span></b></p></td><td width=3D43 =
nowrap valign=3Dbottom style=3D'width:32.0pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Count<o:p></o:p></span></b></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>tim.orling@konsulko.com<o:p></o:p></span></p></td><=
td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Grand Total<o:p></o:p></span></b></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal align=3Dright style=3D'text-align:right'><b><span =
style=3D'color:black'>1<o:p></o:p></span></b></p></td></tr></table><p =
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
------=_NextPart_000_150A_01D913AD.3F73E490--


