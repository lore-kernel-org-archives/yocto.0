Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2824CC433EF
	for <webhook@archiver.kernel.org>; Tue, 16 Nov 2021 06:19:02 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com
 [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web10.6457.1637043541034595820
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Nov 2021 22:19:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hJaJOtjv;
 spf=pass (domain: gmail.com, ip: 209.85.219.171,
 mailfrom: marek.belisko@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id y3so54330774ybf.2
        for <yocto@lists.yoctoproject.org>;
 Mon, 15 Nov 2021 22:19:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=EemunlefXdBA1mtcDmjr37kQ9djH5eFKlr6wbeeRXGk=;
        b=hJaJOtjv8kr83N8ujdN42fOpZfOVlit4DAIM5yvLlAzzy/nkJrdUX2OezLSnbDTAqq
         nhjI4zkwvv2uG5wIUp9doakbJsUib/B3MQOjjvU9HODtWosED6idcJfH/xms7RVP2kS8
         BeCnCjKRQhLTK95Xozkdy96IVGKdmfNvL6QVcQ+bPtb9mM5wJTu2yM7StbmUSxbm/6XR
         GmAtwWmUgQYwZ4fUIIQqzfL1WXIFGO8dfOA2YinUacJ+6Y4h0I/4EW/liChbbTHMeuz9
         buUKHLfNiW8NO+/H01BrzbzH951gslBnSSJiAui7NVTegngM9Hpe8TtT7HC+LTH7Hivg
         Cs2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=EemunlefXdBA1mtcDmjr37kQ9djH5eFKlr6wbeeRXGk=;
        b=BhwPv8ducWAUb4t797EfhrAmT2TO0+H2Xr+zf6j/gi2mrU8X0Un1FG0w5iorXjgUFe
         nIje2MH0y81COjnMbA+mSWZPcVB6OXAdYe3DG1nVdnZwKeoTevJuDWMf69MPhedPUcDA
         Rrs3Vi1fBG0fFhRu+pABIEmAgCGA5hPjP0K6tnTASVyrTLG8YiN8bhLrTov0b24ORN4l
         9khUZmFRBlNfyFIfYgEo5UoNCeOoaZ6oHa4ApcD/tz/iMR3nT3i+JnNPUpLYCRiLIoc+
         5XaR2ZItfbZpzAicKQPcXXH9L6a0eHgrJveI0SANiczaRT6uiq5K990729DMI0vD8aMi
         093Q==
X-Gm-Message-State: AOAM533X+Ne3OY/Rx2Ls2b/Izcv+IvyNwRAOLvUBNdoG4tTDG7/W07E/
	kKQnhqJMMJ1DmgCSytwSzrfmrN0pbAWm9CLyKyAgTR9cwhfGgw==
X-Google-Smtp-Source: 
 ABdhPJzc5eCo9dynRChxgJks30NMc3Enh/pmuNik3hvpHahCe2qZfhaBEmY1yCZ0l696GzBLzTNrvSUFXs6UEo1Xo/g=
X-Received: by 2002:a05:6902:4d3:: with SMTP id
 v19mr5337116ybs.500.1637043539906;
 Mon, 15 Nov 2021 22:18:59 -0800 (PST)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 16 Nov 2021 07:18:45 +0100
Message-ID: 
 <CAAfyv34cq6D3Nf447mYR5XNyabQBSjx47g4SwZHpM-TMt-_SjQ@mail.gmail.com>
Subject: wic crash when building image with multiple partitions
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Nov 2021 06:19:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55337

Hello,

I'm on dunfell release and building mender image with following wks file:
| + echo '### Contents of wks file ###'
| ### Contents of wks file ###
| + cat /home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/mender-sdimg.wks
| part --source rawcopy
--sourceparams="file=/home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/uboot.env"
--ondisk "mmcblk0" --align 8192 --no-table
| part --source rootfs --rootfs-dir
/home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/bootfs.image_sdimg
--ondisk "mmcblk0" --fstype=vfat --label boot --align 8192
--fixed-size 16 --active
| part --source rawcopy
--sourceparams="file=/home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/deploy-core-image-minimal-image-complete/core-image-minimal-raspberrypi4.ext4"
--ondisk "mmcblk0" --align 8192 --fixed-size 172032k
| part --source rawcopy
--sourceparams="file=/home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/deploy-core-image-minimal-image-complete/core-image-minimal-raspberrypi4.ext4"
--ondisk "mmcblk0" --align 8192 --fixed-size 172032k
| part swap --ondisk "mmcblk0" --fstype=swap --label swap --align 8192
--size 512
| part --source rawcopy
--sourceparams="file=/home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/deploy-core-image-minimal-image-complete/core-image-minimal-raspberrypi4.dataimg"
--ondisk "mmcblk0" --align 8192 --fixed-size 128
|
| bootloader --ptable msdos
| + echo '### End of contents of wks file ###'
| ### End of contents of wks file ###

Without a swap partition image is built fine without any issue. When
swap partition is added to wks file I'm getting following error:

| INFO: Creating image(s)...
|
| Traceback (most recent call last):
|   File "/home/marek/projects/kas-test/poky/scripts/wic", line 542, in <module>
|     sys.exit(main(sys.argv[1:]))
|   File "/home/marek/projects/kas-test/poky/scripts/wic", line 537, in main
|     return hlp.invoke_subcommand(args, parser, hlp.wic_help_usage,
subcommands)
|   File "/home/marek/projects/kas-test/poky/scripts/lib/wic/help.py",
line 83, in invoke_subcommand
|     subcmd[0](args, usage)
|   File "/home/marek/projects/kas-test/poky/scripts/wic", line 219,
in wic_create_subcommand
|     engine.wic_create(wks_file, rootfs_dir, bootimg_dir, kernel_dir,
|   File "/home/marek/projects/kas-test/poky/scripts/lib/wic/engine.py",
line 190, in wic_create
|     plugin.do_create()
|   File "/home/marek/projects/kas-test/poky/scripts/lib/wic/plugins/imager/direct.py",
line 96, in do_create
|     self.create()
|   File "/home/marek/projects/kas-test/poky/scripts/lib/wic/plugins/imager/direct.py",
line 180, in create
|     self._image.prepare(self)
|   File "/home/marek/projects/kas-test/poky/scripts/lib/wic/plugins/imager/direct.py",
line 354, in prepare
|     part.prepare(imager, imager.workdir, imager.oe_builddir,
|   File "/home/marek/projects/kas-test/poky/scripts/lib/wic/partition.py",
line 182, in prepare
|     plugin.do_prepare_partition(self, srcparams_dict, creator,
|   File "/home/marek/projects/kas-test/poky/scripts/lib/wic/plugins/source/rootfs.py",
line 112, in do_prepare_partition
|     copyhardlinktree(orig_dir, new_rootfs)
|   File "/home/marek/projects/kas-test/poky/meta/lib/oe/path.py",
line 121, in copyhardlinktree
|     subprocess.check_output(cmd, shell=True, stderr=subprocess.STDOUT)
|   File "/home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/recipe-sysroot-native/usr/lib/python3.8/subprocess.py",
line 411, in check_output
|     return run(*popenargs, stdout=PIPE, timeout=timeout, check=True,
|   File "/home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/recipe-sysroot-native/usr/lib/python3.8/subprocess.py",
line 512, in run
|     raise CalledProcessError(retcode, process.args,
| subprocess.CalledProcessError: Command 'cd
/home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/bootfs.image_sdimg;
find . -type d -print | tar --xattrs --xattrs-include='*' -cf - -S -C
/home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/bootfs.image_sdimg
-p --no-recursion --files-from - | tar --xattrs --xattrs-include='*'
-xhf - -C /home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/deploy-core-image-minimal-image-complete/core-image-minimal-raspberrypi4-20211115212420-sdimg/tmp.wic.1oe9hwjw/rootfs2'
returned non-zero exit status 2.

I tried to debug it but didn't find anything obvious. I'm sure this
was working fine in previous releases. Any ideas?

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

