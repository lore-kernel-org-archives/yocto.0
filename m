Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F13F1E014E0
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 21:27:26 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Apr 2013 21:27:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,547,1363158000"; 
	d="scan'208,217";a="291683629"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by azsmga001.ch.intel.com with ESMTP; 24 Apr 2013 21:27:14 -0700
Received: from orsmsx110.amr.corp.intel.com (10.22.240.8) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 24 Apr 2013 21:27:13 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.124]) by
	ORSMSX110.amr.corp.intel.com ([169.254.3.197]) with mapi id
	14.01.0355.002; Wed, 24 Apr 2013 21:27:13 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Atanas Gegov <atanas.gegov.oss@gmail.com>
Thread-Topic: [yocto] [eclipse-poky][RFC 0/6] Introducing a
	YoctoSDKCMakeProjectNature
Thread-Index: AQHOQQMpD9cs23/sk0i60feTBkzNpZjmUz2A
Date: Thu, 25 Apr 2013 04:27:13 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6FDCEE4E@ORSMSX104.amr.corp.intel.com>
References: <1366632363-6064-1-git-send-email-atanas.gegov.oss@gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C6FDCDC04@ORSMSX104.amr.corp.intel.com>
	<CAEe+mUaBtaM5hby00ACs-N_oZWMHeO2eqxt_2G5h8B-hvqtrsA@mail.gmail.com>
In-Reply-To: <CAEe+mUaBtaM5hby00ACs-N_oZWMHeO2eqxt_2G5h8B-hvqtrsA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [eclipse-poky][RFC 0/6] Introducing a YoctoSDKCMakeProjectNature
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
X-List-Received-Date: Thu, 25 Apr 2013 04:27:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C6FDCEE4EORSMSX104amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C6FDCEE4EORSMSX104amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Atanas,



Please see my comments below...



Thanks,

Jessica



From: Atanas Gegov [mailto:atanas.gegov.oss@gmail.com]
Sent: Wednesday, April 24, 2013 8:48 AM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [eclipse-poky][RFC 0/6] Introducing a YoctoSDKCMakePro=
jectNature



Hi Jessica,

thank you for the comments!



1.      Yes, the idea is that at the end there are the current category ("Y=
octo Project ADT Autotools Project" with some Autotools-based project templ=
ates) and a new category "Yocto Project ADT CMake Project" with e.g. its ow=
n "Hello World C++ CMake Project". The latter category and the templates wi=
ll be implemented in the upcoming patch series.

Great that's what I'd expected .



2.      Could you please give me a small example how it should look like?Sh=
ould the method addNatures receive a list of natures to add? What is the ca=
se if more natures are added to a project (e.g. SDKNature + AutotoolsNature=
 + EmptyNature)? Or do you think of enum based on the buildsystem natures o=
nly (Autotools vs. CMake) and not based on all 4 natures?

I took another look of the class, we should be able to even further simplif=
y the API of addNatures.  We can make all the natures as instance variables=
 of the class.  In process method we assign them values and totally elimina=
te passing natures in addNatures API.  So the code should be(please ignore =
the incorrect capitalization due to auto correction):



Public class NewYoctoProjectTemplateProcess extends ProcessRunner {

...

            Private Boolean isEmptyProject;

            Private Boolean isAutotoolsProject;

            Private Boolean isCMakeProject;

...

            Public void process(...) {

            ...

                        isEmptyProject =3D ...

                        isAutotoolsProject =3D ...

                        isCMakeProject =3D ...

            ...

                        addNatures(project, false, monitor);

            ...

            }

            ...

            Private void addNatures(IProject project, Boolean projectExists=
, IProgressMonitor monitor) {

                        ...

            }



3.      I just created an account in bugzilla.yoctoproject.org<http://bugzi=
lla.yoctoproject.org/>, so you can assign me the CMake support entry.

Super.  You'll get your first assignment J


Thanks,
Atanas



On Tue, Apr 23, 2013 at 8:50 PM, Zhang, Jessica <jessica.zhang@intel.com<ma=
ilto:jessica.zhang@intel.com>> wrote:

Hi Atanas,

Overall, the patches look good.  Couple comments:

1. So from the end user perspective, after the 2nd patch set, user will see=
 "Yocto Project ADT CMake Project" category when they want to create a new =
project?
2. Can we change the API for addNatures by using an enum type for projectNa=
ture instead of explicitly listing all of them out.  This way is easier for=
 code maintenance and API usability.
3. Don't know whether you've created a bugzilla account at bugzilla.yoctopr=
oject.org<http://bugzilla.yoctoproject.org> or not, if not, please do, sinc=
e I'd hope you're able to help fixing certain bugs in this area down the ro=
ad.  Also, from project planning process wise, we're right in the 1.5 plann=
ing, and I'd like to create an entry in the bugzilla for extending eclipse =
for CMake support and assign that to you, so it's easier to track what are =
the community contribution to the project.

Thanks,
Jessica


-----Original Message-----
From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg>] On Behalf Of Atanas Gegov
Sent: Monday, April 22, 2013 5:06 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] [eclipse-poky][RFC 0/6] Introducing a YoctoSDKCMakeProject=
Nature

