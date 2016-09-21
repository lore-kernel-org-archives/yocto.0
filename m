Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E661FE00C22; Wed, 21 Sep 2016 07:17:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3755CE00C1C
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 07:17:07 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga101.jf.intel.com with ESMTP; 21 Sep 2016 07:17:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,373,1470726000"; 
	d="scan'208,217";a="171424331"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
	by fmsmga004.fm.intel.com with ESMTP; 21 Sep 2016 07:17:04 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
	fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Wed, 21 Sep 2016 07:17:04 -0700
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.89]) by
	FMSMSX113.amr.corp.intel.com ([169.254.13.12]) with mapi id
	14.03.0248.002; Wed, 21 Sep 2016 07:17:03 -0700
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>
Thread-Topic: QA Test Report for Yocto Project  2.2 M3 rc1
Thread-Index: AdIUEsi+Wm5h1yHiTF2BUzff4RFXKA==
Date: Wed, 21 Sep 2016 14:17:02 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A020242ED@fmsmsx101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzYzOTFkOGItNDk4MC00YjRhLWJmYTgtYzA5MmVlOTQzMGQwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6IkJqSEMrTkErbVV2d2cyZDhGOVFMV0R5cHVKRzRCdmFxejliUnVhUXRMM009In0=
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Cc: "Lock, Joshua G" <joshua.g.lock@intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: QA Test Report for Yocto Project 2.2 M3 rc1
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
X-List-Received-Date: Wed, 21 Sep 2016 14:17:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0A5D9A624DF90343892F8F3FE7DE525A020242EDfmsmsx101amrcor_"

--_000_0A5D9A624DF90343892F8F3FE7DE525A020242EDfmsmsx101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

Here is the report for QA Cycle on 2.2 M3 rc1

Full Report :  https://wiki.yoctoproject.org/wiki/WW38_-_2016-09-09_-_Full_=
Test_Cycle_2.2_M3.rc1

Summary

There were 15 ne bugs found on this test cycle, 3 of them High that were tr=
iaged on time and now all of them have the fixes under review. There were a=
 little increase on Performance times for kernel building the other measure=
ments were stable  with exception of roofs that was not giving correct meas=
urements due a bug on qemuboot.

Bugs

           *New High and M+
- 10274 - Missing build-appliance image for 2.2 M3 rc1 - High [1]
- 10275 - Missing i686 toolchain sdk for 2.2 M3 rc1 - High [2]
- 10285 - qemuboot.conf has the incorrect values for image_name and qb_defa=
ult_kernel - High [3]
- 10262 - SD card not being recognized when trying to install the image - M=
edium+ [4]
- 10272 - Wav and Ogg files are not able to play - Medium+ [5]
- 10301 - Update yocto-bsp script for kernel 4.8 - Medium+ [6]
- 10265 - nativesdk-qemu-helper: runqemu in sdk should check OECORE_NATIVE_=
SYSROOT and OECORE_TARGET_SYSROOT - Medium+ [7]

             Full List of bugs : https://wiki.yoctoproject.org/wiki/WW38_-_=
2016-09-09_-_Full_Test_Cycle_2.2_M3.rc1#New_and_notable_issues_Found_during=
_QA_Test_.26_Community

          *Old New High and M+
- 9285 - Failed to build gobject-introspection for qemumips64 on i686 hosts=
 - Medium+ [8]
- 9287 - Failed to build nativesdk-glibc for qemumips and qemumips64 on Fed=
ora 23 i686 - Medium+ [9]

         *Old Medium Low
            Full list of bugs: https://wiki.yoctoproject.org/wiki/WW38_-_20=
16-09-09_-_Full_Test_Cycle_2.2_M3.rc1#Other_Bugs_found_during_QA_Test_.28NO=
T_NEW.29


Performance


-        core-image-sato rm-work was in the normal average times on Fedora =
and Ubuntu machines

-        Kernel has little increase on average times about 4% on Ubuntu and=
 7% on Fedora [10]

