Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 93D804C811F4
	for <yocto@yoctoproject.org>; Tue,  7 Dec 2010 21:15:04 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Dec 2010 19:15:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,314,1288594800"; 
	d="scan'208,217";a="684966471"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 07 Dec 2010 19:15:04 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Tue, 7 Dec 2010 19:15:03 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 7 Dec 2010 19:15:02 -0800
Thread-Topic: strange bitbake error
Thread-Index: AcuWhhpQfw5R8EBtSYGSsjzgXsnYSg==
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE940254AA53@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>
Subject: strange bitbake error
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
X-List-Received-Date: Wed, 08 Dec 2010 03:15:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9DA5872FEF993D41B7173F58FCF6BE940254AA53orsmsx504amrcor_"

--_000_9DA5872FEF993D41B7173F58FCF6BE940254AA53orsmsx504amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,
  I am getting following bitbake error. I also tried passing -D option to b=
itbake, but I did not find anything useful. Also bellow is the change which=
 is causing this error.
I don't see anything oblivious here. As I understand just changing the reci=
pe from cvs to git src_uri has caused this issue.

Thanks & Regards,
Nitin

$ bitbake gnu-config -c fetch
NOTE: Handling BitBake files: \ (0765/0765) [100 %]
Parsing of 765 .bb files complete (719 cached, 46 parsed). 924 targets, 34 =
skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        =3D "1.11.0"
METADATA_BRANCH   =3D "upgrades10"
METADATA_REVISION =3D "1f82a80572ddf17a5dd998234da7c517125c95c7"
TARGET_ARCH       =3D "i586"
TARGET_OS         =3D "linux"
MACHINE           =3D "qemux86"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "0.9+snapshot-20101208"
TARGET_FPU        =3D ""

NOTE: Resolving any missing task queue dependencies
Traceback (most recent call last):
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/server/none.py"=
, line 128, in idle_commands
    retval =3D function(self, data, False)
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/cooker.py", lin=
e 728, in buildTargetsIdle
    retval =3D rq.execute_runqueue()
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 928, in execute_runqueue
    if self.rqdata.prepare() is 0:
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 651, in prepare
    self.runq_weight =3D self.calculate_task_weights(endpoints)
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 346, in calculate_task_weights
    msgs =3D self.circular_depchains_handler(problem_tasks)
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 292, in circular_depchains_handler
    find_chains(task, [])
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 284, in find_chains
    find_chains(revdep, deepcopy(prev_chain))
  File "/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py", l=
ine 285, in find_chains
    for dep in explored_deps[revdep]:
KeyError: 37
NOTE: Preparing runqueue
ERROR: Unbuildable tasks were found.
These are usually caused by circular dependencies and any circular dependen=
cy chains found will be printed below. Increase the debug level to see a li=
st of unbuildable tasks.

Identifying dependency loops (this may take a short while)...

NOTE: Tasks Summary: Attempted 0 tasks of which 0 didn't need to be rerun a=
nd 0 failed.



Change causing this issue:


diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/con=
f/distro/include/poky-default-revisions.inc
index 488084b..6309cdb 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -179,4 +179,5 @@ SRCDATE_yaffs2-utils ??=3D "20071107"
 SRCREV_pn-zaurusd ??=3D "358"
 SRCREV_pn-zypper ??=3D "9eb0e248e06c8d20ad054be2439149d9ede37531"
 SRCREV_pn-blktrace ??=3D "1e09f6e9012826fca69fa07222b7bc53c3e629ee"
+SRCREV_pn-gnu-config ??=3D "3155524d0410c37b6286465249264c7981ab8cba"

