Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.52.1601931681745789305
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Oct 2020 14:01:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EWeFPC3Y;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: sjolley.yp.pm@gmail.com)
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1080738C06FF
	for <yocto@yoctoproject.org>; Mon,  5 Oct 2020 14:01:21 -0700 (PDT)
Received: by mail-pg1-f174.google.com with SMTP id i2so3045450pgh.7
        for <yocto@yoctoproject.org>; Mon, 05 Oct 2020 14:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:thread-index
         :content-language;
        bh=5YvbAHhIQmCokMk5+USIeTWyKbKUYfK++4MrnofCLIw=;
        b=EWeFPC3YOkt29HgNocmxpBwD4+6Y4VzGxcnsaA6CZEjoMBt2i7DANZcOHF+haI/vY9
         utHXMKDUfz7dCXJWWWqPNAVr633B5/lFRBZT57bkdiLrPJ2oBjEYkR4wLY5Bx0keH+zD
         sPBgGEgjwk5KTFBZ9qpHsNF4UgpVgpPuhs+vBP/uWsRppFcvsEpyJ1UBMxb+oAD/HPu+
         XljrJ2/Wc41ivKmJTWNHp0RMtGqLHt4ISNPL2oarDe8SB44+ScM5/MplZ1e+1Pnl+w7w
         9fmjfBWfB8al4UfdmoyqPbg02belUv0Zjm2Pekn2+l7EeQjjrrKZYvJCBTnFEa8XXMuD
         Fezg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :thread-index:content-language;
        bh=5YvbAHhIQmCokMk5+USIeTWyKbKUYfK++4MrnofCLIw=;
        b=fCzwyXN0hMR5GZZeNzOb/82923foEyGddC33BWzQonoTSpYsamh02sOaicl+/DR/k1
         UqaizpxLVIFkYXzyWvSVEHXJksEZoTQd80bofNIFbl9tsoIuvnBZLIF4QwdNB2EMZsAD
         pNTATB05lISbEsl7GxVLs9+QzXacIog6MTGeTdhee+LgFGXwCecK8jdKLGB8mFG7poln
         +i2Ye10u2+9FTcILOiIoO96Mqty3s4TsmNEQwL8Z3BtS0TfaXTTxtIl7kEOw3YqWy/7q
         hr8b9BVy4emE2DS6vYV5k5n5frl/iF1wqVNhpKY/IWrZbmx/Ys7pMkDjzUZY/ymeUjhf
         i41A==
X-Gm-Message-State: AOAM5330eM/WeByma+6j3+AB8IHSB536aVjdkcx1fOyluMg1ZhSu8V9H
	5kQNw2oSSlDEqZmNX4Oft3U=
X-Google-Smtp-Source: ABdhPJzhiec3c4RMtyBR6LHXS6t7BOOW1zc29zxY02ifIMnumHfFY/iMqHurdpKaWzXPZ1uVhFieaw==
X-Received: by 2002:a62:f201:0:b029:152:7980:368d with SMTP id m1-20020a62f2010000b02901527980368dmr1616051pfh.45.1601931680690;
        Mon, 05 Oct 2020 14:01:20 -0700 (PDT)
Received: from skjolley (wsip-184-183-149-66.ph.ph.cox.net. [184.183.149.66])
        by smtp.gmail.com with ESMTPSA id r6sm920109pfq.11.2020.10.05.14.01.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2020 14:01:20 -0700 (PDT)
From: "Stephen Jolley" <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>
Subject: Enhancements/Bugs closed WW40
Date: Mon, 5 Oct 2020 14:01:20 -0700
Message-ID: <04d601d69b5a$ad797b30$086c7190$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdabWqRelclBjWPvRk+Fy7wr7g/CiA==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_04D7_01D69B20.011D8960"
Content-Language: en-us

------=_NextPart_000_04D7_01D69B20.011D8960
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

The below were the owners of enhancements or bugs closed during the last
week!


Who

Count


duziheng2010@126.com

2


Qi.Chen@windriver.com

2


bruce.ashfield@gmail.com

1


akuster808@gmail.com

1


randy.macleod@windriver.com

1


timothy.t.orling@intel.com

1


Grand Total

8

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_04D7_01D69B20.011D8960
Content-Type: text/html;
	boundary="----=_NextPart_000_0C7E_01D695C8.0256D050";
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
	{font-family:"MS Sans Serif";}
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
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span style=3D'color:black'>All,<br><br>The below were =
the owners of enhancements or bugs closed during the last =
week!<b><o:p></o:p></b></span></p><table class=3DMsoNormalTable =
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
style=3D'color:black'>duziheng2010@126.com<o:p></o:p></span></p></td><td =
nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Qi.Chen@windriver.com<o:p></o:p></span></p></td><td=
 nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>bruce.ashfield@gmail.com<o:p></o:p></span></p></td>=
<td nowrap valign=3Dbottom =
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
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>timothy.t.orling@intel.com<o:p></o:p></span></p></t=
d><td nowrap valign=3Dbottom =
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
style=3D'color:black'>8<o:p></o:p></span></b></p></td></tr></table><p =
class=3DMsoNormal> Thanks,<o:p></o:p></p><p =
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

------=_NextPart_000_04D7_01D69B20.011D8960--
