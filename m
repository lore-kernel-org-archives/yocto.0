Return-Path: <miriam.rico@enigmedia.es>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FF85C3ABAC
	for <webhook@archiver.kernel.org>; Wed, 30 Apr 2025 15:03:16 +0000 (UTC)
Subject: Re: [yocto] Yocto Kirkstone IMA Kernel Flags #kernel #kirkstone
To: miriam.rico@enigmedia.es, yocto@lists.yoctoproject.org
From: miriam.rico@enigmedia.es
X-Originating-Location: Hernani, Basque Country, ES (88.14.145.92)
X-Originating-Platform: Linux Chrome 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 30 Apr 2025 08:03:13 -0700
References: <6565.1744012964281221070@lists.yoctoproject.org>
In-Reply-To: <6565.1744012964281221070@lists.yoctoproject.org>
Message-ID: <9295.1746025393396122245@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="P45rLmLSACT7vKjVTVKO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Apr 2025 15:03:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65271

--P45rLmLSACT7vKjVTVKO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi again,

I have IMA working with the appraisal default policy

>=20
> appraise func=3DMODULE_CHECK appraise_type=3Dimasig
> appraise func=3DFIRMWARE_CHECK appraise_type=3Dimasig
> appraise func=3DKEXEC_KERNEL_CHECK appraise_type=3Dimasig
>=20

And now, I want to add a custom policy with measure and appraisal rules. Th=
e purpose of the custom policy is to measure all binary files and, in case =
the signature does not match, prevent opening those binaries. I have create=
d the following policy:

>=20
> measure func=3DBPRM_CHECK mask=3DMAY_EXEC
> appraise func=3DBPRM_CHECK mask=3DMAY_EXEC
>=20

I have the following Kernel flags regarding

>=20
> CONFIG_IMA=3Dy
> CONFIG_IMA_MEASURE_PCR_IDX=3D10
> # CONFIG_IMA_NG_TEMPLATE is not set
> CONFIG_IMA_SIG_TEMPLATE=3Dy
> CONFIG_IMA_DEFAULT_TEMPLATE=3D"ima-sig"
> # CONFIG_IMA_DEFAULT_HASH_SHA1 is not set
> CONFIG_IMA_DEFAULT_HASH_SHA256=3Dy
> # CONFIG_IMA_DEFAULT_HASH_SHA512 is not set
> CONFIG_IMA_DEFAULT_HASH=3D"sha256"
> CONFIG_IMA_WRITE_POLICY=3Dy
> CONFIG_IMA_READ_POLICY=3Dy
> CONFIG_IMA_APPRAISE=3Dy
> # CONFIG_IMA_ARCH_POLICY is not set
> CONFIG_IMA_APPRAISE_BUILD_POLICY=3Dy
> CONFIG_IMA_APPRAISE_REQUIRE_FIRMWARE_SIGS=3Dy
> CONFIG_IMA_APPRAISE_REQUIRE_KEXEC_SIGS=3Dy
> CONFIG_IMA_APPRAISE_REQUIRE_MODULE_SIGS=3Dy
> CONFIG_IMA_APPRAISE_REQUIRE_POLICY_SIGS=3Dy
> CONFIG_IMA_APPRAISE_BOOTPARAM=3Dy
> CONFIG_IMA_APPRAISE_MODSIG=3Dy
> CONFIG_IMA_TRUSTED_KEYRING=3Dy
> # CONFIG_IMA_BLACKLIST_KEYRING is not set
> CONFIG_IMA_LOAD_X509=3Dy
> CONFIG_IMA_X509_PATH=3D"/etc/keys/x509_ima.der"
> CONFIG_IMA_APPRAISE_SIGNED_INIT=3Dy
> CONFIG_IMA_MEASURE_ASYMMETRIC_KEYS=3Dy
> CONFIG_IMA_QUEUE_EARLY_BOOT_KEYS=3Dy
> # CONFIG_IMA_SECURE_AND_OR_TRUSTED_BOOT is not set
> # CONFIG_IMA_DISABLE_HTABLE is not set
>=20

And a recipe that copies the ima policy to the roots of initramfs:

