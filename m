Return-Path: <colin.helliwell@LN-Systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE167E00DE6; Thu, 24 Sep 2015 08:45:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from lnsystems.lincoln.ln-systems.com (post.ln-systems.com
	[62.49.123.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 526A0E00708
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 08:45:20 -0700 (PDT)
Received: from LNSYSCH2 (firewall-ext.lincoln.ln-systems.com [62.49.123.65])
	by lnsystems.lincoln.ln-systems.com (8.13.1/8.13.1) with ESMTP id
	t8OFgRjr012520
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 16:42:30 +0100
From: "Colin Helliwell" <colin.helliwell@LN-Systems.com>
To: <yocto@yoctoproject.org>
Date: Thu, 24 Sep 2015 16:45:15 +0100
Organization: LN Systems Limited
Message-ID: <027601d0f6e0$03e682d0$0bb38870$@LN-Systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdD2wnoeheQTZ4rQQe+romr9DeWwCQ==
Subject: Getting bitbake to use 'local' versions of local.conf/bblayers.conf
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@LN-Systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Sep 2015 15:45:26 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0277_01D0F6E8.65AAEAD0"
Content-Language: en-gb

------=_NextPart_000_0277_01D0F6E8.65AAEAD0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

We have an automated build which pulls our own layers & amendments from our
version control system. We don't really want (need?) to have a full
*unpacked* Yocto in the repository too, so we have just the Fido tarball in
there, and unpack this as the first step of the build.

But, we then need to copy our local.conf and bblayers.conf across into the
(transient) build directory. Is there a way to tell bitbake to override the
default ones (in build/local/) with ours?  I did see that it's maybe
possible to set up variables for the 'oe-init-build-env' script, but I think
this will still copy them into build/local/  - what we want is to leave them
in place (so if we make any changes they will remain under, and trackable
by, the version control)

 


------=_NextPart_000_0277_01D0F6E8.65AAEAD0
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri","sans-serif";
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>We have an =
automated build which pulls our own layers &amp; amendments from our =
version control system. We don&#8217;t really want (need?) to have a =
full *unpacked* Yocto in the repository too, so we have just the Fido =
tarball in there, and unpack this as the first step of the =
build.<o:p></o:p></p><p class=3DMsoNormal>But, we then need to copy our =
local.conf and bblayers.conf across into the (transient) build =
directory. Is there a way to tell bitbake to override the default ones =
(in build/local/) with ours?&nbsp; I did see that it&#8217;s maybe =
possible to set up variables for the &#8216;oe-init-build-env&#8217; =
script, but I think this will still copy them into build/local/&nbsp; - =
what we want is to leave them in place (so if we make any changes they =
will remain under, and trackable by, the version =
control)<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_0277_01D0F6E8.65AAEAD0--
