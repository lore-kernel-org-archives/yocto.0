Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4D7DE00E22; Wed, 28 Feb 2018 08:17:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7263EE00DC3
	for <yocto@yoctoproject.org>; Wed, 28 Feb 2018 08:17:28 -0800 (PST)
Received: by mail-io0-f176.google.com with SMTP id e30so3799810ioc.3
	for <yocto@yoctoproject.org>; Wed, 28 Feb 2018 08:17:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gP8scVJQmgdVU8YjyQzGqWY85ijoKxftomxPcelOSlc=;
	b=pk8D5cFth1KQLk828hW9rDcW4WebKEScyA6ZhqQGgc0vevnNtnshdlhZIpHthoWXXX
	kQqSLqQBKkIOXTGxMAFFzSix8PYHPehyItKpwRcYY1JeGqshAX7Jv04swkyO9fUQxmgP
	5Re9ZSBf6483aOGT6PjXp4Fl3+fTLhwxejOe0fm34gJoodmYNy9xAy+zb67+LdNLpRWv
	xNq2VDHWgbzR/Fz5GEYiX3lCQY4RNxUFXUBujX6F8CgVNX8S6qxdGk7K73gFrSxVFZPE
	fdlhQ8g2iqsCE8XYXm6+z2ZFCZPgGYGrSPcJq+pC+Ffhc5C/ibx9i3uhk7HLK0TwthAa
	AkTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gP8scVJQmgdVU8YjyQzGqWY85ijoKxftomxPcelOSlc=;
	b=SbEfCyB2uepvM3bqIlIoBVmF2xHx/PdKuYWX0LOzH73N9qtidQQ+BRWv7kyIywhOtT
	YZGrfWS/MgWzRyMFs/oDP9jfHQqj23ACDWEbZaASfupRHqZuXe+gGDREFXBOLpS13yt/
	9eMr+47KiaBK4YhKZ92yEJ3mHhSsKF6DEoI3HheBSTSDx6th39+GNgixylw2fFb+5M8G
	gt8QCfq/xeOhVQE9xpSYV8pvf0gTyCnxPGuA8FhV7iLyZU/gGEaLR3M0cspZcf5P2hIQ
	I6B/JTFT/RT6BgCAUcj0hraIS+QFEnwl56krLqUSifsOE2zdMmpmtt9KtlMj7VdskfJS
	EPkQ==
X-Gm-Message-State: APf1xPC7juqNRa8ilg1FRLr0A2EMgTlkQUJpCcCknxS2gFNPUnZg+ZAE
	voqzl+jgWaOUU24JhfBCI58k0gAlDYhClE+MXX8B3w==
X-Google-Smtp-Source: AG47ELtfUQNKgPPU6pHYC4+xtKTRP1tAChcYgtjsEiWdfffJ54yLyVq7iqdeOMujHp2QuIy9ILTyhsGuazotRSpau2Y=
X-Received: by 10.107.183.76 with SMTP id h73mr20751810iof.201.1519834647487; 
	Wed, 28 Feb 2018 08:17:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.200 with HTTP; Wed, 28 Feb 2018 08:17:07 -0800 (PST)
In-Reply-To: <43e25324-a6b7-46ac-f02b-a09cc29b9848@actia-pcs.fr>
References: <43e25324-a6b7-46ac-f02b-a09cc29b9848@actia-pcs.fr>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 28 Feb 2018 16:17:07 +0000
Message-ID: <CAJTo0LZADTrDy5_niz9XUFuQ0qGEYL2OiWuRrFVctJVBhSAQXg@mail.gmail.com>
To: =?UTF-8?B?US4gR291w6hz?= <qgoues@actia-pcs.fr>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Adding Gnome to X11
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
X-List-Received-Date: Wed, 28 Feb 2018 16:17:29 -0000
Content-Type: multipart/alternative; boundary="94eb2c0b9e3a47fb890566481449"

--94eb2c0b9e3a47fb890566481449
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Because by doing IMAGE_INSTALL +=3D you wiped out the default value which i=
s
a ?=3D.

gnome-desktop3 isn't the GNOME interface though, it's just a small library.

If you want the full GNOME 3 desktop then you'll need to start with
meta-gnome and write more recipes, as it's not entirely packaged.

Ross

On 28 February 2018 at 14:10, Q. Gou=C3=A8s <qgoues@actia-pcs.fr> wrote:

