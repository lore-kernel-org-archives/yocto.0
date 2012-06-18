Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1CFDE00746
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 15:10:24 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Jun 2012 15:10:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; 
	d="scan'208,217";a="155084520"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 18 Jun 2012 15:10:21 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 18 Jun 2012 15:10:21 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.138]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.167]) with mapi id
	14.01.0355.002; Mon, 18 Jun 2012 15:10:20 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: grub-efi-native_1.99.bb fails in master branch
Thread-Index: Ac1NnyR+s42pRgrVSn2oXyoUad5LoA==
Date: Mon, 18 Jun 2012 22:10:20 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20ACDE589@ORSMSX105.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>
Subject: grub-efi-native_1.99.bb fails in master branch
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
X-List-Received-Date: Mon, 18 Jun 2012 22:10:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D956029D25CF204F948EA0FB515E1EE20ACDE589ORSMSX105amrcor_"

--_000_D956029D25CF204F948EA0FB515E1EE20ACDE589ORSMSX105amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I see a build fail for grub-efi-native_1.99 recipe in master branch for Ced=
artrail BSP.


NOTE: package grub-efi-i586-native-1.99-r9: task do_compile: Started
ERROR: Function failed: do_compile (see /usr/local/src/gst-master/build/tmp=
/work/x86_64-linux/grub-efi-i586-native-1.99-r9/temp/log.do_compile.1788 fo=
r further information)
ERROR: Logfile of failure stored in: /usr/local/src/gst-master/build/tmp/wo=
rk/x86_64-linux/grub-efi-i586-native-1.99-r9/temp/log.do_compile.1788
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 12
| make  all-recursive
| make[1]: Entering directory `/usr/local/src/gst-master/build/tmp/work/x86=
_64-linux/grub-efi-i586-native-1.99-r9/grub-1.99'
| Making all in grub-core/gnulib
| make[2]: Entering directory `/usr/local/src/gst-master/build/tmp/work/x86=
_64-linux/grub-efi-i586-native-1.99-r9/grub-1.99/grub-core/gnulib'
| make  all-recursive
| make[3]: Entering directory `/usr/local/src/gst-master/build/tmp/work/x86=
_64-linux/grub-efi-i586-native-1.99-r9/grub-1.99/grub-core/gnulib'
| make[4]: Entering directory `/usr/local/src/gst-master/build/tmp/work/x86=
_64-linux/grub-efi-i586-native-1.99-r9/grub-1.99/grub-core/gnulib'
| make[4]: Nothing to be done for `all-am'.
| make[4]: Leaving directory `/usr/local/src/gst-master/build/tmp/work/x86_=
64-linux/grub-efi-i586-native-1.99-r9/grub-1.99/grub-core/gnulib'
| make[3]: Leaving directory `/usr/local/src/gst-master/build/tmp/work/x86_=
64-linux/grub-efi-i586-native-1.99-r9/grub-1.99/grub-core/gnulib'
| make[2]: Leaving directory `/usr/local/src/gst-master/build/tmp/work/x86_=
64-linux/grub-efi-i586-native-1.99-r9/grub-1.99/grub-core/gnulib'
| Making all in .
| make[2]: Entering directory `/usr/local/src/gst-master/build/tmp/work/x86=
_64-linux/grub-efi-i586-native-1.99-r9/grub-1.99'
| rm -f libgrubkern.a
| ar cru libgrubkern.a   util/libgrubkern_a-misc.o grub-core/kern/libgrubke=
rn_a-command.o grub-core/kern/libgrubkern_a-device.o grub-core/kern/libgrub=
kern_a-disk.o grub-core/kern/emu/libgrubkern_a-getroot.o grub-core/kern/emu=
/libgrubkern_a-hostdisk.o grub-core/kern/emu/libgrubkern_a-misc.o grub-core=
/kern/emu/libgrubkern_a-mm.o grub-core/kern/libgrubkern_a-env.o grub-core/k=
ern/libgrubkern_a-err.o grub-core/kern/libgrubkern_a-file.o grub-core/kern/=
libgrubkern_a-fs.o grub-core/kern/libgrubkern_a-list.o grub-core/kern/libgr=
ubkern_a-misc.o grub-core/kern/libgrubkern_a-partition.o
| rm -f libgrubmods.a
| ar cru libgrubmods.a   grub-core/commands/libgrubmods_a-blocklist.o grub-=
core/commands/libgrubmods_a-extcmd.o grub-core/commands/libgrubmods_a-ls.o =
grub-core/disk/libgrubmods_a-dmraid_nvidia.o grub-core/disk/libgrubmods_a-l=
oopback.o grub-core/disk/libgrubmods_a-lvm.o grub-core/disk/libgrubmods_a-m=
draid_linux.o grub-core/disk/libgrubmods_a-mdraid1x_linux.o grub-core/disk/=
libgrubmods_a-raid5_recover.o grub-core/disk/libgrubmods_a-raid6_recover.o =
grub-core/disk/libgrubmods_a-raid.o grub-core/fs/libgrubmods_a-affs.o grub-=
core/fs/libgrubmods_a-afs_be.o grub-core/fs/libgrubmods_a-afs.o grub-core/f=
s/libgrubmods_a-befs_be.o grub-core/fs/libgrubmods_a-befs.o grub-core/fs/li=
bgrubmods_a-btrfs.o grub-core/fs/libgrubmods_a-cpio.o grub-core/fs/libgrubm=
ods_a-ext2.o grub-core/fs/libgrubmods_a-fat.o grub-core/fs/libgrubmods_a-fs=
help.o grub-core/fs/libgrubmods_a-hfs.o grub-core/fs/libgrubmods_a-hfsplus.=
o grub-core/fs/libgrubmods_a-iso9660.o grub-core/fs/libgrubmods_a-jfs.o gru=
b-core/fs/libgrubmods_a-minix.o grub-core/fs/libgrubmods_a-minix2.o grub-co=
re/fs/libgrubmods_a-nilfs2.o grub-core/fs/libgrubmods_a-ntfs.o grub-core/fs=
/libgrubmods_a-ntfscomp.o grub-core/fs/libgrubmods_a-reiserfs.o grub-core/f=
s/libgrubmods_a-sfs.o grub-core/fs/libgrubmods_a-tar.o grub-core/fs/libgrub=
mods_a-udf.o grub-core/fs/libgrubmods_a-ufs2.o grub-core/fs/libgrubmods_a-u=
fs.o grub-core/fs/libgrubmods_a-xfs.o grub-core/fs/zfs/libgrubmods_a-zfs.o =
grub-core/fs/zfs/libgrubmods_a-zfs_lzjb.o grub-core/fs/zfs/libgrubmods_a-zf=
s_sha256.o grub-core/fs/zfs/libgrubmods_a-zfs_fletcher.o grub-core/lib/libg=
rubmods_a-arg.o grub-core/lib/libgrubmods_a-crypto.o grub-core/lib/libgrubm=
ods_a-envblk.o grub-core/lib/libgrubmods_a-hexdump.o grub-core/lib/libgcryp=
t-grub/cipher/libgrubmods_a-sha512.o grub-core/lib/libgcrypt-grub/cipher/li=
bgrubmods_a-crc.o grub-core/lib/libgrubmods_a-LzFind.o grub-core/lib/libgru=
bmods_a-LzmaEnc.o grub-core/lib/libgrubmods_a-pbkdf2.o grub-core/lib/libgru=
bmods_a-crc.o grub-core/normal/libgrubmods_a-datetime.o grub-core/normal/li=
bgrubmods_a-misc.o grub-core/partmap/libgrubmods_a-acorn.o grub-core/partma=
p/libgrubmods_a-amiga.o grub-core/partmap/libgrubmods_a-apple.o grub-core/p=
artmap/libgrubmods_a-gpt.o grub-core/partmap/libgrubmoERROR: Function faile=
d: do_compile (see /usr/local/src/gst-master/build/tmp/work/x86_64-linux/gr=
ub-efi-i586-native-1.99-r9/temp/log.do_compile.1788 for further information=
)
| ds_a-msdos.o grub-core/partmap/libgrubmods_a-sun.o grub-core/partmap/libg=
rubmods_a-sunpc.o grub-core/partmap/libgrubmods_a-bsdlabel.o grub-core/scri=
pt/libgrubmods_a-function.o grub-core/script/libgrubmods_a-lexer.o grub-cor=
e/script/libgrubmods_a-main.o grub-core/script/libgrubmods_a-script.o grub-=
core/script/libgrubmods_a-argv.o grub-core/io/libgrubmods_a-gzio.o         =
  libgrubmods_a-grub_script.tab.o libgrubmods_a-grub_script.yy.o libgrubmod=
s_a-libgrub_a_init.o
| chmod a+x grub-mkrescue
| chmod a+x grub-install
| chmod a+x grub-mknetdir
| chmod a+x grub-mkconfig
| PATH=3D.:$PATH /usr/local/src/gst-master/scripts/help2man --section=3D8 -=
i ./docs/man/grub-install.h2m -o grub-install.8 grub-install
| PATH=3D.:$PATH /usr/local/src/gst-master/scripts/help2man --section=3D1 -=
i ./docs/man/grub-mkrescue.h2m -o grub-mkrescue.1 grub-mkrescue
| PATH=3D.:$PATH /usr/local/src/gst-master/scripts/help2man --section=3D8 -=
i ./docs/man/grub-mknetdir.h2m -o grub-mknetdir.8 grub-mknetdir
| chmod a+x grub-set-default
| PATH=3D.:$PATH /usr/local/src/gst-master/scripts/help2man --section=3D8 -=
i ./docs/man/grub-mkconfig.h2m -o grub-mkconfig.8 grub-mkconfig
| chmod a+x grub-reboot
| PATH=3D.:$PATH /usr/local/src/gst-master/scripts/help2man --section=3D8 -=
i ./docs/man/grub-set-default.h2m -o grub-set-default.8 grub-set-default
| PATH=3D.:$PATH /usr/local/src/gst-master/scripts/help2man --section=3D8 -=
i ./docs/man/grub-reboot.h2m -o grub-reboot.8 grub-reboot
| make[2]: *** [grub-mkrescue.1] Error 1
| make[2]: *** Waiting for unfinished jobs....
| make[2]: *** [grub-install.8] Error 1
| make[2]: *** [grub-mknetdir.8] Error 1
| make[2]: *** [grub-mkconfig.8] Error 1
| make[2]: *** [grub-reboot.8] Error 1
| make[2]: *** [grub-set-default.8] Error 1
| ranlib libgrubkern.a
| ranlib libgrubmods.a
| make[2]: Leaving directory `/usr/local/src/gst-master/build/tmp/work/x86_=
64-linux/grub-efi-i586-native-1.99-r9/grub-1.99'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory `/usr/local/src/gst-master/build/tmp/work/x86_=
64-linux/grub-efi-i586-native-1.99-r9/grub-1.99'
| make: *** [all] Error 2
| ER
NOTE: package grub-efi-i586-native-1.99-r9: task do_compile: Failed
ERROR: Task 151 (/usr/local/src/gst-master/meta/recipes-bsp/grub/grub-efi-n=
ative_1.99.bb, do_compile) failed with exit code '1'




