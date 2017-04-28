Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91F1DE009CE; Fri, 28 Apr 2017 13:21:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38DCDE009A5
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 13:21:11 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Apr 2017 13:21:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,389,1488873600"; d="scan'208,217";a="95542622"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by fmsmga006.fm.intel.com with ESMTP; 28 Apr 2017 13:21:11 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
	FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Fri, 28 Apr 2017 13:21:10 -0700
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.48]) by
	FMSMSX154.amr.corp.intel.com ([169.254.6.147]) with mapi id
	14.03.0319.002; Fri, 28 Apr 2017 13:21:10 -0700
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>
Thread-Topic: QA Test Report for Yocto Project  Release 2.3 rc2
Thread-Index: AdLAP0L+dc7RSX0gQmaxevAbME/ryw==
Date: Fri, 28 Apr 2017 20:21:10 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A0211AAD8@fmsmsx101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzgxNGY3ZmQtMDdmZC00NjE1LTk2MWEtMDJiZmEzZTYxYmIxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6Ikpza3YrdHBnSzNXUVwvTnBOVWJSZkQ2SGVHNVU4bEV5WHI3d2JhbkJhTEZvPSJ9
dlp-product: dlpe-windows
dlp-version: 10.0.102.7
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Cobbley,
	David A" <david.a.cobbley@intel.com>
Subject: QA Test Report for Yocto Project Release 2.3 rc2
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
X-List-Received-Date: Fri, 28 Apr 2017 20:21:15 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0A5D9A624DF90343892F8F3FE7DE525A0211AAD8fmsmsx101amrcor_"

--_000_0A5D9A624DF90343892F8F3FE7DE525A0211AAD8fmsmsx101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,



Here is the report for the Full QA Cycle on Release 2.3 M3 rc2



Full Report : https://wiki.yoctoproject.org/wiki/WW17_-_2017-04-21_-_Full_T=
est_Cycle_2.3_rc2



=3D=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D



The QA cycle for release 2.3 rc2 is complete, There are 3 new issues found,=
 2 related to COROPS eSDK and another one related to runqemu. Bug 11409 is =
the most important found during this validation that is affecting qemu and =
Eclipse plugin components.  All High bugs found during M3 were verified and=
 are working correctly. Regarding to performances there were improvements o=
n eSDK and roofs on both machines. Ptest shows also 100% of pass rate on qu=
ilt and openssl components.





=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D





=3D=3D=3D=3D=3D=3D=3D=3D Details =3D=3D=3D=3D=3D=3D=3D=3D



QA Hints



There are two concerns form QA perspective about this release, first one is=
 bug 11409 that is blocking 70% of the test cases of eclipse plugin and a s=
eries of bugs about multimedia not working correctly found on Meta-Intel va=
lidation cycle that derives on more specific bug 11410[1]





Bugs

      * New

-   11409 - runqemu-extract-sdk doesn't work in toolchain for 2.3 rc2 build=
 [2]

-   11421 - Crops-ESDK: devtool build v4l2loopback-driver, fails when tryin=
g to access /lib/modules/ [3]

-   11431 - Crops-ESDK: devtool is unable to add recipe for nodejs-native r=
ecipe [4]



      * High / M+ Not New



           -  11300 - selftest: do_populate_sdk_ext task failing on eSDK te=
st on GDC Abs [5]



Full Bug Report : https://wiki.yoctoproject.org/wiki/WW17_-_2017-04-21_-_Fu=
ll_Test_Cycle_2.3_rc2#Bugs_Found_during_QA_Test



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D





=3D=3D=3D=3D=3D=3D Performance =3D=3D=3D=3D=3D=3D



Improvements on roofs on both machines of about 6%, extracting eSDK was imp=
roved about 12% on Ubuntu and 9% in fedora. Fedora shows an improvement of =
10% on building kernel. There was a slight regression of 4% when building s=
ato image on Ubuntu.



-        Ubuntu



Test           2.3 M3 rc2    2.3 rc2           %

sato           1:10:00            1:12:54          4.14

rootfs         2:26          2:17                  -6.16

rmwork         1:04:47            1:05:33          1.18

kernel         5:12          5:14                   0.64

eSDK           3:07          2:44                  -12.30





-        Fedora



Test           2.3 M3 rc2    2.3 rc2           %

