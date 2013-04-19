Return-Path: <dean.saridakis@baesystems.com>
Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com
	[149.32.232.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82200E0146C
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 16:04:25 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.87,512,1363132800"; d="scan'208,217";a="6334607"
X-IronPort-AV: E=Sophos;i="4.87,512,1363132800"; 
	d="scan'208,217";a="180500468"
From: "Saridakis, Dean   (US SSA)" <dean.saridakis@baesystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Trouble patching a package
Thread-Index: Ac49Tzt5WmvYvG9OSxuDNOwojA3kOQ==
Date: Fri, 19 Apr 2013 23:04:20 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.37.161.240]
MIME-Version: 1.0
Subject: Trouble patching a package
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
X-List-Received-Date: Fri, 19 Apr 2013 23:04:25 -0000
Message-ID: <MADEUP.15D95860F1A9C547.27608@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_B98BBFB67D89184E8E876F332BDBC3E0A23DF1GLDMS85001goldlnk_"

--_000_B98BBFB67D89184E8E876F332BDBC3E0A23DF1GLDMS85001goldlnk_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Seems like this ought to be pretty easy based on the docs - Not sure what I=
've got wrong. I've added an append to my layer w/

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"

SRC_URI +=3D "0001-yada-yada.patch"

# Comment out while debugging
#PRINC :=3D "${@int(PRINC) + 1}"

The append file is in BBFILES. The patch file is in the same dir as the app=
end file (using a files sub-dir didn't help). Been doing "bitbake -c patch =
-f pkg" to test/debug. (pkg is canutils, which is autconf based)

Ran into a couple thing I didn't understand trying to debug. I tried adding

do_patch_append() {
    bbnote "Got here "
}

to log my append file was getting picked up, but the parse failed.

Didn't get errors if the patch file name was wrong. The log only has a git =
ls-remote (which seems a little odd).

Any help would be appreciated.

Dean


--_000_B98BBFB67D89184E8E876F332BDBC3E0A23DF1GLDMS85001goldlnk_
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
<p class=3D"MsoNormal">Seems like this ought to be pretty easy based on the=
 docs - Not sure what I&#8217;ve got wrong. I&#8217;ve added an append to m=
y layer w/<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">FILESEXTRAPATHS_prepend :=
=3D &quot;${THISDIR}/${PN}:&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">SRC_URI &#43;=3D &quot;00=
01-yada-yada.patch&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"># Comment out while debug=
ging<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#PRINC :=3D &quot;${@int(=
PRINC) &#43; 1}&quot;&nbsp;&nbsp;&nbsp;&nbsp; <o:p>
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The append file is in BBFILES. The patch file is in =
the same dir as the append file (using a files sub-dir didn&#8217;t help). =
Been doing &#8220;bitbake -c patch -f pkg&#8221; to test/debug. (pkg is can=
utils, which is autconf based)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Ran into a couple thing I didn&#8217;t understand tr=
ying to debug. I tried adding<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">do_patch_append() {<o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&nbsp;&nbsp;&nbsp; bbnote=
 &quot;Got here &quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">to log my append file was getting picked up, but the=
 parse failed.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Didn&#8217;t get errors if the patch file name was w=
rong. The log only has a git ls-remote (which seems a little odd).<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help would be appreciated.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Dean<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_B98BBFB67D89184E8E876F332BDBC3E0A23DF1GLDMS85001goldlnk_--
