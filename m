Return-Path: <libertad.cruz@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA884E00DA7; Fri,  6 Oct 2017 16:38:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B7F9E00CC0
	for <yocto@yoctoproject.org>; Fri,  6 Oct 2017 16:38:27 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Oct 2017 16:38:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,486,1500966000"; 
	d="scan'208,217";a="143740610"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
	by orsmga002.jf.intel.com with ESMTP; 06 Oct 2017 16:38:27 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
	fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Fri, 6 Oct 2017 16:38:26 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.9]) by
	fmsmsx118.amr.corp.intel.com ([169.254.1.209]) with mapi id
	14.03.0319.002; Fri, 6 Oct 2017 16:38:26 -0700
From: "Cruz, Libertad" <libertad.cruz@intel.com>
To: "Purdie, Richard" <richard.purdie@intel.com>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: QA cycle report for 2.4 RC1
Thread-Index: AdM+5Qi/uzt4CXXAS4yKO9RKWh1FxgAEP84Q
Date: Fri, 6 Oct 2017 23:38:26 +0000
Message-ID: <58D9E2E50A021A45AD740492365FCDC532A29456@fmsmsx107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Cc: "Jordan, Robin L" <robin.l.jordan@intel.com>
Subject: FW: QA cycle report for 2.4 RC1
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
X-List-Received-Date: Fri, 06 Oct 2017 23:38:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_58D9E2E50A021A45AD740492365FCDC532A29456fmsmsx107amrcor_"

--_000_58D9E2E50A021A45AD740492365FCDC532A29456fmsmsx107amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

Enjoy viewing the full Report for 2.4 RC1:  https://wiki.yoctoproject.org/w=
iki/WW40_-_2017-10-06_-_Full_Test_Cycle_2.4_RC1



=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D



The QA cycle for release 2.4 RC1 is complete.  There are 18 new bugs from w=
hich 5 are high priority and are targeted to be fixed in 2.4 M4.  Four of t=
he High Priority bugs (12143[1], 12144[2], 12145[3], 12146[4]) are ptest re=
lated and one (12194[5]) is Toaster related.  An additional medium+ priorit=
y (12131[6]  Kernel traceback when reboot beaglebone) is targeted to be fix=
ed by 2.4 M4. As an extra note on this report QA wants to highlight that, t=
here are a total of 46 Bugs targeted to be fixed in 2.4 M4 (link [20]).



ptest

Results show that python and e2fsprogs are not executing, hence bugs 12143[=
1] and 12146[4], respectively, were opened and given a high priority.

Bash (bug 12145[3]) had a decrement in the pass rate of  1.27% and  busybox=
 (bug 12144[2]) had a decrement in the pass rate of 0.19%. Although they ar=
e high priority, QA sees that the decrement is not very significant, hence =
this bugs can be lowered in priority.



Eclipse

Some good news: testing for Eclipse-Oxygen was  added for the first time to=
 the QA test cycle.



Posix

2.4 RC1 Posix results are very similar to last QA cycle 2.4 M3 rc1. They on=
ly show that Edgerouter had one more failure if compared with the previous =
run.



                  Failures               2.4 RC1           2.4 M3 RC1

                  Generic86-64           46                      46

                  Beaglebone              45                      45

                  Edgerouter               47                      46

                  Mpc8315e-rdb         45                      45



For more details visit:  https://wiki.yoctoproject.org/wiki/Posix_result an=
d https://wiki.yoctoproject.org/wiki/POSIX-results



LTP

2.4 RC1 LTP results show that, for Genericx86-64 and Beaglebone, the failur=
es incremented by 1 test. On Edgerouter we have an increment of 2 failures =
if compared with QA cycle 2.4 M3 rc1.



                                                     2.4 RC1               =
|        2.4 M3 RC1

                                                Total  |  Failures      |  =
    Total   |  Failures

               Genericx86-64         1391 |   27              |      1391  =
 |     26

               Beaglebone              1353 |   18              |      1353=
   |     17

               Edgerouter               1353 |   34              |      135=
3   |     32

               Mpc8315e-rdb        1353  |   31              |      1353   =
|     31



For more details: https://wiki.yoctoproject.org/wiki/LTP_result





Performance


In general, the measurements were on the same levels showed up on 2.4_M3. T=
he only noticeable variation was on "rootfs" that is showing an increase of=
 5% on Ubuntu and 7% on Fedora, although this does not represent an importa=
nt regression.

