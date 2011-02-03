Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id DA1AF4C800BC
	for <yocto@yoctoproject.org>; Thu,  3 Feb 2011 11:00:28 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Feb 2011 09:00:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,420,1291622400"; 
	d="scan'208,217";a="884040576"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 03 Feb 2011 09:00:28 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 3 Feb 2011 09:00:28 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Thu, 3 Feb 2011 09:00:27 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 3 Feb 2011 09:00:23 -0800
Thread-Topic: [yocto] Kernel Panics on armv4t with gcc.4.5.1
Thread-Index: AcvCJX0FnjF0BkkvTTWYivdvv/CUnwBnfbEw
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9411F42785@orsmsx504.amr.corp.intel.com>
References: <AANLkTinBmzf=erJiuG+pxtXVD9Yd3z7bnC1yUuDvp5N2@mail.gmail.com>
	<9DA5872FEF993D41B7173F58FCF6BE940A5EBA78@orsmsx504.amr.corp.intel.com>
	<AANLkTikz91RahwnectR5cNjx0HKVu4WJNLMH-BNtwszw@mail.gmail.com>
	<AANLkTimX_OMXpQkN3UubTPcVLEmv2DUNdwunJ8rd64je@mail.gmail.com>
In-Reply-To: <AANLkTimX_OMXpQkN3UubTPcVLEmv2DUNdwunJ8rd64je@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel Panics on armv4t with gcc.4.5.1
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
X-List-Received-Date: Thu, 03 Feb 2011 17:00:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9DA5872FEF993D41B7173F58FCF6BE9411F42785orsmsx504amrcor_"

--_000_9DA5872FEF993D41B7173F58FCF6BE9411F42785orsmsx504amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Diego,
 Good to know your kernel panic is gone. The 4.5.1 tree is arm specific lin=
aro patches, which probably helping you. You can also try the meta-linaro l=
ayer.

http://git.pokylinux.org/cgit/cgit.cgi/meta-linaro/

And Darren is working on updating that layer currently. The gcc from that l=
ayer has linaro arm patches.

Thanks,
Nitin


From: Diego Sueiro [mailto:diego.sueiro@gmail.com]
Sent: Tuesday, February 01, 2011 7:34 AM
To: Kamble, Nitin A
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Kernel Panics on armv4t with gcc.4.5.1

Nitin,

After removing:

echo "/* GNU ld script
   Use the shared library, but some functions are only in
   the static library.  */
GROUP ( libgcc_s.so.1 libgcc.a )" > ${D}${libdir}/libgcc_s.so

from gcc-package-target.inc and gcc-package-cross.inc, the gcc 4.5.2 was su=
ccessfully compiled.

And no kernel panic anymore. :-D

I just want to understand what is wrong with gcc 4.5.1.


Regards,

--
*dS
Diego Sueiro

Administrador do Portal Embarcados
www.embarcados.com.br<http://www.embarcados.com.br>

/*long live rock 'n roll*/

On Tue, Feb 1, 2011 at 8:40 AM, Diego Sueiro <diego.sueiro@gmail.com<mailto=
:diego.sueiro@gmail.com>> wrote:
Nitin,


I got this error:

/home/dev/yocto-repo/build/tmp/sysroots/i686-linux/usr/bin/armv4t-poky-linu=
x-gnueabi/arm-poky-linux-gnueabi-ld: /usr/lib/crti.o: Relocations in generi=
c ELF (EM: 3)
/home/dev/yocto-repo/build/tmp/sysroots/i686-linux/usr/bin/armv4t-poky-linu=
x-gnueabi/arm-poky-linux-gnueabi-ld: /usr/lib/crti.o: Relocations in generi=
c ELF (EM: 3)
/usr/lib/crti.o: could not read symbols: File in wrong format
collect2: ld returned 1 exit status
make[2]: *** [libgcc_s.so] Error 1
make[2]: *** Waiting for unfinished jobs....
arm-poky-linux-gnueabi-ranlib libgcc_eh.a
arm-poky-linux-gnueabi-ranlib libgcc.a
make[2]: Leaving directory `/home/dev/yocto-repo/build/tmp/work/armv4t-poky=
-linux-gnueabi/gcc-cross-intermediate-4.5.2-r3/gcc-4.5.2/build.i686-linux.a=
rm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgcc'
make[1]: *** [all-target-libgcc] Error 2
make[1]: Leaving directory `/home/dev/yocto-repo/build/tmp/work/armv4t-poky=
-linux-gnueabi/gcc-cross-intermediate-4.5.2-r3/gcc-4.5.2/build.i686-linux.a=
rm-poky-linux-gnueabi'
make: *** [all] Error 2
FATAL: oe_runmake failed
Function 'do_compile' failed (see /home/dev/yocto-repo/build/tmp/work/armv4=
t-poky-linux-gnueabi/gcc-cross-intermediate-4.5.2-r3/temp/log.do_compile.64=
6 for further information)
ERROR: Function 'do_compile' failed (see /home/dev/yocto-repo/build/tmp/wor=
k/armv4t-poky-linux-gnueabi/gcc-cross-intermediate-4.5.2-r3/temp/log.do_com=
pile.646 for further information)



Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

