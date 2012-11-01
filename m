Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: from echo.usurf.usu.edu (echo.usurf.usu.edu [129.123.194.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1323E003D7
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2012 15:54:03 -0700 (PDT)
Received: from wef.usurf.usu.edu (129.123.194.164) by echo.usurf.usu.edu
	(129.123.194.129) with Microsoft SMTP Server id 14.2.318.4;
	Thu, 1 Nov 2012 16:54:03 -0600
Received: from Mercury.usurf.usu.edu ([172.31.35.10]) by wef.usurf.usu.edu
	with Microsoft SMTPSVC(6.0.3790.4675); Thu, 1 Nov 2012 16:54:00 -0600
Received: from MERCURY.usurf.usu.edu ([172.31.35.10]) by Mercury.usurf.usu.edu
	([172.31.35.10]) with mapi id 14.02.0318.004;
	Thu, 1 Nov 2012 16:54:02 -0600
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: iSCSI in Yocto
Thread-Index: Ac24gxC1dF0DNlupSrGoedMicUuZLA==
Date: Thu, 1 Nov 2012 22:54:01 +0000
Message-ID: <DDDB9E6645DE24488B8485B41A051F471D983C43@Mercury.usurf.usu.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.31.22.105]
MIME-Version: 1.0
X-OriginalArrivalTime: 01 Nov 2012 22:54:00.0291 (UTC)
	FILETIME=[C8375B30:01CDB883]
Subject: iSCSI in Yocto
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
X-List-Received-Date: Thu, 01 Nov 2012 22:54:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am trying to get iSCSI support into my Yocto build, however I am finding =
that it is not going very well...=0A=
=0A=
I have my kernel configured with all the necessary options (I think...):=0A=
=0A=
iSCSI Boot Firmware Table Attributes module (SCSI_ISCSI_ATTRS)=0A=
Linux-iSCSI.org iSCSI Target Mode Stack (ISCSI_TARGET)=0A=
Generic Target Core Mod (TCM) and ConfigFS Infrastructure (CONFIG_TARGET_CO=
RE)=0A=
Userspace-driven configuration filesystem (CONFIGFS_FS)=0A=
=0A=
Now I am trying to get a program installed to configure the iSCSI setup.  I=
 found that there are no recipes for targetcli (which I would prefer to use=
 if there is one out there or if someone is willing to guide me through it)=
, so I found a recipe for lio-utils, which I have modified to build into my=
 image.=0A=
=0A=
So far, I can run the LIO utilities, but am always getting errors stating t=
hat the device is busy.  How can I get around those?  Internet searches are=
 fruitless.=0A=
=0A=
Any thoughts?  My output is below.  I suspect that it has something to do w=
ith the fact that /dev/sdb1 is already mounted on /media/sdb1 (though it re=
ally isn't - you can see that in the umount command at the end...).  Can I =
prevent the system from trying to mount those?  It appears that it is doing=
 it via udev, but even if I move the mount script out of it's location, it =
still is happening.=0A=
=0A=
What am I doing wrong?=0A=
=0A=
Thanks!=0A=
=0A=
=0A=
penryn:~# /etc/init.d/target start=0A=
Loading target_core_mod/ConfigFS core:   [OK]=0A=
=0A=
penryn:~# tcm_node --block iblock_0/sms /dev/sdb1=0A=
 ConfigFS HBA: iblock_0=0A=
Successfully added TCM/ConfigFS HBA: iblock_0=0A=
 ConfigFS Device Alias: sms=0A=
Device Params ['/dev/sdb1']=0A=
sh: line 0: echo: write error: Device or resource busy=0A=
IBLOCK: createvirtdev failed for enable_opt with echo 1 > /sys/kernel/confi=
g/target/core/iblock_0/sms/enable=0A=
Unable to register TCM/ConfigFS storage object: /sys/kernel/config/target/c=
ore/iblock_0/sms=0A=
=0A=
penryn:~# mount=0A=
rootfs on / type rootfs (rw)=0A=
proc on /proc type proc (rw,relatime)=0A=
sysfs on /sys type sysfs (rw,relatime)=0A=
/dev/sda on /media/sda type vfat (rw,relatime,fmask=3D0022,dmask=3D0022,cod=
epage=3Dcp437,iocharset=3Diso8859-1,shortname=3Dmixed,errors=3Dremount-ro)=
=0A=
/dev/sdb3 on /media/sdb3 type ext3 (rw,relatime,errors=3Dcontinue,barrier=
=3D1,data=3Dordered)=0A=
/dev/sdb1 on /media/sdb1 type ext2 (rw,relatime,errors=3Dcontinue)=0A=
/dev/loop0 on / type ext3 (rw,noatime,barrier=3D1,data=3Dordered)=0A=
devtmpfs on /dev type devtmpfs (rw,relatime,size=3D974536k,nr_inodes=3D2436=
34,mode=3D755)=0A=
proc on /proc type proc (rw,relatime)=0A=
sysfs on /sys type sysfs (rw,relatime)=0A=
debugfs on /sys/kernel/debug type debugfs (rw,relatime)=0A=
devpts on /dev/pts type devpts (rw,relatime,gid=3D5,mode=3D620)=0A=
tmpfs on /var/volatile type tmpfs (rw,relatime)=0A=
tmpfs on /media/ram type tmpfs (rw,relatime)=0A=
tmpfs on /tmp type tmpfs (rw,relatime)=0A=
/dev/sdb3 on /data type ext3 (rw,relatime,errors=3Dcontinue,barrier=3D1,dat=
a=3Dordered)=0A=
configfs on /sys/kernel/config type configfs (rw,relatime)=0A=
=0A=
penryn:~# umount /dev/sdb1=0A=
umount: /media/sdb1: not mounted=0A=
=0A=
penryn:~# =0A=