Ubuntu                 Test       2.4 M3 rc1           2.4_rc1         %
                              sato       1:15:58              1:15:24      =
     -0.75
                              rootfs    2:34                    2:45       =
          7.14
                              rmwork 1:08:15              1:08:19          =
 0.10
                              kernel    5:36                    5:41       =
          1.49
                              eSDK      2:39                    2:40       =
          0.63


Fedora                 Test       2.4 M3 rc1           2.4_rc1         %
                              sato       1:14:13              1:17:02      =
     3.80
                              rootfs    2:35                    2:44       =
          5.81
                              rmwork 1:09:06              1:10:25          =
 1.91
                              kernel    5:58                    6:04       =
          1.68
                              eSDK      2:37                    2:42       =
          3.18





=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D



Due to the fact that, there are 5 high priority bugs and 46 bugs targeted t=
o be fixed and solved by 2.4 M4, QA requests an RC2 so that all the commits=
/fixes relevant to 2.4 release are integrated.



=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D



       New Bugs

            -12143[1] Ptest-runner does not run python, in 2.4rc1

            -12144[2] ptest-busybox cases failed in 2.4rc1

            -12145[3] ptest-bash cases failed in 2.4rc1

            -12146[4] ptest-e2fsprog cases failed in 2.4rc1

            -12194[5] Toaster server lost "toaster.conf" environment, user =
settings lost

            -12131[6] Kernel traceback when reboot beaglebone black Medium+

            -12170[7] Add mkfs.ext support to busybox on poky-tiny

            -12138[8] [master] the icon on the connection manager appears w=
ithout connection in Eclipse Plugin

            -12168[9] media player - must be warned that it is not possible=
 to play MPEG-1 and MP3 formats

            -12150[10] bug for QA to create Testcases for this new test on =
testopia AUTO_eSDK_sdkext

            -12133[11] The search results for numbers are incorrect.

            -12140[12] The link and the x button from the search's result d=
id not work as expected

            -12142[13] The color from the table from the project build chan=
ged when you use an special character.

            -12164[14] The field from time's task is empty

            -12171[15] After building an image, checking the packages there=
's nothing.

            -12175[16] [Test Case 946] View detailed configuration informat=
ion for a build

            -12200[17] The button from New custom image is not working as e=
xpected

            -12201[18] The button from New custom image is letting you pres=
s it and it's supposed to be disabled.





       Not new M+ bugs

            -11994[19]  Graphical qemu doesn't work over remote X on Fedora=
 26







Full Bug Report: https://wiki.yoctoproject.org/wiki/WW40_-_2017-10-06_-_Ful=
l_Test_Cycle_2.4_RC1#Bugs_Found_during_QA_Test





=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D

    1.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12143[1]



    2.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12144[2]



    3.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12145[3]



    4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12146[4]



    5.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12194[5]



    6.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12131[6]



    7.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12170[7]



    8.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12138[8]



    9.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12168[9]



    10.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12150[10]



    11.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12133[11]



    12.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12140[12]



    13.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12142[13]



    14.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12164[14]



    15.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12171[15]



    16.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12175[16]



    17.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12200[17]



    18.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12201[18]



    19.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11994[19]



    20.    https://wiki.yoctoproject.org/wiki/WW40_-_2017-10-06_-_Full_Test=
_Cycle_2.4_RC1#Current_community_Open_Bugs_-_Medium.2B.2FHigh[20]



Regards

Libertad G.




--_000_58D9E2E50A021A45AD740492365FCDC532A29456fmsmsx107amrcor_
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
<p class=3D"MsoPlainText">Enjoy viewing the full Report for 2.4 RC1:&nbsp; =
<a href=3D"https://wiki.yoctoproject.org/wiki/WW40_-_2017-10-06_-_Full_Test=
_Cycle_2.4_RC1">
https://wiki.yoctoproject.org/wiki/WW40_-_2017-10-06_-_Full_Test_Cycle_2.4_=
RC1</a><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=
=3D=3D<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">The QA cycle for release 2.4 RC1 is complete.&nbs=
p; There are 18 new bugs from which 5 are high priority and are targeted to=
 be fixed in 2.4 M4. &nbsp;Four of the
<i>High Priority </i>bugs<i> </i>(12143[1], 12144[2], 12145[3], 12146[4]) a=
re ptest related and one (12194[5]) is Toaster related. &nbsp;An additional=
 medium&#43; priority (<i>12131</i>[6]
