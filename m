Return-Path: <ting.liu@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41245E00902; Thu, 22 Jan 2015 03:23:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.56.110.148 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 4738 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 Jan 2015 03:23:08 PST
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0148.outbound.protection.outlook.com [157.56.110.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3EDFE0089B
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 03:23:08 -0800 (PST)
Received: from CY1PR0301MB1193.namprd03.prod.outlook.com (25.160.165.24) by
	CY1PR0301MB0699.namprd03.prod.outlook.com (25.160.159.141) with
	Microsoft
	SMTP Server (TLS) id 15.1.53.17; Thu, 22 Jan 2015 09:48:16 +0000
Received: from CY1PR0301MB1194.namprd03.prod.outlook.com (25.160.165.25) by
	CY1PR0301MB1193.namprd03.prod.outlook.com (25.160.165.24) with
	Microsoft SMTP
	Server (TLS) id 15.1.59.20; Thu, 22 Jan 2015 09:48:14 +0000
Received: from CY1PR0301MB1194.namprd03.prod.outlook.com ([25.160.165.25]) by
	CY1PR0301MB1194.namprd03.prod.outlook.com ([25.160.165.25]) with
	mapi id 15.01.0059.007; Thu, 22 Jan 2015 09:48:14 +0000
From: "ting.liu@freescale.com" <ting.liu@freescale.com>
To: =?iso-8859-1?Q?H=E4nel-Baas=2C_Alexander?=
	<alexander.haenel-baas@sieb-meyer.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Ls1021a how i include nfs-utils correcty
Thread-Index: AdA1dfJ/H2aszlLzTiOKAJL+/s+rewAsdfdQ
Date: Thu, 22 Jan 2015 09:48:14 +0000
Message-ID: <CY1PR0301MB11945F556F071058D14A65F893490@CY1PR0301MB1194.namprd03.prod.outlook.com>
References: <9BA84827B30CBE4996725F98F7DC9123428FB05D@SMExchange01.siebmeyer.org>
In-Reply-To: <9BA84827B30CBE4996725F98F7DC9123428FB05D@SMExchange01.siebmeyer.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [123.151.195.51]
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=ting.liu@freescale.com; 
x-dmarcaction-test: None
x-microsoft-antispam: BCL:0; PCL:0; RULEID:(3005004); SRVR:CY1PR0301MB1193;
	UriScan:; 
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0301MB1193; 
x-forefront-prvs: 0464DBBBC4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(189002)(377454003)(199003)(33656002)(97736003)(68736005)(102836002)(15975445007)(86362001)(2900100001)(64706001)(2950100001)(19625215002)(92566002)(54206007)(16236675004)(101416001)(46102003)(54356999)(76176999)(50986999)(74316001)(2501002)(107886001)(99286002)(54606007)(105586002)(106356001)(40100003)(87936001)(19580395003)(77156002)(62966003)(19300405004)(19580405001)(122556002)(66066001)(2656002)(76576001)(18717965001)(19609705001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY1PR0301MB1193;
	H:CY1PR0301MB1194.namprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: freescale.com does not designate
	permitted sender hosts)
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2015 09:48:14.3325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 710a03f5-10f6-4d38-9ff4-a80b81da590d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0301MB1193
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:;SRVR:CY1PR0301MB0699;
X-OriginatorOrg: freescale.com
Subject: Re: Ls1021a how i include nfs-utils correcty
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
X-List-Received-Date: Thu, 22 Jan 2015 11:23:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0301MB11945F556F071058D14A65F893490CY1PR0301MB1194_"

--_000_CY1PR0301MB11945F556F071058D14A65F893490CY1PR0301MB1194_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of H?nel-Baas, Alexander
Sent: Wednesday, January 21, 2015 8:31 PM
To: yocto@yoctoproject.org
Subject: [yocto] Ls1021a how i include nfs-utils correcty

Hi

I work with the Layerscape 1021a ,that comes with yocto, i can create the i=
mage, dtb und rootfs and start my target.
But I cannot mount a nfs directory via "mount -t nfs".

The Error message say:
"mount: wrong fs type, bad option, bad superblock on 172.16.17.63:/home/sm/=
myExport,
       missing codepage or helper program, or other error
       (for several filesystems (e.g. nfs, cifs) you might
       need a /sbin/mount.<type> helper program)
       In some cases useful info is found in syslog - try
       dmesg | tail or so."

[Liu Ting-B28495] check if your mount is linked to mount.util-linux: bin/mo=
unt -> /bin/mount.util-linux
try to use the mount applet provided by busybox or mount.nfs provided by nf=
s-utils.

And right in /sbin are no nfs helper.

So i start yocto select my machine (ls1021atwr), the image recipes (lsl-ima=
ge-core) press the "edit image recipe" button, the "All recipes" button
And search for nfs and then I included the nfs-utils manually by activate t=
he checkbox. Then I press the "Build packages" button.
Then yocto print "Building packages..." then shows "Step 2 of 2"
and I'm wondering because in the Included Packages  nfs-utils are not shown=
!!!

[Liu Ting-B28495] are you using hob?
So I go to the "all package tab" an include the nfs-utils again.
And finally I build the image.
Yocto creates a new image, that can boot, but it has no changes. No nfs-uti=
ls are included!

The I press the edit recipes button and look under includet recipies/all re=
cipies and my before selected nfs-utils are NOT included.


My question are:
What is going wrong?
How I added the nfs-utils correctly?

Best regards
                Alexander


--_000_CY1PR0301MB11945F556F071058D14A65F893490CY1PR0301MB1194_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
p.Sprechblasentext, li.Sprechblasentext, div.Sprechblasentext
	{mso-style-name:Sprechblasentext;
	mso-style-link:"Sprechblasentext Zchn";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.SprechblasentextZchn
	{mso-style-name:"Sprechblasentext Zchn";
	mso-style-priority:99;
	mso-style-link:Sprechblasentext;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>H?nel-Baas, Alexander<br>
<b>Sent:</b> Wednesday, January 21, 2015 8:31 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Ls1021a how i include nfs-utils correcty<o:p></o:p>=
</span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE">Hi<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">I work with the Layerscape 1021a ,that comes with yo=
cto, i can create the image, dtb und rootfs and start my target.
<o:p></o:p></p>
<p class=3D"MsoNormal">But I cannot mount a nfs directory via &#8220;mount =
-t nfs&#8221;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The Error message say:<o:p></o:p></p>
<p class=3D"MsoNormal">&#8220;mount: wrong fs type, bad option, bad superbl=
ock on 172.16.17.63:/home/sm/myExport,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; missing codepag=
e or helper program, or other error<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (for several fi=
lesystems (e.g. nfs, cifs) you might<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; need a /sbin/mo=
unt.&lt;type&gt; helper program)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; In some cases u=
seful info is found in syslog - try<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dmesg | tail or=
 so.&#8221; <o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><b><i><span style=3D"color:#1F497D">[Liu Ting-B28495=
] check if your mount is linked to mount.util-linux: bin/mount -&gt; /bin/m=
ount.util-linux
<o:p></o:p></span></i></b></p>
<p class=3D"MsoNormal"><b><i><span style=3D"color:#1F497D">try to use the m=
ount applet provided by busybox or mount.nfs provided by nfs-utils.<o:p></o=
:p></span></i></b></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal">And right in /sbin are no nfs helper.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So i start yocto select my machine (ls1021atwr), the=
 image recipes (lsl-image-core) press the &#8220;edit image recipe&#8221; b=
utton, the &#8220;All recipes&#8221; button<o:p></o:p></p>
<p class=3D"MsoNormal">And search for nfs and then I included the nfs-utils=
 manually by activate the checkbox. Then I press the &#8220;Build packages&=
#8221; button.<o:p></o:p></p>
<p class=3D"MsoNormal">Then yocto print &#8220;Building packages&#8230;&#82=
21; then shows &#8220;Step 2 of 2&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal">and I&#8217;m wondering because in the Included Pack=
ages &nbsp;nfs-utils are not shown!!!
<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><b><i><span style=3D"color:#1F497D">[Liu Ting-B28495=
] are you using hob?</span></i></b><span style=3D"color:#1F497D"><o:p></o:p=
></span></p>
<p class=3D"MsoNormal">So I go to the &#8220;all package tab&#8221; an incl=
ude the nfs-utils again.<o:p></o:p></p>
<p class=3D"MsoNormal">And finally I build the image.<o:p></o:p></p>
<p class=3D"MsoNormal">Yocto creates a new image, that can boot, but it has=
 no changes. No nfs-utils are included!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The I press the edit recipes button and look under i=
ncludet recipies/all recipies and my before selected nfs-utils are NOT incl=
uded.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My question are:<o:p></o:p></p>
<p class=3D"MsoNormal">What is going wrong?<o:p></o:p></p>
<p class=3D"MsoNormal">How I added the nfs-utils correctly?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alexander<span lang=3D"DE"><o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
</body>
</html>

--_000_CY1PR0301MB11945F556F071058D14A65F893490CY1PR0301MB1194_--
