Return-Path: <rahul.saxena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F87EE002A8
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 11:38:04 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jul 2012 11:37:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="198558784"
Received: from fmsmsx104.amr.corp.intel.com ([10.19.9.35])
	by fmsmga002.fm.intel.com with ESMTP; 26 Jul 2012 11:37:43 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.19.9.29) by
	FMSMSX104.amr.corp.intel.com (10.19.9.35) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 26 Jul 2012 11:37:43 -0700
Received: from fmsmsx151.amr.corp.intel.com ([169.254.6.160]) by
	fmsmsx110.amr.corp.intel.com ([169.254.12.253]) with mapi id
	14.01.0355.002; Thu, 26 Jul 2012 11:37:43 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ERROR: QA Issue: Architecture did not match (62 to 3) 
Thread-Index: Ac1rXb0tlq2wIeB+Tle9aokNuMhEsg==
Date: Thu, 26 Jul 2012 18:37:42 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C490032EE8F0@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: ERROR: QA Issue: Architecture did not match (62 to 3)
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
X-List-Received-Date: Thu, 26 Jul 2012 18:38:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_63ECFF2A2302B44093D7CE9E9962C490032EE8F0FMSMSX151amrcor_"

--_000_63ECFF2A2302B44093D7CE9E9962C490032EE8F0FMSMSX151amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I get the following error:



ERROR: QA Issue: Architecture did not match (62 to 3) on /work/rangeley-pok=
y-linux/linux-yocto-3.4.4+git1+a8cf77018b0faa0d29f1483ff4e5a2034dc8edd5_1+6=
297e4c1d57e1063bfce297c2e12392348598559-r4.0/packages-split/kernel-vmlinux/=
boot/vmlinux-3.4.4-yocto-standard



What does it mean ?



I have copied  the failure logfile below:





DEBUG: Executing python function sstate_task_prefunc
DEBUG: Python function sstate_task_prefunc finished
DEBUG: Executing python function do_package
DEBUG: Executing python function package_get_auto_pr
DEBUG: Python function package_get_auto_pr finished
DEBUG: Executing python function perform_packagecopy
DEBUG: Python function perform_packagecopy finished
DEBUG: Executing python function package_do_split_locales
DEBUG: No locale files in this package
DEBUG: Python function package_do_split_locales finished
DEBUG: Executing python function split_and_strip_files
DEBUG: Python function split_and_strip_files finished
DEBUG: Executing python function fixup_perms
DEBUG: Python function fixup_perms finished
DEBUG: Executing python function populate_packages
ERROR: could not open directory /home/rsaxena/YoctoWork2/rangeley1/tmp/work=
/rangeley-poky-linux/linux-yocto-3.4.4+git1+a8cf77018b0faa0d29f1483ff4e5a20=
34dc8edd5_1+6297e4c1d57e1063bfce297c2e12392348598559-r4.0/package/lib/modul=
es/3.4.4-yocto-standard: No such file or directory
FATAL: could not search modules: No such file or directory
DEBUG: Executing python function package_name_hook
DEBUG: Executing python function debian_package_name_hook
DEBUG: LIBNAMES: pkg kernel-vmlinux libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg kernel-modules libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg kernel-image libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg kernel-dev libs 1 bins 1 sonames []
DEBUG: LIBNAMES: pkg kernel-base libs 0 bins 0 sonames []
DEBUG: LIBNAMES: pkg kernel libs 0 bins 0 sonames []
DEBUG: Python function debian_package_name_hook finished
DEBUG: Python function package_name_hook finished
DEBUG: kernel-dev contains dangling link /usr/src/kernel/vmlinux
NOTE: kernel-dev contains dangling symlink to /usr/src/kernel/vmlinux
DEBUG: Python function populate_packages finished
DEBUG: Executing python function package_do_filedeps
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory
DEBUG: Python function package_do_filedeps finished
DEBUG: Executing python function package_do_shlibs
DEBUG: calculating shlib provides for kernel
DEBUG: calculating shlib provides for kernel-base
DEBUG: calculating shlib provides for kernel-vmlinux
DEBUG: calculating shlib provides for kernel-image
DEBUG: calculating shlib provides for kernel-dev
DEBUG: calculating shlib provides for kernel-modules
DEBUG: calculating shlib requirements for kernel
DEBUG: calculating shlib requirements for kernel-base
DEBUG: calculating shlib requirements for kernel-vmlinux
DEBUG: calculating shlib requirements for kernel-image
DEBUG: calculating shlib requirements for kernel-dev
DEBUG: calculating shlib requirements for kernel-modules
DEBUG: Python function package_do_shlibs finished
DEBUG: Executing python function package_do_pkgconfig
DEBUG: Python function package_do_pkgconfig finished
DEBUG: Executing python function read_shlibdeps
DEBUG: Python function read_shlibdeps finished
DEBUG: Executing python function package_depchains
DEBUG: Python function package_depchains finished
DEBUG: Executing python function emit_pkgdata
DEBUG: Python function emit_pkgdata finished
DEBUG: Executing python function do_package_qa
NOTE: DO PACKAGE QA
NOTE: Checking Package: kernel
NOTE: Checking Package: kernel-base
NOTE: Checking Package: kernel-vmlinux
ERROR: QA Issue: Architecture did not match (62 to 3) on /work/rangeley-pok=
y-linux/linux-yocto-3.4.4+git1+a8cf77018b0faa0d29f1483ff4e5a2034dc8edd5_1+6=
297e4c1d57e1063bfce297c2e12392348598559-r4.0/packages-split/kernel-vmlinux/=
boot/vmlinux-3.4.4-yocto-standard
NOTE: Checking Package: kernel-image
NOTE: Checking Package: kernel-dev
NOTE: Checking Package: kernel-modules
ERROR: QA run found fatal errors. Please consider fixing them.
DEBUG: Python function do_package_qa finished
DEBUG: Python function do_package finished
ERROR: Function failed: do_package_qa


