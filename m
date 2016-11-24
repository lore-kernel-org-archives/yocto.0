Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B22A3E00CAE; Thu, 24 Nov 2016 02:06:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50893E00955
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 02:06:02 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2HKAgC4ujZY/yYyC4deHAEBBAEBCgEBg?=
	=?us-ascii?q?nMhJAEBAQEBH1iBCQGNOKwOggiGHAMCAoIEPxQBAgEBAQEBAQEDXx0LhGwDEht?=
	=?us-ascii?q?eAQwJFVYmAQQbGohLAZ5hhRmNDCoCiywMASSGP4klgy+CMAWIUodfhDmFaAGBS?=
	=?us-ascii?q?JlXhhORfB43LoQ8HIFdiCwBgQwBAQE?=
X-IPAS-Result: =?us-ascii?q?A2HKAgC4ujZY/yYyC4deHAEBBAEBCgEBgnMhJAEBAQEBH1i?=
	=?us-ascii?q?BCQGNOKwOggiGHAMCAoIEPxQBAgEBAQEBAQEDXx0LhGwDEhteAQwJFVYmAQQbG?=
	=?us-ascii?q?ohLAZ5hhRmNDCoCiywMASSGP4klgy+CMAWIUodfhDmFaAGBSJlXhhORfB43LoQ?=
	=?us-ascii?q?8HIFdiCwBgQwBAQE?=
X-IronPort-AV: E=Sophos;i="5.31,690,1473134400"; 
	d="scan'208,217";a="217621092"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	24 Nov 2016 05:06:01 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC01.global.avaya.com) ([135.64.58.11])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	24 Nov 2016 05:06:01 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC01.global.avaya.com ([135.64.58.11]) with mapi id
	14.03.0319.002; Thu, 24 Nov 2016 11:06:00 +0100
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to add user with nologin shell
Thread-Index: AdJGOlndONxZfNkdSfSjctUlP6w3Yg==
Date: Thu, 24 Nov 2016 10:05:59 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3E7F65EC@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.47]
MIME-Version: 1.0
Subject: How to add user with nologin shell
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
X-List-Received-Date: Thu, 24 Nov 2016 10:06:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3E7F65ECAZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3E7F65ECAZFFEXMB01globa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to add an user to image with /sbin/nologin but it fails with be=
low error

WARNING: avaya-image: useradd command did not succeed. Retrying...
ERROR: test-image: Tried running useradd command 1 times without success, g=
iving up
ERROR: Function failed: set_user_group (log file is located at /home/abhina=
v/bitbake/.../test-image/1.0-r0/temp/log.do_rootfs.54725)
ERROR: Logfile of failure stored in: /home/abhinav/bitbake/../test-image/1.=
0-r0/temp/log.do_rootfs.54725
ERROR: Task 7 (/home/abhinav/bitbake/../images/test-image.bb, do_rootfs) fa=
iled with exit code '1'

I am using below section in my recipe to achieve it
EXTRA_USERS_PARAMS =3D "useradd -M -g user1 user1 -r -s /sbin/nologin;"

Any thoughts how to fix it.

Thanks,
Abhinav

--_000_F38A866CD026F746A3BF0928A84397BE3E7F65ECAZFFEXMB01globa_
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
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to add an user to image with /sbin/nolog=
in but it fails with below error<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">WARNING: avaya-image: useradd command did not succee=
d. Retrying...<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: test-image: Tried running useradd command 1 t=
imes without success, giving up<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Function failed: set_user_group (log file is =
located at /home/abhinav/bitbake/&#8230;/test-image/1.0-r0/temp/log.do_root=
fs.54725)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /home/abhinav/b=
itbake/../test-image/1.0-r0/temp/log.do_rootfs.54725<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task 7 (/home/abhinav/bitbake/../images/test-=
image.bb, do_rootfs) failed with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using below section in my recipe to achieve it<=
o:p></o:p></p>
<p class=3D"MsoNormal">EXTRA_USERS_PARAMS =3D &#8220;useradd -M -g user1 us=
er1 -r -s /sbin/nologin;&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any thoughts how to fix it.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Abhinav<o:p></o:p></p>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE3E7F65ECAZFFEXMB01globa_--
