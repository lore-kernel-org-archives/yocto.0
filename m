Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC979E00E04; Thu,  8 Dec 2016 05:09:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=BAYES_20,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.134 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.134 listed in dnsbl.sorbs.net]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0704]
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Dec 2016 05:08:23 PST
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7824EE00848
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2016 05:08:23 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue003
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0M6ydl-1cbqzK3Sth-00wmhy
	for <yocto@yoctoproject.org>; Thu, 08 Dec 2016 14:03:20 +0100
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Thu, 8 Dec 2016 13:03:18 -0000
Organization: LN Systems Limited
Message-ID: <00e201d25153$72e85590$58b900b0$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdJRTP1sg/OCfR83RAuVpCYDVYsUbg==
X-Provags-ID: V03:K0:HuLdg8mE9LtdnZflXsNmuNasbR+rKBoSXG64kAZawEBuGb6YHmG
	0UzSl1ZDPLsl0N3iDz2hvtxTu+Vc7lGf087SSXiheU6vl6ksc/75wxnERSi2ONaZc9r9R9C
	jhjsIXl9nYCvjL5zDVlk87FRAZDrTg5BWclUw0SxdDVjw77XQVeJjOx0mJ3wqvzqTjOdZBJ
	lx5GOdc1hzho85RhMboDw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:sDbsv3nuXp4=:BAnoGrPA+XfsG1ZrPmIxJe
	s/kvLZjvTrbI3XdkJI8Ycxm+JYiF7qRYm2vuKD3Xce8yS/6boZsqv3FBQ5LpcawhzLgANdf8c
	ArvOA1i4YDVop8Wn7GmAgOfJ0obc/LnUOG1/1jdhy/yCdm0R4SFwqxj3F07L6oBBuZFkZ94uh
	xY2ApWLyc5DuhSeQRoxUKBFvUH0pg+hwfg8n4Bo2R0kpXip9kXERbpc0ZcmJWFdNYhiXCrAVQ
	DO+R4cv0O6wmTGUiNHS0AXxGdS6Lgej96WNMaMSnf4FhcjbfQyDOR4nxsad0VGbY5B97KaM4F
	m9Lj88mK3JBw9TXxAlgttR/xDiWEtFwldUZfejC3CxMGuIX7pGIupvqaVVkrCnsAz5pMHzZhb
	b6LDKkaiF4WewF+R9fEblO3wvInTk9fidZlFjIzPY4EMa6EJSwd7sSyMVeAHpqu5l3dUvZAw/
	3mCrbuSVEmPP2zjBmwe2dsCKPN7LBVF7NlpvQBKvXwX/2aZHmNOiXg2OuQm4rMw7WW5ZKp3BX
	xOUE6sirrvMVKHMOtnLBBrFrS8LKn5nnV0w/zbpeKPQxkTUSbwW3enRwaz4/g8xW5DdDO8T3H
	5x63cNMpvcT4rKy/aIsZ50XY1C1gE5wdKNY20UJI6Jcn2kWLJxfzEDYMTDVk6MBxVfIiVG1Ob
	XXdTSgidlPy2zUuC8fOdeKWTO8d4kE4oiuRTh5+XjdI9+sk4MF4yRo+lWkzOAbSOCqk1oWzQe
	Lq4jLxrdu21vpF2x
Subject: Building a package for target and native
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
X-List-Received-Date: Thu, 08 Dec 2016 13:09:38 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00E3_01D25153.72E85590"
Content-Language: en-gb

------=_NextPart_000_00E3_01D25153.72E85590
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm creating a recipe for a 3rd party package. 

Part of its install is to create the target's config file by running
*itself* - obviously this doesn't work as the target cpu is different to the
host.

I should be able to do a simple patch to alter the executable that the
Makefile runs to generate the config file, but I'm trying to figure out the
slickest (=correct!) way to get both architectures built.

It looks like I can add 

   BBCLASSEXTEND="native"

to the recipe and then 'bitbake mypkg-native' will build for native, and
'bitbake mypkg' for the target.

In which case, can I set up a dependency rule such that the target build is
dependent on, i.e run after, the native? 

(The package itself will be pulled in with a   IMAGE_INSTALL += " mypkg ")

Or is there a better approach to this in general?   e.g. a separate
mypkg-native.bb which the target recipe then depends on.

 


------=_NextPart_000_00E3_01D25153.72E85590
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
class=3DMsoNormal>I&#8217;m creating a recipe for a 3<sup>rd</sup> party =
package. <o:p></o:p></p><p class=3DMsoNormal>Part of its install is to =
create the target&#8217;s config file by running *itself* - obviously =
this doesn&#8217;t work as the target cpu is different to the =
host.<o:p></o:p></p><p class=3DMsoNormal>I should be able to do a simple =
patch to alter the executable that the Makefile runs to generate the =
config file, but I&#8217;m trying to figure out the slickest =
(=3Dcorrect!) way to get both architectures built.<o:p></o:p></p><p =
class=3DMsoNormal>It looks like I can add <o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;BBCLASSEXTEND=3D&#8221;native&#8221;<=
o:p></o:p></p><p class=3DMsoNormal>to the recipe and then &#8216;bitbake =
mypkg-native&#8217; will build for native, and &#8216;bitbake =
mypkg&#8217; for the target.<o:p></o:p></p><p class=3DMsoNormal>In which =
case, can I set up a dependency rule such that the target build is =
dependent on, i.e run after, the native? <o:p></o:p></p><p =
class=3DMsoNormal>(The package itself will be pulled in with a&nbsp; =
&nbsp;IMAGE_INSTALL +=3D &#8221; mypkg &#8221;)<o:p></o:p></p><p =
class=3DMsoNormal>Or is there a better approach to this in =
general?&nbsp; &nbsp;e.g. a separate mypkg-native.bb which the target =
recipe then depends on.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_00E3_01D25153.72E85590--
