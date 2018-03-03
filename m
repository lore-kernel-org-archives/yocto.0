Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8CEFE00F05; Fri,  2 Mar 2018 18:28:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f175.google.com (mail-pf0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE3C0E00816
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2018 18:28:15 -0800 (PST)
Received: by mail-pf0-f175.google.com with SMTP id h11so4369240pfn.4
	for <yocto@yoctoproject.org>; Fri, 02 Mar 2018 18:28:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=ZjXTxOkGOduMJiL0lm0YBFb8AyC8IWHFSRLxegHqqcI=;
	b=FYnUn5LA/Ib1sffn05eI1W3cSoM6uu7/00y3Ye78Jr0PPH4rwHP3VRqUbjlD8YbTXL
	J+V58SguHkaxBXZJwltelr9EsKwOgNbD/VKrdjAgasf4fsswqKOrN4/7xEsoBD0xYRaw
	6CkURtXPciZTf6KlIRl2OFZUZlU5Oe0Q5wbo5NmvCqFas8fTTWB4d1wKkMTiHsxiaiPV
	hLiyIgTCyDSZ26OQeRlgHnNRfInWg40fwcCw26/OFeJN6yu7TMprXg/eiSlZATlMnVyB
	Ob6gNdAjZI01S5WOPDXXwe74c3VnHE6WJBMLV9u9b/r0GXyHNX79TpjG0ZynhTEPOXUj
	bROw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=ZjXTxOkGOduMJiL0lm0YBFb8AyC8IWHFSRLxegHqqcI=;
	b=na8k/kMu7nUTLx98jpsHC7orFK6kLpkcPnQ3w+eelK7ZR0nLVW7ynlebclc8HJG35c
	N3kRklc8jwhGjqIoGS4B23JEYDUEBu/p3/qrCT5TztlqOafp9PYrGZPvCgR5hE3kOK9F
	V4YU1oFIAjI78yPd1+UrMKEHwy7HxXO9NIRnWGj+lrzCy7TUF4vqQzlCieP2z43zKEm7
	AZ0jW0UwG0VDvM1obIa4Kle7+IVYFWqBWmcyA7AlwzJ00A1nucKYfOcLmpkeUzoa+4ZS
	TVSYZbRL9zRGl/FxO8PdGmW/a6EiyyZPyMhFOu2x6JcrKu7rY3Igbzr7O2idT7J70Oeu
	cUSg==
X-Gm-Message-State: AElRT7E+ERoLa0GoHYjOzhC2UjRYyekpksHtl3v6VNR48a6IRkVNizK+
	sk1ZaPtotQLZPQIkR3xbD4VvWKiQ
X-Google-Smtp-Source: AG47ELtMs4gin+wO998Lm49oBMRaXkbreXXBebDKyzP8o2kWV0GxaSu1kVHqtGq/lWSTQNIKCHMSHg==
X-Received: by 10.99.109.67 with SMTP id i64mr2017985pgc.238.1520044094968;
	Fri, 02 Mar 2018 18:28:14 -0800 (PST)
Received: from ?IPv6:2601:646:8880:466c:a564:75fb:6e2a:d708?
	([2601:646:8880:466c:a564:75fb:6e2a:d708])
	by smtp.gmail.com with ESMTPSA id
	g80sm15219263pfj.101.2018.03.02.18.28.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 02 Mar 2018 18:28:14 -0800 (PST)
To: =?UTF-8?B?US4gR291w6hz?= <qgoues@actia-pcs.fr>,
	"Burton, Ross" <ross.burton@intel.com>
References: <43e25324-a6b7-46ac-f02b-a09cc29b9848@actia-pcs.fr>
	<CAJTo0LZADTrDy5_niz9XUFuQ0qGEYL2OiWuRrFVctJVBhSAQXg@mail.gmail.com>
	<43ae6e49-f116-c85d-0159-cbf07e56c5c2@actia-pcs.fr>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <aeca4d21-78e1-2e51-5147-49839035bb3e@gmail.com>
Date: Fri, 2 Mar 2018 18:28:12 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <43ae6e49-f116-c85d-0159-cbf07e56c5c2@actia-pcs.fr>
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
X-List-Received-Date: Sat, 03 Mar 2018 02:28:17 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 3/2/18 2:29 AM, Q. Gouès wrote:
> Actually the problem didn't come from doing IMAGE_INSTALL +=.
> 
> The problem came from the fact that in my recipe, I was adding the
> "IMAGE_INSTALL +=" line before the "inherit core-image" in which
> IMAGE_INSTALL is defined as a ?=. By doing that, the packages defined in
> the core-image class are not added because the variable IMAGE_INSTALL
> already exists.
> 
> Adding the "IMAGE_INSTALL +=" line after "inherit core-image" solved the
> problem.
> 
> I decided to use xfce as GUI because a recipe for the whole package
> exists (packagegroup-xfce-base).
> 

If you are inheriting core-image, its probably better for you to use
CORE_IMAGE_EXTRA_INSTALL to add packages to such image instead of
changing IMAGE_INSTALL directly.

see
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-CORE_IMAGE_EXTRA_INSTALL


> Thanks for your help
> 
> *Quentin Gouès*
> Ingénieur Développement Logiciel
> 
> *ACTIA* PCs
> 14, rue Charles Martigny
> 94700 MAISONS ALFORT (FRANCE)
> Tel. +33 (0)1 42 07 18 00 - Fax +33 (0)1 42 07 85 55
> http://www.actia-pcs.fr <http://www.actia-pcs.fr/>
> 
> Le 28/02/2018 à 17:17, Burton, Ross a écrit :
>> Because by doing IMAGE_INSTALL += you wiped out the default value
>> which is a ?=.
>>
>> gnome-desktop3 isn't the GNOME interface though, it's just a small
>> library.
>>
>> If you want the full GNOME 3 desktop then you'll need to start with
>> meta-gnome and write more recipes, as it's not entirely packaged.
>>
>> Ross
>>
>> On 28 February 2018 at 14:10, Q. Gouès <qgoues@actia-pcs.fr
>> <mailto:qgoues@actia-pcs.fr>> wrote:
>>
>>     Hi,
>>
>>     I am trying to add gnome to my x11 image based on the recipe
>>     core-image-x11. I am using Poky 2.0 (Jethro).
>>
>>     For that, I added the following line to my recipe:
>>
>>     /IMAGE_INSTALL += "gnome-desktop3"/
>>
>>     Unfortunately I get the following error:
>>
>>     /switch_root: can't execute '/sbin/init': No such file or directory//
>>     //Kernel panic - not syncing: Attempted to kill init!
>>     exitcode=0x00000100/
>>
>>     I tried the same thing with XFCE (I am trying to add a window
>>     manager to my image) and I got the same results.
>>
>>     After taking a look at the rootfs in the iso file, I can notice
>>     that the file '/sbin/init' is indeed missing. And it's not the
>>     only file missing ! The rootfs went from ~420Mo to ~220Mo and the
>>     list of files present in the rootfs went from:
>>
>>     /badblocks//
>>     //blkid -> /bin/busybox.nosuid//
>>     //bootlogd//
>>     //debugfs//
>>     //depmod -> /sbin/depmod.kmod//
>>     //depmod.kmod -> ../bin/kmod//
>>     //dumpe2fs//
>>     //e2freefrag//
>>     //e2fsck//
>>     //e2image//
>>     //e2undo//
>>     //e4defrag//
>>     //fdisk -> /bin/busybox.nosuid//
>>     //filefrag//
>>     //fsck -> /bin/busybox.nosuid//
>>     //fsck.ext2//
>>     //fsck.ext3//
>>     //fsck.ext4//
>>     //fsck.ext4dev//
>>     //fstab-decode//
>>     //fstrim -> /bin/busybox.nosuid//
>>     //getty -> /bin/busybox.nosuid//
>>     //halt -> /sbin/halt.sysvinit//
>>     //halt.sysvinit//
>>     //hdparm -> /sbin/hdparm.hdparm//
>>     //hdparm.hdparm//
>>     //hwclock -> /bin/busybox.nosuid//
>>     //ifconfig -> /bin/busybox.nosuid//
>>     //ifdown -> /bin/busybox.nosuid//
>>     //ifup -> /bin/busybox.nosuid//
>>     //init -> /sbin/init.sysvinit//
>>     //init.sysvinit//
>>     //insmod -> /sbin/insmod.kmod//
>>     //insmod.kmod -> ../bin/kmod//
>>     //ip -> /bin/busybox.nosuid//
>>     //iwconfig//
>>     //iwgetid -> iwconfig//
>>     //iwlist -> iwconfig//
>>     //iwpriv -> iwconfig//
>>     //iwspy -> iwconfig//
>>     //killall5//
>>     //klogd -> /bin/busybox.nosuid//
>>     //ldconfig//
>>     //loadkmap -> /bin/busybox.nosuid//
>>     //logread -> /bin/busybox.nosuid//
>>     //logsave//
>>     //losetup -> /bin/busybox.nosuid//
>>     //lsmod -> /bin/lsmod.kmod//
>>     //mke2fs//
>>     //mkfs.ext2//
>>     //mkfs.ext3//
>>     //mkfs.ext4//
>>     //mkfs.ext4dev//
>>     //mklost+found//
>>     //mkswap -> /bin/busybox.nosuid//
>>     //modinfo -> /sbin/modinfo.kmod//
>>     //modinfo.kmod -> ../bin/kmod//
>>     //modprobe -> /sbin/modprobe.kmod//
>>     //modprobe.kmod -> ../bin/kmod//
>>     //nologin//
>>     //pivot_root -> /bin/busybox.nosuid//
>>     //populate-extfs.sh//
>>     //poweroff -> /sbin/poweroff.sysvinit//
>>     //poweroff.sysvinit -> halt.sysvinit//
>>     //reboot -> /sbin/reboot.sysvinit//
>>     //reboot.sysvinit -> halt.sysvinit//
>>     //rmmod -> /sbin/rmmod.kmod//
>>     //rmmod.kmod -> ../bin/kmod//
>>     //route -> /bin/busybox.nosuid//
>>     //runlevel -> /sbin/runlevel.sysvinit//
>>     //runlevel.sysvinit//
>>     //setconsole -> /bin/busybox.nosuid//
>>     //shutdown -> /sbin/shutdown.sysvinit//
>>     //shutdown.sysvinit//
>>     //start-stop-daemon -> /bin/busybox.nosuid//
>>     //sulogin -> /sbin/sulogin.util-linux//
>>     //sulogin.util-linux//
>>     //swapoff -> /bin/busybox.nosuid//
>>     //swapon -> /bin/busybox.nosuid//
>>     //switch_root -> /bin/busybox.nosuid//
>>     //sysctl -> /bin/busybox.nosuid//
>>     //syslogd -> /bin/busybox.nosuid//
>>     //telinit -> init//
>>     //udhcpc -> /bin/busybox.nosuid//
>>     //vigr -> /sbin/vigr.shadow//
>>     //vigr.shadow -> vipw.shadow//
>>     //vipw -> /sbin/vipw.shadow//
>>     //vipw.shadow/
>>
>>     to:
>>
>>     /ldconfig//
>>     //nologin//
>>     //sulogin -> /sbin/sulogin.util-linux//
>>     //sulogin.util-linux//
>>     //vigr -> /sbin/vigr.shadow//
>>     //vigr.shadow -> vipw.shadow//
>>     //vipw -> /sbin/vipw.shadow//
>>     //vipw.shadow/
>>
>>     It looks like busybox was removed as well as other packages.
>>
>>     Do you have any idea why all these packages have been removed ?
>>
>>     Thanks
>>
>>     Quentin
>>
>>
>>
>>     --
>>     _______________________________________________
>>     yocto mailing list
>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     https://lists.yoctoproject.org/listinfo/yocto
>>     <https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
> 
> 