On Mon, Jan 31, 2011 at 10:41 PM, Kamble, Nitin A <nitin.a.kamble@intel.com=
<mailto:nitin.a.kamble@intel.com>> wrote:
Diego,
  Can you try with 4.5.2 gcc from this branch: http://git.pokylinux.org/cgi=
t/cgit.cgi/poky-contrib/log/?h=3Dnitin/khem_gcc_nitin

Thanks,
Nitin


From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg>] On Behalf Of Diego Sueiro
Sent: Monday, January 31, 2011 10:53 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] Kernel Panics on armv4t with gcc.4.5.1

Folks,

I'm not a kernel and neither a gcc expert developer, and after searching fo=
r a solution for the last 2 weeks I've decided to appeal to the list.

I'm trying to build a kernel image (2.6.32 and 2.6.30) for mini2440 (armv4t=
) with Yocto Project (poky master branch) and I'm facing a strange issue.

If I compile the kernel with Yocto gcc recipes (gcc 4.5.1) the kernel will =
panic on init (console printed message is attached for kernel 2.6.30 and 2.=
6.32).
But, if I compile the kernel with meta-oe gcc recipes (gcc 4.5) everything =
will be ok.
Just for your reference these is the gcc recipes which I'm using:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/g=
cc
http://git.openembedded.org/cgit.cgi/meta-openembedded/tree/recipes-devtool=
s/gcc


I've compiled with and without thumb instructions, but the issue remains.
I've tried to apply the patches gcc-armv4-pass-fix-v4bx-to-ld.patch and gcc=
-arm-volatile-bitfield-fix.patch, but no success.



Kind Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/



--_000_9DA5872FEF993D41B7173F58FCF6BE9411F42785orsmsx504amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
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
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DWordSection1>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'>Hi Diego,<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'>&nbsp;Good to know your kernel panic is gone. The 4.5.1 tree=
 is
arm specific linaro patches, which probably helping you. You can also try t=
he
meta-linaro layer.<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'><a href=3D"http://git.pokylinux.org/cgit/cgit.cgi/meta-linar=
o/">http://git.pokylinux.org/cgit/cgit.cgi/meta-linaro/</a><o:p></o:p></spa=
n></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'>And Darren is working on updating that layer currently. The =
gcc
from that layer has linaro arm patches.<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'>Thanks,<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'>Nitin<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<div style=3D'border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt'>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in'>

<p class=3DMsoNormal><b><span style=3D'font-size:10.0pt;font-family:"Tahoma=
","sans-serif"'>From:</span></b><span
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> Diego Sueiro
[mailto:diego.sueiro@gmail.com] <br>
<b>Sent:</b> Tuesday, February 01, 2011 7:34 AM<br>
<b>To:</b> Kamble, Nitin A<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Kernel Panics on armv4t with gcc.4.5.1<o:p></o:=
p></span></p>

</div>

</div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Nitin,<o:p></o:p></p>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

<div>

<p class=3DMsoNormal>After removing:<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

<blockquote style=3D'margin-left:30.0pt;margin-right:0in'>

<div>

<div>

<p class=3DMsoNormal>echo &quot;/* GNU ld script<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal>&nbsp;&nbsp; Use the shared library, but some function=
s are
only in<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal>&nbsp;&nbsp; the static library. &nbsp;*/<o:p></o:p></=
p>

</div>

<div>

