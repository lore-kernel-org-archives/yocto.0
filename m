Return-Path: <rahul.saxena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56FC0E00282
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 17:02:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Jul 2012 17:02:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; 
	d="scan'208,217";a="174978011"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by orsmga002.jf.intel.com with ESMTP; 20 Jul 2012 17:02:07 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 20 Jul 2012 17:02:07 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.231]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.30]) with mapi id
	14.01.0355.002; Fri, 20 Jul 2012 17:02:06 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ERROR: Function failed: do_install_perf
Thread-Index: Ac1m1BDUQthbyK8ARS2bqliUnPB4YA==
Date: Sat, 21 Jul 2012 00:02:06 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C490032E3CB9@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: ERROR: Function failed: do_install_perf
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
X-List-Received-Date: Sat, 21 Jul 2012 00:02:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_63ECFF2A2302B44093D7CE9E9962C490032E3CB9ORSMSX103amrcor_"

--_000_63ECFF2A2302B44093D7CE9E9962C490032E3CB9ORSMSX103amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I suddenly started to get the following error when  running bitbake. I am u=
sing Denzil branches of poky, meta-intel and poky-extras. I installed libpe=
r-dev as suggested by the error message, but it made no difference.

Any suggestions ?

Thanks
Rahul

ERROR: Function failed: do_install_perf (see /home/rsaxena/YoctoWork3x/ceda=
rtraiv12p/tmp/work/cedartrail-poky-linux/linux-yocto-3.0.32+git1+46e8fc2bbb=
e73514e8d99101adaaa373f760ffa7_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r=
4/temp/log.do_install_perf.69672 for further information)
NOTE: make -C /home/rsaxena/YoctoWork3x/cedartraiv12p/tmp/work/cedartrail-p=
oky-linux/linux-yocto-3.0.32+git1+46e8fc2bbbe73514e8d99101adaaa373f760ffa7_=
1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/linux/tools/perf CC=3Di586-po=
ky-linux-gcc  -m32    -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfpmath=3Dsse=
 --sysroot=3D/home/rsaxena/YoctoWork3x/cedartraiv12p/tmp/sysroots/cedartrai=
