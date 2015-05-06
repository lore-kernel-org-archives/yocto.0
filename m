Return-Path: <Michael_E_Brown@dell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24405E009B6; Tue,  5 May 2015 18:36:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_MED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [143.166.148.211 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Tue, 05 May 2015 18:36:50 PDT
Received: from ausxipps310.us.dell.com (AUSXIPPS310.us.dell.com
	[143.166.148.211])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9292E007B6
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 18:36:50 -0700 (PDT)
DomainKey-Signature: s=smtpout; d=dell.com; c=nofws; q=dns;
	h=X-LoopCount0:X-IronPort-AV:From:To:CC:Date:Subject:
	Thread-Topic:Thread-Index:Message-ID:References:
	In-Reply-To:Accept-Language:Content-Language:
	X-MS-Has-Attach:X-MS-TNEF-Correlator:x-titus-version:
	x-tituslabs-classifications-30:
	x-tituslabs-classificationhash-30:x-titusconfig:
	acceptlanguage:Content-Type:MIME-Version;
	b=O1GQlVr4JYprtkOu2dR+WZROWgY0RGvBcEisrbZjre3sPNqUG73YH5oq
	QuqFn6ODJGfRzLL5T/plYFk58inCgYSsfS4PPArAiVk4f7zG9a3mHYkAR
	PbOZU80MYYb7h9HA8BraWi3ZhravC533Of7VSy9RqO+/5QGKsnrvlZEKE
	0=;
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=dell.com; i=@dell.com; q=dns/txt; s=smtpout;
	t=1430876210; x=1462412210;
	h=from:to:cc:date:subject:message-id:references:
	in-reply-to:mime-version:content-transfer-encoding;
	bh=RwJJCWWcX2slsEYyZbzJwMvqpeMZNPtMD4oeSJaXwYI=;
	b=vZCzIwsjeBElmUYTcdw8vERt1i+Ofcwqz+G7uYT8cKmoO7dzGeWNYON1
	5yvjJck4dfAcrq6h6imXL0bvV68adX9nAEQRlCnW5UF+4yow+3a4sPIoe
	sUTmxw2qd2G9BJaxRvhgKLUZtv2P9nc4pHnwFaE2tUCIZd2NhcwQxtPEw 0=;
X-LoopCount0: from 10.175.216.250
X-IronPort-AV: E=Sophos;i="5.13,376,1427778000"; 
	d="scan'208,217";a="176632131"
From: <Michael_E_Brown@Dell.com>
To: <paul.eggleton@linux.intel.com>, <twoerner@gmail.com>
Date: Tue, 5 May 2015 20:35:45 -0500
Thread-Topic: [yocto] creating images which include actively developed
	applications
Thread-Index: AdCHDg07ELMlHj/TSlWcLyCRIWkxEQAhpYTQ
Message-ID: <DB6E482E89290547898851B8CC9D81100167EFD6CA@AUSX7MCPS302.AMER.DELL.COM>
References: <BLUPR0501MB1028D6037F60D05E868A5F15BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
	<1674505.cjWkHk81xC@peggleto-mobl.ger.corp.intel.com>
	<5543E142.2020707@gmail.com>
	<7454550.JYGnhI8WWn@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <7454550.JYGnhI8WWn@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-version: 3.5.29.3
x-tituslabs-classifications-30: TLPropertyRoot=Dell;Classification=Internal
	Use;External=No;Sublabels=;
x-tituslabs-classificationhash-30: VgNFIFU9Hx+/nZJb9Kg7IrXZX68w5SEZSHaW7zNzn79h7X3deX99uGjZykfcybjEP8Q8MhNsGUVQIA3KZe4FKr33IMxS0agUYlCA3YqEGiA+iIlvaEUoyGep0pEGUrFtevP1lO10yxSqILKkgtCiiIPc9VZ3j9Mm8COL5tEt/NFeOSWPQRSA+QvmhT8Zec4uZN27E6G4z7qpA5Hpoy61SOOsxrKE9vescawbVTjSH03uwIkg/Al2Wt7yWO/q3oo5ss/818lCBMg9gwvJcQ0OE5Eh+bNDjkCzUFM/KFBP9ag=
x-titusconfig: 1.4AMER
acceptlanguage: en-US
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: creating images which include actively developed	applications
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
X-List-Received-Date: Wed, 06 May 2015 01:36:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6E482E89290547898851B8CC9D81100167EFD6CAAUSX7MCPS302A_"

--_000_DB6E482E89290547898851B8CC9D81100167EFD6CAAUSX7MCPS302A_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dell - Internal Use - Confidential
We use the google android "repo" tool plus 'externalsrc' to great effect. 3=
 generations now, across now 6-ish different products and dozens of release=
s at this point. It checks out poky, our layer, our source mirror, and our =
internal sources all at once.
--
Michael

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Paul Eggleton
Sent: Tuesday, May 05, 2015 3:32 AM
To: Trevor Woerner
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] creating images which include actively developed appli=
cations

