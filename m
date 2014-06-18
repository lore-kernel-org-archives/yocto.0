Return-Path: <CWernham@Airspan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F802E00B67; Wed, 18 Jun 2014 05:31:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 70 seconds by postgrey-1.32 at yocto-www;
	Wed, 18 Jun 2014 05:31:33 PDT
Received: from mail.airspan.com (mail.airspan.com [188.39.32.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3B27E00AFD
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 05:31:33 -0700 (PDT)
Received: from FS7.airspan.com ([fe80::b06e:8f73:fac6:89c]) by FS7.airspan.com
	([fe80::b06e:8f73:fac6:89c%12]) with mapi id 14.03.0181.006;
	Wed, 18 Jun 2014 13:30:21 +0100
From: Colin Wernham <CWernham@Airspan.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: ExpansionError during parsing busybox 1.21.1 name 'find_cfgs'
	is not defined
Thread-Index: Ac+K8FJb0KD23oS6RPmnrxiGsZwEMg==
Date: Wed, 18 Jun 2014 12:30:20 +0000
Message-ID: <40141B299C8BE144ADF87C350BD9A61604336F@FS7.airspan.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.2.35.30]
MIME-Version: 1.0
Subject: ExpansionError during parsing busybox 1.21.1 name 'find_cfgs' is not defined
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
X-List-Received-Date: Wed, 18 Jun 2014 12:31:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_40141B299C8BE144ADF87C350BD9A61604336FFS7airspancom_"

--_000_40141B299C8BE144ADF87C350BD9A61604336FFS7airspancom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm getting the following intermittent error when I run a bitbake recipe to=
 build an entire filesystem (after removing all temporary files, sstate cac=
he etc):

ERROR: ExpansionError during parsing /home/cwernham/git/TiTarget/sources/oe=
-core/meta/recipes-core/busybox/busybox_1.21.1.bb: Failure expanding variab=
le do_configure: ExpansionError: Failure expanding variable do_configure, e=
xpression was  do_prepare_config

   merge_config.sh -m .config ${@" ".join(find_cfgs(d))}

   cml1_do_configure

which triggered exception NameError: name 'find_cfgs' is not defined

ERROR: Command execution failed: Exited with 1

Running the same command again (after removing all temporary files, sstate =
cache etc) usually works ok, so why this problem?
Is it because  of a script race condition (I have BB_NUMBER_THREADS =3D 4),=
 or slow internet server connection? I have tarballs of all packages needed=
.

--_000_40141B299C8BE144ADF87C350BD9A61604336FFS7airspancom_
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I&#8217;m getting the following intermittent error w=
hen I run a bitbake recipe to build an entire filesystem (after removing al=
l temporary files, sstate cache etc):<o:p></o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"font-size:11.5=
pt;font-family:&quot;Courier New&quot;;color:black">ERROR: ExpansionError d=
uring parsing /home/cwernham/git/TiTarget/sources/oe-core/meta/recipes-core=
/busybox/busybox_1.21.1.bb: Failure expanding
 variable do_configure: ExpansionError: Failure expanding variable do_confi=
gure, expression was &nbsp;do_prepare_config</span><o:p></o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"font-size:11.5=
pt;font-family:&quot;Courier New&quot;;color:black">&nbsp;&nbsp;&nbsp;merge=
_config.sh -m .config ${@&quot; &quot;.join(find_cfgs(d))}</span><o:p></o:p=
></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"font-size:11.5=
pt;font-family:&quot;Courier New&quot;;color:black">&nbsp;&nbsp;&nbsp;cml1_=
do_configure</span><o:p></o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"font-size:11.5=
pt;font-family:&quot;Courier New&quot;;color:black">which triggered excepti=
on NameError: name 'find_cfgs' is not defined</span><o:p></o:p></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt"><span style=3D"font-size:11.5=
pt;font-family:&quot;Courier New&quot;;color:black">ERROR: Command executio=
n failed: Exited with 1</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Running the same command again (after removing all t=
emporary files, sstate cache etc) usually works ok, so why this problem?<o:=
p></o:p></p>
<p class=3D"MsoNormal">Is it because &nbsp;of a script race condition (I ha=
ve BB_NUMBER_THREADS =3D 4), or slow internet server connection? I have tar=
balls of all packages needed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
</div>
</body>
</html>

--_000_40141B299C8BE144ADF87C350BD9A61604336FFS7airspancom_--
