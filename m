Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F7F7E00E09; Tue, 31 May 2016 23:01:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0036]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from intranet.lincoln.ln-systems.com (post.ln-systems.com
	[62.49.123.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22C94E00DFA
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 23:01:46 -0700 (PDT)
Received: from LNSYSCH3 (firewall-ext.lincoln.ln-systems.com [62.49.123.65])
	by intranet.lincoln.ln-systems.com (8.13.1/8.13.1) with ESMTP id
	u5160xao027369
	for <yocto@yoctoproject.org>; Wed, 1 Jun 2016 07:01:04 +0100
From: "Colin Helliwell" <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
References: 
In-Reply-To: 
Date: Wed, 1 Jun 2016 07:01:36 +0100
Organization: LN Systems Limited
Message-ID: <21d701d1bbcb$12565ce0$370316a0$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHIzrdcU8d1QpE1E/lsBc1oeatA+J/l9+LQ
Subject: Re: Adding a -test sub-recipe
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
X-List-Received-Date: Wed, 01 Jun 2016 06:01:49 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_21D8_01D1BBD3.741D0ED0"
Content-Language: en-gb

------=_NextPart_000_21D8_01D1BBD3.741D0ED0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

[Apologies if this appears twice - unsure if my first send worked]

 

I have a recipe which builds its libs/apps fine, and is installed into my
rootfs; now I'm trying to add an additional 'test' subsection to the recipe
in order to build and install some test apps.

I've added a do_compile_append-test() and do_install_append-test() for the
additional test components, and the recipe builds these ok. But I'm
struggling to get these added to the rootfs image.

I've listed the additional files in a  FILES_${PN}-test=   , and added a
PACKAGES += "FILES_${PN}-test"  , and added  IMAGE_INSTALL +=
"myrecipe-test"   to the image recipe.   However the do_rootfs() fails with 

"Unable to locate package myrecipe-test"

I added 

  RPROVIDES_${PN} += "myrecipe-test"

which 'resolves' the error, but the additional files aren't appearing in the
rootfs.

 

What am I missing or getting wrong.?

The components are being put into the rootfs if I do the additions without
the '-test' suffix (i.e. just adding them to the base recipe), but I'd like
to have it as a separately-selectable option in the image recipe(s).

 

 

 


------=_NextPart_000_21D8_01D1BBD3.741D0ED0
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
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
class=3DMsoNormal>[Apologies if this appears twice &#8211; unsure if my =
first send worked]<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I have a =
recipe which builds its libs/apps fine, and is installed into my rootfs; =
now I&#8217;m trying to add an additional &#8216;test&#8217; subsection =
to the recipe in order to build and install some test =
apps.<o:p></o:p></p><p class=3DMsoNormal>I&#8217;ve added a =
do_compile_append-test() and do_install_append-test() for the additional =
test components, and the recipe builds these ok. But I&#8217;m =
struggling to get these added to the rootfs image.<o:p></o:p></p><p =
class=3DMsoNormal>I&#8217;ve listed the additional files in a =
&nbsp;FILES_${PN}-test=3D &nbsp;&nbsp;, and added a &nbsp;&nbsp;PACKAGES =
+=3D &#8220;FILES_${PN}-test&#8221; &nbsp;, and added&nbsp; =
IMAGE_INSTALL +=3D &#8220;myrecipe-test&#8221;&nbsp; &nbsp;to the image =
recipe. &nbsp;&nbsp;However the do_rootfs() fails with <o:p></o:p></p><p =
class=3DMsoNormal>&#8220;Unable to locate package =
myrecipe-test&#8221;<o:p></o:p></p><p class=3DMsoNormal>I added =
<o:p></o:p></p><p class=3DMsoNormal>&nbsp;&nbsp;RPROVIDES_${PN} +=3D =
&quot;myrecipe-test&quot;<o:p></o:p></p><p class=3DMsoNormal>which =
&#8216;resolves&#8217; the error, but the additional files aren&#8217;t =
appearing in the rootfs.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>What am I =
missing or getting wrong&#8230;?<o:p></o:p></p><p class=3DMsoNormal>The =
components are being put into the rootfs if I do the additions without =
the &#8216;-test&#8217; suffix (i.e. just adding them to the base =
recipe), but I&#8217;d like to have it as a separately-selectable option =
in the image recipe(s).<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_21D8_01D1BBD3.741D0ED0--