<p class=3DMsoNormal>GROUP ( libgcc_s.so.1 libgcc.a )&quot; &gt;
${D}${libdir}/libgcc_s.so<o:p></o:p></p>

</div>

</div>

</blockquote>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

<div>

<p class=3DMsoNormal>from&nbsp;gcc-package-target.inc
and&nbsp;gcc-package-cross.inc, the gcc 4.5.2 was successfully compiled.<o:=
p></o:p></p>

</div>

<div>

<p class=3DMsoNormal><br clear=3Dall>
<o:p></o:p></p>

<div>

<p class=3DMsoNormal>And no kernel panic anymore. :-D<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

<div>

<p class=3DMsoNormal>I just want to understand what is wrong with gcc 4.5.1=
.<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

<div>

<p class=3DMsoNormal>Regards,<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'>--<br>
*dS<br>
Diego Sueiro<br>
<br>
Administrador do Portal Embarcados<br>
<a href=3D"http://www.embarcados.com.br" target=3D"_blank">www.embarcados.c=
om.br</a><br>
<br>
/*long live rock 'n roll*/<br>
<br>
<o:p></o:p></p>

<div>

<p class=3DMsoNormal>On Tue, Feb 1, 2011 at 8:40 AM, Diego Sueiro &lt;<a
href=3D"mailto:diego.sueiro@gmail.com">diego.sueiro@gmail.com</a>&gt; wrote=
:<o:p></o:p></p>

<p class=3DMsoNormal>Nitin,<o:p></o:p></p>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

<div>

<p class=3DMsoNormal>I got this error:<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

<div>

<div>

<p class=3DMsoNormal>/home/dev/yocto-repo/build/tmp/sysroots/i686-linux/usr=
/bin/armv4t-poky-linux-gnueabi/arm-poky-linux-gnueabi-ld:
/usr/lib/crti.o: Relocations in generic ELF (EM: 3)<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal>/home/dev/yocto-repo/build/tmp/sysroots/i686-linux/usr=
/bin/armv4t-poky-linux-gnueabi/arm-poky-linux-gnueabi-ld:
/usr/lib/crti.o: Relocations in generic ELF (EM: 3)<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal>/usr/lib/crti.o: could not read symbols: File in wrong
format<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal>collect2: ld returned 1 exit status<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal>make[2]: *** [libgcc_s.so] Error 1<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal>make[2]: *** Waiting for unfinished jobs....<o:p></o:p=
></p>

</div>

<div>

<p class=3DMsoNormal>arm-poky-linux-gnueabi-ranlib libgcc_eh.a<o:p></o:p></=
p>

</div>

<div>

<p class=3DMsoNormal>arm-poky-linux-gnueabi-ranlib libgcc.a<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal>make[2]: Leaving directory
`/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/gcc-cross-in=
termediate-4.5.2-r3/gcc-4.5.2/build.i686-linux.arm-poky-linux-gnueabi/arm-p=
oky-linux-gnueabi/libgcc'<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal>make[1]: *** [all-target-libgcc] Error 2<o:p></o:p></p=
>

</div>

<div>

<p class=3DMsoNormal>make[1]: Leaving directory
`/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/gcc-cross-in=
termediate-4.5.2-r3/gcc-4.5.2/build.i686-linux.arm-poky-linux-gnueabi'<o:p>=
</o:p></p>

</div>

<div>

<p class=3DMsoNormal>make: *** [all] Error 2<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal>FATAL: oe_runmake failed<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal>Function 'do_compile' failed (see
/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/gcc-cross-int=
ermediate-4.5.2-r3/temp/log.do_compile.646
for further information)<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal>ERROR: Function 'do_compile' failed (see
/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/gcc-cross-int=
ermediate-4.5.2-r3/temp/log.do_compile.646
for further information)<o:p></o:p></p>

</div>

</div>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

<div>

<div>

<p class=3DMsoNormal><br clear=3Dall>
<o:p></o:p></p>

<div>

<p class=3DMsoNormal>Regards,<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'>--<br>
*dS<br>
Diego Sueiro<br>
<br>
/*long live rock 'n roll*/<br>
<br>
<o:p></o:p></p>

</div>

<div>

<div>

<div>

<p class=3DMsoNormal>On Mon, Jan 31, 2011 at 10:41 PM, Kamble, Nitin A &lt;=
<a
href=3D"mailto:nitin.a.kamble@intel.com" target=3D"_blank">nitin.a.kamble@i=
ntel.com</a>&gt;
wrote:<o:p></o:p></p>

