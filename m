Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4A5FE00942; Wed,  1 Feb 2017 02:38:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.135 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EA28E008F3
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2017 02:38:53 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue003
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0MQA9X-1cUjRX0SuJ-005HjR
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2017 11:38:52 +0100
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Wed, 1 Feb 2017 10:38:51 -0000
Organization: LN Systems Limited
Message-ID: <04fb01d27c77$613d3780$23b7a680$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdJ8dErRgL93m3hEQRyB2jKopFzNFg==
X-Provags-ID: V03:K0:qTgslLHz6NHIAipyIhbQZ4DmKkA/RvFW5DZDwXA6mmtL52fXVcl
	2mzcZIRxdINg8IqGRhJYTM1Rkwr142IDQWJb/bGEhobn8rrbOK2A6RlYmkmc5jOlEnoNj9J
	IlUpK+zX4AsEFlMzU+3/uL93S+QEa41/g0BZtOz40QrHmZn012sobcrz6hZ6R51YZV/0OG5
	k7376TCIZ10x+cGxPTOAw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:GaeSdzR7eRY=:fKBHqkwF2uQfAXNtSN7kcr
	L6nPpW9T4d3bTtpoX3HM7Y8OzVxy/Djim8zRNNY5nh3+o98+EDbwBt7rd/V5bgVtgCCe56pCJ
	SHlbZ5JyV+ZGEwGdU5i7Fe+2vpYxB5VFbzE/rQ0GW+pIj3Bw8YRlQWZqRVeaHW4Dj4oJ+IR8U
	lWGJ1hrR8kywj+TtmT5mN6lFwO1aLNprwQ+8Rv5HjIhOfdsdHfuEW8ofl2pqYGRTQbiY+e18C
	/eplbnquDuDiXhlN6lRjmgn4xBBRnyrvDy9tRcL0i6Vs6XBCkxYhhIJ67vT5X/QdBIYCXKMWn
	kFodtw0FudqLj55/CIGnKS7QLckqUr9MbiTJwt5MpKw6gO3szDHTxlxktJ/AunM5CjmLs7qo5
	CAPQF+1hYjSk+q7YDdYEMz+CPDI/t41MIIXOMMOEvKsUNRcRsmaxeuG6Cybfmr6dGff5WD8S8
	BNVudOtqukxDSEHNjPjZThdx5sFfOVrC3r9dSe5bMRyZr1+FvpH4LwOH0i8KO0piBWc2YpfBe
	yib3rt00qNMS45hN5eknTSMqCUgWuIpUOtm0wL79N9YGwdjhc01y6zwHvE8iMRQwI0+BjIYoU
	r8PJhm88AEBvYewH76B923bJC32qHNhRAlN6C7O2Bnb45Kt7oWd7j9/s9YOvZhrcpN8hKuAjM
	ZtLfAVmiKAAe934cJcduNuzGCAyg22opjEdlRB6czR4fu9lAhfQ+rN/4pRwFMrDhCWlYoUrek
	453oKqI0P/eeKUgc
Subject: DEPENDS only half working
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
X-List-Received-Date: Wed, 01 Feb 2017 10:38:58 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_04FC_01D27C77.613D3780"
Content-Language: en-gb

------=_NextPart_000_04FC_01D27C77.613D3780
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've got an odd problem with a pair of recipes:

App 'bar' uses 'libfoo', so I've set a DEPENDS in bar.bb - I can see this is
being half picked up, because 'bitbake bar' shows both builds being started.
However bar isn't waiting on libfoo - bar tries to compile before libfoo has
even finished configuring, let alone compiled and installed it's header
(foo_lib.h) into sysroot.

I think the recipes are probably otherwise correct - if I 'bitbake libfoo'
then 'bitbake bar' then all works.

I've looked at some simple lib recipes within poky (e.g. libwebp_0.4.3.bb /
webkitgtk_2.8.5.bb), and can't spot anything wrong/missing. Not sure if
libfoo should have any 'install' or similar sections, or any FILES_
settings, but I was [naively.?] hoping that the inherited classes will be
sorting out all that generic kinda stuff.

 

Anyone help please? 

 

libfoo.bb :

 

.

inherit autotools lib_package binconfig-disabled pkgconfig

RPROVIDES_${PN} = "libfoo"

PROVIDES_${PN} = "libfoo"

PR = "r0"

SRC_URI = " ...<src files>..   "

S = "${WORKDIR}"

 

 

bar.bb :

 

..

