Return-Path: <douglas.cooper1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E18DC43334
	for <webhook@archiver.kernel.org>; Wed, 29 Jun 2022 13:53:44 +0000 (UTC)
Subject: Re: LInker Errors: Cannot find crti.o/crtbeginS.o. No such file or
 directory. #honister #make #yocto
To: yocto@lists.yoctoproject.org
From: douglas.cooper1@gmail.com
X-Originating-Location: Melbourne Beach, Florida, US (97.104.72.220)
X-Originating-Platform: Windows Chrome 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 29 Jun 2022 06:53:37 -0700
References: <2459.1656510653024361971@lists.yoctoproject.org>
In-Reply-To: <2459.1656510653024361971@lists.yoctoproject.org>
Message-ID: <7356.1656510817315479506@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1Z7xaIkrHaURTWGqXaiJ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Jun 2022 13:53:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57422

--1Z7xaIkrHaURTWGqXaiJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

here is the same output using `--trace` with the LD snippet

---

echo [ LD] lib_linux_aarch64/libopal.so.3.18-beta9 ; aarch64-linaro-linux-g=
++=C2=A0 -mcpu=3Dcortex-a53 -march=3Darmv8-a+crc --sysroot=3D/home/vagrant/=
oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/ptli=
b/2.18-beta9-r0/recipe-sysroot -o /home/vagrant/oe_qcom_honister/build-cdil=
/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linu=
x_aarch64/libopal.so.3.18-beta9 -shared -Wl,--build-id,-soname,libopal.so.3=
.18-beta9 -O2 -gdwarf-4 -O2 -rdynamic -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--=
as-needed -fmacro-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tm=
p-cdil-glibc/work/cortexa53-linaro-linux/ptlib/2.18-beta9-r0=3D/usr/src/deb=
ug/ptlib/2.18-beta9-r0 -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/=
build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/ptlib/2.18-beta9-r0=
=3D/usr/src/debug/ptlib/2.18-beta9-r0 -fdebug-prefix-map=3D/home/vagrant/oe=
_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/ptlib/=
2.18-beta9-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/vagrant/oe_qcom_=
honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/ptlib/2.18-b=
eta9-r0/recipe-sysroot-native=3D -rdynamic -L/home/vagrant/oe_qcom_honister=
/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/r=
ecipe-sysroot/lib -L/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glib=
c/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/lib -L/=
home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lina=
ro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/lib/aarch64-linaro-linux/10.=
3.1 -O2 -rdynamic -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -fmacro-pr=
efix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/co=
rtexa53-linaro-linux/ptlib/2.18-beta9-r0=3D/usr/src/debug/ptlib/2.18-beta9-=
r0 -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-=
glibc/work/cortexa53-linaro-linux/ptlib/2.18-beta9-r0=3D/usr/src/debug/ptli=
b/2.18-beta9-r0 -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-c=
dil/tmp-cdil-glibc/work/cortexa53-linaro-linux/ptlib/2.18-beta9-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tm=
p-cdil-glibc/work/cortexa53-linaro-linux/ptlib/2.18-beta9-r0/recipe-sysroot=
-native=3D -rdynamic -L/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-g=
libc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/lib -L/h=
ome/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linar=
o-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/lib -L/home/vagrant/oe_qcom_h=
onister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-bet=
a9-r0/recipe-sysroot/usr/lib/aarch64-linaro-linux/10.3.1 -L/home/vagrant/oe=
_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3=
.18-beta9-r0/recipe-sysroot/lib -L/home/vagrant/oe_qcom_honister/build-cdil=
/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysro=
ot/usr/lib -L/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/=
cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/lib/aarch64-li=
naro-linux/10.3.1 /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/=
work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/ma=
nager.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/corte=
xa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/endpoint.o /=
home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lina=
ro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/connection.o /home/va=
grant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linu=
x/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/call.o /home/vagrant/oe_qcom=
_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-b=
eta9-r0/git/lib_linux_aarch64/obj/mediafmt.o /home/vagrant/oe_qcom_honister=
/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/g=
it/lib_linux_aarch64/obj/mediatype.o /home/vagrant/oe_qcom_honister/build-c=
dil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_l=
inux_aarch64/obj/mediasession.o /home/vagrant/oe_qcom_honister/build-cdil/t=
mp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_=
aarch64/obj/mediastrm.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-=
glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/=
obj/patch.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/c=
ortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/transcod=
ers.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa=
53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/transports.o /=
home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lina=
ro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/guid.o /home/vagrant/=
oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal=
/3.18-beta9-r0/git/lib_linux_aarch64/obj/rtp.o /home/vagrant/oe_qcom_honist=
er/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0=
/git/lib_linux_aarch64/obj/rtp_session.o /home/vagrant/oe_qcom_honister/bui=
ld-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/l=
ib_linux_aarch64/obj/rtp_stream.o /home/vagrant/oe_qcom_honister/build-cdil=
/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linu=
x_aarch64/obj/rtp_fec.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-=
glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/=
obj/jitter.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/=
cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/metrics=
.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-=
linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/pcapfile.o /home/=
vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-li=
nux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/rtpep.o /home/vagrant/oe_q=
com_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.1=
8-beta9-r0/git/lib_linux_aarch64/obj/rtpconn.o /home/vagrant/oe_qcom_honist=
er/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0=
/git/lib_linux_aarch64/obj/localep.o /home/vagrant/oe_qcom_honister/build-c=
dil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_l=
inux_aarch64/obj/sockep.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdi=
l-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch6=
4/obj/opal_c.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/wor=
k/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/pres_=
ent.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa=
53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/console_mgr.o =
/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lin=
aro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/recording.o /home/va=
grant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linu=
x/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/opalmixer.o /home/vagrant/oe=
_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3=
.18-beta9-r0/git/lib_linux_aarch64/obj/pcss.o /home/vagrant/oe_qcom_honiste=
r/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/=
git/lib_linux_aarch64/obj/h450pdu.o /home/vagrant/oe_qcom_honister/build-cd=
il/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_li=
nux_aarch64/obj/x880.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-g=
libc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/o=
bj/mcs.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cort=
exa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/gcc.o /home=
/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-l=
inux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h4501.o /home/vagrant/oe_=
qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.=
18-beta9-r0/git/lib_linux_aarch64/obj/h4502.o /home/vagrant/oe_qcom_honiste=
r/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/=
git/lib_linux_aarch64/obj/h4503.o /home/vagrant/oe_qcom_honister/build-cdil=
/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linu=
x_aarch64/obj/h4504.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gl=
ibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/ob=
j/h4505.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cor=
texa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h4506.o /h=
ome/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linar=
o-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h4507.o /home/vagrant/=
oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal=
/3.18-beta9-r0/git/lib_linux_aarch64/obj/h4508.o /home/vagrant/oe_qcom_honi=
ster/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-=
r0/git/lib_linux_aarch64/obj/h4509.o /home/vagrant/oe_qcom_honister/build-c=
dil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_l=
inux_aarch64/obj/h45010.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdi=
l-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch6=
4/obj/h45011.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/wor=
k/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h225_=
1.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53=
-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h225_2.o /home/v=
agrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-lin=
ux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h235.o /home/vagrant/oe_qco=
m_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-=
beta9-r0/git/lib_linux_aarch64/obj/h235_srtp.o /home/vagrant/oe_qcom_honist=
er/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0=
/git/lib_linux_aarch64/obj/h245_1.o /home/vagrant/oe_qcom_honister/build-cd=
il/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_li=
nux_aarch64/obj/h245_2.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil=
-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64=
/obj/h245_3.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h248.o=
 /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-li=
