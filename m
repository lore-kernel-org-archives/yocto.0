Return-Path: <libertad.cruz@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D81B2E00D0B; Fri, 13 Oct 2017 22:28:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E466BE00D03
	for <yocto@yoctoproject.org>; Fri, 13 Oct 2017 22:28:30 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga105.fm.intel.com with ESMTP; 13 Oct 2017 22:28:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,374,1503385200"; 
	d="scan'208,217";a="323156574"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
	by fmsmga004.fm.intel.com with ESMTP; 13 Oct 2017 22:28:29 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
	FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Fri, 13 Oct 2017 22:28:29 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.9]) by
	FMSMSX109.amr.corp.intel.com ([169.254.15.122]) with mapi id
	14.03.0319.002; Fri, 13 Oct 2017 22:28:29 -0700
From: "Cruz, Libertad" <libertad.cruz@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Jolley,
	Stephen K" <stephen.k.jolley@intel.com>
Thread-Topic: QA cycle report for 2.4 RC2
Thread-Index: AdNEqwaR7Xy8sBwcQ1q4nu1IoPWSVQ==
Date: Sat, 14 Oct 2017 05:28:28 +0000
Message-ID: <58D9E2E50A021A45AD740492365FCDC532A2A726@fmsmsx107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Cc: "Jordan, Robin L" <robin.l.jordan@intel.com>
Subject: QA cycle report for 2.4 RC2
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
X-List-Received-Date: Sat, 14 Oct 2017 05:28:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_58D9E2E50A021A45AD740492365FCDC532A2A726fmsmsx107amrcor_"

--_000_58D9E2E50A021A45AD740492365FCDC532A2A726fmsmsx107amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

Enjoy viewing the full Report for 2.4 RC2:  https://wiki.yoctoproject.org/w=
iki/WW41_-_2017-10-13_-_Full_Test_Cycle_2.4_RC2



=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D



The QA cycle for release 2.4 RC2 is complete.  There are 5 new bugs from wh=
ich so far none of them are high. There seems to be no blocking issues



ptest

There was a significant increase in pass rate for e2fsprogs from 0% to 85.7=
6%. Python incremented it's pass rate by 99.61%. There was a significant de=
crease of the pass rate for libpcre from 100% to 66.67%, bug 12215 was open=
ed, which was given medium priority and targeted to be fixed on milestone 2=
.5.



Toaster

There was a significant issue in licensing for toaster which led to the tes=
ting of Toaster in commit 96967261993f8b583b51cdeccbb1fd06042d2192.  QA see=
s no greater issue with the toaster functionalities.

Posix

2.4 RC1 Posix results are very similar to last QA cycle 2.4 M3 rc1. They on=
ly show that Edgerouter had one more failure if compared with the previous =
run.



                  Failures                  2.4 RC1           2.4 RC

                  Generic86-64           46                      46

                  Beaglebone              45                      45

                  Edgerouter               47

                  Mpc8315e-rdb         45                      45



For more details visit:  https://wiki.yoctoproject.org/wiki/Posix_result an=
d https://wiki.yoctoproject.org/wiki/POSIX-results



LTP

2.4 RC2 LTP results show that, Edgerouter was not able to run Windriver wil=
l update the results soon. For currently executed LTP test,  QA has not fou=
nd bugs.



                                                     2.4 RC1               =
   |        2.4 RC2

                                                Total  |  Failures      |  =
    Total   |  Failures

               Genericx86-64         1391 |   27             |      1391   =
|     27

               Beaglebone              1353 |   18             |      1353 =
  |     17

               Edgerouter               1353 |   34             |      1353=
   |

               Mpc8315e-rdb        1353  |   31            |      1353   | =
    30



For more details: https://wiki.yoctoproject.org/wiki/LTP_result



Performance


Measurements  form 2.4rc2 are almost the same as observed on previous rc1, =
no noticeable changes are observed.


Ubuntu                Test       2.4_rc1     2.4_rc2            %
                              sato       1:15:24     1:16:32            1.5=
0
                              rootfs    2:45           2:45                =
0.00
                              rmwork 1:08:19     1:08:20            0.02
                              kernel    5:41           5:45                =
1.17
                              eSDK      2:40           2:42                =
1.25


Fedora                 Test       2.4_rc1     2.4_rc2            %
                              sato       1:17:02     1:17:23            0.4=
5
                              rootfs    2:44           2:40               -=
2.44
                              rmwork 1:10:25    1:10:30            0.12
                              kernel    6:04           6:05                =
0.27
                              eSDK      2:42           2:39               -=
1.85



=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D



From the results documented on the test cycle wiki there is no blockers for=
 this commit to be released. Please also view the report for 2.4 RC1[8]  fo=
r a review of the still existing bugs.



=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D



       New Bugs

            -12213[1] [TC 1059] test_parselogs failed on MMAX64 (Turbot) wi=
