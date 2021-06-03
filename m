Subject: #bitbake bitbake fails when build for sqlcipher on AM335x
To: yocto@lists.yoctoproject.org
From: shrinivasnh@gmail.com
X-Originating-Location: Bucharest, Bucuresti, RO (193.176.84.143)
X-Originating-Platform: Windows Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 03 Jun 2021 08:39:26 -0700
Message-ID: <WRbX.1622734766743781940.0Lg1@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xfVm41ARkzv2Xo9Trw5N"

--xfVm41ARkzv2Xo9Trw5N
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am following steps mentioned below link to create Kernel and u-boot for A=
M335x starter kit

http://software-dl.ti.com/processor-sdk-linux/esd/docs/latest/linux/Overvi=
ew_Building_the_SDK.html
Its building correctly.

Now I am using the=C2=A0meta-webos-master layer which has sqlcipher to be =
addedto the Linux kernel, I am getting errrors durig the build itself
The error is as below
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
/AM335x/prj/tisdk/build$ MACHINE=3Dam335x-evm bitbake arago-base-tisdk-ima=
ge
ERROR: Unable to start bitbake server (None)
ERROR: Server log for this session (/home/appdev-426043/AM335x/prj/tisdk/b=
uild/bitbake-cookerdaemon.log):
--- Starting bitbake server pid 19434 at 2021-06-03 19:52:05.846548 ---
WARNING: Layer meta-processor-sdk should set LAYERSERIES_COMPAT_meta-proce=
ssor-sdk in its conf/layer.conf file to list the core layer names it is com=
patible with.
WARNING: Layer meta-webos should set LAYERSERIES_COMPAT_meta-webos in its =
conf/layer.conf file to list the core layer names it is compatible with.
ERROR: ParseError at /home/appdev-426043/AM335x/prj/tisdk/sources/meta-ara=
go/meta-webos-master/classes/package.bbclass:52: Could not inherit file cla=
sses/prserv.bbclass

Request help or pointers to resolve=C2=A0 the issue

--xfVm41ARkzv2Xo9Trw5N
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I am following steps mentioned below link to create Kernel and u-boot =
for AM335x starter kit</div>
<div>&nbsp;</div>
<div>http://software-dl.ti.com/processor-sdk-linux/esd/docs/latest/linux/O=
verview_Building_the_SDK.html</div>
<div>Its building correctly.<br /><br />Now I am using the&nbsp;meta-webos=
-master layer which has sqlcipher to be addedto the Linux kernel, I am gett=
ing errrors durig the build itself</div>
<div>The error is as below<br />=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>
<div>/AM335x/prj/tisdk/build$ MACHINE=3Dam335x-evm bitbake arago-base-tisd=
k-image</div>
<div>ERROR: Unable to start bitbake server (None)</div>
<div>ERROR: Server log for this session (/home/appdev-426043/AM335x/prj/ti=
sdk/build/bitbake-cookerdaemon.log):</div>
<div>--- Starting bitbake server pid 19434 at 2021-06-03 19:52:05.846548 -=
--</div>
<div>WARNING: Layer meta-processor-sdk should set LAYERSERIES_COMPAT_meta-=
processor-sdk in its conf/layer.conf file to list the core layer names it i=
s compatible with.</div>
<div>WARNING: Layer meta-webos should set LAYERSERIES_COMPAT_meta-webos in=
 its conf/layer.conf file to list the core layer names it is compatible wit=
h.</div>
<div>ERROR: ParseError at /home/appdev-426043/AM335x/prj/tisdk/sources/met=
a-arago/meta-webos-master/classes/package.bbclass:52: Could not inherit fil=
e classes/prserv.bbclass</div>
</div>
<div>&nbsp;</div>
<div>Request help or pointers to resolve&nbsp; the issue</div>

--xfVm41ARkzv2Xo9Trw5N--
