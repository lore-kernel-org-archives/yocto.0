Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51251C433EF
	for <webhook@archiver.kernel.org>; Mon, 22 Nov 2021 18:09:22 +0000 (UTC)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com
 [209.85.219.177])
 by mx.groups.io with SMTP id smtpd.web10.60.1637604561348249501
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Nov 2021 10:09:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gZFwPh2a;
 spf=pass (domain: gmail.com, ip: 209.85.219.177,
 mailfrom: marek.belisko@gmail.com)
Received: by mail-yb1-f177.google.com with SMTP id j2so15831785ybg.9
        for <yocto@lists.yoctoproject.org>;
 Mon, 22 Nov 2021 10:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=0Bue47Aj0zXRpUfyOmbOekglGIKEQqn9KNJMT8V2VhE=;
        b=gZFwPh2a0x2rh3Dti/2ndUPt/qW328W/dg0CkLOsrq+0mKKZ7qiSGAPs46iXEGoSxg
         VlnSGvl95N6f+YOfPOeBRY3rlqPL97demMZVLkBqfXcq0XtnFQqZd2Ci2kud5oHe78Ul
         xgKqVdkTHDVhKZKp6o3h+JhVXWL/M+rqGNNU8er3Lt+uUwFzSINRJW4LmcUCLOZzQaN4
         dg9yWJCsxCZUWVg/6iCKNVkzEcjSOKema0DBDSDkcg8gIQ2vsed2ZV2g1ivCC1aNi5hf
         4GvVGXLxFWtgamTSohDPTxy7Ew3oEyWKP4itua/ObK+aHdC+5zjibgPjFgR+Ien5o8qm
         mJEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=0Bue47Aj0zXRpUfyOmbOekglGIKEQqn9KNJMT8V2VhE=;
        b=5SRdz6rRNTkdmXe+6wgEY/SYSxqc2uk+0SARvNuNr7Ha86Zs+UkCTLnOGMuFi71Rog
         hHF+krZ2AerMcZ7ahdk8Jb4moQ5nXB0xfc7oRHA2+cJKEI9NDXTzuUC7A4bPsw78B0H+
         ogWkOpDEIzvJa847WpwKLpJ3VbzShVO/zNGzDp1/C5o3GgFo7SkI1dZVEz8JqX4KpH2S
         3EdvbLnkK/6Tukpb5/+d4NHKjbKrdHDpWTWo5HMSclwpFKvGfYOm1tMZWH0QaS+xXu+i
         wA5y/kcEUXmVmnQBDx22LrQtT4vO6RpgQ5t4N321aMtSDXDBqgJup+/0HKjYpjYXMuSv
         AIjQ==
X-Gm-Message-State: AOAM532+H0ADGvgLTqx1eiJC/GIZ2abGD5iHcpPvAQecTAOMVtz/zoNg
	CSMyFK98brcXDwciavNREOSmAPQJnAm07SdNnslntu6kYU7FOg==
X-Google-Smtp-Source: 
 ABdhPJzfJPuBVwScdN3DyJuM57J0hBKzR6tPGK4igd7qXTGlSUmWV5GKYIWVxY3po5WSrall+raIQnj6he/ni7DZZtg=
X-Received: by 2002:a25:82:: with SMTP id 124mr16325416yba.490.1637604560089;
 Mon, 22 Nov 2021 10:09:20 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAAfyv34cq6D3Nf447mYR5XNyabQBSjx47g4SwZHpM-TMt-_SjQ@mail.gmail.com>
In-Reply-To: 
 <CAAfyv34cq6D3Nf447mYR5XNyabQBSjx47g4SwZHpM-TMt-_SjQ@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 22 Nov 2021 19:09:09 +0100
Message-ID: 
 <CAAfyv36Pkxdem7Yt_v=3b+9H+W1U1pDMLFixUW+qJRwzeV=Eww@mail.gmail.com>
Subject: Re: wic crash when building image with multiple partitions
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Nov 2021 18:09:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55384

Actually I found a fix after some debugging. I'm not wic expert but
below patch fix issue for wks content above:

diff --git a/scripts/lib/wic/plugins/imager/direct.py
b/scripts/lib/wic/plugins/imager/direct.py
index 7e1c1c0..d37ecee 100644
--- a/scripts/lib/wic/plugins/imager/direct.py
+++ b/scripts/lib/wic/plugins/imager/direct.py
@@ -115,7 +115,7 @@ class DirectPlugin(ImagerPlugin):
         updated = False
         for part in self.parts:
             if not part.realnum or not part.mountpoint \
-               or part.mountpoint == "/":
+               or part.mountpoint == "/" or part.mountpoint == "swap":
                 continue
             if part.use_uuid:

Does it make any sense or is it just hack?

