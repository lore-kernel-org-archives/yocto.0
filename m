Return-Path: <ashishpandey@huawei.com>
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [58.251.152.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 477DFE0132F
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 23:33:25 -0700 (PDT)
Received: from huawei.com (szxga05-in [172.24.2.49])
	by szxga05-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M1X00C98ZHS1E@szxga05-in.huawei.com> for
	yocto@yoctoproject.org; Wed, 04 Apr 2012 14:32:16 +0800 (CST)
Received: from szxrg01-dlp.huawei.com ([172.24.2.119])
	by szxga05-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M1X004QRZHSAI@szxga05-in.huawei.com> for
	yocto@yoctoproject.org; Wed, 04 Apr 2012 14:32:16 +0800 (CST)
Received: from szxeml201-edg.china.huawei.com ([172.24.2.119])
	by szxrg01-dlp.huawei.com (MOS 4.1.9-GA)	with ESMTP id AIA56827; Wed,
	04 Apr 2012 14:32:15 +0800
Received: from SZXEML421-HUB.china.huawei.com (10.82.67.160)
	by szxeml201-edg.china.huawei.com (172.24.2.39) with Microsoft SMTP
	Server (TLS) id 14.1.323.3; Wed, 04 Apr 2012 14:32:11 +0800
Received: from SZXEML532-MBX.china.huawei.com ([fe80::79c7:7b0b:cec1:322c])
	by szxeml421-hub.china.huawei.com ([10.82.67.160])
	with mapi id 14.01.0323.003; Wed, 04 Apr 2012 14:32:12 +0800
Date: Wed, 04 Apr 2012 06:32:12 +0000
From: Ashish Pandey <ashishpandey@huawei.com>
X-Originating-IP: [10.18.96.98]
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-id: <F3906846C0EDD246B5CF75E8EDA3C47E138A76C2@szxeml532-mbx.china.huawei.com>
MIME-version: 1.0
Accept-Language: en-IN, zh-CN, en-US
Thread-topic: Can not run Qemu with "runqemu qemux86 " after successful build
	on the Open Suse 12.1
Thread-index: Ac0SLKseMbUJAptTSKOizhzfGSqvHA==
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-CFilter-Loop: Reflected
Subject: Can not run Qemu with "runqemu qemux86 " after successful build on the Open Suse 12.1
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
X-List-Received-Date: Wed, 04 Apr 2012 06:33:26 -0000
Content-type: multipart/alternative;
	boundary="Boundary_(ID_NLKFtu7+NYn3GfAcM5sXJg)"
Content-language: en-IN

--Boundary_(ID_NLKFtu7+NYn3GfAcM5sXJg)
Content-type: text/plain; charset=iso-8859-1
Content-transfer-encoding: 7BIT

Hi All ,

   I am getting one error and I am not able to launch Qemu, when I am trying to run Qemu after building the image.

Error :

yocto@linux-461v:~/poky-1.2_M4.rc1/build> runqemu qemux86

Continuing with the following parameters:
KERNEL: [/home/yocto/poky-1.2_M4.rc1/build/tmp/deploy/images/bzImage-qemux86.bin]
ROOTFS: [/home/yocto/poky-1.2_M4.rc1/build/tmp/deploy/images/core-image-sato-sdk-qemux86.ext3]
FSTYPE: [ext3]
Setting up tap interface under sudo
root's password:
Acquiring lockfile for tap0...
WARNING: distccd not present, no distcc support loaded.
Running qemu...
/home/yocto/poky-1.2_M4.rc1/build/tmp/sysroots/i686-linux/usr/bin/qemu -kernel /home/yocto/poky-1.2_M4.rc1/build/tmp/deploy/images/bzImage-qemux86.bin -net nic,vlan=0 -net tap,vlan=0,ifname=tap0,script=no,downscript=no -hda /home/yocto/poky-1.2_M4.rc1/build/tmp/deploy/images/core-image-sato-sdk-qemux86.ext3 -show-cursor -usb -usbdevice wacom-tablet -vga vmware -enable-gl -no-reboot -m 128 --append "vga=0 root=/dev/hda rw mem=128M ip=192.168.7.2::192.168.7.1:255.255.255.0 oprofile.timer=1 "
Enabling opengl
No protocol specified
No protocol specified
Could not initialize SDL(No available video device) - exiting
Set 'tap0' nonpersistent
Releasing lockfile of preconfigured tap device 'tap0'

This works fine is I use nographic option with runqemu "runqemu nographic qemux86".

Steps:

1) build Image with "bitbake core-image-sato-sdk" on "poky-1.2_M4.rc1".
2) Run Qemu. "runqemu qemux86"

