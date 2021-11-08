Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B18BC433F5
	for <webhook@archiver.kernel.org>; Mon,  8 Nov 2021 23:31:06 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web10.4693.1636414265290709776
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Nov 2021 15:31:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=S3GpwTH5;
 spf=pass (domain: gmail.com, ip: 209.85.214.172,
 mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id o14so17452762plg.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 08 Nov 2021 15:31:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version:thread-index
         :content-language;
        bh=atwbyQ3xET6kJCHBSmC5Y5nPViKNtpzM6wco2JzCUg8=;
        b=S3GpwTH5CGR1nafRKy3sTADVPXoWnD1tNgVPQy8UOSeDx6XV1RevLWQ9ECTQrEj5Ge
         fAf9qa+3hlx8/MQhlWaiTWnp5XYCOtXrTppgse92TjGN+hT1jBzE+KnAH6r7GX5B4/3z
         P8rxkOct8YaRWwME5OBx4De24oFo/QuUM2W1doHITCZP9+79qcEVPdD51GOhQNnM5gyP
         ohWaT+VNKAUKji+v1u1YbaTpS/mIRPkwWhwwlckyMLBGjH/Vj3Uch0NgbAHJu3PzQqP7
         bQZb6K983Bd/NbWPOH2W5GHcuECzOYafQTOyMQVmscuq/NLCPHXbxOhvHIBJockI9w/F
         k26g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :thread-index:content-language;
        bh=atwbyQ3xET6kJCHBSmC5Y5nPViKNtpzM6wco2JzCUg8=;
        b=3hvxRXnx/ouLB/DammORCN6fxQhOYbp20ITY9WaNE7hw4aN1zvMvfca350AO0wfSTu
         VnPL19HKqXG4S8XHQ2bUgEjLH4RwcllMWWMGORkxfAojSjvHs/PXUfid8aRbDpLAq86y
         dqyLc3UuFmxy4qxHRxiCb19xLHOYgf7whuiLAmdgQheJ3JHA/KYJuuPGAT7hDHXMNUg/
         pG3AU74NPq8t5O0jTuHLXt02y155qkvL0L2+d0u4G/5e5xjntUeVUPi3nWVA1e2+/tF3
         XqZs03vWDt9v4oghAmatBDNtPCYejB6iFaOqm8+jP4adjBbcA0LlV+TCzN2M7BZWeLLH
         hnkA==
X-Gm-Message-State: AOAM531fyQ9jkAqp376OH1MSRCAUZ1F5NhsQ1wOheDchPU3E2AFHqxMs
	ZqgzSAek9Q4D6Uh7VW8ITiY=
X-Google-Smtp-Source: 
 ABdhPJzheoiZbD24TprVyB5uiFcribcW0cawA+QOCBY7QrcoP/J/uSfe+o9qdZGUn0EhIsLxUhrZdg==
X-Received: by 2002:a17:90b:4f4d:: with SMTP id
 pj13mr2324678pjb.4.1636414264698;
        Mon, 08 Nov 2021 15:31:04 -0800 (PST)
Received: from skjolley ([2600:8800:1d92:f800:6061:c20:a279:87b6])
        by smtp.gmail.com with ESMTPSA id
 n126sm16691916pfn.6.2021.11.08.15.31.03
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Nov 2021 15:31:04 -0800 (PST)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: Current high bug count owners for Yocto Project 3.5
Date: Mon, 8 Nov 2021 16:31:04 -0700
Message-ID: <00be01d7d4f8$b2ef15b0$18cd4110$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00BF_01D7D4BE.0695E300"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGkyfqBp8JkblZbXdWyIR2dBh4VAg==
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Nov 2021 23:31:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55281

This is a multipart message in MIME format.

------=_NextPart_000_00BF_01D7D4BE.0695E300
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

Below is the list as of top 50 bug owners as of the end of WW45 of who have
open medium or higher bugs and enhancements against YP 3.5.   There are 118
possible work days left until the final release candidates for YP 3.5 needs
to be released.


Who

Count


ross@burtonini.com

37


michael.opdenacker@bootlin.com

35


david.reyna@windriver.com

22


randy.macleod@windriver.com

19


bruce.ashfield@gmail.com

17


trevor.gamblin@windriver.com

15


timothy.t.orling@intel.com

14


JPEWhacker@gmail.com

12


sakib.sajal@windriver.com

11


richard.purdie@linuxfoundation.org

8


kai.kang@windriver.com

8


mhalstead@linuxfoundation.org

7


bluelightning@bluelightning.org

6


kiran.surendran@windriver.com

5


Qi.Chen@windriver.com

5


hongxu.jia@windriver.com

4


saul.wold@windriver.com

4


jon.mason@arm.com

3


chee.yang.lee@intel.com

3


pgowda.cve@gmail.com

3


anuj.mittal@intel.com

2


alejandro@enedino.org

2


mingli.yu@windriver.com

2


pokylinux@reliableembeddedsystems.com

2


mshah@mvista.com

2


mister_rs@web.de

1


vinay.m.engg@gmail.com

1


kexin.hao@windriver.com

1


Martin.Jansa@gmail.com

1


nicolas.dechesne@linaro.org

1


elberger@amazon.com

1


john.kaldas.enpj@gmail.com

1


akuster808@gmail.com

1


thomas.perrot@bootlin.com

1


raj.khem@gmail.com

1


jaewon@xilinx.com

1


open.source@oleksandr-kravchuk.com

1


shachar@vdoo.com

1


ydirson@free.fr

1


yoctoproject@cookiesoft.de

1


yi.zhao@windriver.com

1


alexandre.belloni@bootlin.com

1


limon.anibal@gmail.com

1


yf3yu@uwaterloo.ca

1


steve@sakoman.com

1


jay.shen.teoh@intel.com

1


aehs29@gmail.com

1


matthewzmd@posteo.net

1


mark.hatle@kernel.crashing.org

1


TicoTimo@gmail.com

1


angolini@gmail.com

1

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_00BF_01D7D4BE.0695E300
Content-Type: text/html;
	boundary="----=_NextPart_000_0F5B_01D7CF26.11C9BE60";
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
style=3D'color:black'>All,<br><br>Below is the list as of top 50 bug =
owners as of the end of WW45 of who have open medium or higher bugs and =
enhancements against YP 3.5.&nbsp;&nbsp; There are 118 possible work =
days left until the final release candidates for YP 3.5 needs to be =
released.<o:p></o:p></span></p><table class=3DMsoNormalTable border=3D0 =
cellspacing=3D0 cellpadding=3D0 width=3D300 =
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
style=3D'color:black'>ross@burtonini.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>37<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>michael.opdenacker@bootlin.com<o:p></o:p></span></p=
></td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>35<o:p></o:p></span></p></td></tr><tr =
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
style=3D'color:black'>22<o:p></o:p></span></p></td></tr><tr =
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
style=3D'color:black'>17<o:p></o:p></span></p></td></tr><tr =
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
style=3D'color:black'>15<o:p></o:p></span></p></td></tr><tr =
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
style=3D'color:black'>14<o:p></o:p></span></p></td></tr><tr =
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
style=3D'color:black'>12<o:p></o:p></span></p></td></tr><tr =
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
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>8<o:p></o:p></span></p></td></tr><tr =
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
style=3D'color:black'>8<o:p></o:p></span></p></td></tr><tr =
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
style=3D'color:black'>7<o:p></o:p></span></p></td></tr><tr =
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
style=3D'color:black'>6<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>kiran.surendran@windriver.com<o:p></o:p></span></p>=
</td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>5<o:p></o:p></span></p></td></tr><tr =
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
style=3D'color:black'>5<o:p></o:p></span></p></td></tr><tr =
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
style=3D'color:black'>saul.wold@windriver.com<o:p></o:p></span></p></td><=
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
style=3D'color:black'>jon.mason@arm.com<o:p></o:p></span></p></td><td =
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
style=3D'color:black'>pgowda.cve@gmail.com<o:p></o:p></span></p></td><td =
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
style=3D'color:black'>alejandro@enedino.org<o:p></o:p></span></p></td><td=
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
style=3D'color:black'>mingli.yu@windriver.com<o:p></o:p></span></p></td><=
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
style=3D'color:black'>mshah@mvista.com<o:p></o:p></span></p></td><td =
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
style=3D'color:black'>mister_rs@web.de<o:p></o:p></span></p></td><td =
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
style=3D'color:black'>vinay.m.engg@gmail.com<o:p></o:p></span></p></td><t=
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
style=3D'color:black'>nicolas.dechesne@linaro.org<o:p></o:p></span></p></=
td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D257 nowrap valign=3Dbottom =
style=3D'width:192.85pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>elberger@amazon.com<o:p></o:p></span></p></td><td =
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
style=3D'color:black'>john.kaldas.enpj@gmail.com<o:p></o:p></span></p></t=
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
style=3D'color:black'>akuster808@gmail.com<o:p></o:p></span></p></td><td =
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
style=3D'color:black'>thomas.perrot@bootlin.com<o:p></o:p></span></p></td=
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
style=3D'color:black'>raj.khem@gmail.com<o:p></o:p></span></p></td><td =
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
style=3D'color:black'>jaewon@xilinx.com<o:p></o:p></span></p></td><td =
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
style=3D'color:black'>open.source@oleksandr-kravchuk.com<o:p></o:p></span=
></p></td><td width=3D43 nowrap valign=3Dbottom =
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
style=3D'color:black'>ydirson@free.fr<o:p></o:p></span></p></td><td =
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
style=3D'color:black'>yoctoproject@cookiesoft.de<o:p></o:p></span></p></t=
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
style=3D'color:black'>yi.zhao@windriver.com<o:p></o:p></span></p></td><td=
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
style=3D'color:black'>alexandre.belloni@bootlin.com<o:p></o:p></span></p>=
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
style=3D'color:black'>limon.anibal@gmail.com<o:p></o:p></span></p></td><t=
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
style=3D'color:black'>yf3yu@uwaterloo.ca<o:p></o:p></span></p></td><td =
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
style=3D'color:black'>steve@sakoman.com<o:p></o:p></span></p></td><td =
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
style=3D'color:black'>jay.shen.teoh@intel.com<o:p></o:p></span></p></td><=
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
style=3D'color:black'>matthewzmd@posteo.net<o:p></o:p></span></p></td><td=
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
style=3D'color:black'>TicoTimo@gmail.com<o:p></o:p></span></p></td><td =
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
style=3D'color:black'>angolini@gmail.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr></table><p =
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
------=_NextPart_000_00BF_01D7D4BE.0695E300--


