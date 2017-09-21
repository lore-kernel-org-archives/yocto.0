Return-Path: <libertad.cruz@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FC97E00CF2; Thu, 21 Sep 2017 16:42:57 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 445E3E00CA2
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 16:42:55 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Sep 2017 16:42:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,426,1500966000"; 
	d="scan'208,217";a="1197780907"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by fmsmga001.fm.intel.com with ESMTP; 21 Sep 2017 16:42:53 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
	FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Thu, 21 Sep 2017 16:42:53 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.9]) by
	FMSMSX125.amr.corp.intel.com ([169.254.2.126]) with mapi id
	14.03.0319.002; Thu, 21 Sep 2017 16:42:53 -0700
From: "Cruz, Libertad" <libertad.cruz@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Lock, Joshua G" <joshua.g.lock@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA cycle report for 2.3.2 rc1
Thread-Index: AdMy+4Qx1vz/SMaSTmiVtenepeyB5Q==
Date: Thu, 21 Sep 2017 23:42:52 +0000
Message-ID: <58D9E2E50A021A45AD740492365FCDC532A26323@fmsmsx107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Cc: "Cruz Alcaraz, Juan M" <juan.m.cruz.alcaraz@intel.com>, "Jordan,
	Robin L" <robin.l.jordan@intel.com>
Subject: QA cycle report for 2.3.2 rc1
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
X-List-Received-Date: Thu, 21 Sep 2017 23:42:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_58D9E2E50A021A45AD740492365FCDC532A26323fmsmsx107amrcor_"

--_000_58D9E2E50A021A45AD740492365FCDC532A26323fmsmsx107amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,



Here is the current report for the 2.3.2 rc 1 point release test cycle.

Full Report :  https://wiki.yoctoproject.org/wiki/WW38_-_2017-09-20-_Full_T=
est_Cycle_-_2.3.2_rc1

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

During QA cycle for point release 2.3.2 rc1 one new bug was opened. Bug 121=
14<https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12114> [4] is about =
the GDC AB Ubuntu 17.04 worker having resource issues, therefore testing fo=
r this distribution is blocked.



The following bugs were tagged to the test runs but none of them block func=
tionalities.

Bug 11879[1] is about uvesafb errors present in the minnowmax log and is ta=
gged to this test cycle because the fix is in 2.4 M4 but not in 2.3.2 rc1.

Bug 10455[2]  is in progress design and targeted to milestone 2.5.

Bug 10477[3] is also targeted to be done on 2.5.



LPT/Compliance results for point releases are not documented. So 2.3.2 rc1 =
results should be the same as the 2.3 M4 release. If this were not true the=
n Windriver would investigate and raise a bug.


Performance
Perf results does not shows many changes compared to 3.2.1, there is only a=
 little regression of 6% building roofs on Fedora machine, the rest of the =
numbers are almost the same.





Ubuntu  15            Test          2.3.1_rc2            2.3.2_rc1         =
    %

                              sato           1:14:04              1:12:11  =
             -2.54

                              rootfs        2:39                    2:49   =
                  6.29

                              rmwork     1:04:49              1:04:15      =
         -0.87

                              kernel        5:25                    5:21   =
                 -1.23

                              eSDK          2:42                    2:46   =
                  2.47





Fedora   23           Test          2.3.1_rc2            2.3.2_rc1         =
    %

                              sato          1:13:17              1:14:51   =
            2.14

                              rootfs       2:41                    2:45    =
                2.48

                              rmwork    1:06:15              1:07:47       =
        2.31

                              kernel       5.57                    5.56    =
                -0.28

                              eSDK         3:02                    3:06    =
                 2.20





ptest



There is an improvement of 2.1 % on the pass rate of glib-2.0 in 2.3.2 rc1 =
vs the pass rate in 2.3.1 rc2.  There is a regression of the pass rate of l=
ibxml2 and busybox of 4.2% and .1% respectively.



=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D



QA needs help from Joshua and the official AB so that we may run the Ubuntu=
 17.04 distro testing, if you have an Ubuntu 17.04 worker. With the objecti=
ve that the report would be complete before CCB session finishes analyzing =
the results from this release.



QA finds 2.3.2 rc1 to be on the overall a stable release candidate.



=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D



       New Bugs

            -12114[4]  oe-selftest on Ubuntu1704 hangs due to a resource wa=
rning of unclosed file



       M+ Bugs

            -11879[1]  Testimage: multiple "uvesafb" errors present in log =
in minnowmax on genericx86/genericx86-64

            -10455[2]  [morty][Test Case 1059] Parselogs is failing on gene=
ricx86 (32 and 64 bits) giving error: blk_update_request: I/O error, dev lo=
op0

            -10477[3]  yocto-bsp: tool should output a conf file to be cons=
ume by the qemu runner



Full Bug Report : https://wiki.yoctoproject.org/wiki/WW38_-_2017-09-20-_Ful=
l_Test_Cycle_-_2.3.2_rc1





=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D



    1.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11879 [1]

    2.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10455 [2]

    3.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10477 [3]
    4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12114 [4]







Regards

Libertad G.

--_000_58D9E2E50A021A45AD740492365FCDC532A26323fmsmsx107amrcor_
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
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle24
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle25
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
ot;,sans-serif">Here is the current report for the 2.3.2 rc 1 point release=
 test cycle.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Full Report :
<span style=3D"color:#1F497D">&nbsp;https://wiki.yoctoproject.org/wiki/WW38=
_-_2017-09-20-_Full_Test_Cycle_-_2.3.2_rc1<o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif;color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">During QA cycle for point release 2.3.2 rc1 one new bug was=
 opened. Bug
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12114"><span=
 style=3D"color:windowtext;text-decoration:none">12114</span></a> [4] is ab=
