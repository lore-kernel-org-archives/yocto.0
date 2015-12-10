Return-Path: <andreas.enbacka@gasera.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5ACE5E00AB7; Thu, 10 Dec 2015 02:12:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_40,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.211.207.200 listed in list.dnswl.org]
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.3288]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1187 seconds by postgrey-1.32 at yocto-www;
	Thu, 10 Dec 2015 02:12:06 PST
Received: from smtp1.eteinen.fi (smtp1.eteinen.fi [194.211.207.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2B49E00349
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 02:12:06 -0800 (PST)
Received: from [194.100.86.92] (helo=LenovoPC)
	by smtp1.eteinen.fi with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.71) (envelope-from <andreas.enbacka@gasera.fi>)
	id 1a6xtX-00042g-T2
	for yocto@yoctoproject.org; Thu, 10 Dec 2015 11:52:15 +0200
From: "Andreas Enbacka" <andreas.enbacka@gasera.fi>
To: <yocto@yoctoproject.org>
Date: Thu, 10 Dec 2015 11:52:16 +0200
Message-ID: <006a01d13330$73be8e90$5b3babb0$@gasera.fi>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdEzL83lTY9uMhcfSmegfIt832NAnA==
Subject: DNS nameserver on Yocto Daisy (resolvconf issue)
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
X-List-Received-Date: Thu, 10 Dec 2015 10:12:12 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_006B_01D13341.3747D3C0"
Content-Language: fi

------=_NextPart_000_006B_01D13341.3747D3C0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

 

I have problems getting dns nameservers to work on my custom image built on
top of Yocto Daisy. I have tried added e.g., dns-nameservers entry to
/etc/network/interfaces, however running e.g., /etc/init.d/networking
restart outputs the following error message:

 

resolvconf: Error: /etc/resolvconf/run/interface either does not exist or is
not a directory.

 

Checking using ls show that /etc/resolvconf/run is a symlink to
/var/run/resolvconf which does not exist. 

 

Anyone have some suggestion how to get resolvconf / dns resolving to work on
Yocto Daisy? 

 

Sincerely,

Andreas

 


------=_NextPart_000_006B_01D13341.3747D3C0
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
</o:shapelayout></xml><![endif]--></head><body lang=3DFI =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hello,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>I have problems getting dns nameservers to work on my =
custom image built on top of Yocto Daisy. I have tried added e.g., =
dns-nameservers entry to /etc/network/interfaces, however running e.g., =
/etc/init.d/networking restart outputs the following error =
message:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>resolvconf: Error: /etc/resolvconf/run/interface either =
does not exist or is not a directory.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Checking using ls show that =
/etc/resolvconf/run is a symlink to /var/run/resolvconf which does not =
exist. <o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Anyone have some suggestion how to get resolvconf / dns =
resolving to work on Yocto Daisy? <o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Sincerely,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Andreas<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>

------=_NextPart_000_006B_01D13341.3747D3C0--
