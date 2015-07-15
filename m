Return-Path: <mei.yeen.ng@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33639E0086E; Wed, 15 Jul 2015 10:40:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEE1EE00474
	for <yocto@yoctoproject.org>; Wed, 15 Jul 2015 10:40:50 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Jul 2015 10:40:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,481,1432623600"; 
	d="bb'?scan'208,217";a="765087406"
Received: from kmsmsx152.gar.corp.intel.com ([172.21.73.87])
	by orsmga002.jf.intel.com with ESMTP; 15 Jul 2015 10:40:26 -0700
Received: from kmsmsx153.gar.corp.intel.com ([169.254.5.131]) by
	KMSMSX152.gar.corp.intel.com ([169.254.11.67]) with mapi id
	14.03.0224.002; Thu, 16 Jul 2015 01:40:25 +0800
From: "Ng, Mei Yeen" <mei.yeen.ng@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Packages in packagegroup are not installed in image
Thread-Index: AdC/JTdQ3JBuJ199QBOTZNoIWPVvUA==
Date: Wed, 15 Jul 2015 17:40:23 +0000
Message-ID: <62355CE5B24AE3438DF93AF114E1F91B2DBC9045@KMSMSX153.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 20 Jul 2015 02:42:32 -0700
Cc: "Hart, Darren" <darren.hart@intel.com>, "Witt,
	Randy E" <randy.e.witt@intel.com>
Subject: Packages in packagegroup are not installed in image
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
X-List-Received-Date: Wed, 15 Jul 2015 17:40:57 -0000
X-Groupsio-MsgNum: 25552
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_005_62355CE5B24AE3438DF93AF114E1F91B2DBC9045KMSMSX153garcor_"

--_005_62355CE5B24AE3438DF93AF114E1F91B2DBC9045KMSMSX153garcor_
Content-Type: multipart/alternative;
	boundary="_000_62355CE5B24AE3438DF93AF114E1F91B2DBC9045KMSMSX153garcor_"

--_000_62355CE5B24AE3438DF93AF114E1F91B2DBC9045KMSMSX153garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I need help for issue where packages in packagegroup that compiles perfectl=
y fine with core-images, but when verified in the image, they are not insta=
lled for some reason.
My understanding was that packages listed under RDEPENDS in the packagegrou=
p would get compiled and installed.

Some packages would appear in 1 image and then disappear in the next compil=
ed image.
I'm seeing this when compiling with core-image-full-cmdline and core-image-=
sato.

I have attached the following package group created:

-        graphics package group- ldd would not be installed in the image

-        build essentials extended package group - gdb were not install, gc=
c and mkdosfs will intermittently not install into the image

Any help to shed some light on this is very much appreciated.

Thanks,
MY

--_000_62355CE5B24AE3438DF93AF114E1F91B2DBC9045KMSMSX153garcor_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1698655529;
	mso-list-type:hybrid;
	mso-list-template-ids:-1940115052 1101846732 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:black">Hi,<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:black">I need help for issue wh=
ere packages in packagegroup that compiles perfectly fine with core-images,=
 but when verified in the image, they are not installed for some reason.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black">My understanding was tha=
t packages listed under RDEPENDS in the packagegroup would get compiled and=
 installed.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:black">Some packages would appe=
ar in 1 image and then disappear in the next compiled image.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:black">I&#8217;m seeing this wh=
en compiling with core-image-full-cmdline and core-image-sato.<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:black">&nbsp;<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:black">I have attached the foll=
owing package group created:
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"color:black"><span style=3D"mso=
-list:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:black">graphics package=
 group&#8211; ldd would not be installed in the image
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"color:black"><span style=3D"mso=
-list:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:black">build essentials=
 extended package group &#8211; gdb were not install, gcc and mkdosfs will =
intermittently not install into the image<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help to shed some light on this is very much app=
reciated.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">MY<o:p></o:p></p>
</div>
</body>
</html>

--_000_62355CE5B24AE3438DF93AF114E1F91B2DBC9045KMSMSX153garcor_--

--_005_62355CE5B24AE3438DF93AF114E1F91B2DBC9045KMSMSX153garcor_
Content-Type: application/octet-stream;
	name="packagegroup-core-buildessential-extended.bb"
Content-Description: packagegroup-core-buildessential-extended.bb
Content-Disposition: attachment;
	filename="packagegroup-core-buildessential-extended.bb"; size=1021;
	creation-date="Wed, 15 Jul 2015 17:40:12 GMT";
	modification-date="Wed, 15 Jul 2015 17:40:12 GMT"
