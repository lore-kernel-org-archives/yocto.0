Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B4E3E00AAF; Wed,  1 Nov 2017 09:47:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.130 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.126.130 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Wed, 01 Nov 2017 09:47:57 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 674FFE00928
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 09:47:57 -0700 (PDT)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue007
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0MNRSn-1e32DX0Kqn-006xNn
	for <yocto@yoctoproject.org>; Wed, 01 Nov 2017 17:42:54 +0100
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Wed, 1 Nov 2017 16:43:30 -0000
Organization: LN Systems Limited
Message-ID: <06ee01d35330$8d4102e0$a7c308a0$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdNTL+1Q86X61HsGS/WE9EVOcB+4xQ==
X-Provags-ID: V03:K0:fa8/i8RJcU+p65nSbWhL9FgJqqdfx+aPivNViDqK9JlQHZqNSc5
	TQDAMjSF7VIULDMOYoxIzzQzNtMefbdDtXCTNYiRjZvy43x2qfF2WhGz9rPnOV/2+UmzUj5
	ofmHHd17LIepR5btEGUI8Wzy1Gi6WwkXc55tE0y633m5gpjkTBNm+nBswB+ec+yQ05BL3fy
	eE2xRS+4IXO1r1g8uB5OQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:wxWhdbqsyG8=:qycu1MrkQkdV+Rj9v/ASzX
	XQ1Rgax+ys2mmxAZhLsR7S69W+4jrygitV314ipcB6IZ8CAD2qU5ILOBHiMLGEmbJgiX06Tl1
	IlmieBOrW7ju4nCPb55TMKzChz+7iKhT0yKTzEA+IlEw76DVRt5gJJnC/kc5jjqwDaux24hvM
	jfLzi/Oq1XEq2RLptR2AVR2Ke9p61OmAA97UO1B2Hq0zIfPrqmIWvzFb1f8ntfgcx68fzhl0o
	44hsjkUefkKbcZnIsUkssfKxySdTwYTz8nQtlvLHVfGgwuImunIy/MtMnh8i65VS7e4oloOfK
	CZrrgkKDEBDpewYekUWYLlk8lRuf8p3YWW2TUHNpKczJcgeq1sIugse+eq2yjnyBlDppyhbk2
	zHdI+B4Yv2si6sseAKVk8yPj5Wi9cjICPQLRYP43rV255f/lcCBp5J3Q7GCkwrnqutQBWEh4o
	VXGQpW4/A9LNetfiGASQFlqy8gQKGKfQz1khDgolSzNgJLFo1f17Su/y2Wlxas7h67VYRhdlX
	qyptTW8D+XD2zTo4YzuxJAFSaQRZd6sxutA3do7On9A6kKHHsCTFtZRmfQZziwgaMNE0BE6pF
	cOLGE2CSz9R305/py+nztmfQFByKyc4toTTmtzVP7LsQf0ReHV0qYnUh5IYsKiQXHlqg82fZP
	cWyncADLWoW+sttVYJkh41e8+tQO46oSASH8gejSQSiFXYY7PSZyCPXdLv1zfI5EnVJ7EGJIq
	67h4SvF4I8a+rWt7XOqNbT9rPcDA182uUlpbWyOjIDL78ndZ0HLJ3DkSr18=
Subject: Slightly varying builds
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
X-List-Received-Date: Wed, 01 Nov 2017 16:47:59 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_06EF_01D35330.8D4102E0"
Content-Language: en-gb

------=_NextPart_000_06EF_01D35330.8D4102E0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I need to build two slightly varying versions of our Yocto build - one for
the production units and one for development.

They differ in only a few ways - the kernel and apps are the same. But one
has Dropbear, whilst the other doesn't; and the U-Boot configs & patches are
different.

 

I'm wondering where to do the separation - image, distro, conf.?

Any thoughts on the cleanest way to split and/or inherit them would be
appreciated.

 


------=_NextPart_000_06EF_01D35330.8D4102E0
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
class=3DMsoNormal>I need to build two slightly varying versions of our =
Yocto build &#8211; one for the production units and one for =
development.<o:p></o:p></p><p class=3DMsoNormal>They differ in only a =
few ways &#8211; the kernel and apps are the same. But one has Dropbear, =
whilst the other doesn&#8217;t; and the U-Boot configs &amp; patches are =
different.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I&#8217;m wondering where to do the separation &#8211; =
image, distro, conf&#8230;?<o:p></o:p></p><p class=3DMsoNormal>Any =
thoughts on the cleanest way to split and/or inherit them would be =
appreciated.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_06EF_01D35330.8D4102E0--
