Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 975ECE00405; Mon, 30 Jan 2017 07:37:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.131 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0150]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C5C4E0030B
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 07:37:32 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue005
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0Mgrp6-1cu8cN1z1c-00M4Q5
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 16:37:31 +0100
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Mon, 30 Jan 2017 15:37:30 -0000
Organization: LN Systems Limited
Message-ID: <005301d27b0e$c532b900$4f982b00$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdJ7DazY7wHv1lVCSBGip25qJDIG4g==
X-Provags-ID: V03:K0:TiLZgxinVHarLYNVfZNY+OJJKJfhUzoCcbwe1WHCtXJE/e8n0iF
	a5cPv7sS+QUsJ/8t+67wD09b5YlmGSybOxNaDU5MeBqyN1zYQ75e2DcOcKdzLJvKGEpMz9x
	M03CJDRmLFVhzKetq6JkzaWcS/DtgZFIMmM55oX1ctgmi8S9TFkFl36Ac/vRfauniJdEKVg
	MyaFubT3WRsP7L9iS6gkw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:X8ldzoK8MWY=:gaUT62lptYrCYCxx4Oj6Pt
	DYDiIRPYuLoSMJ1J9xv+LLlW0nj9loc/SsS1FDWN0dXtxytKzAxj+PVo9eXTZHxLCelUbkEBm
	Vb3YcIqw3qsIOswDT2OJFyxcG4IY4kaNC/pWfjktfNMpWCTZpDT1BAVwdKMqDUDcbIdeM7nFw
	3zL5PPZwzDEXAledHOTIcg8CKrVM8j1OEwIhoF8AB3WzSAfLEfJ/0mlG+GS7MY0K0pqcC3iRq
	5P87K5wMTMyT//1qFN2HgRMcL5dVIeeeKMk5thnJJ5fgi4o2UhxgVLaXSWESep3kHrg0HoCM1
	iORazIjSZr9ffH1afVDGks/9F/Adw9uJSPaB+cfLbJuhIo3T4KixxNuZzPex/3NDoR2ciYI2w
	26IfVTbULawkN4qDtPv6GU26TfA+69pMVfgkBTN22uAVeZA9djd2wZZ9S4tnhCbXxHWDKIBAy
	Ag0VIua6cnodHDiSxbgvdFvmkn4YjjpfJFgmtysj99lR3MG+V4kzVKC+DKEKCiJuxGX0CV/7T
	bRB4SL9ppXFqOmUA0GGFMCZbEGl/5loL/0JcxFririF/NZJlqYYW5CqxcdWofcUi+AFqq9yAr
	/awD1m9DbhxjGVYidfeDd4NI3xob8eieyk1njXdRIfa/d88tLx8c0HYOfraiXqfqS9+d1e2jo
	pkJg+9PR9TdagwfsIy/WHlqdG7E/EtUFxMpkvkul2ZA/9XTfqB1Uxfcy3/JOqTrcRwyIRzrct
	MrX7FLm/zU0tZs5k
Subject: Making header of out-of-tree module available
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 30 Jan 2017 15:37:34 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0054_01D27B0E.C53502F0"
Content-Language: en-gb

------=_NextPart_000_0054_01D27B0E.C53502F0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have a recipe which builds my own (out-of-tree) driver module - this
packages/installs the module fine. (It's recipe has "inherit module"). 

Now I'm writing a recipe to build a library which uses the driver. What's
needed to get the driver's header file 'exported' so that it can be included
by the library's recipe?

Thanks

 


------=_NextPart_000_0054_01D27B0E.C53502F0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>I have a recipe which builds my own (out-of-tree) =
driver module &#8211; this packages/installs the module fine. =
(It&#8217;s recipe has &#8220;inherit module&#8221;). <o:p></o:p></p><p =
class=3DMsoNormal>Now I&#8217;m writing a recipe to build a library =
which uses the driver. What&#8217;s needed to get the driver&#8217;s =
header file &#8216;exported&#8217; so that it can be included by the =
library&#8217;s recipe?<o:p></o:p></p><p =
class=3DMsoNormal>Thanks<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_0054_01D27B0E.C53502F0--
