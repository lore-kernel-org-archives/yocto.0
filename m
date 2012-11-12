Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 774D3E013AF
	for <yocto@yoctoproject.org>; Sun, 11 Nov 2012 21:42:27 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Nov 2012 21:41:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,759,1344236400"; 
	d="scan'208,217";a="240499426"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga002.jf.intel.com with ESMTP; 11 Nov 2012 21:42:07 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.82]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.130]) with mapi id
	14.01.0355.002; Sun, 11 Nov 2012 21:42:07 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Sean Liming <sean.liming@annabooks.com>, "Georgescu, Alexandru C"
	<alexandru.c.georgescu@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Cannot Compile Application in Eclipse IDE Juno
Thread-Index: Ac2+Q7NY4AZWZUVETMqSgwaAq2v0mgAUCl3gABHtJoAAAZsfAAABHc4AAAUjB4AADxxFYAAAheKAAFeYMRA=
Date: Mon, 12 Nov 2012 05:42:06 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B39968@ORSMSX101.amr.corp.intel.com>
References: <000301cdbe44$ace11c60$06a35520$@annabooks.com>
	<1FFB62CE8AEB0D4298B51122D8903E961672353D@IRSMSX104.ger.corp.intel.com>
	<000801cdbe98$853b87f0$8fb297d0$@annabooks.com>
	<1FFB62CE8AEB0D4298B51122D8903E96167235DC@IRSMSX104.ger.corp.intel.com>
	<000001cdbea3$68797770$396c6650$@annabooks.com>
	<000a01cdbeb7$f4fdaa90$def8ffb0$@annabooks.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B3953A@ORSMSX101.amr.corp.intel.com>
	<003b01cdbef6$7d7c41e0$7874c5a0$@annabooks.com>
In-Reply-To: <003b01cdbef6$7d7c41e0$7874c5a0$@annabooks.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: Cannot Compile Application in Eclipse IDE Juno
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
X-List-Received-Date: Mon, 12 Nov 2012 05:42:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C46B39968ORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C46B39968ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Sean,



If you use adt-installer then the sysroot will be setup for you. So you don=
't need to step 4 and 5.  BTW, you do need to take a look of adt-installer.=
conf file to ensure the sysroot location is what you'd expected and also, t=
he image (core-image-sato-sdk) is the one that's going to be extracted as s=
ysroot.  Also, for Eclipse, please make sure the toolchain and sysroot is m=
atching what you've used adt-installer to set them to.



Thanks,

Jessica



From: Sean Liming [mailto:sean.liming@annabooks.com]
Sent: Friday, November 09, 2012 7:50 PM
To: Zhang, Jessica; Georgescu, Alexandru C; yocto@yoctoproject.org
Subject: RE: [yocto] Cannot Compile Application in Eclipse IDE Juno



Jessica,



Trying to follow two different documentations that reference each other and=
 a video on an older ADT and Eclipse versions is a bit of a challenge to ge=
t things setup. I am testing different approaches on my own in order to get=
 a better understanding of what is going on.



So to be clear:



1.       Download the ADT 1.3 installer

2.       Extract the install, don't make any changes to the adt-install.con=
f file - just install the ARM

3.       Run the ADT installer, which should install the tool chain

4.       Download the core-image-sato-sdk 1.3 image

5.       Use the runqemu-extract-sdk to extract to the sysroot defined by A=
DT installer

6.       Open Eclipse and point to the defaults



Is this correct?



Regards,



Sean Liming

Owner

Annabooks

Tel: 714-970-7523 / Cell: 858-774-3176



From: Zhang, Jessica [mailto:jessica.zhang@intel.com]<mailto:[mailto:jessic=
a.zhang@intel.com]>
Sent: Friday, November 09, 2012 1:19 PM
To: Sean Liming; Georgescu, Alexandru C; yocto@yoctoproject.org<mailto:yoct=
o@yoctoproject.org>
Subject: RE: [yocto] Cannot Compile Application in Eclipse IDE Juno



Hi Sean,



ADT support all 4 architectures (x86, arm, ppc and mips).  By reading your =
steps on how did you set up your cross development environment, seems there=
's confusion there.  Can you stick with one method at the time so it's easi=
er for us to help on resolving your issue?  Can you download the toolchain =
for 1.3 release and install your toolchain using it?  For 1.3 we made toolc=
hain relocatable, so you should be able to install it to a meaningful place=
 to you.



