Return-Path: <libertad.cruz@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 311C8E00C09; Thu, 10 Aug 2017 10:10:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35A53E00B8B
	for <yocto@yoctoproject.org>; Thu, 10 Aug 2017 10:10:26 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Aug 2017 10:10:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,353,1498546800"; 
	d="scan'208,217";a="138108243"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
	by fmsmga005.fm.intel.com with ESMTP; 10 Aug 2017 10:10:25 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
	fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Thu, 10 Aug 2017 10:10:25 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.150]) by
	fmsmsx118.amr.corp.intel.com ([169.254.1.248]) with mapi id
	14.03.0319.002; Thu, 10 Aug 2017 10:10:25 -0700
From: "Cruz, Libertad" <libertad.cruz@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>, 
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>
Thread-Topic: QA cycle report for 2.4 M2 rc3
Thread-Index: AdMR8HqRp3ybj5wrQUiQtcjuAXJRmQ==
Date: Thu, 10 Aug 2017 17:10:24 +0000
Message-ID: <58D9E2E50A021A45AD740492365FCDC532A00D19@fmsmsx107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiY2YyMWQ3ZGYtZjYxMC00MGViLWIwNGQtMWZiMWExZTliZmVmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE2LjUuOS4zIiwiVHJ1c3RlZExhYmVsSGFzaCI6IktVXC8rVnhTaW5rS3YxT3lTMEY3cU1GOXladUhkcll2bUJ3YlZJbGFMK3dnPSJ9
x-ctpclassification: CTP_IC
dlp-product: dlpe-windows
dlp-version: 10.0.102.7
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Cc: "Cruz Alcaraz, Juan M" <juan.m.cruz.alcaraz@intel.com>
Subject: QA cycle report for 2.4 M2 rc3
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
X-List-Received-Date: Thu, 10 Aug 2017 17:10:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_58D9E2E50A021A45AD740492365FCDC532A00D19fmsmsx107amrcor_"

--_000_58D9E2E50A021A45AD740492365FCDC532A00D19fmsmsx107amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,



Here is the report for the 2.4 M2 rc3 full release test cycle.

Full Report :  https://wiki.yoctoproject.org/wiki/WW32_-_2017-08-09_-_Full_=
Test_Cycle_2.4_M2_rc3



=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle for release 2.4 M2 rc3 is complete.  There are two new bugs, 1=
1923[2] medium + impacts 28.6% of eclipse test run and 11917[1] medium + is=
 not a critical blocker since it only impacts 0.8% of oe-selftest on Fedora=
 24. The one bug that worries QA is 11923[2]  which impacts the eclipse tes=
tcases responsible for verifying the process of project debugging, workarou=
nd for this can be that user uses eclipse-plugin in 2.4 M2 rc2 which are st=
able.



On the wiki a  new section was created for Compliance results. There is cur=
rently an issue with the hardware infrastructure of Wind River hence  beagl=
ebone and edgerouter have not been fully tested.


Performance
There were no relevant changes on measurements compared to  2.4 M1 rc2.



Ubuntu                Test        2.4 M2 rc2          2.4 M2 rc3          %

                                sato       1:13:58                         =
    1:14:08             0.23

                                rootfs    2:31                    2:31     =
              0.00

                                rmwork                1:07:22              =
               1:06:40           -1.04

                                kernel    5:39                    5:32     =
             -2.06

                                eSDK      2:30                    2:32     =
             1.33





Fedora                  Test        2.4 M2 rc2          2.4 M2 rc3         =
 %

                                sato       1:13:52                         =
    1:12:25           -1.96

                                rootfs    2:29                    2:25     =
             -2.68

                                rmwork                1:08:42              =
               1:07:48           -1.31

                                kernel    6:04                    5:58     =
             -1.65

                                eSDK      2:34                    2:34     =
             0.00





ptest

There were no relevant changes on ptest compared to 2.3 M2 rc2



Compliance

For posix test there is no changes in the number of failures when comparing=
  2.4m2 rc2 and 2.4 m2 rc3.



                    Failures            2.4 M2 RC3      2.4 M1 RC2

                  Generic86-64           46                      46

                  Beaglebone              45                      45

                  Edgerouter               46                      46

                  Mpc8315e-rdb        45                      45



