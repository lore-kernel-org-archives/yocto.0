Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DBCCD484F
	for <webhook@archiver.kernel.org>; Wed,  4 Sep 2024 14:47:48 +0000 (UTC)
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
 by mx.groups.io with SMTP id smtpd.web11.51941.1725461268009739109
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Sep 2024 07:47:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Uz4oC0dN;
 spf=pass (domain: gmail.com, ip: 209.85.160.54, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-277fdd7d468so1613457fac.1
        for <yocto@lists.yoctoproject.org>; Wed, 04 Sep 2024 07:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725461267; x=1726066067; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3GrP96gFfI2BsmvvfViIm1JscxQlu7vazJ2OfAVCDhQ=;
        b=Uz4oC0dN59qu3FOBQD73lnwvVcCZTaeDO1/la/vQ6SZFQV623iL8QLWmPZKKhg87yu
         9WJ34b8Qsr1VcH40lQQufEE3CeCEaH2RQ/vwbyuTZAx1hZ1ceUMopLrkkJ5fB31FVt6x
         FS6KQPiW0vU+wKB4fwAz8FNHKlHDVbq8tG720dC+JP0s+nSy+XCICyWJNxV8TVoUbVtb
         WxCN8CCNFJrq9vRfY6Kl92pzh9QWldT4GAspHtsd4nWYtaVmnPbGCMv97fKhBtY6ZBIg
         PQYrXT6/LigfKRN+I/u7j32Y5W4zPQdcCBYMZddz61L1GRCZrEhM1uLdDerMqnwiJWbk
         AOnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725461267; x=1726066067;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3GrP96gFfI2BsmvvfViIm1JscxQlu7vazJ2OfAVCDhQ=;
        b=QBEszGdEpqOzSIT0gDBh8IyXwUoMmUy8L9JeQAWsSLjB/zh8OvFE7vheXXnRiKOVeZ
         QSYFRMQLPh4oUO6OEBjWonINywEs/YQ55ieJvYhgPbnC4bSEja1fUeL1CRF5GGcuvPGA
         nDa8WCIaXIXniYD1DSQnxoHxviWs70B3DzecFi/fAntUVgNbTmSvp/utg948Tgq8EUk2
         mexBXiVm+k8VKnsUGsZmfOR194CA3gjK+x58jgVz1HOot5zO5Qf28MWaFuBZ2AqO6tPs
         sGq1RlwNEaUIeJdaBjFbm/2cyS2j2pC0/O+hjkm9KpvL124ARKt96eR1aQRNS5cjolm+
         AH3Q==
X-Gm-Message-State: AOJu0Yw6K4/c/BvS+yyHYs78e0BGwFSCCWXYQywzpIgYSdSGf6rgHveM
	P4QdbqKqgP3jZOfTTOGrOrxncqpace4kxzWYPXzU/wrmwsYRya9zC//G/1KhMgbgb4tUvZo3u76
	wtE/btdG7wWjwXxov470s2K4aBNEGIZIa
X-Google-Smtp-Source: AGHT+IEpO4UxfhpC1zUN7YdeIoWY2GDISnztkXtqE67rSpXPZE34DSsP4EN2U5yp5D3PEWfvCqsHIVH+iuhc9bCW//o=
X-Received: by 2002:a05:6871:3287:b0:261:110b:84fd with SMTP id
 586e51a60fabf-278002dc4b1mr10401323fac.11.1725461267048; Wed, 04 Sep 2024
 07:47:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBngRr24GPs1VfLJDQBHn_Gt0Q_S9hxUJevVfWT6V7TBfBg@mail.gmail.com>
In-Reply-To: <CAPJWBngRr24GPs1VfLJDQBHn_Gt0Q_S9hxUJevVfWT6V7TBfBg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 4 Sep 2024 07:47:21 -0700
Message-ID: <CAMKF1sqXrUt2WXcxRAjjpsSyqKYiV1jk+nAygfnOiTFDC_tx4Q@mail.gmail.com>
Subject: Re: [yocto] Linking stage error
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Sep 2024 14:47:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63784

On Wed, Sep 4, 2024 at 7:36=E2=80=AFAM MOHAMMED HASSAN via
lists.yoctoproject.org
<hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi guys,
> I am trying to run a Makefile and add the binary to my arm64 yocto dunfel=
l build. The issue is
> the linking stage throws generic ELF error. I have commented out compiler=
 related info in my Makefile but still face the issue. Please have a look a=
nd point me in the right direction.
>
> Initialising tasks: 100% |###############################################=
###########################################################################=
####################| Time: 0:00:04
> Sstate summary: Wanted 5 Found 0 Missed 5 Current 537 (0% match, 99% comp=
lete)
> NOTE: Executing Tasks
> WARNING: QA Issue: PN: z3gatewayGPCombo is upper case, this can result in=
 unexpected behavior. [uppercase-pn]
> WARNING: QA Issue: PN: z3gatewayGPCombo is upper case, this can result in=
 unexpected behavior. [uppercase-pn]
> ERROR: z3gatewayGPCombo-0.1-r0 do_compile: Execution of '/home/edula/yoct=
o3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/temp/run.do_=
compile.137942' failed with exit code 2
> ERROR: Logfile of failure stored in: /home/edula/yocto3.0/build/tmp/work/=
aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/temp/log.do_compile.137942
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | # No pre-build defined
> | Linking ././Z3GatewayGPCombo
> | aarch64-poky-linux-ld: ././project/app.o: Relocations in generic ELF (E=
M: 62)
> | aarch64-poky-linux-ld: ././project/app.o: Relocations in generic ELF (E=
M: 62)
> | aarch64-poky-linux-ld: ././project/app.o: Relocations in generic ELF (E=
M: 62)
> | aarch64-poky-linux-ld: ././project/app.o: error adding symbols: file in=
 wrong format

Here is your hint. Most likely, the Makefile is hardcoding CC/CXX
values but then not doing same for LD so you end up it ignoring cross
compiler
during compile phase but then pick up cross linker during linker
stage. Maybe you can share log.do_compile as well.

> | make: *** [Makefile:157: Z3GatewayGPCombo.out] Error 1
> | WARNING: exit code 2 from a shell command.
> | ERROR: Execution of '/home/edula/yocto3.0/build/tmp/work/aarch64-poky-l=
inux/z3gatewayGPCombo/0.1-r0/temp/run.do_compile.137942' failed with exit c=
ode 2
> ERROR: Task (/home/edula/yocto3.0/meta-blaze/recipes-example/z3gatewayGPC=
ombo/z3gatewayGPCombo_0.1.bb:do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1782 tasks of which 1780 didn't need to be=
 rerun and 1 failed.
> NOTE: Writing buildhistory
> NOTE: Writing buildhistory took: 2 seconds
>
>
> Thanks
> Hassan
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63783): https://lists.yoctoproject.org/g/yocto/messag=
e/63783
> Mute This Topic: https://lists.yoctoproject.org/mt/108266063/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

