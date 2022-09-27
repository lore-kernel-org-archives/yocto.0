Return-Path: <sylvain.desroches@opal-rt.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6C0AC07E9D
	for <webhook@archiver.kernel.org>; Tue, 27 Sep 2022 18:50:25 +0000 (UTC)
Subject: dnf kernel-image-bzimage conflicts while doing dnf upgrade
To: yocto@lists.yoctoproject.org
From: "Sylvain TheRock" <sylvain.desroches@opal-rt.com>
X-Originating-Location: Montreal, Quebec, CA (38.122.231.90)
X-Originating-Platform: Windows Chrome 105
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 27 Sep 2022 11:50:18 -0700
Message-ID: <kiqw.1664304618250265500.4RUX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="opdtnpBdiTAuU31DckSX"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Sep 2022 18:50:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58186

--opdtnpBdiTAuU31DckSX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I am trying to resolve a dnf package conflicts while trying to perform a dn=
f upgrade from my old image to my new image. I want to be able to use dnf t=
o upgrade the system.

My 2 rpms seems to be identical from the old to the new version

opalrtlinux@yocto : ~/yocto/packages-repo $ rpm -qlpv ./3.4.1/corei7_64_int=
el_common/kernel-image-bzimage-4.19.55-opalrtlinux-4.19.55+git0+ad235db461_=
3347a3790f-r0.corei7_64_intel_common.rpm

warning: ./3.4.1/corei7_64_intel_common/kernel-image-bzimage-4.19.55-opalrt=
linux-4.19.55+git0+ad235db461_3347a3790f-r0.corei7_64_intel_common.rpm: Hea=
der V4 RSA/SHA256 Signature, key ID dbf6a22d: NOKEY

drwxr-xr-x=C2=A0=C2=A0=C2=A0 2 root=C2=A0=C2=A0=C2=A0=C2=A0 root=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 Sep=C2=A0 9 15:42 =
/boot

lrwxrwxrwx=C2=A0=C2=A0=C2=A0 1 root=C2=A0=C2=A0=C2=A0=C2=A0 root=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 27 Sep=C2=A0 9 15:42 /boot=
/bzImage -> bzImage-4.19.55-opalrtlinux

-rw-r--r--=C2=A0=C2=A0=C2=A0 1 root=C2=A0=C2=A0=C2=A0=C2=A0 root=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 8311456 Sep=C2=A0 9 15:42 /boot/bzImage-4.19.55-opalrtli=
nux

opalrtlinux@yocto : ~/yocto/packages-repo $ rpm -qlpv ./3.5.3/corei7_64_int=
el_common/kernel-image-bzimage-4.19.80-opalrtlinux-4.19.80+git0+a7cb57afb9_=
6570cbed7b-r0.corei7_64_intel_common.rpm

warning: ./3.5.3/corei7_64_intel_common/kernel-image-bzimage-4.19.80-opalrt=
linux-4.19.80+git0+a7cb57afb9_6570cbed7b-r0.corei7_64_intel_common.rpm: Hea=
der V4 RSA/SHA256 Signature, key ID dbf6a22d: NOKEY

drwxr-xr-x=C2=A0=C2=A0=C2=A0 2 root=C2=A0=C2=A0=C2=A0=C2=A0 root =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A00 Sep 26 12:05 /boot

lrwxrwxrwx=C2=A0=C2=A0=C2=A0 1 root=C2=A0=C2=A0=C2=A0=C2=A0 root=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 27 Sep 26 12:05 /boot/bzIm=
age -> bzImage-4.19.80-opalrtlinux

-rw-r--r--=C2=A0=C2=A0=C2=A0 1 root=C2=A0=C2=A0=C2=A0=C2=A0 root=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 8356512 Sep 26 12:05 /boot/bzImage-4.19.80-opalrtlinux

However, while performing a dnf upgrade, the only package that conflicts is=
 kernel-image-bzimage as follow:

Error: Transaction check error:

file /boot/bzImage from install of kernel-image-bzimage-4.19.80-opalrtlinux=
-4.19.80+git0+a7cb57afb9_6570cbed7b-r0.corei7_64_intel_common conflicts wit=
h file from package kernel-image-bzimage-4.19.55-opalrtlinux-4.19.55+git0+a=
d235db461_3347a3790f-r0.corei7_64_intel_common

Error Summary

-------------

Dnf -v, or looking at dnf log file in /var/log do not give much information=
 neither.