Thanks
Kishore.

--_000_D956029D25CF204F948EA0FB515E1EE20ACDE589ORSMSX105amrcor_
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
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">I see a build fail for grub-efi-native_1.99 r=
ecipe in master branch for Cedartrail BSP.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">NOTE: package grub-efi-i586-native-1.99-r9: t=
ask do_compile: Started<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">ERROR: Function failed: do_compile (see /usr/=
local/src/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-=
r9/temp/log.do_compile.1788 for further information)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">ERROR: Logfile of failure stored in: /usr/loc=
al/src/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/=
temp/log.do_compile.1788<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">Log data follows:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| DEBUG: Executing shell function do_compile<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| NOTE: make -j 12<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make&nbsp; all-recursive<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[1]: Entering directory `/usr/local/src=
/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1=
.99'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| Making all in grub-core/gnulib<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[2]: Entering directory `/usr/local/src=
/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1=
.99/grub-core/gnulib'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make&nbsp; all-recursive<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[3]: Entering directory `/usr/local/src=
/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1=
.99/grub-core/gnulib'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[4]: Entering directory `/usr/local/src=
/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1=
.99/grub-core/gnulib'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[4]: Nothing to be done for `all-am'.<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[4]: Leaving directory `/usr/local/src/=
gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1.=
99/grub-core/gnulib'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[3]: Leaving directory `/usr/local/src/=
gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1.=
99/grub-core/gnulib'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[2]: Leaving directory `/usr/local/src/=
gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1.=
99/grub-core/gnulib'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| Making all in .<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[2]: Entering directory `/usr/local/src=
/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1=
.99'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| rm -f libgrubkern.a<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| ar cru libgrubkern.a&nbsp;&nbsp; util/libgr=
ubkern_a-misc.o grub-core/kern/libgrubkern_a-command.o grub-core/kern/libgr=
ubkern_a-device.o grub-core/kern/libgrubkern_a-disk.o grub-core/kern/emu/li=
bgrubkern_a-getroot.o
 grub-core/kern/emu/libgrubkern_a-hostdisk.o grub-core/kern/emu/libgrubkern=
