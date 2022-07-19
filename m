Return-Path: <nikitagupta2509@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECA27C43334
	for <webhook@archiver.kernel.org>; Tue, 19 Jul 2022 18:45:30 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web11.44483.1658256323651683013
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jul 2022 11:45:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HAzIlD5A;
 spf=pass (domain: gmail.com, ip: 209.85.208.54,
 mailfrom: nikitagupta2509@gmail.com)
Received: by mail-ed1-f54.google.com with SMTP id w12so20808555edd.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jul 2022 11:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=bZAJFeinY4CtmvJ6vAjWWgceOkAidFgntK6xvGoHVPw=;
        b=HAzIlD5ADCPOfSgwpN5CNPg6CtpgqAY0VUhNbDzXOzv2EY/xokAfwLI4xdT933gaI9
         vwKTkkmwsGMR46Oa9XQK8K+324+0G5dc7LF9dhAliTh1F6XebAQy/i2c4hlpx6Tp6BYh
         GwqzhJYHJDDuIyaOoiL9K8Y8vwL96Fg9lwvVFA7Aa845UhtR3ravnjcWv4jTGJMICsZI
         LYk6BphazmV/m0IhNrRjx5SMIXHRdPE7YiIWcQ4tyap+o2mWZCY5hG/9ez8nADBH7ZAF
         lg60cPRooRjnErulmVNK1MRxS8txT2z0Km4hirtJPl/gUk5Sotm3SHsl1pS/bjrg4wuA
         IBmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=bZAJFeinY4CtmvJ6vAjWWgceOkAidFgntK6xvGoHVPw=;
        b=Qcsz8w6kUgpwf5PnmQDOXDMl70tZ6CRje6cX6QK61jqIhGxoFsC0OBsoafie6C0rrS
         TwkmJW82gsbusOfLgIr3Pu79kjtyLZgvm68qAzwURdZM9CqClvydikoH/yhLS/aHVpQO
         NIn+kyAL7YmMI8najPIgomCD88vrWf/kli8ioXKTPLwp6XFp6Qt1CXc2k8w2ao1MIGi2
         eRZoAMQtLXJ9bW/xXoLQwCLDYONWUe031Rzor2J6K/VZMGvDKfamDfAe/vHavhoz/RVy
         zP2q0g6b6r68f8exMvwWj/TJW/936w/Cm1EeNgDq+UQ/I4V5/X44nHiEyW8tMw1R7SBQ
         wy6Q==
X-Gm-Message-State: AJIora9adInicXLo+gDmzwtL6QO5OmFtG1PDjRX6ZL2tiWeSELJBNQvs
	yDxaU1yv8DoVn8FnFEZtxgWTlax7PhQQks+2apJrACUJ
X-Google-Smtp-Source: 
 AGRyM1tEmNwRsdFXElDoPjwXMb+h4l392oA4eSgsamviQP9gNLHtj5yY3Vceh6sDluyaXmlkVKHBvnO2SQbFi+fEueA=
X-Received: by 2002:a05:6402:2549:b0:43a:dcf2:27f8 with SMTP id
 l9-20020a056402254900b0043adcf227f8mr45912631edb.143.1658256321825; Tue, 19
 Jul 2022 11:45:21 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANNYZj_BTahuKvgFJUNfcbgycBziShS1EMwSzPZQBYB_pJK99g@mail.gmail.com>
 <11765.1658255411754201332@lists.yoctoproject.org>
 <CANNYZj__1S650kqRrMGpb6AQmWVchPZ_h1ZvLwGvhPebJ2fb3Q@mail.gmail.com>
In-Reply-To: 
 <CANNYZj__1S650kqRrMGpb6AQmWVchPZ_h1ZvLwGvhPebJ2fb3Q@mail.gmail.com>
