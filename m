Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5B8DE00342
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2012 15:42:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Jul 2012 15:42:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="196993673"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 23 Jul 2012 15:42:07 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 23 Jul 2012 15:42:06 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.231]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.30]) with mapi id
	14.01.0355.002; Mon, 23 Jul 2012 15:42:06 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ERROR: install: omitting directory 
Thread-Index: Ac1pJGD0Rprg0CJKS4GmchQkrqLMew==
Date: Mon, 23 Jul 2012 22:42:06 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20AD3D8EE@ORSMSX105.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: ERROR: install: omitting directory
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 23 Jul 2012 22:42:07 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D956029D25CF204F948EA0FB515E1EE20AD3D8EEORSMSX105amrcor_"

--_000_D956029D25CF204F948EA0FB515E1EE20AD3D8EEORSMSX105amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have a recipe wherein I am trying to put all the Yocto built files of my =
driver into the final Image like below.

B =3D "${WORKDIR}/build-${TARGET_SYS}"

FILES_${PN} +=3D "/mydriver_build/*"

install -m 0755 -d ${D}/mydriver_build
        for bin_obj in ${B};
        do
                install -D -m 640 $bin_obj ${D}/mydriver_build/
        done

But I get the below error.

Log data follows:
| DEBUG: Executing shell function do_install
| install: omitting directory `/usr/local/src/master/build/tmp/work/x86_64-=
poky-linux/my-driver-1.0-r12/build-x86_64-poky-linux'
| ERROR: Function failed: do_install (see /usr/local/src/master/build/tmp/w=
ork/x86_64-poky-linux/my-driver-1.0-r12/temp/log.do_install.952 for further=
 information)
NOTE: package my-driver-1.0-r12: task do_install: Failed.

What is the error means?  Anything wrong in the recipe above?
Any suggestions please?

Thanks
Kishore.

--_000_D956029D25CF204F948EA0FB515E1EE20AD3D8EEORSMSX105amrcor_
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have a recipe wherein I am trying to put all the Y=
octo built files of my driver into the final Image like below.<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">B =3D &quot;${WORKDIR}/build-${TARGET_SYS}&quot;<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">FILES_${PN} &#43;=3D &quot;/mydriver_build/*&quot;<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">install -m 0755 -d ${D}/mydriver_build<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for =
bin_obj in ${B};<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; do<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -D -m 640 $bin_obj ${D}/mydr=
iver_build/<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; done<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But I get the below error. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Log data follows:<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing shell function do_install<o:p></o=
:p></p>
<p class=3D"MsoNormal">| <b><span style=3D"color:red">install: omitting dir=
ectory `/usr/local/src/master/build/tmp/work/x86_64-poky-linux/my-driver-1.=
0-r12/build-x86_64-poky-linux'<o:p></o:p></span></b></p>
<p class=3D"MsoNormal">| ERROR: Function failed: do_install (see /usr/local=
/src/master/build/tmp/work/x86_64-poky-linux/my-driver-1.0-r12/temp/log.do_=
install.952 for further information)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: package my-driver-1.0-r12: task do_install: Fa=
iled.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What is the error means?&nbsp; Anything wrong in the=
 recipe above?<o:p></o:p></p>
<p class=3D"MsoNormal">Any suggestions please?&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Kishore.<o:p></o:p></p>
</div>
</body>
</html>

--_000_D956029D25CF204F948EA0FB515E1EE20AD3D8EEORSMSX105amrcor_--
