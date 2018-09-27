Return-Path: <desai@uni-bremen.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4F84E00A94; Thu, 27 Sep 2018 01:56:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_MED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.102.50.17 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 982 seconds by postgrey-1.32 at yocto-www;
	Thu, 27 Sep 2018 01:56:09 PDT
Received: from smtp.uni-bremen.de (gabriel-vm-2.zfn.uni-bremen.de
	[134.102.50.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C615CE00A54
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2018 01:56:09 -0700 (PDT)
Received: from uni-bremen.de (webmail-1.zfn.uni-bremen.de [134.102.50.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.uni-bremen.de (Postfix) with ESMTPSA id EB1E9275C0
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2018 10:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=uni-bremen.de; s=dkim;
	t=1538037585; bh=RA9IpoEcU2jpCMHSSO/GcR/aYbPjcxOrrgSd/GM+3/U=;
	h=To:Date:From;
	b=LwE22UxRLgXge/09ZDapu25NPUe2Bp71PhbnuNrutsaDQBPEE7raK/4gjqyLpPEQw
	RTG/hLoFQ/q5kASZF57Lf95T+UnbUY1noA+x9NdPbdw1ouljPdicnez+nu60CvauHr
	/2b5tVggNButS3EC4gM7DUIsWPXgFRIC/T3b7Kug=
To: yocto@yoctoproject.org
Date: Thu, 27 Sep 2018 10:39:43 +0200
Message-ID: <001401d4563d$a32ce810$e986b830$@uni-bremen.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdRWO95KieAgVHqWRH2MapDqeTGNDg==
User-Agent: Horde Application Framework 5
From: Shantanoo Desai <desai@uni-bremen.de>
Subject: Strange behavior with python recipe
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
X-List-Received-Date: Thu, 27 Sep 2018 08:56:11 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0015_01D4564E.66B73EB0"
Content-Language: de

------=_NextPart_000_0015_01D4564E.66B73EB0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello all, 

 

I am working with the following:

 

.       Hardware: Phytec-imx6-Mira Development board

.       Branch: krogoth

.       Bitbake Version: 1.30

.       Workflow tool: devtool

.       Build Env: Debian 9.4 server

 

I want to use the pynmea2 and influxdb-python modules on the embedded board
for application development. I added them using devtool and the recipes were
created accordingly.

I added the necessary RDEPENDS to the recipes and structured them to the
meta-python layer i.e. pynmea2.inc and pynmea2_1.7.1.bb (similar for
influxdb-python)

 

My application needs to be with python3 hence in the recipes I added `inhert
setuptools3 pypi` so that it builds for python3. I added these recipes in my
`local.conf` file.

 

Strangely, there is no `datetime` module available in the python3 shell when
I import these modules on the hardware. This same `datetime` module is
however available on python2 shell.

 

I explicitly added the `python3-datetime` in the `local.conf` file but still
the module is unavailable on hardware.

 

Links to necessary files and query:

 

Stackexchange Query:
https://stackoverflow.com/questions/52519565/no-module-named-datetime-in-pyt
hon3-when-creating-a-recipe-for-yocto-but-datet/52528150#52528150

Github Gists of the recipes:
https://gist.github.com/shantanoo-desai/fc00836d399f8592a30efe1ec9c56213

 

I am not sure why isn't this python3-datetime module available on board even
though I have explicitly mentioned it in the RDEPENDS and
IMAGE_INSTALL_append ?

 

Any help would be appreciated. (First time poster in the mailing-list but
willing to learn the right etiquettes for asking queries here!)

 

Regards,

Shan


------=_NextPart_000_0015_01D4564E.66B73EB0
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1933513082;
	mso-list-type:hybrid;
	mso-list-template-ids:-185287968 2051814884 134807555 134807557 =
134807553 134807555 134807557 134807553 134807555 134807557;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span lang=3DEN-US>Hello all, <o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I am working with the =
following:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoListParagraph =
style=3D'text-indent:-18.0pt;mso-list:l0 level1 lfo1'><![if =
!supportLists]><span lang=3DEN-US style=3D'font-family:Symbol'><span =
style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span lang=3DEN-US>Hardware: =
Phytec-imx6-Mira Development board<o:p></o:p></span></p><p =
class=3DMsoListParagraph style=3D'text-indent:-18.0pt;mso-list:l0 level1 =
lfo1'><![if !supportLists]><span lang=3DEN-US =
style=3D'font-family:Symbol'><span =
style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span lang=3DEN-US>Branch: =
krogoth<o:p></o:p></span></p><p class=3DMsoListParagraph =
style=3D'text-indent:-18.0pt;mso-list:l0 level1 lfo1'><![if =
!supportLists]><span lang=3DEN-US style=3D'font-family:Symbol'><span =
style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span lang=3DEN-US>Bitbake Version: =
1.30<o:p></o:p></span></p><p class=3DMsoListParagraph =
style=3D'text-indent:-18.0pt;mso-list:l0 level1 lfo1'><![if =
!supportLists]><span lang=3DEN-US style=3D'font-family:Symbol'><span =
style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span lang=3DEN-US>Workflow tool: =
devtool<o:p></o:p></span></p><p class=3DMsoListParagraph =
style=3D'text-indent:-18.0pt;mso-list:l0 level1 lfo1'><![if =
!supportLists]><span lang=3DEN-US style=3D'font-family:Symbol'><span =
style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span lang=3DEN-US>Build Env: Debian 9.4 =
server<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I want to use the pynmea2 and influxdb-python modules on =
the embedded board for application development. I added them using =
devtool and the recipes were created =
accordingly.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I added the necessary RDEPENDS to the recipes and =
structured them to the meta-python layer i.e. pynmea2.inc and =
pynmea2_1.7.1.bb (similar for influxdb-python)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>My application needs to be with =
python3 hence in the recipes I added `inhert setuptools3 pypi` so that =
it builds for python3. I added these recipes in my `local.conf` =
file.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Strangely, there is no `datetime` module available in the =
python3 shell when I import these modules on the hardware. This same =
`datetime` module is however available on python2 =
shell.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I explicitly added the `python3-datetime` in the =
`local.conf` file but still the module is unavailable on =
hardware.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Links to necessary files and query:<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Stackexchange Query: <a =
href=3D"https://stackoverflow.com/questions/52519565/no-module-named-date=
time-in-python3-when-creating-a-recipe-for-yocto-but-datet/52528150#52528=
150">https://stackoverflow.com/questions/52519565/no-module-named-datetim=
e-in-python3-when-creating-a-recipe-for-yocto-but-datet/52528150#52528150=
</a><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Github =
Gists of the recipes: <a =
href=3D"https://gist.github.com/shantanoo-desai/fc00836d399f8592a30efe1ec=
9c56213">https://gist.github.com/shantanoo-desai/fc00836d399f8592a30efe1e=
c9c56213</a><o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I am not sure why isn&#8217;t this python3-datetime module =
available on board even though I have explicitly mentioned it in the =
RDEPENDS and IMAGE_INSTALL_append ?<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Any help would be appreciated. =
(First time poster in the mailing-list but willing to learn the right =
etiquettes for asking queries here!)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>Shan<o:p></o:p></span></p></div></body></html>

------=_NextPart_000_0015_01D4564E.66B73EB0--