diff --git a/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb b/meta=
/recipes-devtools/gnu-config/gnu-config_20080123.bb
deleted file mode 100644
index 5d7d646..0000000
--- a/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb
+++ /dev/null
@@ -1,38 +0,0 @@
-DESCRIPTION =3D "gnu-configize"
-SECTION =3D "devel"
-LICENSE =3D "GPLv1+"
-LIC_FILES_CHKSUM =3D "file://config.guess;endline=3D39;md5=3Da089987af4a25=
cb0419d1c2fd6d495e3"
-DEPENDS =3D ""
-INHIBIT_DEFAULT_DEPS =3D "1"
-
-FIXEDSRCDATE =3D "${@bb.data.getVar('FILE', d, 1).split('_')[-1].split('.'=
)[0]}"
-PV =3D "0.1+cvs${FIXEDSRCDATE}"
-PR =3D "r1"
-
-SRC_URI =3D "cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=3Dconfig=
;method=3Dpserver;date=3D${FIXEDSRCDATE} \
-                 file://config-guess-uclibc.patch \
-           file://gnu-configize.in"
-S =3D "${WORKDIR}/config"
-
-do_compile() {
-              :
-}
-
-do_install () {
-              install -d ${D}${datadir}/gnu-config \
-                                 ${D}${bindir}
-              cat ${WORKDIR}/gnu-configize.in | \
-                              sed -e 's,@gnu-configdir@,${datadir}/gnu-con=
fig,g' \
-                                  -e 's,@autom4te_perllibdir@,${datadir}/a=
utoconf,g' > ${D}${bindir}/gnu-configize
-              # In the native case we want the system perl as perl-native =
can't have built yet
-              if [ "${BUILD_ARCH}" !=3D "${TARGET_ARCH}" ]; then
-                              sed -i -e 's,/usr/bin/perl,${bindir}/perl,g'=
 ${D}${bindir}/gnu-configize
-              fi
-              chmod 755 ${D}${bindir}/gnu-configize
-              install -m 0644 config.guess config.sub ${D}${datadir}/gnu-c=
onfig/
-}
-
-PACKAGES =3D "${PN}"
-FILES_${PN} =3D "${bindir} ${datadir}/gnu-config"
-
-BBCLASSEXTEND =3D "native"
diff --git a/meta/recipes-devtools/gnu-config/gnu-config_git.bb b/meta/reci=
pes-devtools/gnu-config/gnu-config_git.bb
new file mode 100644
index 0000000..6df0892
--- /dev/null
+++ b/meta/recipes-devtools/gnu-config/gnu-config_git.bb
@@ -0,0 +1,37 @@
+DESCRIPTION =3D "gnu-configize"
+SECTION =3D "devel"
+LICENSE =3D "GPLv1+"
+LIC_FILES_CHKSUM =3D "file://config.guess;endline=3D39;md5=3Da089987af4a25=
cb0419d1c2fd6d495e3"
+DEPENDS =3D ""
+INHIBIT_DEFAULT_DEPS =3D "1"
+
+PV =3D "2010.09.11+git${SRCPV}"
+PR =3D "r0"
+
+SRC_URI =3D "git://git.svannah.gnu.org/config.git;protocol=3Dgit;branch=3D=
master \
+                file://config-guess-uclibc.patch \
+           file://gnu-configize.in"
+S =3D "${WORKDIR}/config"
+
+do_compile() {
+             :
+}
+
+do_install () {
+             install -d ${D}${datadir}/gnu-config \
+                                ${D}${bindir}
+             cat ${WORKDIR}/gnu-configize.in | \
+                             sed -e 's,@gnu-configdir@,${datadir}/gnu-conf=
ig,g' \
+                                 -e 's,@autom4te_perllibdir@,${datadir}/au=
toconf,g' > ${D}${bindir}/gnu-configize
+             # In the native case we want the system perl as perl-native c=
an't have built yet
+             if [ "${BUILD_ARCH}" !=3D "${TARGET_ARCH}" ]; then
+                             sed -i -e 's,/usr/bin/perl,${bindir}/perl,g' =
${D}${bindir}/gnu-configize
+             fi
+             chmod 755 ${D}${bindir}/gnu-configize
+             install -m 0644 config.guess config.sub ${D}${datadir}/gnu-co=
nfig/
+}
+
+PACKAGES =3D "${PN}"
+FILES_${PN} =3D "${bindir} ${datadir}/gnu-config"
+
+BBCLASSEXTEND =3D "native"

--_000_9DA5872FEF993D41B7173F58FCF6BE940254AA53orsmsx504amrcor_
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