From: Nikita Gupta <nikitagupta2509@gmail.com>
Date: Wed, 20 Jul 2022 00:15:09 +0530
Message-ID: 
 <CAGQ3h17vUMB5O1oUzVOcLPg1Pct=ySJhDUXvjAuHcSLSQ=KdAg@mail.gmail.com>
Subject: Re: [yocto] Error while testing "core-image-minimal" through "bitbake
 core-image-minimal -c testimage -v" #linux #warning #toolchain #dunfell
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000002510805e42ce37d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Jul 2022 18:45:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57575

--00000000000002510805e42ce37d
Content-Type: text/plain; charset="UTF-8"

Hello Alexander

Yes I have tried that already but i am getting same error.
 If anyone could it would be great.

Thanks in advance

On Wed, Jul 20, 2022, 00:03 Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> You can try adding nographic option to runqemu if you do not need to
> see graphical output from your image.
>
> Alex
>
> On Tue, 19 Jul 2022 at 20:30, Nikita Gupta <nikitagupta2509@gmail.com>
> wrote:
> >
> > Hello Alexander,
> >
> > Thanks for your precious time .
> >
> > I applied you suggestion and it worked and i setup tap interface with
> following command:
> >
> > sudo /home/nikita/yoctoproject/poky/scripts/runqemu-gen-tapdevs 1000
> 1000 4 tmp/sysroots-components/x86_64/qemu-helper-native/usr/bin
> > but after that i am getting some warning like fail to start qemu and
> after that i am getting errors which is due to failure in starting qemu:
> >
> > WARNING: core-image-minimal-1.0-r0 do_testimage: Last 25 lines of text:
> > [    2.372775] Key type asymmetric registered
> > [    2.375200] Asymmetric key parser 'x509' registered
> > [    2.389021] Block layer SCSI generic (bsg) driver version 0.4 loaded
> (major 251)
> > [    2.389290] io scheduler mq-deadline registered
> > [    2.389459] io scheduler kyber registered
> > [    2.389570] input: Power Button as
> /devices/LNXSYSTM:00/LNXPWRBN:00/input/input0
> > [    2.405464] ACPI: Power Button [PWRF]
> > [    2.659671] PCI Interrupt Link [LNKC] enabled at IRQ 10
> > [    3.142802] PCI Interrupt Link [LNKA] enabled at IRQ 10
> > [    3.146178] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
> > [    3.187185] 00:05: ttyS0 at I/O 0x3f8 (irq = 4, base_baud = 115200)
> is a 16550A
> > [    3.229110] 00:06: ttyS1 at I/O 0x2f8 (irq = 3, base_baud = 115200)
> is a 16550A
> > [    3.250602] Linux agpgart interface v0.103
> > [    3.258767] crng init done
> > [    3.262616] bochs-drm 0000:00:02.0:
> remove_conflicting_pci_framebuffers: bar 0: 0xfd000000 -> 0xfdffffff
> > [    3.266483] bochs-drm 0000:00:02.0:
> remove_conflicting_pci_framebuffers: bar 2: 0xfebd0000 -> 0xfebd0fff
> > [    3.267730] bochs-drm 0000:00:02.0: vgaarb: deactivate vga console
> > [    3.270600] Console: switching to colour dummy device 80x25
> > [    3.274496] [drm] Found bochs VGA, ID 0xb0c0.
> > [    3.275895] [drm] Framebuffer size 16384 kB @ 0xfd000000, mmio @
> 0xfebd0000.
> > [    3.279874] [TTM] Zone  kernel: Available graphics memory: 116092 KiB
> > [    3.299694] [TTM] Initializing pool allocator
> > [    3.299943] [TTM] Initializing DMA pool allocator
> > [    3.300480] [drm] Found EDID data blob.
> > [    3.312971] [drm] Initialized bochs-drm 1.0.0 20130925 for
> 0000:00:02.0 on minor 0
> > WARNING: core-image-minimal-1.0-r0 do_testimage: Check full boot log:
> /home/nikita/yoctoproject/poky/build/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/testimage/qemu_boot_log.20220719154118
> > WARNING: core-image-minimal-1.0-r0 do_testimage: Qemu ended
> unexpectedly, dump data from host is in
> /home/nikita/yoctoproject/poky/build/tmp/log/runtime-hostdump/202207192111_qemu
> > WARNING: core-image-minimal-1.0-r0 do_testimage: qemu-system ended
> unexpectedly
> > Output from runqemu:
> > runqemu - ERROR - Failed to run qemu: X Error:  BadValue
> >   Request Major code 130 (MIT-SHM)
> >   Request Minor code 3 ()
> >   Value 0x3bc
> >   Error Serial #2663
> >   Current Serial #2664
> >
> > runqemu - INFO - Cleaning up
> >
> > ERROR: core-image-minimal-1.0-r0 do_testimage: Error executing a python
> function in exec_func_python() autogenerated:
> >
> > The stack trace of python calls that resulted in this exception/failure
> was:
> > File: 'exec_func_python() autogenerated', lineno: 2, function: <module>
> >      0001:
> >  *** 0002:do_testimage(d)
> >      0003:
> > File: '/home/nikita/yoctoproject/poky/meta/classes/testimage.bbclass',
> lineno: 129, function: do_testimage
> >      0125:    netstat -an
> >      0126:}
> >      0127:
> >      0128:python do_testimage() {
> >  *** 0129:    testimage_main(d)
> >      0130:}
> >      0131:
> >      0132:addtask testimage
> >      0133:do_testimage[nostamp] = "1"
> > File: '/home/nikita/yoctoproject/poky/meta/classes/testimage.bbclass',
> lineno: 374, function: testimage_main
> >      0370:    orig_sigterm_handler = signal.signal(signal.SIGTERM,
> sigterm_exception)
> >      0371:    try:
> >      0372:        # We need to check if runqemu ends unexpectedly
> >      0373:        # or if the worker send us a SIGTERM
> >  *** 0374:        tc.target.start(params=d.getVar("TEST_QEMUPARAMS"),
> runqemuparams=d.getVar("TEST_RUNQEMUPARAMS"))
> >      0375:        import threading
> >      0376:        try:
> >      0377:
> threading.Timer(int(d.getVar("TEST_OVERALL_TIMEOUT")), handle_test_timeout,
> (int(d.getVar("TEST_OVERALL_TIMEOUT")),)).start()
> >      0378:        except ValueError:
> > File:
> '/home/nikita/yoctoproject/poky/meta/lib/oeqa/core/target/qemu.py', lineno:
> 67, function: start
> >      0063:            if self.runner.server_ip:
> >      0064:                self.server_ip = self.runner.server_ip
> >      0065:        else:
> >      0066:            self.stop()
> >  *** 0067:            raise RuntimeError("FAILED to start qemu - check
> the task log and the boot log")
> >      0068:
> >      0069:    def stop(self):
> >      0070:        self.runner.stop()
> > Exception: RuntimeError: FAILED to start qemu - check the task log and
> the boot log
> >
> > ERROR: Logfile of failure stored in:
> /home/nikita/yoctoproject/poky/build/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/temp/log.do_testimage.7780
> > ERROR: Task
> (/home/nikita/yoctoproject/poky/meta/recipes-core/images/core-image-minimal.bb:do_testimage)
> failed with exit code '1'
> >
> >
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#57573):
> https://lists.yoctoproject.org/g/yocto/message/57573
> > Mute This Topic: https://lists.yoctoproject.org/mt/92435401/1686489
> > Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
> > Mute #warning:https://lists.yoctoproject.org/g/yocto/mutehashtag/warning
> > Mute #toolchain:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/toolchain
> > Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> > Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>

--00000000000002510805e42ce37d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"font-size:12.8px">Hello=C2=A0Alexander</sp=
an><div dir=3D"auto" style=3D"font-size:12.8px"><br></div><div dir=3D"auto"=
 style=3D"font-size:12.8px">Yes I have tried that already but i am getting =
same=C2=A0error.</div><div dir=3D"auto" style=3D"font-size:12.8px">=C2=A0If=
 anyone could it would=C2=A0be great.=C2=A0</div><div dir=3D"auto" style=3D=
"font-size:12.8px"><br></div><div dir=3D"auto" style=3D"font-size:12.8px">T=
hanks in=C2=A0advance</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Jul 20, 2022, 00:03 Alexander Kanavin &l=
t;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">You can try adding nographic=
 option to runqemu if you do not need to<br>
see graphical output from your image.<br>
<br>
Alex<br>
<br>
On Tue, 19 Jul 2022 at 20:30, Nikita Gupta &lt;<a href=3D"mailto:nikitagupt=
a2509@gmail.com" target=3D"_blank" rel=3D"noreferrer">nikitagupta2509@gmail=
.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello Alexander,<br>
&gt;<br>
&gt; Thanks for your precious time .<br>
&gt;<br>
&gt; I applied you suggestion and it worked and i setup tap interface with =
following command:<br>
&gt;<br>
&gt; sudo /home/nikita/yoctoproject/poky/scripts/runqemu-gen-tapdevs 1000 1=
000 4 tmp/sysroots-components/x86_64/qemu-helper-native/usr/bin<br>
&gt; but after that i am getting some warning like fail to start qemu and a=
fter that i am getting errors which is due to failure in starting qemu:<br>
&gt;<br>
&gt; WARNING: core-image-minimal-1.0-r0 do_testimage: Last 25 lines of text=
:<br>
&gt; [=C2=A0 =C2=A0 2.372775] Key type asymmetric registered<br>
&gt; [=C2=A0 =C2=A0 2.375200] Asymmetric key parser &#39;x509&#39; register=
ed<br>
&gt; [=C2=A0 =C2=A0 2.389021] Block layer SCSI generic (bsg) driver version=
 0.4 loaded (major 251)<br>
&gt; [=C2=A0 =C2=A0 2.389290] io scheduler mq-deadline registered<br>
&gt; [=C2=A0 =C2=A0 2.389459] io scheduler kyber registered<br>
&gt; [=C2=A0 =C2=A0 2.389570] input: Power Button as /devices/LNXSYSTM:00/L=
NXPWRBN:00/input/input0<br>
&gt; [=C2=A0 =C2=A0 2.405464] ACPI: Power Button [PWRF]<br>
&gt; [=C2=A0 =C2=A0 2.659671] PCI Interrupt Link [LNKC] enabled at IRQ 10<b=
r>
&gt; [=C2=A0 =C2=A0 3.142802] PCI Interrupt Link [LNKA] enabled at IRQ 10<b=
r>
&gt; [=C2=A0 =C2=A0 3.146178] Serial: 8250/16550 driver, 4 ports, IRQ shari=
ng disabled<br>
&gt; [=C2=A0 =C2=A0 3.187185] 00:05: ttyS0 at I/O 0x3f8 (irq =3D 4, base_ba=
ud =3D 115200) is a 16550A<br>
&gt; [=C2=A0 =C2=A0 3.229110] 00:06: ttyS1 at I/O 0x2f8 (irq =3D 3, base_ba=
ud =3D 115200) is a 16550A<br>
&gt; [=C2=A0 =C2=A0 3.250602] Linux agpgart interface v0.103<br>
&gt; [=C2=A0 =C2=A0 3.258767] crng init done<br>
&gt; [=C2=A0 =C2=A0 3.262616] bochs-drm 0000:00:02.0: remove_conflicting_pc=
i_framebuffers: bar 0: 0xfd000000 -&gt; 0xfdffffff<br>
&gt; [=C2=A0 =C2=A0 3.266483] bochs-drm 0000:00:02.0: remove_conflicting_pc=
i_framebuffers: bar 2: 0xfebd0000 -&gt; 0xfebd0fff<br>
&gt; [=C2=A0 =C2=A0 3.267730] bochs-drm 0000:00:02.0: vgaarb: deactivate vg=
a console<br>
&gt; [=C2=A0 =C2=A0 3.270600] Console: switching to colour dummy device 80x=
25<br>
&gt; [=C2=A0 =C2=A0 3.274496] [drm] Found bochs VGA, ID 0xb0c0.<br>
&gt; [=C2=A0 =C2=A0 3.275895] [drm] Framebuffer size 16384 kB @ 0xfd000000,=
 mmio @ 0xfebd0000.<br>
&gt; [=C2=A0 =C2=A0 3.279874] [TTM] Zone=C2=A0 kernel: Available graphics m=
emory: 116092 KiB<br>
&gt; [=C2=A0 =C2=A0 3.299694] [TTM] Initializing pool allocator<br>
&gt; [=C2=A0 =C2=A0 3.299943] [TTM] Initializing DMA pool allocator<br>
&gt; [=C2=A0 =C2=A0 3.300480] [drm] Found EDID data blob.<br>
&gt; [=C2=A0 =C2=A0 3.312971] [drm] Initialized bochs-drm 1.0.0 20130925 fo=
r 0000:00:02.0 on minor 0<br>
&gt; WARNING: core-image-minimal-1.0-r0 do_testimage: Check full boot log: =
/home/nikita/yoctoproject/poky/build/tmp/work/qemux86_64-poky-linux/core-im=
age-minimal/1.0-r0/testimage/qemu_boot_log.20220719154118<br>
&gt; WARNING: core-image-minimal-1.0-r0 do_testimage: Qemu ended unexpected=
ly, dump data from host is in /home/nikita/yoctoproject/poky/build/tmp/log/=
runtime-hostdump/202207192111_qemu<br>
&gt; WARNING: core-image-minimal-1.0-r0 do_testimage: qemu-system ended une=
xpectedly<br>
&gt; Output from runqemu:<br>
&gt; runqemu - ERROR - Failed to run qemu: X Error:=C2=A0 BadValue<br>
&gt;=C2=A0 =C2=A0Request Major code 130 (MIT-SHM)<br>
&gt;=C2=A0 =C2=A0Request Minor code 3 ()<br>
&gt;=C2=A0 =C2=A0Value 0x3bc<br>
&gt;=C2=A0 =C2=A0Error Serial #2663<br>
&gt;=C2=A0 =C2=A0Current Serial #2664<br>
&gt;<br>
&gt; runqemu - INFO - Cleaning up<br>
&gt;<br>
&gt; ERROR: core-image-minimal-1.0-r0 do_testimage: Error executing a pytho=
n function in exec_func_python() autogenerated:<br>
&gt;<br>
&gt; The stack trace of python calls that resulted in this exception/failur=
e was:<br>
&gt; File: &#39;exec_func_python() autogenerated&#39;, lineno: 2, function:=
 &lt;module&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0001:<br>
&gt;=C2=A0 *** 0002:do_testimage(d)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0003:<br>
&gt; File: &#39;/home/nikita/yoctoproject/poky/meta/classes/testimage.bbcla=
ss&#39;, lineno: 129, function: do_testimage<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0125:=C2=A0 =C2=A0 netstat -an<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0126:}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0127:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0128:python do_testimage() {<br>
&gt;=C2=A0 *** 0129:=C2=A0 =C2=A0 testimage_main(d)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0130:}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0131:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0132:addtask testimage<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0133:do_testimage[nostamp] =3D &quot;1&quot;<br>
&gt; File: &#39;/home/nikita/yoctoproject/poky/meta/classes/testimage.bbcla=
ss&#39;, lineno: 374, function: testimage_main<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0370:=C2=A0 =C2=A0 orig_sigterm_handler =3D signal=
.signal(signal.SIGTERM, sigterm_exception)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0371:=C2=A0 =C2=A0 try:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0372:=C2=A0 =C2=A0 =C2=A0 =C2=A0 # We need to chec=
k if runqemu ends unexpectedly<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0373:=C2=A0 =C2=A0 =C2=A0 =C2=A0 # or if the worke=
r send us a SIGTERM<br>
&gt;=C2=A0 *** 0374:=C2=A0 =C2=A0 =C2=A0 =C2=A0 tc.target.start(params=3Dd.=
getVar(&quot;TEST_QEMUPARAMS&quot;), runqemuparams=3Dd.getVar(&quot;TEST_RU=
NQEMUPARAMS&quot;))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0375:=C2=A0 =C2=A0 =C2=A0 =C2=A0 import threading<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 0376:=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0377:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 thr=
eading.Timer(int(d.getVar(&quot;TEST_OVERALL_TIMEOUT&quot;)), handle_test_t=
imeout, (int(d.getVar(&quot;TEST_OVERALL_TIMEOUT&quot;)),)).start()<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0378:=C2=A0 =C2=A0 =C2=A0 =C2=A0 except ValueError=
:<br>
&gt; File: &#39;/home/nikita/yoctoproject/poky/meta/lib/oeqa/core/target/qe=
mu.py&#39;, lineno: 67, function: start<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0063:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if =
self.runner.server_ip:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0064:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 self.server_ip =3D self.runner.server_ip<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0065:=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0066:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sel=
f.stop()<br>
&gt;=C2=A0 *** 0067:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 raise Runtime=
Error(&quot;FAILED to start qemu - check the task log and the boot log&quot=
;)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0068:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0069:=C2=A0 =C2=A0 def stop(self):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0070:=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.runner.stop(=
)<br>
&gt; Exception: RuntimeError: FAILED to start qemu - check the task log and=
 the boot log<br>
