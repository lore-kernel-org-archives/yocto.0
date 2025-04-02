Return-Path: <miriam.rico@enigmedia.es>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A330C3601A
	for <webhook@archiver.kernel.org>; Wed,  2 Apr 2025 12:32:30 +0000 (UTC)
Subject: Yocto Kirkstone IMA Kernel Flags #kernel #kirkstone
To: yocto@lists.yoctoproject.org
From: miriam.rico@enigmedia.es
X-Originating-Location: =?UTF-8?B?TGXDs24sIENhc3RpbGxlIGFuZCBMZcOzbiwgRVM=?= (88.15.210.136)
X-Originating-Platform: Linux Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 02 Apr 2025 05:32:22 -0700
Message-ID: <xMfo.1743597142032633477.or5v@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="tsgpeaXg2W06bb6RtE79"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Apr 2025 12:32:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65063

--tsgpeaXg2W06bb6RtE79
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I want to add IMA (Integrity Measurement Architecture) support to my Yocto =
build and I enabled it on my local.conf by adding:

DISTRO_FEATURES:append =3D " integrity ima"
IMAGE_CLASSES +=3D "ima-evm-rootfs"
IMA_EVM_KEY_DIR =3D "${INTEGRITY_BASE}/data/debug-keys"
IMA_EVM_PRIVKEY =3D "${IMA_EVM_KEY_DIR}/ima_privkey.pem"
IMA_EVM_X509 =3D "${IMA_EVM_KEY_DIR}/x509_ima.der"
EVM_X509 =3D "${IMA_EVM_KEY_DIR}/x509_evm.der"

Also, I added the meta-integrity layer to my bblayers.conf file.

After building the image, I noticed that the used algorithm is sha1. I woul=
d like to enable the sha256 algorithm, but I am having problems with it. I =
have tried to enable it using the kernel flags, but I can't get it. I have =
reviewed the configuration that applies when IMA is enabled and found it to=
 be as follows (looking at the config file generated after compiling the ke=
rnel and doing a grep for IMA, I am using *Kernel version 5.15* ):

# SPDX-License-Identifier: MIT
CONFIG_IMA=3Dy
CONFIG_IMA_MEASURE_PCR_IDX=3D10
CONFIG_IMA_NG_TEMPLATE=3Dy
CONFIG_IMA_DEFAULT_TEMPLATE=3D"ima-ng"
CONFIG_IMA_DEFAULT_HASH_SHA1=3Dy
CONFIG_IMA_DEFAULT_HASH=3D"sha1"
CONFIG_IMA_APPRAISE=3Dy
CONFIG_IMA_APPRAISE_BOOTPARAM=3Dy
CONFIG_IMA_TRUSTED_KEYRING=3Dy
CONFIG_SIGNATURE=3Dy
CONFIG_IMA_WRITE_POLICY=3Dy
CONFIG_IMA_READ_POLICY=3Dy
CONFIG_IMA_LOAD_X509=3Dy
CONFIG_IMA_X509_PATH=3D"/etc/keys/x509_ima.der"

So I created a fragment file with the following:

CONFIG_IMA_SIG_TEMPLATE=3Dy
CONFIG_IMA_DEFAULT_TEMPLATE=3D"ima-sig"
CONFIG_IMA_DEFAULT_HASH_SHA256=3Dy
CONFIG_IMA_DEFAULT_HASH=3D"sha256"

Then, I add it to my linux-yocto_%.bbappend file:

FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
SRC_URI +=3D "file://enable-ima.cfg "

But after recompiling the kernel, the template and the hash remain "ima-ng"=
 and "sha1".

I have also tried to create the fragment file using menuconfig, activating =
"ima-sig" and "sha256", using diffconfig to create fragment.cfg file, copyi=
ng the fragment file to meta-my-layer/recipes-kernel/linux/files and adding=
 it to my linux-yocto_%.bbappend file, but the result has been the same, th=
e template and the algorithm have not changed.

FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
SRC_URI +=3D "file://fragment.cfg "

I have been going through the tasks logs trying to see where the problem mi=
ght be and found do_kernel_configme log. In the log, I saw the following:

