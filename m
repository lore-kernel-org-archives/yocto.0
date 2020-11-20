Subject: [Yocto] Architecture did not match #yocto
To: yocto@lists.yoctoproject.org
From: yuvaraj.velumani@denso-ten.com
X-Originating-Location: Novi, Michigan, US (206.181.20.218)
X-Originating-Platform: Windows Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 20 Nov 2020 09:03:53 -0800
Message-ID: <rAhd.1605891833153450845.ITtk@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MlrRBhDx7QIz0pTCnuk7"

--MlrRBhDx7QIz0pTCnuk7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am getting error while building google chromium depot-tools. My intentio=
ns is to build meta-flutter which depends on depot-tools.

ERROR: depot-tools-git-r0 do_package_qa: QA Issue: Architecture did not ma=
tch (x86-64, expected AArch64) on /work/aarch64-oe-linux/depot-tools/git-r0=
/packages-split/depot-tools-dev/usr/bin/depot_tools/ninja-linux64
Architecture did not match (x86, expected AArch64) on /work/aarch64-oe-lin=
ux/depot-tools/git-r0/packages-split/depot-tools-dev/usr/bin/depot_tools/ni=
nja-linux32 [arch]
ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_tools/ni=
nja-linux32 contained in package depot-tools-dev requires libc.so.6(GLIBC_2=
.4), but no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]
ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_tools/ni=
nja-linux32 contained in package depot-tools-dev requires libc.so.6, but no=
 providers found in RDEPENDS_depot-tools-dev? [file-rdeps]
ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_tools/ni=
nja-linux32 contained in package depot-tools-dev requires libgcc_s.so.1(GLI=
BC_2.0), but no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]
ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_tools/re=
cipes/recipe_modules/gsutil/resources/gsutil_smart_retry.py contained in pa=
ckage depot-tools-dev requires /usr/bin/python, but no providers found in R=
DEPENDS_depot-tools-dev? [file-rdeps]
ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_tools/ni=
nja-linux32 contained in package depot-tools-dev requires libc.so.6(GLIBC_2=
.2), but no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]
ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_tools/ni=
nja-linux32 contained in package depot-tools-dev requires libc.so.6(GLIBC_2=
.1), but no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]
ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_tools/ni=
nja-linux32 contained in package depot-tools-dev requires libstdc++.so.6, b=
ut no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]
ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_tools/ni=
nja-linux32 contained in package depot-tools-dev requires libstdc++.so.6(CX=
XABI_1.3), but no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]
ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_tools/ni=
nja-linux64 contained in package depot-tools-dev requires libc.so.6(GLIBC_2=
.2.5)(64bit), but no providers found in RDEPENDS_depot-tools-dev? [file-rde=
ps]
ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_tools/bo=
otstrap/profile.d.python.sh contained in package depot-tools-dev requires /=
bin/bash, but no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]
ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_tools/ni=
nja-linux64 contained in package depot-tools-dev requires libc.so.6(GLIBC_2=
.4)(64bit), but no providers found in RDEPENDS_depot-tools-dev? [file-rdeps=
]
ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_tools/ni=
nja-linux32 contained in package depot-tools-dev requires libm.so.6, but no=
 providers found in RDEPENDS_depot-tools-dev? [file-rdeps]
ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_tools/ni=
nja-linux32 contained in package depot-tools-dev requires libstdc++.so.6(GL=
IBCXX_3.4), but no providers found in RDEPENDS_depot-tools-dev? [file-rdeps=
]
ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_tools/ni=
nja-linux32 contained in package depot-tools-dev requires libc.so.6(GLIBC_2=
.1.3), but no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]
ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_tools/ni=
nja-linux32 contained in package depot-tools-dev requires libc.so.6(GLIBC_2=
.0), but no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]
ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_tools/ni=
nja-linux32 contained in package depot-tools-dev requires libgcc_s.so.1, bu=
t no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]
ERROR: depot-tools-git-r0 do_package_qa: QA run found fatal errors. Please=
 consider fixing them.
ERROR: Logfile of failure stored in: /home/mio.ten.fujitsu.com/yvelumani/h=
armony/code/8155_agl/apps/apps_proc/poky/build/tmp-glibc/work/aarch64-oe-li=
nux/depot-tools/git-r0/temp/log.do_package_qa.27049
ERROR: Task (/home/mio.ten.fujitsu.com/yvelumani/harmony/code/8155_agl/app=
s/apps_proc/meta-flutter/recipes-support/depot-tools/depot-tools_git.bb:do_=
package_qa) failed with exit code '1'

Thanks in Advance.

