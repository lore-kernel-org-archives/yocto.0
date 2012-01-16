Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4618CE01389
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2012 10:40:42 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Jan 2012 10:40:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208,217";a="96424614"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by azsmga001.ch.intel.com with ESMTP; 16 Jan 2012 10:40:41 -0800
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 16 Jan 2012 10:40:40 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.248]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.76]) with mapi id
	14.01.0355.002; Mon, 16 Jan 2012 10:40:40 -0800
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Linux RT build fail
Thread-Index: AczUfleoloDM1F4tQ++5IDV6JnACtQ==
Date: Mon, 16 Jan 2012 18:40:39 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE2030A3D@ORSMSX105.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>
Subject: Linux RT build fail
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
X-List-Received-Date: Mon, 16 Jan 2012 18:40:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D956029D25CF204F948EA0FB515E1EE2030A3DORSMSX105amrcorpi_"

--_000_D956029D25CF204F948EA0FB515E1EE2030A3DORSMSX105amrcorpi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I get build failure for the rt.

ERROR: Function 'do_patch' failed (see /usr/local/src/jan13/poky/build-rt/t=
mp/work/cedartrail-poky-linux/linux-yocto-rt-3.0.14+git1+6ae3d992cf54618401=
0e87a0349810198f1d167c_1+bcf4107c7f22d10952618a2ad146e6149d240cd2-r1/temp/l=
og.do_patch.32459 for further information)
ERROR: Logfile of failure stored in: /usr/local/src/jan13/poky/build-rt/tmp=
/work/cedartrail-poky-linux/linux-yocto-rt-3.0.14+git1+6ae3d992cf546184010e=
87a0349810198f1d167c_1+bcf4107c7f22d10952618a2ad146e6149d240cd2-r1/temp/log=
.do_patch.32459
Log data follows:
| ERROR: Function 'do_patch' failed (see /usr/local/src/jan13/poky/build-rt=
/tmp/work/cedartrail-poky-linux/linux-yocto-rt-3.0.14+git1+6ae3d992cf546184=
010e87a0349810198f1d167c_1+bcf4107c7f22d10952618a2ad146e6149d240cd2-r1/temp=
/log.do_patch.32459 for further information)
| Deleted branch meta-temp (was 620917d).
|
| ERROR: patch /usr/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-=
linux/linux-yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1=
+bcf4107c7f22d10952618a2ad146e6149d240cd2-r1/linux/meta/cfg/kernel-cache/fe=
atures/rt/rt-apply-patch-3.0.10-rt27.patch.patch is not available
|
| ERROR. Could not find an excutable target for yocto/standard/preempt-rt/b=
ase
| ERROR. Could not locate meta series for preempt-rt-standard
| ERROR. Could not modify yocto/standard/preempt-rt/base
NOTE: package linux-yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f=
1d167c_1+bcf4107c7f22d10952618a2ad146e6149d240cd2-r1: task do_patch: Failed
NOTE: package bzip2-1.0.6-r4: task do_compile: Succeeded
ERROR: Task 3 (/usr/local/src/jan13/poky/meta/recipes-kernel/linux/linux-yo=
cto-rt_3.0.bb, do_patch) failed with exit code '1'

Is this anything to do with meta-kernel-dev I am using or something else?

Thanks
Kishore.

--_000_D956029D25CF204F948EA0FB515E1EE2030A3DORSMSX105amrcorpi_
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">I get build failure for the rt.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">ERROR: Function 'do_patch' failed (see /usr/l=
ocal/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-yocto-rt-=
3.0.14&#43;git1&#43;6ae3d992cf546184010e87a0349810198f1d167c_1&#43;bcf4107c=
7f22d10952618a2ad146e6149d240cd2-r1/temp/log.do_patch.32459
 for further information)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">ERROR: Logfile of failure stored in: /usr/loc=
al/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-yocto-rt-3.=
0.14&#43;git1&#43;6ae3d992cf546184010e87a0349810198f1d167c_1&#43;bcf4107c7f=
22d10952618a2ad146e6149d240cd2-r1/temp/log.do_patch.32459<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">Log data follows:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| ERROR: Function 'do_patch' failed (see /usr=
/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-yocto-r=
t-3.0.14&#43;git1&#43;6ae3d992cf546184010e87a0349810198f1d167c_1&#43;bcf410=
7c7f22d10952618a2ad146e6149d240cd2-r1/temp/log.do_patch.32459
 for further information)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| Deleted branch meta-temp (was 620917d).<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">|
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| ERROR: patch /usr/local/src/jan13/poky/buil=
d-rt/tmp/work/cedartrail-poky-linux/linux-yocto-rt-3.0.14&#43;git1&#43;6ae3=
d992cf546184010e87a0349810198f1d167c_1&#43;bcf4107c7f22d10952618a2ad146e614=
9d240cd2-r1/linux/meta/cfg/kernel-cache/features/rt/rt-apply-patch-3.0.10-r=
t27.patch.patch
 is not available<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">|
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| ERROR. Could not find an excutable target f=
or yocto/standard/preempt-rt/base<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| ERROR. Could not locate meta series for pre=
empt-rt-standard<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| ERROR. Could not modify yocto/standard/pree=
mpt-rt/base<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">NOTE: package linux-yocto-rt-3.0.14&#43;git1&=
#43;6ae3d992cf546184010e87a0349810198f1d167c_1&#43;bcf4107c7f22d10952618a2a=
d146e6149d240cd2-r1: task do_patch: Failed<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">NOTE: package bzip2-1.0.6-r4: task do_compile=
: Succeeded<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">ERROR: Task 3 (/usr/local/src/jan13/poky/meta=
/recipes-kernel/linux/linux-yocto-rt_3.0.bb, do_patch) failed with exit cod=
e '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this anything to do with meta-kernel-dev I am usi=
ng or something else?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Kishore.<o:p></o:p></p>
</div>
</body>
</html>

--_000_D956029D25CF204F948EA0FB515E1EE2030A3DORSMSX105amrcorpi_--
