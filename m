Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B65B2E01565
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 09:45:55 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 13 Sep 2013 09:45:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,899,1371106800"; 
	d="scan'208,217";a="395344294"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga001.fm.intel.com with ESMTP; 13 Sep 2013 09:45:54 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.62]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.128]) with mapi id
	14.03.0123.003; Fri, 13 Sep 2013 09:45:53 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project 1.5 M4 release readiness meeting
Thread-Index: Ac6woLSTCGYHtLP6SaSsdL4T25kg/A==
Date: Fri, 13 Sep 2013 16:45:53 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A8EF4CEBA@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project 1.5 M4 release readiness meeting
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
X-List-Received-Date: Fri, 13 Sep 2013 16:45:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A8EF4CEBAORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF4CEBAORSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
Saul, Darren, Denys, Jessica, ScottR, Mike Harvey, Richard, TomZ , Nitin, S=
ong

Minutes:

  * Found problems in M4 RC2, most of the problems are resolved. RC3 genera=
ted last Friday, QA run the full pass testing.
  * QA report: https://wiki.yoctoproject.org/wiki/WW36_-_2013-09-05_-_Full_=
Pass_Release_1.5_M4.rc3
  * All functions/features and core BSPs have been built with no error, tes=
ted and results are logged in bugzilla.
  * no high bugs open for M4
  * No documentation issues for M4. The new bitbake manual is not been comp=
leted due to resource issue. Will not be there for 1.5.
  * Package update and commit status update is on target.
  * atom-pc has been replaced with generic x86 BSP, but it's still listed i=
n the report. This is a mistake of the report. Song verified with QA that t=
he generic x86 BSP has been tested with the atom-pc hardware.
  * Centos was not listed in the report for distros tested, but it has been=
 tested. The QA report will be corrected and updated.

  - Decision: since Steve and Mark on CCB was not in the meeting, Song will=
 send out email asking for CCB approval.


https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status#Milestone_4<ht=
tps://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status>


--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF4CEBAORSMSX108amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<div>Attendees:</div>
<div>Saul, Darren, Denys, Jessica, ScottR, Mike Harvey, Richard, TomZ , Nit=
in, Song</div>
<div>&nbsp;</div>
<div>Minutes:</div>
<div>&nbsp;</div>
<div>&nbsp; * Found problems in M4 RC2, most of the problems are resolved. =
RC3 generated last Friday, QA run the full pass testing.</div>
<div>&nbsp; * QA report: <a href=3D"https://wiki.yoctoproject.org/wiki/WW36=
_-_2013-09-05_-_Full_Pass_Release_1.5_M4.rc3"><font color=3D"blue"><u>https=
://wiki.yoctoproject.org/wiki/WW36_-_2013-09-05_-_Full_Pass_Release_1.5_M4.=
rc3</u></font></a></div>
<div>&nbsp; * All functions/features and core BSPs have been built with no =
error, tested and results are logged in bugzilla.</div>
<div>&nbsp; * no high bugs open for M4</div>
<div>&nbsp; * No documentation issues for M4. The new bitbake manual is not=
 been completed due to resource issue. Will not be there for 1.5.</div>
<div>&nbsp; * Package update and commit status update is on target.</div>
<div>&nbsp; * atom-pc has been replaced with generic x86 BSP, but it's stil=
l listed in the report. This is a mistake of the report. Song verified with=
 QA that the generic x86 BSP has been tested with the atom-pc hardware.</di=
v>
<div>&nbsp; * Centos was not listed in the report for distros tested, but i=
t has been tested. The QA report will be corrected and updated.</div>
<div>&nbsp;</div>
<div>&nbsp; - Decision: since Steve and Mark on CCB was not in the meeting,=
 Song will send out email asking for CCB approval.</div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman"><a href=3D"https://wiki.yoctoproject.or=
g/wiki/Yocto_Project_v1.5_Status"><font face=3D"Calibri" color=3D"blue"><u>=
https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status#Milestone_4</u=
></font></a></font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF4CEBAORSMSX108amrcor_--