naro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h501.o /home/vagran=
t/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/op=
al/3.18-beta9-r0/git/lib_linux_aarch64/obj/h323ep.o /home/vagrant/oe_qcom_h=
onister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-bet=
a9-r0/git/lib_linux_aarch64/obj/h323.o /home/vagrant/oe_qcom_honister/build=
-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib=
_linux_aarch64/obj/h323caps.o /home/vagrant/oe_qcom_honister/build-cdil/tmp=
-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aa=
rch64/obj/h323neg.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glib=
c/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/=
h323pdu.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cor=
texa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h323rtp.o =
/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lin=
aro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/channels.o /home/vag=
rant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux=
/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/svcctrl.o /home/vagrant/oe_qc=
om_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18=
-beta9-r0/git/lib_linux_aarch64/obj/q931.o /home/vagrant/oe_qcom_honister/b=
uild-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git=
/lib_linux_aarch64/obj/transaddr.o /home/vagrant/oe_qcom_honister/build-cdi=
l/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_lin=
ux_aarch64/obj/gkclient.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdi=
l-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch6=
4/obj/gkserver.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/w=
ork/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h22=
5ras.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortex=
a53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h323trans.o /=
home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lina=
ro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h235auth.o /home/vagr=
ant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/=
opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h501pdu.o /home/vagrant/oe_qco=
m_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-=
beta9-r0/git/lib_linux_aarch64/obj/h323annexg.o /home/vagrant/oe_qcom_honis=
ter/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r=
0/git/lib_linux_aarch64/obj/peclient.o /home/vagrant/oe_qcom_honister/build=
-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib=
_linux_aarch64/obj/h4601.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cd=
il-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch=
64/obj/h46018.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/wo=
rk/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h460=
19.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h4609.o /home/v=
agrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-lin=
ux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h460p.o /home/vagrant/oe_qc=
om_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18=
-beta9-r0/git/lib_linux_aarch64/obj/h460pres.o /home/vagrant/oe_qcom_honist=
er/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0=
/git/lib_linux_aarch64/obj/h460tm.o /home/vagrant/oe_qcom_honister/build-cd=
il/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_li=
nux_aarch64/obj/h46024b.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdi=
l-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch6=
4/obj/h460_std18.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc=
/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h=
460_std19.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/c=
ortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h460_std=
23.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h460_std24.o /h=
ome/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linar=
o-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h235auth1.o /home/vagr=
ant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/=
opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h323t38.o /home/vagrant/oe_qco=
m_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-=
beta9-r0/git/lib_linux_aarch64/obj/h323h224.o /home/vagrant/oe_qcom_honiste=
r/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/=
git/lib_linux_aarch64/obj/h235dh.o /home/vagrant/oe_qcom_honister/build-cdi=
l/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_lin=
ux_aarch64/obj/h235_session.o /home/vagrant/oe_qcom_honister/build-cdil/tmp=
-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aa=
rch64/obj/callprocessor.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdi=
l-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch6=
4/obj/frame.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/iax2co=
n.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53=
-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/iax2ep.o /home/v=
agrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-lin=
ux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/iax2medstrm.o /home/vagrant=
/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opa=
l/3.18-beta9-r0/git/lib_linux_aarch64/obj/iedata.o /home/vagrant/oe_qcom_ho=
nister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta=
9-r0/git/lib_linux_aarch64/obj/ies.o /home/vagrant/oe_qcom_honister/build-c=
dil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_l=
inux_aarch64/obj/processor.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-=
cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aar=
ch64/obj/receiver.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glib=
c/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/=
regprocessor.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/wor=
k/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/remot=
e.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53=
-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/safestrings.o /h=
ome/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linar=
o-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/sound.o /home/vagrant/=
oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal=
/3.18-beta9-r0/git/lib_linux_aarch64/obj/specialprocessor.o /home/vagrant/o=
e_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/=
3.18-beta9-r0/git/lib_linux_aarch64/obj/transmit.o /home/vagrant/oe_qcom_ho=
nister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta=
9-r0/git/lib_linux_aarch64/obj/sdpep.o /home/vagrant/oe_qcom_honister/build=
-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib=
_linux_aarch64/obj/sdphttpep.o /home/vagrant/oe_qcom_honister/build-cdil/tm=
p-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_a=
arch64/obj/sdp.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/w=
ork/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/ice=
.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-=
linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/sipt38.o /home/va=
grant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linu=
x/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/sipep.o /home/vagrant/oe_qco=
m_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-=
beta9-r0/git/lib_linux_aarch64/obj/sipcon.o /home/vagrant/oe_qcom_honister/=
build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/gi=
t/lib_linux_aarch64/obj/sippdu.o /home/vagrant/oe_qcom_honister/build-cdil/=
tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux=
_aarch64/obj/handlers.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-=
glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/=
obj/sippres.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/skinny=
ep.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/lid.o /home/vag=
rant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux=
/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/lidep.o /home/vagrant/oe_qcom=
_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-b=
eta9-r0/git/lib_linux_aarch64/obj/lidpluginmgr.o /home/vagrant/oe_qcom_honi=
ster/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-=
r0/git/lib_linux_aarch64/obj/srtp_session.o /home/vagrant/oe_qcom_honister/=
build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/gi=
t/lib_linux_aarch64/obj/dtls_srtp_session.o /home/vagrant/oe_qcom_honister/=
build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/gi=
t/lib_linux_aarch64/obj/t140.o /home/vagrant/oe_qcom_honister/build-cdil/tm=
p-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_a=
arch64/obj/im_mf.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc=
/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/r=
fc4103.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cort=
exa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/msrp.o /hom=
e/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-=
linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/sipim.o /home/vagrant/oe=
_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3=
.18-beta9-r0/git/lib_linux_aarch64/obj/g711codec.o /home/vagrant/oe_qcom_ho=
nister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta=
9-r0/git/lib_linux_aarch64/obj/g711.o /home/vagrant/oe_qcom_honister/build-=
cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_=
linux_aarch64/obj/g722mf.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cd=
il-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch=
64/obj/g7221mf.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/w=
ork/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/g72=
22mf.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortex=
a53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/g7231mf.o /ho=
me/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro=
-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/g726mf.o /home/vagrant/=
oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal=
/3.18-beta9-r0/git/lib_linux_aarch64/obj/g728mf.o /home/vagrant/oe_qcom_hon=
ister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9=
-r0/git/lib_linux_aarch64/obj/g729mf.o /home/vagrant/oe_qcom_honister/build=
-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib=
_linux_aarch64/obj/gsm0610mf.o /home/vagrant/oe_qcom_honister/build-cdil/tm=
p-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_a=
arch64/obj/gsmamrmf.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gl=
ibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/ob=
j/iLBCmf.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/co=
rtexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/speexmf.o=
 /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-li=
