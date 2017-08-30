Return-Path: <libertad.cruz@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADAB2E00970; Wed, 30 Aug 2017 13:15:15 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 783F3E008C8
	for <yocto@yoctoproject.org>; Wed, 30 Aug 2017 13:15:14 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga105.fm.intel.com with ESMTP; 30 Aug 2017 13:15:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,449,1498546800"; 
	d="scan'208,217";a="143828612"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by orsmga005.jf.intel.com with ESMTP; 30 Aug 2017 13:15:12 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
	FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Wed, 30 Aug 2017 13:15:09 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.9]) by
	FMSMSX109.amr.corp.intel.com ([169.254.15.39]) with mapi id
	14.03.0319.002; Wed, 30 Aug 2017 13:15:09 -0700
From: "Cruz, Libertad" <libertad.cruz@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>, 
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>
Thread-Topic: QA cycle report for 2.4 M3 rc1
Thread-Index: AdMhtDpGghb5/Wq7SUy8eWjGK8/ZBA==
Date: Wed, 30 Aug 2017 20:15:08 +0000
Message-ID: <58D9E2E50A021A45AD740492365FCDC532A1D485@fmsmsx107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiY2YyMWQ3ZGYtZjYxMC00MGViLWIwNGQtMWZiMWExZTliZmVmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE2LjUuOS4zIiwiVHJ1c3RlZExhYmVsSGFzaCI6IktVXC8rVnhTaW5rS3YxT3lTMEY3cU1GOXladUhkcll2bUJ3YlZJbGFMK3dnPSJ9
x-ctpclassification: CTP_IC
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Cc: "Cruz Alcaraz, Juan M" <juan.m.cruz.alcaraz@intel.com>
Subject: QA cycle report for 2.4 M3 rc1
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
X-List-Received-Date: Wed, 30 Aug 2017 20:15:15 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_58D9E2E50A021A45AD740492365FCDC532A1D485fmsmsx107amrcor_"

--_000_58D9E2E50A021A45AD740492365FCDC532A1D485fmsmsx107amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,



Here is the report for the 2.4 M3 rc1 full release test cycle.

Full Report :  https://wiki.yoctoproject.org/wiki/WW35_-_2017-08-30_-_Full_=
Test_Cycle_2.4_M3



=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle for release 2.4 M3 rc1 is complete.  There are seven new bugs:=
 bug 12013[7]  blocks testing to poky-tiny image since it always asks passw=
ord when booting the image. Other medium+ bug 11984[1]   cross tap does not=
 work on 2.4 M3 RC1 and bug 11994[2]   X can not launch on Fedora 26 for 2.=
4 M3 RC1, do not block full functionality nor a full testrun.  Bugs 12004[4=
], 12005[5], 12006[6]   are toaster related.



Neon Eclipse-Plugin under Debian 8 is having project building problems, thi=
s is still under investigation I suspect it is user configuration errors. M=
ars and Neon Eclipse-Plugin ran perfectly on Ubuntu.



LPT results are waiting to be updated by Windriver.


Performance
There were no relevant changes on measurements compared to  2.4 M2 rc3, jus=
t a small regression of 6% on fedora machine when building rootfs.


Ubuntu    Test       2.4 M2 rc3    2.4 M3 rc1    %
                 sato       1:14:08         1:15:58         2.47
                 rootfs    2:31              2:34              1.99
                 rmwork 1:06:40         1:08:15         2.37
                 kernel    5:32              5:36             1.20
                 eSDK      2:32              2:39             4.61

Fedora    Test       2.4 M2 rc3    2.4 M3 rc1    %
                sato       1:12:25         1:14:13         2.49
                rootfs     2:25             2:35              6.90
               rmwork   1:07:48        1:09:06         1.92
               kernel     5:58             5:58              0.00
               eSDK       2:34             2:37              1.95




ptest

There was a better pass rate of 5% on gdk-pixbuf  in comparison with 2.3 M2=
 rc3.



Compliance

For posix test there is no changes in the number of failures when comparing=
  2.4 m2 rc3 and 2.4 m3 rc1.



                    Failures            2.4 M3 RC1      2.4 M2 RC3

                  Generic86-64           46                      46

                  Beaglebone              45                      45

                  Edgerouter               46                      46

                  Mpc8315e-rdb        45                      45