Content-Transfer-Encoding: base64

REVTQ1JJUFRJT04gPSAiRXh0ZW5kZWQgbGlzdCBvZiBwYWNrYWdlcyBmb3IgYnVpbGQgZXNzZW50
aWFscyIKTElDRU5TRSA9ICJNSVQiClBSID0gInIxIgoKaW5oZXJpdCBwYWNrYWdlZ3JvdXAKClBB
Q0tBR0VTID0gInBhY2thZ2Vncm91cC1jb3JlLWJ1aWxkZXNzZW50aWFsLWV4dGVuZGVkIgoKUkRF
UEVORFNfcGFja2FnZWdyb3VwLWNvcmUtYnVpbGRlc3NlbnRpYWwtZXh0ZW5kZWQgPSAiXAogICAg
YWxzYS1saWIgXAogICAgYWxzYS11dGlscyBcCiAgICBhdXRvY29uZiBcCiAgICBhdXRvbWFrZSBc
CiAgICBiYXNoIFwKICAgIGJpbnV0aWxzIFwKICAgIGJpbnV0aWxzLXN5bWxpbmtzIFwKICAgIGJp
c29uIFwKICAgIGJ6aXAyIFwKICAgIGNoa2NvbmZpZyBcCiAgICBjbWFrZSBcCiAgICBjb3JldXRp
bHMgXAogICAgY3BwIFwKICAgIGNwcC1zeW1saW5rcyBcCiAgICBkb3Nmc3Rvb2xzIFwgCiAgICBm
aWxlIFwKICAgIGZsZXggXAogICAgZysrIFwKICAgIGcrKy1zeW1saW5rcyBcCiAgICBnYXdrIFwK
ICAgIGdjYyBcCiAgICBnY2Mtc3ltbGlua3MgXAogICAgZ2RiIFwKICAgIGdldHRleHQgXAogICAg
Z2l0IFwKICAgIGdsaWJjIFwKICAgIGdudS1jb25maWcgXAogICAgZ3RrKzMgXAogICAgaW50bHRv
b2wgXAogICAgbGlicHRocmVhZC1zdHVicyBcCiAgICBsaWJzdGRjKysgXAogICAgbGlic3RkYysr
LWRldiBcCiAgICBsaWJ0b29sIFwKICAgIG00IFwKICAgIG1ha2UgXAogICAgbXRvb2xzIFwKICAg
IG5hc20gXAogICAgbmN1cnNlcyBcCiAgICBuc3ByIFwKICAgIHBhdGNoIFwKICAgIHBjaXV0aWxz
IFwKICAgIHBrZ2NvbmZpZyBcCiAgICBwcm9jcHMgXAogICAgcHl0aG9uLW51bXB5IFwKICAgIHJw
bSBcCiAgICBycG1yZXNvbHZlIFwKICAgIHN0cmFjZSBcCiAgICBzeXNsaW51eCBcCiAgICB0YXIg
XAogICAgdHpkYXRhIFwKICAgIHVkZXYgXAogICAgdW56aXAgXAogICAgdXNidXRpbHMgXAogICAg
dXRpbC1saW51eCBcCiAgICB3Z2V0IFwKICAgIHlhc20gXAogICAgemxpYiBcCiAgICAiCg==

--_005_62355CE5B24AE3438DF93AF114E1F91B2DBC9045KMSMSX153garcor_
Content-Type: application/octet-stream;
	name="packagegroup-core-graphics-essential.bb"
Content-Description: packagegroup-core-graphics-essential.bb
Content-Disposition: attachment;
	filename="packagegroup-core-graphics-essential.bb"; size=1575;
	creation-date="Wed, 15 Jul 2015 17:40:15 GMT";
	modification-date="Wed, 15 Jul 2015 17:40:15 GMT"
Content-Transfer-Encoding: base64