naro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/opusmf.o /home/vagr=
ant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/=
opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/t38mf.o /home/vagrant/oe_qcom_=
honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-be=
ta9-r0/git/lib_linux_aarch64/obj/rfc2833.o /home/vagrant/oe_qcom_honister/b=
uild-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git=
/lib_linux_aarch64/obj/opalwavfile.o /home/vagrant/oe_qcom_honister/build-c=
dil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_l=
inux_aarch64/obj/silencedetect.o /home/vagrant/oe_qcom_honister/build-cdil/=
tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux=
_aarch64/obj/opalpluginmgr.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-=
cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aar=
ch64/obj/g711a1_plc.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gl=
ibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/ob=
j/echocancel.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/wor=
k/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/q922.=
o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-l=
inaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h224.o /home/vagra=
nt/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/o=
pal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h281.o /home/vagrant/oe_qcom_ho=
nister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta=
9-r0/git/lib_linux_aarch64/obj/t38proto.o /home/vagrant/oe_qcom_honister/bu=
ild-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/=
lib_linux_aarch64/obj/t38.o -L/home/vagrant/oe_qcom_honister/build-cdil/tmp=
-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/u=
sr/src/ptlib/lib_linux_aarch64 -lpt -ldl -lssl -lcrypto -lresolv -lrt -lspe=
exdsp -lsrtp2

--1Z7xaIkrHaURTWGqXaiJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

here is the same output using `--trace` with the LD snippet<br /><br />---<=
br /><br />echo [ LD] lib_linux_aarch64/libopal.so.3.18-beta9 ; aarch64-lin=
aro-linux-g++&nbsp; -mcpu=3Dcortex-a53 -march=3Darmv8-a+crc --sysroot=3D/ho=
me/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro=
-linux/ptlib/2.18-beta9-r0/recipe-sysroot -o /home/vagrant/oe_qcom_honister=
/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/g=
it/lib_linux_aarch64/libopal.so.3.18-beta9 -shared -Wl,--build-id,-soname,l=
ibopal.so.3.18-beta9 -O2 -gdwarf-4 -O2 -rdynamic -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--as-needed -fmacro-prefix-map=3D/home/vagrant/oe_qcom_honister/=
build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/ptlib/2.18-beta9-r0=
=3D/usr/src/debug/ptlib/2.18-beta9-r0 -fdebug-prefix-map=3D/home/vagrant/oe=
_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/ptlib/=
2.18-beta9-r0=3D/usr/src/debug/ptlib/2.18-beta9-r0 -fdebug-prefix-map=3D/ho=
me/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro=
-linux/ptlib/2.18-beta9-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/vag=
rant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux=
/ptlib/2.18-beta9-r0/recipe-sysroot-native=3D -rdynamic -L/home/vagrant/oe_=
qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.=
18-beta9-r0/recipe-sysroot/lib -L/home/vagrant/oe_qcom_honister/build-cdil/=
tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroo=
t/usr/lib -L/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/c=
ortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/lib/aarch64-lin=
aro-linux/10.3.1 -O2 -rdynamic -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-need=
ed -fmacro-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-=
glibc/work/cortexa53-linaro-linux/ptlib/2.18-beta9-r0=3D/usr/src/debug/ptli=
b/2.18-beta9-r0 -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-c=
dil/tmp-cdil-glibc/work/cortexa53-linaro-linux/ptlib/2.18-beta9-r0=3D/usr/s=
rc/debug/ptlib/2.18-beta9-r0 -fdebug-prefix-map=3D/home/vagrant/oe_qcom_hon=
ister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/ptlib/2.18-beta=
9-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/=
build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/ptlib/2.18-beta9-r0/r=
ecipe-sysroot-native=3D -rdynamic -L/home/vagrant/oe_qcom_honister/build-cd=
il/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sys=
root/lib -L/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/co=
rtexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/lib -L/home/vagr=
ant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/=
opal/3.18-beta9-r0/recipe-sysroot/usr/lib/aarch64-linaro-linux/10.3.1 -L/ho=
me/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro=
-linux/opal/3.18-beta9-r0/recipe-sysroot/lib -L/home/vagrant/oe_qcom_honist=
er/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0=
/recipe-sysroot/usr/lib -L/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdi=
l-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/l=
ib/aarch64-linaro-linux/10.3.1 /home/vagrant/oe_qcom_honister/build-cdil/tm=
p-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_a=
arch64/obj/manager.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gli=
bc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj=
/endpoint.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/c=
ortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/connecti=
on.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/call.o /home/va=
grant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linu=
x/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/mediafmt.o /home/vagrant/oe_=
qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.=
18-beta9-r0/git/lib_linux_aarch64/obj/mediatype.o /home/vagrant/oe_qcom_hon=
ister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9=
-r0/git/lib_linux_aarch64/obj/mediasession.o /home/vagrant/oe_qcom_honister=
/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/g=
it/lib_linux_aarch64/obj/mediastrm.o /home/vagrant/oe_qcom_honister/build-c=
dil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_l=
inux_aarch64/obj/patch.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil=
-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64=
/obj/transcoders.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc=
/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/t=
ransports.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/c=
ortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/guid.o /=
home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lina=
ro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/rtp.o /home/vagrant/o=
e_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/=
3.18-beta9-r0/git/lib_linux_aarch64/obj/rtp_session.o /home/vagrant/oe_qcom=
_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-b=
eta9-r0/git/lib_linux_aarch64/obj/rtp_stream.o /home/vagrant/oe_qcom_honist=
er/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0=
/git/lib_linux_aarch64/obj/rtp_fec.o /home/vagrant/oe_qcom_honister/build-c=
dil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_l=
inux_aarch64/obj/jitter.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdi=
l-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch6=
4/obj/metrics.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/wo=
rk/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/pcap=
file.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortex=
a53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/rtpep.o /home=
/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-l=
inux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/rtpconn.o /home/vagrant/o=
e_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/=
3.18-beta9-r0/git/lib_linux_aarch64/obj/localep.o /home/vagrant/oe_qcom_hon=
ister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9=
-r0/git/lib_linux_aarch64/obj/sockep.o /home/vagrant/oe_qcom_honister/build=
-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib=
_linux_aarch64/obj/opal_c.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-c=
dil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarc=
h64/obj/pres_ent.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc=
/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/c=
onsole_mgr.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/=
cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/recordi=
ng.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/opalmixer.o /ho=
me/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro=
-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/pcss.o /home/vagrant/oe=
_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3=
.18-beta9-r0/git/lib_linux_aarch64/obj/h450pdu.o /home/vagrant/oe_qcom_honi=
ster/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-=
r0/git/lib_linux_aarch64/obj/x880.o /home/vagrant/oe_qcom_honister/build-cd=
il/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_li=
nux_aarch64/obj/mcs.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gl=
ibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/ob=
j/gcc.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/corte=
xa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h4501.o /hom=
e/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-=
linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h4502.o /home/vagrant/oe=
_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3=
.18-beta9-r0/git/lib_linux_aarch64/obj/h4503.o /home/vagrant/oe_qcom_honist=
er/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0=
/git/lib_linux_aarch64/obj/h4504.o /home/vagrant/oe_qcom_honister/build-cdi=
l/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_lin=
ux_aarch64/obj/h4505.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-g=
libc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/o=
bj/h4506.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/co=
rtexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h4507.o /=
home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lina=
ro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h4508.o /home/vagrant=
/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opa=
l/3.18-beta9-r0/git/lib_linux_aarch64/obj/h4509.o /home/vagrant/oe_qcom_hon=
ister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9=
-r0/git/lib_linux_aarch64/obj/h45010.o /home/vagrant/oe_qcom_honister/build=
-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib=
_linux_aarch64/obj/h45011.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-c=
dil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarc=
h64/obj/h225_1.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/w=
ork/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h22=
5_2.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa=
53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h235.o /home/v=
agrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-lin=
ux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h235_srtp.o /home/vagrant/o=
e_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/=
3.18-beta9-r0/git/lib_linux_aarch64/obj/h245_1.o /home/vagrant/oe_qcom_honi=
ster/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-=
r0/git/lib_linux_aarch64/obj/h245_2.o /home/vagrant/oe_qcom_honister/build-=
cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_=
linux_aarch64/obj/h245_3.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cd=
il-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch=
64/obj/h248.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h501.o=
 /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-li=