out the GDC AB Ubuntu 17.04 worker having resource issues, therefore testin=
g for this distribution is blocked.
</span><span style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">The following bugs were tagged to the test runs but none of=
 them block functionalities.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Bug 11879[1] is about uvesafb errors present in the minnowm=
ax log and is tagged to this test cycle because the fix is in 2.4 M4 but no=
t in 2.3.2 rc1.
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Bug 10455[2] &nbsp;is in progress design and targeted to mi=
lestone 2.5.
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Bug 10477[3] is also targeted to be done on 2.5.
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><b><span style=3D"font-family:&quot;Calibri Light=
&quot;,sans-serif">LPT/Compliance</span></b><span style=3D"font-family:&quo=
t;Calibri Light&quot;,sans-serif;color:#1F497D">
</span><span style=3D"font-family:&quot;Calibri Light&quot;,sans-serif">res=
ults for point releases are not documented. So 2.3.2 rc1 results should be =
the same as the 2.3 M4 release. If this were not true then Windriver would =
investigate and raise a bug.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Performance<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif">Perf results does not shows many changes compared to 3.2.1, th=
ere is only a little regression of 6% building roofs on Fedora machine, the=
 rest of the numbers are almost the same.
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp; <o:p>
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Ubuntu&nbsp;&nbsp;15&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Test &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;=
&nbsp; 2.3.1_rc2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;2.3.2_rc1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; %<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sato&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;1:14:04 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1:12:11&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -2.54<o:p></o:p></span></p=
>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rootfs&nbsp;&nbsp;&nbsp; &nbsp;&nb=
sp;&nbsp;&nbsp;2:39&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:49&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; 6.29<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rmwork &nbsp;&nbsp;&nbsp;&nbsp;1:0=
4:49 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; 1:04:15&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; -0.87<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kernel&nbsp;&nbsp;&nbsp; &nbsp;&nb=
sp;&nbsp;&nbsp;5:25&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5:21&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;-1.23<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eSDK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 &nbsp;&nbsp;&nbsp;&nbsp;2:42&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:46&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.47<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Fedora&nbsp;&nbsp;&nbsp;23&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Test &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;=
&nbsp; 2.3.1_rc2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;2.3.2_rc1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; %<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sato&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; &nbsp;&nbsp;&nbsp;1:13:17 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1:14:51&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;2.14<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rootfs&nbsp;&nbsp;&nbsp; &nbsp;&nb=
sp;&nbsp;2:41&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2:45&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;2.48<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rmwork &nbsp;&nbsp;&nbsp;1:06:15 &=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1:0=
7:47&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; 2.31<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kernel&nbsp;&nbsp;&nbsp; &nbsp;&nb=
sp;&nbsp;5.57&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.56&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;-0.28<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eSDK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 &nbsp;&nbsp;&nbsp;3:02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3:06&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; 2.20<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><b><span style=3D"font-family:&quot;Calibri Light=
&quot;,sans-serif">ptest
<o:p></o:p></span></b></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">There is an improvement of 2.1 % on the pass rate of glib-2=
.0 in 2.3.2 rc1 vs the pass rate in 2.3.1 rc2. &nbsp;There is a regression =
of the pass rate of libxml2 and busybox of 4.2% and
 .1% respectively.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><b><span style=3D"font-family:&quot;Calibri Light=
&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D<o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">QA needs help from Joshua and the official AB so that we ma=
y run the Ubuntu 17.04 distro testing, if you have an Ubuntu 17.04 worker. =
With the objective that the report would be complete
 before CCB session finishes analyzing the results from this release. <o:p>=
</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">QA finds 2.3.2 rc1 to be on the overall a stable release ca=
ndidate.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o=
:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Bugs<o:p></o:p></s=
pan></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;-12114[4]&nbsp; oe-selftest on Ubuntu1704 hangs due to a resou=
rce warning of unclosed file<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&#43; Bugs<o:p></o:p>=
</span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;-11879[1]&nbsp; Testimage: multiple &quot;uvesafb&quot; errors=
 present in log in minnowmax on genericx86/genericx86-64<o:p></o:p></span><=
/p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;-10455[2]&nbsp; [morty][Test Case 1059] Parselogs is failing o=
n genericx86 (32 and 64 bits) giving error: blk_update_request: I/O error, =
dev loop0<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;-10477[3]&nbsp;&nbsp;yocto-bsp: tool should output a conf file=
 to be consume by the qemu runner<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">Full Bug Report :
<span style=3D"color:#1F497D">https://wiki.yoctoproject.org/wiki/WW38_-_201=
7-09-20-_Full_Test_Cycle_-_2.3.2_rc1<o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D<=
o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 1.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11879">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11879</a><span style=3D"colo=
r:#1F497D">
</span>[1]<span style=3D"color:#1F497D"><o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 2.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10455">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10455</a><span style=3D"colo=
r:#1F497D">
</span>[2]<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Calibri Light&qu=
ot;,sans-serif">&nbsp;&nbsp;&nbsp; 3.&nbsp;&nbsp;&nbsp;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10477">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10477</a><span style=3D"colo=
r:#1F497D">
</span>[3]<span style=3D"color:#1F497D"><o:p></o:p></span></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Calibri Light&quot;,sans-serif">&nbsp;&nbsp;&nbsp; 4.&nbsp;&nbsp=
; &nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1211=
4">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12114</a> [4]<o:p></=
o:p></span></p>
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

--_000_58D9E2E50A021A45AD740492365FCDC532A26323fmsmsx107amrcor_--