Setup Detail :

1) Open Suse 12.1

yocto@linux-461v:~/poky-1.2_M4.rc1/build> uname -a
Linux linux-461v 3.1.0-1.2-desktop #1 SMP PREEMPT Thu Nov 3 14:45:45 UTC 2011 (187dde0) i686 i686 i386 GNU/Linux


I have checked X11 and SDL library , All library's are installed on the build Machine. Kindly help me to solve this problem.

Thanks & Regards,
Ashish



Regards,

Ashish

Huawei Technology



This e-mail and its attachments contain confidential information from HUAWEI, which is intended only for the person or entity whose address is listed above. Any use of the information contained herein in any way (including, but not limited to, total or partial disclosure, reproduction, or dissemination) by persons other than the intended recipient(s) is prohibited. If you receive this e-mail in error, please notify the sender by phone or email immediately and delete it!

--Boundary_(ID_NLKFtu7+NYn3GfAcM5sXJg)
Content-type: text/html; charset=iso-8859-1
Content-transfer-encoding: 7BIT

<html dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="GENERATOR" content="MSHTML 8.00.6001.19170">
<style id="owaParaStyle">P {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px
}
</style>
</head>
<body fPStyle="1" ocsi="0">
<div style="direction: ltr;font-family: Tahoma;color: #000000;font-size: 10pt;">
<div>
<p><font face="Arial">Hi All ,</font> <br>
<br>
<font size="2" face="sans-serif">&nbsp; &nbsp;I am getting one error and I am not able to launch Qemu, when I am trying to run Qemu after building the image.</font>
<br>
<br>
<font size="2" face="sans-serif">Error :</font> <br>
<br>
<font color="blue" size="2" face="sans-serif">yocto@linux-461v:~/poky-1.2_M4.rc1/build&gt;
</font><font color="red" size="2" face="sans-serif">runqemu qemux86</font> <br>
<br>
<font color="blue" size="2" face="sans-serif">Continuing with the following parameters:</font>
<br>
<font color="blue" size="2" face="sans-serif">KERNEL: [/home/yocto/poky-1.2_M4.rc1/build/tmp/deploy/images/bzImage-qemux86.bin]</font>
<br>
<font color="blue" size="2" face="sans-serif">ROOTFS: [/home/yocto/poky-1.2_M4.rc1/build/tmp/deploy/images/core-image-sato-sdk-qemux86.ext3]</font>
<br>
<font color="blue" size="2" face="sans-serif">FSTYPE: [ext3]</font> <br>
<font color="blue" size="2" face="sans-serif">Setting up tap interface under sudo</font>
<br>
<font color="blue" size="2" face="sans-serif">root's password:</font> <br>
<font color="blue" size="2" face="sans-serif">Acquiring lockfile for tap0...</font>
<br>
<font color="blue" size="2" face="sans-serif">WARNING: distccd not present, no distcc support loaded.</font>
<br>
<font color="blue" size="2" face="sans-serif">Running qemu...</font> <br>
<font color="blue" size="2" face="sans-serif">/home/yocto/poky-1.2_M4.rc1/build/tmp/sysroots/i686-linux/usr/bin/qemu -kernel /home/yocto/poky-1.2_M4.rc1/build/tmp/deploy/images/bzImage-qemux86.bin -net nic,vlan=0 -net tap,vlan=0,ifname=tap0,script=no,downscript=no
 -hda /home/yocto/poky-1.2_M4.rc1/build/tmp/deploy/images/core-image-sato-sdk-qemux86.ext3 -show-cursor -usb -usbdevice wacom-tablet -vga vmware -enable-gl -no-reboot -m 128 --append &quot;vga=0 root=/dev/hda rw mem=128M ip=192.168.7.2::192.168.7.1:255.255.255.0
 oprofile.timer=1 &quot;</font> <br>