>=20
> install -m 0644 ${WORKDIR}/ima-policy =C2=A0${D}/etc/ima/ima-policy
>=20

But I am not able to load it. I have added the policy to the initramfs, but=
 when booting the machine, I always get the same error:

>=20
> ima: signed policy file (specified as an absolute pathname) required.
> audit: type=3D1802 audit(1744809469.971:2): pid: 624 uid=3D0 auid=3D42949=
67295
> ses=3D4294967295 op=3Dupdate_policy cause=3Dsigned policy required comm=
=3D"init"
> res=3D0 errno=3D0
>=20

I tried to sign the policy using evmctl during initramfs build process, but=
 it gives me the following error:

>=20
> setaxttr failed: /etc/ima/ima-policy
> errno: Operation not supported (95)
>=20

So I tried to sign the policy using the IMA init script of meta-integrity l=
ayer (https://git.yoctoproject.org/meta-security/tree/meta-integrity/recipe=
s-core/initrdscripts/initramfs-framework-ima/ima?h=3Dkirkstone), I modified=
 it to sign the policy, but the same error appeared. I added the following =
line to the script after the mount process and before keyctl use:

>=20
> ...
> if [ ! -d /sys/kernel/security/ima ]; then
> fatal "No /sys/kernel/security/ima. Cannot proceed without IMA enabled in
> the kernel."
> fi
>=20
> *if [ -f /etc/ima/ima-policy ] && [ -f /etc/ima/ima_privkey.pem ]; then*
> *evmctl ima_sign --hashalgo sha256 --key /etc/ima/ima_privkey.pem
> /etc/ima/ima-policy*
> *fi*
>=20
> for kind in ima evm; do
> ...
>=20

I checked the Kernel flags to ensure that xattr flags are enabled. I have t=
hese flags regarding xattr:

>=20
> CONFIG_DEVTMPFS=3Dy
> CONFIG_DEVTMPFS_MOUNT=3Dy
> CONFIG_TMPFS=3Dy
> CONFIG_TMPFS_POSIX_ACL=3Dy
> CONFIG_TMPFS_XATTR=3Dy
> # CONFIG_TMPFS_INODE64 is not set
> CONFIG_SECURITY=3Dy
> CONFIG_SECURITYFS=3Dy
>=20

Also, I tried to sign the policy on my machine, but the same error occurred=
.

So I decided to disable the IMA policy sign kernel flag. Now, my flags are:

>=20
> CONFIG_IMA=3Dy
> CONFIG_IMA_MEASURE_PCR_IDX=3D10
> # CONFIG_IMA_NG_TEMPLATE is not set
> CONFIG_IMA_SIG_TEMPLATE=3Dy
> CONFIG_IMA_DEFAULT_TEMPLATE=3D"ima-sig"
> # CONFIG_IMA_DEFAULT_HASH_SHA1 is not set
> CONFIG_IMA_DEFAULT_HASH_SHA256=3Dy
> # CONFIG_IMA_DEFAULT_HASH_SHA512 is not set
> CONFIG_IMA_DEFAULT_HASH=3D"sha256"
> CONFIG_IMA_WRITE_POLICY=3Dy
> CONFIG_IMA_READ_POLICY=3Dy
> CONFIG_IMA_APPRAISE=3Dy
> # CONFIG_IMA_ARCH_POLICY is not set
> CONFIG_IMA_APPRAISE_BUILD_POLICY=3Dy
> CONFIG_IMA_APPRAISE_REQUIRE_FIRMWARE_SIGS=3Dy
> CONFIG_IMA_APPRAISE_REQUIRE_KEXEC_SIGS=3Dy
> CONFIG_IMA_APPRAISE_REQUIRE_MODULE_SIGS=3Dy
> # CONFIG_IMA_APPRAISE_REQUIRE_POLICY_SIGS is not set
> CONFIG_IMA_APPRAISE_BOOTPARAM=3Dy
> CONFIG_IMA_APPRAISE_MODSIG=3Dy
> CONFIG_IMA_TRUSTED_KEYRING=3Dy
> # CONFIG_IMA_BLACKLIST_KEYRING is not set
> CONFIG_IMA_LOAD_X509=3Dy
> CONFIG_IMA_X509_PATH=3D"/etc/keys/x509_ima.der"
> CONFIG_IMA_APPRAISE_SIGNED_INIT=3Dy
> CONFIG_IMA_MEASURE_ASYMMETRIC_KEYS=3Dy
> CONFIG_IMA_QUEUE_EARLY_BOOT_KEYS=3Dy
> # CONFIG_IMA_SECURE_AND_OR_TRUSTED_BOOT is not set
> # CONFIG_IMA_DISABLE_HTABLE is not set
> CONFIG_SECURITY=3Dy
> CONFIG_SECURITYFS=3Dy
>=20

