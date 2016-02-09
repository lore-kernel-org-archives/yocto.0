Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CCEEE00C6E; Tue,  9 Feb 2016 00:32:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oliver.graute[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F7EFE00C6D
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 00:32:04 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id 128so186422846wmz.1
	for <yocto@yoctoproject.org>; Tue, 09 Feb 2016 00:32:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-type:content-disposition:user-agent;
	bh=7+0VRZFMbSmIhL4xRkqh/FXrqrtj6CYB5C2KZoD3NVo=;
	b=FAOKiM7+keOHa9gO57fx/KnKQzddyUYFjwEXSZYjEFL5oc4+Y6OGlpNOOXbm1DzonR
	Nk7tzhyZYKqaJT/f5B0D1VsHvlWSn1TR1FutG4GsmnvvvveO1MtDqGBQ6Ndb9Xn6/Upr
	/bFDR6jrnoQMvpxDKp3E3K5+G//q1NfZ8WVWWfeKXtNFVuQsBySbxOEo9xeX6Yl4ev7L
	A8OdAL9ezw7K2U+hoZSMpwX3CBcKIZTlpcsqOtG4ok5skZC6mztpSII9hC9LprVtQlW7
	KXHGCJRWdF65DeZNa7g38uSylFdGMgkmByuEOFNf9GfOwS6T4JHsnBnXWgYkLr2Z4RHr
	6gPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:mime-version:content-type:content-disposition:user-agent;
	bh=7+0VRZFMbSmIhL4xRkqh/FXrqrtj6CYB5C2KZoD3NVo=;
	b=MNb5jt7OHVJ+W8Qk4klwmCuezMCE5JKbq/kGVkTPTo6d7ehB7GH14QtgXl5370Hju2
	vwwEpNEP+6STNHXrPwWOClYhrg3q/MDjRe31WvF5JMGAafV0E6LOqJLltSAviANsYTaV
	fjzh7euvr7b206pR8RELXfpyq1prWxusdlUMw+icvfufyxTjJlDJRzK8Du3OqqXj63E1
	bFbQzW7i1kQFlW15iGD0F9epg7vCKkXduo1RWqemGLuO4cXFfn13chubNKN2YACF6zk/
	HrxluTHUAusParlbMUGRs4/UcyVmkRaEKd9NlWzYNwiuLyPAHQ3RPqdKTN4rqyNIJZ2M
	jL7Q==
X-Gm-Message-State: AG10YOTf4nmYfEX14EudyYy8pcisH2RMCzfTUOLbZ+KBr50wfh3GOdpVyXn6BPqYVozUAA==
X-Received: by 10.28.64.198 with SMTP id n189mr3191261wma.85.1455006723832;
	Tue, 09 Feb 2016 00:32:03 -0800 (PST)
Received: from localhost (x55b1e940.dyn.telefonica.de. [85.177.233.64])
	by smtp.gmail.com with ESMTPSA id
	x66sm16305616wmb.20.2016.02.09.00.32.02 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Tue, 09 Feb 2016 00:32:03 -0800 (PST)
Date: Tue, 9 Feb 2016 09:29:16 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20160209082916.GB6748@graute-opti>
Mail-Followup-To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: wic adds wrong mount lines to my fstab
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
X-List-Received-Date: Tue, 09 Feb 2016 08:32:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello list,

I am using wic to generate partitioned yocto images. After I boot such
an Image, I see two added entrys in my /etc/fstab wich are not correct.

cat /etc/fstab
#
# /etc/fstab: static file system information
#
# <file system> <dir>             <type>   <options>       <dump> <pass>

/dev/root       /                 auto     defaults        1  1
proc            /proc             proc     defaults        0  0
devpts          /dev/pts          devpts   mode=0620,gid=5 0  0
usbdevfs        /proc/bus/usb     usbdevfs noauto          0  0

/dev/mmcblk0p5  /rwfs             auto     defaults        0  0
#/dev/mmcblk0p3  /rescue           ext3     defaults        0  0
/dev/mmcblk0p5  /data             ext3     defaults        0  0

tmpfs           /run              tmpfs    mode=0755,nodev,nosuid,strictatime 0  0
tmpfs           /var/volatile     tmpfs    defaults        0  0
tmpfs           /var/cache        tmpfs    defaults        0  0
tmpfs           /var/lib          tmpfs    defaults        0  0
tmpfs           /var/spool        tmpfs    defaults        0  0
tmpfs           /var/apache2/logs tmpfs    defaults        0  0
/dev/mmcblkp3   /rescue ext3    defaults        0       0
/dev/mmcblkp5   /data   ext3    defaults        0       0

the last two lines are added by the wic tool. Here is the 0 missing. If
I add these 0 to my wks --ondisk mmcblk option wic is complaining. So I`am
just using is like in this wks disk layout:

# short-description: Create SD card image with a boot partition
# long-description:
# Create an image that can be written onto a SD card using dd for use
# with i.MX SoC family.
# It uses SPL and u-boot
#
# The disk layout used is:
#  - ----- --------- ---------- -------- --------- ---------- ------------
# | | SPL | u-boot  |  /boot1  | /boot2 | rootfs1 | rootfs2  |    data    |
#  - ----- --------- ---------- -------- --------- ---------- ------------
# ^ ^     ^         ^         ^              ^
# | |     |         |         |              |
# 0 1kiB  69kiB     4MiB   4MiB + 20MiB    4MiB + 8Mib + rootfs1 + rootfs2 + data
#
part SPL --source rawcopy --sourceparams="file=SPL" --ondisk mmcblk --no-table --align 1
part u-boot --source rawcopy --sourceparams="file=u-boot.img" --ondisk mmcblk --no-table --align 69
part /boot --source bootimg-partition --ondisk mmcblk --fstype=vfat --label boot --active --align 4096 --size 20M --extra-space 0
#part /boot2 --source bootimg-partition --ondisk mmcblk --fstype=vfat --label boot2 --active --align 4096 --size 8M --extra-space 0
part / --source rootfs --ondisk mmcblk --fstype=ext3 --label root --align 4 --size 125
part /rescue --source rootfs --ondisk mmcblk --fstype=ext3 --label secondary --align 4 --size 125
part /data --ondisk mmcblk --fstype=ext3 --label data --align 4 --size 730

Some sugesstions to fix this?

Best regards,

Oliver

