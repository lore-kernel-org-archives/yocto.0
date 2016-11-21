Return-Path: <skorpyon1992@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B171CE0098A; Sun, 20 Nov 2016 22:45:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (skorpyon1992[at]yahoo.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [216.109.115.63 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm45-vm4.bullet.mail.bf1.yahoo.com
	(nm45-vm4.bullet.mail.bf1.yahoo.com [216.109.115.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28F16E0098A
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 22:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1479710725; bh=ogev9oA77jqr/0ylWZnWity18wDZaT5SpWCwHA2vv+4=;
	h=To:From:Subject:Date:From:Subject;
	b=n9NHd8IrLI412NC9tJxlj+VR0BSVHoctN/4chhbVqXbXnrwsdE//Q2MHyUxHrvsKd/GVa2HhVBR2ovW3VSkwF9nBLsRD+WneU7S27rpkOrE46txSf6bf+J1lo5wA18PPbEdg0O5C9MRUfhWdfnwrQqzMACRT0iBU/H11vv6xzL9nVNsDU154YwmE1AnJ1C1hExcJPZ5aU15AlkXBr6xABgfb2EF8eTuPfyGNDaY5WBfaLRZ8p5MkwFhlWN4yGD2LNdZasg5jqre2l6u/SriutnLk6LoIHH50/cNBvuH/EzC+7lQzrJnZw+LUs7LAQtFuKdr3h33Vb9gCPPgeBbBkfw==
Received: from [66.196.81.171] by nm45.bullet.mail.bf1.yahoo.com with NNFMP;
	21 Nov 2016 06:45:25 -0000
Received: from [68.142.230.69] by tm17.bullet.mail.bf1.yahoo.com with NNFMP;
	21 Nov 2016 06:45:25 -0000
Received: from [127.0.0.1] by smtp226.mail.bf1.yahoo.com with NNFMP;
	21 Nov 2016 06:45:25 -0000
X-Yahoo-Newman-Id: 3391.8916.bm@smtp226.mail.bf1.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: 1laj6BgVM1mZ8HIlVA5yCKhGkGQZSDcOvBYc6ah7cKNsyVf
	bHyNw4TY04DSIKn8wecfM8StJKx83aQr8ik6WV_5esHA0ESlgItJUExIoDFu
	Zq2TfCBRMbC0Ng8GkVF7Vxmk2EO2rfYhkIMAxsI4_VcutFzYG3EViQlkk5gh
	QULBJH2NN.3be70.2VXfGjhh5qviAH6fg7uqfHnKKy28sSU6FMUC8jJcof9A
	LtxMJcd3X0PtD5D1.P8RgL_CpVxsSjlwde27pLpwig8HTOfX4cr8iTLIUfZA
	GDwHwLzBobatzZbLHVVLsoDt18ke1l_htkWwtL7sGjpe9II0Ajb_PvjPwoKu
	pacLf8RzRWymN.iHwzjN8_mAxYr8_Cvml1oqKbM6pVXdKwQOggi0vDs3.I3k
	lXkDnzddZKMI6eTS7DmOxZ6U4_GeGXaO3uintqPnRMH7Un.a.u0xQx7TIWdm
	MyctZJq3jC2bR0mVRPLsuufDxPQJ5pKUKUKrhbB7XzaspMHn0v8RiDaQTS0W
	4yfRwioLFlF4Ma0URqLDyViASA7aqXPcDY7XPDLFXrTCuryRD0aHZxw6h9zh
	.jXaetJFGIlOQxhUcLpgYgrSWSuabEyVTjV01jWeRQochTCdg_zvpyoRUY6l
	VOzbRWP0VaqjR16aGSPZOYfN8NEyFW2SJSHuyBjjdax.g0LZnicsHscrq813
	fMeaccA1mJ2ypZnooT4vHXHoOuxfWerTR
X-Yahoo-SMTP: hmuUxceswBC0UlvOzl1Q5a.Poz8XMfp8HQ--
To: yocto@yoctoproject.org
From: skorpyon1992 <skorpyon1992@yahoo.com>
Message-ID: <583297F2.9060003@yahoo.com>
Date: Mon, 21 Nov 2016 08:45:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.8.0
MIME-Version: 1.0
Subject: Failed to boot Non-SDK Image inside Eclipse
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
X-List-Received-Date: Mon, 21 Nov 2016 06:45:29 -0000
Content-Type: multipart/alternative;
	boundary="------------000608070105000409020106"

--------------000608070105000409020106
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

        Hello everyone,

    I have a problem related to booting the qemuarm image inside eclipse 
in order to test some applications I develop.
I built a custom image (it inherits core-image-minimal, used latest 
linux kernel 4.8, adds a few extra packages, such as boost, libstd, 
libmodbus etc.) which runs succesfully inside yocto with runqemu command 
(as ext4 fstype, also I have an extra ext4 partition made which is added 
with -drive parameter to runqemu command).
In order to use the created image inside Eclipse, I have extracted the 
rootfs separately and used the folowing trick to compile succesfully the 
application I am working at 
(https://wiki.yoctoproject.org/wiki/TipsAndTricks/RunningEclipseAgainstBuiltImage#Why_SDK_Image). 
I am using Eclipse Luna.
I have set all the necessary parameters inside, qemu starts, but at boot 
it hangs  at the following lines:
/
//md: Waiting for all devices to be available before autodetect//
//md: If you don't use raid, use raid=noautodetect//
//md: Scanned 0 and added 0 devices.//
//md: autorun..//
//md: autorun DONE.//
//
//After a while it shows the following://
//
//VFS: Unable to mount root fs via NFS, trying floppy.//
//VFS: Cannot open root device "nfs" or unknown-block(2,0): error -6//
//Please append a correct "root=" boot option; here are the available 
partitions://
//0100     4096  ram0 (driver?) //
//......//
//fd00    4096  vda    driver:virtio_blk//
//Kernel panic - not syncing: VFS: Unable to mount root fs on 
unknown-block(2,0)//
//....//
/
   Inside the console terminal (the one that starts the qemu console) it 
shows the following:

/
//Assuming /home/user/myrootfs-rootfs/rootfs is an nfs rootfs//
//
//Continuing with the following parameters://
//KERNEL: 
[/home/user/test/yocto-krogoth/build-qemuarm/tmp/deploy/images/qemuarm/zImage-qemuarm.bin]//
//ROOTFS: [/home/user/myrootfs-rootfs/rootfs]//
//FSTYPE: [nfs]//
//Acquiring lockfile for tap0...//
//Acquiring lockfile for tap1...//
//Acquiring lockfile for tap2...//
//Acquiring lockfile for tap4...//
//Acquiring lockfile for tap3...//
//Acquiring lockfile for tap5...//
//Using preconfigured tap device 'tap5'//
//If this is not intended, touch /tmp/qemu-tap-locks/tap5.skip to make 
runqemu skip tap5.//
//runqemu-export-rootfs restart /home/user/myrootfs-rootfs/rootfs//
//No PID file, not stopping rpc.nfsd//
//Creating exports file...//
//Starting User Mode nfsd//
//
// /home/user/test/yocto-krogoth/build-qemuarm/tmp/sysroots/x86_64-linux/usr/bin/pseudo 
-P 
/home/user/test/yocto-krogoth/build-qemuarm/tmp/sysroots/x86_64-linux/usr /home/user/test/yocto-krogoth/build-qemuarm/tmp/sysroots/x86_64-linux/usr/bin/unfsd 
-p -N -i /home/user/.runqemu-sdk/nfs5.pid -e 
/home/user/.runqemu-sdk/exports5 -x 11116 -n 3059 -y 21116 -m 3058//
////
//On your target please remember to add the following options for NFS//
//nfsroot=IP_ADDRESS:/home/user/myrootfs-rootfs/rootfs,nfsvers=3,port=,mountprog=,nfsprog=,udp,mountport=//
//Running qemu-system-arm...//
///home/user/test/yocto-krogoth/build-qemuarm/tmp/sysroots/x86_64-linux/usr/bin/qemu-system-arm 
-kernel 
/home/user/test/yocto-krogoth/build-qemuarm/tmp/deploy/images/qemuarm/zImage-qemuarm.bin 
-net nic,model=virtio -net 
tap,vlan=0,ifname=tap5,script=no,downscript=no -M versatilepb 
--no-reboot -show-cursor -usb -usbdevice tablet -no-reboot -dtb 
/home/user/test/yocto-krogoth/build-qemuarm/tmp/deploy/images/qemuarm/zImage-versatile-pb.dtb 
-drive 
file=/home/user/test/yocto-krogoth/build-qemuarm/tmp/deploy/images/qemuarm/data.ext4,if=virtio,format=raw 
-m 128 -serial mon:vc -serial null -append "root=/dev/nfs 
nfsroot=192.168.7.1:/home/user/myrootfs-rootfs/rootfs,nfsvers=3,port=3059,mountprog=21116,nfsprog=11116,udp,mountport=3058 
rw console=ttyAMA0,115200 ip=192.168.7.12::192.168.7.11:255.255.255.0 
mem=128M console=tty"//
//vpb_sic_write: Bad register offset 0x2c//
//
/

      I have rpcbind enabled (it has been addded the -i option as 
described in the documentation). Inside the kernel's defconfig the NFS 
support is enabled.
      unfsd it listens on port 3049 (checked with netstat).
      Inside syslog I have a warning related to it:
/        Nov 18 13:37:04 unknown unfsd[27672]: Warning: unknown exports 
option `async' ignored/

     What should be done in order to succesfully boot the non SDK image 
inside Eclipse with the NFS file system?

      Thanks in advance!

--------------000608070105000409020106
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
           Hello everyone,<br>
           <br>
       I have a problem related to booting the qemuarm image inside
    eclipse in order to test some applications I develop.<br>
    I built a custom image (it inherits core-image-minimal, used latest
    linux kernel 4.8, adds a few extra packages, such as boost, libstd,
    libmodbus etc.) which runs succesfully inside yocto with runqemu
    command (as ext4 fstype, also I have an extra ext4 partition made
    which is added with -drive parameter to runqemu command). <br>
    In order to use the created image inside Eclipse, I have extracted
    the rootfs separately and used the folowing trick to compile
    succesfully the application I am working at
    (<a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/TipsAndTricks/RunningEclipseAgainstBuiltImage#Why_SDK_Image">https://wiki.yoctoproject.org/wiki/TipsAndTricks/RunningEclipseAgainstBuiltImage#Why_SDK_Image</a>).
    I am using Eclipse Luna.<br>
    I have set all the necessary parameters inside, qemu starts, but at
    boot it hangs  at the following lines:<br>
    <i><br>
    </i><i>md: Waiting for all devices to be available before autodetect</i><i><br>
    </i><i>md: If you don't use raid, use raid=noautodetect</i><i><br>
    </i><i>md: Scanned 0 and added 0 devices.</i><i><br>
    </i><i>md: autorun..</i><i><br>
    </i><i>md: autorun DONE.</i><i><br>
    </i><i><br>
    </i><i>After a while it shows the following:</i><i><br>
    </i><i><br>
    </i><i>VFS: Unable to mount root fs via NFS, trying floppy.</i><i><br>
    </i><i>VFS: Cannot open root device "nfs" or unknown-block(2,0):
      error -6</i><i><br>
    </i><i>Please append a correct "root=" boot option; here are the
      available partitions:</i><i><br>
    </i><i>0100     4096  ram0 (driver?) </i><i><br>
    </i><i>......</i><i><br>
    </i><i>fd00    4096  vda    driver:virtio_blk</i><i><br>
    </i><i>Kernel panic - not syncing: VFS: Unable to mount root fs on
      unknown-block(2,0)</i><i><br>
    </i><i>....</i><i><br>
    </i><br>
      Inside the console terminal (the one that starts the qemu console)
    it shows the following:<br>
    <br>
    <i><br>
    </i><i>Assuming /home/user/myrootfs-rootfs/rootfs is an nfs rootfs</i><i><br>
    </i><i><br>
    </i><i>Continuing with the following parameters:</i><i><br>
    </i><i>KERNEL:
[/home/user/test/yocto-krogoth/build-qemuarm/tmp/deploy/images/qemuarm/zImage-qemuarm.bin]</i><i><br>
    </i><i>ROOTFS: [/home/user/myrootfs-rootfs/rootfs]</i><i><br>
    </i><i>FSTYPE: [nfs]</i><i><br>
    </i><i>Acquiring lockfile for tap0...</i><i><br>
    </i><i>Acquiring lockfile for tap1...</i><i><br>
    </i><i>Acquiring lockfile for tap2...</i><i><br>
    </i><i>Acquiring lockfile for tap4...</i><i><br>
    </i><i>Acquiring lockfile for tap3...</i><i><br>
    </i><i>Acquiring lockfile for tap5...</i><i><br>
    </i><i>Using preconfigured tap device 'tap5'</i><i><br>
    </i><i>If this is not intended, touch /tmp/qemu-tap-locks/tap5.skip
      to make runqemu skip tap5.</i><i><br>
    </i><i>runqemu-export-rootfs restart
      /home/user/myrootfs-rootfs/rootfs</i><i><br>
    </i><i>No PID file, not stopping rpc.nfsd</i><i><br>
    </i><i>Creating exports file...</i><i><br>
    </i><i>Starting User Mode nfsd</i><i><br>
    </i><i><br>
    </i><i> /home/user/test/yocto-krogoth/build-qemuarm/tmp/sysroots/x86_64-linux/usr/bin/pseudo
      -P
      /home/user/test/yocto-krogoth/build-qemuarm/tmp/sysroots/x86_64-linux/usr
      /home/user/test/yocto-krogoth/build-qemuarm/tmp/sysroots/x86_64-linux/usr/bin/unfsd
      -p -N -i /home/user/.runqemu-sdk/nfs5.pid -e
      /home/user/.runqemu-sdk/exports5 -x 11116 -n 3059 -y 21116 -m 3058</i><i><br>
    </i><i> </i><i><br>
    </i><i>On your target please remember to add the following options
      for NFS</i><i><br>
    </i><i>nfsroot=IP_ADDRESS:/home/user/myrootfs-rootfs/rootfs,nfsvers=3,port=,mountprog=,nfsprog=,udp,mountport=</i><i><br>
    </i><i>Running qemu-system-arm...</i><i><br>
    </i><i>/home/user/test/yocto-krogoth/build-qemuarm/tmp/sysroots/x86_64-linux/usr/bin/qemu-system-arm
      -kernel
      /home/user/test/yocto-krogoth/build-qemuarm/tmp/deploy/images/qemuarm/zImage-qemuarm.bin
      -net nic,model=virtio -net
      tap,vlan=0,ifname=tap5,script=no,downscript=no -M versatilepb
      --no-reboot -show-cursor -usb -usbdevice tablet -no-reboot -dtb
      /home/user/test/yocto-krogoth/build-qemuarm/tmp/deploy/images/qemuarm/zImage-versatile-pb.dtb
      -drive
      file=/home/user/test/yocto-krogoth/build-qemuarm/tmp/deploy/images/qemuarm/data.ext4,if=virtio,format=raw
      -m 128 -serial mon:vc -serial null -append "root=/dev/nfs
      nfsroot=192.168.7.1:/home/user/myrootfs-rootfs/rootfs,nfsvers=3,port=3059,mountprog=21116,nfsprog=11116,udp,mountport=3058
      rw console=ttyAMA0,115200
      ip=192.168.7.12::192.168.7.11:255.255.255.0 mem=128M console=tty"</i><i><br>
    </i><i>vpb_sic_write: Bad register offset 0x2c</i><i><br>
    </i><i><br>
    </i><br>
    <br>
         I have rpcbind enabled (it has been addded the -i option as
    described in the documentation). Inside the kernel's defconfig the
    NFS support is enabled.<br>
         unfsd it listens on port 3049 (checked with netstat).<br>
         Inside syslog I have a warning related to it: <br>
    <i>        Nov 18 13:37:04 unknown unfsd[27672]: Warning: unknown
      exports option `async' ignored</i><br>
            <br>
        What should be done in order to succesfully boot the non SDK
    image inside Eclipse with the NFS file system?<br>
        <br>
         Thanks in advance!
  </body>
</html>

--------------000608070105000409020106--