The only way I was able to have it go through is by performing the followin=
g dnf command:

dnf upgrade --repo 353 -x kernel-image-bzimage* --nobest

But afterward, I need to manually remove the kernel-image-bzimage and insta=
ll the newer version manually using dnf or rpm including all that was skipp=
ed and reported by dnf.

If anybody would have a tips as to why the package is conflicting.

Regards.

--opdtnpBdiTAuU31DckSX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Hi everyone,</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">I am trying to resolve=
 a dnf package conflicts while trying to perform a dnf upgrade from my old =
image to my new image. I want to be able to use dnf to upgrade the system.<=
/p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">My 2 rpms seems to be =
identical from the old to the new version</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"text-autospace: none;" style=3D"mar=
gin:0px;"><span style=3D"font-size: 9.0pt; font-family: &#39;Lucida Console=
&#39;; color: #00f200;">opalrtlinux@yocto</span><span style=3D"font-size: 9=
.0pt; font-family: &#39;Lucida Console&#39;;">:<span style=3D"color: #7d97f=
f;">~/yocto/packages-repo</span>$ rpm -qlpv ./3.4.1/corei7_64_intel_common/=
kernel-image-bzimage-4.19.55-opalrtlinux-4.19.55+git0+ad235db461_3347a3790f=
-r0.corei7_64_intel_common.rpm</span></p>
<p class=3D"DefangedMsoNormal" style=3D"text-autospace: none;" style=3D"mar=
gin:0px;"><span style=3D"font-size: 9.0pt; font-family: &#39;Lucida Console=
&#39;;">warning: ./3.4.1/corei7_64_intel_common/kernel-image-bzimage-4.19.5=
5-opalrtlinux-4.19.55+git0+ad235db461_3347a3790f-r0.corei7_64_intel_common.=
rpm: Header V4 RSA/SHA256 Signature, key ID dbf6a22d: NOKEY</span></p>
<p class=3D"DefangedMsoNormal" style=3D"text-autospace: none;" style=3D"mar=
gin:0px;"><span style=3D"font-size: 9.0pt; font-family: &#39;Lucida Console=
&#39;;">drwxr-xr-x=C2=A0=C2=A0=C2=A0 2 root=C2=A0=C2=A0=C2=A0=C2=A0 root=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 Sep=C2=A0 9 =
15:42 /boot</span></p>
<p class=3D"DefangedMsoNormal" style=3D"text-autospace: none;" style=3D"mar=
gin:0px;"><span style=3D"font-size: 9.0pt; font-family: &#39;Lucida Console=
&#39;;">lrwxrwxrwx=C2=A0=C2=A0=C2=A0 1 root=C2=A0=C2=A0=C2=A0=C2=A0 root=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 27 Sep=C2=A0 9 15:42=
 /boot/bzImage -&gt; bzImage-4.19.55-opalrtlinux</span></p>
