Return-Path: <jason.m.bills@linux.intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D7BBC02183
	for <webhook@archiver.kernel.org>; Fri, 17 Jan 2025 15:10:29 +0000 (UTC)
Subject: Re: [yocto] Script error when using EXTRA_IMAGECMD::append
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: "Bills, Jason M" <jason.m.bills@linux.intel.com>
X-Originating-Location: California, US (192.55.54.41)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 Jan 2025 07:10:22 -0800
References: <C4DC70AE-449A-486F-8E42-7D0F3F76472C@arm.com>
In-Reply-To: <C4DC70AE-449A-486F-8E42-7D0F3F76472C@arm.com>
Message-ID: <25943.1737126622425022022@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="blA8DJtdyB7XLdx5jfBO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 15:10:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64585

--blA8DJtdyB7XLdx5jfBO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> what is your defautl shell, is it bash or dash ?

I use bash

> what happens if you use single quotes around $@

I made this change:
diff --git a/poky/meta/classes-recipe/image_types.bbclass b/poky/meta/class=
es-recipe/image_types.bbclass
index 87d6effc6c..2dfe1cd51a 100644
--- a/poky/meta/classes-recipe/image_types.bbclass
+++ b/poky/meta/classes-recipe/image_types.bbclass
@@ -113,7 +113,7 @@ IMAGE_CMD:btrfs () {
oe_mksquashfs () {
local comp=3D$1; shift
- =C2=A0 =C2=A0local extra_imagecmd=3D"$@"
+ =C2=A0 =C2=A0local extra_imagecmd=3D'$@'
if [ "$comp" =3D "zstd" ]; then
suffix=3D"zst"

and got this result:
| DEBUG: Executing shell function do_image_squashfs_xz
| mksquashfs: invalid option
|
| SYNTAX:mksquashfs source1 source2 ... =C2=A0FILESYSTEM [OPTIONS] [-e list=
 of
| exclude dirs/files]
....

>> Shouldn=E2=80=99t there be a leading space, given that you use =E2=80=9C=
append=E2=80=9D?
>
> Yes, unless that isn=E2=80=99t a direct copy-and-paste, this is almost ce=
rtainly from a missing leading whitespace causing sh parsing to fail in int=
eresting ways.

I made this change:
diff --git a/poky/meta/classes-recipe/image_types.bbclass b/poky/meta/class=
es-recipe/image_types.bbclass
index 87d6effc6c..14128a023e 100644
--- a/poky/meta/classes-recipe/image_types.bbclass
+++ b/poky/meta/classes-recipe/image_types.bbclass
@@ -112,6 +112,8 @@ IMAGE_CMD:btrfs () {
}
oe_mksquashfs () {
+ =C2=A0 =C2=A0echo "oe_mksquashfs params:"
+ =C2=A0 =C2=A0echo "$@"
local comp=3D$1; shift
local extra_imagecmd=3D"$@"

With
EXTRA_IMAGECMD:squashfs-xz:append =3D "-processors 64 -b 262144 -Xdict-size=
 100% -Xbcj arm"
I get
| DEBUG: Executing shell function do_image_squashfs_xz
| oe_mksquashfs params:
| xz -processors 64 -b 262144 -Xdict-size 100% -Xbcj arm
| WARNING: exit code 2 from a shell command.
| /home/jmbills/upstream-sync/openbmc-openbmc/build/tmp/work/intel_ast2600-=
openbmc-linux-gnueabi/intel-platforms/1.0/temp/run.do_image_squashfs_xz.371=
11: 159: local: 64: bad variable name
ERROR: Task (/home/jmbills/upstream-sync/openbmc-openbmc/openbmc-meta-intel=
/meta-common/recipes-intel/images/intel-platforms.bb:do_image_squashfs_xz) =
failed with exit code '1'

With
EXTRA_IMAGECMD:squashfs-xz:append =3D " -processors 64 -b 262144 -Xdict-siz=
e 100% -Xbcj arm"
I get
| DEBUG: Executing shell function do_image_squashfs_xz
| oe_mksquashfs params:
| xz -processors 64 -b 262144 -Xdict-size 100% -Xbcj arm
| WARNING: exit code 2 from a shell command.
| /home/jmbills/upstream-sync/openbmc-openbmc/build/tmp/work/intel_ast2600-=
openbmc-linux-gnueabi/intel-platforms/1.0/temp/run.do_image_squashfs_xz.376=
65: 159: local: 64: bad variable name
ERROR: Task (/home/jmbills/upstream-sync/openbmc-openbmc/openbmc-meta-intel=
/meta-common/recipes-intel/images/intel-platforms.bb:do_image_squashfs_xz) =
failed with exit code '1'

Thanks again for all your help!
-Jason

--blA8DJtdyB7XLdx5jfBO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div><span style=3D"white-space: pre-wrap; display: block; width: 98vw;">&g=
t; what is your defautl shell, is it bash or dash ?</span></div>
<div>&nbsp;</div>
<div><span style=3D"white-space: pre-wrap; display: block; width: 98vw;">I =
use bash</span></div>
<div>&nbsp;</div>
<div><span style=3D"white-space: pre-wrap; display: block; width: 98vw;"><s=
pan style=3D"white-space: pre-wrap; display: block; width: 98vw;">&gt; what=
 happens if you use single quotes around $@</span></span></div>
<div>&nbsp;</div>
<div><span style=3D"white-space: pre-wrap; display: block; width: 98vw;"><s=
pan style=3D"white-space: pre-wrap; display: block; width: 98vw;">I made th=
is change:</span></span></div>
<div>
<div>
<div>diff --git a/poky/meta/classes-recipe/image_types.bbclass b/poky/meta/=
classes-recipe/image_types.bbclass<br />index 87d6effc6c..2dfe1cd51a 100644=
<br />--- a/poky/meta/classes-recipe/image_types.bbclass<br />+++ b/poky/me=
ta/classes-recipe/image_types.bbclass<br />@@ -113,7 +113,7 @@ IMAGE_CMD:bt=
rfs () {</div>
<div>&nbsp;oe_mksquashfs () {<br />&nbsp; &nbsp; &nbsp;local comp=3D$1; shi=
ft<br />- &nbsp; &nbsp;local extra_imagecmd=3D"$@"<br />+ &nbsp; &nbsp;loca=
l extra_imagecmd=3D'$@'</div>
<div>&nbsp; &nbsp; &nbsp;if [ "$comp" =3D "zstd" ]; then<br />&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;suffix=3D"zst"</div>
</div>
<div>&nbsp;</div>
<div>and got this result:</div>
<div>&nbsp; &nbsp; | DEBUG: Executing shell function do_image_squashfs_xz<b=
r />&nbsp; &nbsp; | mksquashfs: invalid option<br />&nbsp; &nbsp; |<br />&n=
bsp; &nbsp; | SYNTAX:mksquashfs source1 source2 ... &nbsp;FILESYSTEM [OPTIO=
NS] [-e list of<br />&nbsp; &nbsp; | exclude dirs/files]</div>
<div>&nbsp; &nbsp; ....</div>
<div>&nbsp;</div>
<div><span style=3D"white-space: pre-wrap; display: block; width: 98vw;">&g=
t;&gt; Shouldn&rsquo;t there be a leading space, given that you use &ldquo;=
append&rdquo;?<br />&gt; <br />&gt; Yes, unless that isn&rsquo;t a direct c=
opy-and-paste, this is almost certainly from a missing leading whitespace c=
ausing sh parsing to fail in interesting ways.</span></div>
<div>&nbsp;</div>
<div><span style=3D"white-space: pre-wrap; display: block; width: 98vw;">I =
made this change:</span></div>
<div>
<div>diff --git a/poky/meta/classes-recipe/image_types.bbclass b/poky/meta/=
classes-recipe/image_types.bbclass<br />index 87d6effc6c..14128a023e 100644=
<br />--- a/poky/meta/classes-recipe/image_types.bbclass<br />+++ b/poky/me=
ta/classes-recipe/image_types.bbclass<br />@@ -112,6 +112,8 @@ IMAGE_CMD:bt=
rfs () {<br />&nbsp;}</div>
<div>&nbsp;oe_mksquashfs () {<br />+ &nbsp; &nbsp;echo "oe_mksquashfs param=
s:"<br />+ &nbsp; &nbsp;echo "$@"<br />&nbsp; &nbsp; &nbsp;local comp=3D$1;=
 shift<br />&nbsp; &nbsp; &nbsp;local extra_imagecmd=3D"$@"</div>
<div>&nbsp;</div>
<div>With</div>
<div>&nbsp; &nbsp; EXTRA_IMAGECMD:squashfs-xz:append =3D "-processors 64 -b=
 262144 -Xdict-size 100% -Xbcj arm"</div>
<div>I get</div>
<div>&nbsp; &nbsp; | DEBUG: Executing shell function do_image_squashfs_xz<b=
r />&nbsp; &nbsp; | oe_mksquashfs params:<br />&nbsp; &nbsp; | xz -processo=
rs 64 -b 262144 -Xdict-size 100% -Xbcj arm<br />&nbsp; &nbsp; | WARNING: ex=
it code 2 from a shell command.<br />&nbsp; &nbsp; | /home/jmbills/upstream=
-sync/openbmc-openbmc/build/tmp/work/intel_ast2600-openbmc-linux-gnueabi/in=
tel-platforms/1.0/temp/run.do_image_squashfs_xz.37111: 159: local: 64: bad =
variable name<br />&nbsp; &nbsp; ERROR: Task (/home/jmbills/upstream-sync/o=
penbmc-openbmc/openbmc-meta-intel/meta-common/recipes-intel/images/intel-pl=
atforms.bb:do_image_squashfs_xz) failed with exit code '1'</div>
<div>&nbsp;</div>
<div>With</div>
<div>&nbsp; &nbsp; EXTRA_IMAGECMD:squashfs-xz:append =3D " -processors 64 -=
b 262144 -Xdict-size 100% -Xbcj arm"</div>
<div>I get</div>
<div>&nbsp; &nbsp; | DEBUG: Executing shell function do_image_squashfs_xz<b=
r />&nbsp; &nbsp; | oe_mksquashfs params:<br />&nbsp; &nbsp; | xz -processo=
rs 64 -b 262144 -Xdict-size 100% -Xbcj arm<br />&nbsp; &nbsp; | WARNING: ex=
it code 2 from a shell command.<br />&nbsp; &nbsp; | /home/jmbills/upstream=
-sync/openbmc-openbmc/build/tmp/work/intel_ast2600-openbmc-linux-gnueabi/in=
tel-platforms/1.0/temp/run.do_image_squashfs_xz.37665: 159: local: 64: bad =
variable name<br />&nbsp; &nbsp; ERROR: Task (/home/jmbills/upstream-sync/o=
penbmc-openbmc/openbmc-meta-intel/meta-common/recipes-intel/images/intel-pl=
atforms.bb:do_image_squashfs_xz) failed with exit code '1'</div>
<div>&nbsp;</div>
<div>Thanks again for all your help!</div>
<div>-Jason</div>
<div>&nbsp;</div>
</div>
</div>

--blA8DJtdyB7XLdx5jfBO--