l LD=3Di586-poky-linux-ld --sysroot=3D/home/rsaxena/YoctoWork3x/cedartraiv1=
2p/tmp/sysroots/cedartrail   prefix=3D/usr DESTDIR=3D/home/rsaxena/YoctoWor=
k3x/cedartraiv12p/tmp/work/cedartrail-poky-linux/linux-yocto-3.0.32+git1+46=
e8fc2bbbe73514e8d99101adaaa373f760ffa7_1+81fd8c307997aff37916828dc8b4ef72f5=
d35a94-r4/image install NO_NEWT=3D1 NO_DWARF=3D1
make: Entering directory `/home/rsaxena/YoctoWork3x/cedartraiv12p/tmp/work/=
cedartrail-poky-linux/linux-yocto-3.0.32+git1+46e8fc2bbbe73514e8d99101adaaa=
373f760ffa7_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/linux/tools/perf'
Makefile:484: libperl not found, disables Perl scripting support. Please in=
stall libperl-dev or perl-devel
    * new build flags or prefix
    CC perf.o
    CC builtin-annotate.o
    CC builtin-bench.o
    CC bench/sched-messaging.o
    CC bench/sched-pipe.o
    CC bench/mem-memcpy.o
    CC builtin-diff.o
    CC builtin-evlist.o
    CC builtin-help.o
    CC builtin-sched.o
    CC builtin-buildid-list.o
    CC builtin-buildid-cache.o
    CC builtin-list.o
    CC builtin-record.o
    CC builtin-report.o
    CC builtin-stat.o
    CC builtin-timechart.o
    CC builtin-top.o
    CC builtin-script.o
    CC builtin-probe.o
    CC builtin-kmem.o
    CC builtin-lock.o
    CC builtin-kvm.o
    CC builtin-test.o
    CC builtin-inject.o
    CC util/abspath.o
    CC util/alias.o
    CC util/annotate.o
    CC util/build-id.o
    CC util/config.o
    CC util/ctype.o
    CC util/debugfs.o
    CC util/environment.o
    CC util/event.o
    CC util/evlist.o
    CC util/evsel.o
    CC util/exec_cmd.o
    CC util/help.o
    CC util/levenshtein.o
    CC util/parse-options.o
    CC util/parse-events.o
    CC util/path.o
    CC util/rbtree.o
    CC util/bitmap.o
    CC util/hweight.o
    CC util/run-command.o
    CC util/quote.o
    CC util/strbuf.o
    CC util/string.o
    CC util/strlist.o
    CC util/strfilter.o
    CC util/top.o
    CC util/usage.o
    CC util/wrapper.o
    CC util/sigchain.o
    CC util/symbol.o
    CC util/color.o
    CC util/pager.o
    CC util/header.o
    CC util/callchain.o
    CC util/values.o
    CC util/debug.o
    CC util/map.o
    CC util/pstack.o
    CC util/session.o
    CC util/thread.o
    CC util/thread_map.o
    CC util/trace-event-parse.o
    CC util/trace-event-read.o
    CC util/trace-event-info.o
    CC util/trace-event-scripting.o
    CC util/svghelper.o
    CC util/sort.o
    CC util/hist.o
    CC util/probe-event.o
    CC util/util.o
    CC util/xyarray.o
    CC util/cpumap.o
    CC util/cgroup.o
    CC util/scripting-engines/trace-event-python.o
    CC scripts/python/Perf-Trace-Util/Context.o
    AR libperf.a
    LINK perf
    GEN python/perf.so
Traceback (most recent call last):
  File "util/setup.py", line 6, in <module>
    from distutils.command.build_ext   import build_ext   as _build_ext
  File "/home/rsaxena/YoctoWork3x/cedartraiv12p/tmp/sysroots/x86_64-linux/u=
sr/lib/python2.7/distutils/command/build_ext.py", line 16, in <module>
    from distutils.sysconfig import customize_compiler, get_python_version
  File "/home/rsaxena/YoctoWork3x/cedartraiv12p/tmp/sysroots/x86_64-linux/u=
sr/lib/python2.7/distutils/sysconfig.py", line 22, in <module>
    PREFIX =3D os.path.normpath(sys.prefix).replace( os.getenv("BUILD_SYS")=
, os.getenv("HOST_SYS") )
TypeError: expected a character buffer object
cp: cannot stat `python_ext_build/lib/perf.so': No such file or directory
make: *** [python/perf.so] Error 1
make: Leaving directory `/home/rsaxena/YoctoWork3x/cedartraiv12p/tmp/work/c=
edartrail-poky-linux/linux-yocto-3.0.32+git1+46e8fc2bbbe73514e8d99101adaaa3=
73f760ffa7_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/linux/tools/perf'
ERROR: oe_runmake failed



--_000_63ECFF2A2302B44093D7CE9E9962C490032E3CB9ORSMSX103amrcor_
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
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">I suddenly started to get th=
e following error when &nbsp;running bitbake. I am using Denzil branches of=
 poky, meta-intel and poky-extras. I installed libper-dev
 as suggested by the error message, but it made no difference.<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">Any suggestions ?<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">Thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">Rahul<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">ERROR: Function failed: do_i=
nstall_perf (see /home/rsaxena/YoctoWork3x/cedartraiv12p/tmp/work/cedartrai=
l-poky-linux/linux-yocto-3.0.32&#43;git1&#43;46e8fc2bbbe73514e8d99101adaaa3=
73f760ffa7_1&#43;81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/temp/log.do_in=
stall_perf.69672
 for further information)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">NOTE: make -C /home/rsaxena/=
YoctoWork3x/cedartraiv12p/tmp/work/cedartrail-poky-linux/linux-yocto-3.0.32=
&#43;git1&#43;46e8fc2bbbe73514e8d99101adaaa373f760ffa7_1&#43;81fd8c307997af=
f37916828dc8b4ef72f5d35a94-r4/linux/tools/perf
 CC=3Di586-poky-linux-gcc&nbsp; -m32&nbsp;&nbsp;&nbsp; -march=3Dcore2 -msse=
3 -mtune=3Dgeneric -mfpmath=3Dsse --sysroot=3D/home/rsaxena/YoctoWork3x/ced=
artraiv12p/tmp/sysroots/cedartrail LD=3Di586-poky-linux-ld --sysroot=3D/hom=
e/rsaxena/YoctoWork3x/cedartraiv12p/tmp/sysroots/cedartrail&nbsp;&nbsp; pre=
fix=3D/usr
 DESTDIR=3D/home/rsaxena/YoctoWork3x/cedartraiv12p/tmp/work/cedartrail-poky=
-linux/linux-yocto-3.0.32&#43;git1&#43;46e8fc2bbbe73514e8d99101adaaa373f760=
ffa7_1&#43;81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/image install NO_NEW=
T=3D1 NO_DWARF=3D1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">make: Entering directory `/h=
ome/rsaxena/YoctoWork3x/cedartraiv12p/tmp/work/cedartrail-poky-linux/linux-=
yocto-3.0.32&#43;git1&#43;46e8fc2bbbe73514e8d99101adaaa373f760ffa7_1&#43;81=
fd8c307997aff37916828dc8b4ef72f5d35a94-r4/linux/tools/perf'<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">Makefile:484: libperl not fo=
und, disables Perl scripting support. Please install libperl-dev or perl-de=
vel<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; * new bui=
ld flags or prefix<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC perf.o=
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-annotate.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-bench.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC bench/=
sched-messaging.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC bench/=
sched-pipe.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC bench/=
mem-memcpy.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-diff.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-evlist.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-help.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-sched.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-buildid-list.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-buildid-cache.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-list.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-record.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-report.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-stat.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-timechart.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-top.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-script.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-probe.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-kmem.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-lock.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-kvm.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-test.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC builti=
n-inject.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/a=
bspath.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/a=
lias.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/a=
nnotate.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/b=
uild-id.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/c=
onfig.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/c=
type.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/d=
ebugfs.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/e=
nvironment.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/e=
vent.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/e=
vlist.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/e=
vsel.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/e=
xec_cmd.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/h=
elp.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/l=
evenshtein.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/p=
arse-options.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/p=
arse-events.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/p=
ath.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/r=
btree.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/b=
itmap.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/h=
weight.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/r=
un-command.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/q=
uote.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/s=
trbuf.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/s=
tring.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/s=
trlist.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/s=
trfilter.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/t=
op.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/u=
sage.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/w=
rapper.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/s=
igchain.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/s=
ymbol.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/c=
olor.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/p=
ager.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/h=
eader.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/c=
allchain.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/v=
alues.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/d=
ebug.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/m=
ap.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/p=
stack.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/s=
ession.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/t=
hread.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/t=
hread_map.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/t=
race-event-parse.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/t=
race-event-read.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/t=
race-event-info.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/t=
race-event-scripting.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/s=
vghelper.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/s=
ort.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/h=
ist.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/p=
robe-event.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/u=
til.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/x=
yarray.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/c=
pumap.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/c=
group.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC util/s=
cripting-engines/trace-event-python.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; CC script=
s/python/Perf-Trace-Util/Context.o<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; AR libper=
f.a<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; LINK perf=
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; GEN pytho=
n/perf.so<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">Traceback (most recent call =
last):<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp; File &quot;util/setup=
.py&quot;, line 6, in &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; from dist=
utils.command.build_ext&nbsp;&nbsp; import build_ext&nbsp;&nbsp; as _build_=
ext<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp; File &quot;/home/rsax=
ena/YoctoWork3x/cedartraiv12p/tmp/sysroots/x86_64-linux/usr/lib/python2.7/d=
istutils/command/build_ext.py&quot;, line 16, in &lt;module&gt;<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; from dist=
utils.sysconfig import customize_compiler, get_python_version<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp; File &quot;/home/rsax=
ena/YoctoWork3x/cedartraiv12p/tmp/sysroots/x86_64-linux/usr/lib/python2.7/d=
istutils/sysconfig.py&quot;, line 22, in &lt;module&gt;<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; PREFIX =
=3D os.path.normpath(sys.prefix).replace( os.getenv(&quot;BUILD_SYS&quot;),=
 os.getenv(&quot;HOST_SYS&quot;) )<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">TypeError: expected a charac=
ter buffer object<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">cp: cannot stat `python_ext_=
build/lib/perf.so': No such file or directory<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">make: *** [python/perf.so] E=
rror 1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">make: Leaving directory `/ho=
me/rsaxena/YoctoWork3x/cedartraiv12p/tmp/work/cedartrail-poky-linux/linux-y=
octo-3.0.32&#43;git1&#43;46e8fc2bbbe73514e8d99101adaaa373f760ffa7_1&#43;81f=
d8c307997aff37916828dc8b4ef72f5d35a94-r4/linux/tools/perf'<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">ERROR: oe_runmake failed<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_63ECFF2A2302B44093D7CE9E9962C490032E3CB9ORSMSX103amrcor_--
