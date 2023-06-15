Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E8CFEB64D9
	for <webhook@archiver.kernel.org>; Thu, 15 Jun 2023 16:40:02 +0000 (UTC)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
 by mx.groups.io with SMTP id smtpd.web11.23632.1686847200807697246
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jun 2023 09:40:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=ASshBRjj;
 spf=pass (domain: gmail.com, ip: 209.85.160.41, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-1a6a2cb4659so697690fac.1
        for <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 09:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686847200; x=1689439200;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zX57rDkf8DG5wEyscy8ztMO6lm9zGrsCMJUfutskZpc=;
        b=ASshBRjjgVjKEkSEb7lRW6Q3nMavtXBO3lvTNC+jNzwCnmrOUF6vTI+wHEPJdeCoV7
         4HDTrYyi+QmT6BBnrP+r14xwRaG7/j7b5rHJJKGmA8cTgTtp3S8QXeSaQAtvImlQqOgB
         /cq0MuAykScBCIl9V6ohBvJ4Ly4dAdp6GaqRfltk67NMbHkvtkJvMVF9cw+vgtrdpbfQ
         JQWTvsPbOONmd5iqPJpma/dwDC8o5cXxmw/Ri6fYDGH2KwGpPmjGvkVpf7qHcJFu52P3
         fWqXvDStgouxNrCeoQZ0tdOOnp4086u/n/D5CbAQXfravQOT2wsgGv/Pt0cpcEIuMRTT
         5wsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686847200; x=1689439200;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zX57rDkf8DG5wEyscy8ztMO6lm9zGrsCMJUfutskZpc=;
        b=e1TevAdHH/FGoXmY8ItxxV2w5Bj+1aafH6MfYvdYa19ribNEdNa6mbrkee5/WBIeBY
         55T96W/1JM9AzHaGMFAaF1Aigr0P3fIJYp2f2/2EUNMM2uZHYAVgSHjzacYaE1iijUs5
         XQESrPHRSYayOQak3o13NPLZ1NjIa8bIAtMTEIcCsrpY/iY8ASk0TaEaeXcaqJTuF9IH
         mRIhg6c1Qjv8rX2sI19y7jgHVhpIsjsvpzbZH1oXuHnvq4e3hR4uUL6wimA9H3z864Nx
         ShklRMQySgzZ3JdXDzf0SrvBfHvSfPY6jCi+STCPR0F5gAg10jQ53HX77aVK6ngAnaI2
         bI8w==
X-Gm-Message-State: AC+VfDwYKfqnlCza/INowlZyOPeosHa+oDA6hDl/lJIcROQLQCBFMzQo
	1L5Hr+vZXaNU4nPsLugAN9kL317bIqKdf/cMWqhfOuUp+PE=
X-Google-Smtp-Source: ACHHUZ5WSlfE2fnE48xDXRRA24CTo4iLt4/WNlgZHCPG6kc1rDjo3OC5hUp5xq9vHAGuQ1ecss1nT5p59KFjO/PM1Zo=
X-Received: by 2002:a05:6870:d58e:b0:196:8e0e:abf6 with SMTP id
 u14-20020a056870d58e00b001968e0eabf6mr2781081oao.21.1686847199938; Thu, 15
 Jun 2023 09:39:59 -0700 (PDT)
MIME-Version: 1.0
References: <mkpv.1686732587244371536.088u@lists.yoctoproject.org>
In-Reply-To: <mkpv.1686732587244371536.088u@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 15 Jun 2023 09:39:33 -0700
Message-ID: <CAMKF1srg5P9TfOB=K+QHbqvmthTj3FC6eZymJ36GZmJtay5xMw@mail.gmail.com>
Subject: Re: [yocto] Error while testing "bitbake core-image-base -c testimage
 -v" #bitbake #dunfell
To: lavkhush2208@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 16:40:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60318

On Wed, Jun 14, 2023 at 1:49=E2=80=AFAM <lavkhush2208@gmail.com> wrote:
>
> Hi all,
>
> I was testing my core-image-base -c testimage with test-suit and getting =
error:-
>
> ERROR: core-image-base-1.0-r0 do_testimage: Output from runqemu:
> runqemu - WARNING - /home/kush/khu/sources/build/tmp-glibc/deploy/images/=
board/core-image-base-board.qemuboot.conf doesn't exist

You do not have image built. So first build the image then run tests.

bitbake core-image-base
bitbake core-image-base  -ctestimage

Or you can add TESTIMAGE_AUTO:qemuall =3D "1" to local.conf  which will run
the tests automatically when doing bitbake core-image-base for any
qemu based machine target and second step is not needed.

> ls: cannot access '/home/kush/khu/sources/build/tmp-glibc/deploy/images/b=
oard/*.qemuboot.conf': No such file or directory
> runqemu - ERROR - Command 'ls -t /home/kush/khu/sources/build/tmp-glibc/d=
eploy/images/board/*.qemuboot.conf' returned non-zero exit status 2.
> runqemu - INFO - Cleaning up
>
>
> WARNING: core-image-base-1.0-r0 do_testimage: Qemu ended unexpectedly, du=
mp data from host is in /home/integration-team/kush/khu/sources/build/tmp-g=
libc/log/runtime-hostdump/202306141146_qemu
> ERROR: core-image-base-1.0-r0 do_testimage: Error executing a python func=
tion in exec_python_func() autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure w=
as:
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:do_testimage(d)
>      0003:
> File: '/home/integration-team/kush/khu/sources/openembedded-core/meta/cla=
sses/testimage.bbclass', lineno: 129, function: do_testimage
>      0125:    netstat -an
>      0126:}
>      0127:
>      0128:python do_testimage() {
>  *** 0129:    testimage_main(d)
>      0130:}
>      0131:
>      0132:addtask testimage
>      0133:do_testimage[nostamp] =3D "1"
> File: '/home/integration-team/kush/khu/sources/openembedded-core/meta/cla=
sses/testimage.bbclass', lineno: 371, function: testimage_main
>      0367:    orig_sigterm_handler =3D signal.signal(signal.SIGTERM, sigt=
erm_exception)
>      0368:    try:
>      0369:        # We need to check if runqemu ends unexpectedly
>      0370:        # or if the worker send us a SIGTERM
>  *** 0371:        tc.target.start(params=3Dd.getVar("TEST_QEMUPARAMS"), r=
unqemuparams=3Dd.getVar("TEST_RUNQEMUPARAMS"))
>      0372:        import threading
>      0373:        try:
>      0374:            threading.Timer(int(d.getVar("TEST_OVERALL_TIMEOUT"=
)), handle_test_timeout, (int(d.getVar("TEST_OVERALL_TIMEOUT")),)).start()
>      0375:        except ValueError:
> File: '/home/integration-team/kush/khu/sources/openembedded-core/meta/lib=
/oeqa/core/target/qemu.py', lineno: 67, function: start
>      0063:            if self.runner.server_ip:
>      0064:                self.server_ip =3D self.runner.server_ip
>      0065:        else:
>      0066:            self.stop()
>  *** 0067:            raise RuntimeError("FAILED to start qemu - check th=
e task log and the boot log")
>      0068:
>      0069:    def stop(self):
>      0070:        self.runner.stop()
> Exception: RuntimeError: FAILED to start qemu - check the task log and th=
e boot log
>
> ERROR: Logfile of failure stored in: /home/kush/khu/sources/build/tmp-gli=
bc/work/board-oe-linux/core-image-base/1.0-r0/temp/log.do_testimage.17255
> ERROR: Task (/home/kush/khu/sources/meta-exaleap/recipes-images/images/co=
re-image-base.bb:do_testimage) failed with exit code '1'
>
> Can anyone help me in this, where i am doing wrong.
>
> T&R
> luvkhush
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60287): https://lists.yoctoproject.org/g/yocto/messag=
e/60287
> Mute This Topic: https://lists.yoctoproject.org/mt/99523749/1997914
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

