Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED237E00825; Sat,  7 Feb 2015 08:03:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Sat, 07 Feb 2015 08:03:54 PST
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F25B8E00477
	for <yocto@yoctoproject.org>; Sat,  7 Feb 2015 08:03:54 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhAFAOI11lSHCzIm/2dsb2JhbABbgkMhIiIwXsJTHwGFegKBD0MBAQEBAQF8hA4BAQMMBhteARUVViYBBBsaiAsBqVqEf6BcDCCPRw2CWAxAHYEUBY8bkAKMGiKDboIzfgEBAQ
X-IronPort-AV: E=Sophos;i="5.09,535,1418101200"; d="scan'208,217";a="90521893"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by de307622-de-outbound.net.avaya.com with ESMTP;
	07 Feb 2015 11:02:49 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC02.global.avaya.com) ([135.11.85.13])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	07 Feb 2015 11:02:48 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC02.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Sat, 7 Feb 2015 11:02:47 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Question about fetching git URI with protocol=https
Thread-Index: AdBC7iTI6NFzs1PaS/K2/HzGdJWr9w==
Date: Sat, 7 Feb 2015 16:02:47 +0000
Message-ID: <30C2D590D16A5C46ADFE652191037798411B02C3@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: Question about fetching git URI with protocol=https
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
X-List-Received-Date: Sat, 07 Feb 2015 16:03:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE652191037798411B02C3AZUS1EXMB03glob_"

--_000_30C2D590D16A5C46ADFE652191037798411B02C3AZUS1EXMB03glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Poky Daisy 1.6.1

I have a recipe that must fetch from a git repo using https. I have specifi=
ed
";protocol=3Dhttps" in the SRC_URI.

The fetch task for this recipe is failing with:

                ERROR: Fetcher failure: Fetch command failed with exit code=
 128, output:
                Cloning into bare repository '<path>'...
                fatal: unable to access '<URL>': error setting certificate =
verify locations:
                  CAfile: <path>/poky/build/tmp/sysroots/x86_64-linux/etc/s=
sl/certs/ca-certificates.crt
                  CApath: none

which I understand to be a curl error and, indeed, there is no such file.

It is my understanding that this file should be created by building the ca-=
certificates package.

The build is running on Ubuntu 12.04, so a git-native was built in the
development tools, as well as a curl-native. The curl recipe has an RRECOMM=
ENDS
for ca-certificates, but that package does not show up in "bitbake -g" and =
is
not being built. Hence the file not being present in the sysroot.

I would appreciate some guidance as to what is missing/how I can resolve
this issue. I don't want these certificates to show up in the target images=
 or
in the SDK, I only need them to fetch for building.

Regards,
MV

--_000_30C2D590D16A5C46ADFE652191037798411B02C3AZUS1EXMB03glob_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Poky Daisy 1.6.1<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have a recipe that must fetch from a git repo usin=
g https. I have specified<o:p></o:p></p>
<p class=3D"MsoNormal">&#8220;;protocol=3Dhttps&#8221; in the SRC_URI.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The fetch task for this recipe is failing with:<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ERROR: Fetcher failure: Fetch comman=
d failed with exit code 128, output:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cloning into bare repository '&lt;pa=
th&gt;'...<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fatal: unable to access '&lt;URL&gt;=
': error setting certificate verify locations:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; CAfile: &lt;path&gt;/poky/bui=
ld/tmp/sysroots/x86_64-linux/etc/ssl/certs/ca-certificates.crt<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; CApath: none<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">which I understand to be a curl error and, indeed, t=
here is no such file.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It is my understanding that this file should be crea=
ted by building the ca-certificates package.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The build is running on Ubuntu 12.04, so a git-nativ=
e was built in the<o:p></o:p></p>
<p class=3D"MsoNormal">development tools, as well as a curl-native. The cur=
l recipe has an RRECOMMENDS<o:p></o:p></p>
<p class=3D"MsoNormal">for ca-certificates, but that package does not show =
up in &#8220;bitbake &#8211;g&#8221; and is<o:p></o:p></p>
<p class=3D"MsoNormal">not being built. Hence the file not being present in=
 the sysroot.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I would appreciate some guidance as to what is missi=
ng/how I can resolve<o:p></o:p></p>
<p class=3D"MsoNormal">this issue. I don&#8217;t want these certificates to=
 show up in the target images or<o:p></o:p></p>
<p class=3D"MsoNormal">in the SDK, I only need them to fetch for building.<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">MV<o:p></o:p></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE652191037798411B02C3AZUS1EXMB03glob_--
