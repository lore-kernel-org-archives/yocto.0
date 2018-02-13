Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7402CE00DED; Tue, 13 Feb 2018 06:03:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C66DE00D6D
	for <yocto@yoctoproject.org>; Tue, 13 Feb 2018 06:03:56 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w1DE3a36008645
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 13 Feb 2018 06:03:39 -0800
Received: from [128.224.56.93] (128.224.56.93) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 13 Feb 2018 06:03:29 -0800
To: Mircea Gliga <mircea.gliga@vitheia.com>, Yocto Project
	<yocto@yoctoproject.org>
References: <a30a7713-3a76-6a6e-9292-8f64569bf9f7@vitheia.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <eb6af776-dc70-661d-51ce-1445c5cecce6@windriver.com>
Date: Tue, 13 Feb 2018 09:03:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <a30a7713-3a76-6a6e-9292-8f64569bf9f7@vitheia.com>
Subject: Re: kernel fragment not applied while other fragments are applied
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
X-List-Received-Date: Tue, 13 Feb 2018 14:03:58 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 02/13/2018 05:00 AM, Mircea Gliga wrote:
> Hi
> 
> Short story: I'm using rocko and have a recipe for Linux kernel 4.14.14 
> based on linux-yocto.inc, some kernel fragments end up in the resulting 
> .config, other don't, if regenerate fragments using menuconfig + 
> diffconfig seems ok.
> 
> Long story:
> In my recipe linux-stable_4.14.bb I have an inc file:
>      [...]
>      require linux-stable.inc
>      [...]
> 
> linux-stable.inc :
> 
>      inherit kernel
>      require recipes-kernel/linux/linux-yocto.inc
>      [...]
>      SRC_URI += "file://defconfig \
>                  file://kernel_fragments/netfilter.cfg \
>                  file://kernel_fragments/overlayfs.cfg \
>                  file://kernel_fragments/verity.cfg \
>                  file://kernel_fragments/squashfs.cfg \
>                  file://kernel_fragments/modem.cfg \
>                  file://kernel_fragments/led_oneshot.cfg \
>                  file://kernel_fragments/ipsec.cfg \
>                  file://kernel_fragments/netbridge.cfg \
>                  file://kernel_fragments/atmel_hw_sha.cfg \
> 
> 
> I have a set of kernel fragments. During `bitbake linux-stable -c 
> kernel_configme -f` some of them end up in the .config file while others 
> don't:
> led_oneshot.cfg and overlayfs.cfg are not applied in the resulting 
> .config while verity.cfg is applied.
> They are all generated using menuconfig to config the kernel, then 
> diffconfig to generate the fragment.
> 
> $ cat led_oneshot.cfg
> CONFIG_LEDS_TRIGGER_ONESHOT=y
> 
> $ cat verity.cfg
> CONFIG_MD=y
> # CONFIG_BLK_DEV_MD is not set
> # CONFIG_BCACHE is not set
> CONFIG_BLK_DEV_DM_BUILTIN=y
> CONFIG_BLK_DEV_DM=y
> # CONFIG_DM_MQ_DEFAULT is not set
> # CONFIG_DM_DEBUG is not set
> CONFIG_DM_BUFIO=y
> # CONFIG_DM_DEBUG_BLOCK_MANAGER_LOCKING is not set
> CONFIG_DM_CRYPT=y
> # CONFIG_DM_SNAPSHOT is not set
> # CONFIG_DM_THIN_PROVISIONING is not set
> # CONFIG_DM_CACHE is not set
> # CONFIG_DM_ERA is not set
> # CONFIG_DM_MIRROR is not set
> # CONFIG_DM_RAID is not set
> # CONFIG_DM_ZERO is not set
> # CONFIG_DM_MULTIPATH is not set
> # CONFIG_DM_DELAY is not set
> # CONFIG_DM_UEVENT is not set
> # CONFIG_DM_FLAKEY is not set
> CONFIG_DM_VERITY=y
> # CONFIG_DM_VERITY_FEC is not set
> # CONFIG_DM_SWITCH is not set
> # CONFIG_DM_LOG_WRITES is not set
> # CONFIG_DM_INTEGRITY is not set
> 
> $ cat overlayfs.cfg
> CONFIG_OVERLAY_FS=y
> # CONFIG_OVERLAY_FS_REDIRECT_DIR is not set
> # CONFIG_OVERLAY_FS_INDEX is not set
> 
> $
> 
> Now, if I go in menuconfig I can see that CONFIG_OVERLAY_FS is indeed 
> not enabled, I then enable it and generate a new fragment, 
> fragmentOverlay.cfg:
> $ cat fragmentOverlay.cfg
> CONFIG_OVERLAY_FS=y
> # CONFIG_OVERLAY_FS_REDIRECT_DIR is not set
> # CONFIG_OVERLAY_FS_INDEX is not set
> 
> $ md5sum *verlay*
> 14f88a8b2dcb256c38f6362161045831  fragmentOverlay.cfg
> 14f88a8b2dcb256c38f6362161045831  overlayfs.cfg
> 
> The new fragment is identical to the overlayfs.cfg (which is not applied).
> I let both files in the SCR_URI:
> 
> SRC_URI += "[...]
>                  file://kernel_fragments/overlayfs.cfg \
>                  file://kernel_fragments/fragmentOverlay.cfg \
>                  [...]"
> 
> And now after `bitbake linux-stable -c kernel_configme -f` the resulting 
> .config has the overlay_fs enabled:
> 
> $ cat .config | grep OVERLAY_FS
> CONFIG_OVERLAY_FS=y
> # CONFIG_OVERLAY_FS_REDIRECT_DIR is not set
> # CONFIG_OVERLAY_FS_INDEX is not set
> 
> $ cat .config |grep CONFIG_LEDS_TRIGGER_ONESHOT
> # CONFIG_LEDS_TRIGGER_ONESHOT is not set
> 
> 
> Same contents in the fragments, one is applied while the other is not ...

There's absolutely no conditional processing around fragments, they are
always applied to the kernel. When a symbol doesn't make it into the
final .config, it is due to dependencies or a further fragment disabling
something.

In the LEDS_TRIGGER_ONESHOT example, which one of your fragments
or base configs is turning on LEDS_TRIGGERS and LEDS_CLASS ? That's
as far as I looked into the dependency tree, but there could be
more.

When a SRC_URI contains a 'defconfig', it triggers a very specific
base setup of the kernel options since it assumes that it is a
full defconfig. This means that merge_config is called with -n, which
translates to "allnoconfig" as the base setup. Hence, if you are
counting on something being set to the default, that step will turn
it off if you are using a 'defconfig'.

You can still use the defconfig and have a different mode for that
baseline setup. Just set KCONFIG_MODE="alldefconfig" in your bbappend
and that will be used instead.

Note: the semantics of this will change slightly when I send an
upcoming series that shuffles things around, but it won't change the
flow that I'm describing above.

If that tweak doesn't help, can I get access to you config to run some
tests here ? I have some more patches that have improved audit steps
that should highlight the symbols and their dependencies, but I need
to test/clean them up more.

Cheers,

Bruce

> 
> Do you have any hints ?
> 
> Thanks and regards!
> 
> 
> 
> 
> 