<p class=3DMsoNormal>Hi Richard,<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; I am getting following bitbake error. I also tr=
ied
passing &#8211;D option to bitbake, but I did not find anything useful. Als=
o
bellow is the change which is causing this error. <o:p></o:p></p>

<p class=3DMsoNormal>I don&#8217;t see anything oblivious here. As I unders=
tand just
changing the recipe from cvs to git src_uri has caused this issue.<o:p></o:=
p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Thanks &amp; Regards,<o:p></o:p></p>

<p class=3DMsoNormal>Nitin<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>$ bitbake gnu-config -c fetch<o:p></o:p></p>

<p class=3DMsoNormal>NOTE: Handling BitBake files: \ (0765/0765) [100 %]<o:=
p></o:p></p>

<p class=3DMsoNormal>Parsing of 765 .bb files complete (719 cached, 46 pars=
ed).
924 targets, 34 skipped, 0 masked, 0 errors.<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>OE Build Configuration:<o:p></o:p></p>

<p class=3DMsoNormal>BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D
&quot;1.11.0&quot;<o:p></o:p></p>

<p class=3DMsoNormal>METADATA_BRANCH&nbsp;&nbsp; =3D &quot;upgrades10&quot;=
<o:p></o:p></p>

<p class=3DMsoNormal>METADATA_REVISION =3D
&quot;1f82a80572ddf17a5dd998234da7c517125c95c7&quot;<o:p></o:p></p>

<p class=3DMsoNormal>TARGET_ARCH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D
&quot;i586&quot;<o:p></o:p></p>

<p class=3DMsoNormal>TARGET_OS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; =3D
&quot;linux&quot;<o:p></o:p></p>

<p class=3DMsoNormal>MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
=3D &quot;qemux86&quot;<o:p></o:p></p>

<p class=3DMsoNormal>DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;
=3D &quot;poky&quot;<o:p></o:p></p>

<p class=3DMsoNormal>DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D
&quot;0.9+snapshot-20101208&quot;<o:p></o:p></p>

<p class=3DMsoNormal>TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D
&quot;&quot;<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>NOTE: Resolving any missing task queue dependencies<o:=
p></o:p></p>

<p class=3DMsoNormal>Traceback (most recent call last):<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/server/none.py&qu=
ot;,
line 128, in idle_commands<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; retval =3D function(self, data, Fal=
se)<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/cooker.py&quot;, =
line
728, in buildTargetsIdle<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; retval =3D rq.execute_runqueue()<o:=
p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 928, in execute_runqueue<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; if self.rqdata.prepare() is 0:<o:p>=
</o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 651, in prepare<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; self.runq_weight =3D
self.calculate_task_weights(endpoints)<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 346, in calculate_task_weights<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; msgs =3D
self.circular_depchains_handler(problem_tasks)<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File &quot;/home/nitin/prj/poky.git/scripts/../=
/bitbake/lib/bb/runqueue.py&quot;,
line 292, in circular_depchains_handler<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(task, [])<o:p></o:p></p=
>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File &quot;/home/nitin/prj/poky.git/scripts/../=
/bitbake/lib/bb/runqueue.py&quot;,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File &quot;/home/nitin/prj/poky.git/scripts/../=
/bitbake/lib/bb/runqueue.py&quot;,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File &quot;/home/nitin/prj/poky.git/scripts/../=
/bitbake/lib/bb/runqueue.py&quot;,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File &quot;/home/nitin/prj/poky.git/scripts/../=
/bitbake/lib/bb/runqueue.py&quot;,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 284, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; find_chains(revdep, deepcopy(prev_c=
hain))<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp; File
&quot;/home/nitin/prj/poky.git/scripts/..//bitbake/lib/bb/runqueue.py&quot;=
,
line 285, in find_chains<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; for dep in explored_deps[revdep]:<o=
:p></o:p></p>

<p class=3DMsoNormal>KeyError: 37<o:p></o:p></p>

<p class=3DMsoNormal>NOTE: Preparing runqueue<o:p></o:p></p>