Results are found here: https://wiki.yoctoproject.org/wiki/Posix_result

Detail analysis found here:  https://wiki.yoctoproject.org/wiki/POSIX-resul=
ts



The LPT results are found: https://wiki.yoctoproject.org/wiki/LTP_result .





=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D



There are no important fully blocked functionalities QA does not think an r=
c2 is necessary.



=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D



       New Bugs
            -11984[1]  crosstap doesn't work on 2.4 M3 RC1
            -11994[2] X can not launch on Fedora 26 for 2.4 M3 RC1
            -11995[3] Update yocto-bsp script for kernel 4.12
            -12004[4] Views: Edit Columns button is not alphabetically orde=
red
            -12005[5]  Cant download other artifacts when modifying built r=
ecipe
            -12006[6]  Image recipes view: Recipe file link not redirecting=
 correctly
            -12013[7]  Poky tiny image doesn't boot, it ask for password
       Not new M+ bugs
            -11879[8]  Testimage: multiple "uvesafb" errors present in log =
in minnowmax on genericx86/genericx86-64



Full Bug Report : https://wiki.yoctoproject.org/wiki/WW35_-_2017-08-30_-_Fu=
ll_Test_Cycle_2.4_M3#Bugs_Found_during_QA_Test



=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D



    1.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11984<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D11917>[1]

    2.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11994<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D11923%20>[2]

    3.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11995<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D10832%20>[3]

    4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12004<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D11833%20>[4]

    4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12005<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D12005%20>[5]

    4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12006<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D12006%20>[6]

    4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D<https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D11833%20>12013[7]

    4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11879<https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D11833%20>[8]







Regards

Libertad G.

--_000_58D9E2E50A021A45AD740492365FCDC532A1D485fmsmsx107amrcor_
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
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Hello All,<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Here is the report for the 2.4 M3 rc1 full release test cyc=
le.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Full Report :
<span style=3D"color:#1F497D">&nbsp;<a href=3D"https://wiki.yoctoproject.or=
g/wiki/WW35_-_2017-08-30_-_Full_Test_Cycle_2.4_M3">https://wiki.yoctoprojec=
t.org/wiki/WW35_-_2017-08-30_-_Full_Test_Cycle_2.4_M3</a><o:p></o:p></span>=
</span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">The QA cycle for release 2.4 M3 rc1 is complete. &nbsp;Ther=
e are seven new bugs: bug 12013[7] &nbsp;blocks testing to poky-tiny image =
since it always asks password when booting the image. Other
 medium&#43; <i>bug 11984[1] &nbsp;&nbsp;cross tap does not work on 2.4 M3 =
RC1</i> and <i>bug 11994[2] &nbsp;&nbsp;X can not launch on Fedora 26 for 2=
.4 M3 RC1</i>, do not block full functionality nor a full testrun. &nbsp;Bu=
gs
<i>12004[4], 12005[5], 12006[6]</i> &nbsp;&nbsp;are toaster related.<o:p></=
o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Neon Eclipse-Plugin under Debian 8 is having project buildi=
ng problems, this is still under investigation I suspect it is user configu=
ration errors. Mars and Neon Eclipse-Plugin ran
 perfectly on Ubuntu. <o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">LPT results are waiting to be updated by Windriver.<o:p></o=
:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Performance<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif">There were no relevant changes on measurements compared to &nb=
sp;2.4 M2 rc3, just a small regression of 6% on fedora machine when buildin=
g rootfs.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif">&nbsp; <o:p>
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif">Ubuntu&nbsp;&nbsp;&nbsp; Test&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&n=
bsp;2.4 M2 rc3&nbsp;&nbsp;&nbsp; 2.4 M3 rc1&nbsp;&nbsp;&nbsp; %<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sato&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp=
;1:14:08&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;1:15:58&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;2.47<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rootfs&nbsp; &nbsp;&nbsp;2:31&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;2:34&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp=
;1.99<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rmwork 1:06:40&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; &nbsp;&nbsp;1:08:15&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&n=
bsp;2.37<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;kernel&nbsp;&nbsp; &nbsp;5:32&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;5:36&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;1.20<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;eSDK&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;2:32&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nb=
sp;2:39&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&=
nbsp;4.61<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif">Fedora&nbsp;&nbsp;&nbsp; Test&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&n=
bsp;2.4 M2 rc3&nbsp;&nbsp;&nbsp; 2.4 M3 rc1&nbsp;&nbsp;&nbsp; %<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sato&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;1:12:=
25&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;1:14:13&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;2.49<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rootfs&nbsp;&nbsp; &nbsp;&nbsp;2:25&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;2:35&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;6.90<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;rmwork&nbsp;&nbsp; 1:07:48&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; &nbsp;1:09:06&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;1.=
92<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;kernel&nbsp;&nbsp; &nbsp;&nbsp;5:58&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;5:58&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;0.00<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;eSDK&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;2:34&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;2:37&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;1=
.95<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">ptest
<o:p></o:p></span></b></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">There was a better pass rate of 5% on gdk-pixbuf &nbsp;in c=
omparison with 2.3 M2 rc3.
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><b><span style=3D"font-family:&quot;Calibri Light=
&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoPlainText"><b><span style=3D"font-family:&quot;Calibri Light=
&quot;,sans-serif">Compliance
<o:p></o:p></span></b></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">For posix test there is no changes in the number of failure=
s when comparing &nbsp;2.4 m2 rc3 and 2.4 m3 rc1.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Failures&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.4 M3 RC1&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 2.4 M2 RC3<o:p></o:p></span></p>
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
ot;,sans-serif">There are no important fully blocked functionalities QA doe=
s not think an rc2 is necessary.
<o:p></o:p></span></p>
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
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-11984[1] &nb=
sp;crosstap doesn't work on 2.4 M3 RC1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-11994[2] X c=
an not launch on Fedora 26 for 2.4 M3 RC1
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-11995[3] Upd=
ate yocto-bsp script for kernel 4.12<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-12004[4] Vie=
ws: Edit Columns button is not alphabetically ordered<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-12005[5] &nb=
sp;Cant download other artifacts when modifying built recipe<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-12006[6] &nb=
sp;Image recipes view: Recipe file link not redirecting correctly<o:p></o:p=
></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-12013[7] &nb=
sp;Poky tiny image doesn't boot, it ask for password<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; Not new M&#43; bugs<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:7.5pt;margin-right:0in;m=
argin-bottom:7.5pt;margin-left:0in">
<span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-11879[8] &nb=
sp;Testimage: multiple &quot;uvesafb&quot; errors present in log in minnowm=
ax on genericx86/genericx86-64</span><o:p></o:p></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Full Bug Report :
<span style=3D"color:#1F497D">https://wiki.yoctoproject.org/wiki/WW35_-_201=
7-08-30_-_Full_Test_Cycle_2.4_M3#Bugs_Found_during_QA_Test</span><o:p></o:p=
></span></p>
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
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11984</a>[1]<o:p></o:p></spa=
n></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 2.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11923%20">ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11994</a>[2]<o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 3.&nbsp;&nbsp;&nbsp;
</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10832=
%20"><span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11995</span></a><span style=
=3D"font-family:&quot;Calibri Light&quot;,sans-serif">[3]<span style=3D"col=
or:#1F497D"><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 4.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11833%20">ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12004</a>[4]<o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 4.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12005%20">ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12005</a>[5]<o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 4.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12006%20">ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12006</a>[6]<o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 4.&nbsp;&nbsp;&nbsp;
</span><span class=3D"MsoHyperlink"><a href=3D"https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D11833%20"><span style=3D"font-family:&quot;Calibri =
Light&quot;,sans-serif">https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D</span></a></span><span class=3D"MsoHyperlink"><span style=3D"font-famil=
y:&quot;Calibri Light&quot;,sans-serif">12013</span></span><span style=3D"f=
ont-family:&quot;Calibri Light&quot;,sans-serif">[7]<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 4.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11833%20">ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11879</a>[8]<o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
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

--_000_58D9E2E50A021A45AD740492365FCDC532A1D485fmsmsx107amrcor_--
