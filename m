Return-Path: <dspore@parraid.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 546DCC4332F
	for <webhook@archiver.kernel.org>; Fri,  9 Dec 2022 15:29:54 +0000 (UTC)
Subject: Re: Recipe to install third-party RPM #bitbake
To: yocto@lists.yoctoproject.org
From: dspore@parraid.com
X-Originating-Location: US (66.52.56.54)
X-Originating-Platform: Windows Chrome 108
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 09 Dec 2022 07:29:47 -0800
References: <CAM6O0ZimX8=tH9hOYM9zV2NVL5zStD4MdqMiOojJrpU3ajyUbw@mail.gmail.com>
In-Reply-To: <CAM6O0ZimX8=tH9hOYM9zV2NVL5zStD4MdqMiOojJrpU3ajyUbw@mail.gmail.com>
Message-ID: <12367.1670599787971354647@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="oyHXU7YWxhEuatOAANpV"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 Dec 2022 15:29:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58773

--oyHXU7YWxhEuatOAANpV
Content-Type: multipart/alternative; boundary="sbz9Aed6HjHmGwmfOEdS"

--sbz9Aed6HjHmGwmfOEdS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Federico,

Thanks for your reply.=C2=A0 I did build a recipe for a tar.gz source archi=
ve previously, which worked.=C2=A0 But for the RPM I felt like I was missin=
g something.=C2=A0 Meanwhile, my multilib build for core-image-base is fail=
ing with the error below.=C2=A0 This is without any custom recipes.=C2=A0 I=
 am not sure what to about this missing manifest file.=C2=A0 I thought perh=
aps it was SDK related so I tried running *bitbake core-image-base -c popul=
ate_sdk*... but got a similar error.=C2=A0 =C2=A0If I knew the root cause o=
f this error, I might be able to fix it.=C2=A0 But it seems that unless I'v=
e setup local.conf incorrectly, doing multilib should just work out of the =
box.=C2=A0 Note that I successfully built *core-image-base* WITHOUT multili=
b configured in my local.conf.=C2=A0 Simply adding the multilib config entr=
ies causes this error (local.conf attached).

ERROR: core-image-base-1.0-r0 do_prepare_recipe_sysroot: Manifest /home/par=
raid/var-fsl-yocto/build_xwayland/tmp/sstate-control/manifest-x86_64_x86_64=
-nativesdk-lib32-qemuwrapper-cross.populate_sysroot not found in imx8mp_var=
_dart armv7at2hf-neon-mx8mp armv7ahf-neon-mx8mp armv7at2hf-vfp-mx8mp armv7a=
hf-vfp-mx8mp armv6thf-vfp-mx8mp armv6hf-vfp-mx8mp armv5tehf-vfp-mx8mp armv5=
ehf-vfp-mx8mp armv5thf-vfp-mx8mp armv5hf-vfp-mx8mp armv8a-mx8mp armv8a-crc-=
crypto armv8a-crypto armv8a-crc armv8a aarch64 allarch x86_64_x86_64-native=
sdk (variant 'lib32')?
ERROR: Logfile of failure stored in: /home/parraid/var-fsl-yocto/build_xway=
land/tmp/work/imx8mp_var_dart-fslc-linux/core-image-base/1.0-r0/temp/log.do=
_prepare_recipe_sysroot.2763965
ERROR: Task (/home/parraid/var-fsl-yocto/sources/poky/meta/recipes-core/ima=
ges/core-image-base.bb:do_prepare_recipe_sysroot) failed with exit code '1'

I feel if I can get this error resolved, it would be tremendous progress.

Thanks again!

David

--sbz9Aed6HjHmGwmfOEdS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Federico,<br /><br />Thanks for your reply.&nbsp; I did build a recipe for =
a tar.gz source archive previously, which worked.&nbsp; But for the RPM I f=
elt like I was missing something.&nbsp; Meanwhile, my multilib build for co=
re-image-base is failing with the error below.&nbsp; This is without any cu=
stom recipes.&nbsp; I am not sure what to about this missing manifest file.=
&nbsp; I thought perhaps it was SDK related so I tried running <strong>bitb=
ake core-image-base -c populate_sdk</strong>... but got a similar error.&nb=
sp; &nbsp;If I knew the root cause of this error, I might be able to fix it=
.&nbsp; But it seems that unless I've setup local.conf incorrectly, doing m=
ultilib should just work out of the box.&nbsp; Note that I successfully bui=
lt<strong> core-image-base</strong> WITHOUT multilib configured in my local=
.conf.&nbsp; Simply adding the multilib config entries causes this error (l=
ocal.conf attached).<br /><br />
<div>ERROR: core-image-base-1.0-r0 do_prepare_recipe_sysroot: Manifest /hom=
e/parraid/var-fsl-yocto/build_xwayland/tmp/sstate-control/manifest-x86_64_x=
86_64-nativesdk-lib32-qemuwrapper-cross.populate_sysroot not found in imx8m=
p_var_dart armv7at2hf-neon-mx8mp armv7ahf-neon-mx8mp armv7at2hf-vfp-mx8mp a=
rmv7ahf-vfp-mx8mp armv6thf-vfp-mx8mp armv6hf-vfp-mx8mp armv5tehf-vfp-mx8mp =
armv5ehf-vfp-mx8mp armv5thf-vfp-mx8mp armv5hf-vfp-mx8mp armv8a-mx8mp armv8a=
-crc-crypto armv8a-crypto armv8a-crc armv8a aarch64 allarch x86_64_x86_64-n=
ativesdk (variant 'lib32')?</div>
<div>ERROR: Logfile of failure stored in: /home/parraid/var-fsl-yocto/build=
_xwayland/tmp/work/imx8mp_var_dart-fslc-linux/core-image-base/1.0-r0/temp/l=
og.do_prepare_recipe_sysroot.2763965</div>
<div>ERROR: Task (/home/parraid/var-fsl-yocto/sources/poky/meta/recipes-cor=
e/images/core-image-base.bb:do_prepare_recipe_sysroot) failed with exit cod=
e '1'</div>
<div><br />I feel if I can get this error resolved, it would be tremendous =
progress.&nbsp;<br /><br />Thanks again!<br /><br />David<br /><br /></div>