<p class=3DMsoNormal>ERROR: Unbuildable tasks were found.<o:p></o:p></p>

<p class=3DMsoNormal>These are usually caused by circular dependencies and =
any
circular dependency chains found will be printed below. Increase the debug
level to see a list of unbuildable tasks.<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Identifying dependency loops (this may take a short wh=
ile)...<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>NOTE: Tasks Summary: Attempted 0 tasks of which 0 didn=
't
need to be rerun and 0 failed.<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Change causing this issue:<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>diff --git
a/meta/conf/distro/include/poky-default-revisions.inc
b/meta/conf/distro/include/poky-default-revisions.inc<o:p></o:p></p>

<p class=3DMsoNormal>index 488084b..6309cdb 100644<o:p></o:p></p>

<p class=3DMsoNormal>--- a/meta/conf/distro/include/poky-default-revisions.=
inc<o:p></o:p></p>

<p class=3DMsoNormal>+++ b/meta/conf/distro/include/poky-default-revisions.=
inc<o:p></o:p></p>

<p class=3DMsoNormal>@@ -179,4 +179,5 @@ SRCDATE_yaffs2-utils ??=3D
&quot;20071107&quot;<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;SRCREV_pn-zaurusd ??=3D &quot;358&quot;<o:p></o:=
p></p>

<p class=3DMsoNormal>&nbsp;SRCREV_pn-zypper ??=3D
&quot;9eb0e248e06c8d20ad054be2439149d9ede37531&quot;<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;SRCREV_pn-blktrace ??=3D
&quot;1e09f6e9012826fca69fa07222b7bc53c3e629ee&quot;<o:p></o:p></p>

<p class=3DMsoNormal>+SRCREV_pn-gnu-config ??=3D &quot;3155524d0410c37b6286=
465249264c7981ab8cba&quot;<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;<o:p></o:p></p>

<p class=3DMsoNormal>diff --git
a/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb
b/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb<o:p></o:p></p>

<p class=3DMsoNormal>deleted file mode 100644<o:p></o:p></p>

<p class=3DMsoNormal>index 5d7d646..0000000<o:p></o:p></p>

<p class=3DMsoNormal>--- a/meta/recipes-devtools/gnu-config/gnu-config_2008=
0123.bb<o:p></o:p></p>

<p class=3DMsoNormal>+++ /dev/null<o:p></o:p></p>

<p class=3DMsoNormal>@@ -1,38 +0,0 @@<o:p></o:p></p>

<p class=3DMsoNormal>-DESCRIPTION =3D &quot;gnu-configize&quot;<o:p></o:p><=
/p>

<p class=3DMsoNormal>-SECTION =3D &quot;devel&quot;<o:p></o:p></p>

<p class=3DMsoNormal>-LICENSE =3D &quot;GPLv1+&quot;<o:p></o:p></p>

<p class=3DMsoNormal>-LIC_FILES_CHKSUM =3D
&quot;file://config.guess;endline=3D39;md5=3Da089987af4a25cb0419d1c2fd6d495=
e3&quot;<o:p></o:p></p>

<p class=3DMsoNormal>-DEPENDS =3D &quot;&quot;<o:p></o:p></p>

<p class=3DMsoNormal>-INHIBIT_DEFAULT_DEPS =3D &quot;1&quot;<o:p></o:p></p>

<p class=3DMsoNormal>-<o:p></o:p></p>

<p class=3DMsoNormal>-FIXEDSRCDATE =3D &quot;${@bb.data.getVar('FILE', d,
1).split('_')[-1].split('.')[0]}&quot;<o:p></o:p></p>

<p class=3DMsoNormal>-PV =3D &quot;0.1+cvs${FIXEDSRCDATE}&quot;<o:p></o:p><=
/p>

<p class=3DMsoNormal>-PR =3D &quot;r1&quot;<o:p></o:p></p>

<p class=3DMsoNormal>-<o:p></o:p></p>

<p class=3DMsoNormal>-SRC_URI =3D
&quot;cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=3Dconfig;method=
=3Dpserver;date=3D${FIXEDSRCDATE}
\<o:p></o:p></p>

