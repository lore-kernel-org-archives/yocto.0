Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.5399.1608001652168691688
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Dec 2020 19:07:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HGqrMDUu;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: sjolley.yp.pm@gmail.com)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7A64838C1194
	for <yocto@yoctoproject.org>; Tue, 15 Dec 2020 03:07:31 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id e2so14267735pgi.5
        for <yocto@yoctoproject.org>; Mon, 14 Dec 2020 19:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:thread-index
         :content-language;
        bh=LOv1we7cI7a44z/4EK6QRnN3nYMHnvnmb4had+ugdHs=;
        b=HGqrMDUuDXJsfqUCr40iYgwCyW4RXJz3Xur0nsAZ/Ygb2l0bCczQYkEIkTWTdfpQZB
         2LGL5XX34fqUuot2V+jn9dCVfprnrmFaJcOM/snnSHHZQ3hhEF33VnnmH7vHfBpmc4BA
         Kne2cFqhqych+VGiAEoDWctxg3GJm2fBM4HLgAyJMiyQJ/DrBWuE7SjhZWFfLQfYSPYW
         M05oMjlSk/c29MoCfExCR26LTFRnP0Vq2LZ52d2iLDVAQOR0a8bVptm8/roqOT9EEW21
         JPyONLgvHam/jSCOFCpueCxqbVxSn55chUqI/sB6VKjVZkqW4HNwTMSO3p2kzdyZKZcO
         1p8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :thread-index:content-language;
        bh=LOv1we7cI7a44z/4EK6QRnN3nYMHnvnmb4had+ugdHs=;
        b=Ix4N6B5r8QjVn49WeZxnDG+LTzRRo8lPFVm4U+hRE6+QUimoQcIStvPLBn8C4FaLJA
         fxPSvSDvPwX3OOc/NNz/g8VUa2D8iitfS0HSQQ+iyPE35/O+3xXm4x5TBzVoGBkldTf7
         PDzMgnLe3oeXhExvf0nAe2b6fNACEpS3YOV9VS0cHXto/xgIr2pfDEBHHiFgXaZ4pIRZ
         IPQtAb2ARZ0+aDxpZ6uu+Pi7iK8bMGLjFx1EwJ6SaU9LTwb7emV1e3gW5JoS79EqJK+D
         2tU8Ey6fEh8anq7w2bxzyC8eon03pFJ/89DmM1w/ogMpAoTqPsT+9gTZtdafTtM/WByS
         0C3g==
X-Gm-Message-State: AOAM531JhLS4iQbtGL/uv0EuCQjfMLRqSUPR38K5MEJPnz9126v8IfiG
	V8uwf7fdHERWdsoeqVNDqm8ptW3jZ30=
X-Google-Smtp-Source: ABdhPJxU8mUTQs8LyS2iqZ6JjyaOqeQVZ9o00G6O/MyxsGMRhwWdcb+sMkG6GxRVVgJgWr0u/aqD4Q==
X-Received: by 2002:a63:a516:: with SMTP id n22mr26630151pgf.125.1608001651010;
        Mon, 14 Dec 2020 19:07:31 -0800 (PST)
Received: from skjolley (c-71-59-136-149.hsd1.or.comcast.net. [71.59.136.149])
        by smtp.gmail.com with ESMTPSA id u124sm22511213pfb.171.2020.12.14.19.07.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Dec 2020 19:07:30 -0800 (PST)
From: "Stephen Jolley" <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>
Subject: Current high bug count owners for Yocto Project 3.3
Date: Mon, 14 Dec 2020 19:07:31 -0800
Message-ID: <0ead01d6d28f$6da9f720$48fde560$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIbTFjLcVvzC2BeI0moRKmQusD99Q==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0EAE_01D6D24C.5F8B7210"
Content-Language: en-us

------=_NextPart_000_0EAE_01D6D24C.5F8B7210
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

Below is the list as of top 47 bug owners as of the end of WW50 of who have
open medium or higher bugs and enhancements against YP 3.3.   There are 98
possible work days left until the final release candidates for YP 3.3 needs
to be released.


Who

Count


richard.purdie@linuxfoundation.org

36


ross@burtonini.com

27


david.reyna@windriver.com

21


bluelightning@bluelightning.org

19


bruce.ashfield@gmail.com

14


timothy.t.orling@intel.com

12


JPEWhacker@gmail.com

11


sakib.sajal@windriver.com

11


mark.morton@windriver.com

11


akuster808@gmail.com

10


kai.kang@windriver.com

9


trevor.gamblin@windriver.com

9


Qi.Chen@windriver.com

6


mingli.yu@windriver.com

4


stacy.gaikovaia@windriver.com

4


hongxu.jia@windriver.com

4


idadelm@gmail.com

4


yi.zhao@windriver.com

4


raj.khem@gmail.com

4


randy.macleod@windriver.com

4


alejandro@enedino.org

3


mostthingsweb@gmail.com

3


chee.yang.lee@intel.com

3


saul.wold@windriver.com

2


matthewzmd@posteo.net

2


jeanmarie.lemetayer@gmail.com

2


pokylinux@reliableembeddedsystems.com

