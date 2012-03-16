Return-Path: <chiu-pi.shih@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEB2EE013AB
	for <Yocto@yoctoproject.org>; Fri, 16 Mar 2012 11:57:03 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 16 Mar 2012 11:57:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208,217";a="78463562"
Received: from azsmsx603.amr.corp.intel.com ([10.2.161.23])
	by AZSMGA002.ch.intel.com with ESMTP; 16 Mar 2012 11:57:03 -0700
Received: from azsmsx604.amr.corp.intel.com (10.2.161.34) by
	azsmsx603.amr.corp.intel.com (10.2.161.23) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 16 Mar 2012 11:57:03 -0700
Received: from fmsmsx108.amr.corp.intel.com (10.19.9.228) by
	azsmsx604.amr.corp.intel.com (10.2.161.34) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 16 Mar 2012 11:57:03 -0700
Received: from fmsmsx103.amr.corp.intel.com ([169.254.3.243]) by
	FMSMSX108.amr.corp.intel.com ([169.254.10.241]) with mapi id
	14.01.0355.002; Fri, 16 Mar 2012 11:57:02 -0700
From: "Shih, Chiu-Pi" <chiu-pi.shih@intel.com>
To: "Yocto@yoctoproject.org" <Yocto@yoctoproject.org>
Thread-Topic: Failure expanding variable OE_FEATURES - Poky-1.2_M2.final
Thread-Index: Ac0DppIWy1ZfyTqnQvm23XxPv3ReGQ==
Date: Fri, 16 Mar 2012 18:57:01 +0000
Message-ID: <EEBED312D613344FA54373CD9A08D4BD05AC7239@FMSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
X-Mailman-Approved-At: Sat, 17 Mar 2012 09:42:53 -0700
Subject: Failure expanding variable OE_FEATURES - Poky-1.2_M2.final
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
X-List-Received-Date: Fri, 16 Mar 2012 18:57:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_EEBED312D613344FA54373CD9A08D4BD05AC7239FMSMSX103amrcor_"

--_000_EEBED312D613344FA54373CD9A08D4BD05AC7239FMSMSX103amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I am getting the following error using poky-1.2_M2.final.

[tmelab@fc16tmelab build]$ bitbake core-image-minimal
Pseudo is not present but is required, building this first before the main =
build    (guess this does not really matter? I did add user in /etc/sudoers=
 though)
ERROR: Failure expanding variable OE_FEATURES[:=3D], expression was ${@feat=
ures_to_uclibc_conf(d)} which triggered exception AttributeError: 'NoneType=
' object has no attribute 'split'
ERROR: Command execution failed: Exited with 1
Summary: There were 1 WARNING messages shown.

Summary: There were 1 ERROR messages shown, returning a non-zero exit code.

I did a search on the OE_FEATURES and found some instances, how do I fix th=
is?

Thanks,
Chiu-Pi

[tmelab@fc16tmelab poky-1.2_M2.final]$ find . -exec grep OE_FEATURES {} \; =
-print
OE_FEATURES :=3D "${@features_to_uclibc_conf(d)}"
  if "${OE_FEATURES}":
                   ("\\n<file:///\\n>".join((bb.data.expand("${OE_FEATURES}=
", d).split("\n")))))
./meta/recipes-core/uclibc/uclibc.inc
OE_FEATURES :=3D "${@features_to_busybox_conf(d)}"
  if "${OE_FEATURES}":
                   ("\\n<file:///\\n>".join((bb.data.expand("${OE_FEATURES}=
", d).split("\n")))))
./meta/recipes-core/busybox/busybox.inc
OE_FEATURES =3D "${@features_to_eglibc_settings(d)}"
        echo '${OE_FEATURES}' > ${B}/option-groups.config
./meta/recipes-core/eglibc/eglibc.inc
ERROR: Failure expanding variable OE_FEATURES[:=3D], expression was ${@feat=
ures_to_uclibc_conf(d)} which triggered exception AttributeError: 'NoneType=
' object has no attribute 'split'
./build/tmp/cooker.log.20120315204404
[tmelab@fc16tmelab poky-1.2_M2.final]$


--_000_EEBED312D613344FA54373CD9A08D4BD05AC7239FMSMSX103amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:PMingLiU;
	panose-1:2 2 3 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@PMingLiU";
	panose-1:2 2 3 0 0 0 0 0 0 0;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">I am getting the following error using poky-1.2_M2.f=
inal.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[tmelab@fc16tmelab build]$ bitbake core-image-minima=
l<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Pseudo is not present =
but is required, building this first before the main build&nbsp;&nbsp;&nbsp=
; (guess this does not really matter? I did add user in /etc/sudoers though=
)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">ERROR</span><span styl=
e=3D"color:red">: Failure expanding variable OE_FEATURES[:=3D], expression =
was ${@features_to_uclibc_conf(d)} which triggered exception AttributeError=
: 'NoneType' object has no attribute 'split'</span><span style=3D"color:#1F=
497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal">ERROR: Command execution failed: Exited with 1<o:p><=
/o:p></p>
<p class=3D"MsoNormal">Summary: There were 1 WARNING messages shown.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:double =
windowtext 2.25pt;padding:0in 0in 1.0pt 0in">
<p class=3D"MsoNormal" style=3D"border:none;padding:0in">Summary: There wer=
e 1 ERROR messages shown, returning a non-zero exit code.<o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I did a search on the OE_FEATURES and found some ins=
tances, how do I fix this?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Chiu-Pi<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[tmelab@fc16tmelab poky-1.2_M2.final]$ find . -exec =
grep OE_FEATURES {} \; -print<o:p></o:p></p>
<p class=3D"MsoNormal">OE_FEATURES :=3D &quot;${@features_to_uclibc_conf(d)=
}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; if &quot;${OE_FEATURES}&quot;:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (&quot;<a href=3D"=
file:///\\n">\\n</a>&quot;.join((bb.data.expand(&quot;${OE_FEATURES}&quot;,=
 d).split(&quot;\n&quot;)))))<o:p></o:p></p>
<p class=3D"MsoNormal"><b>./meta/recipes-core/uclibc/uclibc.inc<o:p></o:p><=
/b></p>
<p class=3D"MsoNormal">OE_FEATURES :=3D &quot;${@features_to_busybox_conf(d=
)}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; if &quot;${OE_FEATURES}&quot;:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;(&quot;<a href=3D"=
file:///\\n">\\n</a>&quot;.join((bb.data.expand(&quot;${OE_FEATURES}&quot;,=
 d).split(&quot;\n&quot;)))))<o:p></o:p></p>
<p class=3D"MsoNormal"><b>./meta/recipes-core/busybox/busybox.inc<o:p></o:p=
></b></p>
<p class=3D"MsoNormal">OE_FEATURES =3D &quot;${@features_to_eglibc_settings=
(d)}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo '${O=
E_FEATURES}' &gt; ${B}/option-groups.config<o:p></o:p></p>
<p class=3D"MsoNormal"><b>./meta/recipes-core/eglibc/eglibc.inc<o:p></o:p><=
/b></p>
<p class=3D"MsoNormal">ERROR: Failure expanding variable OE_FEATURES[:=3D],=
 expression was ${@features_to_uclibc_conf(d)} which triggered exception At=
tributeError: 'NoneType' object has no attribute 'split'<o:p></o:p></p>
<p class=3D"MsoNormal">./build/tmp/cooker.log.20120315204404<o:p></o:p></p>
<p class=3D"MsoNormal">[tmelab@fc16tmelab poky-1.2_M2.final]$<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_EEBED312D613344FA54373CD9A08D4BD05AC7239FMSMSX103amrcor_--