Final scc/cfg list: =C2=A0/home/.../Yocto/build/tmp/work/genericx86_64-poky=
-linux/linux-yocto/5.15.72+gitAUTOINC+441f5fe000_0b628306d1-r0/kernel-meta/=
bsp/common-pc-64/common-pc-64-standard.scc /home/
/home/.../Yocto/my_yocto_project/meta-my-layer/recipes-kernel/linux/files/e=
nable-ima.cfg
/home/.../Yocto/my_yocto_project/meta-security/meta-tpm/recipes-kernel/linu=
x/linux-yocto/tpm2.scc features/ima/ima.scc

So I thought that maybe the kernel features are applied after the user-crea=
ted fragments. So, I added the following options to my enable-ima.cfg fragm=
ent to see if it was true or not.

CONFIG_IMA_APPRAISE_REQUIRE_KEXEC_SIGS=3Dy
CONFIG_IMA_APPRAISE_REQUIRE_MODULE_SIGS=3Dy
CONFIG_IMA_APPRAISE_BUILD_POLICY=3Dy
CONFIG_IMA_APPRAISE_REQUIRE_FIRMWARE_SIGS=3Dy
CONFIG_IMA_APPRAISE_REQUIRE_POLICY_SIGS=3Dy

After recompiling the kernel, the result was the following:

# CONFIG_MDIO_BCM_UNIMAC is not set
CONFIG_FB_CFB_IMAGEBLIT=3Dy
CONFIG_FB_SYS_IMAGEBLIT=3Dy
CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY=3Dy
# CONFIG_HID_PRIMAX is not set
CONFIG_IMA=3Dy
CONFIG_IMA_MEASURE_PCR_IDX=3D10
CONFIG_IMA_NG_TEMPLATE=3Dy
# CONFIG_IMA_SIG_TEMPLATE is not set
CONFIG_IMA_DEFAULT_TEMPLATE=3D"ima-ng"
CONFIG_IMA_DEFAULT_HASH_SHA1=3Dy
# CONFIG_IMA_DEFAULT_HASH_SHA256 is not set
# CONFIG_IMA_DEFAULT_HASH_SHA512 is not set
CONFIG_IMA_DEFAULT_HASH=3D"sha1"
CONFIG_IMA_WRITE_POLICY=3Dy
CONFIG_IMA_READ_POLICY=3Dy
CONFIG_IMA_APPRAISE=3Dy
# CONFIG_IMA_ARCH_POLICY is not set
CONFIG_IMA_APPRAISE_BUILD_POLICY=3Dy
CONFIG_IMA_APPRAISE_REQUIRE_FIRMWARE_SIGS=3Dy
CONFIG_IMA_APPRAISE_REQUIRE_KEXEC_SIGS=3Dy
CONFIG_IMA_APPRAISE_REQUIRE_MODULE_SIGS=3Dy
CONFIG_IMA_APPRAISE_REQUIRE_POLICY_SIGS=3Dy
CONFIG_IMA_APPRAISE_BOOTPARAM=3Dy
CONFIG_IMA_APPRAISE_MODSIG=3Dy
CONFIG_IMA_TRUSTED_KEYRING=3Dy
# CONFIG_IMA_BLACKLIST_KEYRING is not set
CONFIG_IMA_LOAD_X509=3Dy
CONFIG_IMA_X509_PATH=3D"/etc/keys/x509_ima.der"
CONFIG_IMA_APPRAISE_SIGNED_INIT=3Dy
CONFIG_IMA_MEASURE_ASYMMETRIC_KEYS=3Dy
CONFIG_IMA_QUEUE_EARLY_BOOT_KEYS=3Dy
# CONFIG_IMA_SECURE_AND_OR_TRUSTED_BOOT is not set
# CONFIG_IMA_DISABLE_HTABLE is not set

The newly added options appear in the configuration.

Can anyone tell me which is the order of applying Kernel configuration? I a=
m not sure whether I am following the correct order. How can I apply my Ker=
nel configuration?

Any answer will be appreciated.

Thank you,

Miriam

