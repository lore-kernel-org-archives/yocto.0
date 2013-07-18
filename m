Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F46DE013D6
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 10:23:40 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jul 2013 10:23:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,695,1367996400"; 
	d="scan'208,217";a="367447075"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jul 2013 10:23:36 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.19]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.145]) with mapi id
	14.03.0123.003; Thu, 18 Jul 2013 10:23:34 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Matthias Van Gestel <maregt0@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] SDK generation
Thread-Index: AQHOgjAueSb0+4aG10eUI2oIE6XKBplqsIJw
Date: Thu, 18 Jul 2013 17:23:34 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C5E95C@ORSMSX103.amr.corp.intel.com>
References: <CAC3ARNy1XTJ=fJCCGKRfRw_Jr0qePBVvOujWR3+Bo7sBKLw_Ag@mail.gmail.com>
In-Reply-To: <CAC3ARNy1XTJ=fJCCGKRfRw_Jr0qePBVvOujWR3+Bo7sBKLw_Ag@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: SDK generation
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
X-List-Received-Date: Thu, 18 Jul 2013 17:23:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C73C5E95CORSMSX103amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C73C5E95CORSMSX103amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



Hi Matthias,



As to the native cross tools, assuming you install your toolchain under /op=
t/poky/1.4.1, after sourcing the environment-setup file, and look into the =
file for CC variable, for example for my case is i586-poky-linux-gcc and it=
's under /opt/poky/1.4.1/sysroot/i686-pokysdk-linux/usr/bin/i586-poky-linux=
 directory.



For eclipse, it depends on what is your toolchain and sysroot setup, it'll =
source the environment-setup file under toolchain directory, then bring up =
qemu in nfs mode base on your kernel bin file and the sysroot directory tha=
t extracted using your image's rootfs file.  So you can try from command li=
ne to see whether you can bring up qemu with the kernel bin file and sysroo=
t directory, if so, eclipse should be able to, if not, then there's an issu=
e on eclipse side.  If you can't bring up via command line, then there must=
 be some setup/build issue on your end.



Thanks,

Jessica





From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Matthias Van Gestel
Sent: Tuesday, July 16, 2013 7:24 AM
To: yocto@yoctoproject.org
Subject: [yocto] SDK generation



Hi I'm having some trouble generating a Qt(4) SDK that I can use on a host =
system. We generate our own image edna-image-minimal:



PR=3D"2"

####################################################################

# Copied from meta/recipes-core/images/core-image-minibal.bb<http://core-im=
age-minibal.bb>

####################################################################

DESCRIPTION =3D "A small image just capable of allowing a device to boot."



IMAGE_INSTALL =3D "packagegroup-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP} ${C=
ORE_IMAGE_EXTRA_INSTALL}"



IMAGE_LINGUAS =3D " "



LICENSE =3D "MIT"



inherit core-image



# remove not needed ipkg informations

ROOTFS_POSTPROCESS_COMMAND +=3D "remove_packaging_data_files ; "

####################################################################

# Copied from meta/recipes-graphics/images/core-image-x11.bb<http://core-im=
age-x11.bb>

####################################################################

IMAGE_FEATURES +=3D "splash package-management x11-base xserver-xf86-config=
"

####################################################################

# IMAGE_INSTALL +=3D "qtbase qtbase-tools qtbase-plugins"

# qtbase-tools qtbase-plugins"



IMAGE_FEATURES +=3D "qt4-pkgs"

IMAGE_INSTALL +=3D "mini-x-session"

TOOLCHAIN_HOST_TASK +=3D "nativesdk-qemu"
----------------------------------------------------------------------

Now when I try to generate a SDK with the following command: MACHINE=3D"qem=
uarm" bitbake edna-image-minimal -c populate_sdk

The SDK script gets generated, I execute it and it extracts itself.



Now I'd like to know where I can find the native tools to cross compile my =
application, I have no qmake or cross-gcc.



Another issue is about the eclipse adt plugin, I installed the plugin confi=
gured the sysroot path and the cross compiler path (it uses scripts from /o=
pt/poky/1.4.1) and then in the Qemu part I picked the kernel generated in t=
he build/tmp/deploy/images, but then it complains about a pseudo and asks a=
bout qemu-extract-sdk. So to cut the story short I'm stuck at generating a =
decent cross sdk.