&gt;<br>
&gt; ERROR: Logfile of failure stored in: /home/nikita/yoctoproject/poky/bu=
ild/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/temp/log.do_te=
stimage.7780<br>
&gt; ERROR: Task (/home/nikita/yoctoproject/poky/meta/recipes-core/images/c=
ore-image-minimal.bb:do_testimage) failed with exit code &#39;1&#39;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#57573): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/57573" rel=3D"noreferrer noreferrer" target=3D"_blank">http=
s://lists.yoctoproject.org/g/yocto/message/57573</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/92435401=
/1686489" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoc=
toproject.org/mt/92435401/1686489</a><br>
&gt; Mute #linux:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehash=
tag/linux" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yo=
ctoproject.org/g/yocto/mutehashtag/linux</a><br>
&gt; Mute #warning:<a href=3D"https://lists.yoctoproject.org/g/yocto/muteha=
shtag/warning" rel=3D"noreferrer noreferrer" target=3D"_blank">https://list=
s.yoctoproject.org/g/yocto/mutehashtag/warning</a><br>
&gt; Mute #toolchain:<a href=3D"https://lists.yoctoproject.org/g/yocto/mute=
hashtag/toolchain" rel=3D"noreferrer noreferrer" target=3D"_blank">https://=
lists.yoctoproject.org/g/yocto/mutehashtag/toolchain</a><br>
&gt; Mute #bitbake:<a href=3D"https://lists.yoctoproject.org/g/yocto/muteha=
shtag/bitbake" rel=3D"noreferrer noreferrer" target=3D"_blank">https://list=
s.yoctoproject.org/g/yocto/mutehashtag/bitbake</a><br>
&gt; Mute #dunfell:<a href=3D"https://lists.yoctoproject.org/g/yocto/muteha=
shtag/dunfell" rel=3D"noreferrer noreferrer" target=3D"_blank">https://list=
s.yoctoproject.org/g/yocto/mutehashtag/dunfell</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><=
br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/g/yocto/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"=
_blank" rel=3D"noreferrer">alex.kanavin@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--00000000000002510805e42ce37d--

