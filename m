Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9D86E01371
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 16:44:28 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 24 Sep 2012 16:44:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,478,1344236400"; 
	d="scan'208,217";a="197185955"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga001.jf.intel.com with ESMTP; 24 Sep 2012 16:44:28 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.60]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.116]) with mapi id
	14.01.0355.002; Mon, 24 Sep 2012 16:44:28 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: do_package_write_rpm failed.
Thread-Index: Ac2arcm1mGkamg2XTEO5Yp+BDalMDw==
Date: Mon, 24 Sep 2012 23:44:27 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE2264BB139@ORSMSX106.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: do_package_write_rpm failed.
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
X-List-Received-Date: Mon, 24 Sep 2012 23:44:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D956029D25CF204F948EA0FB515E1EE2264BB139ORSMSX106amrcor_"

--_000_D956029D25CF204F948EA0FB515E1EE2264BB139ORSMSX106amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have a modified version of zlib package and trying to build and I get err=
or while doing the packaging.
Any idea what this error is?

ERROR: Logfile of failure stored in: /usr/local/src/shumway/sep12/build-shu=
mway2/tmp/work/x86_64-poky-linux/zlib-qat-1.2.7-r9/temp/log.do_package_writ=
e_rpm.5284
Log data follows:
| DEBUG: Executing python function sstate_task_prefunc
| DEBUG: Python function sstate_task_prefunc finished
| DEBUG: Executing python function do_package_write_rpm
| DEBUG: Executing python function read_subpackage_metadata
| DEBUG: Python function read_subpackage_metadata finished
| DEBUG: Executing python function do_package_rpm
| DEBUG: Executing python function write_specfile
| NOTE: Creating RPM package for zlib-qat
| NOTE: Creating RPM package for zlib-qat
| NOTE: Creating RPM package for zlib-qat-dev
| NOTE: Creating RPM package for zlib-qat-dbg
| NOTE: Creating RPM package for zlib-qat-staticdev
| NOTE: Creating RPM package for zlib-qat-doc
| DEBUG: Python function write_specfile finished
| DEBUG: Executing shell function BUILDSPEC
| Building target platforms: x86_64-poky-linux
| Processing files: zlib-qat-1.2.7-r9.x86_64
| Finding  Provides: /usr/local/src/shumway/sep12/build-shumway2/tmp/work/x=
86_64-poky-linux/zlib-qat-1.2.7-r9/zlib-qat.provides
| Finding  Requires: /usr/local/src/shumway/sep12/build-shumway2/tmp/work/x=
86_64-poky-linux/zlib-qat-1.2.7-r9/zlib-qat.requires
| Provides: libz.so.1(ZLIB_1.2.0.2)(64bit) libz.so.1(ZLIB_1.2.2.4)(64bit) l=
ibz.so.1(ZLIB_1.2.0)(64bit) libz.so.1(ZLIB_1.2.5.1)(64bit) libz.so.1(ZLIB_1=
.2.2.3)(64bit) libz.so.1(ZLIB_1.2.3.4)(64bit) libz.so.1(ZLIB_1.2.7)(64bit) =
libz.so.1(ZLIB_1.2.2)(64bit) libz.so.1(ZLIB_1.2.3.3)(64bit) libz.so.1(ZLIB_=
1.2.5.2)(64bit) libz.so.1(ZLIB_1.2.3.5)(64bit) libz.so.1(ZLIB_1.2.0.8)(64bi=
t) libz.so.1()(64bit)
| Requires: rtld(GNU_HASH) libc.so.6(GLIBC_2.14)(64bit) libcrypto.so.1.0.0(=
)(64bit) libpthread.so.0(GLIBC_2.2.5)(64bit) libpthread.so.0(GLIBC_2.3.4)(6=
4bit) libc.so.6()(64bit) libc.so.6(GLIBC_2.2.5)(64bit) libc.so.6(GLIBC_2.3.=
4)(64bit) libpthread.so.0(GLIBC_2.3.2)(64bit) libdl.so.2()(64bit) librt.so.=
1(GLIBC_2.2.5)(64bit) libpthread.so.0()(64bit) libcrypto.so.1.0.0(OPENSSL_1=
.0.0)(64bit) librt.so.1()(64bit) libc.so.6(GLIBC_2.3.2)(64bit)
| Provides: libz.so.1(ZLIB_1.2.0.2)(64bit) libz.so.1(ZLIB_1.2.2.4)(64bit) l=
ibz.so.1(ZLIB_1.2.0)(64bit) libz.so.1(ZLIB_1.2.5.1)(64bit) libz.so.1(ZLIB_1=
.2.2.3)(64bit) libz.so.1(ZLIB_1.2.3.4)(64bit) libz.so.1(ZLIB_1.2.7)(64bit) =
libz.so.1(ZLIB_1.2.2)(64bit) libz.so.1(ZLIB_1.2.3.3)(64bit) libz.so.1(ZLIB_=
1.2.5.2)(64bit) libz.so.1(ZLIB_1.2.3.5)(64bit) libz.so.1(ZLIB_1.2.0.8)(64bi=
t) libz.so.1()(64bit)
| Requires: rtld(GNU_HASH) libc.so.6(GLIBC_2.14)(64bit) libcrypto.so.1.0.0(=
)(64bit) libpthread.so.0(GLIBC_2.2.5)(64bit) libpthread.so.0(GLIBC_2.3.4)(6=
4bit) libc.so.6()(64bit) libc.so.6(GLIBC_2.2.5)(64bit) libc.so.6(GLIBC_2.3.=
4)(64bit) libpthread.so.0(GLIBC_2.3.2)(64bit) libdl.so.2()(64bit) librt.so.=
1(GLIBC_2.2.5)(64bit) libpthread.so.0()(64bit) libcrypto.so.1.0.0(OPENSSL_1=
.0.0)(64bit) librt.so.1()(64bit) libc.so.6(GLIBC_2.3.2)(64bit)
| Processing files: zlib-qat-dev-1.2.7-r9.x86_64
| Finding  Provides: /usr/local/src/shumway/sep12/build-shumway2/tmp/work/x=
86_64-poky-linux/zlib-qat-1.2.7-r9/zlib-qat.provides
| error: line 164: Illegal char '-' in EVR:
|
| error: Failed to find Provides:
|
|
| RPM build errors:
|     line 164: Illegal char '-' in EVR:
|
|     Failed to find Provides:
| DEBUG: Python function do_package_rpm finished
| DEBUG: Python function do_package_write_rpm finished
| ERROR: Function failed: BUILDSPEC (see /usr/local/src/shumway/sep12/build=
-shumway2/tmp/work/x86_64-poky-linux/zlib-qat-1.2.7-r9/temp/log.do_package_=
write_rpm.5284 for further information)
ERROR: Task 11 (/usr/local/src/shumway/sep12/meta-intel/meta-crystalforest/=
recipes-quickassist/intel-zlib-qat/zlib-qat_1.2.7.bb, do_package_write_rpm)=
 failed with exit code '1'