2


jon.mason@arm.com

2


ydirson@free.fr

2


anuj.mittal@intel.com

2


jaewon@xilinx.com

2


nicolas.dechesne@linaro.org

2


aehs29@gmail.com

1


apoorvsangal@gmail.com

1


kexin.hao@windriver.com

1


liezhi.yang@windriver.com

1


mhalstead@linuxfoundation.org

1


dl9pf@gmx.de

1


kergoth@gmail.com

1


Martin.Jansa@gmail.com

1


mark.hatle@kernel.crashing.org

1


maxime.roussinbelanger@gmail.com

1


shachar@vdoo.com

1


joe.slater@windriver.com

1


akuster@mvista.com

1


matt.ranostay@konsulko.com

1


kamensky@cisco.com

1


Grand Total

266

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_0EAE_01D6D24C.5F8B7210
Content-Type: text/html;
	boundary="----=_NextPart_000_0BE2_01D6CCCC.FB33A9B0";
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
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'color:black'>All,<br><br>Below is the list as of top 47 bug =
owners as of the end of WW50 of who have open medium or higher bugs and =
enhancements against YP 3.3.&nbsp;&nbsp; There are 98 possible work days =
left until the final release candidates for YP 3.3 needs to be =
released.<b><o:p></o:p></b></span></p><table class=3DMsoNormalTable =
border=3D0 cellspacing=3D0 cellpadding=3D0 width=3D300 =
style=3D'width:224.85pt;margin-left:-.15pt;border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Who<o:p></o:p></span></b></p></td><td width=3D43 =
nowrap valign=3Dbottom style=3D'width:32.0pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Count<o:p></o:p></span></b></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>36<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>ross@burtonini.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>27<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>21<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>bluelightning@bluelightning.org<o:p></o:p></span></=
p></td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>19<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>bruce.ashfield@gmail.com<o:p></o:p></span></p></td>=
<td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>14<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>timothy.t.orling@intel.com<o:p></o:p></span></p></t=
d><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>12<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>JPEWhacker@gmail.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>11<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>sakib.sajal@windriver.com<o:p></o:p></span></p></td=
><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>11<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>mark.morton@windriver.com<o:p></o:p></span></p></td=
><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>11<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>akuster808@gmail.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>10<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>kai.kang@windriver.com<o:p></o:p></span></p></td><t=
d width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>9<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>trevor.gamblin@windriver.com<o:p></o:p></span></p><=
/td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>9<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>Qi.Chen@windriver.com<o:p></o:p></span></p></td><td=
 width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>6<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>mingli.yu@windriver.com<o:p></o:p></span></p></td><=
td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>stacy.gaikovaia@windriver.com<o:p></o:p></span></p>=
</td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>hongxu.jia@windriver.com<o:p></o:p></span></p></td>=
<td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>idadelm@gmail.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>yi.zhao@windriver.com<o:p></o:p></span></p></td><td=
 width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>raj.khem@gmail.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>alejandro@enedino.org<o:p></o:p></span></p></td><td=
 width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>mostthingsweb@gmail.com<o:p></o:p></span></p></td><=
td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>chee.yang.lee@intel.com<o:p></o:p></span></p></td><=
td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>saul.wold@windriver.com<o:p></o:p></span></p></td><=
td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>matthewzmd@posteo.net<o:p></o:p></span></p></td><td=
 width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>jeanmarie.lemetayer@gmail.com<o:p></o:p></span></p>=
</td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>pokylinux@reliableembeddedsystems.com<o:p></o:p></s=
pan></p></td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>jon.mason@arm.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>ydirson@free.fr<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>anuj.mittal@intel.com<o:p></o:p></span></p></td><td=
 width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>jaewon@xilinx.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>nicolas.dechesne@linaro.org<o:p></o:p></span></p></=
td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>aehs29@gmail.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>apoorvsangal@gmail.com<o:p></o:p></span></p></td><t=
d width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>kexin.hao@windriver.com<o:p></o:p></span></p></td><=
td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>liezhi.yang@windriver.com<o:p></o:p></span></p></td=
><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>mhalstead@linuxfoundation.org<o:p></o:p></span></p>=
</td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>dl9pf@gmx.de<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>kergoth@gmail.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>Martin.Jansa@gmail.com<o:p></o:p></span></p></td><t=
d width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>mark.hatle@kernel.crashing.org<o:p></o:p></span></p=
></td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>maxime.roussinbelanger@gmail.com<o:p></o:p></span><=
/p></td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>shachar@vdoo.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>joe.slater@windriver.com<o:p></o:p></span></p></td>=
<td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>akuster@mvista.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>matt.ranostay@konsulko.com<o:p></o:p></span></p></t=
d><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>kamensky@cisco.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Grand Total<o:p></o:p></span></b></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal align=3Dright style=3D'text-align:right'><b><span =
style=3D'color:black'>266<o:p></o:p></span></b></p></td></tr></table><p =
class=3DMsoNormal><span =
style=3D'color:black'>Thanks,</span><o:p></o:p></p><p =
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

------=_NextPart_000_0EAE_01D6D24C.5F8B7210--