--_000_63ECFF2A2302B44093D7CE9E9962C490032EE8F0FMSMSX151amrcor_
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:Consolas;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:Consolas;}
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
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">I get the following error:<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">ERROR: QA Issue: Architecture did not match (62 to 3) on /work/rangeley-=
poky-linux/linux-yocto-3.4.4&#43;git1&#43;a8cf77018b0faa0d29f1483ff4e5a2034=
dc8edd5_1&#43;6297e4c1d57e1063bfce297c2e12392348598559-r4.0/packages-split/=
kernel-vmlinux/boot/vmlinux-3.4.4-yocto-standard<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">What does it mean ?<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">I have copied &nbsp;the failure logfile below:<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">DEBUG: Executing python function sstate_task_prefunc<br>
DEBUG: Python function sstate_task_prefunc finished<br>
DEBUG: Executing python function do_package<br>
DEBUG: Executing python function package_get_auto_pr<br>
DEBUG: Python function package_get_auto_pr finished<br>
DEBUG: Executing python function perform_packagecopy<br>
DEBUG: Python function perform_packagecopy finished<br>
DEBUG: Executing python function package_do_split_locales<br>
DEBUG: No locale files in this package<br>
DEBUG: Python function package_do_split_locales finished<br>
DEBUG: Executing python function split_and_strip_files<br>
DEBUG: Python function split_and_strip_files finished<br>
DEBUG: Executing python function fixup_perms<br>
DEBUG: Python function fixup_perms finished<br>
DEBUG: Executing python function populate_packages<br>
ERROR: could not open directory /home/rsaxena/YoctoWork2/rangeley1/tmp/work=
/rangeley-poky-linux/linux-yocto-3.4.4&#43;git1&#43;a8cf77018b0faa0d29f1483=
ff4e5a2034dc8edd5_1&#43;6297e4c1d57e1063bfce297c2e12392348598559-r4.0/packa=
ge/lib/modules/3.4.4-yocto-standard: No such
 file or directory<br>
