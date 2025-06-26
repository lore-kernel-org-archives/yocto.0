Return-Path: <f.bauer@igi-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D9F3C7EE31
	for <webhook@archiver.kernel.org>; Thu, 26 Jun 2025 15:24:53 +0000 (UTC)
Subject: psplash tries to mount an empty PSPLASH_FIFO_DIR, leading to image runtime problems
To: yocto@lists.yoctoproject.org
From: "falk bauer" <f.bauer@igi-systems.com>
X-Originating-Location: =?UTF-8?B?RMO8c3NlbGRvcmYsIE5vcnRoIFJoaW5lLVdlc3RwaGFsaWEsIERF?= (80.152.229.14)
X-Originating-Platform: Windows Firefox 140
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 26 Jun 2025 08:24:48 -0700
Message-ID: <99vh.1750951488712427945.NMQr@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="z7lyNizNLruvtFJBkz9R"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Jun 2025 15:24:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65550

--z7lyNizNLruvtFJBkz9R
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

Here is an issue with psplash and an empty env var PSPLASH_FIFO_DIR:

The script file psplash.sh tries to mount the PSPLASH_FIFO_DIR variable.
If the variable is empty, the mountpoint command returns an error code
(busybox mountpoint here, util-linux mountpoint behaves the same):

BusyBox v1.37.0 () multi-call binary.
Usage: mountpoint [-q] { [-dn] DIR | -x DEVICE }
:~# BusyBox v1.37.0 () multi-call binary

The return code with this console output is 0 and the if statement is execu=
ted.
And what this situation makes even more worse is the fact that the mount
command with an empty argument mounts /run again. This overlay the existing=
 run
directory with all kinds of problems. On our device the USB-based HIDs were=
 lost.
The source code of psplash respects an empty PSPLASH_FIFO_DIR variable
(see psplash.c) and makes a fallback to "/run". So i think the psplash.sh s=
cript
should also respect the empty var.

Attached is a patch which fixes this issue for us so far. As this is the fi=
rst time i write to one
of the mailing lists of yocto i post it here instead of e.g. yocto-patches.
Any hints how to process further on are really appreciated.

Thanks,
Falk

meta/recipes-core/psplash/files/psplash-init | 8 +++++---
1 file changed, 5 insertions(+), 3 deletions(-)
diff --git a/meta/recipes-core/psplash/files/psplash-init b/meta/recipes-co=
re/psplash/files/psplash-init
index e0f80bcdc0..5411943245 100644
--- a/meta/recipes-core/psplash/files/psplash-init
+++ b/meta/recipes-core/psplash/files/psplash-init
@@ -26,9 +26,11 @@ for x in $CMDLINE; do
esac
done

-[ -d $PSPLASH_FIFO_DIR ] || mkdir -p $PSPLASH_FIFO_DIR
-if ! mountpoint -q $PSPLASH_FIFO_DIR; then
- =C2=A0 =C2=A0 =C2=A0 mount tmpfs -t tmpfs $PSPLASH_FIFO_DIR -o,size=3D40k
+if [ ! -z ${PSPLASH_FIFO_DIR} ]; then
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0[ -d $PSPLASH_FIFO_DIR ] || mkdir -p $PSPLASH_=
FIFO_DIR
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0if ! mountpoint -q $PSPLASH_FIFO_DIR ; then
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mount tmpfs -t tmp=
fs $PSPLASH_FIFO_DIR -o,size=3D40k
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0fi
fi

rotation=3D0
--
2.43.0

--z7lyNizNLruvtFJBkz9R
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi all,</div>
<div>&nbsp;</div>
<div>Here is an issue with psplash and an empty env var PSPLASH_FIFO_DIR:</=
div>
<div>&nbsp;</div>
<div>The script file psplash.sh tries to mount the PSPLASH_FIFO_DIR variabl=
e.</div>
<div>
<div>If the variable is empty, the mountpoint command returns an error code=
<br />(busybox mountpoint here, util-linux mountpoint behaves the same):</d=
iv>
<div>&nbsp;</div>
<div>BusyBox v1.37.0 () multi-call binary.</div>
<div>Usage: mountpoint [-q] { [-dn] DIR | -x DEVICE }<br />:~# BusyBox v1.3=
7.0 () multi-call binary</div>
<div>&nbsp;</div>
<div>The return code with this console output is 0 and the if statement is =
executed.</div>
<div>And what this situation makes even more worse is the fact that the mou=
nt<br />command with an empty argument mounts /run again. This overlay the =
existing run<br />directory with all kinds of problems. On our device the U=
SB-based HIDs were lost.</div>
<div>The source code of psplash respects an empty PSPLASH_FIFO_DIR variable=
<br />(see psplash.c) and makes a fallback to "/run". So i think the psplas=
h.sh script<br />should also respect the empty var.</div>
<div>&nbsp;</div>
<div>Attached is a patch which fixes this issue for us so far. As this is t=
he first time i write to one</div>
<div>of the mailing lists of yocto i post it here instead of e.g. yocto-pat=
ches.<br />Any hints how to process further on are really appreciated.</div=
>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>Falk<br /><br />
<div>&nbsp;meta/recipes-core/psplash/files/psplash-init | 8 +++++---<br />&=
nbsp;1 file changed, 5 insertions(+), 3 deletions(-)</div>
<div>diff --git a/meta/recipes-core/psplash/files/psplash-init b/meta/recip=
es-core/psplash/files/psplash-init<br />index e0f80bcdc0..5411943245 100644=
<br />--- a/meta/recipes-core/psplash/files/psplash-init<br />+++ b/meta/re=
cipes-core/psplash/files/psplash-init<br />@@ -26,9 +26,11 @@ for x in $CMD=
LINE; do<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;esac<br />&nbsp;done<br />&=
nbsp;<br />-[ -d $PSPLASH_FIFO_DIR ] || mkdir -p $PSPLASH_FIFO_DIR<br />-if=
 ! mountpoint -q $PSPLASH_FIFO_DIR; then<br />- &nbsp; &nbsp; &nbsp; mount =
tmpfs -t tmpfs $PSPLASH_FIFO_DIR -o,size=3D40k<br />+if [ ! -z ${PSPLASH_FI=
FO_DIR} ]; then<br />+ &nbsp; &nbsp; &nbsp; &nbsp;[ -d $PSPLASH_FIFO_DIR ] =
|| mkdir -p $PSPLASH_FIFO_DIR<br />+ &nbsp; &nbsp; &nbsp; &nbsp;if ! mountp=
oint -q $PSPLASH_FIFO_DIR ; then<br />+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;mount tmpfs -t tmpfs $PSPLASH_FIFO_DIR -o,size=3D40k<br=
 />+ &nbsp; &nbsp; &nbsp; &nbsp;fi<br />&nbsp;fi<br />&nbsp;<br />&nbsp;rot=
ation=3D0<br />--&nbsp;<br />2.43.0</div>
</div>
</div>

--z7lyNizNLruvtFJBkz9R--

