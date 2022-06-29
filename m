Return-Path: <douglas.cooper1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1583C43334
	for <webhook@archiver.kernel.org>; Wed, 29 Jun 2022 13:50:54 +0000 (UTC)
Subject: Re: LInker Errors: Cannot find crti.o/crtbeginS.o. No such file or
 directory. #honister #make #yocto
To: yocto@lists.yoctoproject.org
From: douglas.cooper1@gmail.com
X-Originating-Location: Melbourne Beach, Florida, US (97.104.72.220)
X-Originating-Platform: Windows Chrome 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 29 Jun 2022 06:50:53 -0700
References: 
 <CAMKF1srGpVe-0i=BX9_9Ff1NCe1PphGohA50QjOROr=B-RToZw@mail.gmail.com>
In-Reply-To: 
 <CAMKF1srGpVe-0i=BX9_9Ff1NCe1PphGohA50QjOROr=B-RToZw@mail.gmail.com>
Message-ID: <2459.1656510653024361971@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="A4jkzmB59fEYi2pl8YXu"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Jun 2022 13:50:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57420

--A4jkzmB59fEYi2pl8YXu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

DEBUG: Executing python function autotools_aclocals
DEBUG: SITE files ['endian-little', 'bit-64', 'arm-common', 'arm-64', 'comm=
on-linux', 'common-glibc', 'aarch64-linux', 'common']
DEBUG: Python function autotools_aclocals finished
DEBUG: Executing shell function do_compile
NOTE: make -j 8
make[1]: Entering directory '/home/vagrant/oe_qcom_honister/build-cdil/tmp-=
cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git'
[DEP] src/h224/h281.cxx
[DEP] src/t38/t38proto.cxx
[DEP] src/h224/h224.cxx
[DEP] src/asn/t38.cxx
[DEP] src/h224/q922.cxx
[DEP] src/codec/echocancel.cxx
[DEP] src/codec/g711a1_plc.cxx
[DEP] src/codec/opalpluginmgr.cxx
[DEP] src/codec/opalwavfile.cxx
[DEP] src/codec/silencedetect.cxx
[DEP] src/codec/rfc2833.cxx
[DEP] src/t38/t38mf.cxx
[DEP] src/codec/opusmf.cxx
[DEP] src/codec/speexmf.cxx
[DEP] src/codec/iLBCmf.cxx
[DEP] src/codec/gsmamrmf.cxx
[DEP] src/codec/gsm0610mf.cxx
[DEP] src/codec/g729mf.cxx
[DEP] src/codec/g728mf.cxx
[DEP] src/codec/g726mf.cxx
[DEP] src/codec/g7231mf.cxx
[DEP] src/codec/g7222mf.cxx
[DEP] src/codec/g7221mf.cxx
[DEP] src/codec/g722mf.cxx
[DEP] src/codec/g711.c
[DEP] src/codec/g711codec.cxx
[DEP] src/im/sipim.cxx
[DEP] src/im/msrp.cxx
[DEP] src/im/rfc4103.cxx
[DEP] src/im/im_mf.cxx
[DEP] src/im/t140.cxx
[DEP] src/rtp/dtls_srtp_session.cpp
[DEP] src/rtp/srtp_session.cxx
[DEP] src/lids/lidpluginmgr.cxx
[DEP] src/lids/lidep.cxx
[DEP] src/lids/lid.cxx
[DEP] src/ep/skinnyep.cxx
[DEP] src/sip/sippres.cxx
[DEP] src/sip/handlers.cxx
[DEP] src/sip/sippdu.cxx
[DEP] src/sip/sipcon.cxx
[DEP] src/sip/sipep.cxx
[DEP] src/t38/sipt38.cxx
[DEP] src/sdp/ice.cxx
[DEP] src/sdp/sdp.cxx
[DEP] src/sdp/sdphttpep.cxx
[DEP] src/sdp/sdpep.cxx
[DEP] src/iax2/transmit.cxx
[DEP] src/iax2/specialprocessor.cxx
[DEP] src/iax2/sound.cxx
[DEP] src/iax2/safestrings.cxx
[DEP] src/iax2/remote.cxx
[DEP] src/iax2/regprocessor.cxx
[DEP] src/iax2/receiver.cxx
[DEP] src/iax2/processor.cxx
[DEP] src/iax2/ies.cxx
[DEP] src/iax2/iedata.cxx
[DEP] src/iax2/iax2medstrm.cxx
[DEP] src/iax2/iax2ep.cxx
[DEP] src/iax2/iax2con.cxx
[DEP] src/iax2/frame.cxx
[DEP] src/iax2/callprocessor.cxx
[DEP] src/rtp/h235_session.cxx
[DEP] src/h323/h235dh.cxx
[DEP] src/h224/h323h224.cxx
[DEP] src/t38/h323t38.cxx
[DEP] src/h323/h235auth1.cxx
[DEP] src/h460/h460_std24.cxx
[DEP] src/h460/h460_std23.cxx
[DEP] src/h460/h460_std19.cxx
[DEP] src/h460/h460_std18.cxx
[DEP] src/h460/h46024b.cxx
[DEP] src/h460/h460tm.cxx
[DEP] src/h460/h460pres.cxx
[DEP] src/h460/h460p.cxx
[DEP] src/h460/h4609.cxx
[DEP] src/h460/h46019.cxx
[DEP] src/h460/h46018.cxx
[DEP] src/h460/h4601.cxx
[DEP] src/h323/peclient.cxx
[DEP] src/h323/h323annexg.cxx
[DEP] src/h323/h501pdu.cxx
[DEP] src/h323/h235auth.cxx
[DEP] src/h323/h323trans.cxx
[DEP] src/h323/h225ras.cxx
[DEP] src/h323/gkserver.cxx
[DEP] src/h323/gkclient.cxx
[DEP] src/h323/transaddr.cxx
[DEP] src/h323/q931.cxx
[DEP] src/h323/svcctrl.cxx
[DEP] src/h323/channels.cxx
[DEP] src/h323/h323rtp.cxx
[DEP] src/h323/h323pdu.cxx
[DEP] src/h323/h323neg.cxx
[DEP] src/h323/h323caps.cxx
[DEP] src/h323/h323.cxx
[DEP] src/h323/h323ep.cxx
[DEP] src/asn/h501.cxx
[DEP] src/asn/h248.cxx
[DEP] src/asn/h245_3.cxx
[DEP] src/asn/h245_2.cxx
[DEP] src/asn/h245_1.cxx
[DEP] src/asn/h235_srtp.cxx
[DEP] src/asn/h235.cxx
[DEP] src/asn/h225_2.cxx
[DEP] src/asn/h225_1.cxx
[DEP] src/asn/h45011.cxx
[DEP] src/asn/h45010.cxx
[DEP] src/asn/h4509.cxx
[DEP] src/asn/h4508.cxx
[DEP] src/asn/h4507.cxx
[DEP] src/asn/h4506.cxx
[DEP] src/asn/h4505.cxx
[DEP] src/asn/h4504.cxx
[DEP] src/asn/h4503.cxx
[DEP] src/asn/h4502.cxx
[DEP] src/asn/h4501.cxx
[DEP] src/asn/gcc.cxx
[DEP] src/asn/mcs.cxx
[DEP] src/asn/x880.cxx
[DEP] src/h323/h450pdu.cxx
[DEP] src/ep/pcss.cxx
[DEP] src/ep/opalmixer.cxx
[DEP] src/opal/recording.cxx
[DEP] src/opal/console_mgr.cxx
[DEP] src/opal/pres_ent.cxx
[DEP] src/opal/opal_c.cxx
[DEP] src/ep/sockep.cxx
[DEP] src/ep/localep.cxx
[DEP] src/rtp/rtpconn.cxx
[DEP] src/rtp/rtpep.cxx
[DEP] src/rtp/pcapfile.cxx
[DEP] src/rtp/metrics.cxx
[DEP] src/rtp/jitter.cxx
[DEP] src/rtp/rtp_fec.cxx
[DEP] src/rtp/rtp_stream.cxx
[DEP] src/rtp/rtp_session.cxx
[DEP] src/rtp/rtp.cxx
[DEP] src/opal/guid.cxx
[DEP] src/opal/transports.cxx
[DEP] src/opal/transcoders.cxx
[DEP] src/opal/patch.cxx
[DEP] src/opal/mediastrm.cxx
[DEP] src/opal/mediasession.cxx
[DEP] src/opal/mediatype.cxx
[DEP] src/opal/mediafmt.cxx
[DEP] src/opal/call.cxx
[DEP] src/opal/connection.cxx
[DEP] src/opal/endpoint.cxx
[DEP] src/opal/manager.cxx
[CXX] src/opal/manager.cxx
[CXX] src/opal/endpoint.cxx
[CXX] src/opal/connection.cxx
[CXX] src/opal/call.cxx
[CXX] src/opal/mediafmt.cxx
[CXX] src/opal/mediatype.cxx
[CXX] src/opal/mediasession.cxx
[CXX] src/opal/mediastrm.cxx
[CXX] src/opal/patch.cxx
[CXX] src/opal/transcoders.cxx
[CXX] src/opal/transports.cxx
[CXX] src/opal/guid.cxx
[CXX] src/rtp/rtp.cxx
[CXX] src/rtp/rtp_session.cxx
[CXX] src/rtp/rtp_stream.cxx
[CXX] src/rtp/rtp_fec.cxx
[CXX] src/rtp/jitter.cxx
[CXX] src/rtp/metrics.cxx
[CXX] src/rtp/pcapfile.cxx
[CXX] src/rtp/rtpep.cxx
[CXX] src/rtp/rtpconn.cxx
[CXX] src/ep/localep.cxx
[CXX] src/ep/sockep.cxx
[CXX] src/opal/opal_c.cxx
[CXX] src/opal/pres_ent.cxx
[CXX] src/opal/console_mgr.cxx
[CXX] src/opal/recording.cxx
[CXX] src/ep/opalmixer.cxx
[CXX] src/ep/pcss.cxx
[CXX] src/h323/h450pdu.cxx
[CXX] src/asn/x880.cxx
[CXX] src/asn/mcs.cxx
[CXX] src/asn/gcc.cxx
[CXX] src/asn/h4501.cxx
[CXX] src/asn/h4502.cxx
[CXX] src/asn/h4503.cxx
[CXX] src/asn/h4504.cxx
[CXX] src/asn/h4505.cxx
[CXX] src/asn/h4506.cxx
[CXX] src/asn/h4507.cxx
[CXX] src/asn/h4508.cxx
[CXX] src/asn/h4509.cxx
[CXX] src/asn/h45010.cxx
[CXX] src/asn/h45011.cxx
[CXX] src/asn/h225_1.cxx
[CXX] src/asn/h225_2.cxx
[CXX] src/asn/h235.cxx
[CXX] src/asn/h235_srtp.cxx
[CXX] src/asn/h245_1.cxx
[CXX] src/asn/h245_2.cxx
[CXX] src/asn/h245_3.cxx
[CXX] src/asn/h248.cxx
[CXX] src/asn/h501.cxx
[CXX] src/h323/h323ep.cxx
[CXX] src/h323/h323.cxx
[CXX] src/h323/h323caps.cxx
[CXX] src/h323/h323neg.cxx
[CXX] src/h323/h323pdu.cxx
[CXX] src/h323/h323rtp.cxx
[CXX] src/h323/channels.cxx
[CXX] src/h323/svcctrl.cxx
[CXX] src/h323/q931.cxx
[CXX] src/h323/transaddr.cxx
[CXX] src/h323/gkclient.cxx
[CXX] src/h323/gkserver.cxx
[CXX] src/h323/h225ras.cxx
[CXX] src/h323/h323trans.cxx
[CXX] src/h323/h235auth.cxx
[CXX] src/h323/h501pdu.cxx
[CXX] src/h323/h323annexg.cxx
[CXX] src/h323/peclient.cxx
[CXX] src/h460/h4601.cxx
[CXX] src/h460/h46018.cxx
[CXX] src/h460/h46019.cxx
[CXX] src/h460/h4609.cxx
[CXX] src/h460/h460p.cxx
[CXX] src/h460/h460pres.cxx
[CXX] src/h460/h460tm.cxx
[CXX] src/h460/h46024b.cxx
[CXX] src/h460/h460_std18.cxx
[CXX] src/h460/h460_std19.cxx
[CXX] src/h460/h460_std23.cxx
[CXX] src/h460/h460_std24.cxx
[CXX] src/h323/h235auth1.cxx
[CXX] src/t38/h323t38.cxx
[CXX] src/h224/h323h224.cxx
[CXX] src/h323/h235dh.cxx
[CXX] src/rtp/h235_session.cxx
[CXX] src/iax2/callprocessor.cxx
[CXX] src/iax2/frame.cxx
[CXX] src/iax2/iax2con.cxx
[CXX] src/iax2/iax2ep.cxx
[CXX] src/iax2/iax2medstrm.cxx
[CXX] src/iax2/iedata.cxx
[CXX] src/iax2/ies.cxx
[CXX] src/iax2/processor.cxx
[CXX] src/iax2/receiver.cxx
[CXX] src/iax2/regprocessor.cxx
[CXX] src/iax2/remote.cxx
[CXX] src/iax2/safestrings.cxx
[CXX] src/iax2/sound.cxx
[CXX] src/iax2/specialprocessor.cxx
[CXX] src/iax2/transmit.cxx
[CXX] src/sdp/sdpep.cxx
[CXX] src/sdp/sdphttpep.cxx
[CXX] src/sdp/sdp.cxx
[CXX] src/sdp/ice.cxx
[CXX] src/t38/sipt38.cxx
[CXX] src/sip/sipep.cxx
[CXX] src/sip/sipcon.cxx
[CXX] src/sip/sippdu.cxx
[CXX] src/sip/handlers.cxx
[CXX] src/sip/sippres.cxx
[CXX] src/ep/skinnyep.cxx
[CXX] src/lids/lid.cxx
/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lin=
aro-linux/opal/3.18-beta9-r0/git/src/ep/skinnyep.cxx: In constructor 'OpalS=
kinnyEndPoint::SkinnyMsg::SkinnyMsg(uint32_t, PINDEX, PINDEX)':
/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lin=
aro-linux/opal/3.18-beta9-r0/git/src/ep/skinnyep.cxx:106:35: warning: 'void=
* memset(void*, int, size_t)' clearing an object of type 'PUInt32l' {aka 's=
truct PIntSameOrder<unsigned int>'} with no trivial copy-assignment; use as=
signment or value-initialization instead [-Wclass-memaccess]
In file included from /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gl=
ibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/src/p=
tlib/include/ptlib.h:44,
from /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/git/src/ep/skinnyep.cxx:29:
/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lin=
aro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/src/ptlib/include/ptlib/obj=
ect.h:2461:8: note: 'PUInt32l' {aka 'struct PIntSameOrder<unsigned int>'} d=
eclared here
/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lin=
aro-linux/opal/3.18-beta9-r0/git/src/ep/skinnyep.cxx: In member function 'v=
oid OpalSkinnyEndPoint::SkinnyMsg::Construct(const PBYTEArray&)':
/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lin=
aro-linux/opal/3.18-beta9-r0/git/src/ep/skinnyep.cxx:114:61: warning: 'void=
* memcpy(void*, const void*, size_t)' writing to an object of type 'PUInt32=
l' {aka 'struct PIntSameOrder<unsigned int>'} with no trivial copy-assignme=
nt; use copy-assignment or copy-initialization instead [-Wclass-memaccess]
In file included from /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gl=
ibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/src/p=
tlib/include/ptlib.h:44,
from /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/git/src/ep/skinnyep.cxx:29:
/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lin=
aro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/src/ptlib/include/ptlib/obj=
ect.h:2461:8: note: 'PUInt32l' {aka 'struct PIntSameOrder<unsigned int>'} d=
eclared here
[CXX] src/lids/lidep.cxx
[CXX] src/lids/lidpluginmgr.cxx
/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lin=
aro-linux/opal/3.18-beta9-r0/git/src/ep/skinnyep.cxx: In member function 'b=
ool OpalSkinnyEndPoint::PhoneDevice::SendRegisterMsg()':
/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lin=
aro-linux/opal/3.18-beta9-r0/git/src/ep/skinnyep.cxx:424:10: warning: 'char=
* strncpy(char*, const char*, size_t)' specified bound 12 equals destinatio=
n size [-Wstringop-truncation]
[CXX] src/rtp/srtp_session.cxx
[CXX] src/rtp/dtls_srtp_session.cpp
[CXX] src/im/t140.cxx
[CXX] src/im/im_mf.cxx
[CXX] src/im/rfc4103.cxx
[CXX] src/im/msrp.cxx
[CXX] src/im/sipim.cxx
[CXX] src/codec/g711codec.cxx
[ CC] src/codec/g711.c
[CXX] src/codec/g722mf.cxx
[CXX] src/codec/g7221mf.cxx
[CXX] src/codec/g7222mf.cxx
[CXX] src/codec/g7231mf.cxx
[CXX] src/codec/g726mf.cxx
[CXX] src/codec/g728mf.cxx
[CXX] src/codec/g729mf.cxx
[CXX] src/codec/gsm0610mf.cxx
[CXX] src/codec/gsmamrmf.cxx
[CXX] src/codec/iLBCmf.cxx
[CXX] src/codec/speexmf.cxx
[CXX] src/codec/opusmf.cxx
[CXX] src/t38/t38mf.cxx
[CXX] src/codec/rfc2833.cxx
[CXX] src/codec/opalwavfile.cxx
[CXX] src/codec/silencedetect.cxx
[CXX] src/codec/opalpluginmgr.cxx
[CXX] src/codec/g711a1_plc.cxx
[CXX] src/codec/echocancel.cxx
[CXX] src/h224/q922.cxx
[CXX] src/h224/h224.cxx
[CXX] src/h224/h281.cxx
[CXX] src/t38/t38proto.cxx
[CXX] src/asn/t38.cxx
[ AR] lib_linux_aarch64/libopal_s.a
[ LD] lib_linux_aarch64/libopal.so.3.18-beta9
/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lin=
aro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/bin/aarch64-linaro-l=
inux/../../libexec/aarch64-linaro-linux/gcc/aarch64-linaro-linux/10.3.1/ld:=
 cannot find crti.o: No such file or directory
/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lin=
aro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/bin/aarch64-linaro-l=
inux/../../libexec/aarch64-linaro-linux/gcc/aarch64-linaro-linux/10.3.1/ld:=
 cannot find crtbeginS.o: No such file or directory
collect2: error: ld returned 1 exit status
make[2]: *** [/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/share/ptlib/m=
ake/post.mak:311: /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/=
work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/libopa=
l.so.3.18-beta9] Error 1
make[1]: Leaving directory '/home/vagrant/oe_qcom_honister/build-cdil/tmp-c=
dil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git'
make[1]: *** [/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/share/ptlib/m=
ake/post.mak:115: optshared] Error 2
make: *** [/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/co=
rtexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/src/ptlib/make/a=
utoconf.mak:179: build_top_level] Error 2
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.

--A4jkzmB59fEYi2pl8YXu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>DEBUG: Executing python function autotools_aclocals</div>
<div>DEBUG: SITE files ['endian-little', 'bit-64', 'arm-common', 'arm-64', =
'common-linux', 'common-glibc', 'aarch64-linux', 'common']</div>
<div>DEBUG: Python function autotools_aclocals finished</div>
<div>DEBUG: Executing shell function do_compile</div>
<div>NOTE: make -j 8</div>
<div>make[1]: Entering directory '/home/vagrant/oe_qcom_honister/build-cdil=
/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git'</div>
<div>[DEP] src/h224/h281.cxx</div>
<div>[DEP] src/t38/t38proto.cxx</div>
<div>[DEP] src/h224/h224.cxx</div>
<div>[DEP] src/asn/t38.cxx</div>
<div>[DEP] src/h224/q922.cxx</div>
<div>[DEP] src/codec/echocancel.cxx</div>
<div>[DEP] src/codec/g711a1_plc.cxx</div>
<div>[DEP] src/codec/opalpluginmgr.cxx</div>
<div>[DEP] src/codec/opalwavfile.cxx</div>
<div>[DEP] src/codec/silencedetect.cxx</div>
<div>[DEP] src/codec/rfc2833.cxx</div>
<div>[DEP] src/t38/t38mf.cxx</div>
<div>[DEP] src/codec/opusmf.cxx</div>
<div>[DEP] src/codec/speexmf.cxx</div>
<div>[DEP] src/codec/iLBCmf.cxx</div>
<div>[DEP] src/codec/gsmamrmf.cxx</div>
<div>[DEP] src/codec/gsm0610mf.cxx</div>
<div>[DEP] src/codec/g729mf.cxx</div>
<div>[DEP] src/codec/g728mf.cxx</div>
<div>[DEP] src/codec/g726mf.cxx</div>
<div>[DEP] src/codec/g7231mf.cxx</div>
<div>[DEP] src/codec/g7222mf.cxx</div>
<div>[DEP] src/codec/g7221mf.cxx</div>
<div>[DEP] src/codec/g722mf.cxx</div>
<div>[DEP] src/codec/g711.c</div>
<div>[DEP] src/codec/g711codec.cxx</div>
<div>[DEP] src/im/sipim.cxx</div>
<div>[DEP] src/im/msrp.cxx</div>
<div>[DEP] src/im/rfc4103.cxx</div>
<div>[DEP] src/im/im_mf.cxx</div>
<div>[DEP] src/im/t140.cxx</div>
<div>[DEP] src/rtp/dtls_srtp_session.cpp</div>
<div>[DEP] src/rtp/srtp_session.cxx</div>
<div>[DEP] src/lids/lidpluginmgr.cxx</div>
<div>[DEP] src/lids/lidep.cxx</div>
<div>[DEP] src/lids/lid.cxx</div>
<div>[DEP] src/ep/skinnyep.cxx</div>
<div>[DEP] src/sip/sippres.cxx</div>
<div>[DEP] src/sip/handlers.cxx</div>
<div>[DEP] src/sip/sippdu.cxx</div>
<div>[DEP] src/sip/sipcon.cxx</div>
<div>[DEP] src/sip/sipep.cxx</div>
<div>[DEP] src/t38/sipt38.cxx</div>
<div>[DEP] src/sdp/ice.cxx</div>
<div>[DEP] src/sdp/sdp.cxx</div>
<div>[DEP] src/sdp/sdphttpep.cxx</div>
<div>[DEP] src/sdp/sdpep.cxx</div>
<div>[DEP] src/iax2/transmit.cxx</div>
<div>[DEP] src/iax2/specialprocessor.cxx</div>
<div>[DEP] src/iax2/sound.cxx</div>
<div>[DEP] src/iax2/safestrings.cxx</div>
<div>[DEP] src/iax2/remote.cxx</div>
<div>[DEP] src/iax2/regprocessor.cxx</div>
<div>[DEP] src/iax2/receiver.cxx</div>
<div>[DEP] src/iax2/processor.cxx</div>
<div>[DEP] src/iax2/ies.cxx</div>
<div>[DEP] src/iax2/iedata.cxx</div>
<div>[DEP] src/iax2/iax2medstrm.cxx</div>
<div>[DEP] src/iax2/iax2ep.cxx</div>
<div>[DEP] src/iax2/iax2con.cxx</div>
<div>[DEP] src/iax2/frame.cxx</div>
<div>[DEP] src/iax2/callprocessor.cxx</div>
<div>[DEP] src/rtp/h235_session.cxx</div>
<div>[DEP] src/h323/h235dh.cxx</div>
<div>[DEP] src/h224/h323h224.cxx</div>
<div>[DEP] src/t38/h323t38.cxx</div>
<div>[DEP] src/h323/h235auth1.cxx</div>
<div>[DEP] src/h460/h460_std24.cxx</div>
<div>[DEP] src/h460/h460_std23.cxx</div>
<div>[DEP] src/h460/h460_std19.cxx</div>
<div>[DEP] src/h460/h460_std18.cxx</div>
<div>[DEP] src/h460/h46024b.cxx</div>
<div>[DEP] src/h460/h460tm.cxx</div>
<div>[DEP] src/h460/h460pres.cxx</div>
<div>[DEP] src/h460/h460p.cxx</div>
<div>[DEP] src/h460/h4609.cxx</div>
<div>[DEP] src/h460/h46019.cxx</div>
<div>[DEP] src/h460/h46018.cxx</div>
<div>[DEP] src/h460/h4601.cxx</div>
<div>[DEP] src/h323/peclient.cxx</div>
<div>[DEP] src/h323/h323annexg.cxx</div>
<div>[DEP] src/h323/h501pdu.cxx</div>
<div>[DEP] src/h323/h235auth.cxx</div>
<div>[DEP] src/h323/h323trans.cxx</div>
<div>[DEP] src/h323/h225ras.cxx</div>
<div>[DEP] src/h323/gkserver.cxx</div>
<div>[DEP] src/h323/gkclient.cxx</div>
<div>[DEP] src/h323/transaddr.cxx</div>
<div>[DEP] src/h323/q931.cxx</div>
<div>[DEP] src/h323/svcctrl.cxx</div>
<div>[DEP] src/h323/channels.cxx</div>
<div>[DEP] src/h323/h323rtp.cxx</div>
<div>[DEP] src/h323/h323pdu.cxx</div>
<div>[DEP] src/h323/h323neg.cxx</div>
<div>[DEP] src/h323/h323caps.cxx</div>
<div>[DEP] src/h323/h323.cxx</div>
<div>[DEP] src/h323/h323ep.cxx</div>
<div>[DEP] src/asn/h501.cxx</div>
<div>[DEP] src/asn/h248.cxx</div>
<div>[DEP] src/asn/h245_3.cxx</div>
<div>[DEP] src/asn/h245_2.cxx</div>
<div>[DEP] src/asn/h245_1.cxx</div>
<div>[DEP] src/asn/h235_srtp.cxx</div>
<div>[DEP] src/asn/h235.cxx</div>
<div>[DEP] src/asn/h225_2.cxx</div>
<div>[DEP] src/asn/h225_1.cxx</div>
<div>[DEP] src/asn/h45011.cxx</div>
<div>[DEP] src/asn/h45010.cxx</div>
<div>[DEP] src/asn/h4509.cxx</div>
<div>[DEP] src/asn/h4508.cxx</div>
<div>[DEP] src/asn/h4507.cxx</div>
<div>[DEP] src/asn/h4506.cxx</div>
<div>[DEP] src/asn/h4505.cxx</div>
<div>[DEP] src/asn/h4504.cxx</div>
<div>[DEP] src/asn/h4503.cxx</div>
<div>[DEP] src/asn/h4502.cxx</div>
<div>[DEP] src/asn/h4501.cxx</div>
<div>[DEP] src/asn/gcc.cxx</div>
<div>[DEP] src/asn/mcs.cxx</div>
<div>[DEP] src/asn/x880.cxx</div>
<div>[DEP] src/h323/h450pdu.cxx</div>
<div>[DEP] src/ep/pcss.cxx</div>
<div>[DEP] src/ep/opalmixer.cxx</div>
<div>[DEP] src/opal/recording.cxx</div>
<div>[DEP] src/opal/console_mgr.cxx</div>
<div>[DEP] src/opal/pres_ent.cxx</div>
<div>[DEP] src/opal/opal_c.cxx</div>
<div>[DEP] src/ep/sockep.cxx</div>
<div>[DEP] src/ep/localep.cxx</div>
<div>[DEP] src/rtp/rtpconn.cxx</div>
<div>[DEP] src/rtp/rtpep.cxx</div>
<div>[DEP] src/rtp/pcapfile.cxx</div>
<div>[DEP] src/rtp/metrics.cxx</div>
<div>[DEP] src/rtp/jitter.cxx</div>
<div>[DEP] src/rtp/rtp_fec.cxx</div>
<div>[DEP] src/rtp/rtp_stream.cxx</div>
<div>[DEP] src/rtp/rtp_session.cxx</div>
<div>[DEP] src/rtp/rtp.cxx</div>
<div>[DEP] src/opal/guid.cxx</div>
<div>[DEP] src/opal/transports.cxx</div>
<div>[DEP] src/opal/transcoders.cxx</div>
<div>[DEP] src/opal/patch.cxx</div>
<div>[DEP] src/opal/mediastrm.cxx</div>
<div>[DEP] src/opal/mediasession.cxx</div>
<div>[DEP] src/opal/mediatype.cxx</div>
<div>[DEP] src/opal/mediafmt.cxx</div>
<div>[DEP] src/opal/call.cxx</div>
<div>[DEP] src/opal/connection.cxx</div>
<div>[DEP] src/opal/endpoint.cxx</div>
<div>[DEP] src/opal/manager.cxx</div>
<div>[CXX] src/opal/manager.cxx</div>
<div>[CXX] src/opal/endpoint.cxx</div>
<div>[CXX] src/opal/connection.cxx</div>
<div>[CXX] src/opal/call.cxx</div>
<div>[CXX] src/opal/mediafmt.cxx</div>
<div>[CXX] src/opal/mediatype.cxx</div>
<div>[CXX] src/opal/mediasession.cxx</div>
<div>[CXX] src/opal/mediastrm.cxx</div>
<div>[CXX] src/opal/patch.cxx</div>
<div>[CXX] src/opal/transcoders.cxx</div>
<div>[CXX] src/opal/transports.cxx</div>
<div>[CXX] src/opal/guid.cxx</div>
<div>[CXX] src/rtp/rtp.cxx</div>
<div>[CXX] src/rtp/rtp_session.cxx</div>
<div>[CXX] src/rtp/rtp_stream.cxx</div>
<div>[CXX] src/rtp/rtp_fec.cxx</div>
<div>[CXX] src/rtp/jitter.cxx</div>
<div>[CXX] src/rtp/metrics.cxx</div>
<div>[CXX] src/rtp/pcapfile.cxx</div>
<div>[CXX] src/rtp/rtpep.cxx</div>
<div>[CXX] src/rtp/rtpconn.cxx</div>
<div>[CXX] src/ep/localep.cxx</div>
<div>[CXX] src/ep/sockep.cxx</div>
<div>[CXX] src/opal/opal_c.cxx</div>
<div>[CXX] src/opal/pres_ent.cxx</div>
<div>[CXX] src/opal/console_mgr.cxx</div>
<div>[CXX] src/opal/recording.cxx</div>
<div>[CXX] src/ep/opalmixer.cxx</div>
<div>[CXX] src/ep/pcss.cxx</div>
<div>[CXX] src/h323/h450pdu.cxx</div>
<div>[CXX] src/asn/x880.cxx</div>
<div>[CXX] src/asn/mcs.cxx</div>
<div>[CXX] src/asn/gcc.cxx</div>
<div>[CXX] src/asn/h4501.cxx</div>
<div>[CXX] src/asn/h4502.cxx</div>
<div>[CXX] src/asn/h4503.cxx</div>
<div>[CXX] src/asn/h4504.cxx</div>
<div>[CXX] src/asn/h4505.cxx</div>
<div>[CXX] src/asn/h4506.cxx</div>
<div>[CXX] src/asn/h4507.cxx</div>
<div>[CXX] src/asn/h4508.cxx</div>
<div>[CXX] src/asn/h4509.cxx</div>
<div>[CXX] src/asn/h45010.cxx</div>
<div>[CXX] src/asn/h45011.cxx</div>
<div>[CXX] src/asn/h225_1.cxx</div>
<div>[CXX] src/asn/h225_2.cxx</div>
<div>[CXX] src/asn/h235.cxx</div>
<div>[CXX] src/asn/h235_srtp.cxx</div>
<div>[CXX] src/asn/h245_1.cxx</div>
<div>[CXX] src/asn/h245_2.cxx</div>
<div>[CXX] src/asn/h245_3.cxx</div>
<div>[CXX] src/asn/h248.cxx</div>
<div>[CXX] src/asn/h501.cxx</div>
<div>[CXX] src/h323/h323ep.cxx</div>
<div>[CXX] src/h323/h323.cxx</div>
<div>[CXX] src/h323/h323caps.cxx</div>
<div>[CXX] src/h323/h323neg.cxx</div>
<div>[CXX] src/h323/h323pdu.cxx</div>
<div>[CXX] src/h323/h323rtp.cxx</div>
<div>[CXX] src/h323/channels.cxx</div>
<div>[CXX] src/h323/svcctrl.cxx</div>
<div>[CXX] src/h323/q931.cxx</div>
<div>[CXX] src/h323/transaddr.cxx</div>
<div>[CXX] src/h323/gkclient.cxx</div>
<div>[CXX] src/h323/gkserver.cxx</div>
<div>[CXX] src/h323/h225ras.cxx</div>
<div>[CXX] src/h323/h323trans.cxx</div>
<div>[CXX] src/h323/h235auth.cxx</div>
<div>[CXX] src/h323/h501pdu.cxx</div>
<div>[CXX] src/h323/h323annexg.cxx</div>
<div>[CXX] src/h323/peclient.cxx</div>
<div>[CXX] src/h460/h4601.cxx</div>
<div>[CXX] src/h460/h46018.cxx</div>
<div>[CXX] src/h460/h46019.cxx</div>
<div>[CXX] src/h460/h4609.cxx</div>
<div>[CXX] src/h460/h460p.cxx</div>
<div>[CXX] src/h460/h460pres.cxx</div>
<div>[CXX] src/h460/h460tm.cxx</div>
<div>[CXX] src/h460/h46024b.cxx</div>
<div>[CXX] src/h460/h460_std18.cxx</div>
<div>[CXX] src/h460/h460_std19.cxx</div>
<div>[CXX] src/h460/h460_std23.cxx</div>
<div>[CXX] src/h460/h460_std24.cxx</div>
<div>[CXX] src/h323/h235auth1.cxx</div>
<div>[CXX] src/t38/h323t38.cxx</div>
<div>[CXX] src/h224/h323h224.cxx</div>
<div>[CXX] src/h323/h235dh.cxx</div>
<div>[CXX] src/rtp/h235_session.cxx</div>
<div>[CXX] src/iax2/callprocessor.cxx</div>
<div>[CXX] src/iax2/frame.cxx</div>
<div>[CXX] src/iax2/iax2con.cxx</div>
<div>[CXX] src/iax2/iax2ep.cxx</div>
<div>[CXX] src/iax2/iax2medstrm.cxx</div>
<div>[CXX] src/iax2/iedata.cxx</div>
<div>[CXX] src/iax2/ies.cxx</div>
<div>[CXX] src/iax2/processor.cxx</div>
<div>[CXX] src/iax2/receiver.cxx</div>
<div>[CXX] src/iax2/regprocessor.cxx</div>
<div>[CXX] src/iax2/remote.cxx</div>
<div>[CXX] src/iax2/safestrings.cxx</div>
<div>[CXX] src/iax2/sound.cxx</div>
<div>[CXX] src/iax2/specialprocessor.cxx</div>
<div>[CXX] src/iax2/transmit.cxx</div>
<div>[CXX] src/sdp/sdpep.cxx</div>
<div>[CXX] src/sdp/sdphttpep.cxx</div>
<div>[CXX] src/sdp/sdp.cxx</div>
<div>[CXX] src/sdp/ice.cxx</div>
<div>[CXX] src/t38/sipt38.cxx</div>
<div>[CXX] src/sip/sipep.cxx</div>
<div>[CXX] src/sip/sipcon.cxx</div>
<div>[CXX] src/sip/sippdu.cxx</div>
<div>[CXX] src/sip/handlers.cxx</div>
<div>[CXX] src/sip/sippres.cxx</div>
<div>[CXX] src/ep/skinnyep.cxx</div>
<div>[CXX] src/lids/lid.cxx</div>
<div>/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/git/src/ep/skinnyep.cxx: In constructor '=
OpalSkinnyEndPoint::SkinnyMsg::SkinnyMsg(uint32_t, PINDEX, PINDEX)':</div>
<div>/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/git/src/ep/skinnyep.cxx:106:35: warning: =
'void* memset(void*, int, size_t)' clearing an object of type 'PUInt32l' {a=
ka 'struct PIntSameOrder&lt;unsigned int&gt;'} with no trivial copy-assignm=
ent; use assignment or value-initialization instead [-Wclass-memaccess]</di=
v>
<div>In file included from /home/vagrant/oe_qcom_honister/build-cdil/tmp-cd=
il-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/=
src/ptlib/include/ptlib.h:44,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /ho=
me/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro=
-linux/opal/3.18-beta9-r0/git/src/ep/skinnyep.cxx:29:</div>
<div>/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/src/ptlib/include/ptli=
b/object.h:2461:8: note: 'PUInt32l' {aka 'struct PIntSameOrder&lt;unsigned =
int&gt;'} declared here</div>
<div>/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/git/src/ep/skinnyep.cxx: In member functi=
on 'void OpalSkinnyEndPoint::SkinnyMsg::Construct(const PBYTEArray&amp;)':<=
/div>
<div>/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/git/src/ep/skinnyep.cxx:114:61: warning: =
'void* memcpy(void*, const void*, size_t)' writing to an object of type 'PU=
Int32l' {aka 'struct PIntSameOrder&lt;unsigned int&gt;'} with no trivial co=
py-assignment; use copy-assignment or copy-initialization instead [-Wclass-=
memaccess]</div>
<div>In file included from /home/vagrant/oe_qcom_honister/build-cdil/tmp-cd=
il-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/=
src/ptlib/include/ptlib.h:44,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /ho=
me/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro=
-linux/opal/3.18-beta9-r0/git/src/ep/skinnyep.cxx:29:</div>
<div>/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/src/ptlib/include/ptli=
b/object.h:2461:8: note: 'PUInt32l' {aka 'struct PIntSameOrder&lt;unsigned =
int&gt;'} declared here</div>
<div>[CXX] src/lids/lidep.cxx</div>
<div>[CXX] src/lids/lidpluginmgr.cxx</div>
<div>/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/git/src/ep/skinnyep.cxx: In member functi=
on 'bool OpalSkinnyEndPoint::PhoneDevice::SendRegisterMsg()':</div>
<div>/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/git/src/ep/skinnyep.cxx:424:10: warning: =
'char* strncpy(char*, const char*, size_t)' specified bound 12 equals desti=
nation size [-Wstringop-truncation]</div>
<div>[CXX] src/rtp/srtp_session.cxx</div>
<div>[CXX] src/rtp/dtls_srtp_session.cpp</div>
<div>[CXX] src/im/t140.cxx</div>
<div>[CXX] src/im/im_mf.cxx</div>
<div>[CXX] src/im/rfc4103.cxx</div>
<div>[CXX] src/im/msrp.cxx</div>
<div>[CXX] src/im/sipim.cxx</div>
<div>[CXX] src/codec/g711codec.cxx</div>
<div>[ CC] src/codec/g711.c</div>
<div>[CXX] src/codec/g722mf.cxx</div>
<div>[CXX] src/codec/g7221mf.cxx</div>
<div>[CXX] src/codec/g7222mf.cxx</div>
<div>[CXX] src/codec/g7231mf.cxx</div>
<div>[CXX] src/codec/g726mf.cxx</div>
<div>[CXX] src/codec/g728mf.cxx</div>
<div>[CXX] src/codec/g729mf.cxx</div>
<div>[CXX] src/codec/gsm0610mf.cxx</div>
<div>[CXX] src/codec/gsmamrmf.cxx</div>
<div>[CXX] src/codec/iLBCmf.cxx</div>
<div>[CXX] src/codec/speexmf.cxx</div>
<div>[CXX] src/codec/opusmf.cxx</div>
<div>[CXX] src/t38/t38mf.cxx</div>
<div>[CXX] src/codec/rfc2833.cxx</div>
<div>[CXX] src/codec/opalwavfile.cxx</div>
<div>[CXX] src/codec/silencedetect.cxx</div>
<div>[CXX] src/codec/opalpluginmgr.cxx</div>
<div>[CXX] src/codec/g711a1_plc.cxx</div>
<div>[CXX] src/codec/echocancel.cxx</div>
<div>[CXX] src/h224/q922.cxx</div>
<div>[CXX] src/h224/h224.cxx</div>
<div>[CXX] src/h224/h281.cxx</div>
<div>[CXX] src/t38/t38proto.cxx</div>
<div>[CXX] src/asn/t38.cxx</div>
<div>[ AR] lib_linux_aarch64/libopal_s.a</div>
<div>[ LD] lib_linux_aarch64/libopal.so.3.18-beta9</div>
<div>/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/bin/aarch64-lin=
aro-linux/../../libexec/aarch64-linaro-linux/gcc/aarch64-linaro-linux/10.3.=
1/ld: cannot find crti.o: No such file or directory</div>
<div>/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/bin/aarch64-lin=
aro-linux/../../libexec/aarch64-linaro-linux/gcc/aarch64-linaro-linux/10.3.=
1/ld: cannot find crtbeginS.o: No such file or directory</div>
<div>collect2: error: ld returned 1 exit status</div>
<div>make[2]: *** [/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc=
/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/share/pt=
lib/make/post.mak:311: /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-g=
libc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git/lib_linux_aarch64/l=
ibopal.so.3.18-beta9] Error 1</div>
<div>make[1]: Leaving directory '/home/vagrant/oe_qcom_honister/build-cdil/=
tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git'</div>
<div>make[1]: *** [/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc=
/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/share/pt=
lib/make/post.mak:115: optshared] Error 2</div>
<div>make: *** [/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/wo=
rk/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/src/ptlib/m=
ake/autoconf.mak:179: build_top_level] Error 2</div>
<div>ERROR: oe_runmake failed</div>
<div>WARNING: exit code 1 from a shell command.</div>
<div>&nbsp;</div>

--A4jkzmB59fEYi2pl8YXu--

