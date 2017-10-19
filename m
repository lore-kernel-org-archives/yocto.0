Return-Path: <vivek.berodhia@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E270E00D3E; Thu, 19 Oct 2017 00:19:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vivek.berodhia[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9760E00D36
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 00:19:50 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id 72so8739268itk.3
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 00:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=k+NjHeiInB6VKDRA4wpdjt/8melJrPzGBSR9Ih6/IW0=;
	b=WS904m5TIM5cFq7bZ5ZlWQSuwlnayc/EeFWoVHKUhj2fg26ZRA9hhL10ctzu+4FQsc
	5RUtygkWRTKlQDtpQmJCx3ftz9ziwvnu0R3y+QlP+KHNn2f+2j4UP0fujO5P86nhXTkh
	QWNjMA4VMDux2LhE1zc8NmdnuCdI08uPhbnIxuFd0c0vD8TEvWN9X6CuBkISg4GI84bL
	HYm/jGw1yAtXwcVg/ONxdPmIU2icOsddAJKdgMdYQbPuLsgJfhnc8YP0r4/q4NJaBmsp
	mP0jn5qxBE/HyCh4flrZl+PDkPPbP83yjJtJYKNaVdUU19xj5Jn+h49Cm3NfthN6Ou/k
	EYBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=k+NjHeiInB6VKDRA4wpdjt/8melJrPzGBSR9Ih6/IW0=;
	b=iFyFwWdi9ACwYcqvBZAp8j+KWVOzW9Lh3pvVaykDrzqXjmbpjZrA2HMRv18DmtEKfC
	OT5WeI9dUBaGFWrNuBnZIFS5nCN9m5TidgLwIv7z9NLaYMKJqCJIrqBzVKe1eg9UIykx
	nQpd8Io/Lygr0gEHRkIWBXLnFZACy00QQpdMhBuFc/z4Np27Ar6ZSRe5IM+x1SnyhGKV
	WimYSGTN3MtJbb5ocnkYo4JMe7nxcjYYq1JT58IJPZXYHmaxdPwL6I9OVDmsTJDUOMjp
	P43LFZtVuqHWisDQWqFj+6G5IEb44EtRh1p+Xtg9WoAd6yh5JCvugFG4AfkCslAx71Gc
	e3SQ==
X-Gm-Message-State: AMCzsaVPg7MkpXFr4EVh8GtLfxTZ5DIn3piTYX+EnupmAibSgLLAqZEN
	b9mxtEL12mJJnKUn62MAdJcTYwV0Sz3Trw5AqodcJA==
X-Google-Smtp-Source: ABhQp+R5xmHfq6xPRDC9lQ+Ayigeg1AMowBtWZwn7pN6eLjL0iLFNr6iN35PSsGgKechXfXp2tBhiHSTXiPA+HIXVls=
X-Received: by 10.36.210.198 with SMTP id z189mr1088588itf.65.1508397589401;
	Thu, 19 Oct 2017 00:19:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.159.211 with HTTP; Thu, 19 Oct 2017 00:19:48 -0700 (PDT)
From: Vivek Berodhia <vivek.berodhia@gmail.com>
Date: Thu, 19 Oct 2017 12:49:48 +0530
Message-ID: <CAEqFnOVa2ST948grkg2kOQOCh3T8g6-Y70heZriZHdN7KOynYQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: conflicts between attempted installs of base-files-3.0.14-r89.prsg_x86_base and procps-3.3.12-r0.corei7_64
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
X-List-Received-Date: Thu, 19 Oct 2017 07:19:54 -0000
Content-Type: multipart/alternative; boundary="94eb2c05737e7f1649055be12e0b"

--94eb2c05737e7f1649055be12e0b
Content-Type: text/plain; charset="UTF-8"

Hi All,

I am new to Yocto Project development, I am building core-image-minimal
with meta-secure-core for x86 platform. But facing issue in do_rootfs.
Issue may be simple but i have not found any solution after google a lot.
Please suggest where should i make changes, so that it will accept both
extension or generate all the files with same extension.

Main Error snippet:

Error: Transaction check error:
  file /etc/sysctl.conf conflicts between attempted installs of
base-files-3.0.14-r89.prsg_x86_base and procps-3.3.12-r0.corei7_64

Error Summary
-------------

Full Snippet:

vivek@LinuxServer:~/PRSG/poky/build$ bitbake core-image-minimal
Loading cache: 100%
|####################################################################################################################################################################|
Time: 0:00:00
Loaded 4170 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.34.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "x86_64-poky-linux"
MACHINE           = "prsg-x86-base"
DISTRO            = "poky"
DISTRO_VERSION    = "2.3.2"
TUNE_FEATURES     = "m64 corei7"
TARGET_FPU        = ""
meta
meta-poky
meta-yocto-bsp    = "pyro:717303e6fbcbbe181ad9645d762eb5a85d934523"
meta-intel        = "pyro:63de2abadfa8164e28575e412e2bd9c315840ddb"
meta-python
meta-networking
meta-filesystems
meta-oe           = "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"
meta-updater      = "pyro:36f1d8668a0ccdfe7f71f886a6829fb33be7cb48"
meta-rust         = "pyro:f6d973c5cacb9b52f32118caa879dcc7922d3c98"
meta-perl         = "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"
meta
meta-bsp-cellular-x86
meta-base-pkgs
meta-sdwan        = "master:8dda761d4eed1726b436c19ed30e38ef2c44f639"
meta              = "pyro:404a04a862a71a5a0fb1c20b6bc9fc9c8b2bb98c"
meta
meta-signing-key
meta-tpm
meta-tpm2
meta-efi-secure-boot
meta-integrity
meta-encrypted-storage = "master:a852a682270455fff886da8c2f3397a1516af2cb"

Initialising tasks: 100%
|###############################################################################################################################################################|
Time: 0:00:07
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: secure-core-image-initramfs-1.0-r0 do_rootfs: Could not invoke dnf.
Command
'/home/vivek/PRSG/poky/build/tmp/work/prsg_x86_base-poky-linux/secure-core-image-initramfs/1.0-r0/recipe-sysroot-native/usr/bin/dnf
-y -c
/home/vivek/PRSG/poky/build/tmp/work/prsg_x86_base-poky-linux/secure-core-image-initramfs/1.0-r0/rootfs/etc/dnf/dnf.conf
--setopt=reposdir=/home/vivek/PRSG/poky/build/tmp/work/prsg_x86_base-poky-linux/secure-core-image-initramfs/1.0-r0/rootfs/etc/yum.repos.d
--repofrompath=oe-repo,/home/vivek/PRSG/poky/build/tmp/work/prsg_x86_base-poky-linux/secure-core-image-initramfs/1.0-r0/oe-rootfs-repo
--installroot=/home/vivek/PRSG/poky/build/tmp/work/prsg_x86_base-poky-linux/secure-core-image-initramfs/1.0-r0/rootfs
--setopt=logdir=/home/vivek/PRSG/poky/build/tmp/work/prsg_x86_base-poky-linux/secure-core-image-initramfs/1.0-r0/temp
-x busybox-syslog --nogpgcheck install busybox initrdscripts-secure-core
packagegroup-tpm2-initramfs packagegroup-ima-initramfs
packagegroup-luks-initramfs run-postinsts base-passwd' returned 1:
Added oe-repo repo from
file:///home/vivek/PRSG/poky/build/tmp/work/prsg_x86_base-poky-linux/secure-core-image-initramfs/1.0-r0/oe-rootfs-repo
Last metadata expiration check: 0:00:01 ago on Thu Oct 19 06:13:55 2017 UTC.
Dependencies resolved.
================================================================================
 Package                  Arch          Version                   Repository

Size
================================================================================
Installing:
 base-passwd              corei7_64     3.5.29-r0                 oe-repo
6.9 k
 busybox                  corei7_64     1.24.1-r0                 oe-repo
314 k
 initrdscripts-secure-core
                          corei7_64     1.0-r0                    oe-repo
7.2 k
 packagegroup-ima-initramfs
                          corei7_64     1.0-r0                    oe-repo
5.5 k
 packagegroup-luks-initramfs
                          corei7_64     1.0-r0                    oe-repo
5.5 k
 packagegroup-tpm2-initramfs
                          noarch        1.0-r0                    oe-repo
5.4 k
 run-postinsts            noarch        1.0-r9                    oe-repo
8.5 k
Installing dependencies:
 base-files               prsg_x86_base 3.0.14-r89                oe-repo
13 k
 bash                     corei7_64     4.3.30-r0                 oe-repo
400 k
 coreutils                corei7_64     8.26-r0                   oe-repo
846 k
 cryptfs-tpm2             corei7_64     0.6.0+git0+cf736b0fe0-r0  oe-repo
38 k
 cryptfs-tpm2-initramfs   corei7_64     0.6.0+git0+cf736b0fe0-r0  oe-repo
11 k
 cryptsetup               corei7_64     1.7.4-r0                  oe-repo
93 k
 eudev                    corei7_64     3.2.1-r0                  oe-repo
219 k
 gawk                     corei7_64     4.1.4-r0                  oe-repo
295 k
 grep                     corei7_64     3.0-r0                    oe-repo
112 k
 ima-evm-utils            corei7_64     1.0+git0+3e2a67bdb0-r0    oe-repo
25 k
 ima-policy               corei7_64     0.1-r0                    oe-repo
6.4 k
 initrdscripts-ima        corei7_64     1.0-r0                    oe-repo
7.3 k
 keyutils                 corei7_64     1.5.10+git0+308119c61e-r0 oe-repo
32 k
 kmod                     corei7_64     23+git0+65a885df5f-r0     oe-repo
60 k
 libacl1                  corei7_64     2.2.52-r0                 oe-repo
19 k
 libaio1                  corei7_64     0.3.110-r0                oe-repo
8.4 k
 libattr1                 corei7_64     2.4.47-r0                 oe-repo
13 k
 libblkid1                corei7_64     2.29.1-r0                 oe-repo
106 k
 libc6                    corei7_64     2.25-r0                   oe-repo
1.3 M
 libcap2                  corei7_64     2.25-r0                   oe-repo
14 k
 libcrypto1.0.2           corei7_64     1.0.2k-r0                 oe-repo
818 k
 libcurl4                 corei7_64     7.53.1-r0                 oe-repo
146 k
 libdevmapper             corei7_64     2.02.166-r0               oe-repo
199 k
 libexpat1                corei7_64     2.2.0-r0                  oe-repo
58 k
 libffi6                  corei7_64     3.2.1-r0                  oe-repo
20 k
 libgcc1                  corei7_64     6.3.0-r0                  oe-repo
41 k
 libglib-2.0-0            corei7_64     1:2.50.3-r0               oe-repo
937 k
 libgmp10                 corei7_64     6.1.2-r0                  oe-repo
216 k
 libgnutls30              corei7_64     3.5.9-r0                  oe-repo
480 k
 libidn11                 corei7_64     1.33-r0                   oe-repo
46 k
 libkmod2                 corei7_64     23+git0+65a885df5f-r0     oe-repo
36 k
 libmarshal0              corei7_64     1.1.0+git0+3fb91634e6-r0  oe-repo
9.8 k
 libmount1                corei7_64     2.29.1-r0                 oe-repo
114 k
 libncurses5              corei7_64     6.0+20161126-r0           oe-repo
63 k
 libpcre1                 corei7_64     8.40-r0                   oe-repo
87 k
 libpopt0                 corei7_64     1.16-r3                   oe-repo
27 k
 libreadline7             corei7_64     7.0-r0                    oe-repo
117 k
 libsapi0                 corei7_64     1.1.0+git0+3fb91634e6-r0  oe-repo
39 k
 libssl1.0.2              corei7_64     1.0.2k-r0                 oe-repo
142 k
 libstdc++6               corei7_64     6.3.0-r0                  oe-repo
348 k
 libtcti-device0          corei7_64     1.1.0+git0+3fb91634e6-r0  oe-repo
11 k
 libtcti-socket0          corei7_64     1.1.0+git0+3fb91634e6-r0  oe-repo
13 k
 libtinfo5                corei7_64     6.0+20161126-r0           oe-repo
52 k
 libudev1                 corei7_64     3.2.1-r0                  oe-repo
61 k
 libunistring2            corei7_64     0.9.7-r0                  oe-repo
366 k
 libuuid1                 corei7_64     2.29.1-r0                 oe-repo
12 k
 libz1                    corei7_64     1.2.11-r0                 oe-repo
48 k
 lvm2                     corei7_64     2.02.166-r0               oe-repo
916 k
 lvm2-udevrules           corei7_64     2.02.166-r0               oe-repo
12 k
 net-tools                corei7_64     1.60+26-r0                oe-repo
99 k
 nettle                   corei7_64     3.3-r0                    oe-repo
232 k
 openssl                  corei7_64     1.0.2k-r0                 oe-repo
196 k
 procps                   corei7_64     3.3.12-r0                 oe-repo
162 k
 sed                      corei7_64     4.2.2-r0                  oe-repo
68 k
 thin-provisioning-tools  corei7_64     0.6.3-r0                  oe-repo
359 k
 tpm2.0-tools             corei7_64     2.1.0+git0+97306d6dc1-r0  oe-repo
130 k
 update-alternatives-opkg corei7_64     0.3.4+git0+1a708fd73d-r0  oe-repo
8.3 k
 util-linux-blkid         corei7_64     2.29.1-r0                 oe-repo
37 k
 util-linux-mount         corei7_64     2.29.1-r0                 oe-repo
19 k
 util-linux-umount        corei7_64     2.29.1-r0                 oe-repo
16 k
Installing weak dependencies:
 busybox-udhcpc           corei7_64     1.24.1-r0                 oe-repo
7.8 k
 ca-certificates          noarch        20161130-r0               oe-repo
184 k
 key-store-ima-cert       corei7_64     0.1-r0                    oe-repo
6.8 k
 lvm2-scripts             corei7_64     2.02.166-r0               oe-repo
20 k
 ncurses-terminfo-base    corei7_64     6.0+20161126-r0           oe-repo
14 k
 openssl-conf             corei7_64     1.0.2k-r0                 oe-repo
9.6 k
 udev-cache               corei7_64     3.2.1-r0                  oe-repo
8.6 k
 update-rc.d              noarch        0.7-r5                    oe-repo
8.0 k

Transaction Summary
================================================================================
Install  75 Packages

Total size: 11 M
Installed size: 38 M
Running transaction check
Transaction check succeeded.
Running transaction test
Error: Transaction check error:
  file /etc/sysctl.conf conflicts between attempted installs of
base-files-3.0.14-r89.prsg_x86_base and procps-3.3.12-r0.corei7_64

Error Summary
-------------


ERROR: secure-core-image-initramfs-1.0-r0 do_rootfs: Function failed:
do_rootfs
ERROR: Logfile of failure stored in:
/home/vivek/PRSG/poky/build/tmp/work/prsg_x86_base-poky-linux/secure-core-image-initramfs/1.0-r0/temp/log.do_rootfs.11892
ERROR: Task
(/home/vivek/PRSG/meta-secure-core/meta/recipes-core/images/secure-core-image-initramfs.bb:do_rootfs)
failed with exit code '1'
ERROR: core-image-minimal-initramfs-1.0-r0 do_rootfs: Error executing a
python function in exec_python_func() autogenerated:


-- 
Vivek Kr. Berodhia
Contact No. 09468486085

--94eb2c05737e7f1649055be12e0b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj5IaSBBbGwsPGJyPjxicj48L2Rpdj5JIGFtIG5ldyB0byBZb2N0
byBQcm9qZWN0IGRldmVsb3BtZW50LCBJIGFtIGJ1aWxkaW5nIGNvcmUtaW1hZ2UtbWluaW1hbCB3
aXRoIG1ldGEtc2VjdXJlLWNvcmUgZm9yIHg4NiBwbGF0Zm9ybS4gQnV0IGZhY2luZyBpc3N1ZSBp
biBkb19yb290ZnMuIElzc3VlIG1heSBiZSBzaW1wbGUgYnV0IGkgaGF2ZSBub3QgZm91bmQgYW55
IHNvbHV0aW9uIGFmdGVyIGdvb2dsZSBhIGxvdC4gUGxlYXNlIHN1Z2dlc3Qgd2hlcmUgc2hvdWxk
IGkgbWFrZSBjaGFuZ2VzLCBzbyB0aGF0IGl0IHdpbGwgYWNjZXB0IGJvdGggZXh0ZW5zaW9uIG9y
IGdlbmVyYXRlIGFsbCB0aGUgZmlsZXMgd2l0aCBzYW1lIGV4dGVuc2lvbi48YnIgY2xlYXI9ImFs
bCI+PGRpdj48ZGl2Pjxicj48L2Rpdj48ZGl2Pk1haW4gRXJyb3Igc25pcHBldDo8L2Rpdj48ZGl2
Pjxicj48L2Rpdj48ZGl2PkVycm9yOiBUcmFuc2FjdGlvbiBjaGVjayBlcnJvcjo8YnI+wqAgZmls
ZSAvZXRjL3N5c2N0bC5jb25mIGNvbmZsaWN0cyBiZXR3ZWVuIGF0dGVtcHRlZCBpbnN0YWxscyBv
ZiBiYXNlLWZpbGVzLTMuMC4xNC1yODkucHJzZ194ODZfYmFzZSBhbmQgcHJvY3BzLTMuMy4xMi1y
MC5jb3JlaTdfNjQ8YnI+PGJyPkVycm9yIFN1bW1hcnk8YnI+LS0tLS0tLS0tLS0tLTxicj48L2Rp
dj48ZGl2Pjxicj48L2Rpdj48ZGl2PkZ1bGwgU25pcHBldDo8L2Rpdj48ZGl2Pjxicj48L2Rpdj48
ZGl2PnZpdmVrQExpbnV4U2VydmVyOn4vUFJTRy9wb2t5L2J1aWxkJCBiaXRiYWtlIGNvcmUtaW1h
Z2UtbWluaW1hbDxicj5Mb2FkaW5nIGNhY2hlOiAxMDAlIHwjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI3wgVGltZTogMDowMDowMDxicj5Mb2FkZWQgNDE3
MCBlbnRyaWVzIGZyb20gZGVwZW5kZW5jeSBjYWNoZS48YnI+Tk9URTogUmVzb2x2aW5nIGFueSBt
aXNzaW5nIHRhc2sgcXVldWUgZGVwZW5kZW5jaWVzPGJyPjxicj5CdWlsZCBDb25maWd1cmF0aW9u
Ojxicj5CQl9WRVJTSU9OwqDCoMKgwqDCoMKgwqAgPSAmcXVvdDsxLjM0LjAmcXVvdDs8YnI+QlVJ
TERfU1lTwqDCoMKgwqDCoMKgwqDCoCA9ICZxdW90O3g4Nl82NC1saW51eCZxdW90Ozxicj5OQVRJ
VkVMU0JTVFJJTkfCoMKgID0gJnF1b3Q7dW5pdmVyc2FsJnF1b3Q7PGJyPlRBUkdFVF9TWVPCoMKg
wqDCoMKgwqDCoCA9ICZxdW90O3g4Nl82NC1wb2t5LWxpbnV4JnF1b3Q7PGJyPk1BQ0hJTkXCoMKg
wqDCoMKgwqDCoMKgwqDCoCA9ICZxdW90O3Byc2cteDg2LWJhc2UmcXVvdDs8YnI+RElTVFJPwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCA9ICZxdW90O3Bva3kmcXVvdDs8YnI+RElTVFJPX1ZFUlNJT07C
oMKgwqAgPSAmcXVvdDsyLjMuMiZxdW90Ozxicj5UVU5FX0ZFQVRVUkVTwqDCoMKgwqAgPSAmcXVv
dDttNjQgY29yZWk3JnF1b3Q7PGJyPlRBUkdFVF9GUFXCoMKgwqDCoMKgwqDCoCA9ICZxdW90OyZx
dW90Ozxicj5tZXRhPGJyPm1ldGEtcG9reTxicj5tZXRhLXlvY3RvLWJzcMKgwqDCoCA9ICZxdW90
O3B5cm86NzE3MzAzZTZmYmNiYmUxODFhZDk2NDVkNzYyZWI1YTg1ZDkzNDUyMyZxdW90Ozxicj5t
ZXRhLWludGVswqDCoMKgwqDCoMKgwqAgPSAmcXVvdDtweXJvOjYzZGUyYWJhZGZhODE2NGUyODU3
NWU0MTJlMmJkOWMzMTU4NDBkZGImcXVvdDs8YnI+bWV0YS1weXRob248YnI+bWV0YS1uZXR3b3Jr
aW5nPGJyPm1ldGEtZmlsZXN5c3RlbXM8YnI+bWV0YS1vZcKgwqDCoMKgwqDCoMKgwqDCoMKgID0g
JnF1b3Q7cHlybzo1ZTgyOTk1MTQ4YTI4NDRjNmY0ODNhZTVkZGQxNDM4ZDg3ZWE5ZmI3JnF1b3Q7
PGJyPm1ldGEtdXBkYXRlcsKgwqDCoMKgwqAgPSAmcXVvdDtweXJvOjM2ZjFkODY2OGEwY2NkZmU3
ZjcxZjg4NmE2ODI5ZmIzM2JlN2NiNDgmcXVvdDs8YnI+bWV0YS1ydXN0wqDCoMKgwqDCoMKgwqDC
oCA9ICZxdW90O3B5cm86ZjZkOTczYzVjYWNiOWI1MmYzMjExOGNhYTg3OWRjYzc5MjJkM2M5OCZx
dW90Ozxicj5tZXRhLXBlcmzCoMKgwqDCoMKgwqDCoMKgID0gJnF1b3Q7cHlybzo1ZTgyOTk1MTQ4
YTI4NDRjNmY0ODNhZTVkZGQxNDM4ZDg3ZWE5ZmI3JnF1b3Q7PGJyPm1ldGE8YnI+bWV0YS1ic3At
Y2VsbHVsYXIteDg2PGJyPm1ldGEtYmFzZS1wa2dzPGJyPm1ldGEtc2R3YW7CoMKgwqDCoMKgwqDC
oCA9ICZxdW90O21hc3Rlcjo4ZGRhNzYxZDRlZWQxNzI2YjQzNmMxOWVkMzBlMzhlZjJjNDRmNjM5
JnF1b3Q7PGJyPm1ldGHCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA9ICZxdW90O3B5cm86NDA0
YTA0YTg2MmE3MWE1YTBmYjFjMjBiNmJjOWZjOWM4YjJiYjk4YyZxdW90Ozxicj5tZXRhPGJyPm1l
dGEtc2lnbmluZy1rZXk8YnI+bWV0YS10cG08YnI+bWV0YS10cG0yPGJyPm1ldGEtZWZpLXNlY3Vy
ZS1ib290PGJyPm1ldGEtaW50ZWdyaXR5PGJyPm1ldGEtZW5jcnlwdGVkLXN0b3JhZ2UgPSAmcXVv
dDttYXN0ZXI6YTg1MmE2ODIyNzA0NTVmZmY4ODZkYThjMmYzMzk3YTE1MTZhZjJjYiZxdW90Ozxi
cj48YnI+SW5pdGlhbGlzaW5nIHRhc2tzOiAxMDAlIHwjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyN8IFRpbWU6IDA6MDA6MDc8YnI+Tk9URTogRXhlY3V0aW5nIFNl
dFNjZW5lIFRhc2tzPGJyPk5PVEU6IEV4ZWN1dGluZyBSdW5RdWV1ZSBUYXNrczxicj5FUlJPUjog
c2VjdXJlLWNvcmUtaW1hZ2UtaW5pdHJhbWZzLTEuMC1yMCBkb19yb290ZnM6IENvdWxkIG5vdCBp
bnZva2UgZG5mLiBDb21tYW5kICYjMzk7L2hvbWUvdml2ZWsvUFJTRy9wb2t5L2J1aWxkL3RtcC93
b3JrL3Byc2dfeDg2X2Jhc2UtcG9reS1saW51eC9zZWN1cmUtY29yZS1pbWFnZS1pbml0cmFtZnMv
MS4wLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluL2RuZiAteSAtYyAvaG9tZS92aXZl
ay9QUlNHL3Bva3kvYnVpbGQvdG1wL3dvcmsvcHJzZ194ODZfYmFzZS1wb2t5LWxpbnV4L3NlY3Vy
ZS1jb3JlLWltYWdlLWluaXRyYW1mcy8xLjAtcjAvcm9vdGZzL2V0Yy9kbmYvZG5mLmNvbmYgLS1z
ZXRvcHQ9cmVwb3NkaXI9L2hvbWUvdml2ZWsvUFJTRy9wb2t5L2J1aWxkL3RtcC93b3JrL3Byc2df
eDg2X2Jhc2UtcG9reS1saW51eC9zZWN1cmUtY29yZS1pbWFnZS1pbml0cmFtZnMvMS4wLXIwL3Jv
b3Rmcy9ldGMveXVtLnJlcG9zLmQgLS1yZXBvZnJvbXBhdGg9b2UtcmVwbywvaG9tZS92aXZlay9Q
UlNHL3Bva3kvYnVpbGQvdG1wL3dvcmsvcHJzZ194ODZfYmFzZS1wb2t5LWxpbnV4L3NlY3VyZS1j
b3JlLWltYWdlLWluaXRyYW1mcy8xLjAtcjAvb2Utcm9vdGZzLXJlcG8gLS1pbnN0YWxscm9vdD0v
aG9tZS92aXZlay9QUlNHL3Bva3kvYnVpbGQvdG1wL3dvcmsvcHJzZ194ODZfYmFzZS1wb2t5LWxp
bnV4L3NlY3VyZS1jb3JlLWltYWdlLWluaXRyYW1mcy8xLjAtcjAvcm9vdGZzIC0tc2V0b3B0PWxv
Z2Rpcj0vaG9tZS92aXZlay9QUlNHL3Bva3kvYnVpbGQvdG1wL3dvcmsvcHJzZ194ODZfYmFzZS1w
b2t5LWxpbnV4L3NlY3VyZS1jb3JlLWltYWdlLWluaXRyYW1mcy8xLjAtcjAvdGVtcCAteCBidXN5
Ym94LXN5c2xvZyAtLW5vZ3BnY2hlY2sgaW5zdGFsbCBidXN5Ym94IGluaXRyZHNjcmlwdHMtc2Vj
dXJlLWNvcmUgcGFja2FnZWdyb3VwLXRwbTItaW5pdHJhbWZzIHBhY2thZ2Vncm91cC1pbWEtaW5p
dHJhbWZzIHBhY2thZ2Vncm91cC1sdWtzLWluaXRyYW1mcyBydW4tcG9zdGluc3RzIGJhc2UtcGFz
c3dkJiMzOTsgcmV0dXJuZWQgMTo8YnI+QWRkZWQgb2UtcmVwbyByZXBvIGZyb20gZmlsZTovLy9o
b21lL3ZpdmVrL1BSU0cvcG9reS9idWlsZC90bXAvd29yay9wcnNnX3g4Nl9iYXNlLXBva3ktbGlu
dXgvc2VjdXJlLWNvcmUtaW1hZ2UtaW5pdHJhbWZzLzEuMC1yMC9vZS1yb290ZnMtcmVwbzxicj5M
YXN0IG1ldGFkYXRhIGV4cGlyYXRpb24gY2hlY2s6IDA6MDA6MDEgYWdvIG9uIFRodSBPY3QgMTkg
MDY6MTM6NTUgMjAxNyBVVEMuPGJyPkRlcGVuZGVuY2llcyByZXNvbHZlZC48YnI+PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT08YnI+wqBQYWNrYWdlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBBcmNowqDCoMKgwqDCoMKgwqDCoMKgIFZlcnNpb27CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgUmVwb3NpdG9yeTxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIFNpemU8YnI+PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT08YnI+SW5zdGFsbGluZzo8YnI+
wqBiYXNlLXBhc3N3ZMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDCoMKg
IDMuNS4yOS1yMMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9lLXJlcG8gNi45IGs8
YnI+wqBidXN5Ym94wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdfNjTC
oMKgwqDCoCAxLjI0LjEtcjDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBv
IDMxNCBrPGJyPsKgaW5pdHJkc2NyaXB0cy1zZWN1cmUtY29yZTxicj7CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdfNjTCoMKgwqDCoCAxLjAt
cjDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBvIDcuMiBrPGJy
PsKgcGFja2FnZWdyb3VwLWltYS1pbml0cmFtZnM8YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29yZWk3XzY0wqDCoMKgwqAgMS4wLXIwwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2UtcmVwbyA1LjUgazxicj7CoHBhY2th
Z2Vncm91cC1sdWtzLWluaXRyYW1mczxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdfNjTCoMKgwqDCoCAxLjAtcjDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBvIDUuNSBrPGJyPsKgcGFja2FnZWdyb3Vw
LXRwbTItaW5pdHJhbWZzPGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIG5vYXJjaMKgwqDCoMKgwqDCoMKgIDEuMC1yMMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9lLXJlcG8gNS40IGs8YnI+wqBydW4tcG9zdGluc3RzwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBub2FyY2jCoMKgwqDCoMKgwqDCoCAxLjAtcjnCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBvIDguNSBrPGJyPkluc3RhbGxpbmcg
ZGVwZW5kZW5jaWVzOjxicj7CoGJhc2UtZmlsZXPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHByc2dfeDg2X2Jhc2UgMy4wLjE0LXI4OcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBv
ZS1yZXBvwqAgMTMgazxicj7CoGJhc2jCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDQuMy4zMC1yMMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIG9lLXJlcG8gNDAwIGs8YnI+wqBjb3JldXRpbHPCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY29yZWk3XzY0wqDCoMKgwqAgOC4yNi1yMMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBvIDg0NiBrPGJyPsKgY3J5cHRmcy10cG0ywqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDAuNi4wK2dpdDArY2Y3MzZiMGZlMC1y
MMKgIG9lLXJlcG/CoCAzOCBrPGJyPsKgY3J5cHRmcy10cG0yLWluaXRyYW1mc8KgwqAgY29yZWk3
XzY0wqDCoMKgwqAgMC42LjArZ2l0MCtjZjczNmIwZmUwLXIwwqAgb2UtcmVwb8KgIDExIGs8YnI+
wqBjcnlwdHNldHVwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdfNjTCoMKgwqDC
oCAxLjcuNC1yMMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2UtcmVwb8KgIDkz
IGs8YnI+wqBldWRldsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvcmVp
N182NMKgwqDCoMKgIDMuMi4xLXIwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBv
ZS1yZXBvIDIxOSBrPGJyPsKgZ2F3a8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgY29yZWk3XzY0wqDCoMKgwqAgNC4xLjQtcjDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIG9lLXJlcG8gMjk1IGs8YnI+wqBncmVwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdfNjTCoMKgwqDCoCAzLjAtcjDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBvIDExMiBrPGJyPsKgaW1hLWV2bS11dGlsc8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgY29yZWk3XzY0wqDCoMKgwqAgMS4wK2dpdDArM2UyYTY3YmRi
MC1yMMKgwqDCoCBvZS1yZXBvwqAgMjUgazxicj7CoGltYS1wb2xpY3nCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDAuMS1yMMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG9lLXJlcG8gNi40IGs8YnI+wqBpbml0cmRzY3JpcHRzLWltYcKg
wqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDEuMC1yMMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG9lLXJlcG8gNy4zIGs8YnI+wqBrZXl1dGlsc8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDEuNS4xMCtnaXQwKzMwODEx
OWM2MWUtcjAgb2UtcmVwb8KgIDMyIGs8YnI+wqBrbW9kwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdfNjTCoMKgwqDCoCAyMytnaXQwKzY1YTg4NWRmNWYtcjDC
oMKgwqDCoCBvZS1yZXBvwqAgNjAgazxicj7CoGxpYmFjbDHCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDIuMi41Mi1yMMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIG9lLXJlcG/CoCAxOSBrPGJyPsKgbGliYWlvMcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgY29yZWk3XzY0wqDCoMKgwqAgMC4zLjExMC1yMMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBvIDguNCBrPGJyPsKgbGliYXR0cjHCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdfNjTCoMKgwqDCoCAyLjQuNDctcjDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBvwqAgMTMgazxicj7CoGxpYmJsa2lk
McKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdfNjTCoMKgwqDCoCAyLjI5LjEt
cjDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBvIDEwNiBrPGJyPsKgbGli
YzbCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdfNjTCoMKgwqDC
oCAyLjI1LXIwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9lLXJlcG8gMS4z
IE08YnI+wqBsaWJjYXAywqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdf
NjTCoMKgwqDCoCAyLjI1LXIwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9l
LXJlcG/CoCAxNCBrPGJyPsKgbGliY3J5cHRvMS4wLjLCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3Jl
aTdfNjTCoMKgwqDCoCAxLjAuMmstcjDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBv
ZS1yZXBvIDgxOCBrPGJyPsKgbGliY3VybDTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBjb3JlaTdfNjTCoMKgwqDCoCA3LjUzLjEtcjDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBvZS1yZXBvIDE0NiBrPGJyPsKgbGliZGV2bWFwcGVywqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGNvcmVpN182NMKgwqDCoMKgIDIuMDIuMTY2LXIwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBvZS1yZXBvIDE5OSBrPGJyPsKgbGliZXhwYXQxwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDIuMi4wLXIwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBvZS1yZXBvwqAgNTggazxicj7CoGxpYmZmaTbCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDMuMi4xLXIwwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBvwqAgMjAgazxicj7CoGxpYmdjYzHCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDYuMy4wLXIwwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBvwqAgNDEgazxicj7CoGxpYmdsaWIt
Mi4wLTDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDE6Mi41MC4zLXIw
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBvIDkzNyBrPGJyPsKgbGliZ21wMTDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdfNjTCoMKgwqDCoCA2LjEuMi1y
MMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2UtcmVwbyAyMTYgazxicj7CoGxp
YmdudXRsczMwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29yZWk3XzY0wqDCoMKgwqAgMy41
LjktcjDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9lLXJlcG8gNDgwIGs8YnI+
wqBsaWJpZG4xMcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDC
oMKgIDEuMzMtcjDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2UtcmVwb8Kg
IDQ2IGs8YnI+wqBsaWJrbW9kMsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvcmVp
N182NMKgwqDCoMKgIDIzK2dpdDArNjVhODg1ZGY1Zi1yMMKgwqDCoMKgIG9lLXJlcG/CoCAzNiBr
PGJyPsKgbGlibWFyc2hhbDDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdfNjTCoMKg
wqDCoCAxLjEuMCtnaXQwKzNmYjkxNjM0ZTYtcjDCoCBvZS1yZXBvIDkuOCBrPGJyPsKgbGlibW91
bnQxwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDIuMjku
MS1yMMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9lLXJlcG8gMTE0IGs8YnI+wqBs
aWJuY3Vyc2VzNcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDYu
MCsyMDE2MTEyNi1yMMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9lLXJlcG/CoCA2MyBrPGJyPsKgbGli
cGNyZTHCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdfNjTCoMKgwqDCoCA4
LjQwLXIwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9lLXJlcG/CoCA4NyBr
PGJyPsKgbGlicG9wdDDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdfNjTC
oMKgwqDCoCAxLjE2LXIzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9lLXJl
cG/CoCAyNyBrPGJyPsKgbGlicmVhZGxpbmU3wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvcmVp
N182NMKgwqDCoMKgIDcuMC1yMMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IG9lLXJlcG8gMTE3IGs8YnI+wqBsaWJzYXBpMMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGNvcmVpN182NMKgwqDCoMKgIDEuMS4wK2dpdDArM2ZiOTE2MzRlNi1yMMKgIG9lLXJlcG/C
oCAzOSBrPGJyPsKgbGlic3NsMS4wLjLCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdf
NjTCoMKgwqDCoCAxLjAuMmstcjDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1y
ZXBvIDE0MiBrPGJyPsKgbGlic3RkYysrNsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29y
ZWk3XzY0wqDCoMKgwqAgNi4zLjAtcjDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IG9lLXJlcG8gMzQ4IGs8YnI+wqBsaWJ0Y3RpLWRldmljZTDCoMKgwqDCoMKgwqDCoMKgwqAgY29y
ZWk3XzY0wqDCoMKgwqAgMS4xLjArZ2l0MCszZmI5MTYzNGU2LXIwwqAgb2UtcmVwb8KgIDExIGs8
YnI+wqBsaWJ0Y3RpLXNvY2tldDDCoMKgwqDCoMKgwqDCoMKgwqAgY29yZWk3XzY0wqDCoMKgwqAg
MS4xLjArZ2l0MCszZmI5MTYzNGU2LXIwwqAgb2UtcmVwb8KgIDEzIGs8YnI+wqBsaWJ0aW5mbzXC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29yZWk3XzY0wqDCoMKgwqAgNi4wKzIwMTYx
MTI2LXIwwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2UtcmVwb8KgIDUyIGs8YnI+wqBsaWJ1ZGV2McKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDMuMi4xLXIw
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBvwqAgNjEgazxicj7CoGxp
YnVuaXN0cmluZzLCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDAuOS43
LXIwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBvIDM2NiBrPGJyPsKg
bGlidXVpZDHCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdfNjTCoMKgwqDC
oCAyLjI5LjEtcjDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBvwqAgMTIg
azxicj7CoGxpYnoxwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29yZWk3
XzY0wqDCoMKgwqAgMS4yLjExLXIwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2Ut
cmVwb8KgIDQ4IGs8YnI+wqBsdm0ywqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjb3JlaTdfNjTCoMKgwqDCoCAyLjAyLjE2Ni1yMMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgb2UtcmVwbyA5MTYgazxicj7CoGx2bTItdWRldnJ1bGVzwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY29yZWk3XzY0wqDCoMKgwqAgMi4wMi4xNjYtcjDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIG9lLXJlcG/CoCAxMiBrPGJyPsKgbmV0LXRvb2xzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDEuNjArMjYtcjDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgb2UtcmVwb8KgIDk5IGs8YnI+wqBuZXR0bGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY29yZWk3XzY0wqDCoMKgwqAgMy4zLXIwwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgb2UtcmVwbyAyMzIgazxicj7CoG9wZW5zc2zCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDEuMC4yay1yMMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9lLXJlcG8gMTk2IGs8YnI+wqBwcm9jcHPCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29yZWk3XzY0wqDCoMKgwqAgMy4zLjEy
LXIwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2UtcmVwbyAxNjIgazxicj7CoHNl
ZMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdfNjTCoMKg
wqDCoCA0LjIuMi1yMMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2UtcmVwb8Kg
IDY4IGs8YnI+wqB0aGluLXByb3Zpc2lvbmluZy10b29sc8KgIGNvcmVpN182NMKgwqDCoMKgIDAu
Ni4zLXIwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBvIDM1OSBrPGJy
PsKgdHBtMi4wLXRvb2xzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDCoMKg
IDIuMS4wK2dpdDArOTczMDZkNmRjMS1yMMKgIG9lLXJlcG8gMTMwIGs8YnI+wqB1cGRhdGUtYWx0
ZXJuYXRpdmVzLW9wa2cgY29yZWk3XzY0wqDCoMKgwqAgMC4zLjQrZ2l0MCsxYTcwOGZkNzNkLXIw
wqAgb2UtcmVwbyA4LjMgazxicj7CoHV0aWwtbGludXgtYmxraWTCoMKgwqDCoMKgwqDCoMKgIGNv
cmVpN182NMKgwqDCoMKgIDIuMjkuMS1yMMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IG9lLXJlcG/CoCAzNyBrPGJyPsKgdXRpbC1saW51eC1tb3VudMKgwqDCoMKgwqDCoMKgwqAgY29y
ZWk3XzY0wqDCoMKgwqAgMi4yOS4xLXIwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
b2UtcmVwb8KgIDE5IGs8YnI+wqB1dGlsLWxpbnV4LXVtb3VudMKgwqDCoMKgwqDCoMKgIGNvcmVp
N182NMKgwqDCoMKgIDIuMjkuMS1yMMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9l
LXJlcG/CoCAxNiBrPGJyPkluc3RhbGxpbmcgd2VhayBkZXBlbmRlbmNpZXM6PGJyPsKgYnVzeWJv
eC11ZGhjcGPCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdfNjTCoMKgwqDCoCAxLjI0LjEtcjDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBvIDcuOCBrPGJyPsKgY2EtY2Vy
dGlmaWNhdGVzwqDCoMKgwqDCoMKgwqDCoMKgIG5vYXJjaMKgwqDCoMKgwqDCoMKgIDIwMTYxMTMw
LXIwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZS1yZXBvIDE4NCBrPGJyPsKga2V5LXN0
b3JlLWltYS1jZXJ0wqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDAuMS1yMMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9lLXJlcG8gNi44IGs8YnI+wqBsdm0yLXNj
cmlwdHPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29yZWk3XzY0wqDCoMKgwqAgMi4wMi4xNjYt
cjDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9lLXJlcG/CoCAyMCBrPGJyPsKgbmN1cnNl
cy10ZXJtaW5mby1iYXNlwqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDYuMCsyMDE2MTEyNi1yMMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG9lLXJlcG/CoCAxNCBrPGJyPsKgb3BlbnNzbC1jb25mwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGNvcmVpN182NMKgwqDCoMKgIDEuMC4yay1yMMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9lLXJlcG8gOS42IGs8YnI+wqB1ZGV2LWNhY2hlwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3JlaTdfNjTCoMKgwqDCoCAzLjIuMS1yMMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2UtcmVwbyA4LjYgazxicj7CoHVwZGF0ZS1yYy5k
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbm9hcmNowqDCoMKgwqDCoMKgwqAgMC43LXI1wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2UtcmVwbyA4LjAgazxicj48YnI+
VHJhbnNhY3Rpb24gU3VtbWFyeTxicj49PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PTxicj5JbnN0YWxs
wqAgNzUgUGFja2FnZXM8YnI+PGJyPlRvdGFsIHNpemU6IDExIE08YnI+SW5zdGFsbGVkIHNpemU6
IDM4IE08YnI+UnVubmluZyB0cmFuc2FjdGlvbiBjaGVjazxicj5UcmFuc2FjdGlvbiBjaGVjayBz
dWNjZWVkZWQuPGJyPlJ1bm5pbmcgdHJhbnNhY3Rpb24gdGVzdDxicj5FcnJvcjogVHJhbnNhY3Rp
b24gY2hlY2sgZXJyb3I6PGJyPsKgIGZpbGUgL2V0Yy9zeXNjdGwuY29uZiBjb25mbGljdHMgYmV0
d2VlbiBhdHRlbXB0ZWQgaW5zdGFsbHMgb2YgYmFzZS1maWxlcy0zLjAuMTQtcjg5LnByc2dfeDg2
X2Jhc2UgYW5kIHByb2Nwcy0zLjMuMTItcjAuY29yZWk3XzY0PGJyPjxicj5FcnJvciBTdW1tYXJ5
PGJyPi0tLS0tLS0tLS0tLS08YnI+PGJyPjxicj5FUlJPUjogc2VjdXJlLWNvcmUtaW1hZ2UtaW5p
dHJhbWZzLTEuMC1yMCBkb19yb290ZnM6IEZ1bmN0aW9uIGZhaWxlZDogZG9fcm9vdGZzPGJyPkVS
Uk9SOiBMb2dmaWxlIG9mIGZhaWx1cmUgc3RvcmVkIGluOiAvaG9tZS92aXZlay9QUlNHL3Bva3kv
YnVpbGQvdG1wL3dvcmsvcHJzZ194ODZfYmFzZS1wb2t5LWxpbnV4L3NlY3VyZS1jb3JlLWltYWdl
LWluaXRyYW1mcy8xLjAtcjAvdGVtcC9sb2cuZG9fcm9vdGZzLjExODkyPGJyPkVSUk9SOiBUYXNr
ICgvaG9tZS92aXZlay9QUlNHL21ldGEtc2VjdXJlLWNvcmUvbWV0YS9yZWNpcGVzLWNvcmUvaW1h
Z2VzL3NlY3VyZS1jb3JlLWltYWdlLWluaXRyYW1mcy5iYjpkb19yb290ZnMpIGZhaWxlZCB3aXRo
IGV4aXQgY29kZSAmIzM5OzEmIzM5Ozxicj5FUlJPUjogY29yZS1pbWFnZS1taW5pbWFsLWluaXRy
YW1mcy0xLjAtcjAgZG9fcm9vdGZzOiBFcnJvciBleGVjdXRpbmcgYSBweXRob24gZnVuY3Rpb24g
aW4gZXhlY19weXRob25fZnVuYygpIGF1dG9nZW5lcmF0ZWQ6PGJyPjxicj48YnI+LS0gPGJyPjxk
aXYgY2xhc3M9ImdtYWlsX3NpZ25hdHVyZSI+PGRpdiBkaXI9Imx0ciI+PGRpdj48ZGl2IGRpcj0i
bHRyIj48ZGl2PlZpdmVrIEtyLiBCZXJvZGhpYTxicj5Db250YWN0IE5vLiAwOTQ2ODQ4NjA4NTxi
cj48L2Rpdj48L2Rpdj48L2Rpdj48L2Rpdj48L2Rpdj4NCjwvZGl2PjwvZGl2PjwvZGl2Pg0K

--94eb2c05737e7f1649055be12e0b--
