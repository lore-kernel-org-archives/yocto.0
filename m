Return-Path: <Krishna.Dwivedi@aricent.com>
Received: from jaguar.aricent.com (jaguar.aricent.com [121.241.96.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9744E006CB
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2013 22:38:52 -0700 (PDT)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id D1DBC36B30
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 11:08:33 +0530 (IST)
Received: from GUREXHT01.ASIAN.AD.ARICENT.COM (gurexht01.asian.ad.aricent.com
	[10.203.171.136])
	by jaguar.aricent.com (Postfix) with ESMTP id BAE3336B2E
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 11:08:33 +0530 (IST)
Received: from GUREXMB01.asian.ad.aricent.com ([10.203.171.130]) by
	GUREXHT01.ASIAN.AD.ARICENT.COM ([10.203.171.136]) with mapi;
	Mon, 15 Apr 2013 11:08:33 +0530
From: Krishna Dwivedi <Krishna.Dwivedi@aricent.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 15 Apr 2013 11:08:32 +0530
Thread-Topic: Arguement list too big error in bitbake meta-toolchain for
	MIPS architechture-Gentle Reminder
Thread-Index: Ac42v7QgKNGQl64yQZW5YcNZF+HlSgC212xQ
Message-ID: <B60DC3E72D20B040854608D81E44050F64F451A93E@GUREXMB01.ASIAN.AD.ARICENT.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Arguement list too big error in bitbake meta-toolchain for MIPS architechture-Gentle Reminder
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
X-List-Received-Date: Mon, 15 Apr 2013 05:38:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_B60DC3E72D20B040854608D81E44050F64F451A93EGUREXMB01ASIA_"

--_000_B60DC3E72D20B040854608D81E44050F64F451A93EGUREXMB01ASIA_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

Thanks in advance.
Can anyone please let me know what could be issue here.

Regards,
Krishna


From: Krishna Dwivedi
Sent: Thursday, April 11, 2013 7:50 PM
To: 'yocto@yoctoproject.org'
Subject: Arguement list too big error in bitbake meta-toolchain for MIPS ar=
chitechture

Hi All,

I am trying to build recipe meta-toolchain for MIPS architecture but runnin=
g into errors. Can anyone please let me know, if I am missing anything here=
 or what could be root cause of this and how can I fix it. I have followed =
these steps:

1)In  WORKDIR/build/conf/local.conf-I selected MACHINE ?=3D "qemumips" for =
mips architechture.

2)source oe-init-build-env.

3)bitbake meta-toolchain.

In third step,I am running into these errors:

