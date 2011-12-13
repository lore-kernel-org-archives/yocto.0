Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20F62E00305
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 14:50:38 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2011 14:50:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208,217";a="86938719"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 13 Dec 2011 14:50:37 -0800
Received: from orsmsx502.amr.corp.intel.com ([10.22.226.210]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi;
	Tue, 13 Dec 2011 14:50:37 -0800
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Ashfield, Bruce"
	<Bruce.Ashfield@windriver.com>
Date: Tue, 13 Dec 2011 14:50:35 -0800
Thread-Topic: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison
	branch.
Thread-Index: Acy56aCBCKpsufZzRqKtM2RlahXPnQ==
Message-ID: <4BD43A85686FC34D819098DB1C3999D901900BC33C@orsmsx502.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>
Subject: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison branch.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 13 Dec 2011 22:50:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4BD43A85686FC34D819098DB1C3999D901900BC33Corsmsx502amrc_"

--_000_4BD43A85686FC34D819098DB1C3999D901900BC33Corsmsx502amrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I get failure for the linux-yoctort_3.0.bb file for the poky Edison branch.
Darren told that it was fixed and merged to master.

I wanted to bring to the list about this error message.

ERROR: Function 'do_kernel_configme' failed (see /usr/local/src/yocto_1_1_r=
elease/poky/build1/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+g=
it1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e=
3fc82a5037f3-r1/temp/log.do_kernel_configme.18502 for further information)
ERROR: Logfile of failure stored in: /usr/local/src/yocto_1_1_release/poky/=
build1/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4=
aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3=
-r1/temp/log.do_kernel_configme.18502
Log data follows:
| [INFO] doing kernel configme
| [INFO] Branch yocto/standard/preempt-rt/base used by common-pc-preempt-rt=
.scc
| [INFO] collecting configs in ./meta/meta-series
| mv: cannot stat `/usr/local/src/yocto_1_1_release/poky/build1/tmp/work/cr=
ystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3=
a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/linux-crystalf=
orest-preempt-rt-build/.tmp.config*': No such file or directory
| creation of pre-processed config data failed
| config of yocto/standard/preempt-rt/base (common-pc-preempt-rt.scc) faile=
d
| ERROR: Function 'do_kernel_configme' failed (see /usr/local/src/yocto_1_1=
_release/poky/build1/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4=
+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c=
5e3fc82a5037f3-r1/temp/log.do_kernel_configme.18502 for further information=
)
NOTE: package linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da=
74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1: task do_kernel_configm=
e: Failed
ERROR: Task 716 (/usr/local/src/yocto_1_1_release/poky/meta/recipes-kernel/=
linux/linux-yocto-rt_3.0.bb, do_kernel_configme) failed with exit code '1'
Waiting for 7 active tasks to finish:
0: acl-native-2.2.51-r2 do_configure (pid 12164)
1: elfutils-native-0.148-r3 do_install (pid 19851)
2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
3: font-util-native-1.2.0-r2.1 do_configure (pid 14632)
4: bison-native-2.5-r1 do_configure (pid 20206)
5: dbus-native-1.4.12-r0 do_configure (pid 20209)
6: opensp-native-1.5-r2 do_configure (pid 20213)
Waiting for 6 active tasks to finish:
0: acl-native-2.2.51-r2 do_configure (pid 12164)
1: elfutils-native-0.148-r3 do_install (pid 19851)
2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
3: font-util-native-1.2.0-r2.1 do_configure (pid 14632)
4: bison-native-2.5-r1 do_configure (pid 20206)
5: dbus-native-1.4.12-r0 do_configure (pid 20209)
NOTE: package opensp-native-1.5-r2: task do_configure: Succeeded
Waiting for 5 active tasks to finish:
0: acl-native-2.2.51-r2 do_configure (pid 12164)
1: elfutils-native-0.148-r3 do_install (pid 19851)
2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
3: bison-native-2.5-r1 do_configure (pid 20206)
4: dbus-native-1.4.12-r0 do_configure (pid 20209)
NOTE: package font-util-native-1.2.0-r2.1: task do_configure: Succeeded
Waiting for 4 active tasks to finish:
0: acl-native-2.2.51-r2 do_configure (pid 12164)
1: elfutils-native-0.148-r3 do_install (pid 19851)
2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
3: bison-native-2.5-r1 do_configure (pid 20206)
NOTE: package dbus-native-1.4.12-r0: task do_configure: Succeeded
Waiting for 3 active tasks to finish:
0: elfutils-native-0.148-r3 do_install (pid 19851)
1: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
2: bison-native-2.5-r1 do_configure (pid 20206)
NOTE: package acl-native-2.2.51-r2: task do_configure: Succeeded
Waiting for 2 active tasks to finish:
0: elfutils-native-0.148-r3 do_install (pid 19851)
1: bison-native-2.5-r1 do_configure (pid 20206)
NOTE: package kbproto-native-1_1.0.5-r0: task do_configure: Succeeded
Waiting for 1 active tasks to finish:
0: bison-native-2.5-r1 do_configure (pid 20206)
NOTE: package elfutils-native-0.148-r3: task do_install: Succeeded
NOTE: package bison-native-2.5-r1: task do_configure: Succeeded
ERROR: '/usr/local/src/yocto_1_1_release/poky/meta/recipes-kernel/linux/lin=
ux-yocto-rt_3.0.bb' failed

Thanks
Kishore.

--_000_4BD43A85686FC34D819098DB1C3999D901900BC33Corsmsx502amrc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><style><!--
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
	{mso-style-type:export-only;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>Hi,<o:p></o:p></=
p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I get fail=
ure for the linux-yoctort_3.0.bb file for the poky Edison branch.<o:p></o:p=
></p><p class=3DMsoNormal>Darren told that it was fixed and merged to maste=
r.&nbsp; <o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=
=3DMsoNormal>I wanted to bring to the list about this error message.<o:p></=
o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>ERRO=
R: Function 'do_kernel_configme' failed (see /usr/local/src/yocto_1_1_relea=
se/poky/build1/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+=
d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc8=
2a5037f3-r1/temp/log.do_kernel_configme.18502 for further information)<o:p>=
</o:p></p><p class=3DMsoNormal>ERROR: Logfile of failure stored in: /usr/lo=
cal/src/yocto_1_1_release/poky/build1/tmp/work/crystalforest-poky-linux/lin=
ux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc=
65d816f1759e2322c5e3fc82a5037f3-r1/temp/log.do_kernel_configme.18502<o:p></=
o:p></p><p class=3DMsoNormal>Log data follows:<o:p></o:p></p><p class=3DMso=
Normal>| [INFO] doing kernel configme<o:p></o:p></p><p class=3DMsoNormal>| =
[INFO] Branch yocto/standard/preempt-rt/base used by common-pc-preempt-rt.s=
cc<o:p></o:p></p><p class=3DMsoNormal>| [INFO] collecting configs in ./meta=
/meta-series<o:p></o:p></p><p class=3DMsoNormal>| mv: cannot stat `/usr/loc=
al/src/yocto_1_1_release/poky/build1/tmp/work/crystalforest-poky-linux/linu=
x-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc6=
5d816f1759e2322c5e3fc82a5037f3-r1/linux-crystalforest-preempt-rt-build/.tmp=
.config*': No such file or directory<o:p></o:p></p><p class=3DMsoNormal>| c=
reation of pre-processed config data failed<o:p></o:p></p><p class=3DMsoNor=
mal>| config of yocto/standard/preempt-rt/base (common-pc-preempt-rt.scc) f=
ailed<o:p></o:p></p><p class=3DMsoNormal>| ERROR: Function 'do_kernel_confi=
gme' failed (see /usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crys=
talforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9=
f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/temp/log.do_kern=
el_configme.18502 for further information)<o:p></o:p></p><p class=3DMsoNorm=
al>NOTE: package linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f9=
6da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1: task do_kernel_conf=
igme: Failed<o:p></o:p></p><p class=3DMsoNormal>ERROR: Task 716 (/usr/local=
/src/yocto_1_1_release/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.0.bb=
, do_kernel_configme) failed with exit code '1'<o:p></o:p></p><p class=3DMs=
oNormal>Waiting for 7 active tasks to finish:<o:p></o:p></p><p class=3DMsoN=
ormal>0: acl-native-2.2.51-r2 do_configure (pid 12164)<o:p></o:p></p><p cla=
ss=3DMsoNormal>1: elfutils-native-0.148-r3 do_install (pid 19851)<o:p></o:p=
></p><p class=3DMsoNormal>2: kbproto-native-1_1.0.5-r0 do_configure (pid 20=
113)<o:p></o:p></p><p class=3DMsoNormal>3: font-util-native-1.2.0-r2.1 do_c=
onfigure (pid 14632)<o:p></o:p></p><p class=3DMsoNormal>4: bison-native-2.5=
-r1 do_configure (pid 20206)<o:p></o:p></p><p class=3DMsoNormal>5: dbus-nat=
ive-1.4.12-r0 do_configure (pid 20209)<o:p></o:p></p><p class=3DMsoNormal>6=
: opensp-native-1.5-r2 do_configure (pid 20213)<o:p></o:p></p><p class=3DMs=
oNormal>Waiting for 6 active tasks to finish:<o:p></o:p></p><p class=3DMsoN=
ormal>0: acl-native-2.2.51-r2 do_configure (pid 12164)<o:p></o:p></p><p cla=
ss=3DMsoNormal>1: elfutils-native-0.148-r3 do_install (pid 19851)<o:p></o:p=
></p><p class=3DMsoNormal>2: kbproto-native-1_1.0.5-r0 do_configure (pid 20=
113)<o:p></o:p></p><p class=3DMsoNormal>3: font-util-native-1.2.0-r2.1 do_c=
onfigure (pid 14632)<o:p></o:p></p><p class=3DMsoNormal>4: bison-native-2.5=
-r1 do_configure (pid 20206)<o:p></o:p></p><p class=3DMsoNormal>5: dbus-nat=
ive-1.4.12-r0 do_configure (pid 20209)<o:p></o:p></p><p class=3DMsoNormal>N=
OTE: package opensp-native-1.5-r2: task do_configure: Succeeded<o:p></o:p><=
/p><p class=3DMsoNormal>Waiting for 5 active tasks to finish:<o:p></o:p></p=
><p class=3DMsoNormal>0: acl-native-2.2.51-r2 do_configure (pid 12164)<o:p>=
</o:p></p><p class=3DMsoNormal>1: elfutils-native-0.148-r3 do_install (pid =
19851)<o:p></o:p></p><p class=3DMsoNormal>2: kbproto-native-1_1.0.5-r0 do_c=
onfigure (pid 20113)<o:p></o:p></p><p class=3DMsoNormal>3: bison-native-2.5=
-r1 do_configure (pid 20206)<o:p></o:p></p><p class=3DMsoNormal>4: dbus-nat=
ive-1.4.12-r0 do_configure (pid 20209)<o:p></o:p></p><p class=3DMsoNormal>N=
OTE: package font-util-native-1.2.0-r2.1: task do_configure: Succeeded<o:p>=
</o:p></p><p class=3DMsoNormal>Waiting for 4 active tasks to finish:<o:p></=
o:p></p><p class=3DMsoNormal>0: acl-native-2.2.51-r2 do_configure (pid 1216=
4)<o:p></o:p></p><p class=3DMsoNormal>1: elfutils-native-0.148-r3 do_instal=
l (pid 19851)<o:p></o:p></p><p class=3DMsoNormal>2: kbproto-native-1_1.0.5-=
r0 do_configure (pid 20113)<o:p></o:p></p><p class=3DMsoNormal>3: bison-nat=
ive-2.5-r1 do_configure (pid 20206)<o:p></o:p></p><p class=3DMsoNormal>NOTE=
: package dbus-native-1.4.12-r0: task do_configure: Succeeded<o:p></o:p></p=
><p class=3DMsoNormal>Waiting for 3 active tasks to finish:<o:p></o:p></p><=
p class=3DMsoNormal>0: elfutils-native-0.148-r3 do_install (pid 19851)<o:p>=
</o:p></p><p class=3DMsoNormal>1: kbproto-native-1_1.0.5-r0 do_configure (p=
id 20113)<o:p></o:p></p><p class=3DMsoNormal>2: bison-native-2.5-r1 do_conf=
igure (pid 20206)<o:p></o:p></p><p class=3DMsoNormal>NOTE: package acl-nati=
ve-2.2.51-r2: task do_configure: Succeeded<o:p></o:p></p><p class=3DMsoNorm=
al>Waiting for 2 active tasks to finish:<o:p></o:p></p><p class=3DMsoNormal=
>0: elfutils-native-0.148-r3 do_install (pid 19851)<o:p></o:p></p><p class=
=3DMsoNormal>1: bison-native-2.5-r1 do_configure (pid 20206)<o:p></o:p></p>=
<p class=3DMsoNormal>NOTE: package kbproto-native-1_1.0.5-r0: task do_confi=
gure: Succeeded<o:p></o:p></p><p class=3DMsoNormal>Waiting for 1 active tas=
ks to finish:<o:p></o:p></p><p class=3DMsoNormal>0: bison-native-2.5-r1 do_=
configure (pid 20206)<o:p></o:p></p><p class=3DMsoNormal>NOTE: package elfu=
tils-native-0.148-r3: task do_install: Succeeded<o:p></o:p></p><p class=3DM=
soNormal>NOTE: package bison-native-2.5-r1: task do_configure: Succeeded<o:=
p></o:p></p><p class=3DMsoNormal>ERROR: '/usr/local/src/yocto_1_1_release/p=
oky/meta/recipes-kernel/linux/linux-yocto-rt_3.0.bb' failed<o:p></o:p></p><=
p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Thanks<o:p></=
o:p></p><p class=3DMsoNormal>Kishore.<o:p></o:p></p></div></body></html>=

--_000_4BD43A85686FC34D819098DB1C3999D901900BC33Corsmsx502amrc_--
