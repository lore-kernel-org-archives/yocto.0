Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 420ECCCA470
	for <webhook@archiver.kernel.org>; Fri,  3 Oct 2025 08:31:29 +0000 (UTC)
Subject: Difficulties shrinking read-only rootfs image
To: yocto@lists.yoctoproject.org
From: "Levi Shafter" <levi.shafter@elder-tomes.com>
X-Originating-Location: Denver, Colorado, US (73.169.9.114)
X-Originating-Platform: Linux Chrome 140
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 Oct 2025 16:12:17 -0700
Message-ID: <UWKa.1759446737555763843.IGFN@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rwSREuB6p3XHplnM4SL7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Oct 2025 08:31:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65905

--rwSREuB6p3XHplnM4SL7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

My team and I have been running into issues with reaching better disk utili=
zation for our read-only root file system image:

root@beaglebone:~# df -h .
Filesystem      Size  Used Avail Use% Mounted on
/dev/root       604M  340M  219M  61% /
We are building an ext4 image using OpenEmbedded's oe_mkext234fs(), which m=
akes use of the mke2fs command to generate the image from the rootfs direct=
ory. We then run a resize2fs to try for a disk utilization equal to the sum=
 of our utilization and 5% of that utilization for root inodes, as we do no=
t need additional space for our read-only image. However, our utilization i=
s quite small.

I tried passing a few options to optimize for our use case:

EXTRA_IMAGECMD_ext4 =3D " \
   -b 1024 \
   -i 65536 \
   -m 0 \
   -O ^has_journal,^resize,^quota,^dir_index,sparse_super2 \
   -E packed_meta_blocks=3D1,num_backup_sb=3D0,lazy_itable_init=3D1,lazy_jo=
urnal_init=3D1 \
   -L ${IMAGE_NAME} \
This did not improve our utilization much. I also tried adding a pretend to=
 oe_mkext234fs(), effectively preparing a dynamically sized image before ge=
nerating the filesystem from the rootfs directory. While this worked well f=
or our more modular builds closer to 225M in size, we still require a safet=
y buffer of about 20% for our full-sized image. Otherwise, we get:

| Copying files into the device: __populate_fs: Could not allocate block in=
 ext2 filesystem while writing file "hll"
| mkfs.ext4: Could not allocate block in ext2 filesystem while populating f=
ile system I am wondering if anyone has experienced similar difficulties, o=
r if anyone might have any more ideas. We are planning on moving to a more =
appropriate file system such as SquashFS in the future, but we currently re=
ly on ext4 for compatibility reasons.

--rwSREuB6p3XHplnM4SL7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,<br /><br />My team and I have been running into issues with rea=
ching better disk utilization for our read-only root file system image:<br =
/><br /></div>
<pre class=3D"notranslate" style=3D"box-sizing: border-box; font-family: 'M=
onaspace Neon', ui-monospace, SFMono-Regular, 'SF Mono', Menlo, Consolas, '=
Liberation Mono', monospace; font-size: 11.9px; margin-top: 0px; margin-bot=
tom: 16px; tab-size: 4; overflow-wrap: normal; padding: 16px; overflow: aut=
o; line-height: 1.45; color: #f0f6fc; background-color: #151b23; border-rad=
ius: 6px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-al=
ign: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; =
text-decoration-style: initial; text-decoration-color: initial;"><code clas=
s=3D"notranslate" style=3D"box-sizing: border-box; font-family: 'Monaspace =
Neon', ui-monospace, SFMono-Regular, 'SF Mono', Menlo, Consolas, 'Liberatio=
n Mono', monospace; font-size: 11.9px; tab-size: 4; padding: 0px; margin: 0=
px; white-space: pre; background: rgba(0, 0, 0, 0); border-radius: 6px; wor=
d-break: normal; border: 0px; display: inline; overflow: visible; line-heig=
ht: inherit; overflow-wrap: normal;">root@beaglebone:~# df -h .
Filesystem      Size  Used Avail Use% Mounted on
/dev/root       604M  340M  219M  61% /</code></pre>
<div>We are building an ext4 image using OpenEmbedded's oe_mkext234fs(), wh=
ich makes use of the mke2fs command to generate the image from the rootfs d=
irectory. We then run a resize2fs to try for a disk utilization equal to th=
e sum of our utilization and 5% of that utilization for root inodes, as we =
do not need additional space for our read-only image. However, our utilizat=
ion is quite small.<br /><br />I tried passing a few options to optimize fo=
r our use case:<br /><br />
<pre class=3D"notranslate" style=3D"box-sizing: border-box; font-family: 'M=
onaspace Neon', ui-monospace, SFMono-Regular, 'SF Mono', Menlo, Consolas, '=
Liberation Mono', monospace; font-size: 11.9px; margin-top: 0px; margin-bot=
tom: 0px; tab-size: 4; overflow-wrap: normal; padding: 16px; overflow: auto=
; line-height: 1.45; color: #f0f6fc; background-color: #151b23; border-radi=
us: 6px; word-break: normal; min-height: 52px; font-style: normal; font-var=
iant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;=
 text-decoration-thickness: initial; text-decoration-style: initial; text-d=
