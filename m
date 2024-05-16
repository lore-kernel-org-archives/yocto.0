Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EA1C25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 12:45:48 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web10.12265.1715862524992501736
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 May 2024 05:28:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KOEx5fzZ;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2bd42c81d33so110472a91.1
        for <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 05:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715862524; x=1716467324; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TBTGwBgB4r58Uv/P4D3oMrnTtpQdUOuKNuoaNnnYxLY=;
        b=KOEx5fzZCD4SI/HeB+Ly4QxDFoxzj7IRBDTzgYxCF68oSuQKR3IoeYP+w7NrP5x0Sx
         SP7nBKTi33jWKWPb0D0QM5lG6p93HjFOCGK+kQie/IJVRUuZTxXynWZUNg5vJ0Rh0n0m
         lKEA3h2hyQP+xnK+t0OJmw0bVYy8ZBz5wCv2tY7aRGFKFulSBOLMcB+K5dmfSZxhTGms
         vTL8u42bTrQJsCNjdM2Of6dzIFOF2r4U4cPhUcpiz20XthQz10CVEhzbUpAVWKD9nY7F
         //oxJuVkWbcz7H4ZkomfHWtmXzR09GE/IODc1OlHnI4a/uatm1UyKntpl7Jukyte/Mbe
         eT6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715862524; x=1716467324;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TBTGwBgB4r58Uv/P4D3oMrnTtpQdUOuKNuoaNnnYxLY=;
        b=Zwk5CgNkkc4cnY6vEl7reI6eL+03Rb2zdLppzzSzKr8E7JOUs9UqvEvWyyxRFw3xhK
         JcMxLWdJ6wupH/9XJF7cRX74LJMyZ/WUEcEUvW31r2yRsQgB4JXxClJYiqiM++dxETrs
         BUP/tHOZuOOjDhNrmrp0dCWi5rjWKmY+y9azUaC/WYE8COX0CjAXgjwpppwi3UFyUhpw
         82MV9hzzOUCMqrqQLt3SHNH0cLT3BIRfc7v0QN8KTfoPILhbdMRtyGbFIqnMsh4c21pD
         IjqHUgRshWWFl4qrz3KZkGDKxYo+H1EMb8cZ8hKZrSTrKLft4DntDXwkASvgHyOvLUEL
         jFHw==
X-Gm-Message-State: AOJu0YyHoNVP9RN2g9AGWByjNy6rzgoflJyMRrTl6jxbhKNYWaa3R/kH
	jlkVvnuUvqOBa/wdOrudZPvAwaNb6dawgarJigbHuV3fkCsc0LKuVPVkvhXN4xxB03nnfhQCQd9
	iEu3g2/rimwCVPRHQzP7SaGdQJR77xkEn
X-Google-Smtp-Source: AGHT+IFo71Lp86seF/zBWiBgZaPFsBVOcKaQqbqM5ng5AYbWWznxVTO1cnV82HFhxT8UOgZm+efbMoL+TB0hKfcDZAs=
X-Received: by 2002:a17:90a:c596:b0:2b9:a299:dd03 with SMTP id
 98e67ed59e1d1-2b9a299dd8emr6545261a91.1.1715862523777; Thu, 16 May 2024
 05:28:43 -0700 (PDT)
MIME-Version: 1.0
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 16 May 2024 14:28:31 +0200
Message-ID: <CAGAf8LwEkmPWUi+B3BotJy0g2AhfBRyVfO4jUBkhRXVtNS1aww@mail.gmail.com>
Subject: Strange errors while executing poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb using scarthgap release
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 12:45:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63115

Hello all,

I have a really strange error while compiling gcc-cross_13.2 ?!

Here is the error appearing:
ERROR: Task (/home/vuser/projects2/yocto/yocto_test2/bbb-yocto/poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb:do_gcc_stash_builddir)
failed with exit code '1'

I eliminate this error using the following addition, just to see if
the compiling will go further:

I edited poky/meta/recipes-devtools/gcc/gcc-cross.inc and added the
following line:

--- a/meta/recipes-devtools/gcc/gcc-cross.inc
+++ b/meta/recipes-devtools/gcc/gcc-cross.inc
@@ -131,6 +131,7 @@ do_packagedata[noexec] = "1"
 do_package_write_ipk[noexec] = "1"
 do_package_write_rpm[noexec] = "1"
 do_package_write_deb[noexec] = "1"
+do_gcc_stash_builddir[noexec] = "1" <<<=======

It does pass further, till the next error:
ERROR: Task (/home/vuser/projects2/yocto/yocto_test2/bbb-yocto/poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb:do_populate_sysroot)
failed with exit code '1'

I did not take the same path, since I could not ignore the
do_populate_sysroot() task.

Does anybody have any info on such an occurrence in scarthgap release (5.0.1)?

Thank you in advance,
Zee
_______

