Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA572EB64DA
	for <webhook@archiver.kernel.org>; Thu, 15 Jun 2023 17:07:32 +0000 (UTC)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
 by mx.groups.io with SMTP id smtpd.web11.24299.1686848851969849668
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jun 2023 10:07:32 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=NWc0EKWI;
 spf=pass (domain: gmail.com, ip: 209.85.161.53, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-55afbc16183so1673258eaf.3
        for <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 10:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686848851; x=1689440851;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iPhOL3uVO7QWn7WrhdacEZxDFW4fqKzcFeRaHebXbo0=;
        b=NWc0EKWIYm5jE4hESzS2datUdjM2zHFD1Pjy122IiP7xDvWufNzSVX5TQ4UOx43icj
         tUx8nkdcls89o7q2ZHiU02h0+9YuYacontsbFt+bDSUPdq5dk8hT73lamE6qOsdzJSI4
         bhaId7WUCjuW9feXrFqSttEN0fiiGp4ZcO53KcbleiHDSK5DOkmTJAuRGkKTkSttZp5n
         7Q0SnGD5UWrurCEdNM2B6KtjzbJOcy8Befva4BXNM6mar2LAfA9Ym9AH1pgH302BqVXF
         pVUV2kzCHtv5yFhMgDcOLWf5/W4dPwbAkhlaxnmLPbWA+urmenEMgzMaSzHcKspX7ntI
         Beew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686848851; x=1689440851;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iPhOL3uVO7QWn7WrhdacEZxDFW4fqKzcFeRaHebXbo0=;
        b=N9G17HXM4ekgRW2KLOzx3VTPg+mdqiXZ4Fhoz1Ztmys0+rObdmPUppC74ZoSrsasmD
         L4oz9pqHIunLyX3GUk9v/FZ6rtAVGAJPsSJWzfPIJF7Ggm5TwwLvlZYzBQ8NL2wcNtc8
         8+v3ED0BNSL/hBlztY2zbVyiqRere+tV2QYEJL/FSf1Js2ME/yOANLusJ9d3kcyyaeZe
         twBceuS3fAsSjX9m1LeQNoHbvwAUF4DdenJUy7DWJ3kS8rrn8GAqnspk6YZ48muBWBRT
         8Q8pZRVV/VvIzCIi7eaz9w7kdIDW1p39zrRNI077zZzOAX+La2RIsESJ6GAVmJkkP14G
         UeXw==
X-Gm-Message-State: AC+VfDxNXryurEeEb2HB5jRwB6X1PzgiZykX0WlvGsCWsJyfChUVUZUh
	72MKep58sIISCkg2O/kNZt/8XGffKXugNZDsRHA=
X-Google-Smtp-Source: ACHHUZ4AIt9iSgAr5Af7zu4htwhvdYggg9ojCkGp6TJwavkJ88guZQmyTZIlXW6zRfOH5RRaVnhC2tM4nx7mkW3bhDs=
X-Received: by 2002:a05:6820:456:b0:55c:6812:27c5 with SMTP id
 p22-20020a056820045600b0055c681227c5mr6280262oou.9.1686848851028; Thu, 15 Jun
 2023 10:07:31 -0700 (PDT)
MIME-Version: 1.0
References: <mkpv.1686732587244371536.088u@lists.yoctoproject.org>
 <CAMKF1srg5P9TfOB=K+QHbqvmthTj3FC6eZymJ36GZmJtay5xMw@mail.gmail.com> <CACsETSt9Kg1CV3fS6z25cjX4-1v0=gFgLDmkoURPQr1ebz2_FQ@mail.gmail.com>
In-Reply-To: <CACsETSt9Kg1CV3fS6z25cjX4-1v0=gFgLDmkoURPQr1ebz2_FQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 15 Jun 2023 10:07:05 -0700
Message-ID: <CAMKF1spuxUJ2ePkEak2vafB8+ZQJyGpUxhfe_5m6vyvWSJcK4A@mail.gmail.com>
Subject: Re: [yocto] Error while testing "bitbake core-image-base -c testimage
 -v" #bitbake #dunfell
To: sateesh m <sateesh0457@gmail.com>
Cc: lavkhush2208@gmail.com, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 17:07:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60320

for real targets. You need to do some steps

add following to conf/local.conf

TEST_SERVER_IP =3D "<ip of build machine>"
MAGE_FEATURES:append =3D " debug-tweaks"
DISTRO_FEATURES:append =3D " ptest"
TEST_TARGET_IP =3D "<ip of target board>"
TEST_TARGET =3D "simpleremote"

2. Build image
3. flash this image on to target ( different boards may need different
instructions )
4. boot the target and ensure its connected to network and has IP address
5. run bitbake -ctestimage <image>

On Thu, Jun 15, 2023 at 9:42=E2=80=AFAM sateesh m <sateesh0457@gmail.com> w=
rote:
>
> We don't want to build qemu at all. We are building  for our custom targe=
t machine.
>
> Same commands we have executed we want to exclude qemu test running. Only=
 our target  testimage should pass .
>
>
> Regards,
> Sateesh
>
> On Thu, 15 Jun, 2023, 10:10 pm Khem Raj, <raj.khem@gmail.com> wrote:
>>
>> On Wed, Jun 14, 2023 at 1:49=E2=80=AFAM <lavkhush2208@gmail.com> wrote:
>> >
>> > Hi all,
>> >
>> > I was testing my core-image-base -c testimage with test-suit and getti=
ng error:-
>> >
>> > ERROR: core-image-base-1.0-r0 do_testimage: Output from runqemu:
>> > runqemu - WARNING - /home/kush/khu/sources/build/tmp-glibc/deploy/imag=
es/board/core-image-base-board.qemuboot.conf doesn't exist
>>
>> You do not have image built. So first build the image then run tests.
>>
>> bitbake core-image-base
>> bitbake core-image-base  -ctestimage
>>
>> Or you can add TESTIMAGE_AUTO:qemuall =3D "1" to local.conf  which will =
run
>> the tests automatically when doing bitbake core-image-base for any
>> qemu based machine target and second step is not needed.
>>
>> > ls: cannot access '/home/kush/khu/sources/build/tmp-glibc/deploy/image=
s/board/*.qemuboot.conf': No such file or directory
>> > runqemu - ERROR - Command 'ls -t /home/kush/khu/sources/build/tmp-glib=
c/deploy/images/board/*.qemuboot.conf' returned non-zero exit status 2.
>> > runqemu - INFO - Cleaning up
>> >
>> >
>> > WARNING: core-image-base-1.0-r0 do_testimage: Qemu ended unexpectedly,=
 dump data from host is in /home/integration-team/kush/khu/sources/build/tm=
p-glibc/log/runtime-hostdump/202306141146_qemu
>> > ERROR: core-image-base-1.0-r0 do_testimage: Error executing a python f=
unction in exec_python_func() autogenerated:
>> >
>> > The stack trace of python calls that resulted in this exception/failur=
e was:
>> > File: 'exec_python_func() autogenerated', lineno: 2, function: <module=
>
>> >      0001:
>> >  *** 0002:do_testimage(d)
>> >      0003:
>> > File: '/home/integration-team/kush/khu/sources/openembedded-core/meta/=
classes/testimage.bbclass', lineno: 129, function: do_testimage
>> >      0125:    netstat -an
>> >      0126:}
>> >      0127:
>> >      0128:python do_testimage() {
>> >  *** 0129:    testimage_main(d)
>> >      0130:}
>> >      0131:
>> >      0132:addtask testimage
>> >      0133:do_testimage[nostamp] =3D "1"
>> > File: '/home/integration-team/kush/khu/sources/openembedded-core/meta/=
classes/testimage.bbclass', lineno: 371, function: testimage_main
>> >      0367:    orig_sigterm_handler =3D signal.signal(signal.SIGTERM, s=
igterm_exception)
>> >      0368:    try:
>> >      0369:        # We need to check if runqemu ends unexpectedly
>> >      0370:        # or if the worker send us a SIGTERM
>> >  *** 0371:        tc.target.start(params=3Dd.getVar("TEST_QEMUPARAMS")=
, runqemuparams=3Dd.getVar("TEST_RUNQEMUPARAMS"))
>> >      0372:        import threading
>> >      0373:        try:
>> >      0374:            threading.Timer(int(d.getVar("TEST_OVERALL_TIMEO=
UT")), handle_test_timeout, (int(d.getVar("TEST_OVERALL_TIMEOUT")),)).start=
()
>> >      0375:        except ValueError:
>> > File: '/home/integration-team/kush/khu/sources/openembedded-core/meta/=
lib/oeqa/core/target/qemu.py', lineno: 67, function: start
>> >      0063:            if self.runner.server_ip:
>> >      0064:                self.server_ip =3D self.runner.server_ip
>> >      0065:        else:
>> >      0066:            self.stop()
>> >  *** 0067:            raise RuntimeError("FAILED to start qemu - check=
 the task log and the boot log")
>> >      0068:
>> >      0069:    def stop(self):
>> >      0070:        self.runner.stop()
>> > Exception: RuntimeError: FAILED to start qemu - check the task log and=
 the boot log
>> >
>> > ERROR: Logfile of failure stored in: /home/kush/khu/sources/build/tmp-=
glibc/work/board-oe-linux/core-image-base/1.0-r0/temp/log.do_testimage.1725=
5
>> > ERROR: Task (/home/kush/khu/sources/meta-exaleap/recipes-images/images=
/core-image-base.bb:do_testimage) failed with exit code '1'
>> >
>> > Can anyone help me in this, where i am doing wrong.
>> >
>> > T&R
>> > luvkhush
>> >
>> >
>> >
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#60318): https://lists.yoctoproject.org/g/yocto/messa=
ge/60318
>> Mute This Topic: https://lists.yoctoproject.org/mt/99523749/4526955
>> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
>> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [sateesh0457@g=
mail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>

