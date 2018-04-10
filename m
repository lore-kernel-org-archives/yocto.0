Return-Path: <amb58@arl.psu.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2EF2E00AD8; Tue, 10 Apr 2018 10:54:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [128.118.65.16 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 305 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 Apr 2018 10:54:52 PDT
Received: from smtp4.arl.psu.edu (smtp4.arl.psu.edu [128.118.65.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 323E4E007E1
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 10:54:52 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.arl.psu.edu (Postfix) with ESMTP id 02A95404D44
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 13:49:47 -0400 (EDT)
X-Virus-Scanned: amavisd-new at arl.psu.edu
Received: from smtp4.arl.psu.edu ([127.0.0.1])
	by localhost (smtp4.arl.psu.edu [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id DmbmZiDFRboT for <yocto@yoctoproject.org>;
	Tue, 10 Apr 2018 13:49:46 -0400 (EDT)
Received: from fc-m250s2.arl.psu.edu (fc-m250s2.arl.psu.edu [10.255.5.82])
	by smtp4.arl.psu.edu (Postfix) with ESMTPS id E1E27404ADA
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 13:49:46 -0400 (EDT)
Received: from exchange6.arl.psu.edu (exchange6.arl.psu.edu [10.254.4.41])
	by fc-m250s2.arl.psu.edu (Postfix) with ESMTPS id C459810DE067
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 17:49:46 +0000 (UTC)
Received: from COLO-EX10-MB1.arl.psu.edu ([fe80::a885:3185:a270:5dda]) by
	exchange6.arl.psu.edu ([::1]) with mapi id 14.03.0361.001;
	Tue, 10 Apr 2018 13:49:46 -0400
From: "Aaron M. Biver" <amb58@arl.psu.edu>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Question about automatic dependencies when native packages are
	used
Thread-Index: AdPQ8iY+5rJJjHj9QKGae7MXSwgiEQ==
Date: Tue, 10 Apr 2018 17:49:44 +0000
Message-ID: <A5CF21C0A85F3B4FBBF15BA8E7A39E2C4522BE90@COLO-EX10-MB1.arl.psu.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.176.10.146]
MIME-Version: 1.0
X-Content-Scanned: Fidelis Mail
X-Mailman-Approved-At: Fri, 13 Apr 2018 08:20:18 -0700
Subject: Question about automatic dependencies when native packages are used
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
X-List-Received-Date: Tue, 10 Apr 2018 17:54:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_A5CF21C0A85F3B4FBBF15BA8E7A39E2C4522BE90COLOEX10MB1arlp_"

--_000_A5CF21C0A85F3B4FBBF15BA8E7A39E2C4522BE90COLOEX10MB1arlp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm having some trouble with native dependencies in my recipe, and I'm wond=
ering if anyone has any tips.  I'm building with the petalinux toolset on a=
n x64 linux for an arm architecture.

I have a recipe myapp, which has a native version, myapp-native.  myapp dep=
ends on its myapp-native, as this builds an application used in the build o=
f myapp.  myapp also depends on a kernel module, mymodule.

So, an excerpt from myapp.bb:

DEPENDS +=3D "mymodule myapp-native"
BBCLASSEXTEND =3D "native"

The problem that myapp-native is trying to include mymodule-native.  This c=
omplains:

ERROR: Nothing PROVIDES 'mymodule-native' (but virtual:native:/path/.../mya=
pp/myapp.bb DEPENDS on or otherwise requires it)

I've tried adding a 'BBCLASSEXTEND =3D "native"' to mymodule.bb, but that g=
enerated build errors.

I've tried overriding the dependency in myapp.bb with
DEPENDS-native =3D ""

And then I tried adding this to myapp.bb
DEPENDS_${PN}-native =3D ""

I've also tried allowing the mymodule-native package to be empty by adding =
this to mymodule.bb
ALLOW_EMPTY_${PN} =3D "1"

As well as this:
ALLOW_EMPTY_${PN}-native =3D "1"

But nothing seems to work... it keeps trying to find mymodule-native.  I'd =
like a way to either override this dependency or make mymodule-native an em=
pty package.  I'm all out of random spaghetti to throw against this wall, a=
nd I'm hoping someone has some experience with this.




--_000_A5CF21C0A85F3B4FBBF15BA8E7A39E2C4522BE90COLOEX10MB1arlp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
	{mso-style-type:export-only;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I&#8217;m having some trouble with native dependenci=
es in my recipe, and I&#8217;m wondering if anyone has any tips.&nbsp; I&#8=
217;m building with the petalinux toolset on an x64 linux for an arm archit=
ecture.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have a recipe myapp, which has a native version, m=
yapp-native.&nbsp; myapp depends on its myapp-native, as this builds an app=
lication used in the build of myapp.&nbsp; myapp also depends on a kernel m=
odule, mymodule.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So, an excerpt from myapp.bb:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">DEPENDS &#43;=3D &quot;mymodule myapp-native&quot;<o=
:p></o:p></p>
<p class=3D"MsoNormal">BBCLASSEXTEND =3D &quot;native&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The problem that myapp-native is trying to include m=
ymodule-native.&nbsp; This complains:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Nothing PROVIDES 'mymodule-native' (but virtu=
al:native:/path/&#8230;/myapp/myapp.bb DEPENDS on or otherwise requires it)=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve tried adding a &#8216;BBCLASSEXTEND =3D &=
quot;native&quot;&#8217; to mymodule.bb, but that generated build errors.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve tried overriding the dependency in myapp.=
bb with<o:p></o:p></p>
<p class=3D"MsoNormal">DEPENDS-native =3D &quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">And then I tried adding this to myapp.bb<o:p></o:p><=
/p>
<p class=3D"MsoNormal">DEPENDS_${PN}-native =3D &quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve also tried allowing the mymodule-native p=
ackage to be empty by adding this to mymodule.bb<o:p></o:p></p>
<p class=3D"MsoNormal">ALLOW_EMPTY_${PN} =3D &quot;1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As well as this:<o:p></o:p></p>
<p class=3D"MsoNormal">ALLOW_EMPTY_${PN}-native =3D &quot;1&quot;<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But nothing seems to work&#8230; it keeps trying to =
find mymodule-native.&nbsp; I&#8217;d like a way to either override this de=
pendency or make mymodule-native an empty package.&nbsp; I&#8217;m all out =
of random spaghetti to throw against this wall, and I&#8217;m hoping
 someone has some experience with this.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_A5CF21C0A85F3B4FBBF15BA8E7A39E2C4522BE90COLOEX10MB1arlp_--