Results are found here: https://wiki.yoctoproject.org/wiki/Posix_result

Detail analysis found here:  https://wiki.yoctoproject.org/wiki/POSIX-resul=
ts



On 2.4 M2 rc3  LTP testing was also completed for beaglebone and we had an =
less test failed on Genericx86-64 and mpc8315e-rdb when comparing results w=
ith 2.4 M1 rc 2.



                                                                Genericx86-=
64     beaglebone       mpc8315e-rdb

2.4 M2 rc3                Total                        1384                =
          1346                    1346

                                     Failures                    23        =
                       15                          27



                                                                Genericx86-=
64                                    mpc8315e-rdb

2.4 M1 rc 2               Total                        1384                =
                                       1348

                                     Failures                    24        =
                                                    30





The LPT results are found: https://wiki.yoctoproject.org/wiki/LTP_result .





=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D



QA has found 2.4 m2 rc3  to be stable and all commits provided as workaroun=
ds in 2.4 m2 rc2 were successfully integrated. QA approves to this build ca=
ndidate being released.





=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D



       New Bugs
            -11917[1]  (buildoptions) Failure on test_arch_work_dir and lay=
er_with_out_git_dir
            -11923[2] [Eclipse] Failed to debug a Project in Eclipse and di=
splays error: java.lang.NullPointerException
       M+ bugs
            -11879[3]  Testimage: multiple "uvesafb" errors present in log =
in minnowmax on genericx86/genericx86-64
            -11833[4] Toaster timeout for bitbake server






Full Bug Report : https://wiki.yoctoproject.org/wiki/WW32_-_2017-08-09_-_Fu=
ll_Test_Cycle_2.4_M2_rc3#Bugs_Found_during_QA_Test





=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D



    1.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11917 [1]

    2.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11923 <https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D11923%20> [2]

    3.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11879 <https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D10832%20> [3]

    4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11833 <https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D11833%20> [4]





Regards

Libertad G.

--_000_58D9E2E50A021A45AD740492365FCDC532A00D19fmsmsx107amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"Calibri Light";
	panose-1:2 15 3 2 2 2 4 3 2 4;}
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
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Hello All,<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Here is the report for the 2.4 M2 rc3 full release test cyc=
le.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Full Report :
<span style=3D"color:#1F497D">&nbsp;https://wiki.yoctoproject.org/wiki/WW32=
_-_2017-08-09_-_Full_Test_Cycle_2.4_M2_rc3</span><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">The QA cycle for release 2.4 M2 rc3 is complete.
<span style=3D"color:#1F497D">&nbsp;</span>There are two new bugs, 11923[2]=
 medium &#43; impacts 28.6% of eclipse test run and 11917[1] medium &#43; i=
s not a critical blocker since it only impacts 0.8% of oe-selftest on Fedor=
a 24. The one bug that worries QA is 11923[2] &nbsp;which
 impacts the eclipse testcases responsible for verifying the process of pro=
ject debugging, workaround for this can be that user uses eclipse-plugin in=
 2.4 M2 rc2 which are stable.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">On the wiki a &nbsp;new section was created for Compliance =
results. There is currently an issue with the hardware infrastructure of Wi=
nd River hence &nbsp;beaglebone and edgerouter have not
 been fully tested. <o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Performance<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif">There were no relevant changes on measurements compared to &nb=