But when I try to load my custom policy, I receive the following error:

>=20
> audit: type=3D1807 audit(1746014631.946:2); UNKNOWN=3DWriting res=3D0
> write error: Invalid argumentaudit: type=3D1802 audit(1746014631.946:3):
> pid=3D640 uid=3D0 auid=3D429467295 ses=3D4294967295 op=3Dupdate_policy
> cause=3Dinvalid-policy comm=3D"init" res=3D0 errno=3D0
>=20

I also tried creating an ima-policy with the same policy rules as the defau=
lt one. And the same error appeared.

What am I doing wrong? How can I load my custom policy? How can I sign the =
policy? Can the policy be signed during the compile or install process on Y=
octo? Or during the boot process (initramfs)?

Thank you so much,

Miriam

--P45rLmLSACT7vKjVTVKO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi again,</div>
<div>&nbsp;</div>
<div>I have IMA working with the appraisal default policy</div>
<div>&nbsp;</div>
<blockquote>
<div>appraise func=3DMODULE_CHECK appraise_type=3Dimasig&nbsp;<br />apprais=
e func=3DFIRMWARE_CHECK appraise_type=3Dimasig&nbsp;<br />appraise func=3DK=
EXEC_KERNEL_CHECK appraise_type=3Dimasig</div>
</blockquote>
<div>&nbsp;</div>
<div>And now, I want to add a custom policy with measure and appraisal rule=
s. The purpose of the custom policy is to measure all binary files and, in =
case the signature does not match, prevent opening those binaries. I have c=
reated the following policy:</div>
<div>&nbsp;</div>
<blockquote>
<div>measure func=3DBPRM_CHECK mask=3DMAY_EXEC&nbsp;<br />appraise func=3DB=
PRM_CHECK mask=3DMAY_EXEC</div>
</blockquote>
<div>&nbsp;</div>
<div>I have the following Kernel flags regarding&nbsp;</div>
<div>&nbsp;</div>
<blockquote>
<div>CONFIG_IMA=3Dy<br />CONFIG_IMA_MEASURE_PCR_IDX=3D10<br /># CONFIG_IMA_=
NG_TEMPLATE is not set<br />CONFIG_IMA_SIG_TEMPLATE=3Dy<br />CONFIG_IMA_DEF=
AULT_TEMPLATE=3D"ima-sig"<br /># CONFIG_IMA_DEFAULT_HASH_SHA1 is not set<br=
 />CONFIG_IMA_DEFAULT_HASH_SHA256=3Dy<br /># CONFIG_IMA_DEFAULT_HASH_SHA512=
 is not set<br />CONFIG_IMA_DEFAULT_HASH=3D"sha256"<br />CONFIG_IMA_WRITE_P=