After install your toolchain, can you download our 1.3 core-image-sato-sdk =
image and extract it using runqemu-extract-sdk and using the output directo=
ry as your sysroot in Eclipse.  And see whether you can build the helloworl=
d sample program.  If everything works, that means your steps of setting up=
 the cross-development environment is correct.  Then you can switch to your=
 n450 image as sysroot and see whether there's problem.  If so, we have to =
debug that issue.





Thanks,

Jessica



From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Sean Liming
Sent: Friday, November 09, 2012 9:23 PM
To: Georgescu, Alexandru C; yocto@yoctoproject.org<mailto:yocto@yoctoprojec=
t.org>
Subject: Re: [yocto] Cannot Compile Application in Eclipse IDE Juno



Is there a step I missed? Or is the ADT only for ARM at the moment?



Regards,



Sean Liming

Owner

Annabooks

Tel: 714-970-7523 / Cell: 858-774-3176



From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org]<mailto:[mailto:yocto-bounces@yocto=
project.org]> On Behalf Of Sean Liming
Sent: Friday, November 09, 2012 9:55 AM
To: 'Georgescu, Alexandru C'; yocto@yoctoproject.org<mailto:yocto@yoctoproj=
ect.org>
Subject: Re: [yocto] Cannot Compile Application in Eclipse IDE Juno



I am using Intel Atom n450, not ARM. I have built three images using atom-p=
c for the BSP and core-image-sato-dev, core-image-sato, and core-image-sato=
-sdk for the base images. All the images are in the build directory. Using =
Hob, I set the Build Toolchain for each build to be x86_64 in the Advanced =
configuration. The images build and run.



To setup the application development environment



1.       Used Bitbake adt-installer - the ADT installer was in the tmp/depl=
oy/sdk folder. (I also downloaded the ADT and extracted the tarball with th=
e same result.)

2.       Extracted the ADT tarball.

3.       Change the adt_intstaller.conf file to



YOCTOADT_TARGETS=3D"x86_64"

QEMU and NFS are set to Y

YOCTOADT_ROOTFS_x86_64=3D"sato-sdk"

YOCTOADT_TARGET_SYSROOT_IMAGE_ x86_64=3D"sato-sdk"

YOCTOADT_TARGET_SYSROOT_LOC_ x86_64=3D"$HOME/Yocto1.3/test-yocto/x86_64"



I commented out the other settings for the ARM.



4.       Ran the ADT installer. It looks like the QEMU rootfs gets installe=
d in the $HOME/Yocto1.3/test-yocto/x86_64. As a test I changed this out wit=
h the rootfs built from one of the images. In either case the issue was the=
 same

5.       Installed Eclipse JUNO

6.       Setup the Eclipse plugins per instructions

7.       Setup the ADT parameters to point to the Toolchain Root Location a=
nd Sysroot location. An error would occur if I don't get these right.

8.       Created the applications and tried to compile with the errors.





Am I supposed to bitbake meta-ide-support?



Regards,



Sean Liming

Owner

Annabooks

Tel: 714-970-7523 / Cell: 858-774-3176



From: Georgescu, Alexandru C [mailto:alexandru.c.georgescu@intel.com]
Sent: Friday, November 09, 2012 9:24 AM
To: Sean Liming; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: RE: [yocto] Cannot Compile Application in Eclipse IDE Juno



ADT installs by default not only the toolchain, but also the sysroot (ADT h=
ave to be configured and installed by matching your target architecture). I=
t asks you where to install the tooclhain, but the sysroot is installed by =
default in this location: YOCTOADT_TARGET_SYSROOT_LOC_arm=3D"$HOME/test-yoc=
to/arm".

That parameter can be found in adt-installer/adt_installer.conf.



Basically, to deploy an app to your target using Eclipse, you have to speci=
fy 3 parameters:

 "Toolchain Root Location", "Sysroot location" and configure the Target opt=
ions.



Use the "Toolchain Root Location" as location where you have installed the =
ADT, and the Sysroot Location as specified in the adt_installer.conf. ADT n=
eeds the first two params in order to build you app locally.



"runqemu-extract-sdk" is used to extract the qemu tarball that can be used =
as sysroot location. More details about the ADT tools are found at the same=
 location: http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.h=
tml.



Regards,

--

Alexandru Georgescu



From: Sean Liming [mailto:sean.liming@annabooks.com]
Sent: Friday, November 09, 2012 18:38
To: Georgescu, Alexandru C; yocto@yoctoproject.org<mailto:yocto@yoctoprojec=
t.org>
Subject: RE: [yocto] Cannot Compile Application in Eclipse IDE Juno





Do I have to use Qemu? Can I use my target's rootfs?



If I can use my target's rootfs, how do I extract the SDK? runqemu-extract-=
sdk?