_a-misc.o grub-core/kern/emu/libgrubkern_a-mm.o grub-core/kern/libgrubkern_=
a-env.o grub-core/kern/libgrubkern_a-err.o grub-core/kern/libgrubkern_a-fil=
e.o grub-core/kern/libgrubkern_a-fs.o
 grub-core/kern/libgrubkern_a-list.o grub-core/kern/libgrubkern_a-misc.o gr=
ub-core/kern/libgrubkern_a-partition.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| rm -f libgrubmods.a<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| ar cru libgrubmods.a&nbsp;&nbsp; grub-core/=
commands/libgrubmods_a-blocklist.o grub-core/commands/libgrubmods_a-extcmd.=
o grub-core/commands/libgrubmods_a-ls.o grub-core/disk/libgrubmods_a-dmraid=
_nvidia.o
 grub-core/disk/libgrubmods_a-loopback.o grub-core/disk/libgrubmods_a-lvm.o=
 grub-core/disk/libgrubmods_a-mdraid_linux.o grub-core/disk/libgrubmods_a-m=
draid1x_linux.o grub-core/disk/libgrubmods_a-raid5_recover.o grub-core/disk=
/libgrubmods_a-raid6_recover.o grub-core/disk/libgrubmods_a-raid.o
 grub-core/fs/libgrubmods_a-affs.o grub-core/fs/libgrubmods_a-afs_be.o grub=
