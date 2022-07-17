Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA26C433EF
	for <webhook@archiver.kernel.org>; Sun, 17 Jul 2022 09:21:04 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web09.14108.1658049657998382220
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Jul 2022 02:20:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WqlhStwA;
 spf=pass (domain: gmail.com, ip: 209.85.167.48,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id n18so14767272lfq.1
        for <yocto@lists.yoctoproject.org>;
 Sun, 17 Jul 2022 02:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7fjBFDFlrdVOMYu4KNziEXT4WRdKMkbBE0MUMBikKTQ=;
        b=WqlhStwASL6beIivwGL0AC91yEkVVSXSQcPFmKrkNMxLDCJgGHa9zxEDPkEkeQDxxU
         OV2Q+H34OVlyrI8AV8niYmV35LSePEfoqe4iLRhUd574VkMHld1qwRI3WAkwTVZWuY4H
         +0sO/QtDdPFPFwVSygeAO0WzXi47Ps+lTToxL1uuJi20p1QfrAvCfBIFMHZ2jM+qqexL
         N9KwBpfm0aIS4fSFLrJHPbEXMpQUjkJ/4+hPTVuxsSHZ86RYDccWWWIYK9iC1zWtTttw
         5MvwAv74hh2/QmsiGlcF7jT1CVTtocovEfhKagMqE5ZRlA7CcAh6uYMCIqDC5u9LBOec
         2goQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7fjBFDFlrdVOMYu4KNziEXT4WRdKMkbBE0MUMBikKTQ=;
        b=VUwqKOUBijcH9OCXyJ0mEzMPOCQVs4ZKLQ8KEWONduVQZ2B6NVzu3eKw1iL3R3kul7
         Ly6XD2ff/jARoKuZ84dgVQXmON93oHkO9vIFdeT6VuOsI51N86bpT2FHSNav6nIajYaO
         HUZQ6loNsR+fQ6gMNJExcoPl3aMH+oP5NEyUdA+V1z+VZCBWtOcVIQL0UPFPVDLBSznQ
         7/PrTZZkCUrPO+eII2O4RVNmSIYcun9plUYPEKZdDsKfD7SXmzXqVYQ71SDMZM85gaiA
         CnrQtmBX+bJSBuiDhkIxile7dEFukz5kXQmFt8fltwCOjNSGMa1yEXUQryG+zNy45bXD
         ccQA==
X-Gm-Message-State: AJIora9kXiapCA/6BOmWF/d7Pyv198pWynlLPKAAZqOZGJeKV0zhZkex
	urzD8jogNeo90h0oorm1zyG1N0kvqC/Wu88F8q8=
X-Google-Smtp-Source: 
 AGRyM1tKoDbJ47gljCbNBz6QY4C6iXUU982apVfwU2wKhUPlOLrnMuZXUoOyxss/hyr3QNpg+ynDw0K9wWiafGDhjpw=
X-Received: by 2002:a05:6512:3409:b0:489:c549:4693 with SMTP id
 i9-20020a056512340900b00489c5494693mr11782309lfr.26.1658049655894; Sun, 17
 Jul 2022 02:20:55 -0700 (PDT)
MIME-Version: 1.0
References: <sWf9.1658046280641285331.QPnI@lists.yoctoproject.org>
In-Reply-To: <sWf9.1658046280641285331.QPnI@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 17 Jul 2022 11:20:44 +0200
Message-ID: 
 <CANNYZj_BTahuKvgFJUNfcbgycBziShS1EMwSzPZQBYB_pJK99g@mail.gmail.com>
Subject: Re: [yocto] Error while testing "core-image-minimal" through "bitbake
 core-image-minimal -c testimage -v" #bitbake #dunfell #distro #yocto #qemu
 #linux #qemu #warning #toolchain
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Jul 2022 09:21:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57557

The key message is:

Command '('sudo',
'/home/nikita/yoctoproject/poky/scripts/runqemu-ifup', '1000', '1000',
'/home/nikita/yoctoproject/poky/build/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin')'
returned non-zero exit status 1.
Run runqemu-gen-tapdevs to manually create one.

So you need to run the first command to create a single tap interface
manually (and you need to know the root password). Or
runqemu-gen-tapdevs will generate several.

Alex

On Sun, 17 Jul 2022 at 10:24, Nikita Gupta <nikitagupta2509@gmail.com> wrote:
>
> Hello All,
> I was testing my core-image-minimal with test-suit and getting error like "need terminal to enter password and set-up tap interface" i am getting few error so i am not able to test my image .
> I have run following command in  order to test my image
>
> bitbake rpm busybox curl run-postinsts
> bitbake package-index
> bitbake core-image-minimal -c testimage -v
>
> I am getting following error after running last comand . I am also attaching log file here(see attached file )
>
> ERROR: runqemu exited with code 1
> ERROR: Output from runqemu:
> runqemu - INFO - Continuing with the following parameters:
> KERNEL: [/home/nikita/yoctoproject/poky/build/tmp/deploy/images/qemux86-64/bzImage--5.4.190+gitAUTOINC+6a12bea731_d9d6c6e0d0-r0-qemux86-64-20220501184705.bin]
> MACHINE: [qemux86-64]
> FSTYPE: [ext4]
> ROOTFS: [/home/nikita/yoctoproject/poky/build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64.ext4]
> CONFFILE: [/home/nikita/yoctoproject/poky/build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64.qemuboot.conf]
>
> runqemu - INFO - Setting up tap interface under sudo
> sudo: a terminal is required to read the password; either use the -S option to read from standard input or configure an askpass helper
> sudo: a password is required
> runqemu - ERROR - Setting up tap device failed:
> Command '('sudo', '/home/nikita/yoctoproject/poky/scripts/runqemu-ifup', '1000', '1000', '/home/nikita/yoctoproject/poky/build/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin')' returned non-zero exit status 1.
> Run runqemu-gen-tapdevs to manually create one.
> runqemu - INFO - Cleaning up
> [?7h
> DEBUG: Sending SIGTERM to runqemu
> Output from runqemu:
>
> WARNING: Qemu ended unexpectedly, dump data from host is in /home/nikita/yoctoproject/poky/build/tmp/log/runtime-hostdump/202207171341_qemu
> DEBUG: Sending SIGTERM to runqemu
> DEBUG: Sending SIGTERM to runqemu
> ERROR: Error executing a python function in exec_func_python() autogenerated:
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
> DEBUG: Python function do_testimage finished
>
> If anyone can help then please do your help will be appreciated . Thanks in advance
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57556): https://lists.yoctoproject.org/g/yocto/message/57556
> Mute This Topic: https://lists.yoctoproject.org/mt/92435401/1686489
> Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
> Mute #warning:https://lists.yoctoproject.org/g/yocto/mutehashtag/warning
> Mute #toolchain:https://lists.yoctoproject.org/g/yocto/mutehashtag/toolchain
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Mute #distro:https://lists.yoctoproject.org/g/yocto/mutehashtag/distro
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #qemu:https://lists.yoctoproject.org/g/yocto/mutehashtag/qemu
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

