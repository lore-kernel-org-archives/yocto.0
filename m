Return-Path: <cristiana.voicu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D98D9E0148D
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 01:38:46 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 Mar 2013 01:38:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,876,1355126400"; 
	d="scan'208,217";a="305709557"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga001.fm.intel.com with ESMTP; 20 Mar 2013 01:38:32 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 20 Mar 2013 08:38:31 +0000
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.99]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.245]) with mapi id
	14.01.0355.002; Wed, 20 Mar 2013 08:38:31 +0000
From: "Voicu, Cristiana" <cristiana.voicu@intel.com>
To: Andreas Enbacka <aenbacka@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Hob custom image build error
Thread-Index: Ac4khGNUjVaeGg9jRJegusgWFd4VLAAweIaQ
Date: Wed, 20 Mar 2013 08:38:31 +0000
Message-ID: <BE68E9C8E0850C43B0F0B0B7D57FA5AE194082A0@IRSMSX101.ger.corp.intel.com>
References: <005501ce2484$b1558d20$1400a760$@gmail.com>
In-Reply-To: <005501ce2484$b1558d20$1400a760$@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Re: Hob custom image build error
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
X-List-Received-Date: Wed, 20 Mar 2013 08:38:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BE68E9C8E0850C43B0F0B0B7D57FA5AE194082A0IRSMSX101gercor_"

--_000_BE68E9C8E0850C43B0F0B0B7D57FA5AE194082A0IRSMSX101gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Andreas,

It seems this is a regression. I have open a bug for this issue(https://bug=
zilla.yoctoproject.org/show_bug.cgi?id=3D4065) and I will work on it.
Thanks,
Cristiana


From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Andreas Enbacka
Sent: Tuesday, March 19, 2013 11:33 AM
To: yocto@yoctoproject.org
Subject: [yocto] Hob custom image build error

Hello,

Whenever I build a custom image in Hob (using Create your own image), I get=
 the following error output once the image build stage is completed:

Traceback (most recent call last):
  File "/home/user/poky/bitbake/lib/bb/ui/crumbs/builder.py", line 1096, in=
 handler_build_succeeded_cb
    self.build_succeeded()
  File "/home/user/poky/bitbake/lib/bb/ui/crumbs/builder.py", line 1029, in=
 build_succeeded
    version =3D self.recipe_model.get_custom_image_version()
  File "/home/user/poky/bitbake/lib/bb/ui/crumbs/hoblistmodel.py", line 696=
, in get_custom_image_version
    return self.custom_image_version
AttributeError: 'RecipeListModel' object has no attribute 'custom_image_ver=
sion'

The UI is the stuck at 99% (do_build). However, the image build process has=
 otherwise succeeded (the image files exist in the images folder). However,=
 Hob needs to be force closed.

Best regards,
Andreas Enbacka

--_000_BE68E9C8E0850C43B0F0B0B7D57FA5AE194082A0IRSMSX101gercor_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 56.7pt 70.85pt 56.7pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hello Andreas,<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">It seems this is a reg=
ression. I have open a bug for this issue(<a href=3D"https://bugzilla.yocto=
project.org/show_bug.cgi?id=3D4065">https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D4065</a>) and I will work on
 it.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Cristiana<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Andreas Enbacka<br>
<b>Sent:</b> Tuesday, March 19, 2013 11:33 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Hob custom image build error<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"SV-FI">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"SV-FI"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Whenever I build a custom image in Hob (using Create=
 your own image), I get the following error output once the image build sta=
ge is completed:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Traceback (most recent call last):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; File &quot;/home/user/poky/bitbake/lib/bb/ui/=
crumbs/builder.py&quot;, line 1096, in handler_build_succeeded_cb<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; self.build_succeeded()<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp; File &quot;/home/user/poky/bitbake/lib/bb/ui/=
crumbs/builder.py&quot;, line 1029, in build_succeeded<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; version =3D self.recipe_model.get=
_custom_image_version()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; File &quot;/home/user/poky/bitbake/lib/bb/ui/=
crumbs/hoblistmodel.py&quot;, line 696, in get_custom_image_version<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; return self.custom_image_version<=
o:p></o:p></p>
<p class=3D"MsoNormal">AttributeError: 'RecipeListModel' object has no attr=
ibute 'custom_image_version'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The UI is the stuck at 99% (do_build). However, the =
image build process has otherwise succeeded (the image files exist in the i=
mages folder). However, Hob needs to be force closed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Andreas Enbacka<o:p></o:p></p>
</div>
</body>
</html>

--_000_BE68E9C8E0850C43B0F0B0B7D57FA5AE194082A0IRSMSX101gercor_--