<p class=3DMsoNormal>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
file://config-guess-uclibc.patch \<o:p></o:p></p>

<p class=3DMsoNormal>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;
file://gnu-configize.in&quot;<o:p></o:p></p>

<p class=3DMsoNormal>-S =3D &quot;${WORKDIR}/config&quot;<o:p></o:p></p>

<p class=3DMsoNormal>-<o:p></o:p></p>

<p class=3DMsoNormal>-do_compile() {<o:p></o:p></p>

<p class=3DMsoNormal>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; :<o:p></o:p></p>

<p class=3DMsoNormal>-}<o:p></o:p></p>

<p class=3DMsoNormal>-<o:p></o:p></p>

<p class=3DMsoNormal>-do_install () {<o:p></o:p></p>

<p class=3DMsoNormal>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; install
-d ${D}${datadir}/gnu-config \<o:p></o:p></p>

<p class=3DMsoNormal>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
${D}${bindir}<o:p></o:p></p>

<p class=3DMsoNormal>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; cat
${WORKDIR}/gnu-configize.in | \<o:p></o:p></p>

<p class=3DMsoNormal>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sed
-e 's,@gnu-configdir@,${datadir}/gnu-config,g' \<o:p></o:p></p>

<p class=3DMsoNormal>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
-e 's,@autom4te_perllibdir@,${datadir}/autoconf,g' &gt;
${D}${bindir}/gnu-configize<o:p></o:p></p>

<p class=3DMsoNormal>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; #
In the native case we want the system perl as perl-native can't have built =
yet<o:p></o:p></p>

<p class=3DMsoNormal>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; if
[ &quot;${BUILD_ARCH}&quot; !=3D &quot;${TARGET_ARCH}&quot; ]; then<o:p></o=
:p></p>

<p class=3DMsoNormal>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sed
-i -e 's,/usr/bin/perl,${bindir}/perl,g' ${D}${bindir}/gnu-configize<o:p></=
o:p></p>

<p class=3DMsoNormal>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; fi<o:p></o:p></p>

<p class=3DMsoNormal>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; chmod
755 ${D}${bindir}/gnu-configize<o:p></o:p></p>

<p class=3DMsoNormal>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; install
-m 0644 config.guess config.sub ${D}${datadir}/gnu-config/<o:p></o:p></p>

<p class=3DMsoNormal>-}<o:p></o:p></p>

<p class=3DMsoNormal>-<o:p></o:p></p>

<p class=3DMsoNormal>-PACKAGES =3D &quot;${PN}&quot;<o:p></o:p></p>

<p class=3DMsoNormal>-FILES_${PN} =3D &quot;${bindir} ${datadir}/gnu-config=
&quot;<o:p></o:p></p>

<p class=3DMsoNormal>-<o:p></o:p></p>

<p class=3DMsoNormal>-BBCLASSEXTEND =3D &quot;native&quot;<o:p></o:p></p>

<p class=3DMsoNormal>diff --git
a/meta/recipes-devtools/gnu-config/gnu-config_git.bb
b/meta/recipes-devtools/gnu-config/gnu-config_git.bb<o:p></o:p></p>

<p class=3DMsoNormal>new file mode 100644<o:p></o:p></p>

<p class=3DMsoNormal>index 0000000..6df0892<o:p></o:p></p>

<p class=3DMsoNormal>--- /dev/null<o:p></o:p></p>

<p class=3DMsoNormal>+++ b/meta/recipes-devtools/gnu-config/gnu-config_git.=
bb<o:p></o:p></p>

<p class=3DMsoNormal>@@ -0,0 +1,37 @@<o:p></o:p></p>

<p class=3DMsoNormal>+DESCRIPTION =3D &quot;gnu-configize&quot;<o:p></o:p><=
/p>

<p class=3DMsoNormal>+SECTION =3D &quot;devel&quot;<o:p></o:p></p>

<p class=3DMsoNormal>+LICENSE =3D &quot;GPLv1+&quot;<o:p></o:p></p>

