Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3BAEE01409
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 14:50:47 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 Jun 2013 14:50:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,795,1363158000"; 
	d="scan'208,217";a="311753884"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by azsmga001.ch.intel.com with ESMTP; 03 Jun 2013 14:50:46 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 3 Jun 2013 14:50:46 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.22]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.198]) with mapi id
	14.03.0123.003; Mon, 3 Jun 2013 14:50:46 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Atanas Gegov <atanas.gegov.oss@gmail.com>
Thread-Topic: [yocto] [eclipse-poky][PATCH 0/7] Introducing a
	YoctoSDKCMakeProjectNature
Thread-Index: AQHOW6AIAxQNavSAA0WwVsV8DW4OfpkkkUIQ
Date: Mon, 3 Jun 2013 21:50:45 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C364E1@ORSMSX103.amr.corp.intel.com>
References: <1369397005-3262-1-git-send-email-atanas.gegov.oss@gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C32CD4@ORSMSX103.amr.corp.intel.com>
	<CAEe+mUax5HC28NAL+h9qT8Z4t81oazWcjvR6CFzbthivbiXV8A@mail.gmail.com>
In-Reply-To: <CAEe+mUax5HC28NAL+h9qT8Z4t81oazWcjvR6CFzbthivbiXV8A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [eclipse-poky][PATCH 0/7] Introducing a YoctoSDKCMakeProjectNature
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
X-List-Received-Date: Mon, 03 Jun 2013 21:50:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C73C364E1ORSMSX103amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C73C364E1ORSMSX103amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Atanas,



Thanks, this is perfect to get our QA a standard test case for the function=
.  They can add other corner case tests for stress test.



Thanks,

Jessica



From: Atanas Gegov [mailto:atanas.gegov.oss@gmail.com]
Sent: Tuesday, May 28, 2013 5:36 AM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [eclipse-poky][PATCH 0/7] Introducing a YoctoSDKCMakeP=
rojectNature



Hi Jessica,



Thank you for merging our patches!

About QA, I took a look in Bugzilla and the "Eclipse Plugin" Test Cases the=
re. I thought something like the following might be reasonable to test the =
CMake feature:



0. Precondition: Set up at least 2 "Cross development profiles" (e.g. one f=
or "i586-..." and one for "arm...") in the Yocto IDE.

(Window > Preferences > Yocto Project ADT)



1. Select File -> New -> Project.



2. Double click C or C++ (two separate test cases).



3. Expand the category "Yocto ADT CMake Project".



4. Select "Hello World C++ CMake Project" (or "Hello World C CMake Project"=
 if C chosen in Step 2.).



5. Put a name in the Project name.



6. Click Next.



7. Add information in the fields about Author, Vendor etc..



8. Click Finish.



9. (optional) Right-click on the created project > Properties > C/C++ Build=
 > Settings > choose "CMake Options" in the tab "Tool settings". Change som=
e options there (e.g. enter "--debug-output" in the field "Other flags"). P=
ress Apply and OK.



10. Press the hammer symbol to build the project.



11. Check the output of the build process:

a) The console "Configure using CMake [<project name>]" should list the cor=
rect C/C++ cross-compilers of the chosen cross development profile (and als=
o provide some more verbose output if "--debug-output" was set in Step 9.)

b) The console "CDT build console [<project name>]" shows the usage of the =
correct cross-compiler and sysroot (if verbose Makefile generated (this is =
the default option but can be changed from the "CMake Options") in Step 9.)

c) The file "toolchain.cmake" has been generated with correct cross develop=
ment settings (compiler, sysroot etc.).

d) A binary is created in the Debug folder



12. Change the cross development profile for the project (Right-click on th=
e created project > Properties > Yocto Project Settings > choose

another profile from the drop-down box > Apply > OK) and go back to Step 9.=
 to build the project again with another cross development profile.



Do you think the test case is OK like this?



Best regards,

Atanas



On Fri, May 24, 2013 at 8:55 PM, Zhang, Jessica <jessica.zhang@intel.com<ma=
ilto:jessica.zhang@intel.com>> wrote:

Hi Atanas,

All the cmake related patches have been merged to eclipse-poky master.   Al=
so, can you provide some detailed information regarding how to test the fea=
ture so QA can add adequate test cases in the existing eclipse plug-in test=
ing.

Thanks,
Jessica


-----Original Message-----
From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg>] On Behalf Of Atanas Gegov
Sent: Friday, May 24, 2013 5:03 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] [eclipse-poky][PATCH 0/7] Introducing a YoctoSDKCMakeProje=
ctNature

From: Atanas Gegov <atanas.gegov@bmw-carit.de<mailto:atanas.gegov@bmw-carit=
.de>>

Hi,

This patch series introduces a YoctoSDKCMakeProjectNature as a new nature f=
or CMake-based Yocto Projects in the IDE. It requires the basic YoctoSDKPro=
jectNature and is an alternative to the YoctoSDKAutotoolsProjectNature.

