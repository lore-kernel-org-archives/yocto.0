Return-Path: <carsten.stelling2@goerlitz.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D6AFE00CE8; Tue, 29 Jan 2019 00:58:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [89.110.144.168 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 320 seconds by postgrey-1.32 at yocto-www;
	Tue, 29 Jan 2019 00:58:04 PST
Received: from mx.eurodcs.com (mx.eurodcs.com [89.110.144.168])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EF3AE00BBC
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 00:58:04 -0800 (PST)
X-No-Auth: unauthenticated sender
Received: from GOEMAIL-SERVER2.goerlitz.int ([::1]) by
	GOEMAIL-Server2.goerlitz.int ([::1]) with mapi id 14.03.0382.000;
	Tue, 29 Jan 2019 09:52:43 +0100
X-No-Auth: unauthenticated sender
Received: from SecMailGW01.goerlitz.int (localhost [127.0.0.1])
	by SecMailGW01.goerlitz.int (Postfix) with ESMTP id 208801157B9
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 09:52:43 +0100 (CET)
Received: from GOEMAIL-Server2.goerlitz.int (goemail-server2.goerlitz.int
	[172.16.0.34])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by SecMailGW01.goerlitz.int (Postfix) with ESMTPS id 1AD971157B6
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 09:52:43 +0100 (CET)
Received: from GOEMAIL-SERVER2.goerlitz.int ([::1]) by
	GOEMAIL-Server2.goerlitz.int ([::1]) with mapi id 14.03.0382.000;
	Tue, 29 Jan 2019 09:52:43 +0100
From: Stelling2 Carsten <Carsten.Stelling2@goerlitz.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Failed to populate SDK after upgrade from sumo to thud
Thread-Index: AdS3rPDlUaFmE6z6RC6J2qdihknr2w==
Date: Tue, 29 Jan 2019 08:52:42 +0000
Message-ID: <A2A9E37E9C946847B2258F923F7CFE4203E56FEA@GOEMAIL-Server2.goerlitz.int>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.4.68]
x-g-data-mailsecurity-for-exchange-spamlevel: 0
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 32
x-g-data-mailsecurity-for-exchange-server: 2ad2b9dc-805d-48a9-abc1-9b30d8aaf91e
x-c2processedorg: afb626d2-1d71-409d-a620-6d32a57e56a8
x-g-data-mailsecurity-for-exchange-guid: 7E7C6D95-2BD9-4967-AB09-058D8A0F6816
x-g-data-mailsecurity-for-exchange-processedonrouted: True
MIME-Version: 1.0
Subject: Failed to populate SDK after upgrade from sumo to thud
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
X-List-Received-Date: Tue, 29 Jan 2019 08:58:06 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_A2A9E37E9C946847B2258F923F7CFE4203E56FEAGOEMAILServer2g_"

--_000_A2A9E37E9C946847B2258F923F7CFE4203E56FEAGOEMAILServer2g_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

after upgrade from sumo (2.5.2) to thud (2.6.0) populating the SDK fails wi=
th following error:

ERROR: kernel-devsrc-1.0-r0 do_install: Function failed: do_install
...
cp cannot stat 'arch/arm/tools/syscall*': No such file or directory.

When I remove the following line from the recipe meta/recipes-kernel/linux/=
kernel-devsrc.bb
cp -a --parents arch/arm/tools/syscall* $kerneldir/build
the SDK can be build.

My kernel version is 4.9.26 (no YP kernel).

Possibly, I missed to set a variable, which wasn't needed in sumo, but requ=
ired by thud?

Any help would be very appreciated.

Thanks

Carsten




--_000_A2A9E37E9C946847B2258F923F7CFE4203E56FEAGOEMAILServer2g_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Arial","sans-serif";
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">after upgrade from sumo (2=
.5.2) to thud (2.6.0) populating the SDK fails with following error:<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">ERROR: kernel-devsrc-1.0-r=
0 do_install: Function failed: do_install<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">&#8230;<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">cp cannot stat &#8216;arch=
/arm/tools/syscall*&#8217;: No such file or directory.<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">When I remove the followin=
g line from the recipe meta/recipes-kernel/linux/kernel-devsrc.bb<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">cp -a --parents arch/arm/t=
ools/syscall* $kerneldir/build<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">the SDK can be build.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">My kernel version is 4.9.2=
6 (no YP kernel).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Possibly, I missed to set =
a variable, which wasn&#8217;t needed in sumo, but required by thud?<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Any help would be very app=
reciated.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Thanks<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Carsten<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
</div>
</body>
</html>

--_000_A2A9E37E9C946847B2258F923F7CFE4203E56FEAGOEMAILServer2g_--