> Hi,
>
> I am trying to add gnome to my x11 image based on the recipe
> core-image-x11. I am using Poky 2.0 (Jethro).
>
> For that, I added the following line to my recipe:
>
> *IMAGE_INSTALL +=3D "gnome-desktop3"*
>
> Unfortunately I get the following error:
>
> *switch_root: can't execute '/sbin/init': No such file or directory*
> *Kernel panic - not syncing: Attempted to kill init! exitcode=3D0x0000010=
0*
>
> I tried the same thing with XFCE (I am trying to add a window manager to
> my image) and I got the same results.
>
> After taking a look at the rootfs in the iso file, I can notice that the
> file '/sbin/init' is indeed missing. And it's not the only file missing !
> The rootfs went from ~420Mo to ~220Mo and the list of files present in th=
e
> rootfs went from:
>
> *badblocks*
> *blkid -> /bin/busybox.nosuid*
> *bootlogd*
> *debugfs*
> *depmod -> /sbin/depmod.kmod*
> *depmod.kmod -> ../bin/kmod*
> *dumpe2fs*
> *e2freefrag*
> *e2fsck*
> *e2image*
> *e2undo*
> *e4defrag*
> *fdisk -> /bin/busybox.nosuid*
> *filefrag*
> *fsck -> /bin/busybox.nosuid*
> *fsck.ext2*
> *fsck.ext3*
> *fsck.ext4*
> *fsck.ext4dev*
> *fstab-decode*
> *fstrim -> /bin/busybox.nosuid*
> *getty -> /bin/busybox.nosuid*
> *halt -> /sbin/halt.sysvinit*
> *halt.sysvinit*
> *hdparm -> /sbin/hdparm.hdparm*
> *hdparm.hdparm*
> *hwclock -> /bin/busybox.nosuid*
> *ifconfig -> /bin/busybox.nosuid*
> *ifdown -> /bin/busybox.nosuid*
> *ifup -> /bin/busybox.nosuid*
> *init -> /sbin/init.sysvinit*
> *init.sysvinit*
> *insmod -> /sbin/insmod.kmod*
> *insmod.kmod -> ../bin/kmod*
> *ip -> /bin/busybox.nosuid*
> *iwconfig*
> *iwgetid -> iwconfig*
> *iwlist -> iwconfig*
> *iwpriv -> iwconfig*
> *iwspy -> iwconfig*
> *killall5*
> *klogd -> /bin/busybox.nosuid*
> *ldconfig*
> *loadkmap -> /bin/busybox.nosuid*
> *logread -> /bin/busybox.nosuid*
> *logsave*
> *losetup -> /bin/busybox.nosuid*
> *lsmod -> /bin/lsmod.kmod*
> *mke2fs*
> *mkfs.ext2*
> *mkfs.ext3*
> *mkfs.ext4*
> *mkfs.ext4dev*
> *mklost+found*
> *mkswap -> /bin/busybox.nosuid*
> *modinfo -> /sbin/modinfo.kmod*
> *modinfo.kmod -> ../bin/kmod*
> *modprobe -> /sbin/modprobe.kmod*
> *modprobe.kmod -> ../bin/kmod*
> *nologin*
> *pivot_root -> /bin/busybox.nosuid*
> *populate-extfs.sh*
> *poweroff -> /sbin/poweroff.sysvinit*
> *poweroff.sysvinit -> halt.sysvinit*
> *reboot -> /sbin/reboot.sysvinit*
> *reboot.sysvinit -> halt.sysvinit*
> *rmmod -> /sbin/rmmod.kmod*
> *rmmod.kmod -> ../bin/kmod*
> *route -> /bin/busybox.nosuid*
> *runlevel -> /sbin/runlevel.sysvinit*
> *runlevel.sysvinit*
> *setconsole -> /bin/busybox.nosuid*
> *shutdown -> /sbin/shutdown.sysvinit*
> *shutdown.sysvinit*
> *start-stop-daemon -> /bin/busybox.nosuid*
> *sulogin -> /sbin/sulogin.util-linux*
> *sulogin.util-linux*
> *swapoff -> /bin/busybox.nosuid*
> *swapon -> /bin/busybox.nosuid*
> *switch_root -> /bin/busybox.nosuid*
> *sysctl -> /bin/busybox.nosuid*
> *syslogd -> /bin/busybox.nosuid*
> *telinit -> init*
> *udhcpc -> /bin/busybox.nosuid*
> *vigr -> /sbin/vigr.shadow*
> *vigr.shadow -> vipw.shadow*
> *vipw -> /sbin/vipw.shadow*
> *vipw.shadow*
>
> to:
> *ldconfig*
> *nologin*
> *sulogin -> /sbin/sulogin.util-linux*
> *sulogin.util-linux*
> *vigr -> /sbin/vigr.shadow*
> *vigr.shadow -> vipw.shadow*
> *vipw -> /sbin/vipw.shadow*
> *vipw.shadow*
>
> It looks like busybox was removed as well as other packages.
>
> Do you have any idea why all these packages have been removed ?
>
> Thanks
>
> Quentin
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c0b9e3a47fb890566481449
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Because by doing IMAGE_INSTALL +=3D you wiped out the defa=
ult value which is a ?=3D.<div><br></div><div>gnome-desktop3 isn&#39;t the =
GNOME interface though, it&#39;s just a small library.</div><div><br></div>=
<div>If you want the full GNOME 3 desktop then you&#39;ll need to start wit=
h meta-gnome and write more recipes, as it&#39;s not entirely packaged.</di=
v><div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On 28 February 2018 at 14:10, Q. Gou=C3=A8s <span dir=
=3D"ltr">&lt;<a href=3D"mailto:qgoues@actia-pcs.fr" target=3D"_blank">qgoue=
s@actia-pcs.fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20

   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Hi,</p>
    <p>I am trying to add gnome to my x11 image based on the recipe
      core-image-x11. I am using Poky 2.0 (Jethro).</p>
    <p>For that, I added the following line to my recipe:</p>
    <p><i>IMAGE_INSTALL +=3D &quot;gnome-desktop3&quot;</i></p>
    <p>Unfortunately I get the following error:</p>
    <p><i>switch_root: can&#39;t execute &#39;/sbin/init&#39;: No such file=
 or
        directory</i><i><br>
      </i><i>Kernel panic - not syncing: Attempted to kill init!
        exitcode=3D0x00000100</i></p>
    <p>I tried the same thing with XFCE (I am trying to add a window
      manager to my image) and I got the same results.</p>
    <p>After taking a look at the rootfs in the iso file, I can notice
      that the file &#39;/sbin/init&#39; is indeed missing. And it&#39;s no=
t the
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
  </div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c0b9e3a47fb890566481449--