<div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:11.0pt;color:#1F497D'>Diego,</span><o:p></o:p></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:11.0pt;color:#1F497D'>&nbsp; Can you try with 4.5.2 gcc =
from
this branch: <a
href=3D"http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dnitin/=
khem_gcc_nitin"
target=3D"_blank">http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?=
h=3Dnitin/khem_gcc_nitin</a></span><o:p></o:p></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:11.0pt;color:#1F497D'>&nbsp;</span><o:p></o:p></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:11.0pt;color:#1F497D'>Thanks,</span><o:p></o:p></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:11.0pt;color:#1F497D'>Nitin</span><o:p></o:p></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:11.0pt;color:#1F497D'>&nbsp;</span><o:p></o:p></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:11.0pt;color:#1F497D'>&nbsp;</span><o:p></o:p></p>

<div style=3D'border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt'>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in'>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><b><span
style=3D'font-size:10.0pt'>From:</span></b><span style=3D'font-size:10.0pt'=
> <a
href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-boun=
ces@yoctoproject.org</a>
[mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank"=
>yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Diego Sueiro<br>
<b>Sent:</b> Monday, January 31, 2011 10:53 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Kernel Panics on armv4t with gcc.4.5.1</span><o:p><=
/o:p></p>

</div>

</div>

<div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'>&nbsp;<o:p></o:p></p>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'>Folks,</span><o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'>&nbsp;</span><o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'>I'm not a kernel and neither a gcc expert develo=
per,
and after searching for a solution for the last 2 weeks I've decided to app=
eal
to the list.</span><o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'>&nbsp;</span><o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'>I'm trying to build a kernel image (2.6.32 and 2=
.6.30)
for mini2440 (armv4t) with Yocto Project (poky master branch) and&nbsp;I'm
facing a strange issue.</span><o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'>&nbsp;</span><o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'>If I compile the kernel with Yocto gcc recipes (=
gcc
4.5.1) the kernel will panic on init (console printed message is attached f=
or
kernel 2.6.30 and 2.6.32).</span><o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'>But, if I compile the kernel with meta-oe gcc re=
cipes
(gcc 4.5) everything will be ok.</span><o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'>Just for your reference these is the gcc recipes=
 which
I'm using:</span><o:p></o:p></p>

</div>

<blockquote style=3D'margin-left:30.0pt;margin-top:5.0pt;margin-right:0in;
margin-bottom:5.0pt;border-width:initial;border-color:initial'>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'><a
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-de=
vtools/gcc"
target=3D"_blank"><span style=3D'color:#0658B5'>http://git.yoctoproject.org=
/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/gcc</span></a></span><o:p></=
o:p></p>

</div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'><a
href=3D"http://git.openembedded.org/cgit.cgi/meta-openembedded/tree/recipes=
-devtools/gcc"
target=3D"_blank"><span style=3D'color:#0658B5'>http://git.openembedded.org=
/cgit.cgi/meta-openembedded/tree/recipes-devtools/gcc</span></a></span><o:p=
></o:p></p>

</div>

</blockquote>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'>&nbsp;</span><o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'>&nbsp;</span><o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'>I've compiled with and without thumb instruction=
s, but
the issue remains.</span><o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'>I've tried to apply the
patches&nbsp;gcc-armv4-pass-fix-v4bx-to-ld.patch
and&nbsp;gcc-arm-volatile-bitfield-fix.patch, but no success.</span><o:p></=
o:p></p>

</div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'>&nbsp;</span><o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'>&nbsp;</span><o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'>&nbsp;</span><o:p></o:p></p>

</div>

<div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
style=3D'font-size:10.0pt'>Kind Regards,</span><o:p></o:p></p>

</div>

</div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'>&nbsp;<o:p></o:p></p>

</div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'>--<o:p></o:p></p>

</div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'>*dS<br>
Diego Sueiro<br>
<br>
/*long live rock 'n roll*/<o:p></o:p></p>

</div>

</div>

</div>

</div>

</div>

</div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</div>

</div>

</div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</div>

</div>

</body>

</html>

--_000_9DA5872FEF993D41B7173F58FCF6BE9411F42785orsmsx504amrcor_--
