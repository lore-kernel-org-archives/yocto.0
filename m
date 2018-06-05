Return-Path: <grigorieva_a@ekra.ru>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14011E01581; Tue,  5 Jun 2018 04:09:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FROM_EXCESS_BASE64, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [85.234.16.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
X-Greylist: delayed 401 seconds by postgrey-1.32 at yocto-www;
	Tue, 05 Jun 2018 04:09:44 PDT
Received: from Mail.ekra.ru (mail.ekra.ru [85.234.16.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E00E0E01571
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2018 04:09:44 -0700 (PDT)
Received: from mail.ekra.local (localhost [127.0.0.1])
	by Mail.ekra.ru (Postfix) with ESMTP id 8452751EE0E
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2018 14:02:59 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ekra.ru; h=
	content-language:x-mailer:content-type:content-type:mime-version
	:message-id:date:date:subject:subject:from:from:received; s=
	mail; t=1528196579; bh=hjHr9S1xjM8Qe4eG8BSOT/1o4eeJ2YVIMUcZZjHLY
	GE=; b=UTjF7p4thVe1HvTyVhPhqw7xpdxKdW/JMCVQrMQi2yWaW4Klq7flBNP9X
	ipCOWykbC8bULUWzb0ptcP1kjKORURJN94fekV+v5OvdUVZ/xkNj/xm33YlXicUa
	srFtlouwaSj4EBgc4QZDckUXkxoVuTWpx9qNKpgLAisabrQRF4=
X-Virus-Scanned: amavisd-new at ekra.ru
Received: from Mail.ekra.ru ([127.0.0.1])
	by mail.ekra.local (mail-server.ekra.ru [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id cxb6_qhxxcHQ for <yocto@yoctoproject.org>;
	Tue,  5 Jun 2018 14:02:59 +0300 (MSK)
From: =?koi8-r?B?59LJx8/S2MXXwSDhzKPOwSD3wcTJzc/XzsE=?= <grigorieva_a@ekra.ru>
To: <yocto@yoctoproject.org>
Date: Tue, 5 Jun 2018 14:02:46 +0300
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAOIV+o8oqWlAgQIx8uG2Fx7CgAAAEAAAAHWamJ9+nBRDq2JZfmjgT/8BAAAAAA==@ekra.ru>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdP8u9eBVKamem63T2iQXDQGAybBSw==
Subject: Re: Yocto uses UTC time for DATETIME instead of localtime
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
X-List-Received-Date: Tue, 05 Jun 2018 11:09:47 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0000_01D3FCD5.E198D6C0"
Content-Language: ru

------=_NextPart_000_0000_01D3FCD5.E198D6C0
Content-Type: text/plain;
	charset="koi8-r"
Content-Transfer-Encoding: 7bit

Hello, Davis Roman!

 

The only way to change ${DATE} and ${TIME}  is to change python function: 

def buildSetVars(self):

        """

        Setup any variables needed before starting a build

        """

        t = time.gmtime() <---- here use localtime()

        if not self.data.getVar("BUILDNAME", False):

            self.data.setVar("BUILDNAME", "${DATE}${TIME}")

        self.data.setVar("BUILDSTART", time.strftime('%m/%d/%Y %H:%M:%S',
t))

        self.data.setVar("DATE", time.strftime('%Y%m%d', t))

        self.data.setVar("TIME", time.strftime('%H%M%S', t))

 

 

file: /sources/poky/bitbake/lib/bb/cooker.py

 

Alena Grigorieva

 


------=_NextPart_000_0000_01D3FCD5.E198D6C0
Content-Type: text/html;
	charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dkoi8-r"><meta =
name=3DGenerator content=3D"Microsoft Word 14 (filtered =
medium)"><style><!--
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
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:2.0cm 42.5pt 2.0cm 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DRU link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
lang=3DEN-US>Hello, Davis Roman!<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>The only way to change ${DATE} and =
${TIME} =9Ais to change python function: <o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>def =
buildSetVars(self):<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=9A=9A=9A=9A=9A=9A=9A =
&quot;&quot;&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=9A=9A=9A=9A=9A=9A=9A Setup any variables needed before =
starting a build<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=9A=9A=9A=9A=9A=9A=9A =
&quot;&quot;&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=9A=9A=9A=9A=9A=9A=9A t =3D time.gmtime() &lt;---- here use =
localtime()<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=9A=9A=9A=9A=9A=9A=9A if not =
self.data.getVar(&quot;BUILDNAME&quot;, False):<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>=9A=9A=9A=9A=9A=9A =
=9A=9A=9A=9A=9Aself.data.setVar(&quot;BUILDNAME&quot;, =
&quot;${DATE}${TIME}&quot;)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>=9A=9A=9A=9A=9A=9A=9A =
self.data.setVar(&quot;BUILDSTART&quot;, time.strftime('%m/%d/%Y =
%H:%M:%S', t))<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=9A=9A=9A=9A=9A=9A=9A self.data.setVar(&quot;DATE&quot;, =
time.strftime('%Y%m%d', t))<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>=9A=9A=9A=9A=9A=9A=9A =
self.data.setVar(&quot;TIME&quot;, time.strftime('%H%M%S', =
t))<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>file: =
/sources/poky/bitbake/lib/bb/cooker.py<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Alena =
Grigorieva<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>

------=_NextPart_000_0000_01D3FCD5.E198D6C0--