naro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h323ep.o /home/vagr=
ant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/=
opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h323.o /home/vagrant/oe_qcom_h=
onister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-bet=
a9-r0/git/lib_linux_aarch64/obj/h323caps.o /home/vagrant/oe_qcom_honister/b=
uild-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git=
/lib_linux_aarch64/obj/h323neg.o /home/vagrant/oe_qcom_honister/build-cdil/=
tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux=
_aarch64/obj/h323pdu.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-g=
libc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/o=
bj/h323rtp.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/=
cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/channel=
s.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53=
-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/svcctrl.o /home/=
vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-li=
nux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/q931.o /home/vagrant/oe_qc=
om_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18=
-beta9-r0/git/lib_linux_aarch64/obj/transaddr.o /home/vagrant/oe_qcom_honis=
ter/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r=
0/git/lib_linux_aarch64/obj/gkclient.o /home/vagrant/oe_qcom_honister/build=
-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib=
_linux_aarch64/obj/gkserver.o /home/vagrant/oe_qcom_honister/build-cdil/tmp=
-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aa=
rch64/obj/h225ras.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glib=
c/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/=
h323trans.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/c=
ortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h235auth=
.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-=
linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h501pdu.o /home/v=
agrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-lin=
ux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h323annexg.o /home/vagrant/=
oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal=
/3.18-beta9-r0/git/lib_linux_aarch64/obj/peclient.o /home/vagrant/oe_qcom_h=
onister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-bet=
a9-r0/git/lib_linux_aarch64/obj/h4601.o /home/vagrant/oe_qcom_honister/buil=
d-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/li=
b_linux_aarch64/obj/h46018.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-=
cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aar=
ch64/obj/h46019.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/=
work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h4=
609.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa=
53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h460p.o /home/=
vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-li=
nux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h460pres.o /home/vagrant/o=
e_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/=
3.18-beta9-r0/git/lib_linux_aarch64/obj/h460tm.o /home/vagrant/oe_qcom_honi=
ster/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-=
r0/git/lib_linux_aarch64/obj/h46024b.o /home/vagrant/oe_qcom_honister/build=
-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib=
_linux_aarch64/obj/h460_std18.o /home/vagrant/oe_qcom_honister/build-cdil/t=
mp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_=
aarch64/obj/h460_std19.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil=
-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64=
/obj/h460_std23.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/=
work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h4=
60_std24.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/co=
rtexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h235auth1=
.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-=
linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h323t38.o /home/v=
agrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-lin=
ux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h323h224.o /home/vagrant/oe=
_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3=
.18-beta9-r0/git/lib_linux_aarch64/obj/h235dh.o /home/vagrant/oe_qcom_honis=
ter/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r=
0/git/lib_linux_aarch64/obj/h235_session.o /home/vagrant/oe_qcom_honister/b=
uild-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git=
/lib_linux_aarch64/obj/callprocessor.o /home/vagrant/oe_qcom_honister/build=
-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib=
_linux_aarch64/obj/frame.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cd=
il-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch=
64/obj/iax2con.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/w=
ork/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/iax=
2ep.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa=
53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/iax2medstrm.o =
/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lin=
aro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/iedata.o /home/vagra=
nt/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/o=
pal/3.18-beta9-r0/git/lib_linux_aarch64/obj/ies.o /home/vagrant/oe_qcom_hon=
ister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9=
-r0/git/lib_linux_aarch64/obj/processor.o /home/vagrant/oe_qcom_honister/bu=
ild-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/=
lib_linux_aarch64/obj/receiver.o /home/vagrant/oe_qcom_honister/build-cdil/=
tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux=
_aarch64/obj/regprocessor.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-c=
dil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarc=
h64/obj/remote.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/w=
ork/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/saf=
estrings.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/co=
rtexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/sound.o /=
home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lina=
ro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/specialprocessor.o /h=
ome/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linar=
o-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/transmit.o /home/vagra=
nt/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/o=
pal/3.18-beta9-r0/git/lib_linux_aarch64/obj/sdpep.o /home/vagrant/oe_qcom_h=
onister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-bet=
a9-r0/git/lib_linux_aarch64/obj/sdphttpep.o /home/vagrant/oe_qcom_honister/=
build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/gi=
t/lib_linux_aarch64/obj/sdp.o /home/vagrant/oe_qcom_honister/build-cdil/tmp=
-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aa=
rch64/obj/ice.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/wo=
rk/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/sipt=
38.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/sipep.o /home/v=
agrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-lin=
ux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/sipcon.o /home/vagrant/oe_q=
com_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.1=
8-beta9-r0/git/lib_linux_aarch64/obj/sippdu.o /home/vagrant/oe_qcom_honiste=
r/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/=
git/lib_linux_aarch64/obj/handlers.o /home/vagrant/oe_qcom_honister/build-c=
dil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_l=
inux_aarch64/obj/sippres.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cd=
il-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch=
64/obj/skinnyep.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/=
work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/li=
d.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53=
-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/lidep.o /home/va=
grant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linu=
x/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/lidpluginmgr.o /home/vagrant=
/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opa=
l/3.18-beta9-r0/git/lib_linux_aarch64/obj/srtp_session.o /home/vagrant/oe_q=
com_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.1=
8-beta9-r0/git/lib_linux_aarch64/obj/dtls_srtp_session.o /home/vagrant/oe_q=
com_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.1=
8-beta9-r0/git/lib_linux_aarch64/obj/t140.o /home/vagrant/oe_qcom_honister/=
build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/gi=
t/lib_linux_aarch64/obj/im_mf.o /home/vagrant/oe_qcom_honister/build-cdil/t=
mp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_=
aarch64/obj/rfc4103.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gl=
ibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/ob=
j/msrp.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cort=
exa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/sipim.o /ho=
me/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro=
-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/g711codec.o /home/vagra=
nt/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/o=
pal/3.18-beta9-r0/git/lib_linux_aarch64/obj/g711.o /home/vagrant/oe_qcom_ho=
nister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta=
9-r0/git/lib_linux_aarch64/obj/g722mf.o /home/vagrant/oe_qcom_honister/buil=
d-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/li=
b_linux_aarch64/obj/g7221mf.o /home/vagrant/oe_qcom_honister/build-cdil/tmp=
-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aa=
rch64/obj/g7222mf.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glib=
c/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/=
g7231mf.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cor=
texa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/g726mf.o /=
home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lina=
ro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/g728mf.o /home/vagran=
t/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/op=
al/3.18-beta9-r0/git/lib_linux_aarch64/obj/g729mf.o /home/vagrant/oe_qcom_h=
onister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-bet=
a9-r0/git/lib_linux_aarch64/obj/gsm0610mf.o /home/vagrant/oe_qcom_honister/=
build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/gi=
t/lib_linux_aarch64/obj/gsmamrmf.o /home/vagrant/oe_qcom_honister/build-cdi=
l/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_lin=
ux_aarch64/obj/iLBCmf.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-=
glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/=
obj/speexmf.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/opusmf=
.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-=
linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/t38mf.o /home/vag=
rant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux=
/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/rfc2833.o /home/vagrant/oe_qc=
om_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18=
-beta9-r0/git/lib_linux_aarch64/obj/opalwavfile.o /home/vagrant/oe_qcom_hon=
ister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9=
-r0/git/lib_linux_aarch64/obj/silencedetect.o /home/vagrant/oe_qcom_honiste=
r/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/=
git/lib_linux_aarch64/obj/opalpluginmgr.o /home/vagrant/oe_qcom_honister/bu=
ild-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/=
lib_linux_aarch64/obj/g711a1_plc.o /home/vagrant/oe_qcom_honister/build-cdi=
l/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_lin=
ux_aarch64/obj/echocancel.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-c=
dil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarc=
h64/obj/q922.o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/wor=
k/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h224.=
o /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-l=
inaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/obj/h281.o /home/vagra=
nt/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/o=
pal/3.18-beta9-r0/git/lib_linux_aarch64/obj/t38proto.o /home/vagrant/oe_qco=
m_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-=
beta9-r0/git/lib_linux_aarch64/obj/t38.o -L/home/vagrant/oe_qcom_honister/b=
uild-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/rec=
ipe-sysroot/usr/src/ptlib/lib_linux_aarch64 -lpt -ldl -lssl -lcrypto -lreso=
lv -lrt -lspeexdsp -lsrtp2

--1Z7xaIkrHaURTWGqXaiJ--