Regards,



Sean Liming

Owner

Annabooks

Tel: 714-970-7523 / Cell: 858-774-3176



From: Georgescu, Alexandru C [mailto:alexandru.c.georgescu@intel.com]<mailt=
o:[mailto:alexandru.c.georgescu@intel.com]>
Sent: Friday, November 09, 2012 8:21 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Cc: Sean Liming
Subject: RE: [yocto] Cannot Compile Application in Eclipse IDE Juno



Hi Sean,

There may be a problem with your sysroot setup. Please make sure you have s=
et it correctly by following the tutorial from here: http://www.yoctoprojec=
t.org/docs/current/adt-manual/adt-manual.html#extracting-the-root-filesyste=
m



Regards,

--

Alexandru Georgescu



From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Sean Liming
Sent: Friday, November 09, 2012 08:37
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] Cannot Compile Application in Eclipse IDE Juno





Yocto 1.3 Danny

Target: n450 Black Sand

Eclipse: Juno C/C++ Developers



After going through the steps to setup the ADT and Eclipse plugin, I am try=
ing to compile the Hello World application based on the Hello World ANSI C =
Autotools Project type. I think I have the ADT Preference set correctly. It=
 is not complaining about a missing tool chain.



Compiling results in errors:



Compiler cannot create executable in /home/sean/workspace/HelloADT - Config=
uration problem

Make *** No rules to make target 'all' - C/C++ problem



What am I missing?



Regards,



Sean




--_000_C6510F6D410BB64A8C15398EDC6B847C46B39968ORSMSX101amrcor_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle24
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle25
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle26
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle27
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle28
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:842820700;
	mso-list-type:hybrid;
	mso-list-template-ids:-1868264150 67698703 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:918292231;
	mso-list-type:hybrid;
	mso-list-template-ids:-1415145472 67698703 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi Sean,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">If you use adt-install=
er then the sysroot will be setup for you. So you don&#8217;t need to step =
4 and 5.&nbsp; BTW, you do need to take a look of adt-installer.conf file t=
o ensure the sysroot location is what you&#8217;d expected
 and also, the image (core-image-sato-sdk) is the one that&#8217;s going to=
 be extracted as sysroot. &nbsp;Also, for Eclipse, please make sure the too=
lchain and sysroot is matching what you&#8217;ve used adt-installer to set =
them to.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Jessica<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Sean Lim=
ing [mailto:sean.liming@annabooks.com]
<br>
<b>Sent:</b> Friday, November 09, 2012 7:50 PM<br>
<b>To:</b> Zhang, Jessica; Georgescu, Alexandru C; yocto@yoctoproject.org<b=
r>
<b>Subject:</b> RE: [yocto] Cannot Compile Application in Eclipse IDE Juno<=
o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Jessica,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Trying to follow two d=
ifferent documentations that reference each other and a video on an older A=
DT and Eclipse versions is a bit of a challenge to get things setup. I am t=
esting different approaches on my own
 in order to get a better understanding of what is going on.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">So to be clear:<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l1 leve=
l1 lfo2"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"=
mso-list:Ignore">1.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Download the A=
DT 1.3 installer<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l1 leve=
l1 lfo2"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"=
mso-list:Ignore">2.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Extract the in=
stall, don&#8217;t make any changes to the adt-install.conf file &#8211; ju=
st install the ARM<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l1 leve=
l1 lfo2"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"=
mso-list:Ignore">3.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Run the ADT in=
staller, which should install the tool chain<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l1 leve=
l1 lfo2"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"=
mso-list:Ignore">4.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Download the c=
ore-image-sato-sdk 1.3 image
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l1 leve=
l1 lfo2"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"=
mso-list:Ignore">5.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Use the runqem=
u-extract-sdk to extract to the sysroot defined by ADT installer<o:p></o:p>=
</span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l1 leve=
l1 lfo2"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"=
mso-list:Ignore">6.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Open Eclipse a=
nd point to the defaults<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Is this correct?<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Regards,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Sean Liming<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Owner<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Annabooks<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Tel: 714-970-7523 / Ce=
ll: 858-774-3176<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Zhang, J=
essica
<a href=3D"mailto:[mailto:jessica.zhang@intel.com]">[mailto:jessica.zhang@i=
ntel.com]</a>
<br>
<b>Sent:</b> Friday, November 09, 2012 1:19 PM<br>
<b>To:</b> Sean Liming; Georgescu, Alexandru C; <a href=3D"mailto:yocto@yoc=
toproject.org">
yocto@yoctoproject.org</a><br>
<b>Subject:</b> RE: [yocto] Cannot Compile Application in Eclipse IDE Juno<=
o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi Sean,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">ADT support all 4 arch=
itectures (x86, arm, ppc and mips).&nbsp; By reading your steps on how did =
you set up your cross development environment, seems there&#8217;s confusio=
n there.&nbsp; Can you stick with one method at the
 time so it&#8217;s easier for us to help on resolving your issue?&nbsp; Ca=
