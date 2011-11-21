Return-Path: <marc.ferland@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E055E00502
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 13:30:31 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ghbg2 with SMTP id g2so4322424ghb.35
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 13:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=QDYEsZHC6lbPiFFExJDm1rsXvM/UrQ5OHpegV9Ut3Ew=;
	b=SOHkTHV6Ep3PLPHFdypvvmJWOYoAP5eJSsJeMXZnflpq7tvr8nrXBB4WmNkEwh+OHu
	KMEX6IUKhR8aMwSPJ5Smv0eVBAEPEoen2DjA3ElhzJT+rw0a/FFljgJSmLlY7y1hK6N+
	vMBnuk1HtV8bq4SmEvB2qnk6UdWFwv4R65h5Q=
MIME-Version: 1.0
Received: by 10.50.100.194 with SMTP id fa2mr16330506igb.49.1321911029724;
	Mon, 21 Nov 2011 13:30:29 -0800 (PST)
Received: by 10.50.34.166 with HTTP; Mon, 21 Nov 2011 13:30:29 -0800 (PST)
Date: Mon, 21 Nov 2011 16:30:29 -0500
Message-ID: <CAMRMzCB2muhMQK02h_6jFH2QNypNXEego=smX-CZGGAGsP_c-A@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
To: yocto@yoctoproject.org
Subject: /dev/root entry in mtab file
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 21 Nov 2011 21:30:31 -0000
Content-Type: multipart/alternative; boundary=e89a8f3ba4d559f66a04b245659e

--e89a8f3ba4d559f66a04b245659e
Content-Type: text/plain; charset=UTF-8

Hi,

I noticed that the /etc/mtab file on my system image contains the /dev/root
entry which doesn't exist on the file system. This causes some problems
with applications that parse mtab to list currently mounted file systems.

So far my only option has been to parse the kernel command line and extract
the "root" option... it works but then I have to handle cases like
"root=UUID=".

Is this a known issue? If this is normal behavior, is there a generic way
to list mounted partitions correctly?

Here's my /etc/mtab:
rootfs / rootfs rw 0 0
/dev/root / ext3 rw,relatime,barrier=0,data=ordered 0 0
devtmpfs /dev devtmpfs rw,relatime,size=60248k,nr_inodes=15062,mode=755 0 0
proc /proc proc rw,relatime 0 0
tmpfs /mnt/.psplash tmpfs rw,relatime,size=40k 0 0
sysfs /sys sysfs rw,relatime 0 0
none /dev tmpfs rw,relatime,mode=755 0 0
devpts /dev/pts devpts rw,relatime,gid=5,mode=620 0 0
tmpfs /var/volatile tmpfs rw,relatime 0 0
tmpfs /media/ram tmpfs rw,relatime 0 0

Any help appreciated!

Regards,

Marc

--e89a8f3ba4d559f66a04b245659e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I noticed that the /etc/mtab file on my system image contains th=
e /dev/root entry which doesn&#39;t exist on the file system. This causes s=
ome problems with applications that parse mtab to list currently mounted fi=
le systems. <br>
<br>So far my only option has been to parse the kernel command line and ext=
ract the &quot;root&quot; option... it works but then I have to handle case=
s like &quot;root=3DUUID=3D&quot;. <br><br>Is this a known issue? If this i=
s normal behavior, is there a generic way to list mounted partitions correc=
tly?<br>
<br>Here&#39;s my /etc/mtab:<br>rootfs / rootfs rw 0 0<br>/dev/root / ext3 =
rw,relatime,barrier=3D0,data=3Dordered 0 0<br>devtmpfs /dev devtmpfs rw,rel=
atime,size=3D60248k,nr_inodes=3D15062,mode=3D755 0 0<br>proc /proc proc rw,=
relatime 0 0<br>
tmpfs /mnt/.psplash tmpfs rw,relatime,size=3D40k 0 0<br>sysfs /sys sysfs rw=
,relatime 0 0<br>none /dev tmpfs rw,relatime,mode=3D755 0 0<br>devpts /dev/=
pts devpts rw,relatime,gid=3D5,mode=3D620 0 0<br>tmpfs /var/volatile tmpfs =
rw,relatime 0 0<br>
tmpfs /media/ram tmpfs rw,relatime 0 0<br><br>Any help appreciated!<br><br>=
Regards, <br><br>Marc<br>

--e89a8f3ba4d559f66a04b245659e--
