Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56F8EE00DB5; Tue, 13 Feb 2018 02:00:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7981E00D41
	for <yocto@yoctoproject.org>; Tue, 13 Feb 2018 02:00:31 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id w1DA0TMg029936
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO)
	for <yocto@yoctoproject.org>; Tue, 13 Feb 2018 12:00:29 +0200
From: Mircea Gliga <mircea.gliga@vitheia.com>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <a30a7713-3a76-6a6e-9292-8f64569bf9f7@vitheia.com>
Date: Tue, 13 Feb 2018 12:00:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
Subject: kernel fragment not applied while other fragments are applied
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
X-List-Received-Date: Tue, 13 Feb 2018 10:00:34 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi

Short story: I'm using rocko and have a recipe for Linux kernel 4.14.14 
based on linux-yocto.inc, some kernel fragments end up in the resulting 
.config, other don't, if regenerate fragments using menuconfig + 
diffconfig seems ok.

Long story:
In my recipe linux-stable_4.14.bb I have an inc file:
     [...]
     require linux-stable.inc
     [...]

linux-stable.inc :

     inherit kernel
     require recipes-kernel/linux/linux-yocto.inc
     [...]
     SRC_URI += "file://defconfig \
                 file://kernel_fragments/netfilter.cfg \
                 file://kernel_fragments/overlayfs.cfg \
                 file://kernel_fragments/verity.cfg \
                 file://kernel_fragments/squashfs.cfg \
                 file://kernel_fragments/modem.cfg \
                 file://kernel_fragments/led_oneshot.cfg \
                 file://kernel_fragments/ipsec.cfg \
                 file://kernel_fragments/netbridge.cfg \
                 file://kernel_fragments/atmel_hw_sha.cfg \


I have a set of kernel fragments. During `bitbake linux-stable -c 
kernel_configme -f` some of them end up in the .config file while others 
don't:
led_oneshot.cfg and overlayfs.cfg are not applied in the resulting 
.config while verity.cfg is applied.
They are all generated using menuconfig to config the kernel, then 
diffconfig to generate the fragment.

$ cat led_oneshot.cfg
CONFIG_LEDS_TRIGGER_ONESHOT=y

$ cat verity.cfg
CONFIG_MD=y
# CONFIG_BLK_DEV_MD is not set
# CONFIG_BCACHE is not set
CONFIG_BLK_DEV_DM_BUILTIN=y
CONFIG_BLK_DEV_DM=y
# CONFIG_DM_MQ_DEFAULT is not set
# CONFIG_DM_DEBUG is not set
CONFIG_DM_BUFIO=y
# CONFIG_DM_DEBUG_BLOCK_MANAGER_LOCKING is not set
CONFIG_DM_CRYPT=y
# CONFIG_DM_SNAPSHOT is not set
# CONFIG_DM_THIN_PROVISIONING is not set
# CONFIG_DM_CACHE is not set
# CONFIG_DM_ERA is not set
# CONFIG_DM_MIRROR is not set
# CONFIG_DM_RAID is not set
# CONFIG_DM_ZERO is not set
# CONFIG_DM_MULTIPATH is not set
# CONFIG_DM_DELAY is not set
# CONFIG_DM_UEVENT is not set
# CONFIG_DM_FLAKEY is not set
CONFIG_DM_VERITY=y
# CONFIG_DM_VERITY_FEC is not set
# CONFIG_DM_SWITCH is not set
# CONFIG_DM_LOG_WRITES is not set
# CONFIG_DM_INTEGRITY is not set

$ cat overlayfs.cfg
CONFIG_OVERLAY_FS=y
# CONFIG_OVERLAY_FS_REDIRECT_DIR is not set
# CONFIG_OVERLAY_FS_INDEX is not set

$

Now, if I go in menuconfig I can see that CONFIG_OVERLAY_FS is indeed 
not enabled, I then enable it and generate a new fragment, 
fragmentOverlay.cfg:
$ cat fragmentOverlay.cfg
CONFIG_OVERLAY_FS=y
# CONFIG_OVERLAY_FS_REDIRECT_DIR is not set
# CONFIG_OVERLAY_FS_INDEX is not set

$ md5sum *verlay*
14f88a8b2dcb256c38f6362161045831  fragmentOverlay.cfg
14f88a8b2dcb256c38f6362161045831  overlayfs.cfg

The new fragment is identical to the overlayfs.cfg (which is not applied).
I let both files in the SCR_URI:

SRC_URI += "[...]
                 file://kernel_fragments/overlayfs.cfg \
                 file://kernel_fragments/fragmentOverlay.cfg \
                 [...]"

And now after `bitbake linux-stable -c kernel_configme -f` the resulting 
.config has the overlay_fs enabled:

$ cat .config | grep OVERLAY_FS
CONFIG_OVERLAY_FS=y
# CONFIG_OVERLAY_FS_REDIRECT_DIR is not set
# CONFIG_OVERLAY_FS_INDEX is not set

$ cat .config |grep CONFIG_LEDS_TRIGGER_ONESHOT
# CONFIG_LEDS_TRIGGER_ONESHOT is not set


Same contents in the fragments, one is applied while the other is not ...

Do you have any hints ?

Thanks and regards!






