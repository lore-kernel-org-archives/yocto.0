Return-Path: <chan@icnexus.com.tw>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 301B7E00972; Mon, 23 May 2016 22:41:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0003]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03D43E00948
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 22:41:51 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id tb2so3144387pac.2
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 22:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=icnexus-com-tw.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:mime-version:thread-index
	:content-language;
	bh=p0z6sFXr9pSvoGETh0rX3gNfgtwkAA8/wgdAdfqKB6A=;
	b=NlLh16168o/HerA7ivpaKUxDNd1qKBs9F59iyhvz73Yny8D5cAFRJxdniiHewf2Mc6
	C+QTOjw3zYyr1wCWt2CS27iasZCRvPZiy5lL/CLpxUs8BPGvcCFdlBC7Gipp93ChCKZR
	Pcr7uHhoXQNaIGf5fXr1v56xpuZnqdudNoltYvpeXk7ictkkVyvK0quFjuiQINKR3nBT
	rbGCx59sg56OVY8Htus3YGcSIvcALFWUQTkpDbH6K0oAfLYJEVNbtYcngKYw23LxPDu4
	d4suwVGMWO7Udw9+aFOHDjgmsGaMN4Ar7nybv/J8NDYKzLU462auR7+4tzxMLQivoIr1
	xBpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:thread-index:content-language;
	bh=p0z6sFXr9pSvoGETh0rX3gNfgtwkAA8/wgdAdfqKB6A=;
	b=VKr0thozedQ1R8dErE1UfYMKW9QSaS7wLFUALZU0MLSLFbW//lsaoN0S5T/sPa6hJU
	TqJibaztv5BrrwifrpeFJyZ5SgqvQfKJZbt2iNerdVt5qDJWzS5vrkzeoWAd29xLzA07
	P1hUj/f0JaF5DHGWiKM5AS2kETge1IZUTbyELGTBKi2MOx8NMmNkGd7H8oLbpY4XfA6D
	9IH/ZYNGeAEGFciZOasTwHT6y9w5m2umL2dCBhlCBsEWe6VJl9crBZyTiSRSZlq+KfHj
	U6q38ebeeA+Ulpgxdpj7r/Y8bPdm338D/H3MZ3osLw1qBFC7tOmSEJRr+dlkc/glP+4H
	FQ4Q==
X-Gm-Message-State: ALyK8tILZ2NUdYFOmRX8obRj6oogTbpReqk8wpjMZIywc924KVvajDbEIbdvDAy38OhgI7TJ0hMa3/bMIWqSNOE8FvVNosDJXFMpjc5U3QwdGaS0gV2Qbc8l010rLc+NpBgs10wpfIeG4Bb9zsTmfkBt9M7N02TtwXuCEaM8iYhALf9OZYpnRQ==
X-Received: by 10.66.87.198 with SMTP id ba6mr3950226pab.151.1464068511284;
	Mon, 23 May 2016 22:41:51 -0700 (PDT)
Received: from ChandrakanthPC ([203.67.100.136])
	by smtp.gmail.com with ESMTPSA id zj2sm1630670pac.6.2016.05.23.22.41.49
	for <yocto@yoctoproject.org> (version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 23 May 2016 22:41:50 -0700 (PDT)
From: "Chandrakanth Sherkhane \(IC Nexus\)" <chan@icnexus.com.tw>
To: <yocto@yoctoproject.org>
Date: Tue, 24 May 2016 13:41:50 +0800
Message-ID: <00e601d1b57e$f9011700$eb034500$@icnexus.com.tw>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdG1a9bVoxLhcJWKRB+Vw3iLdrsnZg==
Subject: Yocto Virtual Keyboard in French
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 24 May 2016 05:41:59 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00E7_01D1B5C2.07262BC0"
Content-Language: en-us

------=_NextPart_000_00E7_01D1B5C2.07262BC0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Dear Yocto mailing list,

 

The current information I know already is,

1.      Using a patch provided by a good friend of mine, the French Virtual
Keyboard can be built in Yocto and it is OK

2.      Now using a Touch screen with this French Virtual Keyboard is OK

3.      But using a Single Board Computer with Yocto, by connecting a
physical French USB Keyboard, it seems to follow the US layout, and not the
French layout

4.      This is due to the physical Keyboard is governed by the standard
Linux locales

 

Questions:

1.      How can I have a locale for French on my Yocto setup?

2.      How can I activate it by default?

 

Thanks in advance.

 

Best Regards,

Chandrakanth Sherkhane

chan@icnexus.com.tw

 


------=_NextPart_000_00E7_01D1B5C2.07262BC0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:PMingLiU;
	panose-1:2 2 5 0 0 0 0 0 0 0;}
