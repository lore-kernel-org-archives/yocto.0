Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 682304C80BCF
	for <yocto@yoctoproject.org>; Tue,  9 Nov 2010 21:53:16 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Nov 2010 19:53:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,176,1288594800"; 
	d="scan'208,217";a="625255359"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 09 Nov 2010 19:53:16 -0800
Received: from orsmsx001.amr.corp.intel.com ([10.22.226.42]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi; Tue, 9 Nov 2010
	19:53:15 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 9 Nov 2010 19:52:44 -0800
Thread-Topic: Distro 1.0 Planning minutes
Thread-Index: AcuAirtTdqgb3YCjSoezHuOYpyRIIg==
Message-ID: <731F6F755F547148839CA39AD8282CE38F8C85@orsmsx001.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Distro 1.0 Planning minutes
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
X-List-Received-Date: Wed, 10 Nov 2010 03:53:16 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_731F6F755F547148839CA39AD8282CE38F8C85orsmsx001amrcorpi_"

--_000_731F6F755F547148839CA39AD8282CE38F8C85orsmsx001amrcorpi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
PRC: Dave, RP, PRC Distro Team,
US: Beth, Scott, Nitin, Saul

Opens: no opens

4 milestones

M2: 6 sprints

M3 : 6 sprints
  around a week of sprint
  sprint A is bit longer

M4: stabilizing & bug fixing

Release: on Apr 1st (April Fool's Day), Contingency Apr 15th
 release venue: Linux foundation event on Apr 6th week

PRC Holidays:
  New hear holiday: Feb 3rd, normally 8 days, people may take extra days of=
f before or after
  Saul: QA testing may need pushing further 1 week ?
  Dave: the QA test may be complete by the new year holiday

For publically publishing this plan, remove owner/source ?
: take it offline

Main goals of 1.0 release:
  Improve overall experience, and add new BSPs.

Package updates:
  License Checksum & Source Checksum  (in bb files)
    Will be made fetal errors
  Source Checksum:
    The current checkers only checks the source checksum in the ini files a=
nd not in bb files.
    Will drop from sprint B ?
    Need to do Audit to find how many are mismatching.
    AR: for Saul
  Mark will be doing package distribution
  Need to do package updates as soon as we can.


M3: Package updates, should be a small list

Yu Ke: work with Saul, rootless X & checksum

Qing: work with Mark on zypper/RPM, performance investigation,
  RP: fork vs. exec discussion

Edwin: KVM/qemu work, qemu recipe maintainer, audio in qemu?
  Our qemu has big patch for GL pass through

Dongxiao:  sysroot per machine per recipe
        Image creator ?
        ophono ?

Lei: help Beth with package history
   How long is your internship? 1 year. till next summer

Nitin:
   M2: toolchain, eglibc, gcc with testing, perl
   M3: mklibs with mark
   eglibc & busybox need newer patches for fedora 14;  josh's patches can g=
o in.

Scott:
   security process
   libtool sysroot support
   upstream documentation enabling/disabling
   helping Beth with autobuilder
   helping with sysadmin

Beth:
   Autobuilder
   updates
   creating license directory for release process
   Documentation of release process & clarifying
   Package History with Saul & RP

open task list:
   BSP work
   profiling & tracing
   Package developer tool ?
   updating metademo apps









--_000_731F6F755F547148839CA39AD8282CE38F8C85orsmsx001amrcorpi_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
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
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DWordSection1>

<p class=3DMsoNormal>Attendees:<o:p></o:p></p>

<p class=3DMsoNormal>PRC: Dave, RP, PRC Distro Team, <o:p></o:p></p>

<p class=3DMsoNormal>US: Beth, Scott, Nitin, Saul<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Opens: no opens<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>4 milestones<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>M2: 6 sprints<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>M3 : 6 sprints<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; around a week of sprint<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; sprint A is bit longer<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>M4: stabilizing &amp; bug fixing<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Release: on Apr 1st (April Fool&#8217;s Day), Continge=
ncy
Apr 15th<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;release venue: Linux foundation event on Apr 6th=
 week<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>PRC Holidays:<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; New hear holiday: Feb 3rd, normally 8 days, peo=
ple
may take extra days off before or after<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; Saul: QA testing may need pushing further 1 wee=
k ?<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; Dave: the QA test may be complete by the new ye=
ar
holiday<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>For publically publishing this plan, remove owner/sour=
ce ? <o:p></o:p></p>

<p class=3DMsoNormal>: take it offline<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Main goals of 1.0 release:<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; Improve overall experience, and add new BSPs. <=
o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Package updates:<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; License Checksum &amp; Source Checksum&nbsp; (i=
n bb
files)<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; Will be made fetal errors<o:p></o:p=
></p>

<p class=3DMsoNormal>&nbsp; Source Checksum:<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; The current checkers only checks th=
e
source checksum in the ini files and not in bb files.<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; Will drop from sprint B ?<o:p></o:p=
></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; Need to do Audit to find how many a=
re
mismatching.<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; AR: for Saul<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; Mark will be doing package distribution<o:p></o=
:p></p>

<p class=3DMsoNormal>&nbsp; Need to do package updates as soon as we can.<o=
:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>M3: Package updates, should be a small list<o:p></o:p>=
</p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Yu Ke: work with Saul, rootless X &amp; checksum <o:p>=
</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Qing: work with Mark on zypper/RPM, performance
investigation, <o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; RP: fork vs. exec discussion<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Edwin: KVM/qemu work, qemu recipe maintainer, audio in=
 qemu?<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; Our qemu has big patch for GL pass through<o:p>=
</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Dongxiao:&nbsp; sysroot per machine per recipe<o:p></o=
:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Image creat=
or ?<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ophono ?<o:=
p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Lei: help Beth with package history<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; How long is your internship? 1 year. till=
 next
summer<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Nitin: <o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; M2: toolchain, eglibc, gcc with testing, =
perl<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; M3: mklibs with mark<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; eglibc &amp; busybox need newer patches f=
or
fedora 14; &nbsp;josh's patches can go in.<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Scott:<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; security process<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; libtool sysroot support<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; upstream documentation enabling/disabling=
<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; helping Beth with autobuilder<o:p></o:p><=
/p>

<p class=3DMsoNormal>&nbsp;&nbsp; helping with sysadmin<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Beth: <o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; Autobuilder<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; updates<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; creating license directory for release pr=
ocess<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; Documentation of release process &amp;
clarifying<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; Package History with Saul &amp; RP<o:p></=
o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; <o:p></o:p></p>

<p class=3DMsoNormal>open task list:<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; BSP work<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; profiling &amp; tracing<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; Package developer tool ?<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp; updating metademo apps<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>

--_000_731F6F755F547148839CA39AD8282CE38F8C85orsmsx001amrcorpi_--