On Friday 01 May 2015 16:25:38 Trevor Woerner wrote:
> On 04/22/15 13:58, Paul Eggleton wrote:
> > On Wednesday 22 April 2015 15:32:06 Brian Karcz wrote:
> >> Is there a way to create a recipe to build actively developed code
> >> located in an external source directory? Basically skip the fetch
> >> and unpack steps and always execute the compile and populate steps
> >> each time and image is built?
> >
> > Indeed there is:
> >
> > http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#
> > buildi
> > ng-software-from-an-external-source
>
> Paul, I'm surprised you suggested externalsrc instead of just
> mentioning devtool right from the start (doubly-surprised since you're
> the person who wrote devtool!). Using devtool the "administration" (of
> creating a recipe, etc) is done for you, no?
>
> http://twoerner.blogspot.ca/2015/01/the-yocto-project-introducing-devt
> ool.ht
> ml

Well, I would have, except this doesn't quite seem like the same case as de=
vtool is designed for (which is "temporary" switching of the source for dev=
elopment - AIUI Brian was looking for something more permanent.)

Cheers,
Paul

--

Paul Eggleton
Intel Open Source Technology Centre
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

--_000_DB6E482E89290547898851B8CC9D81100167EFD6CAAUSX7MCPS302A_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40"><head><meta http-equiv=3DContent-Type content=3D"text/html; charset=3Du=
s-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 (filtered medi=
um)"><style><!--
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
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Trebuchet MS";
	panose-1:2 11 6 3 2 2 2 2 2 4;}
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p><b><span style=3D'font-size:9.0pt;=
font-family:"Trebuchet MS","sans-serif";color:#AAAAAA'>Dell - Internal Use =
- Confidential </span></b><o:p></o:p></p><p class=3DMsoNormal>We use the go=
ogle android &#8220;repo&#8221; tool plus &#8216;externalsrc&#8217; to grea=
t effect. 3 generations now, across now 6-ish different products and dozens=
 of releases at this point. It checks out poky, our layer, our source mirro=
r, and our internal sources all at once.<o:p></o:p></p><p class=3DMsoNormal=
>--<o:p></o:p></p><p class=3DMsoNormal>Michael<o:p></o:p></p><p class=3DMso=
Normal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>-----Original Message-----=
<br>From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject=
.org] On Behalf Of Paul Eggleton<br>Sent: Tuesday, May 05, 2015 3:32 AM<br>=
To: Trevor Woerner<br>Cc: yocto@yoctoproject.org<br>Subject: Re: [yocto] cr=
eating images which include actively developed applications<br><br>On Frida=
y 01 May 2015 16:25:38 Trevor Woerner wrote:<br>&gt; On 04/22/15 13:58, Pau=
l Eggleton wrote:<br>&gt; &gt; On Wednesday 22 April 2015 15:32:06 Brian Ka=
rcz wrote:<br>&gt; &gt;&gt; Is there a way to create a recipe to build acti=
vely developed code <br>&gt; &gt;&gt; located in an external source directo=
ry? Basically skip the fetch <br>&gt; &gt;&gt; and unpack steps and always =
execute the compile and populate steps <br>&gt; &gt;&gt; each time and imag=
e is built?<br>&gt; &gt; <br>&gt; &gt; Indeed there is:<br>&gt; &gt; <br>&g=
t; &gt; http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html=
#<br>&gt; &gt; buildi<br>&gt; &gt; ng-software-from-an-external-source<br>&=
gt;<br>&gt; Paul, I'm surprised you suggested externalsrc instead of just <=
br>&gt; mentioning devtool right from the start (doubly-surprised since you=
're <br>&gt; the person who wrote devtool!). Using devtool the &quot;admini=
stration&quot; (of <br>&gt; creating a recipe, etc) is done for you, no?<br=
>&gt; <br>&gt; http://twoerner.blogspot.ca/2015/01/the-yocto-project-introd=
ucing-devt<br>&gt; ool.ht<br>&gt; ml<br><br>Well, I would have, except this=
 doesn't quite seem like the same case as devtool is designed for (which is=
 &quot;temporary&quot; switching of the source for development - AIUI Brian=
 was looking for something more permanent.)<br><br>Cheers,<br>Paul<br><br>-=
- <br><br>Paul Eggleton<br>Intel Open Source Technology Centre<br>--<br>___=
____________________________________________<br>yocto mailing list<br>yocto=
@yoctoproject.org<br>https://lists.yoctoproject.org/listinfo/yocto<o:p></o:=
p></p></div></body></html>=

--_000_DB6E482E89290547898851B8CC9D81100167EFD6CAAUSX7MCPS302A_--
