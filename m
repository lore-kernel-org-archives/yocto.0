Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD0A5E00E6C; Thu, 19 May 2016 10:27:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_20,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0766]
X-Greylist: delayed 3022 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 May 2016 10:26:58 PDT
Received: from intranet.lincoln.ln-systems.com (post.ln-systems.com
	[62.49.123.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C5C7E00D91
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 10:26:58 -0700 (PDT)
Received: from LNSYSCH3 (firewall-ext.lincoln.ln-systems.com [62.49.123.65])
	by intranet.lincoln.ln-systems.com (8.13.1/8.13.1) with ESMTP id
	u4JGaJuU026865
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 17:36:25 +0100
From: "Colin Helliwell" <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Thu, 19 May 2016 17:36:26 +0100
Organization: LN Systems Limited
Message-ID: <048d01d1b1ec$9a70b190$cf5214b0$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdGx7G2+aB4lczjpTQe9XbleIIsjmg==
Subject: How to pre-install a .deb file into rootfs
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
X-List-Received-Date: Thu, 19 May 2016 17:27:01 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_048E_01D1B1F4.FC378A90"
Content-Language: en-gb

------=_NextPart_000_048E_01D1B1F4.FC378A90
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have a recipe (for kura) which uses a do_compile to run kura's build
process, and this in itself generates a .deb (i.e. I'm not doing anything
within the *recipe* to create the .deb - it's done for me by kura's build
steps). I can copy the .deb to the target and use dpkg on there to install
it.

However I'd like to have it 'pre-installed' into the rootfs instead. I've
referred to tips such as
https://lists.yoctoproject.org/pipermail/yocto/2014-July/020583.html - but a
couple of questions/issues:

1. What internal variables can I use - at this stage in the bitbake - to set
'/path/to/' to point to the recipe's directory?

2. Even if I [temporarily] hard-code the full path to the .deb in the image
recipe, the ROOTFS_POSTPROCESS_COMMAND 'dpkg' step is error-free but all I'm
seeing in the rootfs is the .zip that the .deb contains i.e. it doesn't seem
to be doing actual installation of the package?  (I'm not too familiar with
.deb's, so I'm not sure which part of its content actually triggers/defines
the copying & installation of the enclosed files - I guess this doesn't get
shown by a 'dpkg --contents'?)

 


------=_NextPart_000_048E_01D1B1F4.FC378A90
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
class=3DMsoNormal>I have a recipe (for kura) which uses a do_compile to =
run kura's build process, and this in itself generates a .deb (i.e. I'm =
not doing anything within the *recipe* to create the .deb - it's done =
for me by kura's build steps). I can copy the .deb to the target and use =
dpkg on there to install it.<o:p></o:p></p><p class=3DMsoNormal>However =
I'd like to have it 'pre-installed' into the rootfs instead. I've =
referred to tips such as =
https://lists.yoctoproject.org/pipermail/yocto/2014-July/020583.html - =
but a couple of questions/issues:<o:p></o:p></p><p class=3DMsoNormal>1. =
What internal variables can I use - at this stage in the bitbake - to =
set '/path/to/' to point to the recipe's directory?<o:p></o:p></p><p =
class=3DMsoNormal>2. Even if I [temporarily] hard-code the full path to =
the .deb in the image recipe, the ROOTFS_POSTPROCESS_COMMAND 'dpkg' step =
is error-free but all I'm seeing in the rootfs is the .zip that the .deb =
contains i.e. it doesn't seem to be doing actual installation of the =
package? &nbsp;(I'm not too familiar with .deb's, so I'm not sure which =
part of its content actually triggers/defines the copying &amp; =
installation of the enclosed files - I guess this doesn't get shown by a =
'dpkg --contents'?)<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_048E_01D1B1F4.FC378A90--