FATAL: could not search modules: No such file or directory<br>
DEBUG: Executing python function package_name_hook<br>
DEBUG: Executing python function debian_package_name_hook<br>
DEBUG: LIBNAMES: pkg kernel-vmlinux libs 0 bins 0 sonames []<br>
DEBUG: LIBNAMES: pkg kernel-modules libs 0 bins 0 sonames []<br>
DEBUG: LIBNAMES: pkg kernel-image libs 0 bins 0 sonames []<br>
DEBUG: LIBNAMES: pkg kernel-dev libs 1 bins 1 sonames []<br>
DEBUG: LIBNAMES: pkg kernel-base libs 0 bins 0 sonames []<br>
DEBUG: LIBNAMES: pkg kernel libs 0 bins 0 sonames []<br>
DEBUG: Python function debian_package_name_hook finished<br>
DEBUG: Python function package_name_hook finished<br>
DEBUG: kernel-dev contains dangling link /usr/src/kernel/vmlinux<br>
NOTE: kernel-dev contains dangling symlink to /usr/src/kernel/vmlinux<br>
DEBUG: Python function populate_packages finished<br>
DEBUG: Executing python function package_do_filedeps<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
error: Couldn't exec /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64=
-linux/usr/lib/rpm/pythoneggs.py: No such file or directory<br>
DEBUG: Python function package_do_filedeps finished<br>
DEBUG: Executing python function package_do_shlibs<br>
DEBUG: calculating shlib provides for kernel<br>
DEBUG: calculating shlib provides for kernel-base<br>
DEBUG: calculating shlib provides for kernel-vmlinux<br>
DEBUG: calculating shlib provides for kernel-image<br>
DEBUG: calculating shlib provides for kernel-dev<br>
DEBUG: calculating shlib provides for kernel-modules<br>
DEBUG: calculating shlib requirements for kernel<br>
DEBUG: calculating shlib requirements for kernel-base<br>
DEBUG: calculating shlib requirements for kernel-vmlinux<br>
DEBUG: calculating shlib requirements for kernel-image<br>
DEBUG: calculating shlib requirements for kernel-dev<br>
DEBUG: calculating shlib requirements for kernel-modules<br>
DEBUG: Python function package_do_shlibs finished<br>
DEBUG: Executing python function package_do_pkgconfig<br>
DEBUG: Python function package_do_pkgconfig finished<br>
DEBUG: Executing python function read_shlibdeps<br>
DEBUG: Python function read_shlibdeps finished<br>
DEBUG: Executing python function package_depchains<br>
DEBUG: Python function package_depchains finished<br>
DEBUG: Executing python function emit_pkgdata<br>
DEBUG: Python function emit_pkgdata finished<br>
DEBUG: Executing python function do_package_qa<br>
NOTE: DO PACKAGE QA<br>
NOTE: Checking Package: kernel<br>
NOTE: Checking Package: kernel-base<br>
NOTE: Checking Package: kernel-vmlinux<br>
ERROR: QA Issue: Architecture did not match (62 to 3) on /work/rangeley-pok=
y-linux/linux-yocto-3.4.4&#43;git1&#43;a8cf77018b0faa0d29f1483ff4e5a2034dc8=
edd5_1&#43;6297e4c1d57e1063bfce297c2e12392348598559-r4.0/packages-split/ker=
nel-vmlinux/boot/vmlinux-3.4.4-yocto-standard<br>
NOTE: Checking Package: kernel-image<br>
NOTE: Checking Package: kernel-dev<br>
NOTE: Checking Package: kernel-modules<br>
ERROR: QA run found fatal errors. Please consider fixing them.<br>
DEBUG: Python function do_package_qa finished<br>
DEBUG: Python function do_package finished<br>
ERROR: Function failed: do_package_qa<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_63ECFF2A2302B44093D7CE9E9962C490032EE8F0FMSMSX151amrcor_--
