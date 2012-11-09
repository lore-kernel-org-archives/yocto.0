Return-Path: <sean.liming@annabooks.com>
Received: from mail32c40.carrierzone.com (mail32c40.carrierzone.com
	[209.235.156.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C80A2E01275
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2012 09:55:47 -0800 (PST)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail32c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	qA9HtcE2016153; Fri, 9 Nov 2012 17:55:40 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Georgescu, Alexandru C'" <alexandru.c.georgescu@intel.com>,
	<yocto@yoctoproject.org>
References: <000301cdbe44$ace11c60$06a35520$@annabooks.com>
	<1FFB62CE8AEB0D4298B51122D8903E961672353D@IRSMSX104.ger.corp.intel.com>
	<000801cdbe98$853b87f0$8fb297d0$@annabooks.com>
	<1FFB62CE8AEB0D4298B51122D8903E96167235DC@IRSMSX104.ger.corp.intel.com>
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E96167235DC@IRSMSX104.ger.corp.intel.com>
Date: Fri, 9 Nov 2012 09:55:28 -0800
Message-ID: <000001cdbea3$68797770$396c6650$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQG9bfGi26p8VNfKL2nIUFx5vEz9OAGkEAe3AieW7boBwJ3FU5fWAshw
X-CSC: 0
X-CHA: v=2.0 cv=C8ReP3z+ c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=22GXwuBOM20A:10 a=_DgR7O7FQkkA:10 a=IjdlZ_XXAAAA:8 a=56imOTf_6jMA:10
	a=QyXUC8HyAAAA:8 a=iGHA9ds3AAAA:8 a=u1bcdJi8ADL9rdrZ8TsA:9
	a=CjuIK1q_8ugA:10 a=FCaQVidmf_IA:10 a=nHK3ipOpxeAA:10 a=DWcHd_tN-00A:10
	a=dGJ0OcVc7YAA:10 a=XDKM753qmDAA:10 a=PAfwrr6pMpkA:10 a=yMhMjlubAAAA:8
	a=SSmOFEACAAAA:8 a=Ak8IEwdxHPfDg72Omc4A:9 a=gKO2Hq4RSVkA:10
	a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10 a=NWVoK91CQyQA:10
	a=5galrHnoWUcHfLhu:21 a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-SenderID: 76.95.171.22
X-CTCH-SenderID-TotalMessages: 1
X-CTCH-SenderID-TotalSpam: 0
X-CTCH-SenderID-TotalSuspected: 0
X-CTCH-SenderID-TotalBulk: 0
X-CTCH-SenderID-TotalConfirmed: 0
X-CTCH-SenderID-TotalRecipients: 0
X-CTCH-SenderID-TotalVirus: 0
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
X-List-Received-Date: Fri, 09 Nov 2012 17:55:48 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0001_01CDBE60.5A5AF260"
Content-Language: en-us

------=_NextPart_000_0001_01CDBE60.5A5AF260
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am using Intel Atom n450, not ARM. I have built three images using atom-pc
for the BSP and core-image-sato-dev, core-image-sato, and
core-image-sato-sdk for the base images. All the images are in the build
directory. Using Hob, I set the Build Toolchain for each build to be x86_64
in the Advanced configuration. The images build and run.

 

To setup the application development environment

 

1.       Used Bitbake adt-installer - the ADT installer was in the
tmp/deploy/sdk folder. (I also downloaded the ADT and extracted the tarball
with the same result.)

2.       Extracted the ADT tarball.

3.       Change the adt_intstaller.conf file to 

 

YOCTOADT_TARGETS="x86_64"

QEMU and NFS are set to Y

YOCTOADT_ROOTFS_x86_64="sato-sdk"

YOCTOADT_TARGET_SYSROOT_IMAGE_ x86_64="sato-sdk"

YOCTOADT_TARGET_SYSROOT_LOC_ x86_64="$HOME/Yocto1.3/test-yocto/x86_64"

 

I commented out the other settings for the ARM.

 

4.       Ran the ADT installer. It looks like the QEMU rootfs gets installed
in the $HOME/Yocto1.3/test-yocto/x86_64. As a test I changed this out with
the rootfs built from one of the images. In either case the issue was the
same

5.       Installed Eclipse JUNO

6.       Setup the Eclipse plugins per instructions

7.       Setup the ADT parameters to point to the Toolchain Root Location
and Sysroot location. An error would occur if I don't get these right.

8.       Created the applications and tried to compile with the errors.

 

 

Am I supposed to bitbake meta-ide-support?

 

Regards,

 

Sean Liming

Owner

Annabooks

Tel: 714-970-7523 / Cell: 858-774-3176

 

From: Georgescu, Alexandru C [mailto:alexandru.c.georgescu@intel.com] 
Sent: Friday, November 09, 2012 9:24 AM
To: Sean Liming; yocto@yoctoproject.org
Subject: RE: [yocto] Cannot Compile Application in Eclipse IDE Juno

 

ADT installs by default not only the toolchain, but also the sysroot (ADT
have to be configured and installed by matching your target architecture).
It asks you where to install the tooclhain, but the sysroot is installed by
default in this location:
YOCTOADT_TARGET_SYSROOT_LOC_arm="$HOME/test-yocto/arm".

That parameter can be found in adt-installer/adt_installer.conf.

 

Basically, to deploy an app to your target using Eclipse, you have to
specify 3 parameters: 

 "Toolchain Root Location", "Sysroot location" and configure the Target
options.

 

Use the "Toolchain Root Location" as location where you have installed the
ADT, and the Sysroot Location as specified in the adt_installer.conf. ADT
needs the first two params in order to build you app locally. 

 

"runqemu-extract-sdk" is used to extract the qemu tarball that can be used
as sysroot location. More details about the ADT tools are found at the same
location:
http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html.

 

Regards,

--

Alexandru Georgescu

 

From: Sean Liming [mailto:sean.liming@annabooks.com] 
Sent: Friday, November 09, 2012 18:38
To: Georgescu, Alexandru C; yocto@yoctoproject.org
Subject: RE: [yocto] Cannot Compile Application in Eclipse IDE Juno

 

 

Do I have to use Qemu? Can I use my target's rootfs? 

 

If I can use my target's rootfs, how do I extract the SDK?
runqemu-extract-sdk?

 

Regards,

 

Sean Liming

Owner

Annabooks

Tel: 714-970-7523 / Cell: 858-774-3176

 

From: Georgescu, Alexandru C [mailto:alexandru.c.georgescu@intel.com] 
Sent: Friday, November 09, 2012 8:21 AM
To: yocto@yoctoproject.org
Cc: Sean Liming
Subject: RE: [yocto] Cannot Compile Application in Eclipse IDE Juno

 

Hi Sean,

There may be a problem with your sysroot setup. Please make sure you have
set it correctly by following the tutorial from here:
http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#extracti
ng-the-root-filesystem

 

Regards,

--

Alexandru Georgescu

 

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Sean Liming
Sent: Friday, November 09, 2012 08:37
To: yocto@yoctoproject.org
Subject: [yocto] Cannot Compile Application in Eclipse IDE Juno

 

 

Yocto 1.3 Danny

Target: n450 Black Sand

Eclipse: Juno C/C++ Developers

 

After going through the steps to setup the ADT and Eclipse plugin, I am
trying to compile the Hello World application based on the Hello World ANSI
C Autotools Project type. I think I have the ADT Preference set correctly.
It is not complaining about a missing tool chain.

 

Compiling results in errors:

 

Compiler cannot create executable in /home/sean/workspace/HelloADT -
Configuration problem

Make *** No rules to make target 'all' - C/C++ problem

 

What am I missing?

 

Regards,

 

Sean 

 


------=_NextPart_000_0001_01CDBE60.5A5AF260
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
/* Font Definitions */
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:34163596;
	mso-list-type:hybrid;
	mso-list-template-ids:1811064968 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:737168198;
	mso-list-type:hybrid;
	mso-list-template-ids:526534940 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2
	{mso-list-id:842820700;
	mso-list-type:hybrid;
	mso-list-template-ids:-1868264150 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>I am using Intel Atom n450, not ARM. I have =
built three images using atom-pc for the BSP and core-image-sato-dev, =
core-image-sato, and core-image-sato-sdk for the base images. All the =
images are in the build directory. Using Hob, I set the Build Toolchain =
for each build to be x86_64 in the Advanced configuration. The images =
build and run.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>To setup the application =
development environment<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoListParagraph style=3D'text-indent:-.25in;mso-list:l2 level1 =
lfo3'><![if !supportLists]><span style=3D'color:#1F497D'><span =
style=3D'mso-list:Ignore'>1.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'color:#1F497D'>Used =
Bitbake adt-installer &#8211; the ADT installer was in the =
tmp/deploy/sdk folder. (I also downloaded the ADT and extracted the =
tarball with the same result.)<o:p></o:p></span></p><p =
class=3DMsoListParagraph style=3D'text-indent:-.25in;mso-list:l2 level1 =
lfo3'><![if !supportLists]><span style=3D'color:#1F497D'><span =
style=3D'mso-list:Ignore'>2.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'color:#1F497D'>Extracted =
the ADT tarball.<o:p></o:p></span></p><p class=3DMsoListParagraph =
style=3D'text-indent:-.25in;mso-list:l2 level1 lfo3'><![if =
!supportLists]><span style=3D'color:#1F497D'><span =
style=3D'mso-list:Ignore'>3.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'color:#1F497D'>Change the =
adt_intstaller.conf file to <o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>YOCTOADT_TARGETS=3D&#8221;x86_64&#8221;<o:p></o:p=
></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>QEMU and =
NFS are set to Y<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>YOCTOADT_ROOTFS_x86_64=3D&#8221;sato-sdk&#8221;<o=
:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>YOCTOADT_TARGET_SYSROOT_IMAGE_ =
x86_64=3D&#8221;sato-sdk&#8221;<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>YOCTOADT_TARGET_SYSROOT_LOC_ =
x86_64=3D&#8221;$HOME/Yocto1.3/test-yocto/x86_64&#8221;<o:p></o:p></span>=
</p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>I commented out the =
other settings for the ARM.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoListParagraph style=3D'text-indent:-.25in;mso-list:l2 level1 =
lfo3'><![if !supportLists]><span style=3D'color:#1F497D'><span =
style=3D'mso-list:Ignore'>4.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'color:#1F497D'>Ran the ADT =
installer. It looks like the QEMU rootfs gets installed in the =
$HOME/Yocto1.3/test-yocto/x86_64. As a test I changed this out with the =
rootfs built from one of the images. In either case the issue was the =
same<o:p></o:p></span></p><p class=3DMsoListParagraph =
style=3D'text-indent:-.25in;mso-list:l2 level1 lfo3'><![if =
!supportLists]><span style=3D'color:#1F497D'><span =
style=3D'mso-list:Ignore'>5.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'color:#1F497D'>Installed =
Eclipse JUNO<o:p></o:p></span></p><p class=3DMsoListParagraph =
style=3D'text-indent:-.25in;mso-list:l2 level1 lfo3'><![if =
!supportLists]><span style=3D'color:#1F497D'><span =
style=3D'mso-list:Ignore'>6.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'color:#1F497D'>Setup the =
Eclipse plugins per instructions<o:p></o:p></span></p><p =
class=3DMsoListParagraph style=3D'text-indent:-.25in;mso-list:l2 level1 =
lfo3'><![if !supportLists]><span style=3D'color:#1F497D'><span =
style=3D'mso-list:Ignore'>7.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'color:#1F497D'>Setup the =
ADT parameters to point to the Toolchain Root Location and Sysroot =
location. An error would occur if I don&#8217;t get these =
right.<o:p></o:p></span></p><p class=3DMsoListParagraph =
style=3D'text-indent:-.25in;mso-list:l2 level1 lfo3'><![if =
!supportLists]><span style=3D'color:#1F497D'><span =
style=3D'mso-list:Ignore'>8.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'color:#1F497D'>Created the =
applications and tried to compile with the =
errors.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Am I supposed to bitbake =
meta-ide-support?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Sean =
Liming<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Owner<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Annabooks<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Tel: 714-970-7523 / =
Cell: 858-774-3176<o:p></o:p></span></p></div><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div =
style=3D'border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt'><div><div style=3D'border:none;border-top:solid #B5C4DF =
1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
Georgescu, Alexandru C [mailto:alexandru.c.georgescu@intel.com] =
<br><b>Sent:</b> Friday, November 09, 2012 9:24 AM<br><b>To:</b> Sean =
Liming; yocto@yoctoproject.org<br><b>Subject:</b> RE: [yocto] Cannot =
Compile Application in Eclipse IDE =
Juno<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>ADT installs by default not only the toolchain, =
but also the sysroot (ADT have to be configured and installed by =
matching your target architecture). It asks you where to install the =
tooclhain, but the sysroot is installed by default in this location: =
YOCTOADT_TARGET_SYSROOT_LOC_arm=3D&quot;$HOME/test-yocto/arm&quot;.<o:p><=
/o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>That =
parameter can be found in =
adt-installer/adt_installer.conf.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Basically, to deploy an =
app to your target using Eclipse, you have to specify 3 parameters: =
<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-indent:.5in'><span =
style=3D'color:#1F497D'>&nbsp;&#8220;Toolchain Root Location&#8221;, =
&#8220;Sysroot location&#8221; and configure the Target =
options.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Use the &#8220;Toolchain =
Root Location&#8221; as location where you have installed the ADT, and =
the Sysroot Location as specified in the adt_installer.conf. ADT needs =
the first two params in order to build you app locally. =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>&nbsp;<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>&#8220;runqemu-extract-sdk&#8221; is used to =
extract the qemu tarball that can be used as sysroot location. More =
details about the ADT tools are found at the same location: </span><a =
href=3D"http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.ht=
ml">http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html</=
a>.<span style=3D'color:#1F497D'><o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Regards,<o:p></o:p></span></p><div><p =
class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;color:#7F7F7F'>--<o:p></o:p></span></b></p><p =
class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;color:#7F7F7F'>Alexandru =
Georgescu<o:p></o:p></span></b></p></div><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
Sean Liming [<a =
href=3D"mailto:sean.liming@annabooks.com">mailto:sean.liming@annabooks.co=
m</a>] <br><b>Sent:</b> Friday, November 09, 2012 18:38<br><b>To:</b> =
Georgescu, Alexandru C; <a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><b>S=
ubject:</b> RE: [yocto] Cannot Compile Application in Eclipse IDE =
Juno<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Do I have to use Qemu? =
Can I use my target&#8217;s rootfs? <o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>If I can use my =
target&#8217;s rootfs, how do I extract the SDK? =
runqemu-extract-sdk?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Sean =
Liming<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Owner<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Annabooks<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Tel: 714-970-7523 / =
Cell: 858-774-3176<o:p></o:p></span></p></div><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div =
style=3D'border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt'><div><div style=3D'border:none;border-top:solid #B5C4DF =
1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
Georgescu, Alexandru C <a =
href=3D"mailto:[mailto:alexandru.c.georgescu@intel.com]">[mailto:alexandr=
u.c.georgescu@intel.com]</a> <br><b>Sent:</b> Friday, November 09, 2012 =
8:21 AM<br><b>To:</b> <a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><b>C=
c:</b> Sean Liming<br><b>Subject:</b> RE: [yocto] Cannot Compile =
Application in Eclipse IDE Juno<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Hi Sean,<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>There may be a problem =
with your sysroot setup. Please make sure you have set it correctly by =
following the tutorial from here: <a =
href=3D"http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.ht=
ml#extracting-the-root-filesystem">http://www.yoctoproject.org/docs/curre=
nt/adt-manual/adt-manual.html#extracting-the-root-filesystem</a><o:p></o:=
p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'>Regards,<o:p></o:p></span></p><div><p =
class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;color:#7F7F7F'>--<o:p></o:p></span></b></p><p =
class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;color:#7F7F7F'>Alexandru =
Georgescu<o:p></o:p></span></b></p></div><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
<a =
href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject=
.org</a> [<a =
href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounces@yocto=
project.org</a>] <b>On Behalf Of </b>Sean Liming<br><b>Sent:</b> Friday, =
November 09, 2012 08:37<br><b>To:</b> <a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><b>S=
ubject:</b> [yocto] Cannot Compile Application in Eclipse IDE =
Juno<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Yocto 1.3 =
Danny<o:p></o:p></p><p class=3DMsoNormal>Target: n450 Black =
Sand<o:p></o:p></p><p class=3DMsoNormal>Eclipse: Juno C/C++ =
Developers<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>After going through the steps to setup the ADT and =
Eclipse plugin, I am trying to compile the Hello World application based =
on the Hello World ANSI C Autotools Project type. I think I have the ADT =
Preference set correctly. It is not complaining about a missing tool =
chain.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Compiling results in errors:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Compiler =
cannot create executable in /home/sean/workspace/HelloADT &#8211; =
Configuration problem<o:p></o:p></p><p class=3DMsoNormal>Make *** No =
rules to make target &#8216;all&#8217; &#8211; C/C++ =
problem<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>What am I missing?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Regards,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Sean =
<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></div></body></html>

------=_NextPart_000_0001_01CDBE60.5A5AF260--