NOTE: Tasks Summary: Attempted 944 tasks of which 934 didn't need to be rer=
un and 1 failed.
Summary: 1 task failed:
  /usr/local/src/shumway/sep12/meta-intel/meta-crystalforest/recipes-quicka=
ssist/intel-zlib-qat/zlib-qat_1.2.7.bb, do_package_write_rpm
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

Thanks
Kishore.

--_000_D956029D25CF204F948EA0FB515E1EE2264BB139ORSMSX106amrcor_
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
<p class=3D"MsoNormal">I have a modified version of zlib package and trying=
 to build and I get error while doing the packaging.&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal">Any idea what this error is?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /usr/local/src/=
shumway/sep12/build-shumway2/tmp/work/x86_64-poky-linux/zlib-qat-1.2.7-r9/t=
emp/log.do_package_write_rpm.5284<o:p></o:p></p>
<p class=3D"MsoNormal">Log data follows:<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing python function sstate_task_prefu=
nc<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Python function sstate_task_prefunc finishe=
d<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing python function do_package_write_=
rpm<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing python function read_subpackage_m=
etadata<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Python function read_subpackage_metadata fi=
nished<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing python function do_package_rpm<o:=
p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing python function write_specfile<o:=
p></o:p></p>
<p class=3D"MsoNormal">| NOTE: Creating RPM package for zlib-qat<o:p></o:p>=
</p>
<p class=3D"MsoNormal">| NOTE: Creating RPM package for zlib-qat<o:p></o:p>=
</p>
<p class=3D"MsoNormal">| NOTE: Creating RPM package for zlib-qat-dev<o:p></=
o:p></p>
<p class=3D"MsoNormal">| NOTE: Creating RPM package for zlib-qat-dbg<o:p></=
o:p></p>
<p class=3D"MsoNormal">| NOTE: Creating RPM package for zlib-qat-staticdev<=
o:p></o:p></p>
<p class=3D"MsoNormal">| NOTE: Creating RPM package for zlib-qat-doc<o:p></=
o:p></p>
<p class=3D"MsoNormal">| DEBUG: Python function write_specfile finished<o:p=
></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing shell function BUILDSPEC<o:p></o:=
p></p>
<p class=3D"MsoNormal">| Building target platforms: x86_64-poky-linux<o:p><=
/o:p></p>
<p class=3D"MsoNormal">| Processing files: zlib-qat-1.2.7-r9.x86_64<o:p></o=
:p></p>
<p class=3D"MsoNormal">| Finding&nbsp; Provides: /usr/local/src/shumway/sep=
12/build-shumway2/tmp/work/x86_64-poky-linux/zlib-qat-1.2.7-r9/zlib-qat.pro=
vides<o:p></o:p></p>
<p class=3D"MsoNormal">| Finding&nbsp; Requires: /usr/local/src/shumway/sep=
12/build-shumway2/tmp/work/x86_64-poky-linux/zlib-qat-1.2.7-r9/zlib-qat.req=
uires<o:p></o:p></p>
<p class=3D"MsoNormal">| Provides: libz.so.1(ZLIB_1.2.0.2)(64bit) libz.so.1=
(ZLIB_1.2.2.4)(64bit) libz.so.1(ZLIB_1.2.0)(64bit) libz.so.1(ZLIB_1.2.5.1)(=
64bit) libz.so.1(ZLIB_1.2.2.3)(64bit) libz.so.1(ZLIB_1.2.3.4)(64bit) libz.s=
o.1(ZLIB_1.2.7)(64bit) libz.so.1(ZLIB_1.2.2)(64bit)
 libz.so.1(ZLIB_1.2.3.3)(64bit) libz.so.1(ZLIB_1.2.5.2)(64bit) libz.so.1(ZL=
IB_1.2.3.5)(64bit) libz.so.1(ZLIB_1.2.0.8)(64bit) libz.so.1()(64bit)<o:p></=
o:p></p>
<p class=3D"MsoNormal">| Requires: rtld(GNU_HASH) libc.so.6(GLIBC_2.14)(64b=
it) libcrypto.so.1.0.0()(64bit) libpthread.so.0(GLIBC_2.2.5)(64bit) libpthr=
ead.so.0(GLIBC_2.3.4)(64bit) libc.so.6()(64bit) libc.so.6(GLIBC_2.2.5)(64bi=
t) libc.so.6(GLIBC_2.3.4)(64bit) libpthread.so.0(GLIBC_2.3.2)(64bit)
 libdl.so.2()(64bit) librt.so.1(GLIBC_2.2.5)(64bit) libpthread.so.0()(64bit=
) libcrypto.so.1.0.0(OPENSSL_1.0.0)(64bit) librt.so.1()(64bit) libc.so.6(GL=
IBC_2.3.2)(64bit)<o:p></o:p></p>
<p class=3D"MsoNormal">| Provides: libz.so.1(ZLIB_1.2.0.2)(64bit) libz.so.1=
(ZLIB_1.2.2.4)(64bit) libz.so.1(ZLIB_1.2.0)(64bit) libz.so.1(ZLIB_1.2.5.1)(=
64bit) libz.so.1(ZLIB_1.2.2.3)(64bit) libz.so.1(ZLIB_1.2.3.4)(64bit) libz.s=
o.1(ZLIB_1.2.7)(64bit) libz.so.1(ZLIB_1.2.2)(64bit)
 libz.so.1(ZLIB_1.2.3.3)(64bit) libz.so.1(ZLIB_1.2.5.2)(64bit) libz.so.1(ZL=
IB_1.2.3.5)(64bit) libz.so.1(ZLIB_1.2.0.8)(64bit) libz.so.1()(64bit)<o:p></=
o:p></p>
<p class=3D"MsoNormal">| Requires: rtld(GNU_HASH) libc.so.6(GLIBC_2.14)(64b=
it) libcrypto.so.1.0.0()(64bit) libpthread.so.0(GLIBC_2.2.5)(64bit) libpthr=
ead.so.0(GLIBC_2.3.4)(64bit) libc.so.6()(64bit) libc.so.6(GLIBC_2.2.5)(64bi=
t) libc.so.6(GLIBC_2.3.4)(64bit) libpthread.so.0(GLIBC_2.3.2)(64bit)
 libdl.so.2()(64bit) librt.so.1(GLIBC_2.2.5)(64bit) libpthread.so.0()(64bit=
) libcrypto.so.1.0.0(OPENSSL_1.0.0)(64bit) librt.so.1()(64bit) libc.so.6(GL=
IBC_2.3.2)(64bit)<o:p></o:p></p>
<p class=3D"MsoNormal">| Processing files: zlib-qat-dev-1.2.7-r9.x86_64<o:p=
></o:p></p>
<p class=3D"MsoNormal">| Finding&nbsp; Provides: /usr/local/src/shumway/sep=
12/build-shumway2/tmp/work/x86_64-poky-linux/zlib-qat-1.2.7-r9/zlib-qat.pro=
vides<o:p></o:p></p>
<p class=3D"MsoNormal">| error: line 164: Illegal char '-' in EVR:<o:p></o:=
p></p>
<p class=3D"MsoNormal">| <o:p></o:p></p>
<p class=3D"MsoNormal">| error: Failed to find Provides:<o:p></o:p></p>
<p class=3D"MsoNormal">| <o:p></o:p></p>
<p class=3D"MsoNormal">| <o:p></o:p></p>
<p class=3D"MsoNormal">| RPM build errors:<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; line 164: Illegal char '-'=
 in EVR:<o:p></o:p></p>
