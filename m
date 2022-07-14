Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FA5C433EF
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 23:07:41 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web11.400.1657840052754283265
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 16:07:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hwIxo9KK;
 spf=pass (domain: gmail.com, ip: 209.85.222.175,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id w1so2191383qkj.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 16:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8DUYd1FOIydqbBG7uqWx5z3Jg3auJvDyjW9GdVJd+1k=;
        b=hwIxo9KKxHzonXgm5IVU/Nn/KF7IRUyRzZmBrM1bpfMa9/wnaE6wJtpWfe8hr5kjgH
         +snvq8BAAOnRZbWvycOo9LIuXt1v9G43DxMvzXhpUVcc6a2USns/CzWiRkP5t8X7Jd53
         Ed9t0+CoD+yd4zU5m4BYfTKVyq1Wy/JOVUzBf9OISV4KOwyQ8CfzfiRhyg57WtO+83CE
         S+RSeNjpk2S5vfUI1yaAymfQHWiTodcn2kEf9zK4WwcKtjLiI7U8mEIJe23TA6Md9FhS
         hry0PYcqZTQ+tgiZOJkj0BHDPZiRl6a1/dJqmuSg0k6oR0/QjXU+M2/jJQVzw3qSlghF
         wqYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8DUYd1FOIydqbBG7uqWx5z3Jg3auJvDyjW9GdVJd+1k=;
        b=MyCriu79MiAMN7idK93tSBLj9je/Sm0kwmnVWcL/i9GJqNmn5k+2INlCwT5uaqMVIO
         o1iSunzVd1azhipmMYqtqDlV9HWAagxCc2NyXF5J74J2V8sTXbiB0LZss3d1WoWIjVFm
         d0asLzZ3ryu2OCVZuVqe8vYpKa57uh3GgB4LFpVnmOqhJd6MtCmndOgC7IKYbp0SR+pH
         wIVaF1mYsVAIgFT1zaviXz8VUqu/6vLXtOQzES0kjSLARodzelYPUEGYS7XU24UzekQr
         yL3NnsNPmiZ2DA6CJuEPBvCZaQVacAnT+1aymBeycNPaLPAoW8bb8QW/AA/jpDsP9K1/
         ME4w==
X-Gm-Message-State: AJIora8Do2QZCNenoi221viekhmcLVfa7VrGjpsHKn951ZPBmNAwQq6Z
	0R0smGNfPZovM7qw0wnteAUlg6ZhljtG5A==
X-Google-Smtp-Source: 
 AGRyM1snYSVClH5LvP6444mqqv5SQq+408yNDGZCRtAkjQhdqynVu8hldXo9eGWUdK7wKFeBoqF4iQ==
X-Received: by 2002:a37:946:0:b0:6b5:c58a:6ab1 with SMTP id
 67-20020a370946000000b006b5c58a6ab1mr2911839qkj.663.1657840051646;
        Thu, 14 Jul 2022 16:07:31 -0700 (PDT)
Received: from build.lan ([173.34.88.218])
        by smtp.gmail.com with ESMTPSA id
 u12-20020a05620a454c00b006a716fed4d6sm2400454qkp.50.2022.07.14.16.07.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 16:07:30 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 2/2] yocto-bsps: update to v5.10.130