From: Atanas Gegov <atanas.gegov@bmw-carit.de<mailto:atanas.gegov@bmw-carit=
.de>>

Hi,

This patch series introduces a YoctoSDKCMakeProjectNature as a new nature f=
or CMake-based Yocto Projects in the IDE. It requires the basic YoctoSDKPro=
jectNature and is an alternative to the YoctoSDKAutotoolsProjectNature.

This does not affect the currently existing Autotools template projects.

Upcoming patch series will add the last missing parts for having CMake proj=
ects in the IDE: a ManagedBuilder for CMake (CMake toolchain for building i=
n Eclipse) and some template projects. However, I already wanted to post th=
is series for a review and make sure that the concept is acceptable, so tha=
t we can build on top of it.

Cheers, Atanas

P.S: This patch series apply on the current master "plugins/sdk.ide:
Extracted error message to YoctoSDKMessages"
(7142c5fc82a41a9d5f86c48b289db0ef44f5a897).

Atanas Gegov (6):
  plugins/sdk.ide: Prepared templates for CMake nature
  plugins/sdk.ide: Added a new YoctoSDKCMakeProjectNature
  plugins/sdk.ide: Enable the creation of CMake projects
  plugins/sdk.ide: Update CMake projects on Yocto settings change
  plugins/sdk.ide: Renamed template process
  plugins/sdk.ide: Fixed whitespace issues

 .../OSGI-INF/l10n/bundle.properties                |    1 +
 plugins/org.yocto.sdk.ide/plugin.xml               |   25 +-
 .../ide/natures/YoctoSDKCMakeProjectNature.java    |   92 +++++++
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |    7 +-
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |  245 ----------------=
---
 .../ide/wizard/NewYoctoProjectTemplateProcess.java |  256 ++++++++++++++++=
++++
 .../EmptyCAutotoolsProject/template.xml            |    1 +
 .../EmptyCPPAutotoolsProject/template.xml          |    1 +
 .../HelloWorldCAutotoolsProject/template.xml       |    1 +
 .../HelloWorldCGTKAutotoolsProject/template.xml    |    1 +
 .../HelloWorldCPPAutotoolsProject/template.xml     |    1 +
 11 files changed, 384 insertions(+), 247 deletions(-)  create mode 100644 =
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