inherit autotools binconfig-disabled pkgconfig

DEPENDS_${PN} = "libfoo"

RDEPENDS_${PN} = "libfoo"

S = "${WORKDIR}"

SRC_URI = " ...<src files>..   "

EXTRA_OEMAKE = " CFLAGS=" -I${STAGING_DIR_TARGET}/usr/include/libfoo " "

EXTRA_OEMAKE += " LDFLAGS=" -lfoo " "

 

 

libfoo Makefile.am:

 

lib_LTLIBRARIES = libfoo.la

pkginclude_HEADERS = foo_lib.h  

libfoo_la_SOURCES = $(libfoo_a_HEADERS) foo_lib.c

 


------=_NextPart_000_04FC_01D27C77.613D3780
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
class=3DMsoNormal>I&#8217;ve got an odd problem with a pair of =
recipes:<o:p></o:p></p><p class=3DMsoNormal>App &#8216;bar&#8217; uses =
&#8216;libfoo&#8217;, so I&#8217;ve set a DEPENDS in bar.bb &#8211; I =
can see this is being half picked up, because &#8216;bitbake bar&#8217; =
shows both builds being started. However bar isn&#8217;t waiting on =
libfoo &#8211; bar tries to compile before libfoo has even finished =
configuring, let alone compiled and installed it&#8217;s header =
(foo_lib.h) into sysroot.<o:p></o:p></p><p class=3DMsoNormal>I think the =
recipes are probably otherwise correct - if I &#8216;bitbake =
libfoo&#8217; then &#8216;bitbake bar&#8217; then all =
works.<o:p></o:p></p><p class=3DMsoNormal>I&#8217;ve looked at some =
simple lib recipes within poky (e.g. libwebp_0.4.3.bb / =
webkitgtk_2.8.5.bb), and can&#8217;t spot anything wrong/missing. Not =
sure if libfoo should have any &#8216;install&#8217; or similar =
sections, or any FILES_ settings, but I was [naively&#8230;?] hoping =
that the inherited classes will be sorting out all that generic kinda =
stuff.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Anyone help please? <o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>libfoo.bb =
:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>&#8230;<o:p></o:p></p><p class=3DMsoNormal>inherit =
autotools lib_package binconfig-disabled pkgconfig<o:p></o:p></p><p =
class=3DMsoNormal>RPROVIDES_${PN} =3D =
&quot;libfoo&quot;<o:p></o:p></p><p class=3DMsoNormal>PROVIDES_${PN} =3D =
&quot;libfoo&quot;<o:p></o:p></p><p class=3DMsoNormal>PR =3D =
&quot;r0&quot;<o:p></o:p></p><p class=3DMsoNormal>SRC_URI =3D &quot; =
&#8230;..&lt;src files&gt;&#8230;. &nbsp;&nbsp;&quot;<o:p></o:p></p><p =
class=3DMsoNormal>S =3D &quot;${WORKDIR}&quot;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>bar.bb =
:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>&#8230;.<o:p></o:p></p><p class=3DMsoNormal>inherit =
autotools binconfig-disabled pkgconfig<o:p></o:p></p><p =
class=3DMsoNormal>DEPENDS_${PN} =3D &quot;libfoo&quot;<o:p></o:p></p><p =
class=3DMsoNormal>RDEPENDS_${PN} =3D &quot;libfoo&quot;<o:p></o:p></p><p =
class=3DMsoNormal>S =3D &quot;${WORKDIR}&quot;<o:p></o:p></p><p =
class=3DMsoNormal>SRC_URI =3D &quot; &#8230;..&lt;src files&gt;&#8230;. =
&nbsp;&nbsp;&quot;<o:p></o:p></p><p class=3DMsoNormal>EXTRA_OEMAKE =3D =
&quot; CFLAGS=3D&quot; -I${STAGING_DIR_TARGET}/usr/include/libfoo &quot; =
&quot;<o:p></o:p></p><p class=3DMsoNormal>EXTRA_OEMAKE +=3D &quot; =
LDFLAGS=3D&quot; -lfoo &quot; &quot;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>libfoo =
Makefile.am:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>lib_LTLIBRARIES =3D libfoo.la<o:p></o:p></p><p =
class=3DMsoNormal>pkginclude_HEADERS =3D foo_lib.h&nbsp; =
<o:p></o:p></p><p class=3DMsoNormal>libfoo_la_SOURCES =3D =
$(libfoo_a_HEADERS) foo_lib.c<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_04FC_01D27C77.613D3780--
