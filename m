Return-Path: <ms.priyanshu.sharma@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3272ACDD1D2
	for <webhook@archiver.kernel.org>; Fri, 27 Sep 2024 17:57:26 +0000 (UTC)
Subject: [meta-selinux] do_install failing with monolithic policy in meta-selinux refpolicy
To: yocto@lists.yoctoproject.org
From: "PS" <ms.priyanshu.sharma@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (202.164.25.5)
X-Originating-Platform: Windows Chrome 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 27 Sep 2024 10:57:20 -0700
Message-ID: <L0li.1727459840037471274.IyiC@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XplnEfZBu2uO2w4WMjjE"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Sep 2024 17:57:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63905

--XplnEfZBu2uO2w4WMjjE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Yocto team,

I'm trying to enable SELinux in my custom image with meta-selinux layer. I =
have poky & meta-openembedded also in place. The refpolicy I have used is "=
refpolicy-standard" & mode as "enforcing". I have enabled monolithic by set=
ting POLICY_MONOLITHIC to "y" in https://git.yoctoproject.org/meta-selinux/=
tree/recipes-security/refpolicy/refpolicy_common.inc#n111
But compiling refpolicy-standard is failing at do_install with following er=
ror :

Creating policy.xml
Updating policy/booleans.conf and policy/modules.conf
support/sedoctool.py:269: SyntaxWarning: "is not" with a literal. Did you m=
ean "!=3D"?
if desc.data is not '':
Installing local.users
Failed to open /yocto/build/tmp/work/qemuarm64-gnu-linux/refpolicy-standard=
/2.20190201+gitAUTOINC+df696a3254-r0/image/usr/share/selinux/standard/*.*: =
No such file or directory
bzip2: Can't open input file /yocto/build/tmp/work/qemuarm64-gnu-linux/refp=
olicy-standard/2.20190201+gitAUTOINC+df696a3254-r0/image/usr/share/selinux/=
standard/*.*: No such file or directory.
cp: cannot stat '/yocto/build/tmp/work/qemuarm64-gnu-linux/refpolicy-standa=
rd/2.20190201+gitAUTOINC+df696a3254-r0/image/usr/share/selinux/standard/*.*=
': No such file or directory
WARNING: exit code 1 from a shell command.
ERROR: Execution of '/yocto/build/tmp/work/qemuarm64-gnu-linux/refpolicy-st=
andard/2.20190201+gitAUTOINC+df696a3254-r0/temp/run.do_install.2247013' fai=
led with exit code 1:
Compiling and installing standard /yocto/build/tmp/work/qemuarm64-gnu-li

This seems like an issue with prepare_policy_store function in https://git.=
yoctoproject.org/meta-selinux/tree/recipes-security/refpolicy/refpolicy_com=
mon.inc#n161
which is trying to access each .pp file, but these files will not be presen=
t when using monolithic option.

Any help on the installation failure? Thanks in advance!

--XplnEfZBu2uO2w4WMjjE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Yocto team,<br /><br />I'm trying to enable SELinux in my custom im=
age with meta-selinux layer. I have poky &amp; meta-openembedded also in pl=
ace. The refpolicy I have used is "refpolicy-standard" &amp; mode as "enfor=
cing". I have enabled monolithic by setting POLICY_MONOLITHIC to "y" in <a =
href=3D"https://git.yoctoproject.org/meta-selinux/tree/recipes-security/ref=
policy/refpolicy_common.inc#n111" target=3D"_blank" rel=3D"noopener">https:=
//git.yoctoproject.org/meta-selinux/tree/recipes-security/refpolicy/refpoli=
cy_common.inc#n111</a></div>
<div>But compiling refpolicy-standard is failing at do_install with followi=
ng error :<br /><br />Creating policy.xml<br />Updating policy/booleans.con=
f and policy/modules.conf<br />support/sedoctool.py:269: SyntaxWarning: "is=
 not" with a literal. Did you mean "!=3D"?<br />&nbsp; if desc.data is not =
'':<br />Installing local.users<br />Failed to open /yocto/build/tmp/work/q=
emuarm64-gnu-linux/refpolicy-standard/2.20190201+gitAUTOINC+df696a3254-r0/i=
mage/usr/share/selinux/standard/*.*: No such file or directory<br />bzip2: =
Can't open input file /yocto/build/tmp/work/qemuarm64-gnu-linux/refpolicy-s=
tandard/2.20190201+gitAUTOINC+df696a3254-r0/image/usr/share/selinux/standar=
d/*.*: No such file or directory.<br />cp: cannot stat '/yocto/build/tmp/wo=
rk/qemuarm64-gnu-linux/refpolicy-standard/2.20190201+gitAUTOINC+df696a3254-=
r0/image/usr/share/selinux/standard/*.*': No such file or directory<br />WA=
RNING: exit code 1 from a shell command.<br />ERROR: Execution of '/yocto/b=
uild/tmp/work/qemuarm64-gnu-linux/refpolicy-standard/2.20190201+gitAUTOINC+=
df696a3254-r0/temp/run.do_install.2247013' failed with exit code 1:<br />Co=
mpiling and installing standard /yocto/build/tmp/work/qemuarm64-gnu-li</div=
>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>This seems like an issue with prepare_policy_store function in <a href=
=3D"https://git.yoctoproject.org/meta-selinux/tree/recipes-security/refpoli=
cy/refpolicy_common.inc#n161" target=3D"_blank" rel=3D"noopener">https://gi=
t.yoctoproject.org/meta-selinux/tree/recipes-security/refpolicy/refpolicy_c=
ommon.inc#n161</a><br />which is trying to access each .pp file, but these =
files will not be present when using monolithic option.</div>
<div>&nbsp;</div>
<div>Any help on the installation failure? Thanks in advance!</div>

--XplnEfZBu2uO2w4WMjjE--