-        core-image-sato rootfs was giving incorrect measurements due bug 1=
0285

-        Full list of charts [11]

Links


1-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10274

2-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10275

3-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10285

4-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10262

5-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10272

6-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10301

7-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10265

8-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9285

9-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9287

10-  https://wiki.yoctoproject.org/charts/perf_milestone_GDC/bitbake-virtua=
l-kernel.html

11-  https://wiki.yoctoproject.org/charts/perf_milestone_GDC/performance_te=
st.html

Regards,
Jos=E9


--_000_0A5D9A624DF90343892F8F3FE7DE525A020242EDfmsmsx101amrcor_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:707068544;
	mso-list-type:hybrid;
	mso-list-template-ids:-271301000 631136908 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:%1-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:1.75in;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:3.25in;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:4.75in;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:818882368;
	mso-list-type:hybrid;
	mso-list-template-ids:-391726622 1615645698 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-text:%1-;
	mso-level-tab-stop:none;
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
	{mso-list-id:871458079;
	mso-list-type:hybrid;
	mso-list-template-ids:2067539796 -1765117336 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l2:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:5.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3
	{mso-list-id:916524246;
	mso-list-type:hybrid;
	mso-list-template-ids:1187643870 926999650 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l3:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:27.6pt;
	text-indent:-.25in;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:63.6pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:99.6pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:135.6pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:171.6pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:207.6pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:243.6pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:279.6pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:315.6pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l4
	{mso-list-id:1196893386;
	mso-list-type:hybrid;
	mso-list-template-ids:-1016669524 67698703 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l4:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l4:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l4:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l4:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l5
	{mso-list-id:1234851960;
	mso-list-type:hybrid;
	mso-list-template-ids:-375607138 1152661932 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
@list l5:level1
	{mso-level-text:%1-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l5:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l5:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l5:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l5:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l5:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l5:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l5:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l5:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l6
	{mso-list-id:1407190865;
	mso-list-type:hybrid;
	mso-list-template-ids:-1006188898 -1542797602 67698713 67698715 67698703 6=
7698713 67698715 67698703 67698713 67698715;}
@list l6:level1
	{mso-level-text:%1-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l6:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l6:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l6:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l6:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l6:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l6:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l6:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l6:level9
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the report for QA Cycle on 2.2 M3 rc1 <o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Report : &nbsp;<a href=3D"https://wiki.yoctopro=
ject.org/wiki/WW38_-_2016-09-09_-_Full_Test_Cycle_2.2_M3.rc1">https://wiki.=
yoctoproject.org/wiki/WW38_-_2016-09-09_-_Full_Test_Cycle_2.2_M3.rc1</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Summary <o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">There were 15 ne bugs fou=
nd on this test cycle, 3 of them High that were triaged on time and now all=
 of them have the fixes under review. There were a little increase on Perfo=
rmance times for kernel building the
 other measurements were stable &nbsp;with exception of roofs that was not =
giving correct measurements due a bug on qemuboot. &nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Bugs <o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;*</b>New High and M&#43;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">- 10274 - Missing build-a=
ppliance image for 2.2 M3 rc1 &#8211; High [1]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">- 10275 - Missing i686 to=
olchain sdk for 2.2 M3 rc1 &#8211; High [2]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">- 10285 - qemuboot.conf h=
as the incorrect values for image_name and qb_default_kernel &#8211; High [=
3]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">- 10262 - SD card not bei=
ng recognized when trying to install the image - Medium&#43; [4]<o:p></o:p>=
</p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">- 10272 - Wav and Ogg fil=
es are not able to play - Medium&#43; [5]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">- 10301 - Update yocto-bs=
p script for kernel 4.8 - Medium&#43; [6]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">- 10265 - nativesdk-qemu-=
helper: runqemu in sdk should check OECORE_NATIVE_SYSROOT and OECORE_TARGET=
_SYSROOT - Medium&#43; [7]<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;Full List of bugs : <a href=3D"https://wiki.yoctoproje=
ct.org/wiki/WW38_-_2016-09-09_-_Full_Test_Cycle_2.2_M3.rc1#New_and_notable_=
issues_Found_during_QA_Test_.26_Community">
https://wiki.yoctoproject.org/wiki/WW38_-_2016-09-09_-_Full_Test_Cycle_2.2_=
M3.rc1#New_and_notable_issues_Found_during_QA_Test_.26_Community</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;<b>*</b>Old<b> </b>New High and M&#43;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">- 9285 - Failed to build =
gobject-introspection for qemumips64 on i686 hosts - Medium&#43; [8]<o:p></=
o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">- 9287 - Failed to build =
nativesdk-glibc for qemumips and qemumips64 on Fedora 23 i686 - Medium&#43;=
 [9]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*Ol=
d Medium Low<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;Full list of bugs: <a href=3D"https://wiki.yoctoproject.org/=
wiki/WW38_-_2016-09-09_-_Full_Test_Cycle_2.2_M3.rc1#Other_Bugs_found_during=
_QA_Test_.28NOT_NEW.29">
https://wiki.yoctoproject.org/wiki/WW38_-_2016-09-09_-_Full_Test_Cycle_2.2_=
M3.rc1#Other_Bugs_found_during_QA_Test_.28NOT_NEW.29</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><b>Performance<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l2 level1 lfo6">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>core-image-sato rm-work was in the normal average t=
imes on Fedora and Ubuntu machines
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l2 level1 lfo6">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>Kernel has little increase on average times about 4=
% on Ubuntu and 7% on Fedora [10]<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l2 level1 lfo6">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>core-image-sato rootfs was giving incorrect measure=
ments due bug 10285
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:1.25in;text-indent:-.25i=
n;mso-list:l2 level1 lfo6">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>Full list of charts [11]<o:p></o:p></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal"><b>Links<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo7">
<![if !supportLists]><span style=3D"mso-list:Ignore">1-<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10274">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1027=
4</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo7">
<![if !supportLists]><span style=3D"mso-list:Ignore">2-<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10275">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1027=
5</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo7">
<![if !supportLists]><span style=3D"mso-list:Ignore">3-<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10285">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1028=
5</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo7">
<![if !supportLists]><span style=3D"mso-list:Ignore">4-<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10262">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1026=
2</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo7">
<![if !supportLists]><span style=3D"mso-list:Ignore">5-<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10272">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1027=
2</a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo7">
<![if !supportLists]><span style=3D"mso-list:Ignore">6-<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10301">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1030=
1</a> &nbsp;<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo7">
<![if !supportLists]><span style=3D"mso-list:Ignore">7-<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10265">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1026=
5</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo7">
<![if !supportLists]><span style=3D"mso-list:Ignore">8-<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D9285">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9285<=
/a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo7">
<![if !supportLists]><span style=3D"mso-list:Ignore">9-<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D9287">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9287<=
/a><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo7">
<![if !supportLists]><span style=3D"mso-list:Ignore">10-<span style=3D"font=
:7.0pt &quot;Times New Roman&quot;">&nbsp;
</span></span><![endif]><a href=3D"https://wiki.yoctoproject.org/charts/per=
f_milestone_GDC/bitbake-virtual-kernel.html">https://wiki.yoctoproject.org/=
charts/perf_milestone_GDC/bitbake-virtual-kernel.html</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo7">
<![if !supportLists]><span style=3D"mso-list:Ignore">11-<span style=3D"font=
:7.0pt &quot;Times New Roman&quot;">&nbsp;
</span></span><![endif]><a href=3D"https://wiki.yoctoproject.org/charts/per=
f_milestone_GDC/performance_test.html">https://wiki.yoctoproject.org/charts=
/perf_milestone_GDC/performance_test.html</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><b>Jos=E9</b><b><span style=3D"font-family:&quot;Ari=
al&quot;,sans-serif"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0A5D9A624DF90343892F8F3FE7DE525A020242EDfmsmsx101amrcor_--
