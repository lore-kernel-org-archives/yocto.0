Subject: Re: insmod - huawei E3372h kernel module
To: yocto@lists.yoctoproject.org
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
X-Originating-Location: Kiskunhalas, Bács-Kiskun, HU (84.1.252.39)
X-Originating-Platform: Linux Firefox 73
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 12 Jan 2021 07:13:55 -0800
References: <CAGAf8LwLiKkWRawBqLMLAaBQq5Ly0rzJwvfY5yS0fLEce=sgEg@mail.gmail.com>
In-Reply-To: <CAGAf8LwLiKkWRawBqLMLAaBQq5Ly0rzJwvfY5yS0fLEce=sgEg@mail.gmail.com>
Message-ID: <27034.1610464435954411534@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="b0i3DUSo6XKjEyohFwhj"

--b0i3DUSo6XKjEyohFwhj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Intrestingly modprobe gives me a different error than insmod:
To me this means that it's gonna be a Yocto issue during bitbake.
My testing kernel module (hello word) bitbakes, and can be loaded and unlo=
aded on the hardware
root@barix-ipam400:~# modprobe /lib/modules/4.10.0/extra/cdc-ncm.ko modpro=
be: module /lib/modules/4.10.0/extra/cdc-ncm.ko not found in modules.dep ro=
ot@barix-ipam400:~# root@barix-ipam400:~# modprobe /lib/modules/4.10.0/extr=
a/cdc-wdm.ko modprobe: module /lib/modules/4.10.0/extra/cdc-wdm.ko not foun=
d in modules.dep root@barix-ipam400:~# root@barix-ipam400:~# modprobe /lib/=
modules/4.10.0/extra/h hello.ko=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 huawei_cdc_ncm.ko root@barix-ipam400:~# modprobe /lib/m=
odules/4.10.0/extra/huawei_cdc_ncm.ko modprobe: module /lib/modules/4.10.0/=
extra/huawei_cdc_ncm.ko not found in modules.dep root@barix-ipam400:~#

--
Zolee

--b0i3DUSo6XKjEyohFwhj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Intrestingly modprobe gives me a different error than insmod:<br />To me th=
is means that it's gonna be a Yocto issue during bitbake.<br />My testing k=
ernel module (hello word) bitbakes, and can be loaded and unloaded on the h=
ardware<br />
<h6>root@barix-ipam400:~# modprobe /lib/modules/4.10.0/extra/cdc-ncm.ko&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h6>
<h6>modprobe: module /lib/modules/4.10.0/extra/cdc-ncm.ko not found in mod=
ules.dep</h6>
<h6>root@barix-ipam400:~#</h6>
<h6>root@barix-ipam400:~# modprobe /lib/modules/4.10.0/extra/cdc-wdm.ko</h=
6>
<h6>modprobe: module /lib/modules/4.10.0/extra/cdc-wdm.ko not found in mod=
ules.dep</h6>
<h6>root@barix-ipam400:~#</h6>
<h6>root@barix-ipam400:~# modprobe /lib/modules/4.10.0/extra/h&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h6>
<h6>hello.ko&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; h=
uawei_cdc_ncm.ko&nbsp;</h6>
<h6>root@barix-ipam400:~# modprobe /lib/modules/4.10.0/extra/huawei_cdc_nc=
m.ko</h6>
<h6>modprobe: module /lib/modules/4.10.0/extra/huawei_cdc_ncm.ko not found=
 in modules.dep</h6>
<h6>root@barix-ipam400:~#</h6>
<br /><br />-- <br />Zolee

--b0i3DUSo6XKjEyohFwhj--
