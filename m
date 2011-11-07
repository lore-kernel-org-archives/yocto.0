Return-Path: <anders@chargestorm.se>
Received: from stoexhub03.domain01.net (STOEXHUB03.domain01.net
	[83.145.59.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFB64E012F3
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 01:18:52 -0800 (PST)
Received: from ad.chargestorm.se (193.235.91.228) by stoexhub03.domain01.net
	(10.12.10.3) with Microsoft SMTP Server (TLS) id 8.3.137.0;
	Mon, 7 Nov 2011 10:18:50 +0100
Date: Mon, 7 Nov 2011 10:18:51 +0100
From: Anders Darander <anders@chargestorm.se>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <20111107091851.GA3677@ad.chargestorm.se>
Mail-Followup-To: Yocto Project <yocto@yoctoproject.org>
MIME-Version: 1.0
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.21 (2010-09-15)
X-GFI-SMTP-Submission: 1
Subject: [rpm] Problems with package upgrades
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
X-List-Received-Date: Mon, 07 Nov 2011 09:18:55 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline


We have found a problem with upgrading packages on our own image.
(Hopefully it'll show up to an error from our side).

After upgrading system packages, like busybox, we render our system
unusable... In the busybox case, all symlinks pointing to busybox has
been removed, and not reinstated during the post-install script.

The output from the rpm upgrade is shown below [2].

In order to get some feedback, I've reproduced the problem using a
sligthly modified core-image-minimal built for qemux86. In the image, we
increased the rootfs size, removed the removing of packaging data files
and added rpm (dropbear was added to be able to easily tranfser a test
rpm to the system). The patch is at the end of the mail [1]. 

Once this was done, the image was built, and after that, we bumped the
PR of busybox and rebuilt that package. We transfered the updated
busybox rpm to a running qemux86 instance, and tried to `rpm -Uvh
busybox-1.18.5-r2`. After running this, all links normally pointing to
/bin/busybox are non-existing, most certainly due to problems in the
post-install script. 

Thanks in advance for any feedback/suggestions.
Cheers,
Anders

[1]
diff --git a/meta/recipes-core/images/core-image-minimal.bb
b/meta/recipes-core/images/core-image-mi
index 56fc20c..91f648f 100644
--- a/meta/recipes-core/images/core-image-minimal.bb
+++ b/meta/recipes-core/images/core-image-minimal.bb
@@ -9,7 +9,9 @@ LICENSE = "MIT"
 
 inherit core-image
 
-IMAGE_ROOTFS_SIZE = "8192"
+IMAGE_ROOTFS_SIZE = "65536"
 
 # remove not needed ipkg informations
-ROOTFS_POSTPROCESS_COMMAND += "remove_packaging_data_files ; "
+#ROOTFS_POSTPROCESS_COMMAND += "remove_packaging_data_files ; "
+IMAGE_INSTALL += "rpm \
+              dropbear"

[2]
root@qemux86:~# rpm -Uv busybox-1.18.5-r2.i586.rpm 
Preparing packages for installation...
busybox-1.18.5-r2.i586
update-alternatives: Linking //usr/bin/bunzip2 to /usr/bin/bunzip2.bzip2
update-alternatives: Linking //usr/bin/bzcat to /usr/bin/bzcat.bzip2
update-alternatives: Linking //bin/date to busybox
update-alternatives: Linking //bin/base64 to busybox
update-alternatives: Linking //usr/bin/patch to ../../bin/busybox
update-alternatives: Linking //usr/bin/find to ../../bin/busybox
update-alternatives: Linking //bin/grep to busybox
update-alternatives: Linking //bin/egrep to busybox
update-alternatives: Linking //bin/fgrep to busybox
update-alternatives: Linking //usr/bin/xargs to ../../bin/busybox
update-alternatives: Linking //sbin/bootchartd to ../bin/busybox
update-alternatives: Linking //sbin/halt to halt.sysvinit
update-alternatives: Linking //sbin/poweroff to poweroff.sysvinit
update-alternatives: Linking //sbin/reboot to reboot.sysvinit
update-alternatives: Linking //sbin/insmod to ../bin/busybox
update-alternatives: Linking //sbin/lsmod to ../bin/busybox
update-alternatives: Linking //sbin/modinfo to ../bin/busybox
update-alternatives: Linking //sbin/modprobe to ../bin/busybox
update-alternatives: Linking //sbin/rmmod to ../bin/busybox
update-alternatives: Linking //usr/sbin/nbd-client to ../../bin/busybox
update-alternatives: Linking //bin/iostat to busybox
update-alternatives: Linking //bin/mpstat to busybox
update-alternatives: Linking //usr/bin/pmap to ../../bin/busybox
update-alternatives: Linking //bin/powertop to busybox
update-alternatives: Linking //usr/bin/smemcap to ../../bin/busybox
update-alternatives: Linking //bin/ash to busybox
update-alternatives: Linking //bin/sh to busybox
update-alternatives: Linking //sbin/blockdev to ../bin/busybox
update-alternatives: Linking //bin/rev to busybox
update-alternatives: Linking //usr/bin/[ to ../../bin/busybox
update-alternatives: Linking //usr/bin/[[ to ../../bin/busybox
update-alternatives: Linking //usr/bin/ar to ../../bin/busybox
update-alternatives: Linking //usr/bin/awk to ../../bin/busybox
update-alternatives: Linking //usr/bin/basename to ../../bin/busybox
update-alternatives: Linking //bin/cat to busybox
update-alternatives: Linking //bin/chattr to busybox
update-alternatives: Linking //bin/chgrp to busybox
update-alternatives: Linking //bin/chmod to busybox
update-alternatives: Linking //bin/chown to busybox
update-alternatives: Linking //usr/sbin/chroot to ../../bin/busybox
update-alternatives: Linking //usr/bin/chvt to ../../bin/busybox
update-alternatives: Linking //usr/bin/clear to ../../bin/busybox
update-alternatives: Linking //usr/bin/cmp to ../../bin/busybox
update-alternatives: Linking //bin/cp to busybox
update-alternatives: Linking //bin/cpio to busybox
update-alternatives: Linking //usr/bin/cut to ../../bin/busybox
update-alternatives: Linking //usr/bin/dc to ../../bin/busybox
update-alternatives: Linking //bin/dd to busybox
update-alternatives: Linking //usr/bin/deallocvt to ../../bin/busybox
update-alternatives: Linking //bin/df to busybox
update-alternatives: Linking //usr/bin/diff to ../../bin/busybox
update-alternatives: Linking //usr/bin/dirname to ../../bin/busybox
update-alternatives: Linking //bin/dmesg to busybox
update-alternatives: Linking //bin/dnsdomainname to busybox
update-alternatives: Linking //usr/bin/du to ../../bin/busybox
update-alternatives: Linking //bin/dumpkmap to busybox
update-alternatives: Linking //usr/bin/dumpleases to ../../bin/busybox
update-alternatives: Linking //bin/echo to busybox
update-alternatives: Linking //usr/bin/env to ../../bin/busybox
update-alternatives: Linking //usr/bin/expr to ../../bin/busybox
update-alternatives: Linking //bin/false to busybox
update-alternatives: Linking //usr/sbin/fbset to ../../bin/busybox
update-alternatives: Linking //sbin/fdisk to ../bin/busybox
update-alternatives: Linking //usr/bin/fgconsole to ../../bin/busybox
update-alternatives: Linking //usr/bin/flock to ../../bin/busybox
update-alternatives: Linking //usr/bin/free to ../../bin/busybox
update-alternatives: Linking //sbin/fsck to ../bin/busybox
update-alternatives: Linking //sbin/fsck.minix to ../bin/busybox
update-alternatives: Linking //usr/bin/fuser to ../../bin/busybox
update-alternatives: Linking //bin/gunzip to busybox
update-alternatives: Linking //bin/gzip to busybox
update-alternatives: Linking //usr/bin/head to ../../bin/busybox
update-alternatives: Linking //usr/bin/hexdump to ../../bin/busybox
update-alternatives: Linking //bin/hostname to busybox
update-alternatives: Linking //sbin/hwclock to ../bin/busybox
update-alternatives: Linking //usr/bin/id to ../../bin/busybox
update-alternatives: Linking //sbin/ifconfig to ../bin/busybox
update-alternatives: Linking //sbin/ifdown to ../bin/busybox
update-alternatives: Linking //sbin/ifup to ../bin/busybox
update-alternatives: Linking //bin/ip to busybox
update-alternatives: Linking //bin/kill to busybox
update-alternatives: Linking //usr/bin/killall to ../../bin/busybox
update-alternatives: Linking //sbin/klogd to ../bin/busybox
update-alternatives: Linking //usr/bin/less to ../../bin/busybox
update-alternatives: Linking //bin/ln to busybox
update-alternatives: Linking //usr/sbin/loadfont to ../../bin/busybox
update-alternatives: Linking //sbin/loadkmap to ../bin/busybox
update-alternatives: Linking //usr/bin/logger to ../../bin/busybox
update-alternatives: Linking //usr/bin/logname to ../../bin/busybox
update-alternatives: Linking //sbin/logread to ../bin/busybox
update-alternatives: Linking //sbin/losetup to ../bin/busybox
update-alternatives: Linking //bin/ls to busybox
update-alternatives: Linking //usr/bin/md5sum to ../../bin/busybox
update-alternatives: Linking //usr/bin/microcom to ../../bin/busybox
update-alternatives: Linking //bin/mkdir to busybox
update-alternatives: Linking //usr/bin/mkfifo to ../../bin/busybox
update-alternatives: Linking //sbin/mkfs.minix to ../bin/busybox
update-alternatives: Linking //bin/mknod to busybox
update-alternatives: Linking //sbin/mkswap to ../bin/busybox
update-alternatives: Linking //bin/mktemp to busybox
update-alternatives: Linking //bin/more to busybox
update-alternatives: Linking //bin/mount to busybox
update-alternatives: Linking //bin/mv to busybox
update-alternatives: Linking //usr/bin/nc to ../../bin/busybox
update-alternatives: Linking //bin/netstat to busybox
update-alternatives: Linking //usr/bin/nohup to ../../bin/busybox
update-alternatives: Linking //usr/bin/nslookup to ../../bin/busybox
update-alternatives: Linking //usr/bin/od to ../../bin/busybox
update-alternatives: Linking //usr/bin/openvt to ../../bin/busybox
update-alternatives: Linking //bin/pidof to pidof.sysvinit
update-alternatives: Linking //bin/ping to busybox
update-alternatives: Linking //bin/ping6 to busybox
update-alternatives: Linking //sbin/pivot_root to ../bin/busybox
update-alternatives: Linking //usr/bin/printf to ../../bin/busybox
update-alternatives: Linking //bin/ps to busybox
update-alternatives: Linking //bin/pwd to busybox
update-alternatives: Linking //usr/sbin/rdate to ../../bin/busybox
update-alternatives: Linking //usr/bin/readlink to ../../bin/busybox
update-alternatives: Linking //usr/bin/realpath to ../../bin/busybox
update-alternatives: Linking //usr/bin/renice to ../../bin/busybox
update-alternatives: Linking //usr/bin/reset to ../../bin/busybox
update-alternatives: Linking //bin/rm to busybox
update-alternatives: Linking //bin/rmdir to busybox
update-alternatives: Linking //sbin/route to ../bin/busybox
update-alternatives: Linking //usr/bin/run-parts to ../../bin/busybox
update-alternatives: Linking //bin/sed to busybox
update-alternatives: Linking //usr/bin/seq to ../../bin/busybox
update-alternatives: Linking //sbin/setconsole to ../bin/busybox
update-alternatives: Linking //bin/sleep to busybox
update-alternatives: Linking //usr/bin/sort to ../../bin/busybox
update-alternatives: Linking //sbin/start-stop-daemon to ../bin/busybox
update-alternatives: Linking //usr/bin/strings to ../../bin/busybox
update-alternatives: Linking //bin/stty to busybox
update-alternatives: Linking //sbin/swapoff to ../bin/busybox
update-alternatives: Linking //sbin/swapon to ../bin/busybox
update-alternatives: Linking //sbin/switch_root to ../bin/busybox
update-alternatives: Linking //bin/sync to busybox
update-alternatives: Linking //sbin/sysctl to ../bin/busybox
update-alternatives: Linking //sbin/syslogd to ../bin/busybox
update-alternatives: Linking //usr/bin/tail to ../../bin/busybox
update-alternatives: Linking //bin/tar to busybox
update-alternatives: Linking //usr/bin/tee to ../../bin/busybox
update-alternatives: Linking //usr/bin/telnet to ../../bin/busybox
update-alternatives: Linking //usr/bin/test to ../../bin/busybox
update-alternatives: Linking //usr/bin/tftp to ../../bin/busybox
update-alternatives: Linking //usr/bin/time to ../../bin/busybox
update-alternatives: Linking //usr/bin/top to ../../bin/busybox
update-alternatives: Linking //bin/touch to busybox
update-alternatives: Linking //usr/bin/tr to ../../bin/busybox
update-alternatives: Linking //usr/bin/traceroute to ../../bin/busybox
update-alternatives: Linking //bin/true to busybox
update-alternatives: Linking //usr/bin/tty to ../../bin/busybox
update-alternatives: Linking //sbin/udhcpc to ../bin/busybox
update-alternatives: Linking //usr/sbin/udhcpd to ../../bin/busybox
update-alternatives: Linking //bin/umount to busybox
update-alternatives: Linking //bin/uname to busybox
update-alternatives: Linking //usr/bin/uniq to ../../bin/busybox
update-alternatives: Linking //usr/bin/unxz to ../../bin/busybox
update-alternatives: Linking //usr/bin/unzip to ../../bin/busybox
update-alternatives: Linking //usr/bin/uptime to ../../bin/busybox
update-alternatives: Linking //bin/usleep to busybox
update-alternatives: Linking //bin/vi to busybox
update-alternatives: Linking //bin/watch to busybox
update-alternatives: Linking //usr/bin/wc to ../../bin/busybox
update-alternatives: Linking //usr/bin/wget to ../../bin/busybox
update-alternatives: Linking //usr/bin/which to ../../bin/busybox
update-alternatives: Linking //usr/bin/who to ../../bin/busybox
update-alternatives: Linking //usr/bin/whoami to ../../bin/busybox
update-alternatives: Linking //usr/bin/xzcat to ../../bin/busybox
update-alternatives: Linking //usr/bin/xz to ../../bin/busybox
update-alternatives: Linking //usr/bin/yes to ../../bin/busybox
update-alternatives: Linking //bin/zcat to busybox
update-alternatives: Linking //usr/bin/bunzip2 to /usr/bin/bunzip2.bzip2
update-alternatives: Linking //usr/bin/bzcat to /usr/bin/bzcat.bzip2
update-alternatives: removing //bin/date as no more alternatives exist
for it
update-alternatives: removing //bin/base64 as no more alternatives exist
for it
update-alternatives: removing //usr/bin/patch as no more alternatives
exist for it
update-alternatives: removing //usr/bin/find as no more alternatives
exist for it
update-alternatives: removing //bin/grep as no more alternatives exist
for it
update-alternatives: removing //bin/egrep as no more alternatives exist
for it
update-alternatives: removing //bin/fgrep as no more alternatives exist
for it
update-alternatives: removing //usr/bin/xargs as no more alternatives
exist for it
update-alternatives: removing //sbin/bootchartd as no more alternatives
exist for it
/usr/bin/update-alternatives: line 193: grep: not found
update-alternatives: Linking //sbin/halt to 
/usr/bin/update-alternatives: line 193: grep: not found
update-alternatives: Linking //sbin/poweroff to 
/usr/bin/update-alternatives: line 193: grep: not found
update-alternatives: Linking //sbin/reboot to 
update-alternatives: removing //sbin/insmod as no more alternatives
exist for it
update-alternatives: removing //sbin/lsmod as no more alternatives exist
for it
update-alternatives: removing //sbin/modinfo as no more alternatives
exist for it
update-alternatives: removing //sbin/modprobe as no more alternatives
exist for it
update-alternatives: removing //sbin/rmmod as no more alternatives exist
for it
update-alternatives: removing //usr/sbin/nbd-client as no more
alternatives exist for it
update-alternatives: removing //bin/iostat as no more alternatives exist
for it
update-alternatives: removing //bin/mpstat as no more alternatives exist
for it
update-alternatives: removing //usr/bin/pmap as no more alternatives
exist for it
update-alternatives: removing //bin/powertop as no more alternatives
exist for it
update-alternatives: removing //usr/bin/smemcap as no more alternatives
exist for it
update-alternatives: removing //bin/ash as no more alternatives exist
for it
update-alternatives: removing //bin/sh as no more alternatives exist for
it
update-alternatives: removing //sbin/blockdev as no more alternatives
exist for it
update-alternatives: removing //bin/rev as no more alternatives exist
for it
update-alternatives: removing //usr/bin/[ as no more alternatives exist
for it
update-alternatives: removing //usr/bin/[[ as no more alternatives exist
for it
update-alternatives: removing //usr/bin/ar as no more alternatives exist
for it
update-alternatives: removing //usr/bin/awk as no more alternatives
exist for it
update-alternatives: removing //usr/bin/basename as no more alternatives
exist for it
update-alternatives: removing //bin/cat as no more alternatives exist
for it
update-alternatives: removing //bin/chattr as no more alternatives exist
for it
update-alternatives: removing //bin/chgrp as no more alternatives exist
for it
update-alternatives: removing //bin/chmod as no more alternatives exist
for it
update-alternatives: removing //bin/chown as no more alternatives exist
for it
update-alternatives: removing //usr/sbin/chroot as no more alternatives
exist for it
update-alternatives: removing //usr/bin/chvt as no more alternatives
exist for it
update-alternatives: removing //usr/bin/clear as no more alternatives
exist for it
update-alternatives: removing //usr/bin/cmp as no more alternatives
exist for it
update-alternatives: removing //bin/cp as no more alternatives exist for
it
update-alternatives: removing //bin/cpio as no more alternatives exist
for it
update-alternatives: removing //usr/bin/cut as no more alternatives
exist for it
update-alternatives: removing //usr/bin/dc as no more alternatives exist
for it
update-alternatives: removing //bin/dd as no more alternatives exist for
it
update-alternatives: removing //usr/bin/deallocvt as no more
alternatives exist for it
update-alternatives: removing //bin/df as no more alternatives exist for
it
update-alternatives: removing //usr/bin/diff as no more alternatives
exist for it
update-alternatives: removing //usr/bin/dirname as no more alternatives
exist for it
update-alternatives: removing //bin/dmesg as no more alternatives exist
for it
update-alternatives: removing //bin/dnsdomainname as no more
alternatives exist for it
update-alternatives: removing //usr/bin/du as no more alternatives exist
for it
update-alternatives: removing //bin/dumpkmap as no more alternatives
exist for it
update-alternatives: removing //usr/bin/dumpleases as no more
alternatives exist for it
update-alternatives: removing //bin/echo as no more alternatives exist
for it
update-alternatives: removing //usr/bin/env as no more alternatives
exist for it
update-alternatives: removing //usr/bin/expr as no more alternatives
exist for it
update-alternatives: removing //bin/false as no more alternatives exist
for it
update-alternatives: removing //usr/sbin/fbset as no more alternatives
exist for it
update-alternatives: removing //sbin/fdisk as no more alternatives exist
for it
update-alternatives: removing //usr/bin/fgconsole as no more
alternatives exist for it
update-alternatives: removing //usr/bin/flock as no more alternatives
exist for it
update-alternatives: removing //usr/bin/free as no more alternatives
exist for it
update-alternatives: removing //sbin/fsck as no more alternatives exist
for it
update-alternatives: removing //sbin/fsck.minix as no more alternatives
exist for it
update-alternatives: removing //usr/bin/fuser as no more alternatives
exist for it
update-alternatives: removing //bin/gunzip as no more alternatives exist
for it
update-alternatives: removing //bin/gzip as no more alternatives exist
for it
update-alternatives: removing //usr/bin/head as no more alternatives
exist for it
update-alternatives: removing //usr/bin/hexdump as no more alternatives
exist for it
update-alternatives: removing //bin/hostname as no more alternatives
exist for it
update-alternatives: removing //sbin/hwclock as no more alternatives
exist for it
update-alternatives: removing //usr/bin/id as no more alternatives exist
for it
update-alternatives: removing //sbin/ifconfig as no more alternatives
exist for it
update-alternatives: removing //sbin/ifdown as no more alternatives
exist for it
update-alternatives: removing //sbin/ifup as no more alternatives exist
for it
update-alternatives: removing //bin/ip as no more alternatives exist for
it
update-alternatives: removing //bin/kill as no more alternatives exist
for it
update-alternatives: removing //usr/bin/killall as no more alternatives
exist for it
update-alternatives: removing //sbin/klogd as no more alternatives exist
for it
update-alternatives: removing //usr/bin/less as no more alternatives
exist for it
update-alternatives: removing //bin/ln as no more alternatives exist for
it
update-alternatives: removing //usr/sbin/loadfont as no more
alternatives exist for it
update-alternatives: removing //sbin/loadkmap as no more alternatives
exist for it
update-alternatives: removing //usr/bin/logger as no more alternatives
exist for it
update-alternatives: removing //usr/bin/logname as no more alternatives
exist for it
update-alternatives: removing //sbin/logread as no more alternatives
exist for it
update-alternatives: removing //sbin/losetup as no more alternatives
exist for it
update-alternatives: removing //bin/ls as no more alternatives exist for
it
update-alternatives: removing //usr/bin/md5sum as no more alternatives
exist for it
update-alternatives: removing //usr/bin/microcom as no more alternatives
exist for it
update-alternatives: removing //bin/mkdir as no more alternatives exist
for it
update-alternatives: removing //usr/bin/mkfifo as no more alternatives
exist for it
update-alternatives: removing //sbin/mkfs.minix as no more alternatives
exist for it
update-alternatives: removing //bin/mknod as no more alternatives exist
for it
update-alternatives: removing //sbin/mkswap as no more alternatives
exist for it
update-alternatives: removing //bin/mktemp as no more alternatives exist
for it
update-alternatives: removing //bin/more as no more alternatives exist
for it
update-alternatives: removing //bin/mount as no more alternatives exist
for it
update-alternatives: removing //bin/mv as no more alternatives exist for
it
update-alternatives: removing //usr/bin/nc as no more alternatives exist
for it
update-alternatives: removing //bin/netstat as no more alternatives
exist for it
update-alternatives: removing //usr/bin/nohup as no more alternatives
exist for it
update-alternatives: removing //usr/bin/nslookup as no more alternatives
exist for it
update-alternatives: removing //usr/bin/od as no more alternatives exist
for it
update-alternatives: removing //usr/bin/openvt as no more alternatives
exist for it
/usr/bin/update-alternatives: line 193: grep: not found
update-alternatives: Linking //bin/pidof to 
update-alternatives: removing //bin/ping as no more alternatives exist
for it
update-alternatives: removing //bin/ping6 as no more alternatives exist
for it
update-alternatives: removing //sbin/pivot_root as no more alternatives
exist for it
update-alternatives: removing //usr/bin/printf as no more alternatives
exist for it
update-alternatives: removing //bin/ps as no more alternatives exist for
it
update-alternatives: removing //bin/pwd as no more alternatives exist
for it
update-alternatives: removing //usr/sbin/rdate as no more alternatives
exist for it
update-alternatives: removing //usr/bin/readlink as no more alternatives
exist for it
update-alternatives: removing //usr/bin/realpath as no more alternatives
exist for it
update-alternatives: removing //usr/bin/renice as no more alternatives
exist for it
update-alternatives: removing //usr/bin/reset as no more alternatives
exist for it
update-alternatives: removing //bin/rm as no more alternatives exist for
it
update-alternatives: removing //bin/rmdir as no more alternatives exist
for it
update-alternatives: removing //sbin/route as no more alternatives exist
for it
update-alternatives: removing //usr/bin/run-parts as no more
alternatives exist for it
update-alternatives: removing //bin/sed as no more alternatives exist
for it
update-alternatives: removing //usr/bin/seq as no more alternatives
exist for it
update-alternatives: removing //sbin/setconsole as no more alternatives
exist for it
update-alternatives: removing //bin/sleep as no more alternatives exist
for it
update-alternatives: removing //usr/bin/sort as no more alternatives
exist for it
update-alternatives: removing //sbin/start-stop-daemon as no more
alternatives exist for it
update-alternatives: removing //usr/bin/strings as no more alternatives
exist for it
update-alternatives: removing //bin/stty as no more alternatives exist
for it
update-alternatives: removing //sbin/swapoff as no more alternatives
exist for it
update-alternatives: removing //sbin/swapon as no more alternatives
exist for it
update-alternatives: removing //sbin/switch_root as no more alternatives
exist for it
update-alternatives: removing //bin/sync as no more alternatives exist
for it
update-alternatives: removing //sbin/sysctl as no more alternatives
exist for it
update-alternatives: removing //sbin/syslogd as no more alternatives
exist for it
update-alternatives: removing //usr/bin/tail as no more alternatives
exist for it
update-alternatives: removing //bin/tar as no more alternatives exist
for it
update-alternatives: removing //usr/bin/tee as no more alternatives
exist for it
update-alternatives: removing //usr/bin/telnet as no more alternatives
exist for it
update-alternatives: removing //usr/bin/test as no more alternatives
exist for it
update-alternatives: removing //usr/bin/tftp as no more alternatives
exist for it
update-alternatives: removing //usr/bin/time as no more alternatives
exist for it
update-alternatives: removing //usr/bin/top as no more alternatives
exist for it
update-alternatives: removing //bin/touch as no more alternatives exist
for it
update-alternatives: removing //usr/bin/tr as no more alternatives exist
for it
update-alternatives: removing //usr/bin/traceroute as no more
alternatives exist for it
update-alternatives: removing //bin/true as no more alternatives exist
for it
update-alternatives: removing //usr/bin/tty as no more alternatives
exist for it
update-alternatives: removing //sbin/udhcpc as no more alternatives
exist for it
update-alternatives: removing //usr/sbin/udhcpd as no more alternatives
exist for it
update-alternatives: removing //bin/umount as no more alternatives exist
for it
update-alternatives: removing //bin/uname as no more alternatives exist
for it
update-alternatives: removing //usr/bin/uniq as no more alternatives
exist for it
update-alternatives: removing //usr/bin/unxz as no more alternatives
exist for it
update-alternatives: removing //usr/bin/unzip as no more alternatives
exist for it
update-alternatives: removing //usr/bin/uptime as no more alternatives
exist for it
update-alternatives: removing //bin/usleep as no more alternatives exist
for it
update-alternatives: removing //bin/vi as no more alternatives exist for
it
update-alternatives: removing //bin/watch as no more alternatives exist
for it
update-alternatives: removing //usr/bin/wc as no more alternatives exist
for it
update-alternatives: removing //usr/bin/wget as no more alternatives
exist for it
update-alternatives: removing //usr/bin/which as no more alternatives
exist for it
update-alternatives: removing //usr/bin/who as no more alternatives
exist for it
update-alternatives: removing //usr/bin/whoami as no more alternatives
exist for it
update-alternatives: removing //usr/bin/xzcat as no more alternatives
exist for it
update-alternatives: removing //usr/bin/xz as no more alternatives exist
for it
update-alternatives: removing //usr/bin/yes as no more alternatives
exist for it
update-alternatives: removing //bin/zcat as no more alternatives exist
for it


-- 
Anders Darander
ChargeStorm AB / eStorm AB