ecoration-color: initial;">EXTRA_IMAGECMD_ext4 =3D <span class=3D"pl-s" sty=
le=3D"box-sizing: border-box; color: #a5d6ff;"><span class=3D"pl-pds" style=
=3D"box-sizing: border-box; color: #a5d6ff;">"</span> <span class=3D"pl-cce=
" style=3D"box-sizing: border-box;">\</span></span>
<span class=3D"pl-s" style=3D"box-sizing: border-box; color: #a5d6ff;">    =
-b 1024 <span class=3D"pl-cce" style=3D"box-sizing: border-box;">\</span></=
span>
<span class=3D"pl-s" style=3D"box-sizing: border-box; color: #a5d6ff;">    =
-i 65536 <span class=3D"pl-cce" style=3D"box-sizing: border-box;">\</span><=
/span>
<span class=3D"pl-s" style=3D"box-sizing: border-box; color: #a5d6ff;">    =
-m 0 <span class=3D"pl-cce" style=3D"box-sizing: border-box;">\</span></spa=
n>
<span class=3D"pl-s" style=3D"box-sizing: border-box; color: #a5d6ff;">    =
-O ^has_journal,^resize,^quota,^dir_index,sparse_super2 <span class=3D"pl-c=
ce" style=3D"box-sizing: border-box;">\</span></span>
<span class=3D"pl-s" style=3D"box-sizing: border-box; color: #a5d6ff;">    =
-E packed_meta_blocks=3D1,num_backup_sb=3D0,lazy_itable_init=3D1,lazy_journ=
al_init=3D1 <span class=3D"pl-cce" style=3D"box-sizing: border-box;">\</spa=
n></span>
<span class=3D"pl-s" style=3D"box-sizing: border-box; color: #a5d6ff;">    =
-L <span class=3D"pl-smi" style=3D"box-sizing: border-box; color: #f0f6fc;"=
>${IMAGE_NAME}</span> <span class=3D"pl-cce" style=3D"box-sizing: border-bo=
x;">\</span></span></pre>
<br />This did not improve our utilization much. I also tried adding a pret=
end to oe_mkext234fs(), effectively preparing a dynamically sized image bef=
ore generating the filesystem from the rootfs directory. While this worked =
well for our more modular builds closer to 225M in size, we still require a=
 safety buffer of about 20% for our full-sized image. Otherwise, we get:<br=
 /><br />
<pre class=3D"notranslate" style=3D"box-sizing: border-box; font-family: 'M=
onaspace Neon', ui-monospace, SFMono-Regular, 'SF Mono', Menlo, Consolas, '=
Liberation Mono', monospace; font-size: 11.9px; margin-top: 0px; margin-bot=
tom: 16px; tab-size: 4; overflow-wrap: normal; padding: 16px; overflow: aut=
o; line-height: 1.45; color: #f0f6fc; background-color: #151b23; border-rad=
ius: 6px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-al=
ign: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; =
text-decoration-style: initial; text-decoration-color: initial;"><code clas=
s=3D"notranslate" style=3D"box-sizing: border-box; font-family: 'Monaspace =
Neon', ui-monospace, SFMono-Regular, 'SF Mono', Menlo, Consolas, 'Liberatio=
n Mono', monospace; font-size: 11.9px; tab-size: 4; padding: 0px; margin: 0=
px; white-space: pre; background: rgba(0, 0, 0, 0); border-radius: 6px; wor=
d-break: normal; border: 0px; display: inline; overflow: visible; line-heig=
ht: inherit; overflow-wrap: normal;">| Copying files into the device: __pop=
ulate_fs: Could not allocate block in ext2 filesystem while writing file "h=
ll"
| mkfs.ext4: Could not allocate block in ext2 filesystem while populating f=
ile system</code></pre>
I am wondering if anyone has experienced similar difficulties, or if anyone=
 might have any more ideas. We are planning on moving to a more appropriate=
 file system such as SquashFS in the future, but we currently rely on ext4 =
for compatibility reasons.</div>

--rwSREuB6p3XHplnM4SL7--

