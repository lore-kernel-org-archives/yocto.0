Return-Path: <Andrei.Ehrlich@corpuls.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56683E0084A; Mon, 26 Jun 2017 11:47:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.245.201.242 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0217]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Mon, 26 Jun 2017 11:47:04 PDT
Received: from mail.corpuls.com (mail.corpuls.com [62.245.201.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57B44E0048B
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 11:47:04 -0700 (PDT)
Received: from EX02.corpuls.local ([::1]) by EX02.corpuls.local ([::1]) with
	mapi id 14.03.0352.000; Mon, 26 Jun 2017 20:46:00 +0200
From: Ehrlich Andrei <Andrei.Ehrlich@corpuls.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto]: cmake and create_symlink using cmake 3.5 and yocto 2.2.2
Thread-Index: AdLurGb4RXeDWFs9SQCh/500urN7kA==
Date: Mon, 26 Jun 2017 18:46:00 +0000
Message-ID: <613B01769C90A14993AA13B38ECD4B858BB6D872@EX02.corpuls.local>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.31.140.98]
MIME-Version: 1.0
Subject: : cmake and create_symlink using cmake 3.5 and yocto 2.2.2
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
X-List-Received-Date: Mon, 26 Jun 2017 18:47:08 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_613B01769C90A14993AA13B38ECD4B858BB6D872EX02corpulsloca_"

--_000_613B01769C90A14993AA13B38ECD4B858BB6D872EX02corpulsloca_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello everybody,

Please excuse the newbie question I want to ask, but I started with yocto a=
nd cmake 3 month ago and now I have a couple of recipes based on cmake. One=
 of that cmake files installs links using following code:

install(
            CODE "execute_process( \
                COMMAND ${CMAKE_COMMAND} -E create_symlink \
                __tool \
                ${CMAKE_INSTALL_PREFIX}/bin/tool_${DST_NAME} \
            )"

When the code is executed in yocto  the do_install task fails with followin=
g error:
failed to create symbolic link '/usr/bin/tool_intf': Permission denied

The cmake code attempts to install the links to the root_fs of my developme=
nt host. The code I write recipes for is currently under development and cm=
ake files are provided by developers. Therefore I would like to use develop=
ers cmake files and avoid permanently updating do_install task in my recipe=
. Unfortunately I can't find any possibility to force the cmake recipe to i=
nstall the links to target root_fs. I would be glad to know if somebody has=
 already faced a similar problem and probably has a solution for it.

Best regards
Andrei Ehrlich

--_000_613B01769C90A14993AA13B38ECD4B858BB6D872EX02corpulsloca_
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
	{margin:0cm;
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello everybody,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please excuse the newbie question I want to ask, but=
 I started with yocto and cmake 3 month ago and now I have a couple of reci=
pes based on cmake. One of that cmake files installs links using following =
code:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>install(<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; CODE &quot;execute_process( \<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; COMMAND ${CMAKE_COMMAND} -E creat=
e_symlink \<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;__tool \<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${CMAKE_INSTALL_PREFIX}/bin/tool_=
${DST_NAME} \<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; )&quot;<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When the code is executed in yocto &nbsp;the do_inst=
all task fails with following error:<o:p></o:p></p>
<p class=3D"MsoNormal"><b>failed to create symbolic link '/usr/bin/tool_int=
f': Permission denied<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The cmake code attempts to install the links to the =
root_fs of my development host. The code I write recipes for is currently u=
nder development and cmake files are provided by developers. Therefore I wo=
uld like to use developers cmake files
 and avoid permanently updating do_install task in my recipe. Unfortunately=
 I can&#8217;t find any possibility to force the cmake recipe to install th=
e links to target root_fs. I would be glad to know if somebody has already =
faced a similar problem and probably has
 a solution for it.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards<o:p></o:p></p>
<p class=3D"MsoNormal">Andrei Ehrlich<o:p></o:p></p>
</div>
</body>
</html>

--_000_613B01769C90A14993AA13B38ECD4B858BB6D872EX02corpulsloca_--