--_000_C6510F6D410BB64A8C15398EDC6B847C6FDCEE4EORSMSX104amrcor_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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
/* List Definitions */
@list l0
	{mso-list-id:915866189;
	mso-list-type:hybrid;
	mso-list-template-ids:2093359978 -1430477942 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Atanas,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Please see my comments be=
low&#8230;<o:p></o:p></span></p>
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
<b>Sent:</b> Wednesday, April 24, 2013 8:48 AM<br>
<b>To:</b> Zhang, Jessica<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] [eclipse-poky][RFC 0/6] Introducing a YoctoSDKC=
MakeProjectNature<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Hi Jessica,<br>
<br>
thank you for the comments!<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">1.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Yes, the idea is that at the end there are the curr=
ent category (<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;">&quot;Yocto Project ADT Autotools Project&quot; wi=
th some Autotools-based project templates</span>) and a new category
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;">&quot;Yocto Project ADT CMake Project&quot; with e.g. its own &q=
uot;Hello World C&#43;&#43; CMake Project&quot;. The latter category and th=
e templates will be implemented in the upcoming patch series.&nbsp;<o:p></o=
:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">Great that&#821=
7;s what I&#8217;d expected .<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:=
p></span></p>
</div>
<div>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">2.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Could you please give me a small example how it sho=
uld look like?Should the method addNatures receive a list of natures to add=
? What is the case if more natures are added to a project (e.g. SDKNature &=
#43; AutotoolsNature &#43; EmptyNature)?
 Or do you think of enum based on the buildsystem natures only (Autotools v=
s. CMake) and not based on all 4 natures?<o:p></o:p></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">I took another =
look of the class, we should be able to even further simplify the API of ad=
dNatures.&nbsp; We can make all the natures as instance variables of the cl=
ass.&nbsp; In process method we assign them values
 and totally eliminate passing natures in addNatures API.&nbsp; So the code=
 should be(please ignore the incorrect capitalization due to auto correctio=
n):<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">Public class Ne=
wYoctoProjectTemplateProcess extends ProcessRunner {<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&#8230;<o:p></o=
:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Private Boolean isEmpty=
Project;
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Private Boolean isAutot=
oolsProject;<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Private Boolean isCMake=
Project;<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&#8230;<o:p></o=
:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Public void process(&#8=
230;) {<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#8230;<o:p></o:p></spa=
n></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; isEmptyProject =3D &#8230;=
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; isAutotoolsProject =3D &#8=
230;<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; isCMakeProject =3D &#8230;=
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#8230;<o:p></o:p></spa=
n></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; addNatures(project, false, moni=
tor);<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#8230;<o:p></o:p></spa=
n></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#8230;<o:p></o:p></spa=
n></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Private void addNatures=
(IProject project, Boolean projectExists, IProgressMonitor monitor) {<o:p><=
/o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#8230;<o:p></o:p></span><=
/p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:=
p></span></p>
</div>
<div>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">3.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>I just created an account in&nbsp;<a href=3D"http:/=
/bugzilla.yoctoproject.org/" target=3D"_blank"><span style=3D"font-size:10.=
0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">bugzilla.yoctopro=
ject.org</span></a>, so you can assign me the CMake support entry.<o:p></o:=
p></p>
<p class=3D"MsoListParagraph"><span style=3D"color:#1F497D">Super.&nbsp; Yo=
u&#8217;ll get your first assignment
</span><span style=3D"font-family:Wingdings;color:#1F497D">J</span><span st=
yle=3D"color:#1F497D"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><br>
Thanks,<br>
Atanas<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Tue, Apr 23, 2013 at 8:50 PM, Zhang, Jessica &lt;=
<a href=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@=
intel.com</a>&gt; wrote:<o:p></o:p></p>
<p class=3D"MsoNormal">Hi Atanas,<br>
<br>
Overall, the patches look good. &nbsp;Couple comments:<br>
<br>
1. So from the end user perspective, after the 2nd patch set, user will see=
 &quot;Yocto Project ADT CMake Project&quot; category when they want to cre=
ate a new project?<br>
2. Can we change the API for addNatures by using an enum type for projectNa=
ture instead of explicitly listing all of them out. &nbsp;This way is easie=
r for code maintenance and API usability.<br>
3. Don't know whether you've created a bugzilla account at <a href=3D"http:=
//bugzilla.yoctoproject.org" target=3D"_blank">
bugzilla.yoctoproject.org</a> or not, if not, please do, since I'd hope you=
're able to help fixing certain bugs in this area down the road. &nbsp;Also=
, from project planning process wise, we're right in the 1.5 planning, and =
I'd like to create an entry in the bugzilla
 for extending eclipse for CMake support and assign that to you, so it's ea=
sier to track what are the community contribution to the project.<br>
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
Sent: Monday, April 22, 2013 5:06 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] [eclipse-poky][RFC 0/6] Introducing a YoctoSDKCMakeProject=
Nature<br>
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
n Eclipse) and some template projects. However, I already wanted to post th=
is series for a review and make
 sure that the concept is acceptable, so that we can build on top of it.<br=
>
<br>
Cheers, Atanas<br>
<br>
P.S: This patch series apply on the current master &quot;plugins/sdk.ide:<b=
r>
Extracted error message to YoctoSDKMessages&quot;<br>
(7142c5fc82a41a9d5f86c48b289db0ef44f5a897).<br>
<br>
Atanas Gegov (6):<br>
&nbsp; plugins/sdk.ide: Prepared templates for CMake nature<br>
&nbsp; plugins/sdk.ide: Added a new YoctoSDKCMakeProjectNature<br>
&nbsp; plugins/sdk.ide: Enable the creation of CMake projects<br>
&nbsp; plugins/sdk.ide: Update CMake projects on Yocto settings change<br>
&nbsp; plugins/sdk.ide: Renamed template process<br>
&nbsp; plugins/sdk.ide: Fixed whitespace issues<br>
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
------------------<br>
&nbsp;.../ide/wizard/NewYoctoProjectTemplateProcess.java | &nbsp;256 &#43;&=
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
&nbsp;11 files changed, 384 insertions(&#43;), 247 deletions(-) &nbsp;creat=
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
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C6FDCEE4EORSMSX104amrcor_--
