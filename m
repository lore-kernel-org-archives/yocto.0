Return-Path: <qgoues@actia-pcs.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0381E00E18; Wed, 28 Feb 2018 06:40:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1802 seconds by postgrey-1.32 at yocto-www;
	Wed, 28 Feb 2018 06:40:25 PST
Received: from mail.monsoft.com (mail.monsoft.com [62.210.137.238])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC524E00DAE
	for <yocto@yoctoproject.org>; Wed, 28 Feb 2018 06:40:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=actia-pcs.fr; s=mail;
	h=from:subject:date:message-id:to:mime-version:content-type;
	bh=6hTcB56iziHjGj3ZBFO7gGw8UOfi1aoDtZUf9U4YvFw=;
	b=CtiFX/4s/jTh1ZXQwHGgMNwS3NaOchJFD+6fiKlJbkfxj/qTjQ/roiexdALkqVVT8zu8Zq/nvgOSJ
	NBg37rFUtyKIkxS4TAy4okYrW3AJAI/6MWQHmBHpudQFlxUlJp3BiIfLoWWZYVAAtd67Lq0stMgAlW
	x6EZ7PubBMW9+HpM=
X-Footer: YWN0aWEtcGNzLmZy
Received: from [192.168.0.102] ([193.248.59.28])
	(authenticated user qgoues@actia-pcs.fr)
	by mail.monsoft.com (Kerio Connect 9.2.5 patch 3) with ESMTPSA
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	for yocto@yoctoproject.org; Wed, 28 Feb 2018 15:10:20 +0100
To: yocto@yoctoproject.org
From: =?UTF-8?B?US4gR291w6hz?= <qgoues@actia-pcs.fr>
Message-ID: <43e25324-a6b7-46ac-f02b-a09cc29b9848@actia-pcs.fr>
Date: Wed, 28 Feb 2018 15:10:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
Subject: Adding Gnome to X11
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
X-List-Received-Date: Wed, 28 Feb 2018 14:40:27 -0000
Content-Type: multipart/alternative;
	boundary="------------43A7E4E9262627BCBC2513B4"
Content-Language: en-US

--------------43A7E4E9262627BCBC2513B4
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I am trying to add gnome to my x11 image based on the recipe 
core-image-x11. I am using Poky 2.0 (Jethro).

For that, I added the following line to my recipe:

/IMAGE_INSTALL += "gnome-desktop3"/

Unfortunately I get the following error:

/switch_root: can't execute '/sbin/init': No such file or directory//
//Kernel panic - not syncing: Attempted to kill init! exitcode=0x00000100/

I tried the same thing with XFCE (I am trying to add a window manager to 
my image) and I got the same results.

After taking a look at the rootfs in the iso file, I can notice that the 
file '/sbin/init' is indeed missing. And it's not the only file missing 
! The rootfs went from ~420Mo to ~220Mo and the list of files present in 
the rootfs went from:

/badblocks//
//blkid -> /bin/busybox.nosuid//
//bootlogd//
//debugfs//
//depmod -> /sbin/depmod.kmod//
//depmod.kmod -> ../bin/kmod//
//dumpe2fs//
//e2freefrag//
//e2fsck//
//e2image//
//e2undo//
//e4defrag//
//fdisk -> /bin/busybox.nosuid//
//filefrag//
//fsck -> /bin/busybox.nosuid//
//fsck.ext2//
//fsck.ext3//
//fsck.ext4//
//fsck.ext4dev//
//fstab-decode//
//fstrim -> /bin/busybox.nosuid//
//getty -> /bin/busybox.nosuid//
//halt -> /sbin/halt.sysvinit//
//halt.sysvinit//
//hdparm -> /sbin/hdparm.hdparm//
//hdparm.hdparm//
//hwclock -> /bin/busybox.nosuid//
//ifconfig -> /bin/busybox.nosuid//
//ifdown -> /bin/busybox.nosuid//
//ifup -> /bin/busybox.nosuid//
//init -> /sbin/init.sysvinit//
//init.sysvinit//
//insmod -> /sbin/insmod.kmod//
//insmod.kmod -> ../bin/kmod//
//ip -> /bin/busybox.nosuid//
//iwconfig//
//iwgetid -> iwconfig//
//iwlist -> iwconfig//
//iwpriv -> iwconfig//
//iwspy -> iwconfig//
//killall5//
//klogd -> /bin/busybox.nosuid//
//ldconfig//
//loadkmap -> /bin/busybox.nosuid//
//logread -> /bin/busybox.nosuid//
//logsave//
//losetup -> /bin/busybox.nosuid//
//lsmod -> /bin/lsmod.kmod//
//mke2fs//
//mkfs.ext2//
//mkfs.ext3//
//mkfs.ext4//
//mkfs.ext4dev//
//mklost+found//
//mkswap -> /bin/busybox.nosuid//
//modinfo -> /sbin/modinfo.kmod//
//modinfo.kmod -> ../bin/kmod//
//modprobe -> /sbin/modprobe.kmod//
//modprobe.kmod -> ../bin/kmod//
//nologin//
//pivot_root -> /bin/busybox.nosuid//
//populate-extfs.sh//
//poweroff -> /sbin/poweroff.sysvinit//
//poweroff.sysvinit -> halt.sysvinit//
//reboot -> /sbin/reboot.sysvinit//
//reboot.sysvinit -> halt.sysvinit//
//rmmod -> /sbin/rmmod.kmod//
//rmmod.kmod -> ../bin/kmod//
//route -> /bin/busybox.nosuid//
//runlevel -> /sbin/runlevel.sysvinit//
//runlevel.sysvinit//
//setconsole -> /bin/busybox.nosuid//
//shutdown -> /sbin/shutdown.sysvinit//
//shutdown.sysvinit//
//start-stop-daemon -> /bin/busybox.nosuid//
//sulogin -> /sbin/sulogin.util-linux//
//sulogin.util-linux//
//swapoff -> /bin/busybox.nosuid//
//swapon -> /bin/busybox.nosuid//
//switch_root -> /bin/busybox.nosuid//
//sysctl -> /bin/busybox.nosuid//
//syslogd -> /bin/busybox.nosuid//
//telinit -> init//
//udhcpc -> /bin/busybox.nosuid//
//vigr -> /sbin/vigr.shadow//
//vigr.shadow -> vipw.shadow//
//vipw -> /sbin/vipw.shadow//
//vipw.shadow/

to:

/ldconfig//
//nologin//
//sulogin -> /sbin/sulogin.util-linux//
//sulogin.util-linux//
//vigr -> /sbin/vigr.shadow//
//vigr.shadow -> vipw.shadow//
//vipw -> /sbin/vipw.shadow//
//vipw.shadow/

It looks like busybox was removed as well as other packages.

Do you have any idea why all these packages have been removed ?

Thanks

Quentin



