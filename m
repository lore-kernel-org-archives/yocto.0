Return-Path: <sjolley.yp.pm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32F55E00D12; Mon,  4 Mar 2019 08:01:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sjolley.yp.pm[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 531F0E00CE8
	for <yocto@yoctoproject.org>; Mon,  4 Mar 2019 08:01:04 -0800 (PST)
Received: by mail-io1-f53.google.com with SMTP id x4so4346327ion.2
	for <yocto@yoctoproject.org>; Mon, 04 Mar 2019 08:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version:thread-index
	:content-language;
	bh=ausEriPf8QkEO0Mh8q0Fmb8YymKrT1Lb5X3N3TUKpUc=;
	b=VOdBOJDMaXMd8ZmZo3Pn9UGo6aNCTiq6n7pVxiatLIN/y7JjpV9OXeuGYPSHQmRZas
	cQq1W2lZFdtepYejPCiiJQRXOouZRjhASolj0oho1tr/+BPWxo+z6N8YYlHLlZpbRdiP
	3/jafPUIpseNEi28l0B/AiiZHkd8qelKF2SgDgz3McVPt0eI0CYSwi10ZQ7j8uRrXM6A
	UoK4Iy7AW/x6EUy20NvszRKRpfRJBxK2ZWFaslnRbTdzUWE4qGlvk6A2oIhvpf/8DMyr
	b5VJbN2PqSLtH5ECkoJGB+3nLcj8TExPyKmepHtz3HZdIXxtkBfENgPHixdyg8VHih84
	Xeig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:thread-index:content-language;
	bh=ausEriPf8QkEO0Mh8q0Fmb8YymKrT1Lb5X3N3TUKpUc=;
	b=AmZOeppe+J3JFdVh66QE49MtoLiFqc6ymI0Ru+yOmOn9s/2oi1IiBiRMClNU3bbJgU
	JozpNB9yo44GQRt1cgaaUaV4MI1H6Eg6XCAwR9+Deqq+84tzxRZ9dfzYJersGp05ja2a
	oZ0J1F8nFEXmUxgGFA5SemMpUBITjODapVZyKFBZQwWJKVyh2nKzV1p8NGODbLSeKS/P
	A/RifE2y2vLyiQJt3t91elinCHyfoy94/ZOCiYt7rXeJDumq9e9wOYDXanyulJCngKB8
	wkcrPohF+RZVDWfN/6dpYlOUWYIhvQos4Ezdn+QSjv4ZtDf7h/vn0ZZyzYlhcPHl0OXk
	PXdQ==
X-Gm-Message-State: APjAAAVw7SfmGaZwZ3ZRqjlwoLpxYADIiHNBVQaxx5C3krw6pM4rdl5E
	SLC4W5QwvO0yPtQF9Jk+z8A=
X-Google-Smtp-Source: APXvYqyGxz2OWmBr1b5IonFXnk7dnGox+9ZI2VakW87D21gsPbj6yUbcXs3ESD1DxVVehFFvGpDXJA==
X-Received: by 2002:a6b:b644:: with SMTP id g65mr9884673iof.198.1551715263595; 
	Mon, 04 Mar 2019 08:01:03 -0800 (PST)
Received: from sjolley ([209.180.132.195]) by smtp.gmail.com with ESMTPSA id
	q12sm2387989ioi.54.2019.03.04.08.01.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Mar 2019 08:01:02 -0800 (PST)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>,
	<openembedded-core@lists.openembedded.org>
Date: Mon, 4 Mar 2019 08:01:01 -0800
Message-ID: <0e9401d4d2a3$777c15f0$667441d0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKPJwRP02FxnUPL4wPLXg2sHPC0LA==
Subject: Yocto Project Unassigned Bugs - Help Needed
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
X-List-Received-Date: Mon, 04 Mar 2019 16:01:06 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0E95_01D4D260.69597230"
Content-Language: en-us

------=_NextPart_000_0E95_01D4D260.69597230
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

 

The triage team meets weekly and does its best to handle the bugs reported
into the Bugzilla. The number of people attending that meeting has fallen,
as have the number of people available to help fix bugs. One of the things
we hear users report is they don't know how to help. We (the triage team)
are therefore going to start reporting out the currently 296 unassigned
bugs.

 

We're hoping people may be able to spare some time now and again to help out
with these.

 

Bugs are split into two types, "true bugs" where things don't work as they
should and "enhancements" which are features we'd want to add to the system.

 

There are also roughly four different "priority" classes right now, "2.7",
"2.8", "2.99" and "Future", the more pressing/urgent issues being in "2.7"
and then "2.8".

 

Please review this link and if a bug is something you would be able to help
with either take ownership of the bug, or send me
(Stephen.k.jolley@intel.com <mailto:Stephen.k.jolley@intel.com> ) an e-mail
with the bug number you would like and I will assign it to you (please make
sure you have a Bugzilla account).

 

The list is at:
https://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_Bugs

 

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 

 


------=_NextPart_000_0E95_01D4D260.69597230
Content-Type: text/html;
	boundary="----=_NextPart_000_0174_01D4CCFE.CBE551B0";
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:p=3D"urn:schemas-microsoft-com:office:powerpoint" =
xmlns:a=3D"urn:schemas-microsoft-com:office:access" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" =
xmlns:s=3D"uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" =
xmlns:rs=3D"urn:schemas-microsoft-com:rowset" xmlns:z=3D"#RowsetSchema" =
xmlns:b=3D"urn:schemas-microsoft-com:office:publisher" =
xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadsheet" =
xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" =
xmlns:odc=3D"urn:schemas-microsoft-com:office:odc" =
xmlns:oa=3D"urn:schemas-microsoft-com:office:activation" =
xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" =
xmlns:rtc=3D"http://microsoft.com/officenet/conferencing" =
xmlns:D=3D"DAV:" xmlns:Repl=3D"http://schemas.microsoft.com/repl/" =
xmlns:mt=3D"http://schemas.microsoft.com/sharepoint/soap/meetings/" =
xmlns:x2=3D"http://schemas.microsoft.com/office/excel/2003/xml" =
xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" =
xmlns:ois=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" =
xmlns:dir=3D"http://schemas.microsoft.com/sharepoint/soap/directory/" =
xmlns:ds=3D"http://www.w3.org/2000/09/xmldsig#" =
xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint/dsp" =
xmlns:udc=3D"http://schemas.microsoft.com/data/udc" =
xmlns:xsd=3D"http://www.w3.org/2001/XMLSchema" =
xmlns:sub=3D"http://schemas.microsoft.com/sharepoint/soap/2002/1/alerts/"=
 xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#" =
xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" =
xmlns:sps=3D"http://schemas.microsoft.com/sharepoint/soap/" =
xmlns:xsi=3D"http://www.w3.org/2001/XMLSchema-instance" =
xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/soap" =
xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" =
xmlns:udcp2p=3D"http://schemas.microsoft.com/data/udc/parttopart" =
xmlns:wf=3D"http://schemas.microsoft.com/sharepoint/soap/workflow/" =
xmlns:dsss=3D"http://schemas.microsoft.com/office/2006/digsig-setup" =
xmlns:dssi=3D"http://schemas.microsoft.com/office/2006/digsig" =
xmlns:mdssi=3D"http://schemas.openxmlformats.org/package/2006/digital-sig=
nature" =
xmlns:mver=3D"http://schemas.openxmlformats.org/markup-compatibility/2006=
" xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns:mrels=3D"http://schemas.openxmlformats.org/package/2006/relationshi=
ps" xmlns:spwp=3D"http://microsoft.com/sharepoint/webpartpages" =
xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/2006/types"=
 =
xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/2006/messag=
es" =
xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/SlideLibrary/=
" =
xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortalServer/Pub=
lishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" =
xmlns:st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;}
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
class=3DMsoPlainText>All,<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>The =
triage team meets weekly and does its best to handle the bugs reported =
into the Bugzilla. The number of people attending that meeting has =
fallen, as have the number of people available to help fix bugs. One of =
the things we hear users report is they don't know how to help. We (the =
triage team) are therefore going to start reporting out the currently =
296 unassigned bugs.<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>We're =
hoping people may be able to spare some time now and again to help out =
with these.<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>Bugs =
are split into two types, &quot;true bugs&quot; where things don't work =
as they should and &quot;enhancements&quot; which are features we'd want =
to add to the system.<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>There =
are also roughly four different &quot;priority&quot; classes right now, =
&#8220;2.7&#8221;, &#8220;2.8&#8221;, &quot;2.99&quot; and =
&quot;Future&quot;, the more pressing/urgent issues being in =
&quot;2.7&quot; and then &#8220;2.8&#8221;.<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>Please =
review this link and if a bug is something you would be able to help =
with either take ownership of the bug, or send me (<a =
href=3D"mailto:Stephen.k.jolley@intel.com">Stephen.k.jolley@intel.com</a>=
) an e-mail with the bug number you would like and I will assign it to =
you (please make sure you have a Bugzilla account).<o:p></o:p></p><p =
class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>The =
list is at: <a =
href=3D"https://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_Bugs">ht=
tps://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_Bugs</a><o:p></o:p=
></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
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
Serif",serif;color:teal'>&nbsp;&nbsp;&nbsp; </span><b><span =
style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Cell</span></b><span =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif",serif;color:teal'>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'font-size:9.0pt;font-family:"MS Sans Serif",serif'>(208) =
244-4460<span style=3D'color:black'><o:p></o:p></span></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings'>* </span><b><span =
lang=3DFR style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Email</span></b><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif",serif;color:teal'>:</span><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif",serif'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;<a =
href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a><o:p><=
/o:p></span></p><p class=3DMsoNormal><span lang=3DFR =
style=3D'font-size:12.0pt;font-family:"Arial",sans-serif'><o:p>&nbsp;</o:=
p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_0E95_01D4D260.69597230--
