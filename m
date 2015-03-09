Return-Path: <everhard.ros@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5D1CE0090F; Mon,  9 Mar 2015 01:36:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (everhard.ros[at]outlook.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.34.150 listed in list.dnswl.org]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Mon, 09 Mar 2015 01:36:38 PDT
Received: from COL004-OMC3S12.hotmail.com (col004-omc3s12.hotmail.com
	[65.55.34.150])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E472E00777
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 01:36:38 -0700 (PDT)
Received: from COL401-EAS422 ([65.55.34.135]) by COL004-OMC3S12.hotmail.com
	over TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751);
	Mon, 9 Mar 2015 01:35:36 -0700
X-TMN: [IWO/dqWy3A0YMs9mzyXcjUlK5HWPJoBz]
X-Originating-Email: [everhard.ros@outlook.com]
Message-ID: <COL401-EAS4221E4C74DEDE692A6AB7A1871B0@phx.gbl>
From: Everhard Ros <everhard.ros@outlook.com>
To: <yocto@yoctoproject.org>
Date: Mon, 9 Mar 2015 09:35:32 +0100
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdBaQ4uQOWLRud46Q6iD+o8MrJOeHA==
X-OriginalArrivalTime: 09 Mar 2015 08:35:36.0346 (UTC)
	FILETIME=[03E687A0:01D05A44]
X-Mailman-Approved-At: Mon, 09 Mar 2015 08:07:47 -0700
Subject: Openembedded/yocto bitbake with gcc 4.8.2 crashes at do_compile elfutils
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
X-List-Received-Date: Mon, 09 Mar 2015 08:36:40 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0001_01D05A4C.635789C0"
Content-Language: nl

------=_NextPart_000_0001_01D05A4C.635789C0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello guys,

I'm trying to run bitbake to get a linux image on an altera Cyclone 5
devboard(SoCrates). The end goal is to get a linux image that has the OpenCV
library installed. I'm using the altera version of the yocto project.

Currently everything is running fairly well on ubuntu 12.04.
When I try to run this bitbake process on CentOS 7, I get the following
error:

Error: argument to 'sizeof' in 'snprintf' call is the same expression as the
destination; did you mean to provide an explicit length?
[-Werror=sizeof-pointer-memaccess]

cc1: all warnings being treated as errors

After some googling
<http://stackoverflow.com/questions/19202368/snprintf-error-argument-to-size
of-is-the-same-as-destination> here
<https://gcc.gnu.org/bugzilla/show_bug.cgi?id=60974> and
<https://gcc.gnu.org/gcc-4.8/porting_to.html> there, I kind of found the
'bug'.(new gcc has this new flag that older versions didn't have which
causes a warning and an error with -wall).

So now I'm looking for the place where flags are passed to the gcc compiler:
I tried doing this in the bitbake.conf file in the meta -layer;
TOOLCHAIN_OPTIONS, BUILD_CFLAGS and TARGET_CFLAGS are now empty.
In the
<https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html>
manual they mention these flags are being sent to the compiler.

I also checked out the elfutils and gcc folders in yocto/meta/devtools/, but
couldn't find anything relevant there (I used find/grep and the GUI,
searching for the flags mentioned)


Changing the flags in the bitbake.conf file didn't help; do you guys happen
to have any idea where the compiler flags are being set when bitbake
executes the do_compile task for elfutils?

Thank you in advance.

cheers!

 

P.S: This is a cross-post from this thread
<http://www.linuxquestions.org/questions/linux-newbie-8/openembedded-yocto-b
itbake-with-gcc-4-8-2-crashes-at-do_compile-elfutils-4175535929/>  I made at
linuxquestions.org


------=_NextPart_000_0001_01D05A4C.635789C0
Content-Type: text/html; charset="us-ascii"
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
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
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
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DNL link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
lang=3DEN-US>Hello guys,<br><br>I'm trying to run bitbake to get a linux =
image on an altera Cyclone 5 devboard(SoCrates). The end goal is to get =
a linux image that has the OpenCV library installed. I'm using the =
altera version of the yocto project.<br><br>Currently everything is =
running fairly well on ubuntu 12.04.<br>When I try to run this bitbake =
process on CentOS 7, I get the following error:<br><br><i>Error: =
argument to 'sizeof' in 'snprintf' call is the same expression as the =
destination; did you mean to provide an explicit length? =
[-Werror=3Dsizeof-pointer-memaccess]<br><br>cc1: all warnings being =
treated as errors</i><br><br>After some googling </span><a =
href=3D"http://stackoverflow.com/questions/19202368/snprintf-error-argume=
nt-to-sizeof-is-the-same-as-destination" target=3D"_blank"><span =
lang=3DEN-US>here</span></a> <a =
href=3D"https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D60974" =
target=3D"_blank"><span lang=3DEN-US>and </span></a><a =
href=3D"https://gcc.gnu.org/gcc-4.8/porting_to.html" =
target=3D"_blank"><span lang=3DEN-US>there</span></a><span =
lang=3DEN-US>, I kind of found the 'bug'.(new gcc has this new flag that =
older versions didn't have which causes a warning and an error with =
-wall).<br><br>So now I'm looking for the place where flags are passed =
to the gcc compiler:<br>I tried doing this in the bitbake.conf file in =
the meta -layer; TOOLCHAIN_OPTIONS, BUILD_CFLAGS and TARGET_CFLAGS are =
now empty.<br>In the </span><a =
href=3D"https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.=
html" target=3D"_blank"><span lang=3DEN-US>manual</span></a><span =
lang=3DEN-US> they mention these flags are being sent to the =
compiler.<br><br>I also checked out the elfutils and gcc folders in =
yocto/meta/devtools/, but couldn't find anything relevant there (I used =
find/grep and the GUI, searching for the flags =
mentioned)<br><br><br>Changing the flags in the bitbake.conf file didn't =
help; do you guys happen to have any idea where the compiler flags are =
being set when bitbake executes the do_compile task for =
elfutils?<br><br></span>Thank you in =
advance.<br><br>cheers!<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>P.S: This is a cross-post from <a =
href=3D"http://www.linuxquestions.org/questions/linux-newbie-8/openembedd=
ed-yocto-bitbake-with-gcc-4-8-2-crashes-at-do_compile-elfutils-4175535929=
/">this thread</a> I made at =
linuxquestions.org<o:p></o:p></span></p></div></body></html>

------=_NextPart_000_0001_01D05A4C.635789C0--