--MlrRBhDx7QIz0pTCnuk7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,&nbsp;<br /><br />I am getting error while building google chromium =
depot-tools. My intentions is to build meta-flutter which depends on depot-=
tools.<br /><br />
<div>ERROR: depot-tools-git-r0 do_package_qa: QA Issue: Architecture did n=
ot match (x86-64, expected AArch64) on /work/aarch64-oe-linux/depot-tools/g=
it-r0/packages-split/depot-tools-dev/usr/bin/depot_tools/ninja-linux64</div=
>
<div>Architecture did not match (x86, expected AArch64) on /work/aarch64-o=
e-linux/depot-tools/git-r0/packages-split/depot-tools-dev/usr/bin/depot_too=
ls/ninja-linux32 [arch]</div>
<div>ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_too=
ls/ninja-linux32 contained in package depot-tools-dev requires libc.so.6(GL=
IBC_2.4), but no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]<=
/div>
<div>ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_too=
ls/ninja-linux32 contained in package depot-tools-dev requires libc.so.6, b=
ut no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]</div>
<div>ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_too=
ls/ninja-linux32 contained in package depot-tools-dev requires libgcc_s.so.=
1(GLIBC_2.0), but no providers found in RDEPENDS_depot-tools-dev? [file-rde=
ps]</div>
<div>ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_too=
ls/recipes/recipe_modules/gsutil/resources/gsutil_smart_retry.py contained =
in package depot-tools-dev requires /usr/bin/python, but no providers found=
 in RDEPENDS_depot-tools-dev? [file-rdeps]</div>
<div>ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_too=
ls/ninja-linux32 contained in package depot-tools-dev requires libc.so.6(GL=
IBC_2.2), but no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]<=
/div>
<div>ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_too=
ls/ninja-linux32 contained in package depot-tools-dev requires libc.so.6(GL=
IBC_2.1), but no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]<=
/div>
<div>ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_too=
ls/ninja-linux32 contained in package depot-tools-dev requires libstdc++.so=
.6, but no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]</div>
<div>ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_too=
ls/ninja-linux32 contained in package depot-tools-dev requires libstdc++.so=
.6(CXXABI_1.3), but no providers found in RDEPENDS_depot-tools-dev? [file-r=
deps]</div>
<div>ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_too=
ls/ninja-linux64 contained in package depot-tools-dev requires libc.so.6(GL=
IBC_2.2.5)(64bit), but no providers found in RDEPENDS_depot-tools-dev? [fil=
e-rdeps]</div>
<div>ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_too=
ls/bootstrap/profile.d.python.sh contained in package depot-tools-dev requi=
res /bin/bash, but no providers found in RDEPENDS_depot-tools-dev? [file-rd=
eps]</div>
<div>ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_too=
ls/ninja-linux64 contained in package depot-tools-dev requires libc.so.6(GL=
IBC_2.4)(64bit), but no providers found in RDEPENDS_depot-tools-dev? [file-=
rdeps]</div>
<div>ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_too=
ls/ninja-linux32 contained in package depot-tools-dev requires libm.so.6, b=
ut no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]</div>
<div>ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_too=
ls/ninja-linux32 contained in package depot-tools-dev requires libstdc++.so=
.6(GLIBCXX_3.4), but no providers found in RDEPENDS_depot-tools-dev? [file-=
rdeps]</div>
<div>ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_too=
ls/ninja-linux32 contained in package depot-tools-dev requires libc.so.6(GL=
IBC_2.1.3), but no providers found in RDEPENDS_depot-tools-dev? [file-rdeps=
]</div>
<div>ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_too=
ls/ninja-linux32 contained in package depot-tools-dev requires libc.so.6(GL=
IBC_2.0), but no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]<=
/div>
<div>ERROR: depot-tools-git-r0 do_package_qa: QA Issue: /usr/bin/depot_too=
ls/ninja-linux32 contained in package depot-tools-dev requires libgcc_s.so.=
1, but no providers found in RDEPENDS_depot-tools-dev? [file-rdeps]</div>
<div>ERROR: depot-tools-git-r0 do_package_qa: QA run found fatal errors. P=
lease consider fixing them.</div>
<div>ERROR: Logfile of failure stored in: /home/mio.ten.fujitsu.com/yvelum=
ani/harmony/code/8155_agl/apps/apps_proc/poky/build/tmp-glibc/work/aarch64-=
oe-linux/depot-tools/git-r0/temp/log.do_package_qa.27049</div>
<div>ERROR: Task (/home/mio.ten.fujitsu.com/yvelumani/harmony/code/8155_ag=
l/apps/apps_proc/meta-flutter/recipes-support/depot-tools/depot-tools_git.b=
b:do_package_qa) failed with exit code '1'</div>
<div>&nbsp;</div>
Thanks in Advance.

--MlrRBhDx7QIz0pTCnuk7--