sp;2.4 M1 rc2.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif">&nbsp; <o:p>
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Ubuntu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Test &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 2.4 M2 rc2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.4 M=
2 rc3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %<o:p></o:p></s=
pan></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sato&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; 1:13:58&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1:14:08&nbsp;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.23<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rootfs&nbsp;&nbsp;&nbs=
p; 2:31&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:31&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0.00<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rmwork&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
1:07:22&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; 1:06:40&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; -1.04<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kernel&nbsp;&nbsp;&nbs=
p; 5:39&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5:32&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -2.06<=
o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eSDK&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; 2:30&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:32&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; 1.33<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Fedora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Test &nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; 2.4 M2 rc2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 2.4 M2 rc3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %<o=
:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sato&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; 1:13:52&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1:12:25&nbsp;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; -1.96<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rootfs&nbsp;&nbsp;&nbs=
p; 2:29&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:25&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -2.68<=
o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rmwork&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
1:08:42&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; 1:07:48&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; -1.31<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kernel&nbsp;&nbsp;&nbs=
p; 6:04&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5:58&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -1.65<=
o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eSDK&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; 2:34&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:34&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; 0.00<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><b><span style=3D"font-family:&quot;Calibri Light=
&quot;,sans-serif">ptest</span></b><span style=3D"font-family:&quot;Calibri=
 Light&quot;,sans-serif">
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">There were no relevant changes on ptest compared to 2.3 M2 =
rc2<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><b><span style=3D"font-family:&quot;Calibri Light=
&quot;,sans-serif">Compliance
<o:p></o:p></span></b></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">For posix test there is no change<span style=3D"color:#1F49=
7D">s</span> in the number of failures when comparing &nbsp;2.4m2 rc2 and 2=
.4 m2 rc3.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Failures&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.4 M2 RC3&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 2.4 M1 RC2<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Generic86-64&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;46&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; 46<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Beaglebone&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;45&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 45<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Edgerouter&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;46&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 46<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mpc8315e-rdb&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; 45&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; 45<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Results are found here:
<a href=3D"https://wiki.yoctoproject.org/wiki/Posix_result">https://wiki.yo=
ctoproject.org/wiki/Posix_result</a><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Detail analysis found here: &nbsp;<a href=3D"https://wiki.y=
octoproject.org/wiki/POSIX-results">https://wiki.yoctoproject.org/wiki/POSI=
X-results</a><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">On 2.4 M2 rc3 &nbsp;LTP testing was also completed for beag=
lebone and we had an less test failed on Genericx86-64 and mpc8315e-rdb whe=
n comparing results with 2.4 M1 rc&nbsp;2.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; Genericx86-64&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;beaglebone&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mpc8315e-rdb<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">2.4 M2 rc3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;Total&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;1384&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1346&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 1346<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;Failures&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;23&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;15&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; 27<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; Genericx86-64&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;<span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>mpc8315e-rdb<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">2.4 M1 rc&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;Total&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;1384&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span styl=
e=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;
</span>1348<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;Failures&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;24&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=3D"color:#1F497D">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>30<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">The LPT results are found:
<a href=3D"https://wiki.yoctoproject.org/wiki/LTP_result">https://wiki.yoct=
oproject.org/wiki/LTP_result</a> .<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">QA has found 2.4 m2 rc3 &nbsp;to be stable and all commits =
provided as workarounds in 2.4 m2 rc2 were successfully integrated. QA appr=
oves to this build candidate being released.
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o=
:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Bugs<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-11917[1] &nb=
sp;(buildoptions) Failure on test_arch_work_dir and layer_with_out_git_dir<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-11923[2] [Ec=
lipse] Failed to debug a Project in Eclipse and displays error: java.lang.N=
ullPointerException
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; M&#43; bugs<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-11879[3] &nb=
sp;Testimage: multiple &quot;uvesafb&quot; errors present in log in minnowm=
ax on genericx86/genericx86-64</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-11833[4] Toa=
ster timeout for bitbake server<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Full Bug Report :
<span style=3D"color:#1F497D">https://wiki.yoctoproject.org/wiki/WW32_-_201=
7-08-09_-_Full_Test_Cycle_2.4_M2_rc3#Bugs_Found_during_QA_Test</span><o:p><=
/o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D<=
o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 1.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11917">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11917</a> [1]<o:p></o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 2.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11923%20">ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11923
</a>[2]<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 3.&nbsp;&nbsp;&nbsp;
</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10832=
%20"><span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11879
</span></a><span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif"=
>[3]<span style=3D"color:#1F497D"><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 4.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11833%20">ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11833
</a>[4]<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; <o:p>
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Regards<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Libertad G.<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_58D9E2E50A021A45AD740492365FCDC532A00D19fmsmsx107amrcor_--
