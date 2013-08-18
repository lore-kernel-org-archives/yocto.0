Return-Path: <andreas2025@gmail.com>
Received: from mail-we0-f195.google.com (mail-we0-f195.google.com
	[74.125.82.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56AACE00443
	for <yocto@yoctoproject.org>; Sat, 17 Aug 2013 22:42:06 -0700 (PDT)
Received: by mail-we0-f195.google.com with SMTP id t59so1084233wes.2
	for <yocto@yoctoproject.org>; Sat, 17 Aug 2013 22:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=FMArm3nauNsat/1vHHoeBBPxhjPA/vkEK0dAhcvlxVA=;
	b=OI1pRWRbPXv3DI/TEPsYhrcrEq7TMZRjz+SdwfheOEQVcNhcScZuHEPCtX5+n0CH8t
	dKj+O8gOnasbpB8erc2NoYvda0gJ3yHCl5WiNw0OA1V6bV9Df2UmHP1WjsKEVIZLKeUh
	9I+BcNIOMI3bLetR7CPzF2Vy34KxHmoo8bT0tVXcqBwb0r0wv+BBb4TOHm71vzS/TuOU
	nSuHXzlS4BK9ZLPYaX27po+aiRnXWOzfPEaMBZXO9OtCU8dOB7UXeeDmMuOm6ToDlHHR
	69TlsoQb9COAlyqiG997rpO8EkPrHueTqURTsRTw2CnBy3OVFzOIvEAid6Eps5S3pQOM
	aDLw==
MIME-Version: 1.0
X-Received: by 10.180.126.97 with SMTP id mx1mr3681178wib.10.1376804525139;
	Sat, 17 Aug 2013 22:42:05 -0700 (PDT)
Received: by 10.217.38.193 with HTTP; Sat, 17 Aug 2013 22:42:05 -0700 (PDT)
Date: Sun, 18 Aug 2013 06:42:05 +0100
Message-ID: <CAAVaN8zfs7_-fH7W0++xGFsa8CE1_POM5vzULMz5jNFqsP9Tzg@mail.gmail.com>
From: Andy Ng <andreas2025@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 19 Aug 2013 07:46:17 -0700
Subject: file permissions
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 18 Aug 2013 05:42:07 -0000
Content-Type: multipart/alternative; boundary=e89a8f838997a56e4d04e43248c9

--e89a8f838997a56e4d04e43248c9
Content-Type: text/plain; charset=ISO-8859-1

Dear List,

I try to build Poky and the final rootfs image doesn't not mount with the
following problem:

----------------------8<-------------------------8<------------------------------
BIFS: mounted UBI device 0, volume 0, name "polatisnic-rootfs"
UBIFS: mounted read-only
UBIFS: file system size:   10737408 bytes (10485 KiB, 10 MiB, 82 LEBs)
UBIFS: journal size:       1964160 bytes (1918 KiB, 1 MiB, 15 LEBs)
UBIFS: media format:       w4/r0 (latest is w4/r0)
UBIFS: default compressor: lzo
UBIFS: reserved for root:  0 bytes (0 KiB)
VFS: Mounted root (ubifs filesystem) readonly on device 0:14.
devtmpfs: mounted
Freeing init memory: 208K
INIT: version 2.88 booting
mount: permission denied (are you root?)
mount: permission denied (are you root?)
grep: /proc/filesystems: No such file or directory
mount: permission denied (are you root?)
grep: /proc/mounts: No such file or directory
grep: /proc/mounts: No such file or directory
Remounting root file system...
mount: can't read '/etc/mtab': No such file or directory
------------------------8<-----------------------------------8<------------------

After a bit of research, I fount out that the busybox was populated in the
rootfs
under ownership of "andreas:andreas" instead of "root:root"

I fixed manually the ownership and it booted  up.

Does anyone knows what might be going wrong in my build process?

Any guidance would be very helpful.

TIA
Andreas

--e89a8f838997a56e4d04e43248c9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Dear List,<br><br></div>I try to build Poky and =
the final rootfs image doesn&#39;t not mount with the following problem:<br=
><br>----------------------8&lt;-------------------------8&lt;-------------=
-----------------<br>
BIFS: mounted UBI device 0, volume 0, name &quot;polatisnic-rootfs&quot;<br=
>UBIFS: mounted read-only<br>UBIFS: file system size:=A0=A0 10737408 bytes =
(10485 KiB, 10 MiB, 82 LEBs)<br>UBIFS: journal size:=A0=A0=A0=A0=A0=A0 1964=
160 bytes (1918 KiB, 1 MiB, 15 LEBs)<br>
UBIFS: media format:=A0=A0=A0=A0=A0=A0 w4/r0 (latest is w4/r0)<br>UBIFS: de=
fault compressor: lzo<br>UBIFS: reserved for root:=A0 0 bytes (0 KiB)<br>VF=
S: Mounted root (ubifs filesystem) readonly on device 0:14.<br>devtmpfs: mo=
unted<br>Freeing init memory: 208K<br>
INIT: version 2.88 booting<br>mount: permission denied (are you root?)<br>m=
ount: permission denied (are you root?)<br>grep: /proc/filesystems: No such=
 file or directory<br>mount: permission denied (are you root?)<br>grep: /pr=
oc/mounts: No such file or directory<br>
grep: /proc/mounts: No such file or directory<br>Remounting root file syste=
m...<br>mount: can&#39;t read &#39;/etc/mtab&#39;: No such file or director=
y<br>------------------------8&lt;-----------------------------------8&lt;-=
-----------------<br>
<br></div><div>After a bit of research, I fount out that the busybox was po=
pulated in the rootfs <br></div><div>under ownership of &quot;andreas:andre=
as&quot; instead of &quot;root:root&quot;<br><br></div><div>I fixed manuall=
y the ownership and it booted=A0 up.<br>
<br></div><div>Does anyone knows what might be going wrong in my build proc=
ess?<br><br></div><div>Any guidance would be very helpful.<br><br></div><di=
v>TIA<br>Andreas<br></div><div><br></div></div>

--e89a8f838997a56e4d04e43248c9--
