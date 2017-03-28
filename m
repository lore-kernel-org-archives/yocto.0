Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 289C5E00B01; Tue, 28 Mar 2017 01:18:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.17.13 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4998]
X-Greylist: delayed 776 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 Mar 2017 01:18:40 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 890F7E00A51
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 01:18:40 -0700 (PDT)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue101
	[212.227.15.179]) with ESMTPSA (Nemesis) id 0Mb8mZ-1cYlLR3wEN-00KhZ8
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 10:05:43 +0200
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Tue, 28 Mar 2017 09:05:42 +0100
Organization: LN Systems Limited
Message-ID: <1e0b01d2a79a$18c68030$4a538090$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdKnma1LS0/7/FYpQ2KqAxxfInU5sw==
X-Provags-ID: V03:K0:qixx2lIdb0lYcVd/VK9/35/JXyl04sgVjSongtPURxBPJ5iP1Ve
	IZg2YZVOtZRzgss/a508z2NKbH6+n1dH+zTNyWOtMm+Llhyle676c7IXmNHsH6trMj+CUyT
	FFPX3seUvFoa4fxohLgO+8VfwzIrSzbHUceomJl044Ix55C9NtN2rS4LDMUXLQKhPXhh716
	4m5Una2kh6XZ4Pz2vS+1Q==
X-UI-Out-Filterresults: notjunk:1;V01:K0:T3HgY1Xg6Ko=:leyLLsA+Nq2SANzcw3Xrxu
	WQqVYKVdT3POqy7ZMnmAvfPNwbr7Q8e2vmcLipEPR9lB/OYG93etcXvVwVBNa4FRgHEHt1+S0
	MpDvUfBK5ynchCbQQdVFvxL4zAkLYLqF5l76AEZTQkuJ8r52fLHRpba9HNwZ7y/3Lm5DpUPjN
	hsVE1l3UHbXKo049nYdL0mc88r/pKOsU6fvSLR4FIXticXxIaXIlrDXjBLBXVdDvzaGmcK4Ug
	ttxOT1A/VlF/YlgZZvBy+kBn4dQuwhVng+2glinS1RAZrIwnWJWKCVcX+UHr+ZdLj4ALpqHnr
	0wVool9ocW1rFLssrcx6ZOcWPwlmp8Ayx5WW9tts7GOXyoqULOdZQnH6PJ/FaVTyWoLXsjJfk
	f1szWN1t+MYWRx3EvdjsPDE+eVsJBnn7dzrJeOIKjWCkKCGqQHn9CvJcfwBAq9KCV9sSWNWhf
	/wM9naRqlaz18z/UPeyyW8cSLH0f7W0FNBwMg9dbsb4nc1JOM0ytfWVPXw9jkwSIoePmwCBIV
	1gJwHlI/DafeUwfa1wwFBwRMSxsrm982JQLFpBw4FpTg4COroADUBVZOGRxzht15UQLcmQip/
	/joI5CiTf3ZOCPxvwKb1BR7zMFhmjE7zhwq/YbHbgoU1jSe//amhTvXc2Xq0779d97RztgeLi
	weS8VYe5p+A0W7pvV2rCMZ0Z7UWvje5tjvxT/bcczerb/x4UVkjGI0zv91iFywmTM3CMh2cbm
	uLi3i9WQcYdm7vfV
Subject: Current situation with gobject introspection?
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
X-List-Received-Date: Tue, 28 Mar 2017 08:18:44 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_1E0C_01D2A7A2.7A8D5930"
Content-Language: en-gb

------=_NextPart_000_1E0C_01D2A7A2.7A8D5930
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm currently using Jethro (though about to move to Krogoth), and have an
external package which need gobject introspection. I'm building on 64-bit
x86, for ARM iMX6 target.

I've been searching around to work out if this is possible under Yocto, but
not sure which of the info I've found is up-to-date. 

So I wondered what the latest [krogoth] situation is - am I likely to be
able to get this package to build, and where/how might I get started?

Thanks

 


------=_NextPart_000_1E0C_01D2A7A2.7A8D5930
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>I&#8217;m currently using Jethro (though about to move =
to Krogoth), and have an external package which need gobject =
introspection. I&#8217;m building on 64-bit x86, for ARM iMX6 =
target.<o:p></o:p></p><p class=3DMsoNormal>I&#8217;ve been searching =
around to work out if this is possible under Yocto, but not sure which =
of the info I&#8217;ve found is up-to-date. <o:p></o:p></p><p =
class=3DMsoNormal>So I wondered what the latest [krogoth] situation is =
&#8211; am I likely to be able to get this package to build, and =
where/how might I get started?<o:p></o:p></p><p =
class=3DMsoNormal>Thanks<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_1E0C_01D2A7A2.7A8D5930--