<p class=3D"DefangedMsoNormal" style=3D"text-autospace: none;" style=3D"mar=
gin:0px;"><span style=3D"font-size: 9.0pt; font-family: &#39;Lucida Console=
&#39;;">-rw-r--r--=C2=A0=C2=A0=C2=A0 1 root=C2=A0=C2=A0=C2=A0=C2=A0 root=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 8311456 Sep=C2=A0 9 15:42 /boot/bzImage-4.19.55-op=
alrtlinux</span></p>
<p class=3D"DefangedMsoNormal" style=3D"text-autospace: none;" style=3D"mar=
gin:0px;"><span style=3D"font-size: 9.0pt; font-family: &#39;Lucida Console=
&#39;;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"text-autospace: none;" style=3D"mar=
gin:0px;"><span style=3D"font-size: 9.0pt; font-family: &#39;Lucida Console=
&#39;; color: #00f200;">opalrtlinux@yocto</span><span style=3D"font-size: 9=
.0pt; font-family: &#39;Lucida Console&#39;;">:<span style=3D"color: #7d97f=
f;">~/yocto/packages-repo</span>$ rpm -qlpv ./3.5.3/corei7_64_intel_common/=
kernel-image-bzimage-4.19.80-opalrtlinux-4.19.80+git0+a7cb57afb9_6570cbed7b=
-r0.corei7_64_intel_common.rpm</span></p>
<p class=3D"DefangedMsoNormal" style=3D"text-autospace: none;" style=3D"mar=
gin:0px;"><span style=3D"font-size: 9.0pt; font-family: &#39;Lucida Console=
&#39;;">warning: ./3.5.3/corei7_64_intel_common/kernel-image-bzimage-4.19.8=
0-opalrtlinux-4.19.80+git0+a7cb57afb9_6570cbed7b-r0.corei7_64_intel_common.=
rpm: Header V4 RSA/SHA256 Signature, key ID dbf6a22d: NOKEY</span></p>
<p class=3D"DefangedMsoNormal" style=3D"text-autospace: none;" style=3D"mar=
gin:0px;"><span style=3D"font-size: 9.0pt; font-family: &#39;Lucida Console=
&#39;;">drwxr-xr-x=C2=A0=C2=A0=C2=A0 2 root=C2=A0=C2=A0=C2=A0=C2=A0 root =
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A00 Sep 26 12:=
05 /boot</span></p>
<p class=3D"DefangedMsoNormal" style=3D"text-autospace: none;" style=3D"mar=
gin:0px;"><span style=3D"font-size: 9.0pt; font-family: &#39;Lucida Console=
&#39;;">lrwxrwxrwx=C2=A0=C2=A0=C2=A0 1 root=C2=A0=C2=A0=C2=A0=C2=A0 root=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 27 Sep 26 12:05 /boo=
t/bzImage -&gt; bzImage-4.19.80-opalrtlinux</span></p>
<p class=3D"DefangedMsoNormal" style=3D"text-autospace: none;" style=3D"mar=
gin:0px;"><span style=3D"font-size: 9.0pt; font-family: &#39;Lucida Console=
&#39;;">-rw-r--r--=C2=A0=C2=A0=C2=A0 1 root=C2=A0=C2=A0=C2=A0=C2=A0 root=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 8356512 Sep 26 12:05 /boot/bzImage-4.19.80-opalrtl=
inux</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">However, while perform=
ing a dnf upgrade, the only package that conflicts is kernel-image-bzimage =
as follow:</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"text-autospace: none;" style=3D"mar=
gin:0px;"><span style=3D"font-size: 9.0pt; font-family: &#39;Lucida Console=
&#39;;">Error: Transaction check error:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"text-autospace: none;" style=3D"mar=
gin:0px;"><span style=3D"font-size: 9.0pt; font-family: &#39;Lucida Console=
&#39;;">=C2=A0 file /boot/bzImage from install of kernel-image-bzimage-4.19=
.80-opalrtlinux-4.19.80+git0+a7cb57afb9_6570cbed7b-r0.corei7_64_intel_commo=
n conflicts with file from package kernel-image-bzimage-4.19.55-opalrtlinux=
-4.19.55+git0+ad235db461_3347a3790f-r0.corei7_64_intel_common</span></p>
<p class=3D"DefangedMsoNormal" style=3D"text-autospace: none;" style=3D"mar=
gin:0px;"><span style=3D"font-size: 9.0pt; font-family: &#39;Lucida Console=
&#39;;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"text-autospace: none;" style=3D"mar=
gin:0px;"><span style=3D"font-size: 9.0pt; font-family: &#39;Lucida Console=
&#39;;">Error Summary</span></p>
<p class=3D"DefangedMsoNormal" style=3D"text-autospace: none;" style=3D"mar=
gin:0px;"><span style=3D"font-size: 9.0pt; font-family: &#39;Lucida Console=
&#39;;">-------------</span></p>
<p class=3D"DefangedMsoNormal" style=3D"text-autospace: none;" style=3D"mar=
gin:0px;"><span style=3D"font-size: 9.0pt; font-family: &#39;Lucida Console=
&#39;;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Dnf -v, or looking at =
dnf log file in /var/log do not give much information neither.</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">The only way I was abl=
e to have it go through is by performing the following dnf command:</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><code><span style=3D"f=
ont-size: 10.0pt;">dnf upgrade --repo 353
-x kernel-image-bzimage* --nobest</span></code></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><code><span style=3D"f=
ont-size: 10.0pt;">=C2=A0</span></code></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><code><span style=3D"f=
ont-size: 10.0pt;">But afterward, I need
to manually remove the kernel-image-bzimage and install the newer version
manually using dnf or rpm including all that was skipped and reported by dn=
f. </span></code></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">If anybody would have =
a tips as to why the package is conflicting.</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Regards.</p>

--opdtnpBdiTAuU31DckSX--

