Return-Path: <lukasz.kubalski.ext@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C92FE00B44; Wed,  9 Dec 2015 23:25:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [93.183.12.32 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 631 seconds by postgrey-1.32 at yocto-www;
	Wed, 09 Dec 2015 23:25:31 PST
Received: from demumfd001.nsn-inter.net (demumfd001.nsn-inter.net
	[93.183.12.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8551DE00457
	for <yocto@yoctoproject.org>; Wed,  9 Dec 2015 23:25:31 -0800 (PST)
Received: from demuprx017.emea.nsn-intra.net ([10.150.129.56])
	by demumfd001.nsn-inter.net (8.15.2/8.15.2) with ESMTPS id
	tBA7Exvp030937
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 07:14:59 GMT
Received: from DEMUHTC003.nsn-intra.net ([10.159.42.34])
	by demuprx017.emea.nsn-intra.net (8.12.11.20060308/8.12.11) with ESMTP
	id tBA7Ew7u005453
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 08:14:59 +0100
Received: from DEMUHTC011.nsn-intra.net (10.159.42.42) by
	DEMUHTC003.nsn-intra.net (10.159.42.34) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Thu, 10 Dec 2015 08:14:58 +0100
Received: from DEMUMBX004.nsn-intra.net ([169.254.4.182]) by
	DEMUHTC011.nsn-intra.net ([10.159.42.42]) with mapi id 14.03.0248.002;
	Thu, 10 Dec 2015 08:14:58 +0100
From: "Kubalski, Lukasz (EXT-Espotel - PL/Wroclaw)"
	<lukasz.kubalski.ext@nokia.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [Custom PV for Image] Image not build correctyl - exits with
	an error
Thread-Index: AdEzGmUcXSXvuwXZTt2PcxZvHg4RhQ==
Date: Thu, 10 Dec 2015 07:14:57 +0000
Message-ID: <1BDA3F91DD18BA459E26B6B10F84A8D7010AA7EA@DEMUMBX004.nsn-intra.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.159.42.115]
MIME-Version: 1.0
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for
	further information)
X-purgate-size: 11446
X-purgate-ID: 151667::1449731699-00002C61-9DCB72BE/0/0
Subject: [Custom PV for Image] Image not build correctyl - exits with an error
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
X-List-Received-Date: Thu, 10 Dec 2015 07:25:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1BDA3F91DD18BA459E26B6B10F84A8D7010AA7EADEMUMBX004nsnin_"

--_000_1BDA3F91DD18BA459E26B6B10F84A8D7010AA7EADEMUMBX004nsnin_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

In our project we had an idea to use more customized Image names based on P=
V.

The idea was to set PV to format CommitDate.hash.
I achieved that by creating class and inheriting it in our image .bb recipe=
s.

Class content (brief):
    DESCRIPTION =3D "Class for automatic recipe versioning based on git com=
mit date and hash"
    python () {
        # Override default PV value with new BuildVersion string
        bb.data.setVar('PV', getBuildVersion(), d)
    }
        *** getBuildVersion() just gets Date and Hash of commit (code is no=
t relevant for described problem - method works ok)

Now we noticed problem in scenario like this:

1.       Build image (bitbake rfsw-image-minimal)

2.       Update meta (do anything that changes meta commit (affects our PV)=
 - e.g. git pull)

3.       Build the same image (bitbake rfsw-image-minimal)

The problem is that bitbake does not fully notices changed (PV) Version and=
 however uses new PV for build (new build directory)  it does not build new=
 rootfs and exits with error about not existing files.

I'm aware of the difference from case when PV is changed statically in reci=
pe content - as they change recipe checksum and that properly forces rootfs=
 to be rebuilt.
But In my case when PV value is generated fully dynamically bitbake does no=
t work as we would expect.

Is there any solution for that?
Is that expected behaviour?

Br, Lukasz

--_000_1BDA3F91DD18BA459E26B6B10F84A8D7010AA7EADEMUMBX004nsnin_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:744955557;
	mso-list-type:hybrid;
	mso-list-template-ids:137011526 -1146878448 134807555 134807557 134807553 =
134807555 134807557 134807553 134807555 134807557;}
@list l0:level1
	{mso-level-start-at:28;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:24.75pt;
	text-indent:-18.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:60.75pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:96.75pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:132.75pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:168.75pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:204.75pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:240.75pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:276.75pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:312.75pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1
	{mso-list-id:757747642;
	mso-list-type:hybrid;
	mso-list-template-ids:-2115483412 134807567 134807577 134807579 134807567 =
134807577 134807579 134807567 134807577 134807579;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In our project we had an idea to use more customized=
 Image names based on PV.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The idea was to set PV to format CommitDate.hash.<o:=
p></o:p></p>
<p class=3D"MsoNormal">I achieved that by creating class and inheriting it =
in our image .bb recipes.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Class content (brief):<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Cou=
rier New&quot;">&nbsp;&nbsp;&nbsp; DESCRIPTION =3D &quot;Class for automati=
c recipe versioning based on git commit date and hash&quot;<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Cou=
rier New&quot;">&nbsp;&nbsp;&nbsp; python () {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Cou=
rier New&quot;">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;# Override defau=
lt PV value with new BuildVersion string&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Cou=
rier New&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bb.data.set=
Var('PV', getBuildVersion(), d)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Cou=
rier New&quot;">&nbsp;&nbsp;&nbsp; }<o:p></o:p></span></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *** getBu=
ildVersion() just gets Date and Hash of commit (code is not relevant for de=
scribed problem - method works ok)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now we noticed problem in scenario like this:<o:p></=
o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l1 leve=
l1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">1.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>Build image (bitbake rfsw-image-minimal)<o:p></o:p>=
</p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l1 leve=
l1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">2.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>Update meta (do anything that changes meta commit (=
affects our PV) &#8211; e.g. git pull)<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l1 leve=
l1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">3.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>Build the same image (bitbake rfsw-image-minimal)<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The problem is that bitbake does not fully notices c=
hanged (PV) Version and however uses new PV for build (new build directory)=
 &nbsp;it does not build new rootfs and exits with error about not existing=
 files.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m aware of the difference from case when PV =
is changed statically in recipe content &#8211; as they change recipe check=
sum and that properly forces rootfs to be rebuilt.<o:p></o:p></p>
<p class=3D"MsoNormal">But In my case when PV value is generated fully dyna=
mically bitbake does not work as we would expect.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there any solution for that?<o:p></o:p></p>
<p class=3D"MsoNormal">Is that expected behaviour?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Br, Lukasz<o:p></o:p></p>
</div>
</body>
</html>

--_000_1BDA3F91DD18BA459E26B6B10F84A8D7010AA7EADEMUMBX004nsnin_--