--tsgpeaXg2W06bb6RtE79
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>I want to add IMA (Integrity Measurement Architecture) support to my Y=
octo build and I enabled it on my local.conf by adding:&nbsp;<br /><br />DI=
STRO_FEATURES:append =3D " integrity ima"</div>
<div>IMAGE_CLASSES +=3D "ima-evm-rootfs"<br />IMA_EVM_KEY_DIR =3D "${INTEGR=
ITY_BASE}/data/debug-keys"<br />IMA_EVM_PRIVKEY =3D "${IMA_EVM_KEY_DIR}/ima=
_privkey.pem"<br />IMA_EVM_X509 =3D "${IMA_EVM_KEY_DIR}/x509_ima.der"<br />=
EVM_X509 =3D "${IMA_EVM_KEY_DIR}/x509_evm.der"</div>
<div>&nbsp;</div>
<div>Also, I added the meta-integrity layer to my bblayers.conf file.</div>
<div>&nbsp;</div>
<div>After building the image, I noticed that the used algorithm is sha1. I=
 would like to enable the sha256 algorithm, but I am having problems with i=
t. I have tried to enable it using the kernel flags, but I can't get it. I =
have reviewed the configuration that applies when IMA is enabled and found =
it to be as follows (looking at the config file generated after compiling t=
he kernel and doing a grep for IMA, I am using <strong>Kernel version 5.15<=
/strong>):</div>
<div>&nbsp;</div>
<div># SPDX-License-Identifier: MIT<br />CONFIG_IMA=3Dy<br />CONFIG_IMA_MEA=
SURE_PCR_IDX=3D10<br />CONFIG_IMA_NG_TEMPLATE=3Dy<br />CONFIG_IMA_DEFAULT_T=
EMPLATE=3D"ima-ng"<br />CONFIG_IMA_DEFAULT_HASH_SHA1=3Dy<br />CONFIG_IMA_DE=
FAULT_HASH=3D"sha1"<br />CONFIG_IMA_APPRAISE=3Dy<br />CONFIG_IMA_APPRAISE_B=
OOTPARAM=3Dy<br />CONFIG_IMA_TRUSTED_KEYRING=3Dy<br />CONFIG_SIGNATURE=3Dy<=
br />CONFIG_IMA_WRITE_POLICY=3Dy<br />CONFIG_IMA_READ_POLICY=3Dy<br />CONFI=
G_IMA_LOAD_X509=3Dy<br />CONFIG_IMA_X509_PATH=3D"/etc/keys/x509_ima.der"</d=
iv>
<div>&nbsp;</div>
<div>So I created a fragment file with the following:</div>
<div>&nbsp;</div>
<div>CONFIG_IMA_SIG_TEMPLATE=3Dy<br />CONFIG_IMA_DEFAULT_TEMPLATE=3D"ima-si=
g"<br />CONFIG_IMA_DEFAULT_HASH_SHA256=3Dy<br />CONFIG_IMA_DEFAULT_HASH=3D"=
sha256"</div>
<div><br />Then, I add it to my linux-yocto_%.bbappend file:<br /><br />FIL=
ESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"<br />SRC_URI +=3D "file://ena=
ble-ima.cfg "<br /><br />But after recompiling the kernel, the template and=
 the hash remain "ima-ng" and "sha1".&nbsp;<br /><br />I have also tried to=
 create the fragment file using menuconfig, activating "ima-sig" and "sha25=
6", using diffconfig to create fragment.cfg file, copying the fragment file=
 to meta-my-layer/recipes-kernel/linux/files and adding it to my linux-yoct=
