Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55979E0044A
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 11:09:35 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 04 Apr 2012 11:08:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; 
	d="scan'208,217";a="128701145"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by orsmga002.jf.intel.com with ESMTP; 04 Apr 2012 11:08:58 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 4 Apr 2012 11:08:58 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.128]) with mapi id
	14.01.0355.002; Wed, 4 Apr 2012 11:08:58 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "Khor, Boon Pin" <boon.pin.khor@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Yocto Project 1.2 Beta testing instructions
Thread-Index: Ac0G5p6rs3LzULpHTMe90fTRP99+DALG75yAACLaedA=
Date: Wed, 4 Apr 2012 18:08:58 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A46AF10FD@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A46AE31E3@ORSMSX101.amr.corp.intel.com>
	<F9AC6E797E022941A4CD80AAEDFAD67D43756F@PGSMSX103.gar.corp.intel.com>
In-Reply-To: <F9AC6E797E022941A4CD80AAEDFAD67D43756F@PGSMSX103.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: Yocto Project 1.2 Beta testing instructions
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
X-List-Received-Date: Wed, 04 Apr 2012 18:09:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A46AF10FDORSMSX101amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A46AF10FDORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Can someone help answer the following question? This happens during Boon Pi=
n's beta testing using the build at:
 http://git.yoctoproject.org/cgit/cgit.cgi/poky/snapshot/poky-8e9f6fc77ac47=
63f4ed1f6e7b720420c220ba6e2.tar.bz2 .

Song

From: Khor, Boon Pin
Sent: Tuesday, April 03, 2012 6:32 PM
To: Liu, Song
Subject: RE: Yocto Project 1.2 Beta testing instructions

Hi Song

On my ubuntu 11 .10 64bits machine


I run till
| Processing task-core-boot...
| Manifest: /home/nemo/yp-beta-build/tmp/work/qemux86-poky-linux/core-image=
-minimal-1.0-r0/rootfs/install/install.manifest
| local: 1: -Uhv: bad variable name
NOTE: package core-image-minimal-1.0-r0: task do_rootfs: Failed
ERROR: Task 8 (/home/nemo/yp-beta/meta/recipes-core/images/core-image-minim=
al.bb, do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1329 tasks of which 287 didn't need to be re=
run and 1 failed.

Summary: 1 task failed:
  /home/nemo/yp-beta/meta/recipes-core/images/core-image-minimal.bb, do_roo=
tfs
Summary: There were 12 WARNING messages shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

# Install manifest
/home/nemo/yp-beta-build/tmp/deploy/rpm/qemux86/task-core-boot-1.0-r9.qemux=
86.rpm

Maybe I am missing rpm packages in ubuntu ?

Thanks
Boon Pin


--_000_7E680CB2A76BB8438D08CF13C09FC53A46AF10FDORSMSX101amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:dt=3D"uuid:C2F4101=
0-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://schemas.microsoft.com/offi=
ce/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
p.Default, li.Default, div.Default
	{mso-style-name:Default;
	margin:0in;
	margin-bottom:.0001pt;
	text-autospace:none;
	font-size:12.0pt;
	font-family:Consolas;
	color:black;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"Default"><span style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">Can someone help answer the following questi=
on? This happens during Boon Pin&#8217;s beta testing using the build at:
</span><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<span style=3D"font-size:10.5pt"><a href=3D"ht=
tp://git.yoctoproject.org/cgit/cgit.cgi/poky/snapshot/poky-8e9f6fc77ac4763f=
4ed1f6e7b720420c220ba6e2.tar.bz2">http://git.yoctoproject.org/cgit/cgit.cgi=
/poky/snapshot/poky-8e9f6fc77ac4763f4ed1f6e7b720420c220ba6e2.tar.bz2</a>
 .<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">Song</span><span st=
yle=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Khor, Bo=
on Pin
<br>
<b>Sent:</b> Tuesday, April 03, 2012 6:32 PM<br>
<b>To:</b> Liu, Song<br>
<b>Subject:</b> RE: Yocto Project 1.2 Beta testing instructions<o:p></o:p><=
/span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi Song <o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">On my ubuntu 11 .10 64=
bits machine
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I run till <o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">| Processing task-core=
-boot...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">| Manifest: /home/nemo=
/yp-beta-build/tmp/work/qemux86-poky-linux/core-image-minimal-1.0-r0/rootfs=
/install/install.manifest<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">| local: 1: -Uhv: bad =
variable name<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">NOTE: package core-ima=
ge-minimal-1.0-r0: task do_rootfs: Failed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">ERROR: Task 8 (/home/n=
emo/yp-beta/meta/recipes-core/images/core-image-minimal.bb, do_rootfs) fail=
ed with exit code '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">NOTE: Tasks Summary: A=
ttempted 1329 tasks of which 287 didn't need to be rerun and 1 failed.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Summary: 1 task failed=
:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; /home/nemo/yp-b=
eta/meta/recipes-core/images/core-image-minimal.bb, do_rootfs<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Summary: There were 12=
 WARNING messages shown.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Summary: There was 1 E=
RROR message shown, returning a non-zero exit code.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"># Install manifest<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">/home/nemo/yp-beta-bui=
ld/tmp/deploy/rpm/qemux86/task-core-boot-1.0-r9.qemux86.rpm<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Maybe I am missing rpm=
 packages in ubuntu ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks <o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Boon Pin <o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A46AF10FDORSMSX101amrcor_--