n you download the toolchain for 1.3 release and install your toolchain usi=
ng it?&nbsp; For 1.3 we made toolchain relocatable, so you should be able t=
o install it to a meaningful place to you.&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">After install your too=
lchain, can you download our 1.3 core-image-sato-sdk image and extract it u=
sing runqemu-extract-sdk and using the output directory as your sysroot in =
Eclipse.&nbsp; And see whether you can build
 the helloworld sample program.&nbsp; If everything works, that means your =
steps of setting up the cross-development environment is correct.&nbsp; The=
n you can switch to your n450 image as sysroot and see whether there&#8217;=
s problem.&nbsp; If so, we have to debug that issue.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Jessica<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoprojec=
t.org</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-b=
ounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Sean Liming<br>
<b>Sent:</b> Friday, November 09, 2012 9:23 PM<br>
<b>To:</b> Georgescu, Alexandru C; <a href=3D"mailto:yocto@yoctoproject.org=
">yocto@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Cannot Compile Application in Eclipse IDE Juno<=
o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Is there a step I miss=
ed? Or is the ADT only for ARM at the moment?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Regards,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Sean Liming<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Owner<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Annabooks<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Tel: 714-970-7523 / Ce=
ll: 858-774-3176<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoprojec=
t.org</a>
<a href=3D"mailto:[mailto:yocto-bounces@yoctoproject.org]">[mailto:yocto-bo=
unces@yoctoproject.org]</a>
<b>On Behalf Of </b>Sean Liming<br>
<b>Sent:</b> Friday, November 09, 2012 9:55 AM<br>
<b>To:</b> 'Georgescu, Alexandru C'; <a href=3D"mailto:yocto@yoctoproject.o=
rg">yocto@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Cannot Compile Application in Eclipse IDE Juno<=
o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I am using Intel Atom =
n450, not ARM. I have built three images using atom-pc for the BSP and core=
-image-sato-dev, core-image-sato, and core-image-sato-sdk for the base imag=
es. All the images are in the build
 directory. Using Hob, I set the Build Toolchain for each build to be x86_6=
4 in the Advanced configuration. The images build and run.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">To setup the applicati=
on development environment<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo4"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"=
mso-list:Ignore">1.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Used Bitbake a=
dt-installer &#8211; the ADT installer was in the tmp/deploy/sdk folder. (I=
 also downloaded the ADT and extracted the tarball with the same result.)<o=
:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo4"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"=
mso-list:Ignore">2.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Extracted the =
ADT tarball.<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo4"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"=
mso-list:Ignore">3.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Change the adt=
_intstaller.conf file to
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">YOCTOADT_TARGETS=3D&#8=
221;x86_64&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">QEMU and NFS are set t=
o Y<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">YOCTOADT_ROOTFS_x86_64=
=3D&#8221;sato-sdk&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">YOCTOADT_TARGET_SYSROO=
T_IMAGE_ x86_64=3D&#8221;sato-sdk&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">YOCTOADT_TARGET_SYSROO=
T_LOC_ x86_64=3D&#8221;$HOME/Yocto1.3/test-yocto/x86_64&#8221;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I commented out the ot=
her settings for the ARM.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo4"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"=
mso-list:Ignore">4.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Ran the ADT in=
staller. It looks like the QEMU rootfs gets installed in the $HOME/Yocto1.3=
/test-yocto/x86_64. As a test I changed this out with the rootfs built from=
 one of the images. In either case
 the issue was the same<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo4"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"=
mso-list:Ignore">5.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Installed Ecli=
pse JUNO<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo4"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"=
mso-list:Ignore">6.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Setup the Ecli=
pse plugins per instructions<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo4"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"=
mso-list:Ignore">7.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Setup the ADT =
parameters to point to the Toolchain Root Location and Sysroot location. An=
 error would occur if I don&#8217;t get these right.<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo4"><![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"=