<i>&nbsp;Kernel traceback when reboot beaglebone</i>) is targeted to be fix=
ed by 2.4 M4. As an extra note on this report QA wants to highlight that, t=
here are a total of 46 Bugs targeted to be fixed in 2.4 M4 (link [20]).
<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><u><span style=3D"font-size:12.0pt">ptest</span> =
<o:p></o:p></u></p>
<p class=3D"MsoPlainText">Results show that python and e2fsprogs are not ex=
ecuting, hence bugs 12143[1] and 12146[4], respectively, were opened and gi=
ven a high priority.
<o:p></o:p></p>
<p class=3D"MsoPlainText">Bash (bug 12145[3]) had a decrement in the pass r=
ate of &nbsp;1.27% and &nbsp;busybox (bug 12144[2]) had a decrement in the =
pass rate of 0.19%. Although they are high priority, QA sees that the decre=
ment is not very significant, hence this bugs
 can be lowered in priority. <o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><u><span style=3D"font-size:12.0pt">Eclipse<o:p><=
/o:p></span></u></p>
<p class=3D"MsoPlainText">Some good news: testing for Eclipse-Oxygen was &n=
bsp;added for the first time to the QA test cycle.
<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><u><span style=3D"font-size:12.0pt">Posix<o:p></o=
:p></span></u></p>
<p class=3D"MsoPlainText">2.4 RC1 Posix results are very similar to last QA=
 cycle 2.4 M3 rc1. They only show that Edgerouter had one more failure if c=
ompared with the previous run.
<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Failures&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.4=
 RC1&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.4 M3 RC1=
<o:p></o:p></p>
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
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 46<o:p></o:p></p>
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
<p class=3D"MsoPlainText">2.4 RC1 LTP results show that, for Genericx86-64&=
nbsp;and Beaglebone, the failures incremented by 1 test. On Edgerouter we h=
ave an increment of 2 failures if compared with QA cycle 2.4 M3 rc1.<o:p></=
o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.4 RC1&nbsp;&nbsp;&nbsp; &nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp; &nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;2.4 M3 RC1<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; Total &nbsp;|&nbsp; Failures&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;=
&nbsp;&nbsp;&nbsp; &nbsp;Total &nbsp;&nbsp;|&nbsp; Failures<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Genericx86-64&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; 1391 |&nbsp;&nbsp; 27&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 1391&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; &nbsp;26<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Beaglebone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1353 |&nbsp;&nbsp; 18&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1353 &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; =
17<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Edgerouter&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1353 |&nbsp;&nbsp; =
34&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1353&nbsp; &nbsp;|&nbsp;&nbsp;&nbsp;&=
nbsp; 32<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mpc8315e-rdb&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; 1353&nbsp; |&nbsp;&nbsp; 31&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; 1353&nbsp; &nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; 31<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">For more details: <a href=3D"https://wiki.yoctopr=
oject.org/wiki/LTP_result">
https://wiki.yoctoproject.org/wiki/LTP_result</a><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><u><span style=3D"font-size:12.0pt">Performance<o=
:p></o:p></span></u></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In general, the measurements were on the same levels=
 showed up on 2.4_M3. The only noticeable variation was on &#8220;<b>rootfs=
</b>&#8221; that is showing an increase of 5% on Ubuntu and 7% on Fedora, a=
lthough this does not represent an important regression.
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Ubuntu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Test &nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; 2.4 M3 rc1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; 2.4_rc1 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;%<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sato&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; 1:15:58 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; 1:15:24&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbs=
p;&nbsp;-0.75<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rootfs&nbsp;&nbsp;&nbsp; 2:=
34&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:45&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;7.14<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rmwork 1:08:15 &nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1:08:19&nbsp;&=
nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;0.10<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kernel&nbsp;&nbsp;&nbsp; 5:=
36&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5:41&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;1.49<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eSDK&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; 2:39&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:40&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;0.63<o:=
p></o:p></p>
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
nbsp;&nbsp; 2.4 M3 rc1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; 2.4_rc1 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;%<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sato&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; 1:14:13 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; 1:17:02&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbs=
p;&nbsp;3.80<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rootfs&nbsp;&nbsp;&nbsp; 2:=
35&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:44&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;5.81<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rmwork 1:09:06 &nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1:10:25&nbsp;&=
nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;1.91<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kernel&nbsp;&nbsp;&nbsp; 5:=
58&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6:04&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;1.68<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eSDK&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; 2:37&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;2:42&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;3.18<o:=
p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=
=3D=3D<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Due to the fact that, there are 5 high priority b=
ugs and 46 bugs targeted to be fixed and solved by 2.4 M4, QA requests an R=
C2 so that all the commits/fixes relevant to 2.4 release are integrated.
<o:p></o:p></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText">=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=
=3D<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Bugs<o:p=
></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12143[1] Ptest-runner does not run python, in 2.4rc1
<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;-12144[2] ptest-busybox cases failed in 2.4rc1
<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;-12145[3] ptest-bash cases failed in 2.4rc1<o:p></o:=
p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12146[4] ptest-e2fsprog cases failed in 2.4rc1<o:p></o:p=
></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12194[5] Toaster server lost &quot;toaster.conf&quot; en=
vironment, user settings lost<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12131[6] Kernel traceback when reboot beaglebone black M=
edium&#43;<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12170[7] Add mkfs.ext support to busybox on poky-tiny<o:=
p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12138[8] [master] the icon on the connection manager app=
ears without connection in Eclipse Plugin&nbsp;
<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;-12168[9] media player - must be warned that it is n=
ot possible to play MPEG-1 and MP3 formats<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12150[10] bug for QA to create Testcases for this new te=
st on testopia AUTO_eSDK_sdkext<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12133[11] The search results for numbers are incorrect.<=
o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12140[12] The link and the x button from the search's re=
sult did not work as expected<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12142[13] The color from the table from the project buil=
d changed when you use an special character.<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12164[14] The field from time's task is empty<o:p></o:p>=
</p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12171[15] After building an image, checking the packages=
 there's nothing.<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12175[16] [Test Case 946] View detailed configuration in=