<font color="blue" size="2" face="sans-serif">Enabling opengl</font> <br>
<font color="blue" size="2" face="sans-serif">No protocol specified</font> <br>
<font color="blue" size="2" face="sans-serif">No protocol specified</font> <br>
<font color="blue" size="2" face="sans-serif">Could not initialize SDL(No available video device) - exiting</font>
<br>
<font color="blue" size="2" face="sans-serif">Set 'tap0' nonpersistent</font> <br>
<font color="blue" size="2" face="sans-serif">Releasing lockfile of preconfigured tap device 'tap0'</font>
<br>
<br>
<font size="2" face="sans-serif">This works fine is I use nographic option with runqemu</font><font color="blue" size="2" face="sans-serif">
</font><font color="red" size="2" face="sans-serif">&quot;runqemu nographic qemux86&quot;.</font>
<br>
<br>
<font size="2" face="sans-serif">Steps:</font> <br>
<br>
<font size="2" face="sans-serif">1) build Image with</font><font color="red" size="2" face="sans-serif"> &quot;bitbake core-image-sato-sdk&quot;
</font><font size="2" face="sans-serif">on</font><font color="red" size="2" face="sans-serif"> &quot;poky-1.2_M4.rc1&quot;.</font>
<br>
<font size="2" face="sans-serif">2) Run Qemu. </font><font color="red" size="2" face="sans-serif">&quot;runqemu qemux86&quot;</font>
<br>
<br>
<font size="2" face="sans-serif">Setup Detail :</font> <br>
<br>
<font size="2" face="sans-serif">1) Open Suse 12.1</font> <br>
<br>
<font color="blue" size="2" face="sans-serif">yocto@linux-461v:~/poky-1.2_M4.rc1/build&gt; uname -a</font>
<br>
<font color="blue" size="2" face="sans-serif">Linux linux-461v 3.1.0-1.2-desktop #1 SMP PREEMPT Thu Nov 3 14:45:45 UTC 2011 (187dde0) i686 i686 i386 GNU/Linux</font>
<br>
<br>
<br>
<font size="2" face="sans-serif">I have checked X11 and SDL library , All library's are installed on the build Machine.&nbsp;Kindly help me to solve this problem.
</font><br>
<br>
<font size="2" face="sans-serif">Thanks &amp; Regards,</font> <br>
<font size="2" face="sans-serif">Ashish</font> </p>
<p>&nbsp;</p>
<div style="FONT-FAMILY: Tahoma; FONT-SIZE: 13px">
<p><font color="#000080">Regards,</font></p>
<p><font color="#000080">Ashish</font></p>
<p><font color="#000080">Huawei Technology</font></p>
<p><font color="#000080"></font>&nbsp;</p>
<p><font color="#666699"><font size="2"><font face="Calibri">This e-mail and its attachments contain confidential information from HUAWEI, which is intended only for the person or entity whose address is listed above. Any use of the information contained herein
 in any way (including, but not limited to, total or partial disclosure, reproduction, or dissemination) by persons other than the intended recipient(s) is prohibited. If you receive this e-mail in error, please notify the sender by phone or email immediately
 and delete it! </font></font><br>
</font></p>
</div>
</div>
</div>
</body>
</html>

--Boundary_(ID_NLKFtu7+NYn3GfAcM5sXJg)--