--------------43A7E4E9262627BCBC2513B4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi,</p>
    <p>I am trying to add gnome to my x11 image based on the recipe
      core-image-x11. I am using Poky 2.0 (Jethro).</p>
    <p>For that, I added the following line to my recipe:</p>
    <p><i>IMAGE_INSTALL += "gnome-desktop3"</i></p>
    <p>Unfortunately I get the following error:</p>
    <p><i>switch_root: can't execute '/sbin/init': No such file or
        directory</i><i><br>
      </i><i>Kernel panic - not syncing: Attempted to kill init!
        exitcode=0x00000100</i></p>
    <p>I tried the same thing with XFCE (I am trying to add a window
      manager to my image) and I got the same results.</p>
    <p>After taking a look at the rootfs in the iso file, I can notice
      that the file '/sbin/init' is indeed missing. And it's not the
      only file missing ! The rootfs went from ~420Mo to ~220Mo and the
      list of files present in the rootfs went from:</p>
    <p><i>badblocks</i><i><br>
      </i><i>blkid -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>bootlogd</i><i><br>
      </i><i>debugfs</i><i><br>
      </i><i>depmod -&gt; /sbin/depmod.kmod</i><i><br>
      </i><i>depmod.kmod -&gt; ../bin/kmod</i><i><br>
      </i><i>dumpe2fs</i><i><br>
      </i><i>e2freefrag</i><i><br>
      </i><i>e2fsck</i><i><br>
      </i><i>e2image</i><i><br>
      </i><i>e2undo</i><i><br>
      </i><i>e4defrag</i><i><br>
      </i><i>fdisk -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>filefrag</i><i><br>
      </i><i>fsck -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>fsck.ext2</i><i><br>
      </i><i>fsck.ext3</i><i><br>
      </i><i>fsck.ext4</i><i><br>
      </i><i>fsck.ext4dev</i><i><br>
      </i><i>fstab-decode</i><i><br>
      </i><i>fstrim -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>getty -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>halt -&gt; /sbin/halt.sysvinit</i><i><br>
      </i><i>halt.sysvinit</i><i><br>
      </i><i>hdparm -&gt; /sbin/hdparm.hdparm</i><i><br>
      </i><i>hdparm.hdparm</i><i><br>
      </i><i>hwclock -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>ifconfig -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>ifdown -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>ifup -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>init -&gt; /sbin/init.sysvinit</i><i><br>
      </i><i>init.sysvinit</i><i><br>
      </i><i>insmod -&gt; /sbin/insmod.kmod</i><i><br>
      </i><i>insmod.kmod -&gt; ../bin/kmod</i><i><br>
      </i><i>ip -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>iwconfig</i><i><br>
      </i><i>iwgetid -&gt; iwconfig</i><i><br>
      </i><i>iwlist -&gt; iwconfig</i><i><br>
      </i><i>iwpriv -&gt; iwconfig</i><i><br>
      </i><i>iwspy -&gt; iwconfig</i><i><br>
      </i><i>killall5</i><i><br>
      </i><i>klogd -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>ldconfig</i><i><br>
      </i><i>loadkmap -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>logread -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>logsave</i><i><br>
      </i><i>losetup -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>lsmod -&gt; /bin/lsmod.kmod</i><i><br>
      </i><i>mke2fs</i><i><br>
      </i><i>mkfs.ext2</i><i><br>
      </i><i>mkfs.ext3</i><i><br>
      </i><i>mkfs.ext4</i><i><br>
      </i><i>mkfs.ext4dev</i><i><br>
      </i><i>mklost+found</i><i><br>
      </i><i>mkswap -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>modinfo -&gt; /sbin/modinfo.kmod</i><i><br>
      </i><i>modinfo.kmod -&gt; ../bin/kmod</i><i><br>
      </i><i>modprobe -&gt; /sbin/modprobe.kmod</i><i><br>
      </i><i>modprobe.kmod -&gt; ../bin/kmod</i><i><br>
      </i><i>nologin</i><i><br>
      </i><i>pivot_root -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>populate-extfs.sh</i><i><br>
      </i><i>poweroff -&gt; /sbin/poweroff.sysvinit</i><i><br>
      </i><i>poweroff.sysvinit -&gt; halt.sysvinit</i><i><br>
      </i><i>reboot -&gt; /sbin/reboot.sysvinit</i><i><br>
      </i><i>reboot.sysvinit -&gt; halt.sysvinit</i><i><br>
      </i><i>rmmod -&gt; /sbin/rmmod.kmod</i><i><br>
      </i><i>rmmod.kmod -&gt; ../bin/kmod</i><i><br>
      </i><i>route -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>runlevel -&gt; /sbin/runlevel.sysvinit</i><i><br>
      </i><i>runlevel.sysvinit</i><i><br>
      </i><i>setconsole -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>shutdown -&gt; /sbin/shutdown.sysvinit</i><i><br>
      </i><i>shutdown.sysvinit</i><i><br>
      </i><i>start-stop-daemon -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>sulogin -&gt; /sbin/sulogin.util-linux</i><i><br>
      </i><i>sulogin.util-linux</i><i><br>
      </i><i>swapoff -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>swapon -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>switch_root -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>sysctl -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>syslogd -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>telinit -&gt; init</i><i><br>
      </i><i>udhcpc -&gt; /bin/busybox.nosuid</i><i><br>
      </i><i>vigr -&gt; /sbin/vigr.shadow</i><i><br>
      </i><i>vigr.shadow -&gt; vipw.shadow</i><i><br>
      </i><i>vipw -&gt; /sbin/vipw.shadow</i><i><br>
      </i><i>vipw.shadow</i><br>
    </p>
    <p>to:<br>
    </p>
    <i>ldconfig</i><i><br>
    </i><i>nologin</i><i><br>
    </i><i>sulogin -&gt; /sbin/sulogin.util-linux</i><i><br>
    </i><i>sulogin.util-linux</i><i><br>
    </i><i>vigr -&gt; /sbin/vigr.shadow</i><i><br>
    </i><i>vigr.shadow -&gt; vipw.shadow</i><i><br>
    </i><i>vipw -&gt; /sbin/vipw.shadow</i><i><br>
    </i><i>vipw.shadow</i><br>
    <br>
    It looks like busybox was removed as well as other packages.<br>
    <br>
    Do you have any idea why all these packages have been removed ?<br>
    <br>
    Thanks<br>
    <br>
    Quentin<br>
    <br>
    <br>
  </body>
</html>

--------------43A7E4E9262627BCBC2513B4--
