Return-Path: <joel.zhou@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 543EAE00960; Mon,  1 Jun 2015 09:30:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [216.31.210.62 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-gw1-out.broadcom.com (mail-gw1-out.broadcom.com
	[216.31.210.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8516E0027F
	for <yocto@yoctoproject.org>; Mon,  1 Jun 2015 09:30:10 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.13,533,1427785200"; d="scan'208,217";a="66455415"
Received: from irvexchcas06.broadcom.com (HELO
	IRVEXCHCAS06.corp.ad.broadcom.com) ([10.9.208.53])
	by mail-gw1-out.broadcom.com with ESMTP; 01 Jun 2015 10:15:23 -0700
Received: from SJEXCHCAS06.corp.ad.broadcom.com (10.16.203.14) by
	IRVEXCHCAS06.corp.ad.broadcom.com (10.9.208.53) with Microsoft SMTP
	Server (TLS) id 14.3.235.1; Mon, 1 Jun 2015 09:30:08 -0700
Received: from SJEXCHMB12.corp.ad.broadcom.com ([fe80::bc15:c1e1:c29a:36f7])
	by SJEXCHCAS06.corp.ad.broadcom.com ([::1]) with mapi id 14.03.0235.001;
	Mon, 1 Jun 2015 09:30:08 -0700
From: "Joel (Xi Zhou) Zhou" <joel.zhou@broadcom.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ERROR: Multiple .bb files
Thread-Index: AdCciDh2Yq3rayNhThWdldxQpO21mg==
Date: Mon, 1 Jun 2015 16:30:07 +0000
Message-ID: <9F136EE5FB53D64397ED1089A0E760E0162D2A19@SJEXCHMB12.corp.ad.broadcom.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.203.100]
MIME-Version: 1.0
Subject: ERROR: Multiple .bb files
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
X-List-Received-Date: Mon, 01 Jun 2015 16:30:16 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9F136EE5FB53D64397ED1089A0E760E0162D2A19SJEXCHMB12corpa_"

--_000_9F136EE5FB53D64397ED1089A0E760E0162D2A19SJEXCHMB12corpa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Updated.
If I bypass the "packagedata" error,  the new kernel recipe runs into "ERRO=
R: Multiple .bb files ..."
Anyone has suggestion for this issue?

Thanks,
Joel
---------------
NOTE: Compute totals (have 1 endpoint(s))
ERROR: Multiple .bb files are due to be built which each provide virtual/ke=
rnel (/projects/poky/build64/../meta-brcm/recipes-kernel/linux/linux-brcm-n=
and_3.14.29.bb /projects/poky/build64/../meta-brcm/recipes-kernel/linux/lin=
ux-brcm_3.14.29.bb).
This usually means one provides something the other doesn't and should.


From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Joel (Xi Zhou) Zhou
Sent: Monday, June 01, 2015 10:48 AM
To: yocto@yoctoproject.org
Subject: [yocto] Multi recipes for different defconfig on the same kernel s=
ource

Hi all,

I need to create multiple recipes for different kernel config based on the =
same kernel source.
In my experiment, I create a new recipe linux-brcm-nand based on linux-brcm=
, the only different is the kernel defconfig file.
From the following error message, it looks like the idea of multi-kernel pr=
oviders.

What is the correct way to different kernel config on the same kernel sourc=
e?

Thanks,
Joel
----------------------------------
ERROR: The recipe linux-brcm-nand is trying to install files into a shared =
area when those files already exist. Those files and their manifest locatio=
n are:
   /projects/poky/build64/tmp/sysroots/brcm/pkgdata/runtime/kernel
Matched in manifest-brcm-linux-brcm.packagedata
/projects/poky/build64/tmp/sysroots/brcm/pkgdata/runtime/kernel.packaged
Matched in manifest-brcm-linux-brcm.packagedata
...
/projects/poky/build64/tmp/sysroots/brcm/pkgdata/kernel-depmod/System.map-3=
.14.29
Matched in manifest-brcm-linux-brcm.packagedata
Please verify which recipe should provide the above files.
The build has stopped as continuing in this scenario WILL break things, if =
not now, possibly in the future (we've seen builds fail several months late=
r). If the system knew how to recover from this automatically it would howe=
ver there are several different scenarios which can result in this and we d=
on't know which one this is. It may be you have switched providers of somet=
hing like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), in tha=
t case you need to execute the clean task for both recipes and it will reso=
lve this error. It may be you changed DISTRO_FEATURES from systemd to udev =
or vice versa. Cleaning those recipes should again resolve this error howev=
er switching DISTRO_FEATURES on an existing build directory is not supporte=
d, you should really clean out tmp and rebuild (reusing sstate should be sa=
fe). It could be the overlapping files detected are harmless in which case =
adding them to SSTATE_DUPWHITELIST may be the correct solution. It could al=
so be your build is including two different conflicting versions of things =
(e.g. bluez 4 and bluez 5 and the correct solution for that would be to res=
olve the conflict. If in doubt, please ask on the mailing list, sharing the=
 error and filelist above.
ERROR: If the above message is too much, the simpler version is you're advi=
sed to wipe out tmp and rebuild (reusing sstate is fine). That will likely =
fix things in most (but not all) cases.
ERROR: Function failed: sstate_task_postfunc
ERROR: Logfile of failure stored in: /projects/poky/build64/tmp/work/brcm -=
poky-linux/linux-brcm-nand/3.14.29-r6/temp/log.do_packagedata.40045
NOTE: recipe linux-brcm-nand-3.14.29-r6: task do_packagedata: Failed
ERROR: Task 11 (/projects/poky/build64../meta-brcm/meta/recipes-kernel/linu=
x/linux-brcm-nand_3.14.29.bb, do_packagedata) failed with exit code '1'
NOTE: Tasks Summary: Attempted 447 tasks of which 445 didn't need to be rer=
un and 2 failed.

--_000_9F136EE5FB53D64397ED1089A0E760E0162D2A19SJEXCHMB12corpa_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Updated.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">If I bypass the &#8220=
;packagedata&#8221; error,&nbsp; the new kernel recipe runs into &#8220;ERR=
OR: Multiple .bb files &#8230;&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Anyone has suggestion =
for this issue?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Joel<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">---------------<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">NOTE: Compute totals (=
have 1 endpoint(s))<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">ERROR: Multiple .bb fi=
les are due to be built which each provide virtual/kernel (/projects/poky/b=
uild64/../meta-brcm/recipes-kernel/linux/linux-brcm-nand_3.14.29.bb /projec=
ts/poky/build64/../meta-brcm/recipes-kernel/linux/linux-brcm_3.14.29.bb).<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">This usually means one=
 provides something the other doesn't and should.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Joel (Xi Zhou) Zhou<br>
<b>Sent:</b> Monday, June 01, 2015 10:48 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Multi recipes for different defconfig on the same k=
ernel source<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I need to create multiple recipes for different kern=
el config based on the same kernel source.<o:p></o:p></p>
<p class=3D"MsoNormal">In my experiment, I create a new recipe linux-brcm-n=
and based on linux-brcm, the only different is the kernel defconfig file.<o=
:p></o:p></p>
<p class=3D"MsoNormal">From the following error message, it looks like the =
idea of multi-kernel providers.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What is the correct way to different kernel config o=
n the same kernel source?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Joel<o:p></o:p></p>
<p class=3D"MsoNormal">----------------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: The recipe linux-brcm-nand is trying to insta=
ll files into a shared area when those files already exist. Those files and=
 their manifest location are:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; /projects/poky/build64/tmp/sysroots/brc=
m/pkgdata/runtime/kernel<o:p></o:p></p>
<p class=3D"MsoNormal">Matched in manifest-brcm-linux-brcm.packagedata<o:p>=
</o:p></p>
<p class=3D"MsoNormal">/projects/poky/build64/tmp/sysroots/brcm/pkgdata/run=
time/kernel.packaged<o:p></o:p></p>
<p class=3D"MsoNormal">Matched in manifest-brcm-linux-brcm.packagedata<o:p>=
</o:p></p>
<p class=3D"MsoNormal">...<o:p></o:p></p>
<p class=3D"MsoNormal">/projects/poky/build64/tmp/sysroots/brcm/pkgdata/ker=
nel-depmod/System.map-3.14.29<o:p></o:p></p>
<p class=3D"MsoNormal">Matched in manifest-brcm-linux-brcm.packagedata<o:p>=
</o:p></p>
<p class=3D"MsoNormal">Please verify which recipe should provide the above =
files.<o:p></o:p></p>
<p class=3D"MsoNormal">The build has stopped as continuing in this scenario=
 WILL break things, if not now, possibly in the future (we've seen builds f=
ail several months later). If the system knew how to recover from this auto=
matically it would however there are
 several different scenarios which can result in this and we don't know whi=
ch one this is. It may be you have switched providers of something like vir=
tual/kernel (e.g. from linux-yocto to linux-yocto-dev), in that case you ne=
ed to execute the clean task for
 both recipes and it will resolve this error. It may be you changed DISTRO_=
FEATURES from systemd to udev or vice versa. Cleaning those recipes should =
again resolve this error however switching DISTRO_FEATURES on an existing b=
uild directory is not supported,
 you should really clean out tmp and rebuild (reusing sstate should be safe=
). It could be the overlapping files detected are harmless in which case ad=
ding them to SSTATE_DUPWHITELIST may be the correct solution. It could also=
 be your build is including two
 different conflicting versions of things (e.g. bluez 4 and bluez 5 and the=
 correct solution for that would be to resolve the conflict. If in doubt, p=
lease ask on the mailing list, sharing the error and filelist above.<o:p></=
o:p></p>
<p class=3D"MsoNormal">ERROR: If the above message is too much, the simpler=
 version is you're advised to wipe out tmp and rebuild (reusing sstate is f=
ine). That will likely fix things in most (but not all) cases.<o:p></o:p></=
p>
<p class=3D"MsoNormal">ERROR: Function failed: sstate_task_postfunc<o:p></o=
:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /projects/poky/=
build64/tmp/work/brcm -poky-linux/linux-brcm-nand/3.14.29-r6/temp/log.do_pa=
ckagedata.40045<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: recipe linux-brcm-nand-3.14.29-r6: task do_pac=
kagedata: Failed<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task 11 (/projects/poky/build64../meta-brcm/m=
eta/recipes-kernel/linux/linux-brcm-nand_3.14.29.bb, do_packagedata) failed=
 with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 447 tasks of which 44=
5 didn't need to be rerun and 2 failed.<o:p></o:p></p>
</div>
</body>
</html>

--_000_9F136EE5FB53D64397ED1089A0E760E0162D2A19SJEXCHMB12corpa_--
