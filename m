Return-Path: <Michael_E_Brown@Dell.com>
Received: from ausc60pc101.us.dell.com (ausc60pc101.us.dell.com
	[143.166.85.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55267E00282
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 10:29:39 -0800 (PST)
X-LoopCount0: from 10.175.216.250
X-IronPort-AV: E=Sophos;i="4.93,746,1378875600"; 
	d="scan'208,217";a="396995815"
From: <Michael_E_Brown@Dell.com>
To: <cmorgan@cybexintl.com>, <yocto@yoctoproject.org>
Date: Thu, 21 Nov 2013 12:29:33 -0600
Thread-Topic: Proxy server related package fetching issues
Thread-Index: AQHO5lQsLxEwfylCSUmAnPVsPHxdwpowAFCwgAABK4CAAAAwcA==
Message-ID: <DB6E482E89290547898851B8CC9D8110012FAE31B0@AUSX7MCPS302.AMER.DELL.COM>
References: <CEB2C3D7.12735%cmorgan@cybexintl.com>
	<DB6E482E89290547898851B8CC9D8110012FAE31A4@AUSX7MCPS302.AMER.DELL.COM>
	<CEB3BA21.12768%cmorgan@cybexintl.com>
In-Reply-To: <CEB3BA21.12768%cmorgan@cybexintl.com>
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
X-List-Received-Date: Thu, 21 Nov 2013 18:29:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6E482E89290547898851B8CC9D8110012FAE31B0AUSX7MCPS302A_"

--_000_DB6E482E89290547898851B8CC9D8110012FAE31B0AUSX7MCPS302A_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dell - Internal Use - Confidential
We have a Microsoft proxy server which requires NTLM authentication, and it=
 is cumbersome in most cases to retrieve sources from the cli tools. Downlo=
ading in a browser helps here, then transferring the files to the git repo.=
 (The 'cntlm' package can help here). For git repositories using the 'git' =
protocol, there is no way to access the files with the proxy, so I normally=
 just download the tarball from the yocto mirror. For extreme cases, I some=
times download at home and bring in on a USB stick.
The main point being that the build process has no network access and I pop=
ulate everything manually:

#don't really disable all network, as we need network to do sstate
BB_NO_NETWORK =3D "0"
INHERIT +=3D "own-mirrors"
SOURCE_MIRROR_URL =3D file://${TOPDIR}/../sources/<file:///\\$%7bTOPDIR%7d\=
..\sources\>
BB_GENERATE_MIRROR_TARBALLS =3D "1"
# this disables everything except premirror
BB_FETCH_PREMIRRORONLY =3D "1"
CONNECTIVITY_CHECK_URIS=3D""
DISABLE_NETWORK_SANITY =3D "1"

-----Original Message-----
From: Chris Morgan [mailto:cmorgan@cybexintl.com]
Sent: Thursday, November 21, 2013 12:26 PM
To: Brown, Michael E; yocto@yoctoproject.org
Subject: Re: Proxy server related package fetching issues

Hi Michael.

You do that  because of the same issue where something on the network is bl=
ocking the package fetching? When you say you update the sources offline do=
 you mean from a home network or something?

Chris


From: "Michael_E_Brown@Dell.com<mailto:Michael_E_Brown@Dell.com>" <Michael_=
E_Brown@Dell.com<mailto:Michael_E_Brown@Dell.com>>

Date: Thursday, November 21, 2013 at 1:22 PM
To: Chris Morgan <cmorgan@cybexintl.com<mailto:cmorgan@cybexintl.com>>, "yo=
cto@yoctoproject.org<mailto:yocto@yoctoproject.org>" <yocto@yoctoproject.or=
g<mailto:yocto@yoctoproject.org>>

Subject: RE: Proxy server related package fetching issues


Dell - Internal Use - Confidential
For my group, I keep a separate git repository updated with all the require=
d sources. I update the sources offline and set bitbake to not use the netw=
ork. You can usually download the required sources from the yocto project m=
irror.

--
Michael

-----Original Message-----
From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Chris Morgan

Sent: Wednesday, November 20, 2013 6:54 PM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
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
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto

--_000_DB6E482E89290547898851B8CC9D8110012FAE31B0AUSX7MCPS302A_
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
in-bottom:12.0pt'>We have a Microsoft proxy server which requires NTLM auth=
entication, and it is cumbersome in most cases to retrieve sources from the=
 cli tools. Downloading in a browser helps here, then transferring the file=
s to the git repo. (The &#8216;cntlm&#8217; package can help here). For git=
 repositories using the &#8216;git&#8217; protocol, there is no way to acce=
ss the files with the proxy, so I normally just download the tarball from t=
he yocto mirror. For extreme cases, I sometimes download at home and bring =
in on a USB stick.<o:p></o:p></p><p class=3DMsoNormal style=3D'margin-botto=
m:12.0pt'>The main point being that the build process has no network access=
 and I populate everything manually:<o:p></o:p></p><p class=3DMsoNormal sty=
le=3D'margin-bottom:12.0pt'><o:p>&nbsp;</o:p></p><p class=3DMsoNormal style=
=3D'margin-bottom:12.0pt'>#don't really disable all network, as we need net=
work to do sstate<o:p></o:p></p><p class=3DMsoNormal style=3D'margin-bottom=
:12.0pt'>BB_NO_NETWORK =3D &quot;0&quot;<o:p></o:p></p><p class=3DMsoNormal=
 style=3D'margin-bottom:12.0pt'>INHERIT +=3D &quot;own-mirrors&quot;<o:p></=
o:p></p><p class=3DMsoNormal style=3D'margin-bottom:12.0pt'>SOURCE_MIRROR_U=
RL =3D <a href=3D"file:///\\$%7bTOPDIR%7d\..\sources\">file://${TOPDIR}/../=
sources/</a><o:p></o:p></p><p class=3DMsoNormal style=3D'margin-bottom:12.0=
pt'>BB_GENERATE_MIRROR_TARBALLS =3D &quot;1&quot;<o:p></o:p></p><p class=3D=
MsoNormal style=3D'margin-bottom:12.0pt'># this disables everything except =
premirror<o:p></o:p></p><p class=3DMsoNormal style=3D'margin-bottom:12.0pt'=
>BB_FETCH_PREMIRRORONLY =3D &quot;1&quot;<o:p></o:p></p><p class=3DMsoNorma=
l style=3D'margin-bottom:12.0pt'>CONNECTIVITY_CHECK_URIS=3D&quot;&quot;<o:p=
></o:p></p><p class=3DMsoNormal style=3D'margin-bottom:12.0pt'>DISABLE_NETW=
ORK_SANITY =3D &quot;1&quot;<o:p></o:p></p><p><span style=3D'font-family:"C=
alibri","sans-serif"'>-----Original Message-----</span> <br><span style=3D'=
font-family:"Calibri","sans-serif"'>From: Chris Morgan [<a href=3D"mailto:c=
morgan@cybexintl.com">mailto:cmorgan@cybexintl.com</a>]</span> <br><span st=
yle=3D'font-family:"Calibri","sans-serif"'>Sent: Thursday, November 21, 201=
3 12:26 PM</span> <br><span style=3D'font-family:"Calibri","sans-serif"'>To=
: Brown, Michael E; yocto@yoctoproject.org</span> <br><span style=3D'font-f=
amily:"Calibri","sans-serif"'>Subject: Re: Proxy server related package fet=
ching issues</span> <o:p></o:p></p><p><span style=3D'font-family:"Calibri",=
"sans-serif"'>Hi Michael.</span> <o:p></o:p></p><p><span style=3D'font-fami=
ly:"Calibri","sans-serif"'>You do that&nbsp; because of the same issue wher=
e something on the network is blocking the package fetching? When you say y=
ou update the sources offline do you mean from a home network or something?=
</span><o:p></o:p></p><p><span style=3D'font-family:"Calibri","sans-serif"'=
>Chris</span> <o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p><=
span style=3D'font-family:"Calibri","sans-serif"'>From: &quot;Michael_E_Bro=
wn@Dell.com&lt;<a href=3D"mailto:Michael_E_Brown@Dell.com">mailto:Michael_E=
_Brown@Dell.com</a>&gt;&quot; &lt;Michael_E_Brown@Dell.com&lt;<a href=3D"ma=
ilto:Michael_E_Brown@Dell.com">mailto:Michael_E_Brown@Dell.com</a>&gt;&gt;<=
/span><o:p></o:p></p><p><span style=3D'font-family:"Calibri","sans-serif"'>=
Date: Thursday, November 21, 2013 at 1:22 PM</span> <br><span style=3D'font=
-family:"Calibri","sans-serif"'>To: Chris Morgan &lt;cmorgan@cybexintl.com&=
lt;<a href=3D"mailto:cmorgan@cybexintl.com">mailto:cmorgan@cybexintl.com</a=
>&gt;&gt;, &quot;yocto@yoctoproject.org&lt;<a href=3D"mailto:yocto@yoctopro=
ject.org">mailto:yocto@yoctoproject.org</a>&gt;&quot; &lt;yocto@yoctoprojec=
t.org&lt;<a href=3D"mailto:yocto@yoctoproject.org">mailto:yocto@yoctoprojec=
t.org</a>&gt;&gt;</span><o:p></o:p></p><p><span style=3D'font-family:"Calib=
ri","sans-serif"'>Subject: RE: Proxy server related package fetching issues=
</span> <o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p><span s=
tyle=3D'font-family:"Calibri","sans-serif"'>Dell - Internal Use - Confident=
ial</span> <br><span style=3D'font-family:"Calibri","sans-serif"'>For my gr=
oup, I keep a separate git repository updated with all the required sources=
. I update the sources offline and set bitbake to not use the network. You =
can usually download the required sources from the yocto project mirror.</s=
pan><o:p></o:p></p><p><span style=3D'font-family:"Calibri","sans-serif"'>--=
</span> <br><span style=3D'font-family:"Calibri","sans-serif"'>Michael</spa=
n> <o:p></o:p></p><p><span style=3D'font-family:"Calibri","sans-serif"'>---=
--Original Message-----</span> <br><span style=3D'font-family:"Calibri","sa=
ns-serif"'>From: yocto-bounces@yoctoproject.org&lt;<a href=3D"mailto:yocto-=
bounces@yoctoproject.org">mailto:yocto-bounces@yoctoproject.org</a>&gt; [<a=
 href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounces@yoctop=
roject.org</a>] On Behalf Of Chris Morgan</span><o:p></o:p></p><p><span sty=
le=3D'font-family:"Calibri","sans-serif"'>Sent: Wednesday, November 20, 201=
3 6:54 PM</span> <br><span style=3D'font-family:"Calibri","sans-serif"'>To:=
 yocto@yoctoproject.org&lt;<a href=3D"mailto:yocto@yoctoproject.org">mailto=
:yocto@yoctoproject.org</a>&gt;</span> <br><span style=3D'font-family:"Cali=
bri","sans-serif"'>Subject: [yocto] Proxy server related package fetching i=
ssues</span> <o:p></o:p></p><p><span style=3D'font-family:"Calibri","sans-s=
erif"'>Hello.</span> <o:p></o:p></p><p><span style=3D'font-family:"Calibri"=
,"sans-serif"'>I&#8217;ve been working to build an angstrom build and have =
had some issues with our corporate proxy server blocking the fetching of so=
me packages, either because of the protocol/port or because the site was fo=
r some reason flagged. In my case it took several hours to determine that t=
he failure wasn&#8217;t due to a missing file, I tried on another network c=
onnection and everything worked.</span><o:p></o:p></p><p><span style=3D'fon=
t-family:"Calibri","sans-serif"'>I&#8217;m posting here to see if anyone ha=
s had similar experience and if so, any details you&#8217;d be willing to p=
rovide, how you detected/debugged the issue and how long it took, and how y=
ou resolved the issue.</span><o:p></o:p></p><p><span style=3D'font-family:"=
Calibri","sans-serif"'>Thanks,</span> <br><span style=3D'font-family:"Calib=
ri","sans-serif"'>Chris</span> <br><span style=3D'font-family:"Calibri","sa=
ns-serif"'>_______________________________________________</span> <br><span=
 style=3D'font-family:"Calibri","sans-serif"'>yocto mailing list</span> <br=
><span style=3D'font-family:"Calibri","sans-serif"'>yocto@yoctoproject.org&=
lt;<a href=3D"mailto:yocto@yoctoproject.org">mailto:yocto@yoctoproject.org<=
/a>&gt;</span> <br><span style=3D'font-family:"Calibri","sans-serif"'><a hr=
ef=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctopro=
ject.org/listinfo/yocto</a></span> <o:p></o:p></p></div></body></html>=

--_000_DB6E482E89290547898851B8CC9D8110012FAE31B0AUSX7MCPS302A_--
