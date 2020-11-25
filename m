Subject: Re: Problem with recipe that depends on a binary that is generated during its build
To: yocto@lists.yoctoproject.org
From: "Matteo Iervasi" <matteo.iervasi@edalab.it>
X-Originating-Location: Lana, Trentino-Alto Adige, IT (93.38.115.180)
X-Originating-Platform: Linux Firefox 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 25 Nov 2020 00:37:39 -0800
References: <fc5a5e16-61ad-d9c0-92c8-87714d040f95@edalab.it>
In-Reply-To: <fc5a5e16-61ad-d9c0-92c8-87714d040f95@edalab.it>
Message-ID: <29421.1606293459720479059@lists.yoctoproject.org>
X-Groupsio-MsgNum: 51550
Content-Type: multipart/mixed; boundary="EWBzpVGRwmxX3HTl2ngo"

--EWBzpVGRwmxX3HTl2ngo
Content-Type: multipart/alternative; boundary="08PpGv7A3IexRNn4f658"

--08PpGv7A3IexRNn4f658
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Ok I've found a solution by myself. Basically I just used the trick showed =
in the Technical FAQ and put a bunch of install commands in the do_install =
task.
Now the only problem I have is that the do_install task for target complai=
ns that needs administrative privileges (maybe I'm just doing it wrong, I'm=
 still not that experienced with Yocto).

| [100%] Built target boosttest-test-livestatus
| make[1]: Leaving directory '/home/matteo/boxio/toradex/colibri-imx6ull/b=
uild-boxio-colibri-imx6ull/tmp-glibc/work/cortexa7t2hf-neon-angstrom-linux-=
gnueabi/icinga-core/2.12.0-r0/build'
| /home/matteo/boxio/toradex/colibri-imx6ull/build-boxio-colibri-imx6ull/t=
mp-glibc/work/cortexa7t2hf-neon-angstrom-linux-gnueabi/icinga-core/2.12.0-r=
0/recipe-sysroot-native/usr/bin/cmake -E cmake_progress_start /home/matteo/=
boxio/toradex/colibri-imx6ull/build-boxio-colibri-imx6ull/tmp-glibc/work/co=
rtexa7t2hf-neon-angstrom-linux-gnueabi/icinga-core/2.12.0-r0/build/CMakeFil=
es 0
| make -f CMakeFiles/Makefile2 preinstall
| make[1]: Entering directory '/home/matteo/boxio/toradex/colibri-imx6ull/=
build-boxio-colibri-imx6ull/tmp-glibc/work/cortexa7t2hf-neon-angstrom-linux=
-gnueabi/icinga-core/2.12.0-r0/build'
| make[1]: Nothing to be done for 'preinstall'.
| make[1]: Leaving directory '/home/matteo/boxio/toradex/colibri-imx6ull/b=
uild-boxio-colibri-imx6ull/tmp-glibc/work/cortexa7t2hf-neon-angstrom-linux-=
gnueabi/icinga-core/2.12.0-r0/build'
| Install the project...
| /home/matteo/boxio/toradex/colibri-imx6ull/build-boxio-colibri-imx6ull/t=
mp-glibc/work/cortexa7t2hf-neon-angstrom-linux-gnueabi/icinga-core/2.12.0-r=
0/recipe-sysroot-native/usr/bin/cmake -P cmake_install.cmake
| -- Install configuration: "Release"
| CMake Error at cmake_install.cmake:36 (file):
|=C2=A0=C2=A0 file cannot create directory: /usr/share/doc/icinga2.=C2=A0 =
Maybe need
|=C2=A0=C2=A0 administrative privileges.
|
|
| Makefile:74: recipe for target 'install' failed
| make: *** [install] Error 1
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_install (log file is located at /home/matteo/=
boxio/toradex/colibri-imx6ull/build-boxio-colibri-imx6ull/tmp-glibc/work/co=
rtexa7t2hf-neon-angstrom-linux-gnueabi/icinga-core/2.12.0-r0/temp/log.do_in=
stall.25788)
ERROR: Task (/home/matteo/boxio/toradex/colibri-imx6ull/build-boxio-colibr=
i-imx6ull/../layers/meta-boxio-colibri-imx6ull/recipes-extended/icinga-core=
/icinga-core_2.12.0.bb:do_install) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3457 tasks of which 3447 didn't need to be =
rerun and 1 failed.
NOTE: Writing buildhistory

The recipe that now compiles ok is attached here.

Thanks
Matteo Iervasi

