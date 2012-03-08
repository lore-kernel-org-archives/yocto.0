Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91CC7E013A2
	for <yocto@yoctoproject.org>; Wed,  7 Mar 2012 16:48:44 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Mar 2012 16:48:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="116150233"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 07 Mar 2012 16:48:43 -0800
Received: from orsmsx101.amr.corp.intel.com (10.22.225.128) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 7 Mar 2012 16:48:43 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.233]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.188]) with mapi id
	14.01.0355.002; Wed, 7 Mar 2012 16:48:42 -0800
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: mesa 7.9.1 version fails for master branch
Thread-Index: Acz8xTQ8Clf29XP3SymgvHu2e60ciw==
Date: Thu, 8 Mar 2012 00:48:40 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE2035D70B6@ORSMSX105.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: mesa 7.9.1 version fails for master branch
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
X-List-Received-Date: Thu, 08 Mar 2012 00:48:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D956029D25CF204F948EA0FB515E1EE2035D70B6ORSMSX105amrcor_"

--_000_D956029D25CF204F948EA0FB515E1EE2035D70B6ORSMSX105amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have mesa 7.9.1 overriding in my machine.conf with PREFERRED_VERSION_mesa=
-dri ?=3D "7.9.1"
And  building with poky/master and meta-intel/master, however the mesa reci=
pe build fails while applying the patches.

Below is the details of the error.

mesa/mesa-dri_7.9.1.bb, do_patch)
NOTE: package mesa-dri-2_7.9.1-r2: task do_patch: Started
ERROR: Command Error: exit status: 1  Output:
Applying patch crossfix.patch
can't find file to patch at input line 7
Perhaps you used the wrong -p or --strip option?
The text leading up to this was:
--------------------------
|Upstream-Status: Pending
|
|Index: Mesa-7.5/bin/mklib
|=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
|--- Mesa-7.5.orig/bin/mklib    2009-08-12 13:01:34.000000000 +0100
|+++ Mesa-7.5/bin/mklib    2009-08-12 13:04:19.000000000 +0100
--------------------------
No file to patch.  Skipping patch.
1 out of 1 hunk ignored
Patch crossfix.patch does not apply (enforce with -f)
ERROR: Function failed: patch_do_patch


Could any one point what went wrong here?  Do we need a different patches f=
or 7.9.1 version?

The same mesa 7.9.1 recipe works fine with Edison branch.

Thanks
Kishore.

--_000_D956029D25CF204F948EA0FB515E1EE2035D70B6ORSMSX105amrcor_
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
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">I have mesa 7.9.1 overriding in my machine.co=
nf with PREFERRED_VERSION_mesa-dri ?=3D &quot;7.9.1&quot;<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">And &nbsp;building with poky/master and meta-=
intel/master, however the mesa recipe build fails while applying the patche=
s.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">Below is the details of the error.
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">mesa/mesa-dri_7.9.1.bb, do_patch)<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">NOTE: package mesa-dri-2_7.9.1-r2: task do_pa=
tch: Started<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">ERROR: Command Error: exit status: 1&nbsp; Ou=
tput:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">Applying patch crossfix.patch<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">can't find file to patch at input line 7<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">Perhaps you used the wrong -p or --strip opti=
on?<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">The text leading up to this was:<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">--------------------------<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">|Upstream-Status: Pending<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">|<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">|Index: Mesa-7.5/bin/mklib<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">|=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">|--- Mesa-7.5.orig/bin/mklib&nbsp;&nbsp;&nbsp=
; 2009-08-12 13:01:34.000000000 &#43;0100<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">|&#43;&#43;&#43; Mesa-7.5/bin/mklib&nbsp;&nbs=
p;&nbsp; 2009-08-12 13:04:19.000000000 &#43;0100<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">--------------------------<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">No file to patch.&nbsp; Skipping patch.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">1 out of 1 hunk ignored<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">Patch crossfix.patch does not apply (enforce =
with -f)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">ERROR: Function failed: patch_do_patch<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Could any one point what went wrong here? &nbsp;Do w=
e need a different patches for 7.9.1 version?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The same mesa 7.9.1 recipe works fine with Edison br=
anch.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Kishore.<o:p></o:p></p>
</div>
</body>
</html>

--_000_D956029D25CF204F948EA0FB515E1EE2035D70B6ORSMSX105amrcor_--