U1VNTUFSWSA9ICJBbGwgcGFja2FnZXMgZm9yIGZ1bGwgZ3JhcGhpY3MgdXNlciBzcGFjZSIKTElD
RU5TRSA9ICJNSVQiClBSID0gInIxIgoKUEFDS0FHRV9BUkNIID0gIiR7TUFDSElORV9BUkNIfSIK
aW5oZXJpdCBwYWNrYWdlZ3JvdXAKClBBQ0tBR0VTID0gInBhY2thZ2Vncm91cC1jb3JlLWdyYXBo
aWNzLWVzc2VudGlhbCIKCkFMTE9XX0VNUFRZXyR7UE59ID0gIjEiCgpSREVQRU5EU19wYWNrYWdl
Z3JvdXAtY29yZS1ncmFwaGljcy1lc3NlbnRpYWwgPSAiXAogICAgY2Fpcm8gXAogICAgZmxhYyBc
CiAgICBmb250Y29uZmlnIFwKICAgIGZyZWV0eXBlIFwKICAgIGdsZXcgXAogICAgZ3RrKzMgXAog
ICAganBlZyBcCiAgICBsYW1lIFwKICAgIGxkZCBcCiAgICBsaWJhdiBcCiAgICBsaWJkcm0gXAog
ICAgbGliZ2x1IFwKICAgIGxpYm1hZCBcCiAgICBsaWJvZ2cgXAogICAgbGlicG5nIFwKICAgIGxp
YnBuZzEyIFwKICAgIGxpYnNvdXAtMi40IFwKICAgIGxpYnRoZW9yYSBcCiAgICBsaWJ2YSBcCiAg
ICBsaWJ2YS1pbnRlbC1kcml2ZXIgXAogICAgbGlidm9yYmlzIFwKICAgIG1lc2EgXAogICAgbXBl
ZzJkZWMgXAogICAgcGFuZ28gXAogICAgc3BlZXggXAogICAgeDI2NCBcCiAgICBcCiAgICB4c2Vy
dmVyLXhmODYtY29uZmlnIFwKICAgIHhjYi11dGlsIFwKICAgIHhyYW5kciBcCiAgICBcCiAgICBs
aWJ4MTEgXAogICAgbGlieGNiIFwKICAgIGxpYnhjb21wb3NpdGUgXAogICAgbGlieGN1cnNvciBc
CiAgICBsaWJ4ZGFtYWdlIFwKICAgIGxpYnhleHQgXAogICAgbGlieGZ0IFwKICAgIGxpYnhmb250
IFwKICAgIGxpYnhmaXhlcyBcCiAgICBsaWJ4aSBcCiAgICBsaWJ4aW5lcmFtYSBcCiAgICBsaWJ4
a2Jjb21tb24gXAogICAgbGlieGtiZmlsZSBcCiAgICBsaWJ4cG0gXAogICAgbGlieHJhbmRyIFwK
ICAgIGxpYnhyZW5kZXIgXAogICAgbGlieHNjcm5zYXZlciBcCiAgICBsaWJ4c2htZmVuY2UgXAog
ICAgbGlieHQgXAogICAgbGlieHRzdCBcCiAgICBsaWJ4diBcCiAgICBsaWJ4dm1jIFwKICAgIGxp
Ynh4Zjg2ZGdhIFwKICAgIGxpYnh4Zjg2bWlzYyBcCiAgICBsaWJ4eGY4NnZtIFwKICAgIGxpYnh2
IFwKICAgIFwKICAgIGxsdm0zLjMgXAogICAgb3BlbmN2IFwKICAgIHhyZGIgXAogICAgXAogICAg
Z3N0cmVhbWVyMS4wIFwKICAgIGdzdHJlYW1lcjEuMC1saWJhdiBcCiAgICBnc3RyZWFtZXIxLjAt
b214IFwKICAgIGdzdHJlYW1lcjEuMC1wbHVnaW5zLWJhc2UgXAogICAgZ3N0cmVhbWVyMS4wLXBs
dWdpbnMtZ29vZCBcCiAgICBnc3RyZWFtZXIxLjAtcGx1Z2lucy1iYWQgXAogICAgZ3N0cmVhbWVy
MS4wLXBsdWdpbnMtdWdseSBcCiAgICBnc3RyZWFtZXItdmFhcGktMS4wIFwKICAgIFwKICAgIHdh
eWxhbmQgXAogICAgd2VzdG9uIFwKICAgIFwKICAgIHF0YmFzZSBcCiAgICBxdDUtZGVtby1leHRy
YWZpbGVzIFwKICAgIFwKICAgIGRtaWRlY29kZSBcCiAgICBpbnRlbC1ncHUtdG9vbHMgXAogICAg
cGlnbGl0IFwKICAgIHB5dGhvbi1udW1weSBcCiAgICB2NGwtdXRpbHMgXAogICAgeGRvdG9vbCBc
CiAgICBjaHJvbWl1bSBcCiAgICBmaXJlZm94IFwKICAgICIK

--_005_62355CE5B24AE3438DF93AF114E1F91B2DBC9045KMSMSX153garcor_--
