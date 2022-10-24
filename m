Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A50F9C67871
	for <webhook@archiver.kernel.org>; Mon, 24 Oct 2022 22:09:14 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web11.378.1666649349087742514
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Oct 2022 15:09:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ghvaS5WN;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id pb15so9126832pjb.5
        for <yocto@lists.yoctoproject.org>; Mon, 24 Oct 2022 15:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RisGDNAqNRr1tC6bPpaVQcs2CugcOY6eJUqvf5PNzAQ=;
        b=ghvaS5WN2wDAX+SRnUqs/DVHqaXWvBxYcAZZ7yABGMej9UIsw8TJ9EaWMxrtgI/Qcz
         qhsmO/pCfteuLsDOc2+DXLL/TaTuWO+Cly0yLg+r3xt99yEQyUClqpug2tvyAzLEts+j
         HwbYcg3S/ahg3jN/xXhXduS8EoOliR3U3YuL/LL2qeBVymw64If04e9uLw7pTjz+3cHp
         Kh8iTWEJd5jwxdATnKviZYtiLxsnFQ9dIvDhaoAUcZo83xKIOcURBDUyeOvgRVPSL3ZW
         TVdxqXhOPgdsBOBfwkkznev4Vkr458vJHVYF6MtMrFcrU4b/jhU9YlWm4AMwhaSiR+Ur
         aIaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RisGDNAqNRr1tC6bPpaVQcs2CugcOY6eJUqvf5PNzAQ=;
        b=h9baX4pDNU8okymDkDXIkSk4hUkeag37TW3Vp2K7x65D1jb/+v/h7xgY7QrsnS06yo
         k6AuBhfrbH6zusAC0Wvr1GZi308eBiDmxhFmZce4/6J6ccU5niiaOmwMJp/MCXKqqmkV
         tIiwVavTntsHTguLoWI2RFUZeOO2wCY1HOf3c87aKBuu08AjwjO/Seo3xhPHIDtAH8II
         fSaA4/xPPxe7iU7/8OzF2Jkv3uFH6kmCVyJ6J7IArWLq05xqaeYFYHGpzu+4OTrazSHP
         sSAdaSCyRe6Bi7aKqqrpUuaHC3ZcOBJByCYNYJqPRlAhzBDoChITXepDjVsLeOWeHzLs
         iOJA==
X-Gm-Message-State: ACrzQf3ZwcgQ4bZUKkrEsc1pmI8IPbZu+jfFbd4iNMUusVGUrtQG2kMR
	p+VET6ZKLHCKXJJGJOuDH3nFOFTCld4=
X-Google-Smtp-Source: AMsMyM4yxmrU7FzZ3pc1Hfa7pYbFxiC1fooRaT2PrzSXKMJs8sBJzzO2vXxtoGmS4O41WhND9g/CSw==
X-Received: by 2002:a17:902:8c81:b0:178:1701:cd with SMTP id t1-20020a1709028c8100b00178170100cdmr36401944plo.138.1666649348500;
        Mon, 24 Oct 2022 15:09:08 -0700 (PDT)
Received: from skjolley ([2600:1011:a11b:4d68:293c:e2d4:1418:7020])
        by smtp.gmail.com with ESMTPSA id p25-20020a635b19000000b0044a4025cea1sm174455pgb.90.2022.10.24.15.09.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Oct 2022 15:09:08 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: Enhancements/Bugs closed WW43!
Date: Mon, 24 Oct 2022 15:09:07 -0700
Message-ID: <010001d8e7f5$3d5fc540$b81f4fc0$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0101_01D8E7BA.9103FA80"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: Adjn9TPOA3W8+V7mR4+gw8ChaHpEJg==
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Oct 2022 22:09:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58404

This is a multipart message in MIME format.

------=_NextPart_000_0101_01D8E7BA.9103FA80
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

The below were the owners of enhancements or bugs closed during the last
week!


Who

Count


mark.asselstine@windriver.com

2


randy.macleod@windriver.com

1


Grand Total

3

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_0101_01D8E7BA.9103FA80
Content-Type: text/html;
	boundary="----=_NextPart_000_015E_01D8E202.90CF5B30";
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
style=3D'color:black'>mark.asselstine@windriver.com<o:p></o:p></span></p>=
</td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D43 nowrap valign=3Dbottom =
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
style=3D'color:black'>3<o:p></o:p></span></b></p></td></tr></table><p =
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
------=_NextPart_000_0101_01D8E7BA.9103FA80--


