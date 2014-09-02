Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C51DE0078A; Mon,  1 Sep 2014 21:09:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
Received: from mail-qc0-f179.google.com (mail-qc0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA9C0E0074B;
	Mon,  1 Sep 2014 21:09:47 -0700 (PDT)
Received: by mail-qc0-f179.google.com with SMTP id l6so6132235qcy.38
	for <multiple recipients>; Mon, 01 Sep 2014 21:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=THZXj8CJQdM3UlzqRggAVjZ/33qAKlioP2lBwSnnRsA=;
	b=u5VxdwdFNIyda/r+JQ81/5wqUEez/IuV5cME4U+xhjOnR3mXjRJbMhDWnTS08G7l2c
	5KEtnjgEsnuKOrcF9Hddef+/HQx8ursY5pbNL3Wg4H+ojuDmE6w83cEjVpdzjDCkOLR9
	cN0CzYdY3dRC68n899+W+YmT1aocgmItsz7zw1EcW6WGJRXxSroJKy1huuObFsydBZgU
	b+mTZTDVejAJUcnFTzEkOjpzOuH5sgJzzH4YsCkvR5UwWBAaEnS3sTF88jAlNo9ajIib
	RvuDnWbU1HjCHBTEF9ZimFbjn8p5gg5Dzhmiy0rkbt+hHMypXBlKVmQvrH8wu34W7xah
	7x2g==
MIME-Version: 1.0
X-Received: by 10.224.51.197 with SMTP id e5mr50495941qag.48.1409630986973;
	Mon, 01 Sep 2014 21:09:46 -0700 (PDT)
Received: by 10.224.166.198 with HTTP; Mon, 1 Sep 2014 21:09:46 -0700 (PDT)
Date: Tue, 2 Sep 2014 09:39:46 +0530
Message-ID: <CAP3RZojOJyJnnRcWAENmEPvghyKGRyMub3_Yt4hSAem5n4qO4Q@mail.gmail.com>
From: jags gediya <jags.gediya@gmail.com>
To: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Fresh Yocto build for i.MX6SLEVK giving error related to eglibc
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
X-List-Received-Date: Tue, 02 Sep 2014 04:09:55 -0000
Content-Type: text/plain; charset=UTF-8

I have done some modification in the machine conf file.

MACHINE_FEATURES += " pci wifi bluetooth alsa usbhost usbgadget serial"
DISTRO_FEATURES += "pulseaudio ipv4 ipv6 usbhost usbgadget"

I am building core-image-minimal. According to my requirement i have
done some changes inside,

/poky/meta/recipes-core/packagegroups/packagegroup-core-boot.bb

RDEPENDS_${PN} = "\
    base-files \
    base-passwd \
    busybox \
    ${@base_contains("DISTRO_FEATURES", "sysvinit",
"${SYSVINIT_SCRIPTS}", "", d)} \
    ${@base_contains("MACHINE_FEATURES", "keyboard",
"${VIRTUAL-RUNTIME_keymaps}", "", d)} \
    netbase \
    ${VIRTUAL-RUNTIME_login_manager} \
    ${VIRTUAL-RUNTIME_init_manager} \
    ${VIRTUAL-RUNTIME_initscripts} \
    ${VIRTUAL-RUNTIME_dev_manager} \
    ${VIRTUAL-RUNTIME_update-alternatives} \
    ${MACHINE_ESSENTIAL_EXTRA_RDEPENDS} \
    wpa-supplicant \
    bluez5 \
    wireless-tools \
    iperf \
    uim \
    bt-firmware \
    hostap-daemon \
    iw"

Afte making these changes, I have tried to build the yocto image. But
i am getting the below errors while building.

ERROR: QA Issue: eglibc-locale: Files/directories were installed but not shipped
  /usr/lib
  /usr/bin
  /usr/share/i18n
  /usr/share/i18n/locales
  /usr/share/i18n/locales/POSIX
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/home/jags/ASAI_IOTG/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/eglibc-locale/2.19-r0/temp/log.do_package.21808
ERROR: Task 317
(/home/jags/ASAI_IOTG/sources/poky/meta/recipes-core/eglibc/eglibc-locale_2.19.bb,
do_package) failed with exit code '1'
NOTE: Tasks Summary: Attempted 741 tasks of which 12 didn't need to be
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /home/jags/ASAI_IOTG/sources/poky/meta/recipes-core/eglibc/eglibc-locale_2.19.bb,
do_package
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.


What can be the reason of above behaviour?

Thanks,
Jags

