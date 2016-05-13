Return-Path: <chan@icnexus.com.tw>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC06CE00C1E; Fri, 13 May 2016 00:25:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96698E00BF8
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 00:25:27 -0700 (PDT)
Received: by mail-pf0-f173.google.com with SMTP id y69so39356535pfb.1
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 00:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=icnexus-com-tw.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:mime-version:thread-index
	:content-language;
	bh=gyHhhkH7Gybh4JzB9DV+PhJQDFVMydQJEYacKbTjd/M=;
	b=EY4VBHj6hR2tRD9+NEa32G2+dSeKbXlL0Oq6J853lDnTpVCQkAY03YS0cbRxgMmVad
	GIVisttUU8US/qS1pk7V8Wg6eLHZ+0O0cfscctsN85nhiJzvZBhIqHrq8cn2HVXk5bpn
	a+RXMto/o828gTIcCjnDVXmUMIDxSiQ+qqjqHzdcCWTeSaC46vkKgy9NiBBJ6eLXvYF+
	3cUOZmIYIrhAvR5hgsJizms3wyF0GYcClLK9rVgVvZU74L7+ZmJKj9idOe/c8rvUDBrT
	UN6zPA/OmDOyCkSQ3Wg0uUNXbQS8IOwA6d6W7bXjTkW8y2HMo3VXj57+JALbkKAR271b
	8u6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:thread-index:content-language;
	bh=gyHhhkH7Gybh4JzB9DV+PhJQDFVMydQJEYacKbTjd/M=;
	b=kipK7hQivKOfXYlpLc7K/o4tgrcHTaLiZ1T2J8pq6nLE7zl4QKZ3sY3zRyYvKieVA/
	Swn6gfi+4tXAZo3XwiCTo0yr7Xx54PyWmum+wyzAJKrfPxe4EqSrnV4DOqNYNBA/yUu0
	tms3dwI1nVmtrRPmFivRAkKJy7SNO4aKkzGACBEPVTwDnJwGIxS8Dpto3eZrDrUJdztW
	g5eRAcbXqSigAeCd3hPLPSDlI3NphA4HoxqVf9jrt6mkIRV7OKosTDSz63XSjvheTJP2
	XvvqzZc+32V/+b2MxsYmWDXVn0Is9ee22hr79F68/axdS3gt6e+s2pwj3YSkzlNXzuCs
	hz5A==
X-Gm-Message-State: AOPr4FV8M3Fq4Kkn1rorBSzP/TjG1Ww8aYBP3rRGea0U9IBOFAd7VmfkzwHCtjeTKOgevY+UjZaS5NgpkwLQlIyzbAa7eyH09F4wMsyc73NC3p+tz17PDJU7SHbBeg/8l4J+RWddinDOLL5qGK2R0PPqp1maNDVzS3o5IfsrWhr634Xg+kPmMA==
X-Received: by 10.98.92.66 with SMTP id q63mr20557137pfb.21.1463124326547;
	Fri, 13 May 2016 00:25:26 -0700 (PDT)
Received: from ChandrakanthPC ([203.67.100.136])
	by smtp.gmail.com with ESMTPSA id 28sm24839861pfs.1.2016.05.13.00.25.25
	for <yocto@yoctoproject.org> (version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 13 May 2016 00:25:26 -0700 (PDT)
From: "Chandrakanth Sherkhane \(IC Nexus\)" <chan@icnexus.com.tw>
To: <yocto@yoctoproject.org>
Date: Fri, 13 May 2016 15:25:24 +0800
Message-ID: <005e01d1ace8$9e241510$da6c3f30$@icnexus.com.tw>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdGs5lpx42l6L6x8RpOvLWRZ3eNQqQ==
Subject: help
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
X-List-Received-Date: Fri, 13 May 2016 07:25:30 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_005F_01D1AD2B.AC486680"
Content-Language: en-us

------=_NextPart_000_005F_01D1AD2B.AC486680
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Dear Yocto mailing list,

 

We are IC Nexus Co. Ltd. in Taipei City - Taiwan, a developer and
manufacturer of ARM-based Embedded Single Board Computers and Smart LCD
Display products (on Android / Linux / Yocto Project). We are currently
selling our products with Yocto O.S. to our worldwide customers.

 

Could anyone help to provide more details for,

1. Yocto Virtual Keyboard in French language - is it available now?

2. If not available, when will it be available?

3. Is the Yocto Virtual Keyboard available in any other languages?

 

We will appreciate your quick reply - Thank you very much!

 

Kind Regards,

Chandrakanth Sherkhane

IC Nexus Co. Ltd.

Tel: +886-2-2789-1200 ext. 114

Email: chan@icnexus.com.tw

Web: http://www.icnexus.com.tw

 


------=_NextPart_000_005F_01D1AD2B.AC486680
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Times New Roman","serif";
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
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
style=3D'font-family:"Times New Roman","serif"'>We are IC Nexus Co. Ltd. =
in Taipei City &#8211; Taiwan, a developer and manufacturer of ARM-based =
Embedded Single Board Computers and Smart LCD Display products (on =
Android / Linux / Yocto Project). We are currently selling our products =
with Yocto O.S. to our worldwide customers.<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-family:"Times New =
Roman","serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New Roman","serif"'>Could anyone help to =
provide more details for,<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-family:"Times New =
Roman","serif"'>1. Yocto Virtual Keyboard in French language - is it =
available now?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New Roman","serif"'>2. If not available, =
when will it be available?<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-family:"Times New =
Roman","serif"'>3. Is the Yocto Virtual Keyboard available in any other =
languages?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New =
Roman","serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New Roman","serif"'>We will appreciate your =
quick reply - Thank you very much!<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-family:"Times New =
Roman","serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New Roman","serif"'>Kind =
Regards,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New Roman","serif"'>Chandrakanth =
Sherkhane<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New Roman","serif"'>IC Nexus Co. =
Ltd.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New Roman","serif"'>Tel: +886-2-2789-1200 =
ext. 114<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Times New Roman","serif"'>Email: <a =
href=3D"mailto:chan@icnexus.com.tw">chan@icnexus.com.tw</a><o:p></o:p></s=
pan></p><p class=3DMsoNormal><span style=3D'font-family:"Times New =
Roman","serif"'>Web: <a =
href=3D"http://www.icnexus.com.tw">http://www.icnexus.com.tw</a><o:p></o:=
p></span></p><p class=3DMsoNormal><span style=3D'font-family:"Times New =
Roman","serif"'><o:p>&nbsp;</o:p></span></p></div></body></html>

------=_NextPart_000_005F_01D1AD2B.AC486680--