<p class=3DMsoNormal>+LIC_FILES_CHKSUM =3D
&quot;file://config.guess;endline=3D39;md5=3Da089987af4a25cb0419d1c2fd6d495=
e3&quot;<o:p></o:p></p>

<p class=3DMsoNormal>+DEPENDS =3D &quot;&quot;<o:p></o:p></p>

<p class=3DMsoNormal>+INHIBIT_DEFAULT_DEPS =3D &quot;1&quot;<o:p></o:p></p>

<p class=3DMsoNormal>+<o:p></o:p></p>

<p class=3DMsoNormal>+PV =3D &quot;2010.09.11+git${SRCPV}&quot;<o:p></o:p><=
/p>

<p class=3DMsoNormal>+PR =3D &quot;r0&quot;<o:p></o:p></p>

<p class=3DMsoNormal>+<o:p></o:p></p>

<p class=3DMsoNormal>+SRC_URI =3D
&quot;git://git.svannah.gnu.org/config.git;protocol=3Dgit;branch=3Dmaster \=
<o:p></o:p></p>

<p class=3DMsoNormal>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
file://config-guess-uclibc.patch \<o:p></o:p></p>

<p class=3DMsoNormal>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;
file://gnu-configize.in&quot;<o:p></o:p></p>

<p class=3DMsoNormal>+S =3D &quot;${WORKDIR}/config&quot;<o:p></o:p></p>

<p class=3DMsoNormal>+<o:p></o:p></p>

<p class=3DMsoNormal>+do_compile() {<o:p></o:p></p>

<p class=3DMsoNormal>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; :<o:p></o:p></p>

<p class=3DMsoNormal>+}<o:p></o:p></p>

<p class=3DMsoNormal>+<o:p></o:p></p>

<p class=3DMsoNormal>+do_install () {<o:p></o:p></p>

<p class=3DMsoNormal>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; install
-d ${D}${datadir}/gnu-config \<o:p></o:p></p>

<p class=3DMsoNormal>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
${D}${bindir}<o:p></o:p></p>

<p class=3DMsoNormal>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; cat
${WORKDIR}/gnu-configize.in | \<o:p></o:p></p>

<p class=3DMsoNormal>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sed
-e 's,@gnu-configdir@,${datadir}/gnu-config,g' \<o:p></o:p></p>

<p class=3DMsoNormal>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
-e 's,@autom4te_perllibdir@,${datadir}/autoconf,g' &gt;
${D}${bindir}/gnu-configize<o:p></o:p></p>

<p class=3DMsoNormal>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; #
In the native case we want the system perl as perl-native can't have built =
yet<o:p></o:p></p>

<p class=3DMsoNormal>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if
[ &quot;${BUILD_ARCH}&quot; !=3D &quot;${TARGET_ARCH}&quot; ]; then<o:p></o=
:p></p>

<p class=3DMsoNormal>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sed
-i -e 's,/usr/bin/perl,${bindir}/perl,g' ${D}${bindir}/gnu-configize<o:p></=
o:p></p>

<p class=3DMsoNormal>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; fi<o:p></o:p></p>

<p class=3DMsoNormal>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; chmod
755 ${D}${bindir}/gnu-configize<o:p></o:p></p>

<p class=3DMsoNormal>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; install
-m 0644 config.guess config.sub ${D}${datadir}/gnu-config/<o:p></o:p></p>

<p class=3DMsoNormal>+}<o:p></o:p></p>

<p class=3DMsoNormal>+<o:p></o:p></p>

<p class=3DMsoNormal>+PACKAGES =3D &quot;${PN}&quot;<o:p></o:p></p>

<p class=3DMsoNormal>+FILES_${PN} =3D &quot;${bindir} ${datadir}/gnu-config=
&quot;<o:p></o:p></p>

<p class=3DMsoNormal>+<o:p></o:p></p>

<p class=3DMsoNormal>+BBCLASSEXTEND =3D &quot;native&quot;<o:p></o:p></p>

</div>

</body>

</html>

--_000_9DA5872FEF993D41B7173F58FCF6BE940254AA53orsmsx504amrcor_--
