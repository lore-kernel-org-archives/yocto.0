Return-Path: <clement.cherbeix@viveris.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D99FE00D24; Wed,  3 Apr 2019 07:26:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: ***
X-Spam-Status: No, score=3.3 required=5.0 tests=BAYES_00,DOS_OUTLOOK_TO_MX,
	HTML_MESSAGE,KHOP_DYNAMIC,RDNS_DYNAMIC autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
	*  1.4 KHOP_DYNAMIC Relay looks like a dynamic address
	*  2.8 DOS_OUTLOOK_TO_MX Delivered direct to MX with Outlook headers
X-Greylist: delayed 587 seconds by postgrey-1.32 at yocto-www;
	Wed, 03 Apr 2019 07:26:25 PDT
Received: from mailS.toulouse.viveris.com (162.206.70.37.rev.sfr.net
	[37.70.206.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6621E00D1E
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 07:26:25 -0700 (PDT)
From: =?iso-8859-1?Q?Cl=E9ment_Cherbeix?= <clement.cherbeix@viveris.fr>
To: <yocto@yoctoproject.org>
Date: Wed, 3 Apr 2019 16:16:29 +0200
Message-ID: <000501d4ea27$d512a4e0$7f37eea0$@viveris.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdTqJ3rYM0AXivuHRiWSGZSejW2oJQ==
X-Mailman-Approved-At: Mon, 08 Apr 2019 09:30:29 -0700
Subject: problem with ruby
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
X-List-Received-Date: Wed, 03 Apr 2019 14:26:27 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0006_01D4EA38.989C1120"
Content-Language: fr

------=_NextPart_000_0006_01D4EA38.989C1120
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello all,

I=92m trying to add the MIB mechanics in my yocto project, for that I =
use dadi
(ruby depenedent) but I get an error when bitbake try to compile :

DEBUG: Executing shell function do_compile

ERROR:  Loading command: build (LoadError)

                cannot load such file -- zlib

ERROR:  While executing gem ... (NoMethodError)

    undefined method `invoke_with_build_args' for nil:NilClass

WARNING:
/home/modem/tkh/build/tmp/work/x86_64-linux/libxml-ruby-native/2.8.0-r0/t=
emp
/run.do_compile.567:1 exit 1 from 'LANG=3D"en_US.UTF-8" =
LC_ALL=3D"en_US.UTF-8"
gem build $gem'

=20

I have tried to build the gem in an environment outside of Yocto and it =
was
correct but when I try to do it in Yocto, I get my error.
Did someone have an idea on what to do ?
what is the recommended way of building ruby via gem in yocto ?

=20

Here is my build environment :

BB_VERSION           =3D "1.40.0"

BUILD_SYS            =3D "x86_64-linux"

NATIVELSBSTRING      =3D "universal"

TARGET_SYS           =3D "x86_64-poky-linux"

DISTRO               =3D "poky"

DISTRO_VERSION       =3D "2.6.1"

TUNE_FEATURES        =3D "m64 corei7"

=20

Thanks in advance !

=20

Cl=E9ment C.


------=_NextPart_000_0006_01D4EA38.989C1120
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Diso-8859-1"><meta name=3DGenerator content=3D"Microsoft Word =
15 (filtered medium)"><style><!--
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
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
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DFR =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span lang=3DEN-US>Hello all,<br><br>I&#8217;m trying =
to add the MIB mechanics in my yocto project, for that I use dadi (ruby =
depenedent) but I get an error when bitbake try to compile =
:<br><br>DEBUG: Executing shell function =
do_compile<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>ERROR:&nbsp; Loading command: build =
(LoadError)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cannot load such file -- =
zlib<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>ERROR:&nbsp; While executing gem ... =
(NoMethodError)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp; undefined method =
`invoke_with_build_args' for nil:NilClass<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>WARNING: =
/home/modem/tkh/build/tmp/work/x86_64-linux/libxml-ruby-native/2.8.0-r0/t=
emp/run.do_compile.567:1 exit 1 from 'LANG=3D&quot;en_US.UTF-8&quot; =
LC_ALL=3D&quot;en_US.UTF-8&quot; gem build $gem'<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I have tried to build the gem in an =
environment outside of Yocto and it was correct but when I try to do it =
in Yocto, I get my error.<br>Did someone have an idea on what to do =
?<br>what&nbsp;is&nbsp;the&nbsp;recommended&nbsp;way&nbsp;of&nbsp;buildin=
g&nbsp;ruby&nbsp;via&nbsp;gem&nbsp;in&nbsp;yocto&nbsp;?<o:p></o:p></span>=
</p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Here is my build environment =
:<br><br>BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;=3D &quot;1.40.0&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D &quot;x86_64-linux&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>NATIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;universal&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; =3D &quot;x86_64-poky-linux&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;poky&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;2.6.1&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;m64 corei7&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Thanks in advance !<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Cl=E9ment =
C.<o:p></o:p></span></p></div></body></html>

------=_NextPart_000_0006_01D4EA38.989C1120--