-core/fs/libgrubmods_a-afs.o grub-core/fs/libgrubmods_a-befs_be.o grub-core=
/fs/libgrubmods_a-befs.o grub-core/fs/libgrubmods_a-btrfs.o grub-core/fs/li=
bgrubmods_a-cpio.o grub-core/fs/libgrubmods_a-ext2.o
 grub-core/fs/libgrubmods_a-fat.o grub-core/fs/libgrubmods_a-fshelp.o grub-=
core/fs/libgrubmods_a-hfs.o grub-core/fs/libgrubmods_a-hfsplus.o grub-core/=
fs/libgrubmods_a-iso9660.o grub-core/fs/libgrubmods_a-jfs.o grub-core/fs/li=
bgrubmods_a-minix.o grub-core/fs/libgrubmods_a-minix2.o
 grub-core/fs/libgrubmods_a-nilfs2.o grub-core/fs/libgrubmods_a-ntfs.o grub=
-core/fs/libgrubmods_a-ntfscomp.o grub-core/fs/libgrubmods_a-reiserfs.o gru=
b-core/fs/libgrubmods_a-sfs.o grub-core/fs/libgrubmods_a-tar.o grub-core/fs=
/libgrubmods_a-udf.o grub-core/fs/libgrubmods_a-ufs2.o
 grub-core/fs/libgrubmods_a-ufs.o grub-core/fs/libgrubmods_a-xfs.o grub-cor=
e/fs/zfs/libgrubmods_a-zfs.o grub-core/fs/zfs/libgrubmods_a-zfs_lzjb.o grub=
-core/fs/zfs/libgrubmods_a-zfs_sha256.o grub-core/fs/zfs/libgrubmods_a-zfs_=
fletcher.o grub-core/lib/libgrubmods_a-arg.o
 grub-core/lib/libgrubmods_a-crypto.o grub-core/lib/libgrubmods_a-envblk.o =
grub-core/lib/libgrubmods_a-hexdump.o grub-core/lib/libgcrypt-grub/cipher/l=
ibgrubmods_a-sha512.o grub-core/lib/libgcrypt-grub/cipher/libgrubmods_a-crc=
.o grub-core/lib/libgrubmods_a-LzFind.o
 grub-core/lib/libgrubmods_a-LzmaEnc.o grub-core/lib/libgrubmods_a-pbkdf2.o=
 grub-core/lib/libgrubmods_a-crc.o grub-core/normal/libgrubmods_a-datetime.=
