Subject: scikit-learn #gatesgarth #yocto
To: yocto@lists.yoctoproject.org
From: "abhi" <abhishek.kumar@exaleapsemi.com>
X-Originating-Location: Bengaluru, Karnataka, IN (14.98.179.254)
X-Originating-Platform: Linux Firefox 92
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 Sep 2021 05:31:12 -0700
Message-ID: <A0Xn.1631881872345937236.3pBJ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ei2J0nVd8nER7wxCh6Hc"

--ei2J0nVd8nER7wxCh6Hc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

hi guys,

i am trying to build scikit-learn on yocto but i am getting error of setup.=
py ,it is showing failed i build all dependencies but it is giving error pl=
ease try to give some i dea

ERROR: python3-sklearn-1.0-r0 do_compile: 'python3 setup.py build ' executi=
on failed.
ERROR: python3-sklearn-1.0-r0 do_compile: Execution of '/home/abhishek//sou=
rces/fu540-build/tmp-glibc/work/riscv64-oe-linux/python3-sklearn/1.0-r0/tem=
p/run.do_compile.17835' failed with exit code 1:
/home/abhishek//sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/python3=
-sklearn/1.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3: can't=
 open file '/home/abhishek/sources/fu540-build/tmp-glibc/work/riscv64-oe-li=
nux/python3-sklearn/1.0-r0/scikit-learn-1.0/setup.py': [Errno 2] No such fi=
le or directory
WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in: /home/abhishek/exaleap/sources/fu540-b=
uild/tmp-glibc/work/riscv64-oe-linux/python3-sklearn/1.0-r0/temp/log.do_com=
pile.17835
Log data follows:
| DEBUG: Executing shell function do_compile
| /home/abhishek//sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/pytho=
n3-sklearn/1.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3: can=
't open file '/home/abhishek//sources/fu540-build/tmp-glibc/work/riscv64-oe=
-linux/python3-sklearn/1.0-r0/scikit-learn-1.0/setup.py': [Errno 2] No such=
 file or directory
| ERROR: 'python3 setup.py build ' execution failed.
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/home/abhishek//sources/fu540-build/tmp-glibc/work/r=
iscv64-oe-linux/python3-sklearn/1.0-r0/temp/run.do_compile.17835' failed wi=
th exit code 1:
| /home/abhishek//sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/pytho=
n3-sklearn/1.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3: can=
't open file '/home/abhishek//sources/fu540-build/tmp-glibc/work/riscv64-oe=
-linux/python3-sklearn/1.0-r0/scikit-learn-1.0/setup.py': [Errno 2] No such=
 file or directory
| WARNING: exit code 1 from a shell command.

--ei2J0nVd8nER7wxCh6Hc
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

hi guys,<br /><br />i am trying to build scikit-learn on yocto but i am get=
ting error of setup.py ,it is showing failed i build all dependencies but i=
t is giving error please try to give some i dea<br /><br />ERROR: python3-s=
klearn-1.0-r0 do_compile: 'python3 setup.py build ' execution failed.<br />=
ERROR: python3-sklearn-1.0-r0 do_compile: Execution of '/home/abhishek//sou=
rces/fu540-build/tmp-glibc/work/riscv64-oe-linux/python3-sklearn/1.0-r0/tem=
p/run.do_compile.17835' failed with exit code 1:<br />/home/abhishek//sourc=
es/fu540-build/tmp-glibc/work/riscv64-oe-linux/python3-sklearn/1.0-r0/recip=
e-sysroot-native/usr/bin/python3-native/python3: can't open file '/home/abh=
ishek/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/python3-sklearn/1=
.0-r0/scikit-learn-1.0/setup.py': [Errno 2] No such file or directory<br />=
WARNING: exit code 1 from a shell command.<br /><br />ERROR: Logfile of fai=
lure stored in: /home/abhishek/exaleap/sources/fu540-build/tmp-glibc/work/r=
iscv64-oe-linux/python3-sklearn/1.0-r0/temp/log.do_compile.17835<br />Log d=
ata follows:<br />| DEBUG: Executing shell function do_compile<br />| /home=
/abhishek//sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/python3-skle=
arn/1.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3: can't open=
 file '/home/abhishek//sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/=
python3-sklearn/1.0-r0/scikit-learn-1.0/setup.py': [Errno 2] No such file o=
r directory<br />| ERROR: 'python3 setup.py build ' execution failed.<br />=
| WARNING: exit code 1 from a shell command.<br />| ERROR: Execution of '/h=
ome/abhishek//sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/python3-s=
klearn/1.0-r0/temp/run.do_compile.17835' failed with exit code 1:<br />| /h=
ome/abhishek//sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/python3-s=
klearn/1.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3: can't o=
pen file '/home/abhishek//sources/fu540-build/tmp-glibc/work/riscv64-oe-lin=
ux/python3-sklearn/1.0-r0/scikit-learn-1.0/setup.py': [Errno 2] No such fil=
e or directory<br />| WARNING: exit code 1 from a shell command.

--ei2J0nVd8nER7wxCh6Hc--