<p class=3D"MsoNormal">| <o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp; &nbsp;&nbsp;&nbsp;Failed to find Provides:<o=
:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Python function do_package_rpm finished<o:p=
></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Python function do_package_write_rpm finish=
ed<o:p></o:p></p>
<p class=3D"MsoNormal">| ERROR: Function failed: BUILDSPEC (see /usr/local/=
src/shumway/sep12/build-shumway2/tmp/work/x86_64-poky-linux/zlib-qat-1.2.7-=
r9/temp/log.do_package_write_rpm.5284 for further information)<o:p></o:p></=
p>
<p class=3D"MsoNormal">ERROR: Task 11 (/usr/local/src/shumway/sep12/meta-in=
tel/meta-crystalforest/recipes-quickassist/intel-zlib-qat/zlib-qat_1.2.7.bb=
, do_package_write_rpm) failed with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 944 tasks of which 93=
4 didn't need to be rerun and 1 failed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">Summary: 1 task failed:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; /usr/local/src/shumway/sep12/meta-intel/meta-=
crystalforest/recipes-quickassist/intel-zlib-qat/zlib-qat_1.2.7.bb, do_pack=
age_write_rpm<o:p></o:p></p>
<p class=3D"MsoNormal">Summary: There was 1 ERROR message shown, returning =
a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Kishore.<o:p></o:p></p>
</div>
</body>
</html>

--_000_D956029D25CF204F948EA0FB515E1EE2264BB139ORSMSX106amrcor_--
