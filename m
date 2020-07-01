Subject: How to install rrdtool-per package?
To: yocto@lists.yoctoproject.org
From: ingemar0720@gmail.com
X-Originating-Location: Singapore, SG (116.86.81.64)
X-Originating-Platform: Mac Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 01 Jul 2020 02:50:49 -0700
Message-ID: <5aRG.1593597049418588674.ppPw@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LXFHKd8JfMJd2zy1ctf1"

--LXFHKd8JfMJd2zy1ctf1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

My Yocto build failed and it seems to be looking for "rrdtool-perl" package=
. I've added package "rrdtool" into my "INSTALL_APPEND" variable but it sti=
ll fail. The logs is in below. Could someone helped me to find the correct =
recipe to install it?

"""

repo: using cache for: oe-repo

not found other for:

not found modules for:

not found deltainfo for:

not found updateinfo for:

oe-repo: using metadata from Wed 01 Jul 2020 09:34:21 AM UTC.

Last metadata expiration check: 0:00:01 ago on Wed 01 Jul 2020 09:34:22 AM=
 UTC.

No module defaults found

--> Starting dependency resolution

--> Finished dependency resolution

Error:

Problem: conflicting requests

- nothing provides rrdtool-perl needed by rpimonitor-2.13-r0.arm1176jzfshf=
_vfp

(try to add '--skip-broken' to skip uninstallable packages or '--nobest' t=
o use not only best candidate packages)

ERROR: Logfile of failure stored in: /home/ingemar/yocto/sdk/build/tmp/wor=
k/raspberrypi0_wifi-poky-linux-gnueabi/rpi-image/1.0-r0/temp/log.do_rootfs.=
27003

ERROR: Task (/home/ingemar/yocto/sdk/build/../build/meta-rpi/recipes-core/=
images/rpi-image.bb:do_rootfs) failed with exit code '1'

"""

--LXFHKd8JfMJd2zy1ctf1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>My Yocto build failed and it seems to be looking for "rrdtool-perl" pack=
age. I've added package "rrdtool" into my "INSTALL_APPEND" variable but it =
still fail. The logs is in below. Could someone helped me to find the corre=
ct recipe to install it?</p>
<p>&nbsp;</p>
<p>"""</p>
<p>repo: using cache for: oe-repo</p>
<p>not found other for:</p>
<p>not found modules for:</p>
<p>not found deltainfo for:</p>
<p>not found updateinfo for:</p>
<p>oe-repo: using metadata from Wed 01 Jul 2020 09:34:21 AM UTC.</p>
<p>Last metadata expiration check: 0:00:01 ago on Wed 01 Jul 2020 09:34:22=
 AM UTC.</p>
<p>No module defaults found</p>
<p>--&gt; Starting dependency resolution</p>
<p>--&gt; Finished dependency resolution</p>
<p>Error:</p>
<p>&nbsp;Problem: conflicting requests</p>
<p>&nbsp; - nothing provides rrdtool-perl needed by rpimonitor-2.13-r0.arm=
1176jzfshf_vfp</p>
<p>(try to add '--skip-broken' to skip uninstallable packages or '--nobest=
' to use not only best candidate packages)</p>
<p>&nbsp;</p>
<p>ERROR: Logfile of failure stored in: /home/ingemar/yocto/sdk/build/tmp/=
work/raspberrypi0_wifi-poky-linux-gnueabi/rpi-image/1.0-r0/temp/log.do_root=
fs.27003</p>
<p>ERROR: Task (/home/ingemar/yocto/sdk/build/../build/meta-rpi/recipes-co=
re/images/rpi-image.bb:do_rootfs) failed with exit code '1'</p>
<p>"""</p>

--LXFHKd8JfMJd2zy1ctf1--