--08PpGv7A3IexRNn4f658
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Ok I've found a solution by myself. Basically I just used the trick showed =
in the Technical FAQ and put a bunch of install commands in the do_install =
task.<br />Now the only problem I have is that the do_install task for targ=
et complains that needs administrative privileges (maybe I'm just doing it =
wrong, I'm still not that experienced with Yocto).<span style=3D"font-famil=
y: courier_newregular, courier;"></span><br /><br /><span style=3D"font-fam=
ily: courier_newregular, courier;">| [100%] Built target boosttest-test-liv=
estatus</span><br /><span style=3D"font-family: courier_newregular, courier=
;">| make[1]: Leaving directory '/home/matteo/boxio/toradex/colibri-imx6ull=
/build-boxio-colibri-imx6ull/tmp-glibc/work/cortexa7t2hf-neon-angstrom-linu=
x-gnueabi/icinga-core/2.12.0-r0/build'</span><br /><span style=3D"font-fami=
ly: courier_newregular, courier;">| /home/matteo/boxio/toradex/colibri-imx6=
ull/build-boxio-colibri-imx6ull/tmp-glibc/work/cortexa7t2hf-neon-angstrom-l=
inux-gnueabi/icinga-core/2.12.0-r0/recipe-sysroot-native/usr/bin/cmake -E c=
make_progress_start /home/matteo/boxio/toradex/colibri-imx6ull/build-boxio-=
colibri-imx6ull/tmp-glibc/work/cortexa7t2hf-neon-angstrom-linux-gnueabi/ici=
nga-core/2.12.0-r0/build/CMakeFiles 0</span><br /><span style=3D"font-famil=
y: courier_newregular, courier;">| make -f CMakeFiles/Makefile2 preinstall<=
/span><br /><span style=3D"font-family: courier_newregular, courier;">| mak=
e[1]: Entering directory '/home/matteo/boxio/toradex/colibri-imx6ull/build-=
boxio-colibri-imx6ull/tmp-glibc/work/cortexa7t2hf-neon-angstrom-linux-gnuea=
bi/icinga-core/2.12.0-r0/build'</span><br /><span style=3D"font-family: cou=
rier_newregular, courier;">| make[1]: Nothing to be done for 'preinstall'.<=
/span><br /><span style=3D"font-family: courier_newregular, courier;">| mak=
e[1]: Leaving directory '/home/matteo/boxio/toradex/colibri-imx6ull/build-b=
oxio-colibri-imx6ull/tmp-glibc/work/cortexa7t2hf-neon-angstrom-linux-gnueab=
i/icinga-core/2.12.0-r0/build'</span><br /><span style=3D"font-family: cour=
ier_newregular, courier;">| Install the project...</span><br /><span style=
=3D"font-family: courier_newregular, courier;">| /home/matteo/boxio/torade=
x/colibri-imx6ull/build-boxio-colibri-imx6ull/tmp-glibc/work/cortexa7t2hf-n=
eon-angstrom-linux-gnueabi/icinga-core/2.12.0-r0/recipe-sysroot-native/usr/=
bin/cmake -P cmake_install.cmake</span><br /><span style=3D"font-family: co=
urier_newregular, courier;">| -- Install configuration: "Release"</span><br=
 /><span style=3D"font-family: courier_newregular, courier;">| CMake Error =
at cmake_install.cmake:36 (file):</span><br /><span style=3D"font-family: c=
ourier_newregular, courier;">|&nbsp;&nbsp; file cannot create directory: /u=
sr/share/doc/icinga2.&nbsp; Maybe need</span><br /><span style=3D"font-fami=
ly: courier_newregular, courier;">|&nbsp;&nbsp; administrative privileges.<=
/span><br /><span style=3D"font-family: courier_newregular, courier;">| </s=
pan><br /><span style=3D"font-family: courier_newregular, courier;">| </spa=
n><br /><span style=3D"font-family: courier_newregular, courier;">| Makefil=
e:74: recipe for target 'install' failed</span><br /><span style=3D"font-fa=
mily: courier_newregular, courier;">| make: *** [install] Error 1</span><br=
 /><span style=3D"font-family: courier_newregular, courier;">| ERROR: oe_ru=
nmake failed</span><br /><span style=3D"font-family: courier_newregular, co=
urier;">| WARNING: exit code 1 from a shell command.</span><br /><span styl=
e=3D"font-family: courier_newregular, courier;">| ERROR: Function failed: d=
o_install (log file is located at /home/matteo/boxio/toradex/colibri-imx6ul=
l/build-boxio-colibri-imx6ull/tmp-glibc/work/cortexa7t2hf-neon-angstrom-lin=
ux-gnueabi/icinga-core/2.12.0-r0/temp/log.do_install.25788)</span><br /><sp=
an style=3D"font-family: courier_newregular, courier;">ERROR: Task (/home/m=
atteo/boxio/toradex/colibri-imx6ull/build-boxio-colibri-imx6ull/../layers/m=
eta-boxio-colibri-imx6ull/recipes-extended/icinga-core/icinga-core_2.12.0.b=
b:do_install) failed with exit code '1'</span><br /><span style=3D"font-fam=
ily: courier_newregular, courier;">NOTE: Tasks Summary: Attempted 3457 task=
s of which 3447 didn't need to be rerun and 1 failed.</span><br /><span sty=
le=3D"font-family: courier_newregular, courier;">NOTE: Writing buildhistory=
</span><br /><br />The recipe that now compiles ok is attached here.<br /><=
br />Thanks<br />Matteo Iervasi

--08PpGv7A3IexRNn4f658--

--EWBzpVGRwmxX3HTl2ngo
Content-Type: application/octet-stream; name="icinga-core_2.12.0.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="icinga-core_2.12.0.bb"

REVTQ1JJUFRJT04gPSAiQSBob3N0L3NlcnZpY2UvbmV0d29yayBtb25pdG9yaW5nIGFuZCBtYW5h
Z2VtZW50IHN5c3RlbSBjb3JlIGZpbGVzIgpIT01FUEFHRSA9ICJodHRwczovL2ljaW5nYS5jb20i
ClNFQ1RJT04gPSAiY29uc29sZS9uZXR3b3JrIgpQUklPUklUWSA9ICJvcHRpb25hbCIKTElDRU5T
RSA9ICJHUEx2MyIKTElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxlOi8vQ09QWUlORzttZDU9YjIzNGVl
NGQ2OWY1ZmNlNDQ4NmE4MGZkYWY0YTQyNjMgXAogICAgICAgICAgICAgICAgICAgIGZpbGU6Ly90
aGlyZC1wYXJ0eS9ubG9obWFubl9qc29uL0xJQ0VOU0U7bWQ1PTlhOGFlMWMyZDYwNmM0MzJhMmFh
MmUyZGUxNWJlMjJhIFwKICAgICAgICAgICAgICAgICAgICBmaWxlOi8vdGhpcmQtcGFydHkvdXRm
OGNwcC9MSUNFTlNFO21kNT1lNDIyNGNjYWVjYjE0ZDk0MmM3MWQzMWJlZjIwZDc4YyIKClNSQ19V
UkkgPSAiZ2l0Oi8vZ2l0aHViLmNvbS9JY2luZ2EvaWNpbmdhMjtwcm90b2NvbD1odHRwcyIKU1JD
X1VSSSArPSAiZmlsZTovLzAwMDEtRml4LWZvci1Zb2N0by5wYXRjaCBcCiAgICAgICAgICAgICIK
CiNQViA9ICIxLjArZ2l0JHtTUkNQVn0iClNSQ1JFViA9ICIyZDE5ODBjMTBkMTdkYTEwNTA1YTli
NjBjNDc4MDk4MWQzYjhkMWU3IgoKUyA9ICIke1dPUktESVJ9L2dpdCIKCkRFUEVORFMgPSAiYm9v
c3QgZmxleC1uYXRpdmUgYmlzb24tbmF0aXZlIG9wZW5zc2wiCgpCQkNMQVNTRVhURU5EICs9ICJu
YXRpdmUgbmF0aXZlc2RrIgpERVBFTkRTX2FwcGVuZF9jbGFzcy10YXJnZXQgPSAiIGljaW5nYS1j
b3JlLW5hdGl2ZSIKUkRFUEVORFNfJHtQTn1fY2xhc3MtbmF0aXZlID0gIiIKCmluaGVyaXQgY21h
a2UKCkVYVFJBX09FQ01BS0UgPSAiLURJQ0lOR0EyX1dJVEhfTVlTUUw9T0ZGIC1ESUNJTkdBMl9X
SVRIX1BHU1FMPU9GRiIKCkZJTEVTXyR7UE59ICs9ICIke2xpYmRpcn0vKiBcCiAgICAgICAgICAg
ICAgICAke2RhdGFkaXJ9IFwKICAgICAgICAgICAgICAgICR7SUNJTkdBX1BMVUdJTl9ESVJ9IFwK
ICAgICAgICAgICAgICAgICR7SUNJTkdBX0NHSUJJTl9ESVJ9IFwiCkZJTEVTXyR7UE59LWRldiA9
ICIke2xpYmRpcn0vKiAke2luY2x1ZGVkaXJ9IgpGSUxFU18ke1BOfS1kYmcgKz0gIiR7SUNJTkdB
X0NHSUJJTl9ESVJ9Ly5kZWJ1ZyIKCmRvX2luc3RhbGwoKSB7CiAgICBpbnN0YWxsIC1kICR7RH0v
JHtiaW5kaXJ9CiAgICBpbnN0YWxsIC1tIDc1NSAke1dPUktESVJ9L2J1aWxkL0Jpbi9SZWxlYXNl
L21rY2xhc3MgJHtEfSR7YmluZGlyfQogICAgaW5zdGFsbCAtbSA3NTUgJHtXT1JLRElSfS9idWls
ZC9CaW4vUmVsZWFzZS9ta3VuaXR5ICR7RH0ke2JpbmRpcn0KICAgIGluc3RhbGwgLW0gNzU1ICR7
V09SS0RJUn0vYnVpbGQvQmluL1JlbGVhc2UvbWtlbWJlZGNvbmZpZyAke0R9JHtiaW5kaXJ9Cn0K
CmRvX2luc3RhbGxfYXBwZW5kX2NvbGlicmktaW14NnVsbCgpIHsKICAgIG9lX3J1bm1ha2UgaW5z
dGFsbAp9

--EWBzpVGRwmxX3HTl2ngo--
