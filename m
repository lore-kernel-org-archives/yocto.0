Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.9139.1596499883713329828
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Aug 2020 17:11:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bwnlr79w;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: sjolley.yp.pm@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92CE1E01F7D; Mon,  3 Aug 2020 17:11:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (sjolley.yp.pm[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74987E01F44
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2020 17:11:22 -0700 (PDT)
Received: by mail-pf1-f174.google.com with SMTP id m8so12361007pfh.3
        for <yocto@yoctoproject.org>; Mon, 03 Aug 2020 17:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:thread-index
         :content-language;
        bh=oVDja7NJzYtzdpNAd2RuXguPnjR2QI6/WqfXbUCY0T8=;
        b=bwnlr79wYBE21HTIWTzT7HZeP6wSdao2cZPpjPToffGjAftU02RucLiPctufw6wefD
         V4Fx1JbjTkUrWRi4yXFyRxLF+KZjPPmVVKE3+K7KBJt6QtyS7/kK3fNgWulVHUMZwU16
         1D6JCx+f/QICe8uvbG+TPwcC3caluex9hH2CalLvh1YCQ1BVd0/p/VCT0OO4YtY01RW4
         BUb4g86GfNdvIZ5M6sObgOJpMol2ljWMJaLRJd61A2EkQcHbA+AbsxY7zBZpYeJoZdIf
         OqbK5Mk9ZtC6Z+FmArCzaYYNRVxkdOvS9GALTYQCQEjcgr3+FhmuM2l2UEoRwGZ98JVu
         gYWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :thread-index:content-language;
        bh=oVDja7NJzYtzdpNAd2RuXguPnjR2QI6/WqfXbUCY0T8=;
        b=haNTZn618dfOIRaeSPxylWmBlJDO/UEYDXwlJ/90MRhhFEsWLPAjcIZOvYascYGMr9
         zIG4ky8pY2A8z+ki9UEpyEdL3qVkjGSF7GAiwu6PvwKWMnFu0628hlyKUtZbP7TdBNqA
         43aHb1rD5N22qy+Veugz0moDJqMIH+j72Qtb9iLFJDpJ6tCNc2yjRSWZFyRRts8feciA
         gnRJFheTT59NZN+V+eIb7N8KxJf/zU3CH3Add9RzjKxD1s3TPdqEXC7LEPnlZ2X/qU4N
         vuGTy+h0goNDGQ0NI/5itloqhxtQfra9l6+7D7HaYD1XWnorBDsrC5ITKkruZ6yuUSJD
         7dWg==
X-Gm-Message-State: AOAM531ZIA0FEmdVSm0SjvLUkjmWpMh9ETAuiS5rHpZEH/YQE91QdxV+
	OOIACKHiBJN2LKBD+dAGLyM=
X-Google-Smtp-Source: ABdhPJwKjxyEhC2iM8Gv+LrfMd7er1817mZBwEDKSuKXhCXMeShhwR4t8Lh9EIY0QxTXzne/aAj8Dw==
X-Received: by 2002:a65:52c3:: with SMTP id z3mr7241084pgp.417.1596499881897;
        Mon, 03 Aug 2020 17:11:21 -0700 (PDT)
Received: from skjolley (c-71-59-136-149.hsd1.or.comcast.net. [71.59.136.149])
        by smtp.gmail.com with ESMTPSA id kx3sm558396pjb.32.2020.08.03.17.11.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Aug 2020 17:11:21 -0700 (PDT)
From: "Stephen Jolley" <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>
Subject: Current high bug count owners for Yocto Project 3.2
Date: Mon, 3 Aug 2020 17:11:21 -0700
Message-ID: <001801d669f3$c88afe50$59a0faf0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKCuS5WXCQIN1AfnfoYcGmn6GUx4Q==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0019_01D669B9.1C2DFB10"
Content-Language: en-us

------=_NextPart_000_0019_01D669B9.1C2DFB10
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

Below is the list as of top 31 bug owners as of the end of WW31 of who have
open medium or higher bugs and enhancements against YP 3.2.   There are 62
possible work days left until the final release candidates for YP 3.2 needs
to be released.


Who

Count


david.reyna@windriver.com

10


ross@burtonini.com

7


bluelightning@bluelightning.org

7


richard.purdie@linuxfoundation.org

7


mark.morton@windriver.com

7


michael@yoctoproject.org

5


Qi.Chen@windriver.com

5


raj.khem@gmail.com

3


chee.yang.lee@intel.com

2


rpjday@crashcourse.ca

2


trevor.gamblin@windriver.com

2


yi.zhao@windriver.com

2


randy.macleod@windriver.com

2


timothy.t.orling@intel.com

2


sakib.sajal@windriver.com

2


JPEWhacker@gmail.com

2


kai.kang@windriver.com

2


kergoth@gmail.com

2


matthew.zeng@windriver.com

1


mark.hatle@kernel.crashing.org

1


kai.ruhnau@live.com

1


maxime.roussinbelanger@gmail.com

1


mostthingsweb@gmail.com

1


liu.ming50@gmail.com

1


anuj.mittal@intel.com

1


hongxu.jia@windriver.com

1


jaewon@xilinx.com

1


jpuhlman@mvista.com

1


matt.ranostay@konsulko.com

1


bruce.ashfield@gmail.com

1


changqing.li@windriver.com

1


Grand Total

84

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_0019_01D669B9.1C2DFB10
Content-Type: text/html;
	boundary="----=_NextPart_000_10D7_01D66435.5AD3E9D0";
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
	margin-bottom:.0001pt;
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
class=3DMsoNormal><span style=3D'color:black'>All,<br><br>Below is the =
list as of top 31 bug owners as of the end of WW31 of who have open =
medium or higher bugs and enhancements against YP 3.2.&nbsp;&nbsp; There =
are 62 possible work days left until the final release candidates for YP =
3.2 needs to be released.</span><b><span =
style=3D'color:black'><o:p></o:p></span></b></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 =
width=3D293 =
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
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>10<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>ross@burtonini.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>7<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>bluelightning@bluelightning.org<o:p></o:p></span></=
p></td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>7<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>7<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>mark.morton@windriver.com<o:p></o:p></span></p></td=
><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>7<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>michael@yoctoproject.org<o:p></o:p></span></p></td>=
<td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>5<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>Qi.Chen@windriver.com<o:p></o:p></span></p></td><td=
 width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>5<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>raj.khem@gmail.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>chee.yang.lee@intel.com<o:p></o:p></span></p></td><=
td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>rpjday@crashcourse.ca<o:p></o:p></span></p></td><td=
 width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>trevor.gamblin@windriver.com<o:p></o:p></span></p><=
/td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>yi.zhao@windriver.com<o:p></o:p></span></p></td><td=
 width=3D43 nowrap valign=3Dbottom =
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
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>timothy.t.orling@intel.com<o:p></o:p></span></p></t=
d><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>sakib.sajal@windriver.com<o:p></o:p></span></p></td=
><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>JPEWhacker@gmail.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>kai.kang@windriver.com<o:p></o:p></span></p></td><t=
d width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>kergoth@gmail.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>matthew.zeng@windriver.com<o:p></o:p></span></p></t=
d><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>mark.hatle@kernel.crashing.org<o:p></o:p></span></p=
></td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>kai.ruhnau@live.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>maxime.roussinbelanger@gmail.com<o:p></o:p></span><=
/p></td><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>mostthingsweb@gmail.com<o:p></o:p></span></p></td><=
td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>liu.ming50@gmail.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>anuj.mittal@intel.com<o:p></o:p></span></p></td><td=
 width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>hongxu.jia@windriver.com<o:p></o:p></span></p></td>=
<td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>jaewon@xilinx.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>jpuhlman@mvista.com<o:p></o:p></span></p></td><td =
width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>matt.ranostay@konsulko.com<o:p></o:p></span></p></t=
d><td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>bruce.ashfield@gmail.com<o:p></o:p></span></p></td>=
<td width=3D43 nowrap valign=3Dbottom =
style=3D'width:32.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>changqing.li@windriver.com<o:p></o:p></span></p></t=
d><td width=3D43 nowrap valign=3Dbottom =
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
style=3D'color:black'>84<o:p></o:p></span></b></p></td></tr></table><p =
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

------=_NextPart_000_0019_01D669B9.1C2DFB10--