o_%.bbappend file, but the result has been the same, the template and the a=
lgorithm have not changed.</div>
<div>&nbsp;</div>
<div>FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"<br />SRC_URI +=3D "fi=
le://fragment.cfg "</div>
<div>&nbsp;</div>
<div>I have been going through the tasks logs trying to see where the probl=
em might be and found do_kernel_configme log. In the log, I saw the followi=
ng:<br /><br />Final scc/cfg list: &nbsp;/home/.../Yocto/build/tmp/work/gen=
ericx86_64-poky-linux/linux-yocto/5.15.72+gitAUTOINC+441f5fe000_0b628306d1-=
r0/kernel-meta/bsp/common-pc-64/common-pc-64-standard.scc /home/<br />/home=
/.../Yocto/my_yocto_project/meta-my-layer/recipes-kernel/linux/files/enable=
-ima.cfg<br />/home/.../Yocto/my_yocto_project/meta-security/meta-tpm/recip=
es-kernel/linux/linux-yocto/tpm2.scc features/ima/ima.scc</div>
<div>&nbsp;</div>
<div>So I thought that maybe the kernel features are applied after the user=
-created fragments. So, I added the following options to my enable-ima.cfg =
fragment to see if it was true or not.</div>
<div>&nbsp;</div>
<div>CONFIG_IMA_APPRAISE_REQUIRE_KEXEC_SIGS=3Dy<br />CONFIG_IMA_APPRAISE_RE=
QUIRE_MODULE_SIGS=3Dy<br />CONFIG_IMA_APPRAISE_BUILD_POLICY=3Dy<br />CONFIG=
_IMA_APPRAISE_REQUIRE_FIRMWARE_SIGS=3Dy<br />CONFIG_IMA_APPRAISE_REQUIRE_PO=
LICY_SIGS=3Dy</div>
<div>&nbsp;</div>
<div>After recompiling the kernel, the result was the following:</div>
<div>&nbsp;</div>
<div># CONFIG_MDIO_BCM_UNIMAC is not set<br />CONFIG_FB_CFB_IMAGEBLIT=3Dy<b=
r />CONFIG_FB_SYS_IMAGEBLIT=3Dy<br />CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIM=
ARY=3Dy<br /># CONFIG_HID_PRIMAX is not set<br />CONFIG_IMA=3Dy<br />CONFIG=
_IMA_MEASURE_PCR_IDX=3D10<br />CONFIG_IMA_NG_TEMPLATE=3Dy<br /># CONFIG_IMA=
_SIG_TEMPLATE is not set<br />CONFIG_IMA_DEFAULT_TEMPLATE=3D"ima-ng"<br />C=
ONFIG_IMA_DEFAULT_HASH_SHA1=3Dy<br /># CONFIG_IMA_DEFAULT_HASH_SHA256 is no=
t set<br /># CONFIG_IMA_DEFAULT_HASH_SHA512 is not set<br />CONFIG_IMA_DEFA=
ULT_HASH=3D"sha1"<br />CONFIG_IMA_WRITE_POLICY=3Dy<br />CONFIG_IMA_READ_POL=
ICY=3Dy<br />CONFIG_IMA_APPRAISE=3Dy<br /># CONFIG_IMA_ARCH_POLICY is not s=
et<br />CONFIG_IMA_APPRAISE_BUILD_POLICY=3Dy<br />CONFIG_IMA_APPRAISE_REQUI=
RE_FIRMWARE_SIGS=3Dy<br />CONFIG_IMA_APPRAISE_REQUIRE_KEXEC_SIGS=3Dy<br />C=
ONFIG_IMA_APPRAISE_REQUIRE_MODULE_SIGS=3Dy<br />CONFIG_IMA_APPRAISE_REQUIRE=
_POLICY_SIGS=3Dy<br />CONFIG_IMA_APPRAISE_BOOTPARAM=3Dy<br />CONFIG_IMA_APP=
RAISE_MODSIG=3Dy<br />CONFIG_IMA_TRUSTED_KEYRING=3Dy<br /># CONFIG_IMA_BLAC=
KLIST_KEYRING is not set<br />CONFIG_IMA_LOAD_X509=3Dy<br />CONFIG_IMA_X509=
_PATH=3D"/etc/keys/x509_ima.der"<br />CONFIG_IMA_APPRAISE_SIGNED_INIT=3Dy<b=
r />CONFIG_IMA_MEASURE_ASYMMETRIC_KEYS=3Dy<br />CONFIG_IMA_QUEUE_EARLY_BOOT=
_KEYS=3Dy<br /># CONFIG_IMA_SECURE_AND_OR_TRUSTED_BOOT is not set<br /># CO=
NFIG_IMA_DISABLE_HTABLE is not set</div>
<div>&nbsp;</div>
<div>The newly added options appear in the configuration.</div>
<div>&nbsp;</div>
<div>Can anyone tell me which is the order of applying Kernel configuration=
? I am not sure whether I am following the correct order. How can I apply m=
y Kernel configuration?&nbsp;</div>
<div>&nbsp;</div>
<div>Any answer will be appreciated.</div>
<div>&nbsp;</div>
<div>Thank you,</div>
<div>&nbsp;</div>
<div>Miriam</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--tsgpeaXg2W06bb6RtE79--

