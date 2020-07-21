Subject: Building of warrior branch fails when building with Ubuntu 20.04 LTS #qemu #yocto #linux
To: yocto@lists.yoctoproject.org
From: "Bernd" <bsp@swissqprint.com>
X-Originating-Location: Grabs, Saint Gallen, CH (146.185.0.170)
X-Originating-Platform: Windows Firefox 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 21 Jul 2020 00:07:07 -0700
Message-ID: <vwp4.1595315227497297738.rdls@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1CrgHsFD5Gon700c8fiV"

--1CrgHsFD5Gon700c8fiV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello ,

we are using the warrior branch for our embedded Linux project. Since Ubun=
tu 20.04 LTS has been released we would like to switch from 18.04 to 20.04.=
 However, Ubuntu 20.04 now uses glibc-2.31 where the stime function has bee=
n replaced. Therefore the build process of qmu-native-3.1.1.1 fails with th=
e following error code:

/opt/ti/tq-yocto/build/tmp/hosttools/ld.bfd: linux-user/syscall.o: in func=
tion `do_syscall1': | /opt/ti/tq-yocto/build/tmp/work/x86_64-linux/qemu-nat=
ive/3.1.1.1-r0/qemu-3.1.1.1/linux-user/syscall.c:7404: undefined reference =
to `stime'

Is there a work around?

Thanks a lot for your help,
Bernd

--1CrgHsFD5Gon700c8fiV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"margin-left: 30.0px;"><span>Hello</span><span></span>,<br /><br=
 />we are using the warrior branch for our embedded Linux project. Since Ub=
untu 20.04 LTS has been released we would like to switch from 18.04 to 20.0=
4. However, Ubuntu 20.04 now uses glibc-2.31 where the stime function has b=
een replaced. Therefore the build process of qmu-native-3.1.1.1 fails with =
the following error code:<br /><br />/opt/ti/tq-yocto/build/tmp/hosttools/l=
d.bfd: linux-user/syscall.o: in function `do_syscall1': | /opt/ti/tq-yocto/=
build/tmp/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.1.1/linux-user/=
syscall.c:7404: undefined reference to `stime'<br /><br />Is there a work a=
round?<br /><br />Thanks a lot for your help,<br />Bernd</p>

--1CrgHsFD5Gon700c8fiV--
