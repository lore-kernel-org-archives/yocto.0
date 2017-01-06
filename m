Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F1ADE0056D; Fri,  6 Jan 2017 05:39:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0045]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF0D9E00563
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2017 05:39:42 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue004
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0LpAhs-1d1plJ0JPw-00epmR
	for <yocto@yoctoproject.org>; Fri, 06 Jan 2017 14:39:41 +0100
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Fri, 6 Jan 2017 13:39:40 -0000
Organization: LN Systems Limited
Message-ID: <10cd01d26822$55003760$ff00a620$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdJoHtAp0/21KYgVR9G36h7oDBVrCQ==
X-Provags-ID: V03:K0:6KNGTFq1JKwPx9tulc1SuQpP2mwZ42TQUlnPliW+cV71xLNV5XP
	j5GVhvDneB3z0wYAPCIa9tYgLvPXyDWH8Tkd9PzpIpKH+pPh6hIo84b48Qm1MhwTCxf3Hl8
	J49Ujgvwi0YRub+mCj0E3RM1VocHWPZkvXYMulypBGvXZsHQHMBQAm+uoxq691s9B9PHjNo
	BJaFADTZvZ7vDbCnKlDPg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:g3+jJkFhkFo=:aOYOjTtb29TtpWluRSYPZi
	dndSJhvY4WUfLcuNzaf2inB3bqJZpl/LPHGpYMVwQUiFCbqLxoS2b9TcU+agRSGZ1jZ9vUnGn
	Lo46WCWBCoUrbfb17+el1TwA0MuyROG/ZJ9a1DSffhLRo8K4+0AMSwBCU7xK9IVyElQKXfgjI
	ThxTYM5CthALZdi1l03XPXsyShn1L6oOECcMpK6LHOl1/XLQwhgZiAPjqSdhwemZIChjM2ggb
	kJDC6nfGAJWSApQ0qjvrHr2LookWRHzBLrbKaCZ9ZGj8dVxphwuEnTO37lr6mcJwoP0G5775t
	WeTF8xDQDJw8iREyr90R/3jxJH61lvs/eXwkxQJhnl8QlbgoBdFkREJiBx+lMu/dVLLtejUju
	5BJyRDA5c2jhFcz1YKIQ18KJ+9FuewldUFZZCXz8mkjznNJ4nDahBS6+lzjZrBK6l5gF82uMe
	a4O23UYR4y/fHm4L2IA8JovPAU00LwTFYR46vdZlKe2Rm2MgqCtI/T67QV/Z7D330GTGfi+ey
	cNDQ2ZF6LVqVxxKfMHNoNkAxXZjeoowPMVPI0h+6qtGwOPncmH3l4CMvxIUVfWkPMhOKSloo2
	aHP2MFgHqUQbKe8MAkqSRaS6dBqQ0wJPyJCf+90mr0MexwmA/QNSxDd3nLmUKWIc5yquzdZ+t
	/Soa5A3UeFkTkEY8Y7wVSaoRHT41M8FujNqn2qyDCSJFTTu5QsgVGi9DCI/L+/fI0rhk4KGjY
	cik8iFkMh+/GqD95
Subject: Adding to inittab based on image content
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
X-List-Received-Date: Fri, 06 Jan 2017 13:39:44 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_10CE_01D26822.55003760"
Content-Language: en-gb

------=_NextPart_000_10CE_01D26822.55003760
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

I have a custom recipe for an application, and the app also needs an entry
adding to inittab. I'd like to trigger this, obviously, only when the app is
included in the image.

I came across some hints at how to do this -
http://git.yoctoproject.org/cgit/cgit.cgi/meta-virtualization/tree/recipes-c
ore/sysvinit/sysvinit-inittab_2.88dsf.bbappend?h=dizzy - but the app isn't
in DISTRO_FEATURES. (Right or wrong.., I include it in the image with a
"CORE_IMAGE_EXTRA_INSTALL +=" in my image recipe).

Any suggestions on how to make this inittab addition conditional?

Thanks

 


------=_NextPart_000_10CE_01D26822.55003760
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
	font-size:10.0pt;
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
class=3DMsoNormal>Hi,<o:p></o:p></p><p class=3DMsoNormal>I have a custom =
recipe for an application, and the app also needs an entry adding to =
inittab. I&#8217;d like to trigger this, obviously, only when the app is =
included in the image.<o:p></o:p></p><p class=3DMsoNormal>I came across =
some hints at how to do this - <a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-virtualization/tre=
e/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bbappend?h=3Ddizzy">http=
://git.yoctoproject.org/cgit/cgit.cgi/meta-virtualization/tree/recipes-co=
re/sysvinit/sysvinit-inittab_2.88dsf.bbappend?h=3Ddizzy</a> - but the =
app isn&#8217;t in DISTRO_FEATURES. (Right or wrong&#8230;., I include =
it in the image with a &#8220;CORE_IMAGE_EXTRA_INSTALL +=3D&#8221; in my =
image recipe).<o:p></o:p></p><p class=3DMsoNormal>Any suggestions on how =
to make this inittab addition conditional?<o:p></o:p></p><p =
class=3DMsoNormal>Thanks<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_10CE_01D26822.55003760--