(I used the official http://www.yoctoproject.org/docs/current/dev-manual/de=
v-manual.html#configuring-the-eclipse-ide-juno guide).



How do I proceed, or are there other ways I can do to get a decent SDK work=
ing?






--_000_C6510F6D410BB64A8C15398EDC6B847C73C5E95CORSMSX103amrcor_
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
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Matthias,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">As to the native cross to=
ols, assuming you install your toolchain under /opt/poky/1.4.1, after sourc=
ing the environment-setup file, and look into the file for
 CC variable, for example for my case is i586-poky-linux-gcc and it&#8217;s=
 under /opt/poky/1.4.1/sysroot/i686-pokysdk-linux/usr/bin/i586-poky-linux d=
irectory.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">For eclipse, it depends o=
n what is your toolchain and sysroot setup, it&#8217;ll source the environm=
ent-setup file under toolchain directory, then bring up qemu in
 nfs mode base on your kernel bin file and the sysroot directory that extra=
cted using your image&#8217;s rootfs file.&nbsp; So you can try from comman=
d line to see whether you can bring up qemu with the kernel bin file and sy=
sroot directory, if so, eclipse should be able
 to, if not, then there&#8217;s an issue on eclipse side.&nbsp; If you can&=
#8217;t bring up via command line, then there must be some setup/build issu=
e on your end.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Matthias Van Gestel<br>
<b>Sent:</b> Tuesday, July 16, 2013 7:24 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] SDK generation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Hi I'm having some trouble generating a Qt(4) SDK th=
at I can use on a host system. We generate our own image edna-image-minimal=
:<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">PR=3D&quot;2&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">####################################################=
################<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"># Copied from meta/recipes-core/images/<a href=3D"ht=
tp://core-image-minibal.bb">core-image-minibal.bb</a><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">####################################################=
################<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">DESCRIPTION =3D &quot;A small image just capable of =
allowing a device to boot.&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">IMAGE_INSTALL =3D &quot;packagegroup-core-boot ${ROO=
TFS_PKGMANAGE_BOOTSTRAP} ${CORE_IMAGE_EXTRA_INSTALL}&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">IMAGE_LINGUAS =3D &quot; &quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">LICENSE =3D &quot;MIT&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">inherit core-image<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"># remove not needed ipkg informations<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">ROOTFS_POSTPROCESS_COMMAND &#43;=3D &quot;remove_pac=
kaging_data_files ; &quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">####################################################=
################<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"># Copied from meta/recipes-graphics/images/<a href=
=3D"http://core-image-x11.bb">core-image-x11.bb</a><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">####################################################=
################<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">IMAGE_FEATURES &#43;=3D &quot;splash package-managem=
ent x11-base xserver-xf86-config&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">####################################################=
################<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"># IMAGE_INSTALL &#43;=3D &quot;qtbase qtbase-tools q=
tbase-plugins&quot;&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"># qtbase-tools qtbase-plugins&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">IMAGE_FEATURES &#43;=3D &quot;qt4-pkgs&quot;<o:p></o=
:p></p>
</div>
<div>
<p class=3D"MsoNormal">IMAGE_INSTALL &#43;=3D &quot;mini-x-session&quot;<o:=
p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">TOOLCHAIN_HOST_TASK &#43;=3D &quot;nativesdk-qemu&qu=
ot;<br>
----------------------------------------------------------------------<o:p>=
</o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">Now when I try to generate a SDK with the following =
command: MACHINE=3D&quot;qemuarm&quot; bitbake edna-image-minimal -c popula=
te_sdk<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">The SDK script gets generated, I execute it and it e=
xtracts itself.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Now I'd like to know where I can find the native too=
ls to cross compile my application, I have no qmake or cross-gcc.<o:p></o:p=
></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Another issue is about the eclipse adt plugin, I ins=
talled the plugin configured the sysroot path and the cross compiler path (=
it uses scripts from /opt/poky/1.4.1) and then in the Qemu part I picked th=
e kernel generated in the build/tmp/deploy/images,
 but then it complains about a pseudo and asks about qemu-extract-sdk. So t=
o cut the story short I'm stuck at generating a decent cross sdk.<o:p></o:p=
></p>
</div>
<div>
<p class=3D"MsoNormal">(I used the official&nbsp;<span style=3D"color:blue"=
><a href=3D"http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.=
html#configuring-the-eclipse-ide-juno">http://www.yoctoproject.org/docs/cur=
rent/dev-manual/dev-manual.html#configuring-the-eclipse-ide-juno</a>&nbsp;<=
/span><span style=3D"color:black">guide).</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">How do I proceed, or are there other ways I can do t=
o get a decent SDK working?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C73C5E95CORSMSX103amrcor_--
