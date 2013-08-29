Return-Path: <vinayak.garad@einfochips.com>
Received: from out11.sjc.mx.trendmicro.com (out11.sjc.mx.trendmicro.com
	[216.99.131.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECAD4E002FB
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 06:20:54 -0700 (PDT)
Received: from relay07.sjc.mx.trendmicro.com (unknown [10.30.239.6])
	by out11.sjc.mx.trendmicro.com (Postfix) with ESMTP id C80AA980437
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 13:20:48 +0000 (UTC)
Received: from pune.einfochips.com (unknown [121.241.186.85])
	by relay07.sjc.mx.trendmicro.com (Postfix) with ESMTP id 37DD598041F
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 13:20:48 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by pune.einfochips.com (Postfix) with ESMTP id 74A5D4DE0009;
	Thu, 29 Aug 2013 19:03:55 +0530 (IST)
X-Virus-Scanned: amavisd-new at pune.einfochips.com
Received: from pune.einfochips.com ([127.0.0.1])
	by localhost (pune.einfochips.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cuwJugMIQcW1; Thu, 29 Aug 2013 19:03:55 +0530 (IST)
Received: from VINAYAKGPC (unknown [10.110.1.231])
	by pune.einfochips.com (Postfix) with ESMTPA id E774F4DE0007;
	Thu, 29 Aug 2013 19:03:54 +0530 (IST)
From: "vinayak.garad" <vinayak.garad@einfochips.com>
To: <yocto@yoctoproject.org>
Date: Thu, 29 Aug 2013 18:51:52 +0530
Message-ID: <002f01cea4ba$bae47610$30ad6230$@garad@einfochips.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: Ac6kurnANOA+yONJQuOuzRDjEnuBHQ==
X-TM-AS-Product-Ver: IMHS-1.0.0.1418-7.0.0.1014-20112.007
X-TM-AS-Result: No--14.5641-5.0-31-10
X-TM-AS-Result-Detail: Spam:No-Score:-14.5641-Baseline:ModeratelyHigh-Other:Lowest
X-TM-AS-URLRatingInfo: 81-38-=?us-ascii?B?aHR0cDovL3NjaGVtYXMubWljcm9zb2Z0Lm
	NvbS9vZmZpY2UvMjAwNC8xMi9vbW1s?=
X-TM-AS-URLRatingAct: 65-Stamped
X-TMASE-MatchedRID: XCX1jWV9QFNx1XV+/0DNMIv73wEu0Nx7CI3p+Ju8mqqx81PvNZaDBCL8
	HaC6OsQfxtA+gEM5mXcT1H6oNrGvV+ETiJzZYgN7Td1FGyH+HrI2O5Eh+45TR0+RqNNFkKfG7/+
	9swuISRWd8KCdlHrmBehzKJYil63oo5RUoF1j1rj1NV6ZtjddkoJLRBMDwnOkSf6CBl8sl/LUwF
	ANvZQmQvdN82ulzP0CFCOLNe0Jd9NZiostRfaYC0HrI6vFzzG7dwX/SSKrKHgPGMG6AkHPPJ9P6
	0UPZK0R2PIYWVqxF5lw+w8svGnPjQ5VocU4CFzq2x/FmlC/aowXihc86lJ7e45czw/QO3fQtBER
	hmbbLKeAPs2WwBXa0v++gjOGfzBmnEnP9v4KwegksSBZTGCrwrTrdaH1ZWqCdQgf7bli9LzDYOc
	F3PbNX46HM5rqDwqteu6/JijTIolQ3PqFYU0lAiNCMj8uXynfd3+QFkOnhH4DASAYjj1vhYiiCk
	U7rTtKZmC1a2ASPPHOXvv4knczIh3Sz+f5hSd4H8FerAT0dJY=
X-TM-Deliver-Signature: 444b94e065810e86400fddab555eee05
Cc: 'Shrinivas Hanchate - Embedded' <shrinivas.hanchate@einfochips.com>
Subject: Lighttpd web server on BlueGiga's APx4 development board
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
X-List-Received-Date: Thu, 29 Aug 2013 13:20:55 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0030_01CEA4E8.D49CB210"
Content-Language: en-us

------=_NextPart_000_0030_01CEA4E8.D49CB210
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I am using BlueGiga's APx4 development board which have Yocto BSP. It have
Lighttpd web-server configured.
I have seen that Lighttpd web-server on Yocto BSP uses cgi-bin and .json
scripts for HTML. I would like to use cgi-bin and .xml tags for HTML.
I visited Yocto's GIT server but didn't got any thing. I only got
configuration files of Lighttpd, I neither got any thing related to cgi-bin,
.xml or .json.

So, Yocto have any BSP which uses cgi-bin and .xml tags for HTML instead of
cgi-bin and .json scripts for HTML? OR a web-server configure to use cgi-bin
and .xml tags?

 

Thanks and Regards, 
Vinayak Garad




---------------------------------------------------------------------------------------------
Notice: 
This message has been scanned by Trend Micro Mail Security scanner and is believed to be clean
---------------------------------------------------------------------------------------------

------=_NextPart_000_0030_01CEA4E8.D49CB210
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html=20xmlns:v=3D"urn:schemas-microsoft-com:vml"=20xmlns:o=3D"urn:schema=
s-microsoft-com:office:office"=20xmlns:w=3D"urn:schemas-microsoft-com:off=
ice:word"=20xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml"=
=20xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta=20http-equiv=3DContent-Type=20content=3D"text/html;=20charset=3Dus-=
ascii">
<meta=20name=3DGenerator=20content=3D"Microsoft=20Word=2012=20(filtered=
=20medium)">
<style>
<!--
=20/*=20Font=20Definitions=20*/
=20@font-face
=09{font-family:"Cambria=20Math";
=09panose-1:2=204=205=203=205=204=206=203=202=204;}
@font-face
=09{font-family:Calibri;
=09panose-1:2=2015=205=202=202=202=204=203=202=204;}
=20/*=20Style=20Definitions=20*/
=20p.MsoNormal,=20li.MsoNormal,=20div.MsoNormal
=09{margin:0in;
=09margin-bottom:.0001pt;
=09font-size:11.0pt;
=09font-family:"Calibri","sans-serif";}
a:link,=20span.MsoHyperlink
=09{mso-style-priority:99;
=09color:blue;
=09text-decoration:underline;}
a:visited,=20span.MsoHyperlinkFollowed
=09{mso-style-priority:99;
=09color:purple;
=09text-decoration:underline;}
span.EmailStyle17
=09{mso-style-type:personal-compose;
=09font-family:"Calibri","sans-serif";
=09color:windowtext;}
.MsoChpDefault
=09{mso-style-type:export-only;}
@page=20Section1
=09{size:8.5in=2011.0in;
=09margin:1.0in=201.0in=201.0in=201.0in;}
div.Section1
=09{page:Section1;}
-->
</style>
<!--[if=20gte=20mso=209]><xml>
=20<o:shapedefaults=20v:ext=3D"edit"=20spidmax=3D"1026"=20/>
</xml><![endif]--><!--[if=20gte=20mso=209]><xml>
=20<o:shapelayout=20v:ext=3D"edit">
=20=20<o:idmap=20v:ext=3D"edit"=20data=3D"1"=20/>
=20</o:shapelayout></xml><![endif]-->
</head>

<body=20lang=3DEN-US=20link=3Dblue=20vlink=3Dpurple>

<div=20class=3DSection1>

<p=20class=3DMsoNormal><span=20style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";
color:#333399'>Hi,<o:p></o:p></span></p>

<p=20class=3DMsoNormal><span=20style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";
color:#333399'><o:p>&nbsp;</o:p></span></p>

<p=20class=3DMsoNormal><span=20style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";
color:#333399'>I=20am=20using=20BlueGiga's=20APx4=20development=20board=
=20which=20have=20Yocto
BSP.=20It=20have=20Lighttpd=20web-server=20configured.<br>
I=20have=20seen=20that=20Lighttpd=20web-server=20on=20Yocto=20BSP=20uses=
=20cgi-bin=20and=20.json=20scripts
for=20HTML.=20I=20would=20like=20to=20use=20cgi-bin=20and=20.xml=20tags=
=20for=20HTML.<br>
I=20visited=20Yocto's=20GIT=20server=20but=20didn't=20got=20any=20thing.=
=20I=20only=20got=20configuration
files=20of=20Lighttpd,=20I=20neither=20got=20any=20thing=20related=20to=
=20cgi-bin,=20.xml=20or=20.json.<br>
<br>
So,=20Yocto=20have=20any=20BSP=20which=20uses=20cgi-bin=20and=20.xml=20ta=
gs=20for=20HTML=20instead=20of
cgi-bin=20and=20.json=20scripts=20for=20HTML?=20OR=20a=20web-server=20con=
figure=20to=20use=20cgi-bin
and=20.xml=20tags?</span><o:p></o:p></p>

<p=20class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p=20class=3DMsoNormal><span=20style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";
color:#333399'>Thanks=20and=20Regards,=20<br>
Vinayak=20Garad<br>
<br>
<o:p></o:p></span></p>

</div>

</body>

</html>

<table><tr><td=20bgcolor=3D#ffffff><font=20color=3D#000000><pre>---------=
-------------------------------------------------------------------------=
-----------
Notice:=20
This=20message=20has=20been=20scanned=20by=20Trend=20Micro=20Mail=20Secur=
ity=20scanner=20and=20is=20believed=20to=20be=20clean
-------------------------------------------------------------------------=
--------------------</pre></font></td></tr></table>

------=_NextPart_000_0030_01CEA4E8.D49CB210--
