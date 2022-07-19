Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D99B5C433EF
	for <webhook@archiver.kernel.org>; Tue, 19 Jul 2022 18:33:30 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web12.44389.1658255602665122912
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jul 2022 11:33:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KEbRM/8R;
 spf=pass (domain: gmail.com, ip: 209.85.208.179,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id x10so17954562ljj.11
        for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jul 2022 11:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ohj6LdHBIfyfERYGVS8qBF36WUkcSfyZXIvRDa8lVf0=;
        b=KEbRM/8RZw5fnwt7uadSgJYd3oM7jRLR7XiZdjUljnmVTSm0OEHahqFXBcUEd6cGBl
         5c8JFZpX4yUxluvR7khhpj7CGcVb+MUIz3QwDAVqYqk7NGxz1Jhsgab/KHBIxF3Rhfsk
         JH7ZCdygO0vRhG+7Pf9ixqgVNZlUbT5GyAl1fL0onzXpDyQNkGhrQb/4Xhby2SgbKNnM
         bqr6jmglIDEWwTpjjEDZgwmlilfCTH5vkz+rP19NhRCJ7AQcVXM0xdsIlnJa87Gtc82k
         aFkColJA6qeHR2D1kbSXS16lIp1yvp67GqIomL2qs+amNCkpyx83lTHZgXs6LrEtjPe1
         QghQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ohj6LdHBIfyfERYGVS8qBF36WUkcSfyZXIvRDa8lVf0=;
        b=rubPA6IdphxomB9qYXvyo7cif8Vtkmc7TU+CNb5ruRy/IeWzxfYEXajJJpL03MEw5U
         NApZ/L4IDGpZiW6hJiFt3VZ88Bevvh1hMAhuPYMGyipVo/trMXvzWm8/JGuZ7xU6C4ez
         rKmabMGVKK83ozciELpYSxv0cPp6HEDFqFg1OtEAbBzEE5nCAqICwF/3lyfM0tufX7Jh
         Vi7P3dp8yBFNb6K2GpBc5UVjvfGbfKiSJjWf/fQ0ARlkBb8ZD6e/jL2WtLe3YouE699M
         NpgzQVgQ7qEvYFsLtPs0ft5AImfpDTQVUh80FC+CAQCTz61ije9JajSmSx6sPieeFJSv
         J5tg==
X-Gm-Message-State: AJIora8xrg2EvgEeu44j/cOzIpp0DnlTYMG4GANpUso8N0zhU1YnywcP
	vvCA+NCoqEcZiAHHbWE2A9hnh8gnT82crb81d5o=
X-Google-Smtp-Source: 
 AGRyM1tMKLZszYoj7q46kEg3hk1WFuJQ4/qQnIv7lZ6zwGe2ayar2A7sIuOTQ1HNxzq2GT+OyotNfjBfDYvTyjI5THA=
X-Received: by 2002:a2e:b7d5:0:b0:25d:5320:ebad with SMTP id
 p21-20020a2eb7d5000000b0025d5320ebadmr15374740ljo.56.1658255600569; Tue, 19
 Jul 2022 11:33:20 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANNYZj_BTahuKvgFJUNfcbgycBziShS1EMwSzPZQBYB_pJK99g@mail.gmail.com>
 <11765.1658255411754201332@lists.yoctoproject.org>
In-Reply-To: <11765.1658255411754201332@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 19 Jul 2022 20:33:09 +0200
Message-ID: 
 <CANNYZj__1S650kqRrMGpb6AQmWVchPZ_h1ZvLwGvhPebJ2fb3Q@mail.gmail.com>
Subject: Re: [yocto] Error while testing "core-image-minimal" through "bitbake
 core-image-minimal -c testimage -v" #linux #warning #toolchain #dunfell
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Jul 2022 18:33:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57574

You can try adding nographic option to runqemu if you do not need to
see graphical output from your image.

Alex

On Tue, 19 Jul 2022 at 20:30, Nikita Gupta <nikitagupta2509@gmail.com> wrote:
>
> Hello Alexander,
>
> Thanks for your precious time .
>
> I applied you suggestion and it worked and i setup tap interface with following command:
>
> sudo /home/nikita/yoctoproject/poky/scripts/runqemu-gen-tapdevs 1000 1000 4 tmp/sysroots-components/x86_64/qemu-helper-native/usr/bin
> but after that i am getting some warning like fail to start qemu and after that i am getting errors which is due to failure in starting qemu:
>
> WARNING: core-image-minimal-1.0-r0 do_testimage: Last 25 lines of text:
> [    2.372775] Key type asymmetric registered
> [    2.375200] Asymmetric key parser 'x509' registered
> [    2.389021] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 251)
> [    2.389290] io scheduler mq-deadline registered
> [    2.389459] io scheduler kyber registered
> [    2.389570] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input0
> [    2.405464] ACPI: Power Button [PWRF]
> [    2.659671] PCI Interrupt Link [LNKC] enabled at IRQ 10
> [    3.142802] PCI Interrupt Link [LNKA] enabled at IRQ 10
> [    3.146178] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
> [    3.187185] 00:05: ttyS0 at I/O 0x3f8 (irq = 4, base_baud = 115200) is a 16550A
> [    3.229110] 00:06: ttyS1 at I/O 0x2f8 (irq = 3, base_baud = 115200) is a 16550A
> [    3.250602] Linux agpgart interface v0.103
> [    3.258767] crng init done
> [    3.262616] bochs-drm 0000:00:02.0: remove_conflicting_pci_framebuffers: bar 0: 0xfd000000 -> 0xfdffffff
> [    3.266483] bochs-drm 0000:00:02.0: remove_conflicting_pci_framebuffers: bar 2: 0xfebd0000 -> 0xfebd0fff
> [    3.267730] bochs-drm 0000:00:02.0: vgaarb: deactivate vga console
> [    3.270600] Console: switching to colour dummy device 80x25
> [    3.274496] [drm] Found bochs VGA, ID 0xb0c0.
> [    3.275895] [drm] Framebuffer size 16384 kB @ 0xfd000000, mmio @ 0xfebd0000.
> [    3.279874] [TTM] Zone  kernel: Available graphics memory: 116092 KiB
> [    3.299694] [TTM] Initializing pool allocator
> [    3.299943] [TTM] Initializing DMA pool allocator
> [    3.300480] [drm] Found EDID data blob.
> [    3.312971] [drm] Initialized bochs-drm 1.0.0 20130925 for 0000:00:02.0 on minor 0
> WARNING: core-image-minimal-1.0-r0 do_testimage: Check full boot log: /home/nikita/yoctoproject/poky/build/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/testimage/qemu_boot_log.20220719154118
> WARNING: core-image-minimal-1.0-r0 do_testimage: Qemu ended unexpectedly, dump data from host is in /home/nikita/yoctoproject/poky/build/tmp/log/runtime-hostdump/202207192111_qemu
> WARNING: core-image-minimal-1.0-r0 do_testimage: qemu-system ended unexpectedly
> Output from runqemu:
> runqemu - ERROR - Failed to run qemu: X Error:  BadValue
>   Request Major code 130 (MIT-SHM)
>   Request Minor code 3 ()
>   Value 0x3bc
>   Error Serial #2663
>   Current Serial #2664
>
> runqemu - INFO - Cleaning up
>
> ERROR: core-image-minimal-1.0-r0 do_testimage: Error executing a python function in exec_func_python() autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure was:
> File: 'exec_func_python() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:do_testimage(d)
>      0003:
> File: '/home/nikita/yoctoproject/poky/meta/classes/testimage.bbclass', lineno: 129, function: do_testimage
>      0125:    netstat -an
>      0126:}
>      0127:
>      0128:python do_testimage() {
>  *** 0129:    testimage_main(d)
>      0130:}
>      0131:
>      0132:addtask testimage
>      0133:do_testimage[nostamp] = "1"
> File: '/home/nikita/yoctoproject/poky/meta/classes/testimage.bbclass', lineno: 374, function: testimage_main
>      0370:    orig_sigterm_handler = signal.signal(signal.SIGTERM, sigterm_exception)
>      0371:    try:
>      0372:        # We need to check if runqemu ends unexpectedly
>      0373:        # or if the worker send us a SIGTERM
>  *** 0374:        tc.target.start(params=d.getVar("TEST_QEMUPARAMS"), runqemuparams=d.getVar("TEST_RUNQEMUPARAMS"))
>      0375:        import threading
>      0376:        try:
>      0377:            threading.Timer(int(d.getVar("TEST_OVERALL_TIMEOUT")), handle_test_timeout, (int(d.getVar("TEST_OVERALL_TIMEOUT")),)).start()
>      0378:        except ValueError:
> File: '/home/nikita/yoctoproject/poky/meta/lib/oeqa/core/target/qemu.py', lineno: 67, function: start
>      0063:            if self.runner.server_ip:
>      0064:                self.server_ip = self.runner.server_ip
>      0065:        else:
>      0066:            self.stop()
>  *** 0067:            raise RuntimeError("FAILED to start qemu - check the task log and the boot log")
>      0068:
>      0069:    def stop(self):
>      0070:        self.runner.stop()
> Exception: RuntimeError: FAILED to start qemu - check the task log and the boot log
>
> ERROR: Logfile of failure stored in: /home/nikita/yoctoproject/poky/build/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/temp/log.do_testimage.7780
> ERROR: Task (/home/nikita/yoctoproject/poky/meta/recipes-core/images/core-image-minimal.bb:do_testimage) failed with exit code '1'
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57573): https://lists.yoctoproject.org/g/yocto/message/57573
> Mute This Topic: https://lists.yoctoproject.org/mt/92435401/1686489
> Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
> Mute #warning:https://lists.yoctoproject.org/g/yocto/mutehashtag/warning
> Mute #toolchain:https://lists.yoctoproject.org/g/yocto/mutehashtag/toolchain
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

