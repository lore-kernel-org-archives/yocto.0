Return-Path: <MBishop@smithsinterconnectinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0258E00C45; Thu,  2 Nov 2017 11:00:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 753 seconds by postgrey-1.32 at yocto-www;
	Thu, 02 Nov 2017 11:00:38 PDT
Received: from mail.smithsinterconnectinc.com
	(archiver.smithsinterconnectinc.com [66.32.24.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BCDCE00AAF
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 11:00:38 -0700 (PDT)
X-ASG-Debug-ID: 1509644884-0abaef13ff19bd320001-yzSStA
Received: from ERDCSEXCH01.SMITHSSII.NET ([10.16.188.3]) by
	mail.smithsinterconnectinc.com with ESMTP id HK9ZQIwywXo3OnGZ
	(version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 13:48:04 -0400 (EDT)
X-Barracuda-Envelope-From: MBishop@smithsinterconnectinc.com
Received: from ERDCSEXCH01.SMITHSSII.NET (10.16.188.3) by
	ERDCSEXCH01.SMITHSSII.NET (10.16.188.3) with Microsoft SMTP Server
	(TLS) id 15.0.847.32; Thu, 2 Nov 2017 13:48:04 -0400
Received: from ERDCSEXCH01.SMITHSSII.NET ([fe80::4852:cd1d:f04f:f07]) by
	ERDCSEXCH01.SMITHSSII.NET ([fe80::4852:cd1d:f04f:f07%12]) with mapi id
	15.00.0847.040; Thu, 2 Nov 2017 13:48:04 -0400
From: "Bishop, Mark (STRT)" <MBishop@smithsinterconnectinc.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: do_kernel_checkout() not using the correct directory
X-ASG-Orig-Subj: do_kernel_checkout() not using the correct directory
Thread-Index: AdNUACvR6mlT8t+vTISl73pgmu+gzw==
Date: Thu, 2 Nov 2017 17:48:04 +0000
Message-ID: <1b231688863c4060b428c93d3b40fa0e@ERDCSEXCH01.SMITHSSII.NET>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.178.96]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[10.16.188.3]
X-Barracuda-Start-Time: 1509644884
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA
X-Barracuda-URL: https://sirblockalot.smithssii.net:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 16759
X-Virus-Scanned: by bsmtpd at smithsinterconnectinc.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=7.0 KILL_LEVEL=8.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.44426
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: do_kernel_checkout() not using the correct directory
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
X-List-Received-Date: Thu, 02 Nov 2017 18:00:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1b231688863c4060b428c93d3b40fa0eERDCSEXCH01SMITHSSIINET_"

--_000_1b231688863c4060b428c93d3b40fa0eERDCSEXCH01SMITHSSIINET_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am trying to compile a kernel located in SVN.

I get this error message:
ERROR: linux-xlnx-4.9-xilinx-v2017.2+git20-r0 do_kernel_checkout: S /tmp/st=
ride/work-shared/plnx_arm/kernel-source is not set to the linux source dire=
ctory. Check
ERROR: linux-xlnx-4.9-xilinx-v2017.2+git20-r0 do_kernel_checkout: the recip=
e and set S to the proper extracted subdirectory
ERROR: linux-xlnx-4.9-xilinx-v2017.2+git20-r0 do_kernel_checkout: Function =
failed: do_kernel_checkout (log file is located at /tmp/stride/work/plnx_ar=
m-xilinx-linux-gnueabi/linux-xlnx/4.9-xilinx-v2017.2+git20-r0/temp/log.do_k=
ernel_checkout.34928)
ERROR: Logfile of failure stored in: /tmp/stride/work/plnx_arm-xilinx-linux=
-gnueabi/linux-xlnx/4.9-xilinx-v2017.2+git20-r0/temp/log.do_kernel_checkout=
.34928
ERROR: Task (/opt/pkg/petalinux/2017.2/components/yocto/source/arm/layers/m=
eta-xilinx/recipes-kernel/linux/linux-xlnx_4.9.bb:do_kernel_checkout) faile=
d with exit code '1'

And my kernel gets downloaded to:
/tmp/stride/work/plnx_arm-xilinx-linux-gnueabi/linux-xlnx/4.9-xilinx-v2017.=
2+git20-r0/trunk
But Yocto is looking for it in /tmp/stride/work-shared/plnx_arm/kernel-sour=
ce
Which is why it is failing in kernel-yocto.bbclass when I try and compile a=
 kernel located in SVN.

If it is a git repo it gets copied into /tmp/stride/work-shared/plnx_arm/ke=
rnel-source and things work nicely.


do_kernel_checkout() {
.......
if [ -d "${WORKDIR}/git/" ]; then
# case: git repository
                # if S is WORKDIR/git, then we shouldn't be moving or delet=
ing the tree.
                if [ "${source_dir}" !=3D "${source_workdir}" ]; then
                        if [ -d "${source_workdir}/.git" ]; then
                                # regular git repository with .git
                                rm -rf ${S}
                                mv ${WORKDIR}/git ${S}
                        else
                                # create source for bare cloned git reposit=
ory
                                git clone ${WORKDIR}/git ${S}
                                rm -rf ${WORKDIR}/git
                        fi
                fi
                cd ${S}
else
                # case: we have no git repository at all.
                # To support low bandwidth options for building the kernel,=
 we'll just
                # convert the tree to a git repo and let the rest of the pr=
ocess work unchanged

                # if ${S} hasn't been set to the proper subdirectory a defa=
ult of "linux" is
                # used, but we can't initialize that empty directory. So ch=
eck it and throw a
                # clear error

                cd ${S}
                if [ ! -f "Makefile" ]; then
                        bberror "S ${S} is not set to the linux source dire=
ctory. Check "
                        bbfatal "the recipe and set S to the proper extract=
ed subdirectory"
                fi
......

${S} is set to /tmp/stride/work-shared/plnx_arm/kernel-source when I need o=
ne of the two things to happen:

A)     ${S} set to  ${WORKDIR}/trunk             OR

B)      ${WORKDIR}/trunk copied to ${S}/

I could modify that file directly on my machine and move on, but is there a=
 way I can create an .bbappend or something that will change ${S}

I'm pretty new to Yocto and I'd like to have a solution that resides in my =
project folder instead of having to modify Yocto files so that when I do to=
ol installs on new development machines I can just checkout my project data=
 and have it work.  I'm using Petalinux, so the process would be install th=
at, then checkout the project and then build it, with the correct ${S} dire=
ctory flowing into kernel-yocto.bbclass:do_kernel_checkout()

I'm new Yocto but I've been reading a ton and am looking for some advice.






--_000_1b231688863c4060b428c93d3b40fa0eERDCSEXCH01SMITHSSIINET_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:435901971;
	mso-list-type:hybrid;
	mso-list-template-ids:570952552 1546410722 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-number-format:alpha-upper;
	mso-level-text:"%1\)";
	mso-level-tab-stop:none;
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
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I am trying to compile a kernel located in SVN.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I get this error message:<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: linux-xlnx-4.9-xilinx-v2017.2&#43;git20-r0 do=
_kernel_checkout: S /tmp/stride/work-shared/plnx_arm/kernel-source is not s=
et to the linux source directory. Check
<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: linux-xlnx-4.9-xilinx-v2017.2&#43;git20-r0 do=
_kernel_checkout: the recipe and set S to the proper extracted subdirectory=
<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: linux-xlnx-4.9-xilinx-v2017.2&#43;git20-r0 do=
_kernel_checkout: Function failed: do_kernel_checkout (log file is located =
at /tmp/stride/work/plnx_arm-xilinx-linux-gnueabi/linux-xlnx/4.9-xilinx-v20=
17.2&#43;git20-r0/temp/log.do_kernel_checkout.34928)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /tmp/stride/wor=
k/plnx_arm-xilinx-linux-gnueabi/linux-xlnx/4.9-xilinx-v2017.2&#43;git20-r0/=
temp/log.do_kernel_checkout.34928<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task (/opt/pkg/petalinux/2017.2/components/yo=
cto/source/arm/layers/meta-xilinx/recipes-kernel/linux/linux-xlnx_4.9.bb:do=
_kernel_checkout) failed with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">And my kernel gets downloaded to:<o:p></o:p></p>
<p class=3D"MsoNormal">/tmp/stride/work/plnx_arm-xilinx-linux-gnueabi/linux=
-xlnx/4.9-xilinx-v2017.2&#43;git20-r0/trunk<o:p></o:p></p>
<p class=3D"MsoNormal">But Yocto is looking for it in /tmp/stride/work-shar=
ed/plnx_arm/kernel-source<o:p></o:p></p>
<p class=3D"MsoNormal">Which is why it is failing in kernel-yocto.bbclass w=
hen I try and compile a kernel located in SVN.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If it is a git repo it gets copied into /tmp/stride/=
work-shared/plnx_arm/kernel-source and things work nicely.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_kernel_checkout() {<o:p></o:p></p>
<p class=3D"MsoNormal">&#8230;&#8230;.<o:p></o:p></p>
<p class=3D"MsoNormal">if [ -d &quot;${WORKDIR}/git/&quot; ]; then<o:p></o:=
p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"># case: git repository<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # if S is WORKDIR/git, then we shoul=
dn't be moving or deleting the tree.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if [ &quot;${source_dir}&quot; !=3D =
&quot;${source_workdir}&quot; ]; then<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; if [ -d &quot;${source_workdir}/.git&quot; ]; then<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # regular git r=
epository with .git<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rm -rf ${S}<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mv ${WORKDIR}/g=
it ${S}<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; else<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # create source=
 for bare cloned git repository<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; git clone ${WOR=
KDIR}/git ${S}<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rm -rf ${WORKDI=
R}/git<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; fi<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fi<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cd ${S}<o:p></o:p></p>
<p class=3D"MsoNormal">else<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # case: we have no git repository at=
 all. <o:p>
</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# To support low bandwidth opti=
ons for building the kernel, we'll just
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# convert the tree to a git rep=
o and let the rest of the process work unchanged<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # if ${S} hasn't been set to the pro=
per subdirectory a default of &quot;linux&quot; is
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# used, but we can't initialize=
 that empty directory. So check it and throw a<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # clear error<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cd ${S}<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if [ ! -f &quot;Makefile&quot; ]; th=
en<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; bberror &quot;S ${S} is not set to the linux source directory. =
Check &quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; bbfatal &quot;the recipe and set S to the proper extracted subd=
irectory&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fi<o:p></o:p></p>
<p class=3D"MsoNormal">&#8230;&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">${S} is set to /tmp/stride/work-shared/plnx_arm/kern=
el-source when I need one of the two things to happen:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">A)<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>${S} set to &nbsp;${WORKDIR}/trunk&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; OR<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">B)<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>${WORKDIR}/trunk copied to ${S}/<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I could modify that file directly on my machine and =
move on, but is there a way I can create an .bbappend or something that wil=
l change ${S}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m pretty new to Yocto and I&#8217;d like to =
have a solution that resides in my project folder instead of having to modi=
fy Yocto files so that when I do tool installs on new development machines =
I can just checkout my project data and have it
 work.&nbsp; I&#8217;m using Petalinux, so the process would be install tha=
t, then checkout the project and then build it, with the correct ${S} direc=
tory flowing into kernel-yocto.bbclass:do_kernel_checkout()<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m new Yocto but I&#8217;ve been reading a to=
n and am looking for some advice.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>This e-mail contains proprietary information some or all of which may b=
e legally privileged. It is intended for the recipient only. If an addressi=
ng or transmission error has misdirected this e-mail, please notify the aut=
hority by replying to this e-mail. If you are not the intended recipient yo=
u must not use, disclose, distribute, copy, print, or rely on this e-mail. =
 In addition, information contained in or attached to this e-mail may be su=
bject to either 22 C.F.R. Parts 120?130, or 15 C.F.R. Parts 730-774. These =
regulations prohibit the release or disclosure of certain information conta=
ined herein to anyone who is not a U.S. citizen or permanent resident alien=
, without a license first having been issued.  Failure to observe such requ=
irements is a violation of U.S. law that carries serious penalties.
&nbsp;&nbsp;&shy;&shy;&nbsp;&nbsp;</body>
</html>

--_000_1b231688863c4060b428c93d3b40fa0eERDCSEXCH01SMITHSSIINET_--