th direct firmware load for rtl_nic/rtl8168g-2.fw error

            -12214[2] [TC 1059] test_parselogs failed om MMAX64 (Turbot, WI=
C image) : usb 1-3: device descriptor read/64, error -71

            -12218[3] devtool modify failing in fedora 26

            -12220[4] [OE-seltest] Some automated test cases are being miss=
ed in the test run.

            -12215[5] ptest-runner libpcre one failed



       Not new M+ bugs

            -11994[6]  Graphical qemu doesn't work over remote X on Fedora =
26

            -12131[7]  Kernel traceback when reboot beaglebone black









Full Bug Report:



=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D

    1.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12213[1<https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12213%5b1>]



    2.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12214[2<https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12214%5b2>]



    3.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12218[3<https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12218%5b3>]



    4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12220[4<https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12220%5b4>]



    5.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12215 5<https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12215%205>]



    6.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11994[6<https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11994%5b6>]



    7.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12131[7<https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12131%5b7>]



    8.    https://wiki.yoctoproject.org/wiki/WW40_-_2017-10-06_-_Full_Test_=
Cycle_2.4_RC1#Bugs_Found_during_QA_Test[<https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D11994%5b19>8]







Regards

Libertad G.




--_000_58D9E2E50A021A45AD740492365FCDC532A2A726fmsmsx107amrcor_
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
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle21
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
<p class=3D"MsoPlainText">Hello All,<o:p></o:p></p>
<p class=3D"MsoPlainText">Enjoy viewing the full Report for 2.4 RC2:&nbsp; =
<span style=3D"color:#1F497D">
https://wiki.yoctoproject.org/wiki/WW41_-_2017-10-13_-_Full_Test_Cycle_2.4_=
RC2</span><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=
=3D=3D<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">The QA cycle for release 2.4 RC2 is complete.&nbs=
p; There are 5 new bugs from which so far none of them are high. There seem=
s to be no blocking issues<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><u><span style=3D"font-size:12.0pt">ptest</span> =
<o:p></o:p></u></p>
<p class=3D"MsoPlainText">There was a significant increase in pass rate for=
 e2fsprogs from 0% to 85.76%. Python incremented it&#8217;s pass rate by 99=
.61%. There was a significant decrease of the pass rate for libpcre from 10=
0% to 66.67%, bug 12215 was opened, which
 was given medium priority and targeted to be fixed on milestone 2.5.<o:p><=
/o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><u><span style=3D"font-size:12.0pt">Toaster<o:p><=
/o:p></span></u></p>
<p class=3D"MsoPlainText">There was a significant issue in licensing for to=
aster which led to the testing of Toaster in commit 96967261993f8b583b51cde=
ccbb1fd06042d2192. &nbsp;QA sees no greater issue with the toaster function=
alities.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p></o:p></p>
<p class=3D"MsoPlainText"><u><span style=3D"font-size:12.0pt">Posix<o:p></o=
:p></span></u></p>
<p class=3D"MsoPlainText">2.4 RC1 Posix results are very similar to last QA=
 cycle 2.4 M3 rc1. They only show that Edgerouter had one more failure if c=
ompared with the previous run.
<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Failures&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<sp=
an style=3D"color:#1F497D">&nbsp;&nbsp;
</span>2.4 RC1&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
2.4 RC<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Generic86-64&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 46&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 46<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Beaglebone&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 45&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 45<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Edgerouter&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4=
7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mpc8315e-rdb&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;45&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; 45<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">For more details visit:&nbsp; <a href=3D"https://=
wiki.yoctoproject.org/wiki/Posix_result">
https://wiki.yoctoproject.org/wiki/Posix_result</a><span style=3D"color:#1F=
497D"> </span>
and <a href=3D"https://wiki.yoctoproject.org/wiki/POSIX-results">https://wi=
ki.yoctoproject.org/wiki/POSIX-results</a><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><u><span style=3D"font-size:12.0pt">LTP<o:p></o:p=
></span></u></p>
<p class=3D"MsoPlainText">2.4 RC2 LTP results show that, Edgerouter was not=
 able to run Windriver will update the results soon. For currently executed=
 LTP test, &nbsp;QA has not found bugs.
