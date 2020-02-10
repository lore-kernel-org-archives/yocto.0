Subject: Unable to run bitbake core-image-minimal -c populate_sdk in poke "Warrior" branch.
To: yocto@lists.yoctoproject.org
From: "Michael" <youhour@us.ibm.com>
X-Originating-Location: Georgetown, Texas, US (47.221.167.202)
X-Originating-Platform: Windows Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 10 Feb 2020 08:15:28 -0800
Message-ID: <YfGX.1581351328052319513.OOjK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5SMw1BlkU15ey1IZZogL"

--5SMw1BlkU15ey1IZZogL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I created a build environment for powerpc-nf using poke "warrior" branch.
I was able to run "bitbake core-image-minimal" successfully.
I was also able to run "bitbake core-image-minimal -c populate_sdk" succes=
sfully.

Then I added a new package from my internal team.
After adding this package, I was still able to execute=C2=A0=C2=A0"bitbake=
 core-image-minimal" successfully.
However, bitbake core-image-minimal -c populate_sdk"=C2=A0 failed with the=
 following error message...

**************************************************************************=
***************************
NOTE: Executing RunQueue Tasks
*ERROR: core-image-minimal-1.0-r0 do_populate_sdk: Could not invoke dnf.* =
Command '/tmp/youhour/fips-build/b20200206b/fips-ppcnf/build/tmp/work/fips_=
ppcnf-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot-native/usr/bin/dn=
f -v --rpmverbosity=3Dinfo -y -c /tmp/youhour/fips-build/b20200206b/fips-pp=
cnf/build/tmp/work/fips_ppcnf-poky-linux/core-image-minimal/1.0-r0/sdk/imag=
e/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/tmp/youhour/fips-build/b20200206b=
/fips-ppcnf/build/tmp/work/fips_ppcnf-poky-linux/core-image-minimal/1.0-r0/=
sdk/image/etc/yum.repos.d --installroot=3D/tmp/youhour/fips-build/b20200206=
b/fips-ppcnf/build/tmp/work/fips_ppcnf-poky-linux/core-image-minimal/1.0-r0=
/sdk/image --setopt=3Dlogdir=3D/tmp/youhour/fips-build/b20200206b/fips-ppcn=
f/build/tmp/work/fips_ppcnf-poky-linux/core-image-minimal/1.0-r0/temp --rep=
ofrompath=3Doe-repo,/tmp/youhour/fips-build/b20200206b/fips-ppcnf/build/tmp=
/work/fips_ppcnf-poky-linux/core-image-minimal/1.0-r0/oe-sdk-repo --nogpgch=
eck install nativesdk-mdchroot nativesdk-packagegroup-sdk-host packagegroup=
-cross-canadian-fips-ppcnf' returned 1:
DNF version: 4.1.0
cachedir: /tmp/youhour/fips-build/b20200206b/fips-ppcnf/build/tmp/work/fip=
s_ppcnf-poky-linux/core-image-minimal/1.0-r0/sdk/image/var/cache/dnf
Added oe-repo repo from /tmp/youhour/fips-build/b20200206b/fips-ppcnf/buil=
d/tmp/work/fips_ppcnf-poky-linux/core-image-minimal/1.0-r0/oe-sdk-repo
repo: using cache for: oe-repo
not found other for:
not found modules for:
not found deltainfo for:
not found updateinfo for:
oe-repo: using metadata from Fri 07 Feb 2020 02:56:24 PM UTC.
Last metadata expiration check: 0:00:01 ago on Fri 07 Feb 2020 02:56:25 PM=
 UTC.
*No module defaults found*
*No match for argument: nativesdk-mdchroot*
*Error: Unable to find a match*

ERROR: core-image-minimal-1.0-r0 do_populate_sdk:
ERROR: core-image-minimal-1.0-r0 do_populate_sdk: Function failed: do_popu=
late_sdk
ERROR: Logfile of failure stored in: /tmp/youhour/fips-build/b20200206b/fi=
ps-ppcnf/build/tmp/work/fips_ppcnf-poky-linux/core-image-minimal/1.0-r0/tem=
p/log.do_populate_sdk.10934
ERROR: Task (/esw/san5/youhour/yocto_mcp/b20200206b/fips-build/meta/recipe=
s-core/images/core-image-minimal.bb:do_populate_sdk) failed with exit code =
'1'
NOTE: Tasks Summary: Attempted 3715 tasks of which 3714 didn't need to be =
rerun and 1 failed.
**************************************************************************=
**************************

I googled=C2=A0 " do_populate_sdk: Could not invoke dnf " and found many s=
imilar problems with suggested solutions.=C2=A0 However, only find one work=
 around that resolve the issue.
This work around is to change PACKAGE_CLASSES =3D "package_rpm" in the con=
f/local.conf file to PACKAGE_CLASSES =3D "package_ipk package_rpm".=C2=A0 W=
hile working, this solution use almost double the space for the build direc=
tory.

Has any one seen this problem and have a solution other than setting the P=
ACKAGE_CLASSES =3D "package_ipk package_rpm" ?

Thank you in advance.

--5SMw1BlkU15ey1IZZogL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I created a build environment for powerpc-nf using poke "warrior" branch.<b=
r />I was able to run "bitbake core-image-minimal" successfully.<br />I was=
 also able to run "bitbake core-image-minimal -c populate_sdk" successfully=