formation for a build<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12200[17] The button from New custom image is not workin=
g as expected<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -12201[18] The button from New custom image is letting yo=
u press it and it&#8217;s supposed to be disabled.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Not new M&#4=
3; bugs<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; -11994[19]&nbsp; Graphical qemu doesn&#8217;t work over r=
emote X on Fedora 26<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Full Bug Report<span style=3D"color:#1F497D">:</s=
pan> <span class=3D"MsoHyperlink">
<a href=3D"https://wiki.yoctoproject.org/wiki/WW40_-_2017-10-06_-_Full_Test=
_Cycle_2.4_RC1#Bugs_Found_during_QA_Test">https://wiki.yoctoproject.org/wik=
i/WW40_-_2017-10-06_-_Full_Test_Cycle_2.4_RC1#Bugs_Found_during_QA_Test</a>=
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span class=3D"MsoHyperlink"><o:p><span style=3D"=
text-decoration:none">&nbsp;</span></o:p></span></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=
=3D=3D=3D<o:p></o:p></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; =
</span>1.<span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D12143[1]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; 2.&nbsp;&nbsp;&nbsp; <span sty=
le=3D"color:#1F497D">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12=
144[2]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; 3.&nbsp;&nbsp;&nbsp; <span sty=
le=3D"color:#1F497D">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12=
145[3]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; =
</span>4.<span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D12146[4]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; 5.&nbsp;&nbsp;&nbsp; <span sty=
le=3D"color:#1F497D">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12=
194[5]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; 6.&nbsp;&nbsp;&nbsp; <span sty=
le=3D"color:#1F497D">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12=
131[6]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; 7.&nbsp;&nbsp;&nbsp; <span sty=
le=3D"color:#1F497D">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12=
170[7]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; =
</span>8.<span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D12138[8]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; =
</span>9.<span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D12168[9]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; =
</span>10.&nbsp;&nbsp;&nbsp; <span style=3D"color:#1F497D">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12150[10] <o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; =
</span>11.<span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D12133[11]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; =
</span>12.&nbsp;&nbsp;&nbsp; <span style=3D"color:#1F497D">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12140[12] <o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; =
</span>13.<span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D12142[13]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; =
</span>14.<span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D12164[14]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; =
</span>15.<span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D12171[15]
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; =
</span>16.&nbsp;&nbsp;&nbsp; <span style=3D"color:#1F497D">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12175[16] <o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; =
</span>17.&nbsp;&nbsp;&nbsp; <span style=3D"color:#1F497D">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12200[17] <o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; =
</span>18.&nbsp;&nbsp;&nbsp; <span style=3D"color:#1F497D">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12201[18] <o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; =
</span>19.&nbsp;&nbsp;&nbsp; <span style=3D"color:#1F497D">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11994[19] <o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp; 20.&nbsp;&nbsp;&nbsp; <span st=
yle=3D"color:#1F497D">https://wiki.yoctoproject.org/wiki/WW40_-_2017-10-06_=
-_Full_Test_Cycle_2.4_RC1#Current_community_Open_Bugs_-_Medium.2B.2FHigh[20=
]</span><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Regards<o:p></o:p></p>
<p class=3D"MsoPlainText">Libertad G.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_58D9E2E50A021A45AD740492365FCDC532A29456fmsmsx107amrcor_--