OLICY=3Dy<br />CONFIG_IMA_READ_POLICY=3Dy<br />CONFIG_IMA_APPRAISE=3Dy<br /=
># CONFIG_IMA_ARCH_POLICY is not set<br />CONFIG_IMA_APPRAISE_BUILD_POLICY=
=3Dy<br />CONFIG_IMA_APPRAISE_REQUIRE_FIRMWARE_SIGS=3Dy<br />CONFIG_IMA_APP=
RAISE_REQUIRE_KEXEC_SIGS=3Dy<br />CONFIG_IMA_APPRAISE_REQUIRE_MODULE_SIGS=
=3Dy<br />CONFIG_IMA_APPRAISE_REQUIRE_POLICY_SIGS=3Dy<br />CONFIG_IMA_APPRA=
ISE_BOOTPARAM=3Dy<br />CONFIG_IMA_APPRAISE_MODSIG=3Dy<br />CONFIG_IMA_TRUST=
ED_KEYRING=3Dy<br /># CONFIG_IMA_BLACKLIST_KEYRING is not set<br />CONFIG_I=
MA_LOAD_X509=3Dy<br />CONFIG_IMA_X509_PATH=3D"/etc/keys/x509_ima.der"<br />=
CONFIG_IMA_APPRAISE_SIGNED_INIT=3Dy<br />CONFIG_IMA_MEASURE_ASYMMETRIC_KEYS=
=3Dy<br />CONFIG_IMA_QUEUE_EARLY_BOOT_KEYS=3Dy<br /># CONFIG_IMA_SECURE_AND=
_OR_TRUSTED_BOOT is not set<br /># CONFIG_IMA_DISABLE_HTABLE is not set</di=
v>
</blockquote>
<div>&nbsp;</div>
<div>And a recipe that copies the ima policy to the roots of initramfs:</di=
v>
<div>&nbsp;</div>
<blockquote>
<div>install -m 0644 ${WORKDIR}/ima-policy &nbsp;${D}/etc/ima/ima-policy</d=
iv>
</blockquote>
<div>&nbsp;</div>
<div>But I am not able to load it. I have added the policy to the initramfs=
, but when booting the machine, I always get the same error:</div>
<div>&nbsp;</div>
<blockquote>
<div>ima: signed policy file (specified as an absolute pathname) required.<=
br />audit: type=3D1802 audit(1744809469.971:2): pid: 624 uid=3D0 auid=3D42=
94967295 ses=3D4294967295 op=3Dupdate_policy cause=3Dsigned policy required=
 comm=3D"init" res=3D0 errno=3D0</div>
</blockquote>
<div>&nbsp;</div>
<div>I tried to sign the policy using evmctl during initramfs build process=
, but it gives me the following error:</div>
<div>&nbsp;</div>
<div>
<blockquote>
<div>setaxttr failed: /etc/ima/ima-policy<br />errno: Operation not support=
ed (95)</div>
</blockquote>
<div><br />So I tried to sign the policy using the IMA init script of meta-=
integrity layer (https://git.yoctoproject.org/meta-security/tree/meta-integ=
rity/recipes-core/initrdscripts/initramfs-framework-ima/ima?h=3Dkirkstone),=
 I modified it to sign the policy, but the same error appeared. I added the=
 following line to the script after the mount process and before keyctl use=
:</div>
</div>
<div>
<div>&nbsp;</div>
<blockquote>
<div>...</div>
<div>if [ ! -d /sys/kernel/security/ima ]; then<br />&nbsp; &nbsp; fatal "N=
o /sys/kernel/security/ima. Cannot proceed without IMA enabled in the kerne=
l."<br />fi</div>
<div>&nbsp;</div>
<div><strong>if [ -f /etc/ima/ima-policy ] &amp;&amp; [ -f /etc/ima/ima_pri=
vkey.pem ]; then</strong></div>
<div><strong>&nbsp; &nbsp; evmctl ima_sign --hashalgo sha256 --key /etc/ima=
/ima_privkey.pem /etc/ima/ima-policy</strong></div>
<div><strong>fi</strong></div>
<div>&nbsp;</div>
<div>for kind in ima evm; do</div>
<div>...</div>
</blockquote>
</div>
<div>&nbsp;</div>
<div>I checked the Kernel flags to ensure that xattr flags are enabled. I h=
ave these flags regarding xattr:</div>
<div>&nbsp;</div>
<blockquote>
<div>CONFIG_DEVTMPFS=3Dy<br />CONFIG_DEVTMPFS_MOUNT=3Dy<br />CONFIG_TMPFS=
=3Dy<br />CONFIG_TMPFS_POSIX_ACL=3Dy<br />CONFIG_TMPFS_XATTR=3Dy<br /># CON=
FIG_TMPFS_INODE64 is not set</div>
<div>CONFIG_SECURITY=3Dy</div>
<div>CONFIG_SECURITYFS=3Dy</div>
</blockquote>
<div>&nbsp;</div>
<div>Also, I tried to sign the policy on my machine, but the same error occ=
urred.&nbsp;</div>
<div>&nbsp;</div>
<div>So I decided to disable the IMA policy sign kernel flag. Now, my flags=
 are:<br /><br /></div>