On Tue, Nov 16, 2021 at 7:18 AM Belisko Marek <marek.belisko@gmail.com> wrote:
>
> Hello,
>
> I'm on dunfell release and building mender image with following wks file:
> | + echo '### Contents of wks file ###'
> | ### Contents of wks file ###
> | + cat /home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/mender-sdimg.wks
> | part --source rawcopy
> --sourceparams="file=/home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/uboot.env"
> --ondisk "mmcblk0" --align 8192 --no-table
> | part --source rootfs --rootfs-dir
> /home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/bootfs.image_sdimg
> --ondisk "mmcblk0" --fstype=vfat --label boot --align 8192
> --fixed-size 16 --active
> | part --source rawcopy
> --sourceparams="file=/home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/deploy-core-image-minimal-image-complete/core-image-minimal-raspberrypi4.ext4"
> --ondisk "mmcblk0" --align 8192 --fixed-size 172032k
> | part --source rawcopy
> --sourceparams="file=/home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/deploy-core-image-minimal-image-complete/core-image-minimal-raspberrypi4.ext4"
> --ondisk "mmcblk0" --align 8192 --fixed-size 172032k
> | part swap --ondisk "mmcblk0" --fstype=swap --label swap --align 8192
> --size 512
> | part --source rawcopy
> --sourceparams="file=/home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/deploy-core-image-minimal-image-complete/core-image-minimal-raspberrypi4.dataimg"
> --ondisk "mmcblk0" --align 8192 --fixed-size 128
> |
> | bootloader --ptable msdos
> | + echo '### End of contents of wks file ###'
> | ### End of contents of wks file ###
>
> Without a swap partition image is built fine without any issue. When
> swap partition is added to wks file I'm getting following error:
>
> | INFO: Creating image(s)...
> |
> | Traceback (most recent call last):
> |   File "/home/marek/projects/kas-test/poky/scripts/wic", line 542, in <module>
> |     sys.exit(main(sys.argv[1:]))
> |   File "/home/marek/projects/kas-test/poky/scripts/wic", line 537, in main
> |     return hlp.invoke_subcommand(args, parser, hlp.wic_help_usage,
> subcommands)
> |   File "/home/marek/projects/kas-test/poky/scripts/lib/wic/help.py",
> line 83, in invoke_subcommand
> |     subcmd[0](args, usage)
> |   File "/home/marek/projects/kas-test/poky/scripts/wic", line 219,
> in wic_create_subcommand
> |     engine.wic_create(wks_file, rootfs_dir, bootimg_dir, kernel_dir,
> |   File "/home/marek/projects/kas-test/poky/scripts/lib/wic/engine.py",
> line 190, in wic_create
> |     plugin.do_create()
> |   File "/home/marek/projects/kas-test/poky/scripts/lib/wic/plugins/imager/direct.py",
> line 96, in do_create
> |     self.create()
> |   File "/home/marek/projects/kas-test/poky/scripts/lib/wic/plugins/imager/direct.py",
> line 180, in create
> |     self._image.prepare(self)
> |   File "/home/marek/projects/kas-test/poky/scripts/lib/wic/plugins/imager/direct.py",
> line 354, in prepare
> |     part.prepare(imager, imager.workdir, imager.oe_builddir,
> |   File "/home/marek/projects/kas-test/poky/scripts/lib/wic/partition.py",
> line 182, in prepare
> |     plugin.do_prepare_partition(self, srcparams_dict, creator,
> |   File "/home/marek/projects/kas-test/poky/scripts/lib/wic/plugins/source/rootfs.py",
> line 112, in do_prepare_partition
> |     copyhardlinktree(orig_dir, new_rootfs)
> |   File "/home/marek/projects/kas-test/poky/meta/lib/oe/path.py",
> line 121, in copyhardlinktree
> |     subprocess.check_output(cmd, shell=True, stderr=subprocess.STDOUT)
> |   File "/home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/recipe-sysroot-native/usr/lib/python3.8/subprocess.py",
> line 411, in check_output
> |     return run(*popenargs, stdout=PIPE, timeout=timeout, check=True,
> |   File "/home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/recipe-sysroot-native/usr/lib/python3.8/subprocess.py",
> line 512, in run
> |     raise CalledProcessError(retcode, process.args,
> | subprocess.CalledProcessError: Command 'cd
> /home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/bootfs.image_sdimg;
> find . -type d -print | tar --xattrs --xattrs-include='*' -cf - -S -C
> /home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/bootfs.image_sdimg
> -p --no-recursion --files-from - | tar --xattrs --xattrs-include='*'
> -xhf - -C /home/marek/projects/kas-test/build/tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/deploy-core-image-minimal-image-complete/core-image-minimal-raspberrypi4-20211115212420-sdimg/tmp.wic.1oe9hwjw/rootfs2'
> returned non-zero exit status 2.
>
> I tried to debug it but didn't find anything obvious. I'm sure this
> was working fine in previous releases. Any ideas?
>
> Thanks and BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com

marek