Date: Thu, 14 Jul 2022 19:07:27 -0400
Message-Id: <20220714230727.46745-2-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20220714230727.46745-1-bruce.ashfield@gmail.com>
References: <20220714230727.46745-1-bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 23:07:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57550

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating linux-yocto/5.10 to the latest korg -stable release that comprises
the following commits:

    26ae9c361414 Linux 5.10.130
    8365b151fd50 dmaengine: ti: Add missing put_device in ti_dra7_xbar_route_allocate
    37147e22cd8d dmaengine: ti: Fix refcount leak in ti_dra7_xbar_route_allocate
    1be247db203e dmaengine: at_xdma: handle errors of at_xdmac_alloc_desc() correctly
    7b721f5aec92 dmaengine: pl330: Fix lockdep warning about non-static key
    e23cfb3fdcbb ida: don't use BUG_ON() for debugging
    37995f034ff2 dt-bindings: dma: allwinner,sun50i-a64-dma: Fix min/max typo
    ca4a91958466 misc: rtsx_usb: set return value in rsp_buf alloc err path
    ff79e0ca2bea misc: rtsx_usb: use separate command and response buffers
    af7d9d4abe84 misc: rtsx_usb: fix use of dma mapped buffer for usb bulk transfer
    86884017bb63 dmaengine: imx-sdma: Allow imx8m for imx7 FW revs
    9b329edd77ca i2c: cadence: Unregister the clk notifier in error path
    26938bd28c0c r8169: fix accessing unset transport header
    904f622ec78e selftests: forwarding: fix error message in learning_test
    9906c223400f selftests: forwarding: fix learning_test when h1 supports IFF_UNICAST_FLT
    859b889029fc selftests: forwarding: fix flood_unicast_test when h2 supports IFF_UNICAST_FLT
    23cdc57d88d1 ibmvnic: Properly dispose of all skbs during a failover.
    2b4659c145ba i40e: Fix dropped jumbo frames statistics
    5561bddd0599 xsk: Clear page contiguity bit when unmapping pool
    87d2bb888259 ARM: dts: at91: sama5d2_icp: fix eeprom compatibles
    9b7d8e28b686 ARM: dts: at91: sam9x60ek: fix eeprom compatible and size
    ade03e5ea778 ARM: at91: pm: use proper compatibles for sam9x60's rtc and rtt
    b40ac801cbb1 ARM: at91: pm: use proper compatible for sama5d2's rtc
    4c3e73a66a27 arm64: dts: qcom: msm8992-*: Fix vdd_lvs1_2-supply typo
    1d0c3ced2d1c pinctrl: sunxi: sunxi_pconf_set: use correct offset
    e1cda2a03d81 arm64: dts: imx8mp-evk: correct I2C3 pad settings
    2ade1b1d92f6 arm64: dts: imx8mp-evk: correct gpio-led pad settings
    17b3883ba55f arm64: dts: imx8mp-evk: correct the uart2 pinctl value
    43319ee6a075 arm64: dts: imx8mp-evk: correct mmc pad settings
    6bf74a1e748f arm64: dts: qcom: msm8994: Fix CPU6/7 reg values
    2c0d10ce002a pinctrl: sunxi: a83t: Fix NAND function name for some pins
    3d90607e7e6a ARM: meson: Fix refcount leak in meson_smp_prepare_cpus
    e14930e9f9c6 xfs: remove incorrect ASSERT in xfs_rename
    852952ea0e15 can: kvaser_usb: kvaser_usb_leaf: fix bittiming limits
    a741e762e199 can: kvaser_usb: kvaser_usb_leaf: fix CAN clock frequency regression
    f439d08ef1a2 can: kvaser_usb: replace run-time checks with struct kvaser_usb_driver_info
    79af7be44ccb powerpc/powernv: delay rng platform device creation until later in boot
    19104425c962 video: of_display_timing.h: include errno.h
    96fa24eb1a38 memregion: Fix memregion_free() fallback definition
    d6931bff1cc1 PM: runtime: Redefine pm_runtime_release_supplier()
    cecb806c766c fbcon: Prevent that screen size is smaller than font size
    b727561ddc93 fbcon: Disallow setting font bigger than screen size
    b81212828ad1 fbmem: Check virtual screen sizes in fb_set_var()
    d03e8ed72d7d fbdev: fbmem: Fix logo center image dx issue
    963c80f070ed iommu/vt-d: Fix PCI bus rescan device hot add
    0a5e36dbcb44 netfilter: nf_tables: stricter validation of element data
    4a6430b99f67 netfilter: nft_set_pipapo: release elements in clone from abort path
    4f59d12efe30 net: rose: fix UAF bug caused by rose_t0timer_expiry
    0085da9df3dc usbnet: fix memory leak in error case
    e917be1f83ea bpf: Fix insufficient bounds propagation from adjust_scalar_min_max_vals
    9adec7334969 bpf: Fix incorrect verifier simulation around jmp32's jeq/jne
    d0b8e2239988 can: gs_usb: gs_usb_open/close(): fix memory leak
    b6f4b347a1fb can: grcan: grcan_probe(): remove extra of_node_get()
    85cd41070df9 can: bcm: use call_rcu() instead of costly synchronize_rcu()
    b75d4bec85b8 ALSA: hda/realtek: Add quirk for Clevo L140PU
    6c32496964da mm/slub: add missing TID updates on slab deactivation
    7208d1236f72 Linux 5.10.129
    0e21ef18019c clocksource/drivers/ixp4xx: remove EXPORT_SYMBOL_GPL from ixp4xx_timer_setup()
    7055e3446244 net: usb: qmi_wwan: add Telit 0x1070 composition
    f1a53bb27f17 net: usb: qmi_wwan: add Telit 0x1060 composition
    43c8d33ce353 xen/arm: Fix race in RB-tree based P2M accounting
    547b7c640df5 xen-netfront: restore __skb_queue_tail() positioning in xennet_get_responses()
    cbbd2d253153 xen/blkfront: force data bouncing when backend is untrusted
    4923217af574 xen/netfront: force data bouncing when backend is untrusted
    728d68bfe68d xen/netfront: fix leaking data in shared pages
    cfea428030be xen/blkfront: fix leaking data in shared pages
    d341e5a75480 selftests/rseq: Change type of rseq_offset to ptrdiff_t
    7e617278bf3a selftests/rseq: x86-32: use %gs segment selector for accessing rseq thread area
    27f6361cb415 selftests/rseq: x86-64: use %fs segment selector for accessing rseq thread area
    a4312e2d8192 selftests/rseq: Fix: work-around asm goto compiler bugs
    7e1a0a9a4442 selftests/rseq: Remove arm/mips asm goto compiler work-around
    ba4d79af7101 selftests/rseq: Fix warnings about #if checks of undefined tokens
    35c6f5047ff3 selftests/rseq: Fix ppc32 offsets by using long rather than off_t
    dbc1f0ee6044 selftests/rseq: Fix ppc32 missing instruction selection "u" and "x" for load/store
    d4f631ea2dd6 selftests/rseq: Fix ppc32: wrong rseq_cs 32-bit field pointer on big endian
    e85fdae4df72 selftests/rseq: Uplift rseq selftests for compatibility with glibc-2.35
    c79e564535c0 selftests/rseq: Introduce thread pointer getters
    4a78bf83e226 selftests/rseq: Introduce rseq_get_abi() helper
    3c2a416c80cc selftests/rseq: Remove volatile from __rseq_abi
    68e1232c6e93 selftests/rseq: Remove useless assignment to cpu variable
    3e77ed4f9052 selftests/rseq: introduce own copy of rseq uapi header
    54cd556487d4 selftests/rseq: remove ARRAY_SIZE define from individual tests
    14894cf6925c hwmon: (ibmaem) don't call platform_device_del() if platform_device_add() fails
    f72d410dbf8d ipv6/sit: fix ipip6_tunnel_get_prl return value
    25055da22a0f sit: use min
    652fd40eb01c drivers: cpufreq: Add missing of_node_put() in qoriq-cpufreq.c
    79963021fd71 xen/gntdev: Avoid blocking in unmap_grant_pages()
    5f614f5f70bf tcp: add a missing nf_reset_ct() in 3WHS handling
    9203dfb3ed6b xfs: fix xfs_reflink_unshare usage of filemap_write_and_wait_range
    f874e16870cc xfs: update superblock counters correctly for !lazysbcount
    7ab7458d7af7 xfs: fix xfs_trans slab cache name
    f12968a5a4be xfs: ensure xfs_errortag_random_default matches XFS_ERRTAG_MAX
    da61388f9a75 xfs: Skip repetitive warnings about mount options
    6b7dab812cba xfs: rename variable mp to parsing_mp
    b261cd005ab9 xfs: use current->journal_info for detecting transaction recursion
    c36d41b65e57 net: tun: avoid disabling NAPI twice
    59c51c3b5451 tunnels: do not assume mac header is set in skb_tunnel_check_pmtu()
    c9fc52c1739e io_uring: ensure that send/sendmsg and recv/recvmsg check sqe->ioprio
    b8def021ac70 epic100: fix use after free on rmmod
    456bc338871c tipc: move bc link creation back to tipc_node_create
    09f994623530 NFC: nxp-nci: Don't issue a zero length i2c_master_read()
    7d363362e006 nfc: nfcmrvl: Fix irq_of_parse_and_map() return value
    63b2fe509f69 net: bonding: fix use-after-free after 802.3ad slave unbind
    7597ed348e62 net: bonding: fix possible NULL deref in rlb code
    ac12337229ea net/sched: act_api: Notify user space if any actions were flushed before error
    91d3bb82c43e netfilter: nft_dynset: restore set element counter when failing to update
    4b480a7940ff s390: remove unneeded 'select BUILD_BIN2C'
    e65027fdebba PM / devfreq: exynos-ppmu: Fix refcount leak in of_get_devfreq_events
    653bdcd833b7 caif_virtio: fix race between virtio_device_ready() and ndo_open()
    208ff7967534 NFSD: restore EINVAL error translation in nfsd_commit()
    db82bb605404 net: ipv6: unexport __init-annotated seg6_hmac_net_init()
    eb1757ca20b8 usbnet: fix memory allocation in helpers
    fae2a9fb1eaf linux/dim: Fix divide by 0 in RDMA DIM
    b0cab8b517ae RDMA/cm: Fix memory leak in ib_cm_insert_listen
    9de276dfb20c RDMA/qedr: Fix reporting QP timeout attribute
    a42bd00f0035 net: dp83822: disable rx error interrupt
    9c06d84855bd net: dp83822: disable false carrier interrupt
    c70ca16f72b2 net: tun: stop NAPI when detaching queues
    bec1be0a745a net: tun: unlink NAPI from device on destruction
    0b2499c8014f net: dsa: bcm_sf2: force pause link settings
    3f55912a1a98 selftests/net: pass ipv6_args to udpgso_bench's IPv6 TCP test
    f7b8fb458445 virtio-net: fix race between ndo_open() and virtio_device_ready()
    c0a28f2ddf9a net: usb: ax88179_178a: Fix packet receiving
    8f74cb27c2b4 net: rose: fix UAF bugs caused by timer handler
    6a0b9512a6aa SUNRPC: Fix READ_PLUS crasher
    ed03a650fb57 s390/archrandom: simplify back to earlier design and initialize earlier
    d8bca518d527 dm raid: fix KASAN warning in raid5_add_disks
    9bf2b0757b04 dm raid: fix accesses beyond end of raid member array
    213c550deb6b powerpc/bpf: Fix use of user_pt_regs in uapi
    68a34e478ad5 powerpc/book3e: Fix PUD allocation size in map_kernel_page()
    e188bbdb9229 powerpc/prom_init: Fix kernel config grep
    e6a7d30b650a nvdimm: Fix badblocks clear off-by-one error
    0b99c4a18936 nvme-pci: add NVME_QUIRK_BOGUS_NID for ADATA XPG SX6000LNP (AKA SPECTRIX S40G)
    e77804158b30 ipv6: take care of disable_policy when restoring routes
    03b9e016598f drm/amdgpu: To flush tlb for MMHUB of RAVEN series

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 93466b70ed..bec8319c34 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.10.128"
-LINUX_VERSION:genericx86-64 = "5.10.128"
-LINUX_VERSION:edgerouter = "5.10.128"
-LINUX_VERSION:beaglebone-yocto = "5.10.128"
+LINUX_VERSION:genericx86 = "5.10.130"
+LINUX_VERSION:genericx86-64 = "5.10.130"
+LINUX_VERSION:edgerouter = "5.10.130"
+LINUX_VERSION:beaglebone-yocto = "5.10.130"
-- 
2.19.1