mso-list:Ignore">8.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Created the ap=
plications and tried to compile with the errors.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Am I supposed to bitba=
ke meta-ide-support?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Regards,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Sean Liming<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Owner<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Annabooks<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Tel: 714-970-7523 / Ce=
ll: 858-774-3176<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Georgesc=
u, Alexandru C [<a href=3D"mailto:alexandru.c.georgescu@intel.com">mailto:a=
lexandru.c.georgescu@intel.com</a>]
<br>
<b>Sent:</b> Friday, November 09, 2012 9:24 AM<br>
<b>To:</b> Sean Liming; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoc=
toproject.org</a><br>
<b>Subject:</b> RE: [yocto] Cannot Compile Application in Eclipse IDE Juno<=
o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">ADT installs by defaul=
t not only the toolchain, but also the sysroot (ADT have to be configured a=
nd installed by matching your target architecture). It asks you where to in=
stall the tooclhain, but the sysroot
 is installed by default in this location: YOCTOADT_TARGET_SYSROOT_LOC_arm=
=3D&quot;$HOME/test-yocto/arm&quot;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">That parameter can be =
found in adt-installer/adt_installer.conf.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Basically, to deploy a=
n app to your target using Eclipse, you have to specify 3 parameters:
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt"><span style=3D"color:#1=
F497D">&nbsp;&#8220;Toolchain Root Location&#8221;, &#8220;Sysroot location=
&#8221; and configure the Target options.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Use the &#8220;Toolcha=
in Root Location&#8221; as location where you have installed the ADT, and t=
he Sysroot Location as specified in the adt_installer.conf. ADT needs the f=
irst two params in order to build you app locally.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&#8220;runqemu-extract=
-sdk&#8221; is used to extract the qemu tarball that can be used as sysroot=
 location. More details about the ADT tools are found at the same location:
</span><a href=3D"http://www.yoctoproject.org/docs/current/adt-manual/adt-m=
anual.html">http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.=
html</a>.<span style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Regards,<o:p></o:p></s=
pan></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">--<=
o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">Ale=
xandru Georgescu<o:p></o:p></span></b></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Sean Lim=
ing [<a href=3D"mailto:sean.liming@annabooks.com">mailto:sean.liming@annabo=
oks.com</a>]
<br>
<b>Sent:</b> Friday, November 09, 2012 18:38<br>
<b>To:</b> Georgescu, Alexandru C; <a href=3D"mailto:yocto@yoctoproject.org=
">yocto@yoctoproject.org</a><br>
<b>Subject:</b> RE: [yocto] Cannot Compile Application in Eclipse IDE Juno<=
o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Do I have to use Qemu?=
 Can I use my target&#8217;s rootfs?
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">If I can use my target=
&#8217;s rootfs, how do I extract the SDK? runqemu-extract-sdk?<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Regards,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Sean Liming<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Owner<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Annabooks<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Tel: 714-970-7523 / Ce=
ll: 858-774-3176<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Georgesc=
u, Alexandru C
<a href=3D"mailto:[mailto:alexandru.c.georgescu@intel.com]">[mailto:alexand=
ru.c.georgescu@intel.com]</a>
<br>
<b>Sent:</b> Friday, November 09, 2012 8:21 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Cc:</b> Sean Liming<br>
<b>Subject:</b> RE: [yocto] Cannot Compile Application in Eclipse IDE Juno<=
o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi Sean,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">There may be a problem=
 with your sysroot setup. Please make sure you have set it correctly by fol=
lowing the tutorial from here:
<a href=3D"http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.h=
tml#extracting-the-root-filesystem">
http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#extract=
ing-the-root-filesystem</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Regards,<o:p></o:p></s=
pan></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">--<=
o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;color:#7F7F7F">Ale=
xandru Georgescu<o:p></o:p></span></b></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoprojec=
t.org</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-b=
ounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Sean Liming<br>
<b>Sent:</b> Friday, November 09, 2012 08:37<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Subject:</b> [yocto] Cannot Compile Application in Eclipse IDE Juno<o:p>=
</o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Yocto 1.3 Danny<o:p></o:p></p>
<p class=3D"MsoNormal">Target: n450 Black Sand<o:p></o:p></p>
<p class=3D"MsoNormal">Eclipse: Juno C/C&#43;&#43; Developers<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">After going through the steps to setup the ADT and E=
clipse plugin, I am trying to compile the Hello World application based on =
the Hello World ANSI C Autotools Project type. I think I have the ADT Prefe=
rence set correctly. It is not complaining
 about a missing tool chain.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Compiling results in errors:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Compiler cannot create executable in /home/sean/work=
space/HelloADT &#8211; Configuration problem<o:p></o:p></p>
<p class=3D"MsoNormal">Make *** No rules to make target &#8216;all&#8217; &=
#8211; C/C&#43;&#43; problem<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What am I missing?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Sean <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C46B39968ORSMSX101amrcor_--
