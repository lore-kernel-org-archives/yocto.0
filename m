Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05F24E00726; Mon, 13 Feb 2017 07:57:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=BAYES_40,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.131 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.131 listed in dnsbl.sorbs.net]
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.2342]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 861F6E00566
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 07:57:00 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue003
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0MMrpj-1clGQ12VB9-008aMI
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 16:56:58 +0100
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Mon, 13 Feb 2017 15:56:57 -0000
Organization: LN Systems Limited
Message-ID: <007b01d28611$cea76a90$6bf63fb0$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdKGEO+IpyA3zeyXTb28UGeS0w1aug==
X-Provags-ID: V03:K0:nw7Gx9oYxrZ/tLFPoNcaeTTQeT9q90IZfEz7vlz0BV7E9pLCl06
	QM2VFSYi1lXfoztdC3DNGXJCy45gsGRloMO1mqb7NZL33xObwUXBu8T8PkMj//tFjxsRx/A
	ztDp1L11dR5gax3Zh906hE3cZTAsATK92XybYcVzjZMxPjbgTQziG901woUZ4KRn/5/KTGk
	mZ75jFaxp8LCDLanQgDYg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:IykP4zkXwFs=:oDK2v7zNpSnJceGvbNLlJe
	Kvmh+zuzwp3lvPFH2CKKO956liiOiTrULejIhv2wVyU3qASE9UHn1iQ/tomXh0NTKAGbpJbn7
	YolB5tGuDQ3IOCER346KA2aBHt5pT9uZsgWVMYvjVTW6j0jSFjYpB1HR3PYlL4Ra2ReEKOY9J
	qrGc49TWc79kuRDfpT/6RckC0YZN/dgFPYxesb64o/pS7223l113qiwFy7lciECyGePsWoWt1
	klktmuMISppMluc3vqeqVBSotkjgpLoZtnfYUjka4QSMaYV4cwyVKPs/x36asbsdBeMsnNmgU
	xSHhzPyg9QKJGP+Sd95Xuz1Nbz9SrFHKI6vvS/AGH4VKGpEKdpj5hRVfBgLlLsCrywGHyUNJn
	kfgMKLMYb9cnnCuzAOtJG2Q2fcQl7sO9O/+02QhhR+8oFNBd9DDPnyxQqEdpVYb3CUITGy+ks
	iH6KPR+HhM+DGeec3q6aS6l/vWlyIrH3c0XeBIuvukwOW2L9WgZdb9z7Sngav9IqSb+u6/PQf
	7Q+dteHdPQwSLQ/Dmr9rIt+x4n7rQ3uy+gWLzhqN53ABhDg+nxoLp63o4KNh44SW167kAEyw6
	1kL5c80/LV4alk65F62Gb7IggwCvtIIf9utcRLDMG3QQkfGGbBvrfpLXLRzJM4UC+e4XKjRlG
	fb84XuYnnJrO2xd8Exgp5O3Guy/ag9v2JJo2pG0JHHq596PBP0btrDMrAK3bzadIxm5qVv/W9
	uQDwZvgGzVQHz0UN
Subject: Out-of-tree module errors installing its udev rule
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
X-List-Received-Date: Mon, 13 Feb 2017 15:57:03 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_007C_01D28611.CEA9DB90"
Content-Language: en-gb

------=_NextPart_000_007C_01D28611.CEA9DB90
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've got a strange (to me) problem with the recipe for an out-of-tree kernel
module. I'm trying to add a udev rule for the driver - in itself the recipe
does the build ok, but building the full rootfs image throws up a "QA Issue:
linmux: Files/directories were installed but not shipped in any package"
error.

I have

 

inherit module

.

 

SRC_URI += " file://65-linmuxcfg-devnode.rules "

 

S = "${WORKDIR}"

 

FILES_{PN} += "${base_libdir}/udev/rules.d/65-linmuxcfg-devnode.rules"

 

do_install_append(){

    install -d ${D}${base_libdir}/udev/rules.d/

    install -m 0644 ${WORKDIR}/65-linmuxcfg-devnode.rules
${D}${base_libdir}/udev/rules.d

}

 

Is this because it's an out-of-tree module, or some other [obvious] mistake?

Thanks

 


------=_NextPart_000_007C_01D28611.CEA9DB90
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
class=3DMsoNormal>I&#8217;ve got a strange (to me) problem with the =
recipe for an out-of-tree kernel module. I&#8217;m trying to add a udev =
rule for the driver &#8211; in itself the recipe does the build ok, but =
building the full rootfs image throws up a &#8220;QA Issue: linmux: =
Files/directories were installed but not shipped in any package&#8221; =
error.<o:p></o:p></p><p class=3DMsoNormal>I have<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>inherit =
module<o:p></o:p></p><p class=3DMsoNormal>&#8230;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>SRC_URI +=3D =
&quot; file://65-linmuxcfg-devnode.rules &quot;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>S =3D =
&quot;${WORKDIR}&quot;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>FILES_{PN} =
+=3D =
&quot;${base_libdir}/udev/rules.d/65-linmuxcfg-devnode.rules&quot;<o:p></=
o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>do_install_append(){<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp; install -d =
${D}${base_libdir}/udev/rules.d/<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp; install -m 0644 =
${WORKDIR}/65-linmuxcfg-devnode.rules =
${D}${base_libdir}/udev/rules.d<o:p></o:p></p><p =
class=3DMsoNormal>}<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Is this =
because it&#8217;s an out-of-tree module, or some other [obvious] =
mistake?<o:p></o:p></p><p class=3DMsoNormal>Thanks<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_007C_01D28611.CEA9DB90--
