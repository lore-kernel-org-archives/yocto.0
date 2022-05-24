Return-Path: <martin.stolpe@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A185C433F5
	for <webhook@archiver.kernel.org>; Tue, 24 May 2022 08:08:45 +0000 (UTC)
Subject: Building rust package fails with "can't find crate for `std`"
 #bitbake #toolchain #rust #kirkstone
To: yocto@lists.yoctoproject.org
From: martin.stolpe@gmail.com
X-Originating-Location: =?utf-8?q?Freiburg_im_Breisgau=2C_Baden-W=C3=BCrttem?=
 =?utf-8?q?berg=2C_DE_=28213=2E164=2E76=2E146=29?=
X-Originating-Platform: Windows Firefox 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 24 May 2022 01:08:38 -0700
Message-ID: <Jodg.1653379718028989640.MmuK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kveW2BYoiiQmmNSrTtNh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 May 2022 08:08:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57169

--kveW2BYoiiQmmNSrTtNh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm trying to build a rust package which pulls openssl-sys as a dependency.=
 I've used cargo bitbake to create the build script.

When I try to build the package using bitbake I get the following error mes=
sage:
error: failed to run custom build command for `openssl-sys v0.9.72`

Caused by:
process didn't exit successfully: `/home/martin/yocto/build/tmp/work/cortex=
a72-poky-linux/basestation/0.1.0-r0/build/target/release/build/openssl-sys-=
0c915fe76d324495/build-script-main` (exit status: 101)
--- stdout
cargo:rustc-cfg=3Dconst_fn
cargo:rerun-if-env-changed=3DAARCH64_POKY_LINUX_OPENSSL_NO_VENDOR
AARCH64_POKY_LINUX_OPENSSL_NO_VENDOR unset
cargo:rerun-if-env-changed=3DOPENSSL_NO_VENDOR
OPENSSL_NO_VENDOR unset

--- stderr
warning: target json file contains unused fields: has-elf-tls

warning: target json file contains unused fields: has-elf-tls

error[E0463]: can't find crate for `std`
|
=3D note: the `aarch64-poky-linux` target may not be installed
=3D help: consider downloading the target with `rustup target add aarch64-p=
oky-linux`

Does anyone know if it is possible to build the std (and core) crate for th=
e rust cross compile toolchain? I'm a beginner regarding Yocto/OpenEmbedded=
 and am really struggling to understand how the rust cross compile toolchai=
n is build. Any help would be appreciated.

Best regards
Martin

--kveW2BYoiiQmmNSrTtNh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I'm trying to build a rust package which pulls openssl-sy=
s as a dependency. I've used&nbsp;<em>cargo bitbake</em> to create the buil=
d script.<br /><br />When I try to build the package using bitbake I get th=
e following error message:<br /><em>error: failed to run custom build comma=
nd for `openssl-sys v0.9.72`</em><br /><br /><em>Caused by:</em><br /><em>&=
nbsp; process didn't exit successfully: `/home/martin/yocto/build/tmp/work/=
cortexa72-poky-linux/basestation/0.1.0-r0/build/target/release/build/openss=
l-sys-0c915fe76d324495/build-script-main` (exit status: 101)</em><br /><em>=
&nbsp; --- stdout</em><br /><em>&nbsp; cargo:rustc-cfg=3Dconst_fn</em><br /=
><em>&nbsp; cargo:rerun-if-env-changed=3DAARCH64_POKY_LINUX_OPENSSL_NO_VEND=
OR</em><br /><em>&nbsp; AARCH64_POKY_LINUX_OPENSSL_NO_VENDOR unset</em><br =
/><em>&nbsp; cargo:rerun-if-env-changed=3DOPENSSL_NO_VENDOR</em><br /><em>&=
nbsp; OPENSSL_NO_VENDOR unset</em><br /><br /><em>&nbsp; --- stderr</em><br=
 /><em>&nbsp; warning: target json file contains unused fields: has-elf-tls=
</em><br /><br /><em>&nbsp; warning: target json file contains unused field=
s: has-elf-tls</em><br /><br /><em>&nbsp; error[E0463]: can't find crate fo=
r `std`</em><br /><em>&nbsp;&nbsp;&nbsp; |</em><br /><em>&nbsp;&nbsp;&nbsp;=
 =3D note: the `aarch64-poky-linux` target may not be installed</em><br /><=
em>&nbsp;&nbsp;&nbsp; =3D help: consider downloading the target with `rustu=
p target add aarch64-poky-linux`</em><br /><br />Does anyone know if it is =
possible to build the std (and core) crate for the rust cross compile toolc=
hain? I'm a beginner regarding Yocto/OpenEmbedded and am really struggling =
to understand how the rust cross compile toolchain is build. Any help would=
 be appreciated.<br /><br />Best regards<br />Martin

--kveW2BYoiiQmmNSrTtNh--

