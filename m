Return-Path: <andreas.enbacka@gasera.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB51BE00DDE; Fri, 10 Jun 2016 06:37:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.211.207.200 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.5000]
X-Greylist: delayed 2062 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Jun 2016 06:36:56 PDT
Received: from smtp1.eteinen.fi (smtp1.eteinen.fi [194.211.207.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 824CAE00D26
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 06:36:56 -0700 (PDT)
Received: from [193.64.150.69] (helo=LenovoPC)
	by smtp1.eteinen.fi with esmtpsa (TLS1.2:RSA_AES_256_CBC_SHA256:256)
	(Exim 4.82) (envelope-from <andreas.enbacka@gasera.fi>)
	id 1bBM4y-0005oj-Rr
	for yocto@yoctoproject.org; Fri, 10 Jun 2016 16:02:28 +0300
From: "Andreas Enbacka" <andreas.enbacka@gasera.fi>
To: <yocto@yoctoproject.org>
Date: Fri, 10 Jun 2016 16:02:39 +0300
Message-ID: <014d01d1c318$5e41b150$1ac513f0$@gasera.fi>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdHDF9+1WfiQ+U/yQZK2l5Wjhq1QWw==
Subject: Handling of partial Yocto image updates
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
X-List-Received-Date: Fri, 10 Jun 2016 13:37:00 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_014E_01D1C331.8390BE10"
Content-Language: fi

------=_NextPart_000_014E_01D1C331.8390BE10
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

 

I would like to ask the community what is the preferred way of handling
partial image / package updates using Yocto, once an image has been deployed
to a production system? 

In most cases, once we have an image deployed it might be necessary to
update some individual packages and e.g., configuration files, and it is not
desired to update / replace the entire image. What is the Yocto best
practices concerning this? Any information would be greatly appreciated.

 

Best regards,

Andreas Enbacka 

 


------=_NextPart_000_014E_01D1C331.8390BE10
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
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
lang=3DEN-US>I would like to ask the community what is the preferred way =
of handling partial image / package updates using Yocto, once an image =
has been deployed to a production system? <o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>In most cases, once we have an =
image deployed it might be necessary to update some individual packages =
and e.g., configuration files, and it is not desired to update / replace =
the entire image. What is the Yocto best practices concerning this? Any =
information would be greatly appreciated.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Best =
regards,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Andreas Enbacka <o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>

------=_NextPart_000_014E_01D1C331.8390BE10--