This does not affect the currently existing Autotools template projects.

Upcoming patch series will add the last missing parts for having CMake proj=
ects in the IDE: a ManagedBuilder for CMake (CMake toolchain for building i=
n Eclipse) and some template projects.

Cheers, Atanas

P.S: This patch series apply on the current master "Fix the issue introduce=
d by code refactoring since DialogHandler inherit IHandler, execute expect =
to return an object"
(dd7ab69282f7c9cc18ff06fffaa9681e4b297cfa).


Atanas Gegov (7):
  plugins/sdk.ide: Prepared templates for CMake nature
  plugins/sdk.ide: Added a new YoctoSDKCMakeProjectNature
  plugins/sdk.ide: Enable the creation of CMake projects
  plugins/sdk.ide: Update CMake projects on Yocto settings change
  plugins/sdk.ide: Renamed template process
  plugins/sdk.ide: Fixed whitespace issues
  plugins/sdk.ide: Extracted member variables

 .../OSGI-INF/l10n/bundle.properties                |    1 +
 plugins/org.yocto.sdk.ide/plugin.xml               |   25 +-
 .../ide/natures/YoctoSDKCMakeProjectNature.java    |   92 +++++++
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |    7 +-
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |  245 ----------------=
--
 .../ide/wizard/NewYoctoProjectTemplateProcess.java |  267 ++++++++++++++++=
++++
 .../EmptyCAutotoolsProject/template.xml            |    1 +
 .../EmptyCPPAutotoolsProject/template.xml          |    1 +
 .../HelloWorldCAutotoolsProject/template.xml       |    1 +
 .../HelloWorldCGTKAutotoolsProject/template.xml    |    1 +
 .../HelloWorldCPPAutotoolsProject/template.xml     |    1 +
 11 files changed, 395 insertions(+), 247 deletions(-)  create mode 100644 =
plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKCMakeProjec=
tNature.java
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/=
NewYoctoCProjectTemplate.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/=
NewYoctoProjectTemplateProcess.java

--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto




--_000_C6510F6D410BB64A8C15398EDC6B847C73C364E1ORSMSX103amrcor_
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Atanas,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks, this is perfect t=
o get our QA a standard test case for the function. &nbsp;They can add othe=
r corner case tests for stress test.<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Atanas G=
egov [mailto:atanas.gegov.oss@gmail.com]
<br>
<b>Sent:</b> Tuesday, May 28, 2013 5:36 AM<br>
<b>To:</b> Zhang, Jessica<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] [eclipse-poky][PATCH 0/7] Introducing a YoctoSD=
KCMakeProjectNature<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">Hi Jessica,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Thank you for merging our patches!<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">About QA, I took a look in Bugzilla and the &quot;Ec=
lipse Plugin&quot; Test Cases there. I thought something like the following=
 might be reasonable to test the CMake feature:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">0. Precondition: Set up at least 2 &quot;Cross devel=
opment profiles&quot; (e.g. one for &quot;i586-...&quot; and one for &quot;=
arm...&quot;) in the Yocto IDE.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">(Window &gt; Preferences &gt; Yocto Project ADT)<o:p=
></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">1. Select File -&gt; New -&gt; Project.<o:p></o:p></=
p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">2. Double click C or C&#43;&#43; (two separate test =
cases).<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">3. Expand the category &quot;Yocto ADT CMake Project=
&quot;.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">4. Select &quot;Hello World C&#43;&#43; CMake Projec=
t&quot; (or &quot;Hello World C CMake Project&quot; if C chosen in Step 2.)=
.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">5. Put a name in the Project name.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">6. Click Next.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">7. Add information in the fields about Author, Vendo=
r etc..<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">8. Click Finish.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">9. (optional) Right-click on the created project &gt=
; Properties &gt; C/C&#43;&#43; Build &gt; Settings &gt; choose &quot;CMake=
 Options&quot; in the tab &quot;Tool settings&quot;. Change some options th=
ere (e.g. enter &quot;--debug-output&quot; in the field &quot;Other flags&q=
uot;). Press Apply
 and OK.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">10. Press the hammer symbol to build the project.<o:=
p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">11. Check the output of the build process:<o:p></o:p=
></p>
</div>
<div>
<p class=3D"MsoNormal">a) The console &quot;Configure using CMake [&lt;proj=
ect name&gt;]&quot; should list the correct C/C&#43;&#43; cross-compilers o=
f the chosen cross development profile (and also provide some more verbose =
output if &quot;--debug-output&quot; was set in Step 9.)<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">b) The console &quot;CDT build console [&lt;project =
name&gt;]&quot; shows the usage of the correct cross-compiler and sysroot (=
if verbose Makefile generated (this is the default option but can be change=
d from the &quot;CMake Options&quot;) in Step 9.)<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">c) The file &quot;toolchain.cmake&quot; has been gen=
erated with correct cross development settings (compiler, sysroot etc.).<o:=
p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">d) A binary is created in the Debug folder<o:p></o:p=
></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">12. Change the cross development profile for the pro=
ject (Right-click on the created project &gt; Properties &gt; Yocto Project=
 Settings &gt; choose<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">another profile from the drop-down box &gt; Apply &g=
t; OK) and go back to Step 9. to build the project again with another cross=
 development profile.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Do you think the test case is OK like this?<o:p></o:=
