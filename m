Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83A60C4332F
	for <webhook@archiver.kernel.org>; Tue, 12 Dec 2023 18:20:45 +0000 (UTC)
Subject: do_rootfs failed
To: yocto@lists.yoctoproject.org
From: daniele.lugli@gmail.com
X-Originating-Location: Marina di Ravenna, Emilia-Romagna, IT (176.246.31.108)
X-Originating-Platform: Windows Opera 105
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 12 Dec 2023 10:20:37 -0800
Message-ID: <j7bZ.1702405237675386624.Ih46@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="aiY3UHim5bHIxG0jUAz3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Dec 2023 18:20:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61863

--aiY3UHim5bHIxG0jUAz3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,
I am new to Yocto, so please be patient.

I added layers meta-intel and meta-realtime to poky.
Now
bitbake core-image-rt-extended
tells me:

Summary: 1 task failed:
/home/vboxuser/Documents/poky/meta-realtime/recipes-extended/images/core-im=
age-rt-extended.bb:do_rootfs

and at the end of log.do_rootfs I see:

NOTE: Running intercept scripts:
NOTE: > Executing update_gio_module_cache intercept ...
NOTE: Exit code 127. Output:
/home/vboxuser/Documents/poky/build/tmp/work/genericx86_64-poky-linux/core-=
image-rt-extended/1.0/intercept_scripts-4d6b1b8857aea9ead0c0757d1be3a10e464=
187681f98f3ad9c7448104f320d6e/update_gio_module_cache: 13: qemuwrapper: not=
 found
ERROR: The postinstall intercept hook 'update_gio_module_cache' failed, det=
ails in /home/vboxuser/Documents/poky/build/tmp/work/genericx86_64-poky-lin=
ux/core-image-rt-extended/1.0/temp/log.do_rootfs

On the internet I can find some discussions about problems with qemuwrapper=
. All very old, and none seem suitable.

Do you have any suggestion?

Thank you in advance,

Daniele Lugli

--aiY3UHim5bHIxG0jUAz3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,<br />I am new to Yocto, so please be patient.<br /><br />I added=
 layers meta-intel and meta-realtime to poky.<br />Now<br />bitbake core-im=
age-rt-extended<br />tells me:<br /><br /><span style=3D"color: #ff0000;">S=
ummary: 1 task failed:</span><br /><span style=3D"color: #ff0000;">/home/vb=
oxuser/Documents/poky/meta-realtime/recipes-extended/images/core-image-rt-e=
xtended.bb:do_rootfs&nbsp;</span><br /><br />and at the end of log.do_rootf=
s I see:<br /><br />
<div><span style=3D"color: #ff0000;">NOTE: Running intercept scripts:</span=
></div>
<div><span style=3D"color: #ff0000;">NOTE: &gt; Executing update_gio_module=
_cache intercept ...</span></div>
<div><span style=3D"color: #ff0000;">NOTE: Exit code 127. Output:</span></d=
iv>
<div><span style=3D"color: #ff0000;">/home/vboxuser/Documents/poky/build/tm=
p/work/genericx86_64-poky-linux/core-image-rt-extended/1.0/intercept_script=
s-4d6b1b8857aea9ead0c0757d1be3a10e464187681f98f3ad9c7448104f320d6e/update_g=
io_module_cache: 13: qemuwrapper: not found</span></div>
<div><span style=3D"color: #ff0000;">ERROR: The postinstall intercept hook =
'update_gio_module_cache' failed, details in /home/vboxuser/Documents/poky/=
build/tmp/work/genericx86_64-poky-linux/core-image-rt-extended/1.0/temp/log=
.do_rootfs</span></div>
<div><br />On the internet I can find some discussions about problems with =
qemuwrapper. All very old, and none seem suitable.<br /><br />Do you have a=
ny suggestion?<br /><br />Thank you in advance,<br /><br />Daniele Lugli</d=
iv>
<div>&nbsp;</div>

--aiY3UHim5bHIxG0jUAz3--