--sbz9Aed6HjHmGwmfOEdS--

--oyHXU7YWxhEuatOAANpV
Content-Type: application/octet-stream; name="local.conf"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="local.conf"

TUFDSElORSA/Pz0gJ2lteDhtcC12YXItZGFydCcKRElTVFJPID89ICdmc2xjLXh3YXlsYW5kJwpV
U0VSX0NMQVNTRVMgPz0gImJ1aWxkc3RhdHMiClBBVENIUkVTT0xWRSA9ICJub29wIgpST09UX0hP
TUUgPSAiL3Jvb3QiCkJCX0RJU0tNT05fRElSUyA/Pz0gIlwKICAgIFNUT1BUQVNLUywke1RNUERJ
Un0sMUcsMTAwSyBcCiAgICBTVE9QVEFTS1MsJHtETF9ESVJ9LDFHLDEwMEsgXAogICAgU1RPUFRB
U0tTLCR7U1NUQVRFX0RJUn0sMUcsMTAwSyBcCiAgICBTVE9QVEFTS1MsL3RtcCwxMDBNLDEwMEsg
XAogICAgSEFMVCwke1RNUERJUn0sMTAwTSwxSyBcCiAgICBIQUxULCR7RExfRElSfSwxMDBNLDFL
IFwKICAgIEhBTFQsJHtTU1RBVEVfRElSfSwxMDBNLDFLIFwKICAgIEhBTFQsL3RtcCwxME0sMUsi
ClBBQ0tBR0VDT05GSUc6YXBwZW5kOnBuLXFlbXUtc3lzdGVtLW5hdGl2ZSA9ICIgc2RsIgpDT05G
X1ZFUlNJT04gPSAiMiIKUk1fT0xEX0lNQUdFID0gIjEiCkRJU1RST19GRUFUVVJFUzphcHBlbmQg
PSAiIHN5c3RlbWQiCkRJU1RST19GRUFUVVJFUzphcHBlbmQgPSAiIHZpcnR1YWxpemF0aW9uIgpE
SVNUUk9fRkVBVFVSRVM6YXBwZW5kID0gIiBzZWN1cml0eSIKRElTVFJPX0ZFQVRVUkVTOmFwcGVu
ZCA9ICIgYXBwYXJtb3IiClZJUlRVQUwtUlVOVElNRV9pbml0X21hbmFnZXIgPSAic3lzdGVtZCIK
RElTVFJPX0ZFQVRVUkVTX0JBQ0tGSUxMX0NPTlNJREVSRUQgPSAic3lzdmluaXQiClZJUlRVQUwt
UlVOVElNRV9pbml0c2NyaXB0cyA9ICIiCnJlcXVpcmUgY29uZi9tdWx0aWxpYi5jb25mCk1VTFRJ
TElCUyA9ICJtdWx0aWxpYjpsaWIzMiIKREVGQVVMVFRVTkU6dmlydGNsYXNzLW11bHRpbGliLWxp
YjMyID0gImFybXY3YXRoZi1uZW9uIgpJTkhFUklUICs9ICJybV93b3JrIgpSTV9XT1JLX0VYQ0xV
REUgKz0gInNuYXBkIgpETF9ESVIgPz0gIiR7QlNQRElSfS9kb3dubG9hZHMvIgpBQ0NFUFRfRlNM
X0VVTEEgPSAiMSIKSU5IRVJJVCArPSAiZXh0cmF1c2VycyIKRVhUUkFfVVNFUlNfUEFSQU1TID0g
InVzZXJtb2QgLXAgJycgcm9vdDsgIgpJTUFHRV9JTlNUQUxMOmFwcGVuZCA9ICIgbGliMzItZ2xp
YmMgbGliMzItbGliZ2NjIGxpYjMyLWxpYnN0ZGMrKyBsaWIzMi1iYXNoIgo=

--oyHXU7YWxhEuatOAANpV--