<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.4 RC1&nbsp;&nbsp;&nbsp; &nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=3D"color:#1F4=
97D">&nbsp;&nbsp;
</span>&nbsp;|&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.4 RC2<o:p></o:p>=
</p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; Total &nbsp;|&nbsp; Failures&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;=
&nbsp;&nbsp;&nbsp; &nbsp;Total &nbsp;&nbsp;|&nbsp; Failures<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Genericx86-64&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; 1391 |&nbsp;&nbsp; 27&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; 1391&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; &nbsp;27<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Beaglebone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1353 |&nbsp;&nbsp; 18&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1353 &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; 1=
7<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Edgerouter&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1353 |&nbsp;&nbsp; =
34&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1353&nbsp; &nbsp;|&nbsp;&nbsp;&nbsp;&n=
bsp;
<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mpc8315e-rdb&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; 1353&nbsp; |&nbsp;&nbsp; 31&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 135=
3&nbsp; &nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; 30<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">For more details: <a href=3D"https://wiki.yoctopr=
oject.org/wiki/LTP_result">
https://wiki.yoctoproject.org/wiki/LTP_result</a><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><u><span style=3D"font-size:12.0pt">Performance<o=
:p></o:p></span></u></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Measurements &nbsp;form 2.4rc2 are almost the same a=
s observed on previous rc1, no noticeable changes are observed. &nbsp;<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Ubuntu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Test &nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 2.4_rc1 &nbsp;&nbsp;&nbsp; 2.4_rc2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sato&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; 1:15:24 &nbsp;&nbsp;&nbsp; 1:16:32&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.50<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rootfs&nbsp;&nbsp;&nbsp; 2:=
45&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 2:45&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.=
00<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rmwork 1:08:19 &nbsp;&nbsp;=
&nbsp; 1:08:20&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 0.02<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kernel&nbsp;&nbsp;&nbsp; 5:=
41&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 5:45&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.=
17<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eSDK&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; 2:40&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 2:42&nb=
sp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; 1.25<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal">Fedora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Test &nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; 2.4_rc1 &nbsp;&nbsp;&nbsp; 2.4_rc2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sato&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; 1:17:02 &nbsp;&nbsp;&nbsp; 1:17:23&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.45<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rootfs&nbsp;&nbsp;&nbsp; 2:=
44&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 2:40&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -2.44<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rmwork 1:10:25 &nbsp;&nbsp;=
&nbsp;1:10:30&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 0.12<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kernel&nbsp;&nbsp;&nbsp; 6:=
04&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 6:05&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.=
27<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eSDK&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; 2:42&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 2:39&nb=
sp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; -1.85<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=
=3D=3D<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">From the results documented on the test cycle wik=
i there is no blockers for this commit to be released. Please also view the=
 report for 2.4 RC1[8] &nbsp;for a review of the still existing bugs.
<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=
=3D<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Bugs<o:p=
></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12213[1] [TC 1059] test_parselogs failed on MMAX64 (Turb=
ot) with direct firmware load for rtl_nic/rtl8168g-2.fw error<o:p></o:p></p=
>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;-12214[2] [TC 1059] test_parselogs failed om MMAX64 =
(Turbot, WIC image)&nbsp;: usb 1-3: device descriptor read/64, error -71<o:=
p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;-12218[3] devtool modify failing in fedora 26<o:p></=
o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12220[4] [OE-seltest] Some automated test cases are bein=
g missed in the test run.<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12215[5] ptest-runner libpcre one failed<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Not new M&#4=
3; bugs<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -11994[6]&nbsp; Graphical qemu doesn&#8217;t work over re=
mote X on Fedora 26<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12131[7]&nbsp; Kernel traceback when reboot beaglebone b=
lack<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Full Bug Report<span style=3D"color:#1F497D">:</s=
pan> <span class=3D"MsoHyperlink">
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=
=3D=3D=3D<o:p></o:p></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; =
</span>1.<span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12213%5b1">h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12213[1</a>]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; 2.&nbsp;&nbsp;&nbsp; <span sty=
le=3D"color:#1F497D"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D12214%5b2">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D122=
14[2</a>]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; 3.&nbsp;&nbsp;&nbsp; <span sty=
le=3D"color:#1F497D"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D12218%5b3">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D122=
18[3</a>]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; =
</span>4.<span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12220%5b4">h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12220[4</a>]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; 5.&nbsp;&nbsp;&nbsp; <span sty=
le=3D"color:#1F497D"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D12215%205">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D122=
15 5</a>]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; 6.&nbsp;&nbsp;&nbsp; <span sty=
le=3D"color:#1F497D"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D11994%5b6">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D119=
94[6</a>]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; 7.&nbsp;&nbsp;&nbsp; <span sty=
le=3D"color:#1F497D"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D12131%5b7">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D121=
31[7</a>]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; =
</span>8.<span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;
</span><span class=3D"MsoHyperlink"><a href=3D"https://wiki.yoctoproject.or=
g/wiki/WW40_-_2017-10-06_-_Full_Test_Cycle_2.4_RC1#Bugs_Found_during_QA_Tes=
t">https://wiki.yoctoproject.org/wiki/WW40_-_2017-10-06_-_Full_Test_Cycle_2=
.4_RC1#Bugs_Found_during_QA_Test</a></span><span style=3D"color:#1F497D"><a=
 href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11994%5b19">[<=
/a>8]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;<span style=3D"color:#1F497D"><=
o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText">Regards<o:p></o:p></p>
<p class=3D"MsoPlainText">Libertad G.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_58D9E2E50A021A45AD740492365FCDC532A2A726fmsmsx107amrcor_--
