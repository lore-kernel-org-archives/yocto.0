Return-Path: <Michael_E_Brown@Dell.com>
Received: from ausxippc101.us.dell.com (ausxippc101.us.dell.com
	[143.166.85.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D0C4E00282
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 10:22:30 -0800 (PST)
X-LoopCount0: from 10.170.28.41
X-IronPort-AV: E=Sophos;i="4.93,746,1378875600"; 
	d="scan'208,217";a="329109142"
From: <Michael_E_Brown@Dell.com>
To: <cmorgan@cybexintl.com>, <yocto@yoctoproject.org>
Date: Thu, 21 Nov 2013 12:22:27 -0600
Thread-Topic: Proxy server related package fetching issues
Thread-Index: AQHO5lQsLxEwfylCSUmAnPVsPHxdwpowAFCw
Message-ID: <DB6E482E89290547898851B8CC9D8110012FAE31A4@AUSX7MCPS302.AMER.DELL.COM>
References: <CEB2C3D7.12735%cmorgan@cybexintl.com>
In-Reply-To: <CEB2C3D7.12735%cmorgan@cybexintl.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-version: 3.5.21.1
x-tituslabs-classifications-30: TLPropertyRoot=Dell;Classification=Internal
	Use;External=No;Sublabels=;
x-tituslabs-classificationhash-30: VgNFIFU9Hx+/nZJb9Kg7IpJ03rliioIsI930XNhWDVYcAVpKZoNVxQXIJhkbq3TZ/WOB8aYFAeKmQ8ypK8z8n/jhtxLJddQEdI+QdCK32GgUDpYwHlov0XW5IU+BAftlXAmY59GMTGUn5yFwZc2w95uK/1WdcoeiIkfoL+JNx/3pzXaB61AOR6gi1BC5gME2Oug9gvYdW6K8qOkSJdkU+GBLtGgXbQgT0iiru9f34ke9ShPG3iJRUtD3S4msylAB
x-titusconfigver: 1.0AMER
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Proxy server related package fetching issues
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
X-List-Received-Date: Thu, 21 Nov 2013 18:22:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6E482E89290547898851B8CC9D8110012FAE31A4AUSX7MCPS302A_"

--_000_DB6E482E89290547898851B8CC9D8110012FAE31A4AUSX7MCPS302A_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dell - Internal Use - Confidential
For my group, I keep a separate git repository updated with all the require=
d sources. I update the sources offline and set bitbake to not use the netw=
ork. You can usually download the required sources from the yocto project m=
irror.
--
Michael

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Chris Morgan
Sent: Wednesday, November 20, 2013 6:54 PM
To: yocto@yoctoproject.org
Subject: [yocto] Proxy server related package fetching issues

Hello.

I've been working to build an angstrom build and have had some issues with =
our corporate proxy server blocking the fetching of some packages, either b=
ecause of the protocol/port or because the site was for some reason flagged=
. In my case it took several hours to determine that the failure wasn't due=
 to a missing file, I tried on another network connection and everything wo=
rked.

I'm posting here to see if anyone has had similar experience and if so, any=
 details you'd be willing to provide, how you detected/debugged the issue a=
nd how long it took, and how you resolved the issue.

Thanks,
Chris
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

--_000_DB6E482E89290547898851B8CC9D8110012FAE31A4AUSX7MCPS302A_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 14 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Trebuchet MS";
	panose-1:2 11 6 3 2 2 2 2 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Times New Roman","serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p><b><span style=3D'font-size:9.0pt;=
font-family:"Trebuchet MS","sans-serif";color:#AAAAAA'>Dell - Internal Use =
- Confidential </span></b><o:p></o:p></p><p class=3DMsoNormal style=3D'marg=
in-bottom:12.0pt'>For my group, I keep a separate git repository updated wi=
th all the required sources. I update the sources offline and set bitbake t=
o not use the network. You can usually download the required sources from t=
he yocto project mirror.<o:p></o:p></p><p class=3DMsoNormal style=3D'margin=
-bottom:12.0pt'>--<o:p></o:p></p><p class=3DMsoNormal style=3D'margin-botto=
m:12.0pt'>Michael<o:p></o:p></p><p><span style=3D'font-family:"Calibri","sa=
ns-serif"'>-----Original Message-----</span> <br><span style=3D'font-family=
:"Calibri","sans-serif"'>From: yocto-bounces@yoctoproject.org [<a href=3D"m=
ailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounces@yoctoproject.org=
</a>] On Behalf Of Chris Morgan</span> <br><span style=3D'font-family:"Cali=
bri","sans-serif"'>Sent: Wednesday, November 20, 2013 6:54 PM</span> <br><s=
pan style=3D'font-family:"Calibri","sans-serif"'>To: yocto@yoctoproject.org=
</span> <br><span style=3D'font-family:"Calibri","sans-serif"'>Subject: [yo=
cto] Proxy server related package fetching issues</span> <o:p></o:p></p><p>=
<span style=3D'font-family:"Calibri","sans-serif"'>Hello.</span> <o:p></o:p=
></p><p><span style=3D'font-family:"Calibri","sans-serif"'>I&#8217;ve been =
working to build an angstrom build and have had some issues with our corpor=
ate proxy server blocking the fetching of some packages, either because of =
the protocol/port or because the site was for some reason flagged. In my ca=
se it took several hours to determine that the failure wasn&#8217;t due to =
a missing file, I tried on another network connection and everything worked=
.</span><o:p></o:p></p><p><span style=3D'font-family:"Calibri","sans-serif"=
'>I&#8217;m posting here to see if anyone has had similar experience and if=
 so, any details you&#8217;d be willing to provide, how you detected/debugg=
ed the issue and how long it took, and how you resolved the issue.</span><o=
:p></o:p></p><p><span style=3D'font-family:"Calibri","sans-serif"'>Thanks,<=
/span> <br><span style=3D'font-family:"Calibri","sans-serif"'>Chris</span> =
<br><span style=3D'font-family:"Calibri","sans-serif"'>____________________=
___________________________</span> <br><span style=3D'font-family:"Calibri"=
,"sans-serif"'>yocto mailing list</span> <br><span style=3D'font-family:"Ca=
libri","sans-serif"'>yocto@yoctoproject.org</span> <br><span style=3D'font-=
family:"Calibri","sans-serif"'><a href=3D"https://lists.yoctoproject.org/li=
stinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></span> <o:p=
></o:p></p></div></body></html>=

--_000_DB6E482E89290547898851B8CC9D8110012FAE31A4AUSX7MCPS302A_--
