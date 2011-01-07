Return-Path: <joaohf@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5DE984C80B70
	for <yocto@yoctoproject.org>; Thu,  6 Jan 2011 18:08:10 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so18188302iyb.35
	for <yocto@yoctoproject.org>; Thu, 06 Jan 2011 16:08:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type:content-transfer-encoding;
	bh=jzZrnnD0T4WzgW0b2rW6buIYFncPdk91rPJEUGo7j4c=;
	b=xXalB97qyo7HqKMGAcdqytZ3Llb5BZItfw9AB64poZSmJKz0/wrHYtuw/Rq+NzsOZv
	XB88Wp2NtFYmJeOUuK1olixbJbmtO/xh4Q+wCvfFMbZrhV+fvJYBBaJ+guuu5n+zuXOx
	lsYO9cp4hnmZJ3h/wF/zadnccQ1eqU/i6qzBA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	b=RZnTXKCtoLbKZPPxAIrd+N3bgQp9BKhvMMKPB+mnxLjWzO5rzexHLqt0GRuHyPN/r/
	dgt5GRgkgGL+uudrGD+C6kJ7wC6bDO3+ljk6e6uzEI+tiEZ4UnUKkTxapqw7Tx68LR6b
	UoTBIvV3mlK5z8hITCdZZTeH8YpO4yrQb7gyI=
MIME-Version: 1.0
Received: by 10.42.226.197 with SMTP id ix5mr234271icb.73.1294358889773; Thu,
	06 Jan 2011 16:08:09 -0800 (PST)
Received: by 10.42.176.8 with HTTP; Thu, 6 Jan 2011 16:08:09 -0800 (PST)
Date: Thu, 6 Jan 2011 22:08:09 -0200
Message-ID: <AANLkTikPJZ9-aqQn3dtOUQbX3gNe9PAWWym8w9fmD0wY@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: yocto@yoctoproject.org
Subject: yocto handles conflict files?
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
X-List-Received-Date: Fri, 07 Jan 2011 00:08:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to use my owns BSP layer. Every thing is ok.

I have a task-via-boot.bb and a task-via-basic.bb. This two task are
used in via-swp-image.bb. I am following some examples and based on
yocto.

In file task-via-boot.bb I added 'base-files'; and In
task-via-basic.bb, 'procps'.

The following log show a problem:

+ rm -f /home/joaohf/tmp/yocto-poky/build/tmp/work/mpg-tp-linux/via-image-s=
wp-1.0-r3/rootfs/var/lib/opkg/lists/oe
/home/joaohf/tmp/yocto-poky/build/tmp/work/mpg-tp-linux/via-image-swp-1.0-r=
3/rootfs/var/lib/opkg/lists/oe-all
/home/joaohf/tmp/yocto-poky/build/tmp/work/mpg-tp-linux/via-image-swp-1.0-r=
3/rootfs/var/lib/opkg/lists/oe-mpg
/home/joaohf/tmp/yocto-poky/build/tmp/work/mpg-tp-linux/via-image-swp-1.0-r=
3/rootfs/var/lib/opkg/lists/oe-mpg-x86
+ log_check rootfs
+ set +x
log_check: Using
/home/joaohf/tmp/yocto-poky/build/tmp/work/mpg-tp-linux/via-image-swp-1.0-r=
3/temp/log.do_rootfs.27068
as logfile
log_check: There were error messages in the logfile
log_check: Matched keyword: [Collected errors]

Configuring task-via-initscripts.
Configuring task-via-machine-base.
Configuring task-via-base-serial.
Configuring task-via-basic.
Configuring opkg-collateral.
Collected errors:
 * resolve_conffiles: Existing conffile
/home/joaohf/tmp/yocto-poky/build/tmp/work/mpg-tp-linux/via-image-swp-1.0-r=
3/rootfs/etc/sysctl.conf
is different from the conffile in the new package. The new conffile
will be placed at
/home/joaohf/tmp/yocto-poky/build/tmp/work/mpg-tp-linux/via-image-swp-1.0-r=
3/rootfs/etc/sysctl.conf-opkg.
+ '[' '!' -z '' ']'
+ export D=3D/home/joaohf/tmp/yocto-poky/build/tmp/work/mpg-tp-linux/via-im=
age-swp-1.0-r3/rootfs
+ D=3D/home/joaohf/tmp/yocto-poky/build/tmp/work/mpg-tp-linux/via-image-swp=
-1.0-r3/rootfs
+ export OFFLINE_ROOT=3D/home/joaohf/tmp/yocto-poky/build/tmp/work/mpg-tp-l=
inux/via-image-swp-1.0-r3/rootfs


To solve it I removed procps from task-via-basic.bb. Works and I can
get the final image.

Is the file etc/sysctl.conf conflict with base-files or procps? How
yocto handles it?

Thanks

--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