p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Atanas<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Fri, May 24, 2013 at 8:55 PM, Zhang, Jessica &lt;=
<a href=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@=
intel.com</a>&gt; wrote:<o:p></o:p></p>
<p class=3D"MsoNormal">Hi Atanas,<br>
<br>
All the cmake related patches have been merged to eclipse-poky master. &nbs=
p; Also, can you provide some detailed information regarding how to test th=
e feature so QA can add adequate test cases in the existing eclipse plug-in=
 testing.<br>
<br>
Thanks,<br>
Jessica<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>] On Behalf Of Atanas Gegov<br>
Sent: Friday, May 24, 2013 5:03 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] [eclipse-poky][PATCH 0/7] Introducing a YoctoSDKCMakeProje=
ctNature<br>
<br>
From: Atanas Gegov &lt;<a href=3D"mailto:atanas.gegov@bmw-carit.de">atanas.=
gegov@bmw-carit.de</a>&gt;<br>
<br>
Hi,<br>
<br>
This patch series introduces a YoctoSDKCMakeProjectNature as a new nature f=
or CMake-based Yocto Projects in the IDE. It requires the basic YoctoSDKPro=
jectNature and is an alternative to the YoctoSDKAutotoolsProjectNature.<br>
<br>
This does not affect the currently existing Autotools template projects.<br=
>
<br>
Upcoming patch series will add the last missing parts for having CMake proj=
ects in the IDE: a ManagedBuilder for CMake (CMake toolchain for building i=
n Eclipse) and some template projects.<br>
<br>
Cheers, Atanas<br>
<br>
P.S: This patch series apply on the current master &quot;Fix the issue intr=
oduced by code refactoring since DialogHandler inherit IHandler, execute ex=
pect to return an object&quot;<br>
(dd7ab69282f7c9cc18ff06fffaa9681e4b297cfa).<br>
<br>
<br>
Atanas Gegov (7):<br>
&nbsp; plugins/sdk.ide: Prepared templates for CMake nature<br>
&nbsp; plugins/sdk.ide: Added a new YoctoSDKCMakeProjectNature<br>
&nbsp; plugins/sdk.ide: Enable the creation of CMake projects<br>
&nbsp; plugins/sdk.ide: Update CMake projects on Yocto settings change<br>
&nbsp; plugins/sdk.ide: Renamed template process<br>
&nbsp; plugins/sdk.ide: Fixed whitespace issues<br>
&nbsp; plugins/sdk.ide: Extracted member variables<br>
<br>
&nbsp;.../OSGI-INF/l10n/bundle.properties &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp;1 &#43;<br>
&nbsp;plugins/org.yocto.sdk.ide/plugin.xml &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; | &nbsp; 25 &#43;-<br>
&nbsp;.../ide/natures/YoctoSDKCMakeProjectNature.java &nbsp; &nbsp;| &nbsp;=
 92 &#43;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&nbsp;.../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java | &nbsp; &nbsp;7 &=
#43;-<br>
&nbsp;.../sdk/ide/wizard/NewYoctoCProjectTemplate.java &nbsp; | &nbsp;245 -=
-----------------<br>
&nbsp;.../ide/wizard/NewYoctoProjectTemplateProcess.java | &nbsp;267 &#43;&=
#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&=
#43;&#43;&#43;&#43;<br>
&nbsp;.../EmptyCAutotoolsProject/template.xml &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;| &nbsp; &nbsp;1 &#43;<br>
&nbsp;.../EmptyCPPAutotoolsProject/template.xml &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;| &nbsp; &nbsp;1 &#43;<br>
&nbsp;.../HelloWorldCAutotoolsProject/template.xml &nbsp; &nbsp; &nbsp; | &=
nbsp; &nbsp;1 &#43;<br>
&nbsp;.../HelloWorldCGTKAutotoolsProject/template.xml &nbsp; &nbsp;| &nbsp;=
 &nbsp;1 &#43;<br>
&nbsp;.../HelloWorldCPPAutotoolsProject/template.xml &nbsp; &nbsp; | &nbsp;=
 &nbsp;1 &#43;<br>
&nbsp;11 files changed, 395 insertions(&#43;), 247 deletions(-) &nbsp;creat=
e mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/Yocto=
SDKCMakeProjectNature.java<br>
&nbsp;delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wi=
zard/NewYoctoCProjectTemplate.java<br>
&nbsp;create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wi=
zard/NewYoctoProjectTemplateProcess.java<br>
<br>
--<br>
1.7.9.5<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C73C364E1ORSMSX103amrcor_--
