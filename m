Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D826C433FE
	for <webhook@archiver.kernel.org>; Tue,  1 Feb 2022 02:40:07 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web12.42997.1643683206469427524
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Jan 2022 18:40:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bTULxeCI;
 spf=pass (domain: gmail.com, ip: 209.85.214.174,
 mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id j16so14220715plx.4
        for <yocto@lists.yoctoproject.org>;
 Mon, 31 Jan 2022 18:40:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version:content-language
         :thread-index;
        bh=aFGqf8PbiILdWrTfkmGYJf2dYEdTvKQGBSIpfc3dwG0=;
        b=bTULxeCI1NuNgi2+QgJPRkNFJXNOXk3iwAYIX9HsUCMg8u8uCcqnYbvSNFcrYWjERa
         SDncnJQyy3H60El+54tNnBPTUoJRPjy/e+V4X4nTBAJz56iRHFs2aDcJh5sgmizLyStD
         qcKuQETwMWm+yKTerjuS56iwKmZExJBGWJyLUCUArDjK7LqyWwQAqvZzUMGUkgZEZQZ2
         nPJ8tBk8iVkvyLbEAdBUJcl7MuhK+PEwZK6MT4LsxRmhGDDZ8OOhar0yC6kD1PMAAFW7
         Ry4eZi5fhaFEsbHBit3uzr/gI8ai75UbSBcBl+DB5tgv90TkfBW1O/QEz34+fBsZUm6Q
         aSOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-language:thread-index;
        bh=aFGqf8PbiILdWrTfkmGYJf2dYEdTvKQGBSIpfc3dwG0=;
        b=g5u5FrvtdjtlmTlm4c2rq94/iwMho+cLqTE5DkzgSu2t11khtqg//LOzEnYRbmspFO
         3V3o+aeWg7SkhpwTb16/hs91DEha4jNs/O6O60gbuLy6X4kv+rbixSZYXcT8buzgR/il
         enPJSj2yw3e73bAQVP0UsfZbZ3Y723tJwZvif6z7YFQehrcRBefX1BHupySolEmLwbcm
         72vWxdNkoXL3j0VkUtaWMSC7Iysu57yqZ9J2J2PAAiwDM/QCEinpKZIp4041MBDKQ/TO
         8EbZd2bAKXzCnTHISmCoWVhIngybtda/N/vP6lG+ertNJY/aV6omYhVyGob+KzSPnVm0
         OdVw==
X-Gm-Message-State: AOAM533lXx2nVDj1Vzc3IMCCxfqwIuGSn81ZYNPlcAvQdse74CYjTPHk
	2yz4V/ZKPQkedo9Rvl/iNWU=
X-Google-Smtp-Source: 
 ABdhPJxChjeH2X0vc3tGbBI1dn0brNV4qFZEt3r1i6RhfOixMWPW2TYisxJpuweYyEzmRgz8fZsI4Q==
X-Received: by 2002:a17:902:a9c5:: with SMTP id
 b5mr23666436plr.167.1643683205957;
        Mon, 31 Jan 2022 18:40:05 -0800 (PST)
Received: from skjolley (125.sub-72-111-56.myvzw.com. [72.111.56.125])
        by smtp.gmail.com with ESMTPSA id
 w8sm14464356pfu.128.2022.01.31.18.40.05
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Jan 2022 18:40:05 -0800 (PST)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: Current high bug count owners for Yocto Project 3.5
Date: Mon, 31 Jan 2022 19:40:05 -0700
Message-ID: <0c9101d81715$05c52d70$114f8850$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0C92_01D816DA.5968C670"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQMf/jhvuGhCIrNplLT8mmr16Kd23Q==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Feb 2022 02:40:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56036

This is a multipart message in MIME format.

------=_NextPart_000_0C92_01D816DA.5968C670
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

 

Below is the list as of top 44 bug owners as of the end of WW05 of who have
open medium or higher bugs and enhancements against YP 3.5.   There are 62
possible work days left until the final release candidates for YP 3.5 needs
to be released.


Who

Count


ross@burtonini.com

38


michael.opdenacker@bootlin.com

35


randy.macleod@windriver.com

25


david.reyna@windriver.com

22


bruce.ashfield@gmail.com

17


sakib.sajal@windriver.com

13


tim.orling@konsulko.com

13


trevor.gamblin@windriver.com

12


richard.purdie@linuxfoundation.org

10


mhalstead@linuxfoundation.org

9


kai.kang@windriver.com

7


bluelightning@bluelightning.org

6


saul.wold@windriver.com

6


JPEWhacker@gmail.com

4


hongxu.jia@windriver.com

4


chee.yang.lee@intel.com

4


Qi.Chen@windriver.com

3


jon.mason@arm.com

3


alejandro@enedino.org

3


kiran.surendran@windriver.com

2


alexandre.belloni@bootlin.com

2


pokylinux@reliableembeddedsystems.com

2


raj.khem@gmail.com

2


mshah@mvista.com

2


pgowda.cve@gmail.com

2


shachar@vdoo.com

1


yf3yu@uwaterloo.ca

1


open.source@oleksandr-kravchuk.com

1


mark.hatle@kernel.crashing.org

1


nicolas.dechesne@linaro.org

1


yoctoproject@neumann-web.eu

1


john.kaldas.enpj@gmail.com

1


jay.shen.teoh@intel.com

1


kexin.hao@windriver.com

1


akuster808@gmail.com

1


thomas.perrot@bootlin.com

1


Martin.Jansa@gmail.com

1


liezhi.yang@windriver.com

1


aehs29@gmail.com

1


TicoTimo@gmail.com

1


matthewzmd@posteo.net

1


mingli.yu@windriver.com

1


yi.zhao@windriver.com

1


mostthingsweb@gmail.com

1


Grand Total

265

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com

 


------=_NextPart_000_0C92_01D816DA.5968C670
Content-Type: text/html;
	boundary="----=_NextPart_000_0E28_01D8115E.10EE4B80";
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
style=3D'color:black'>All,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:black'>Below is the list as of =
top 44 bug owners as of the end of WW05 of who have open medium or =
higher bugs and enhancements against YP 3.5.&nbsp;&nbsp; There are 62 =
possible work days left until the final release candidates for YP 3.5 =
needs to be released.<o:p></o:p></span></p><table class=3DMsoNormalTable =
border=3D0 cellspacing=3D0 cellpadding=3D0 width=3D293 =
style=3D'width:220.0pt;border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span style=3D'color:black'>Who</span></b><b><span =
style=3D'color:black'><o:p></o:p></span></b></p></td><td width=3D43 =
nowrap valign=3Dbottom style=3D'width:32.0pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Count<o:p></o:p></span></b></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>ross@burtonini.com<o:p></o:p></span></p></td><td =
nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>38<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>michael.opdenacker@bootlin.com<o:p></o:p></span></p=
></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>35<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>25<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>22<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>bruce.ashfield@gmail.com<o:p></o:p></span></p></td>=
<td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>17<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>sakib.sajal@windriver.com<o:p></o:p></span></p></td=
><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>13<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>tim.orling@konsulko.com<o:p></o:p></span></p></td><=
td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>13<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>trevor.gamblin@windriver.com<o:p></o:p></span></p><=
/td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>12<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>10<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>mhalstead@linuxfoundation.org<o:p></o:p></span></p>=
</td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>9<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>kai.kang@windriver.com<o:p></o:p></span></p></td><t=
d nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>7<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>bluelightning@bluelightning.org<o:p></o:p></span></=
p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>6<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>saul.wold@windriver.com<o:p></o:p></span></p></td><=
td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>6<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>JPEWhacker@gmail.com<o:p></o:p></span></p></td><td =
nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>hongxu.jia@windriver.com<o:p></o:p></span></p></td>=
<td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>chee.yang.lee@intel.com<o:p></o:p></span></p></td><=
td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Qi.Chen@windriver.com<o:p></o:p></span></p></td><td=
 nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>jon.mason@arm.com<o:p></o:p></span></p></td><td =
nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>alejandro@enedino.org<o:p></o:p></span></p></td><td=
 nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>kiran.surendran@windriver.com<o:p></o:p></span></p>=
</td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>alexandre.belloni@bootlin.com<o:p></o:p></span></p>=
</td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>pokylinux@reliableembeddedsystems.com<o:p></o:p></s=
pan></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>raj.khem@gmail.com<o:p></o:p></span></p></td><td =
nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>mshah@mvista.com<o:p></o:p></span></p></td><td =
nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>pgowda.cve@gmail.com<o:p></o:p></span></p></td><td =
nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>shachar@vdoo.com<o:p></o:p></span></p></td><td =
nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>yf3yu@uwaterloo.ca<o:p></o:p></span></p></td><td =
nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>open.source@oleksandr-kravchuk.com<o:p></o:p></span=
></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>mark.hatle@kernel.crashing.org<o:p></o:p></span></p=
></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>nicolas.dechesne@linaro.org<o:p></o:p></span></p></=
td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>yoctoproject@neumann-web.eu<o:p></o:p></span></p></=
td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>john.kaldas.enpj@gmail.com<o:p></o:p></span></p></t=
d><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>jay.shen.teoh@intel.com<o:p></o:p></span></p></td><=
td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>kexin.hao@windriver.com<o:p></o:p></span></p></td><=
td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>akuster808@gmail.com<o:p></o:p></span></p></td><td =
nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>thomas.perrot@bootlin.com<o:p></o:p></span></p></td=
><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Martin.Jansa@gmail.com<o:p></o:p></span></p></td><t=
d nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>liezhi.yang@windriver.com<o:p></o:p></span></p></td=
><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>aehs29@gmail.com<o:p></o:p></span></p></td><td =
nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>TicoTimo@gmail.com<o:p></o:p></span></p></td><td =
nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>matthewzmd@posteo.net<o:p></o:p></span></p></td><td=
 nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>mingli.yu@windriver.com<o:p></o:p></span></p></td><=
td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>yi.zhao@windriver.com<o:p></o:p></span></p></td><td=
 nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>mostthingsweb@gmail.com<o:p></o:p></span></p></td><=
td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;background:#DCE6F1;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Grand Total<o:p></o:p></span></b></p></td><td =
nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;background:#DCE6F1;padding:0in =
0in 0in 0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span =
style=3D'color:black'>265<o:p></o:p></span></b></p></td></tr></table><p =
class=3DMsoNormal><span style=3D'color:black'> =
Thanks,</span><o:p></o:p></p><p =
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
------=_NextPart_000_0C92_01D816DA.5968C670--