<blockquote>
<div>CONFIG_IMA=3Dy<br />CONFIG_IMA_MEASURE_PCR_IDX=3D10<br /># CONFIG_IMA_=
NG_TEMPLATE is not set<br />CONFIG_IMA_SIG_TEMPLATE=3Dy<br />CONFIG_IMA_DEF=
AULT_TEMPLATE=3D"ima-sig"<br /># CONFIG_IMA_DEFAULT_HASH_SHA1 is not set<br=
 />CONFIG_IMA_DEFAULT_HASH_SHA256=3Dy<br /># CONFIG_IMA_DEFAULT_HASH_SHA512=
 is not set<br />CONFIG_IMA_DEFAULT_HASH=3D"sha256"<br />CONFIG_IMA_WRITE_P=
OLICY=3Dy<br />CONFIG_IMA_READ_POLICY=3Dy<br />CONFIG_IMA_APPRAISE=3Dy<br /=
># CONFIG_IMA_ARCH_POLICY is not set<br />CONFIG_IMA_APPRAISE_BUILD_POLICY=
=3Dy<br />CONFIG_IMA_APPRAISE_REQUIRE_FIRMWARE_SIGS=3Dy<br />CONFIG_IMA_APP=
RAISE_REQUIRE_KEXEC_SIGS=3Dy<br />CONFIG_IMA_APPRAISE_REQUIRE_MODULE_SIGS=
=3Dy<br /># CONFIG_IMA_APPRAISE_REQUIRE_POLICY_SIGS is not set<br />CONFIG_=
IMA_APPRAISE_BOOTPARAM=3Dy<br />CONFIG_IMA_APPRAISE_MODSIG=3Dy<br />CONFIG_=
IMA_TRUSTED_KEYRING=3Dy<br /># CONFIG_IMA_BLACKLIST_KEYRING is not set<br /=
>CONFIG_IMA_LOAD_X509=3Dy<br />CONFIG_IMA_X509_PATH=3D"/etc/keys/x509_ima.d=
er"<br />CONFIG_IMA_APPRAISE_SIGNED_INIT=3Dy<br />CONFIG_IMA_MEASURE_ASYMME=
TRIC_KEYS=3Dy<br />CONFIG_IMA_QUEUE_EARLY_BOOT_KEYS=3Dy<br /># CONFIG_IMA_S=
ECURE_AND_OR_TRUSTED_BOOT is not set<br /># CONFIG_IMA_DISABLE_HTABLE is no=
t set</div>
<div>CONFIG_SECURITY=3Dy<br />CONFIG_SECURITYFS=3Dy</div>
</blockquote>
<div>&nbsp;</div>
<div>But when I try to load my custom policy, I receive the following error=
:<br /><br /></div>
<blockquote>
<div>audit: type=3D1807 audit(1746014631.946:2); UNKNOWN=3DWriting res=3D0<=
/div>
<div>write error: Invalid argumentaudit: type=3D1802 audit(1746014631.946:3=
): pid=3D640 uid=3D0 auid=3D429467295 ses=3D4294967295 op=3Dupdate_policy c=
ause=3Dinvalid-policy comm=3D"init" res=3D0 errno=3D0</div>
</blockquote>
<div>&nbsp;</div>
<div>I also tried creating an ima-policy with the same policy rules as the =
default one. And the same error appeared.</div>
<div>&nbsp;</div>
<div>What am I doing wrong? How can I load my custom policy? How can I sign=
 the policy? Can the policy be signed during the compile or install process=
 on Yocto? Or during the boot process (initramfs)?</div>
<div>&nbsp;</div>
<div>Thank you so much,</div>
<div>&nbsp;</div>
<div>Miriam</div>
<div>&nbsp;</div>

--P45rLmLSACT7vKjVTVKO--