NOTE: recipe nativesdk-gettext-0.18.2-r0: task do_configure: Started
ERROR: Error executing a python function in /home/netlogic/yocto/poky/meta/=
recipes-core/eglibc/eglibc-locale_2.17.bb:
CalledProcessError: Command 'cp -al /home/netlogic/yocto/poky/build/tmp/wor=
k/mips32-poky-linux/eglibc-locale/2.17-r0/packages-split/* /home/netlogic/y=
octo/poky/build/tmp/work/mips32-poky-linux/eglibc-locale/2.17-r0/sstate-bui=
ld-package//packages-split' returned non-zero exit status 126 with output /=
bin/sh: /bin/cp: Argument list too long


ERROR: The stack trace of python calls that resulted in this exception/fail=
ure was:
ERROR:   File "sstate_task_postfunc", line 10, in <module>
ERROR:
ERROR:   File "sstate_task_postfunc", line 7, in sstate_task_postfunc
ERROR:
ERROR:   File "sstate.bbclass", line 50, in sstate_package
ERROR:
ERROR:   File "/home/netlogic/yocto/poky/meta/lib/oe/path.py", line 94, in =
copyhardlinktree
ERROR:     check_output(cmd, shell=3DTrue, stderr=3Dsubprocess.STDOUT)
ERROR:
ERROR:   File "/home/netlogic/yocto/poky/meta/lib/oe/path.py", line 155, in=
 check_output
ERROR:     raise CalledProcessError(retcode, cmd, output=3Doutput)
ERROR:
ERROR: The code that was being executed was:
ERROR:      0006:        bb.build.exec_func(intercept, d)
ERROR:      0007:    sstate_package(shared_state, d)
ERROR:      0008:
ERROR:      0009:
ERROR:  *** 0010:sstate_task_postfunc(d)
ERROR:      0011:
ERROR: [From file: 'sstate_task_postfunc', lineno: 10, function: <module>]
ERROR:      0003:    shared_state =3D sstate_state_fromvars(d)
ERROR:      0004:    sstate_install(shared_state, d)
ERROR:      0005:    for intercept in shared_state['interceptfuncs']:
ERROR:      0006:        bb.build.exec_func(intercept, d)
ERROR:  *** 0007:    sstate_package(shared_state, d)
ERROR:      0008:
ERROR:      0009:
ERROR:      0010:sstate_task_postfunc(d)
ERROR:      0011:
ERROR: [From file: 'sstate_task_postfunc', lineno: 7, function: sstate_task=
_postfunc]
ERROR:      0046:    for plain in ss['plaindirs']:
ERROR:      0047:        pdir =3D plain.replace(workdir, sstatebuild)
ERROR:      0048:        bb.mkdirhier(plain)
ERROR:      0049:        bb.mkdirhier(pdir)
ERROR:  *** 0050:        oe.path.copyhardlinktree(plain, pdir)
ERROR:      0051:
ERROR:      0052:    d.setVar('SSTATE_BUILDDIR', sstatebuild)
ERROR:      0053:    d.setVar('SSTATE_PKG', sstatepkg)
ERROR:      0054:    sstate_hardcode_path(d)
ERROR: [From file: 'sstate.bbclass', lineno: 50, function: sstate_package]
ERROR: Function failed: sstate_task_postfunc
ERROR: Logfile of failure stored in: /home/netlogic/yocto/poky/build/tmp/wo=
rk/mips32-poky-linux/eglibc-locale/2.17-r0/temp/log.do_package.27399
NOTE: recipe eglibc-locale-2.17-r0: task do_package: Failed
ERROR: Task 772 (/home/netlogic/yocto/poky/meta/recipes-core/eglibc/eglibc-=
locale_2.17.bb, do_package) failed with exit code '1'


Regards,
Krishna




=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
Please refer to http://www.aricent.com/legal/email_disclaimer.html
for important disclosures regarding this electronic communication.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

--_000_B60DC3E72D20B040854608D81E44050F64F451A93EGUREXMB01ASIA_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi All,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks in advance.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Can anyone please let =
me know what could be issue here.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Regards,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Krishna<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Krishna =
Dwivedi
<br>
<b>Sent:</b> Thursday, April 11, 2013 7:50 PM<br>
<b>To:</b> 'yocto@yoctoproject.org'<br>
<b>Subject:</b> Arguement list too big error in bitbake meta-toolchain for =
MIPS architechture<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to build recipe meta-toolchain for MIPS =
architecture but running into errors. Can anyone please let me know, if I a=
m missing anything here or what could be root cause of this and how can I f=
ix it. I have followed these steps:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">1)In&nbsp; WORKDIR/build/conf/local.conf-I selected =
MACHINE ?=3D &quot;qemumips&quot; for mips architechture.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">2)source oe-init-build-env.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">3)bitbake meta-toolchain.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>In third step,I am running into these errors:<o:p=
></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">NOTE: recipe nativesdk-gettext-0.18.2-r0: task do_co=
nfigure: Started<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Error executing a python function in /home/ne=
tlogic/yocto/poky/meta/recipes-core/eglibc/eglibc-locale_2.17.bb:<o:p></o:p=
></p>
<p class=3D"MsoNormal">CalledProcessError: Command 'cp -al /home/netlogic/y=
octo/poky/build/tmp/work/mips32-poky-linux/eglibc-locale/2.17-r0/packages-s=
plit/* /home/netlogic/yocto/poky/build/tmp/work/mips32-poky-linux/eglibc-lo=
cale/2.17-r0/sstate-build-package//packages-split'
 returned non-zero exit status 126 with output /bin/sh: /bin/cp: <b>Argumen=
t list too long</b><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: The stack trace of python calls that resulted=
 in this exception/failure was:<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp; File &quot;sstate_task_postfunc&q=
uot;, line 10, in &lt;module&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp; File &quot;sstate_task_postfunc&q=
uot;, line 7, in sstate_task_postfunc<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp; File &quot;sstate.bbclass&quot;, =
line 50, in sstate_package<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp; File &quot;/home/netlogic/yocto/p=
oky/meta/lib/oe/path.py&quot;, line 94, in copyhardlinktree<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp; check_output(cmd, she=
ll=3DTrue, stderr=3Dsubprocess.STDOUT)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp; File &quot;/home/netlogic/yocto/p=
oky/meta/lib/oe/path.py&quot;, line 155, in check_output<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp; raise CalledProcessEr=
ror(retcode, cmd, output=3Doutput)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: The code that was being executed was:<o:p></o=
:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0006:&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.build.exec_func(intercept, d)<o:p></o:p=
></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0007:&nbsp;&nbs=
p;&nbsp; sstate_package(shared_state, d)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0008:<o:p></o:p=
></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0009:<o:p></o:p=
></p>
<p class=3D"MsoNormal">ERROR:&nbsp; *** 0010:sstate_task_postfunc(d)<o:p></=
o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0011:<o:p></o:p=
></p>
<p class=3D"MsoNormal">ERROR: [From file: 'sstate_task_postfunc', lineno: 1=
0, function: &lt;module&gt;]<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0003:&nbsp;&nbs=
p;&nbsp; shared_state =3D sstate_state_fromvars(d)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0004:&nbsp;&nbs=
p;&nbsp; sstate_install(shared_state, d)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0005:&nbsp;&nbs=
p;&nbsp; for intercept in shared_state['interceptfuncs']:<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0006:&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.build.exec_func(intercept, d)<o:p></o:p=
></p>
<p class=3D"MsoNormal">ERROR:&nbsp; *** 0007:&nbsp;&nbsp;&nbsp; sstate_pack=
age(shared_state, d)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0008:<o:p></o:p=
></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0009:<o:p></o:p=
></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0010:sstate_tas=
k_postfunc(d)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0011:<o:p></o:p=
></p>
<p class=3D"MsoNormal">ERROR: [From file: 'sstate_task_postfunc', lineno: 7=
, function: sstate_task_postfunc]<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;0046:&nbsp;&nbs=
p;&nbsp; for plain in ss['plaindirs']:<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0047:&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pdir =3D plain.replace(workdir, sstatebuil=
d)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0048:&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.mkdirhier(plain)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0049:&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.mkdirhier(pdir)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp; *** 0050:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; oe.path.copyhardlinktree(plain, pdir)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0051:<o:p></o:p=
></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0052:&nbsp;&nbs=
p;&nbsp; d.setVar('SSTATE_BUILDDIR', sstatebuild)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0053:&nbsp;&nbs=
p;&nbsp; d.setVar('SSTATE_PKG', sstatepkg)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0054:&nbsp;&nbs=
p;&nbsp; sstate_hardcode_path(d)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: [From file: 'sstate.bbclass', lineno: 50, fun=
ction: sstate_package]<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Function failed: sstate_task_postfunc<o:p></o=
:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /home/netlogic/=
yocto/poky/build/tmp/work/mips32-poky-linux/eglibc-locale/2.17-r0/temp/log.=
do_package.27399<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: recipe eglibc-locale-2.17-r0: task do_package:=
 Failed<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task 772 (/home/netlogic/yocto/poky/meta/reci=
pes-core/eglibc/eglibc-locale_2.17.bb, do_package) failed with exit code '1=
'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Krishna<o:p></o:p></p>
</div>
<br>
<font face=3D"Arial" color=3D"Gray" size=3D"2"><br>
<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
Please refer to http://www.aricent.com/legal/email_disclaimer.html<br>
for important disclosures regarding this electronic communication.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
</font>
</body>
</html>

--_000_B60DC3E72D20B040854608D81E44050F64F451A93EGUREXMB01ASIA_--