Sato           1:14:57             1:12:49         -2.85

rootfs         2:44:00             2:34            -6.10

rmwork         1:06:45             1:06:45          0.00

kernel         6:38:00             5:56            -10.55

eSDK           3:20:00             3:02            -9.00





Performance Charts : https://wiki.yoctoproject.org/charts/perf_milestone_GD=
C/performance_test.html



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D





=3D=3D=3D=3D=3D=3D=3D=3D=3D pTest =3D=3D=3D=3D=3D=3D=3D=3D



    -  There were improvements on pass rates for the quilt and openssl modu=
les, both are now with 100% PASS rate

    -  There rest of the components remain with the same % of pass rate.





pTest full report : https://wiki.yoctoproject.org/wiki/WW17_-_2017-04-21_-_=
Full_Test_Cycle_2.3_rc2#pTest_for_genericx86-64_on_NUC



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D





=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D

1. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11410

2. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11409

3. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11421

4. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11431

5. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11300



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Regards
Jos=E9


--_000_0A5D9A624DF90343892F8F3FE7DE525A0211AAD8fmsmsx101amrcor_
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1643732676;
	mso-list-type:hybrid;
	mso-list-template-ids:-718796922 -1162060948 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:70.8pt;
	text-indent:-.25in;
	font-family:"Courier New";
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:106.8pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:142.8pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:178.8pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:214.8pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:250.8pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:286.8pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:322.8pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:358.8pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1900048357;
	mso-list-type:hybrid;
	mso-list-template-ids:1766349318 -1983057342 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:90.6pt;
	text-indent:-.25in;
	font-family:"Courier New";
	mso-fareast-font-family:Calibri;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:126.6pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:162.6pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:198.6pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:234.6pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:270.6pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:306.6pt;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:342.6pt;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:378.6pt;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2
	{mso-list-id:1976717553;
	mso-list-type:hybrid;
	mso-list-template-ids:1382073260 1258958530 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l2:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Courier New";}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3
	{mso-list-id:2123374254;
	mso-list-type:hybrid;
	mso-list-template-ids:-1640475514 665366528 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l3:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";
	mso-fareast-font-family:Calibri;}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:5.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
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
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Hello All,<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Here is the report for the Full&nbsp;QA Cycle on Release 2.3 M3 rc2<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Full Report : <a href=3D"https://wiki.yoctoproject.org/wiki/WW17_-_2017-=
04-21_-_Full_Test_Cycle_2.3_rc2">
https://wiki.yoctoproject.org/wiki/WW17_-_2017-04-21_-_Full_Test_Cycle_2.3_=
rc2</a>
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">The QA cycle for release 2.3 rc2 is complete, There are 3 new issues fou=
nd, 2 related to COROPS eSDK and another one related to runqemu. Bug 11409 =
is the most important found during this validation
 that is affecting qemu and Eclipse plugin components. &nbsp;All High bugs =
found during M3 were verified and are working correctly. Regarding to perfo=
rmances there were improvements on eSDK and roofs on both machines. Ptest s=
hows also 100% of pass rate on quilt
 and openssl components. &nbsp;&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D Details =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">QA Hints<o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"margin-left:46.2pt"><span style=3D"font-=
family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText" style=3D"margin-left:46.2pt"><span style=3D"font-=
family:&quot;Courier New&quot;">There are two concerns form QA perspective =
about this release, first one is bug 11409 that is blocking 70% of the test=
 cases of eclipse plugin and a series of bugs about
 multimedia not working correctly found on Meta-Intel validation cycle that=
 derives on more specific bug 11410[1]<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Bugs<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * New<o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"margin-left:90.6pt;text-indent:-.25in;ms=
o-list:l1 level1 lfo3">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">-<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-family:&quot;Courier New=
&quot;">11409 - runqemu-extract-sdk doesn't work in toolchain for 2.3 rc2 b=
uild [2]<o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"margin-left:90.6pt;text-indent:-.25in;ms=
o-list:l1 level1 lfo3">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">-<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-family:&quot;Courier New=
&quot;">11421 - Crops-ESDK: devtool build v4l2loopback-driver, fails when t=
rying to access /lib/modules/ [3]<o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"margin-left:90.6pt;text-indent:-.25in;ms=
o-list:l1 level1 lfo3">
<![if !supportLists]><span style=3D"font-family:&quot;Courier New&quot;"><s=
pan style=3D"mso-list:Ignore">-<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-family:&quot;Courier New=
&quot;">11431 - Crops-ESDK: devtool is unable to add recipe for nodejs-nati=
ve recipe&nbsp;[4]&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* High / M&#43; Not New<o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp; 113=
00 - selftest: do_populate_sdk_ext task failing on eSDK test on GDC Abs [5]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Full Bug Report :
<a href=3D"https://wiki.yoctoproject.org/wiki/WW17_-_2017-04-21_-_Full_Test=
_Cycle_2.3_rc2#Bugs_Found_during_QA_Test">
https://wiki.yoctoproject.org/wiki/WW17_-_2017-04-21_-_Full_Test_Cycle_2.3_=
rc2#Bugs_Found_during_QA_Test</a>
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D Performance =3D=3D=3D=3D=3D=3D<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Improvements on roofs on both machines of about 6%, extracting eSDK was =
improved about 12% on Ubuntu and 9% in fedora. Fedora shows an improvement =
of 10% on building kernel. There was a slight
 regression of 4% when building sato image on Ubuntu. &nbsp;&nbsp;<o:p></o:=
p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ubuntu<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Test&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.3 M3 =
rc2&nbsp;&nbsp;&nbsp; 2.3 rc2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; &nbsp;&nbsp;%<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">sato&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1:10:00=
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1:12:54&nbsp;=
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.14<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">rootfs&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 2:26&nbsp;&nbsp; &nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:17&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;-6.16<o:p></o:p>=
</span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">rmwork&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 1:04:47&nbsp;&nbsp;&nb=
sp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1:05:33&nbsp; &nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.18<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">kernel&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 5:12&nbsp;&nbsp; &nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5:14&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;0.64<o:p><=
/o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">eSDK &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3:07&nb=
sp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:44&nbsp;&nbsp;&nbsp;&nbsp;=
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;-=
12.30<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fedora<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Test&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;2.3 M3 =
rc2&nbsp; &nbsp; 2.3 rc2&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; %<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Sato &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1:14:57=
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;1:12:49=
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -2.85<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">rootfs&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2:44:00&nbsp;&nbs=
p;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:34&nbsp;&nbsp;&=
nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-6.10<o:p></o:p></span></p=
>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">rmwork&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1:06:45&nbsp;&nbs=
p;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1:06:45 &nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.00<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">kernel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6:38:00&nbsp;&nbs=
p;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5:56&nbsp;&nbsp;&=
nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -10.55<o:p></o:p></span></=
p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">eSDK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3:20:00=
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3:02&nb=
sp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -9.00<o:p></o:p>=
</span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Performance Charts :
<a href=3D"https://wiki.yoctoproject.org/charts/perf_milestone_GDC/performa=
nce_test.html">
https://wiki.yoctoproject.org/charts/perf_milestone_GDC/performance_test.ht=
ml</a><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D=3D pTest =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></s=
pan></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp; -&nbsp; There were improvements on pass rates for the=
 quilt and openssl modules, both are now with 100% PASS rate<o:p></o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;&nbsp;&nbsp; -&nbsp; There rest of the components remain with the =
same % of pass rate.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">pTest full report :
<a href=3D"https://wiki.yoctoproject.org/wiki/WW17_-_2017-04-21_-_Full_Test=
_Cycle_2.3_rc2#pTest_for_genericx86-64_on_NUC">
https://wiki.yoctoproject.org/wiki/WW17_-_2017-04-21_-_Full_Test_Cycle_2.3_=
rc2#pTest_for_genericx86-64_on_NUC</a>
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></s=
pan></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">1.&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
1410">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11410</a> &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">2. <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11409"=
>
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11409</a> <o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">3. <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11421"=
>
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11421</a> <o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">4. <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11431"=
>
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11431</a> <o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">5. <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11300"=
>
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11300</a> <o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards<o:p></o:p></p>
<p class=3D"MsoNormal"><b>Jos=E9</b><b><span style=3D"font-family:&quot;Ari=
al&quot;,sans-serif"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0A5D9A624DF90343892F8F3FE7DE525A0211AAD8fmsmsx101amrcor_--