@font-face
	{font-family:PMingLiU;
	panose-1:2 2 5 0 0 0 0 0 0 0;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:PMingLiU;
	panose-1:2 2 5 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle20
	{mso-style-type:personal-compose;
	font-family:"Times New Roman","serif";
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:585724244;
	mso-list-type:hybrid;
	mso-list-template-ids:-763979388 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:1.25in;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:2.75in;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:4.25in;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:1820921583;
	mso-list-type:hybrid;
	mso-list-template-ids:-763979388 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:1.25in;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:2.75in;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:4.25in;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-family:"Times New Roman","serif"'>Dear Yocto mailing =
list,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New =
Roman","serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New Roman","serif"'>The current information =
I know already is,<o:p></o:p></span></p><p class=3DMsoListParagraph =
style=3D'margin-left:.25in;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span style=3D'font-family:"Times New =
Roman","serif"'><span style=3D'mso-list:Ignore'>1.<span =
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'font-family:"Times New =
Roman","serif"'>Using a patch provided by a good friend of mine, the =
French Virtual Keyboard can be built in Yocto and it is =
OK<o:p></o:p></span></p><p class=3DMsoListParagraph =
style=3D'margin-left:.25in;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span style=3D'font-family:"Times New =
Roman","serif"'><span style=3D'mso-list:Ignore'>2.<span =
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'font-family:"Times New =
Roman","serif"'>Now using a Touch screen with this French Virtual =
Keyboard is OK<o:p></o:p></span></p><p class=3DMsoListParagraph =
style=3D'margin-left:.25in;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span style=3D'font-family:"Times New =
Roman","serif"'><span style=3D'mso-list:Ignore'>3.<span =
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'font-family:"Times New =
Roman","serif"'>But using a Single Board Computer with Yocto, by =
connecting a physical French USB Keyboard, it seems to follow the US =
layout, and not the French layout<o:p></o:p></span></p><p =
class=3DMsoListParagraph =
style=3D'margin-left:.25in;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><span style=3D'font-family:"Times New =
Roman","serif"'><span style=3D'mso-list:Ignore'>4.<span =
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'font-family:"Times New =
Roman","serif"'>This is due to the physical Keyboard is governed by the =
standard Linux locales<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New =
Roman","serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New =
Roman","serif"'>Questions:<o:p></o:p></span></p><p =
class=3DMsoListParagraph =
style=3D'margin-left:.25in;text-indent:-.25in;mso-list:l1 level1 =
lfo3'><![if !supportLists]><span style=3D'font-family:"Times New =
Roman","serif"'><span style=3D'mso-list:Ignore'>1.<span =
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'font-family:"Times New =
Roman","serif"'>How can I have a locale for French on my Yocto =
setup?<o:p></o:p></span></p><p class=3DMsoListParagraph =
style=3D'margin-left:.25in;text-indent:-.25in;mso-list:l1 level1 =
lfo3'><![if !supportLists]><span style=3D'font-family:"Times New =
Roman","serif"'><span style=3D'mso-list:Ignore'>2.<span =
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'font-family:"Times New =
Roman","serif"'>How can I activate it by =
default?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New =
Roman","serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New Roman","serif"'>Thanks in =
advance.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New =
Roman","serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New Roman","serif"'>Best =
Regards,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New Roman","serif"'>Chandrakanth =
Sherkhane<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New Roman","serif"'><a =
href=3D"mailto:chan@icnexus.com.tw">chan@icnexus.com.tw</a><o:p></o:p></s=
pan></p><p class=3DMsoNormal><span style=3D'font-family:"Times New =
Roman","serif"'><o:p>&nbsp;</o:p></span></p></div></body></html>

------=_NextPart_000_00E7_01D1B5C2.07262BC0--
