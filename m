Return-Path: <sscott@san.rr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84A04E00D13; Wed, 13 Mar 2019 08:19:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [107.14.166.226 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from cdptpa-cmomta01.email.rr.com (cdptpa-outbound-snat.email.rr.com
	[107.14.166.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76A68E00D0F
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2019 08:19:41 -0700 (PDT)
Received: from boobie ([75.80.138.87]) by cmsmtp with ESMTP
	id 45fNhCDqbNDrK45fQhHQ1v; Wed, 13 Mar 2019 15:19:40 +0000
From: "Steve Scott" <sscott@san.rr.com>
To: <yocto@yoctoproject.org>
Date: Wed, 13 Mar 2019 08:19:42 -0700
Message-ID: <003d01d4d9b0$30bb26b0$92317410$@san.rr.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdTZr01YhHnvqNEPQUuQrl1iM9SNkg==
X-CMAE-Envelope: MS4wfJ6iE0rVQA/C9f6na3jfvzwd/Lj/r+/ELWEHTZUCFd714eHMMmpWS8kro2q/DuiytXbeT/HY+ZvxCUE8oViKhg4339TOA35dKs9XMHV7YuXdXLFWZWB3
	xVwFcW5PvL9KHamIs9km6Tw0jzbQs5H6VZcUdQZ6cYtrtSkPvgefwvIL
Subject: packaging documentation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: sscott@san.rr.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 13 Mar 2019 15:19:42 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_003E_01D4D975.845C9CD0"
Content-Language: en-us

------=_NextPart_000_003E_01D4D975.845C9CD0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi:

 

I've been trying to get a better understanding of how packages are generated
by recipes. I found a fairly good explanation in an old OpenEmbedded User's
Manual
(https://dominion.thruhere.net/koen/OE/OE-usermanual.html#recipes_packages).
The manual is hard to find, and doesn't appear to be archive on the
openembedded site (https://www.openembedded.org/wiki/Documentation).

 

Can somebody point me to an equivalent discussion in the current Yocto
project documentation?

 

Thanks.

 

-steve

 


------=_NextPart_000_003E_01D4D975.845C9CD0
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
class=3DMsoNormal>Hi:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I&#8217;ve =
been trying to get a better understanding of how packages are generated =
by recipes. I found a fairly good explanation in an old OpenEmbedded =
User&#8217;s Manual =
(https://dominion.thruhere.net/koen/OE/OE-usermanual.html#recipes_package=
s). The manual is hard to find, and doesn&#8217;t appear to be archive =
on the openembedded site (<a =
href=3D"https://www.openembedded.org/wiki/Documentation">https://www.open=
embedded.org/wiki/Documentation</a>).<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Can somebody =
point me to an equivalent discussion in the current Yocto project =
documentation?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>-steve<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_003E_01D4D975.845C9CD0--