.<br /><br />Then I added a new package from my internal team.<br />After a=
dding this package, I was still able to execute&nbsp;&nbsp;"bitbake core-im=
age-minimal" successfully.<br />However, bitbake core-image-minimal -c popu=
late_sdk"&nbsp; failed with the following error message...<br /><br />*****=
***************************************************************************=
*********************<br />
<div>NOTE: Executing RunQueue Tasks</div>
<div><strong>ERROR: core-image-minimal-1.0-r0 do_populate_sdk: Could not i=
nvoke dnf.</strong> Command '/tmp/youhour/fips-build/b20200206b/fips-ppcnf/=
build/tmp/work/fips_ppcnf-poky-linux/core-image-minimal/1.0-r0/recipe-sysro=
ot-native/usr/bin/dnf -v --rpmverbosity=3Dinfo -y -c /tmp/youhour/fips-buil=
d/b20200206b/fips-ppcnf/build/tmp/work/fips_ppcnf-poky-linux/core-image-min=
imal/1.0-r0/sdk/image/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/tmp/youhour/f=
ips-build/b20200206b/fips-ppcnf/build/tmp/work/fips_ppcnf-poky-linux/core-i=
mage-minimal/1.0-r0/sdk/image/etc/yum.repos.d --installroot=3D/tmp/youhour/=
fips-build/b20200206b/fips-ppcnf/build/tmp/work/fips_ppcnf-poky-linux/core-=
image-minimal/1.0-r0/sdk/image --setopt=3Dlogdir=3D/tmp/youhour/fips-build/=
b20200206b/fips-ppcnf/build/tmp/work/fips_ppcnf-poky-linux/core-image-minim=
al/1.0-r0/temp --repofrompath=3Doe-repo,/tmp/youhour/fips-build/b20200206b/=
fips-ppcnf/build/tmp/work/fips_ppcnf-poky-linux/core-image-minimal/1.0-r0/o=
e-sdk-repo --nogpgcheck install nativesdk-mdchroot nativesdk-packagegroup-s=
dk-host packagegroup-cross-canadian-fips-ppcnf' returned 1:</div>
<div>DNF version: 4.1.0</div>
<div>cachedir: /tmp/youhour/fips-build/b20200206b/fips-ppcnf/build/tmp/wor=
k/fips_ppcnf-poky-linux/core-image-minimal/1.0-r0/sdk/image/var/cache/dnf</=
div>
<div>Added oe-repo repo from /tmp/youhour/fips-build/b20200206b/fips-ppcnf=
/build/tmp/work/fips_ppcnf-poky-linux/core-image-minimal/1.0-r0/oe-sdk-repo=
</div>
<div>repo: using cache for: oe-repo</div>
<div>not found other for:&nbsp;</div>
<div>not found modules for:&nbsp;</div>
<div>not found deltainfo for:&nbsp;</div>
<div>not found updateinfo for:&nbsp;</div>
<div>oe-repo: using metadata from Fri 07 Feb 2020 02:56:24 PM UTC.</div>
<div>Last metadata expiration check: 0:00:01 ago on Fri 07 Feb 2020 02:56:=
25 PM UTC.</div>
<div><strong>No module defaults found</strong></div>
<div><strong>No match for argument: nativesdk-mdchroot</strong></div>
<div><strong>Error: Unable to find a match</strong></div>
<div>&nbsp;</div>
<div>ERROR: core-image-minimal-1.0-r0 do_populate_sdk:&nbsp;</div>
<div>ERROR: core-image-minimal-1.0-r0 do_populate_sdk: Function failed: do=
_populate_sdk</div>
<div>ERROR: Logfile of failure stored in: /tmp/youhour/fips-build/b2020020=
6b/fips-ppcnf/build/tmp/work/fips_ppcnf-poky-linux/core-image-minimal/1.0-r=
0/temp/log.do_populate_sdk.10934</div>
<div>ERROR: Task (/esw/san5/youhour/yocto_mcp/b20200206b/fips-build/meta/r=
ecipes-core/images/core-image-minimal.bb:do_populate_sdk) failed with exit =
code '1'</div>
<div>NOTE: Tasks Summary: Attempted 3715 tasks of which 3714 didn't need t=
o be rerun and 1 failed.<br />*********************************************=
*******************************************************<br /><br />I google=
d&nbsp; "<span style=3D"font-weight: bold;">do_populate_sdk: Could not invo=
ke dnf</span>" and found many similar problems with suggested solutions.&nb=
sp; However, only find one work around that resolve the issue.<br />This wo=
rk around is to change&nbsp; <em>PACKAGE_CLASSES =3D "package_rpm"</em> in =
the conf/local.conf file to&nbsp;<em>PACKAGE_CLASSES =3D "package_ipk packa=
ge_rpm"</em>&nbsp;.&nbsp; While working, this solution use almost double th=
e space for the build directory.<br /><br />Has any one seen this problem a=
nd have a solution other than setting the&nbsp;<em>PACKAGE_CLASSES =3D "pac=
kage_ipk package_rpm"</em>&nbsp;?<br /><br />Thank you in advance.<br /><br=
 /></div>

--5SMw1BlkU15ey1IZZogL--
