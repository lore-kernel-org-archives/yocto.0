Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 537D3E00AF2; Mon, 17 Oct 2016 05:27:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=BAYES_50,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.135 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.5000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.135 listed in dnsbl.sorbs.net]
X-Greylist: delayed 309 seconds by postgrey-1.32 at yocto-www;
	Mon, 17 Oct 2016 05:27:55 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7746E00CE0
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 05:27:55 -0700 (PDT)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de
	(mreue004) with ESMTPSA (Nemesis) id 0MSmkD-1cLeiG0kmD-00RqR9 for
	<yocto@yoctoproject.org>; Mon, 17 Oct 2016 14:22:45 +0200
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Mon, 17 Oct 2016 13:22:44 +0100
Organization: LN Systems Limited
Message-ID: <071401d22871$2a4535c0$7ecfa140$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdIocMbw6VkpsoRIT/SqGVMwLCBGzA==
X-Provags-ID: V03:K0:jg1NP6aFamosM/J39gcd8260yRDVE7nJBCbo6T4mNB0E9Y+EgTC
	jkiMg0C6OsJhUT5/RiNAsKsqbd3x/MlJ9asQHMhoU7NKynX81f1dJJV3mH4AVwA9DRAny65
	ROnmb1nM7BPZBUIQerQpN+/xLXY5GLBrZsFIT6iKwZOmEhAN9xH8WRFzx667XGTz+xzWyoE
	+Di0iGvpVQsnyV5w96q4A==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Mq8bo6XolOA=:TgPLXhMMNVnK+QZj8s4nj+
	wFPp9wV9Oqf7yTrQQyJi2We1nGQFkI1IYcDbY57tBF77ciK4flmTdTWtAVn1CyWdy7+h4MRpE
	9TgX+EXvBghUVxFlEfLZWbzPJmDbHnIDjRXjtXTIULhW9t/4sqdFzGPDKCe1sRovzKrVOPXsK
	8rIs81BEYu/Qnm/v/2cxFYK8K5GKFHBMrUTd56njbl7rXmt/behtpxATwOsQGAOOejj83ZKz1
	rzXn+b+JhSHksG1j8sa+B7Fg/eojZl5FgghYGzVBiVpKZ+BOIYBv3pQM7nVk1fJ4b7pRf8Thr
	CJWcJDUnIxaeQFVz6DNAfv8WYVpcjirLQ9Rr5+OV2BypLm4kOlMncfY3xcBKbfXrgWMj6Ld9R
	/pPEMNkwcAUF2MeLG0VJLuYABIZEx/wEWHoFNs0V3vzB/AdMBbSqgsQxnq7B0DZ/gELfiWPwf
	Ca2aXkpSL7utv7Y4aMq427QqyZIJLO9nxRJOdwceOzJS256uwpAlwJ1xxf45PbK6syIMS35s1
	aZ4A1wUc0CbSlQPkSSm50p5LFowDs86cvCgzCXL742vdWea4alRNiJxpW0JWKxfZX8hsmxKVk
	IC+0dbHUBQANZ7lSvq8roM1NKcrdsJZ9VsWwBW5oDw3SmvOV/j8zMRuwJ9rTK5IuU+6ojPPNL
	D+x00tkZh4r7B5X7+7ULWYQwotQiEljFHw75ukD+waW4sTd1BmOkegPtocXPAc086WhMJWA5q
	/mqTYQBgj2Y7g1hf
Subject: Adding a file into the kernel source
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
X-List-Received-Date: Mon, 17 Oct 2016 12:27:59 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0715_01D22879.8C0A12F0"
Content-Language: en-gb

------=_NextPart_000_0715_01D22879.8C0A12F0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I want to add a new file (a device tree source) into my kernel build. Is
there a way to get the recipe to specifically copy an existing file in , or
does it have to be created using a patch?

 


------=_NextPart_000_0715_01D22879.8C0A12F0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
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
	font-family:"Calibri",sans-serif;
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
class=3DMsoNormal>I want to add a new file (a device tree source) into =
my kernel build. Is there a way to get the recipe to specifically copy =
an existing file in , or does it have to be created using a =
patch?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_0715_01D22879.8C0A12F0--