o grub-core/normal/libgrubmods_a-misc.o grub-core/partmap/libgrubmods_a-aco=
rn.o grub-core/partmap/libgrubmods_a-amiga.o
 grub-core/partmap/libgrubmods_a-apple.o grub-core/partmap/libgrubmods_a-gp=
t.o grub-core/partmap/libgrubmoERROR: Function failed: do_compile (see /usr=
/local/src/gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99=
-r9/temp/log.do_compile.1788 for
 further information)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| ds_a-msdos.o grub-core/partmap/libgrubmods_=
a-sun.o grub-core/partmap/libgrubmods_a-sunpc.o grub-core/partmap/libgrubmo=
ds_a-bsdlabel.o grub-core/script/libgrubmods_a-function.o
 grub-core/script/libgrubmods_a-lexer.o grub-core/script/libgrubmods_a-main=
.o grub-core/script/libgrubmods_a-script.o grub-core/script/libgrubmods_a-a=
rgv.o grub-core/io/libgrubmods_a-gzio.o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; libgrubmods_a-grub_script.tab.o libgrubmods_a-grub=
_script.yy.o
 libgrubmods_a-libgrub_a_init.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| chmod a&#43;x grub-mkrescue<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| chmod a&#43;x grub-install<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| chmod a&#43;x grub-mknetdir<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| chmod a&#43;x grub-mkconfig<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| PATH=3D.:$PATH /usr/local/src/gst-master/sc=
ripts/help2man --section=3D8 -i ./docs/man/grub-install.h2m -o grub-install=
.8 grub-install<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| PATH=3D.:$PATH /usr/local/src/gst-master/sc=
ripts/help2man --section=3D1 -i ./docs/man/grub-mkrescue.h2m -o grub-mkresc=
ue.1 grub-mkrescue<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| PATH=3D.:$PATH /usr/local/src/gst-master/sc=
ripts/help2man --section=3D8 -i ./docs/man/grub-mknetdir.h2m -o grub-mknetd=
ir.8 grub-mknetdir<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| chmod a&#43;x grub-set-default<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| PATH=3D.:$PATH /usr/local/src/gst-master/sc=
ripts/help2man --section=3D8 -i ./docs/man/grub-mkconfig.h2m -o grub-mkconf=
ig.8 grub-mkconfig<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| chmod a&#43;x grub-reboot<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| PATH=3D.:$PATH /usr/local/src/gst-master/sc=
ripts/help2man --section=3D8 -i ./docs/man/grub-set-default.h2m -o grub-set=
-default.8 grub-set-default<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| PATH=3D.:$PATH /usr/local/src/gst-master/sc=
ripts/help2man --section=3D8 -i ./docs/man/grub-reboot.h2m -o grub-reboot.8=
 grub-reboot<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[2]: *** [grub-mkrescue.1] Error 1<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[2]: *** Waiting for unfinished jobs...=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[2]: *** [grub-install.8] Error 1<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[2]: *** [grub-mknetdir.8] Error 1<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[2]: *** [grub-mkconfig.8] Error 1<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[2]: *** [grub-reboot.8] Error 1<o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[2]: *** [grub-set-default.8] Error 1<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| ranlib libgrubkern.a<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| ranlib libgrubmods.a<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[2]: Leaving directory `/usr/local/src/=
gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1.=
99'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[1]: *** [all-recursive] Error 1<o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make[1]: Leaving directory `/usr/local/src/=
gst-master/build/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r9/grub-1.=
99'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| make: *** [all] Error 2<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">| ER<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">NOTE: package grub-efi-i586-native-1.99-r9: t=
ask do_compile: Failed<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">ERROR: Task 151 (/usr/local/src/gst-master/me=
ta/recipes-bsp/grub/grub-efi-native_1.99.bb, do_compile) failed with exit c=
ode '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Kishore.<o:p></o:p></p>
</div>
</body>
</html>

--_000_D956029D25CF204F948EA0FB515E1EE20ACDE589ORSMSX105amrcor_--
