Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA210EB64D8
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 17:11:28 +0000 (UTC)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
 by mx.groups.io with SMTP id smtpd.web11.17344.1687453880195727801
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 10:11:20 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=bmSiDQ3+;
 spf=pass (domain: gmail.com, ip: 209.85.219.174, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-c029d59fcb7so641042276.0
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 10:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687453879; x=1690045879;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ekgnJOp1wpU0dZNcO7HspSAYgihTUXRBq4uPYiUBCMU=;
        b=bmSiDQ3++XK8lwzTht7UdLQ8vuUBT9WcSrGmX9aWBiO5gOP6s8iErKE4BWauF1POdW
         cJQN91QI7HYT5dwf6X5PRqWSdbYWpvDOeGFsO/CNzHtmCvMAc1aJjmG9YTXxxdac8FP5
         7f0+Wao1X8FvJkq1OYkMhHaWALSYpOCIiABfjotuXvF3/J/PWrOmTre9VZFfIOyphb8t
         C3YY4FSilELZzk4DmDSoakIBmYFKTLhF46jRasdbVZwh5XUv+5mLlzjtqSW3qjD8SXar
         DrxoJUrusRMxj/mGeIBNn/zDh27d3zfY97Bzhjmb77Ao+Go6WAMGni7raSH7/6dwPB9i
         0vgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687453879; x=1690045879;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ekgnJOp1wpU0dZNcO7HspSAYgihTUXRBq4uPYiUBCMU=;
        b=gtbZmzY/6FVbhb/wl2GkOO3Ij9Y1ZKdUoKDEd0+5rGJI8C9kyCdoXS1lwpnPZL95p1
         rfxuXyy+bbvKp3dSAyn0tuhpify+wUinpkCDWJh6ENJXbfk/dwZWAg0lMpPuL5w5Ze3I
         ZFr6Eth6wGK3hXJ53pTWsZonumbY6opeoEr/fBbQ8TaR3FBqOk2oHwIsUcqdD4cjc9iG
         FDKc70g/PUg1uJvg65sjLoQJf3kDXcDQug3zTfhvXInrOd2kTL0VX4lD5xc7edU9FjGs
         VlLfnvP5Xt5e5uCudC5YfRE8OI7ULxjUtX5x7TQWWmhr+WbaDQit23P6D7u5/obD8GjF
         xCOg==
X-Gm-Message-State: AC+VfDwld5zm8I8Jpm2mpqrrY3B+wd3E+ewWRFEXydsXTjXTQ9aT3C0B
	ZvRBQQMy7sI00bYTldIrKzzbRhR57sU=
X-Google-Smtp-Source: ACHHUZ7DCVz+xP8P61ygKvHCQGZtmnDz7ucFO8IZSfFaufy3csLgtgVadvna4sTdQfxhZZkmhN6Mjw==
X-Received: by 2002:a25:186:0:b0:c00:e25d:818f with SMTP id 128-20020a250186000000b00c00e25d818fmr3333541ybb.27.1687453879008;
        Thu, 22 Jun 2023 10:11:19 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:80e:b8b0:6c85:7e? ([2600:1700:9190:ba10:80e:b8b0:6c85:7e])
        by smtp.gmail.com with ESMTPSA id 128-20020a251986000000b00babd2eef59dsm1628786ybz.27.2023.06.22.10.11.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jun 2023 10:11:18 -0700 (PDT)
Message-ID: <e3f2b2a5-aae1-39b9-5354-2f6235b8f687@gmail.com>
Date: Thu, 22 Jun 2023 13:11:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] [meta-security][PATCH] *.patch: add Upstream-Status to
 all patches
Content-Language: en-US
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20230621104215.2137991-1-Martin.Jansa@gmail.com>
 <786e2b82-dea2-378d-e2d0-f4d1b747097d@gmail.com>
 <176AB0C1D2D3F08D.18647@lists.yoctoproject.org>
 <CA+chaQeNa8+3GM6hTJiPpHM4sqVKaWj1Tnpe9_SS9zRWsG4pww@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <CA+chaQeNa8+3GM6hTJiPpHM4sqVKaWj1Tnpe9_SS9zRWsG4pww@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 17:11:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60412



On 6/22/23 10:54 AM, Martin Jansa wrote:
> I've checked the master-next now and somehow I've missed some of the 
> Upstream-Status issues earlier, so I've sent 4 more changes based on 
> master-next.

Thanks for help cleaning these up. Much appreciated.

BR,
Armin
>
> Cheers,
>
> On Wed, Jun 21, 2023 at 3:49 PM Martin Jansa via 
> lists.yoctoproject.org <http://lists.yoctoproject.org> 
> <Martin.Jansa=gmail.com@lists.yoctoproject.org> wrote:
>
>     On Wed, Jun 21, 2023 at 3:42 PM akuster808 <akuster808@gmail.com>
>     wrote:
>
>         Hello Martin,
>
>
>     Hello Armin,
>
>         On 6/21/23 6:42 AM, Martin Jansa wrote:
>         > There is new patch-status QA check in oe-core:
>         >
>         https://git.openembedded.org/openembedded-core/commit/?id=76a685bfcf927593eac67157762a53259089ea8a
>         >
>         > This is temporary work around just to hide _many_ warnings from
>         > optional patch-status (if you add it to WARN_QA).
>         >
>         > This just added
>         > Upstream-Status: Pending
>         > everywhere without actually investigating what's the proper
>         status.
>         >
>         > This is just to hide current QA warnings and to catch new
>         .patch files being
>         > added without Upstream-Status, but the number of Pending
>         patches is now terrible:
>         >
>         > 0 (0%)        meta-parsec
>         > N/A (0%)        meta-hardening
>         > 1 (100%)        meta-integrity
>         > 15 (68%)        meta-tpm
>         > 27 (61%)        meta-security
>         >
>         > Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
>
>
>         > ---
>         >
>          ...Do-not-get-generation-using-ioctl-when-evm_portable-.patch
>         | 4 ++++
>         >  .../0001-create-tpm-key-support-well-known-key-option.patch
>          | 2 ++
>         >  .../files/0002-libtpm-support-env-TPM_SRK_PW.patch       | 2 ++
>         >
>          ...tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
>         | 2 ++
>         >
>          ...tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
>         | 2 ++
>         >  .../recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch
>           | 2 ++
>         Those appear to be fine.
>         >  .../openscap/files/0002-openembedded-add-Poky-distro.patch
>           | 2 ++
>         The openscap patches are being dropped as they got accepted
>         upstream. I
>         sent a patch last night to reflect that.
>
>         I can drop this change.
>         >   recipes-perl/perl/files/libwhisker2.patch              | 2 ++
>         >   recipes-scanners/clamav/files/test.patch             | 2 ++
>         the "test.patch" isn't used anywhere so I can remove it later.
>         >  .../ecryptfs-utils/files/define_musl_sword_type.patch      
>          | 2 ++
>         This one is missing other standard patch information. Looks
>         like a bit
>         more cleanup is in order on my part.
>         >   recipes-security/isic/files/configure_fix.patch          
>            | 2 ++
>         This patch contains "Inappropriate" to the Upstream-Status should
>         Inappropriate [reason]  not pending.
>         >   recipes-security/isic/files/isic-0.07-make.patch          
>           | 2 ++
>         This patch contains "Backport" so the Upstream-Status should
>         be Backport
>         not pending.
>         >  recipes-security/isic/files/isic-0.07-netinet.patch      
>          | 2 ++
>         This patch contains "Backport" so the Upstream-Status should
>         be Backport
>         not pending.
>
>         I can take those last six as-is and send a follow up tweaking
>         as needed
>         or you can send a V2. Your call.
>
>
>     I use only very small portion of meta-security (just selinux
>     recipe), so if you can do the fix-up yourself my CI&I will be
>     grateful.
>
>     Regards,
>
>         thanks,
>         Armin
>         >   13 files changed, 28 insertions(+)
>         >
>         > diff --git
>         a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
>         b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
>         > index 3624576..f0d8975 100644
>         > ---
>         a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
>         > +++
>         b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
>         > @@ -13,6 +13,8 @@ ioctl is not supported by the filesystem.
>         >
>         >   Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
>         >   ---
>         > +Upstream-Status: Pending
>         > +
>         >    src/evmctl.c | 2 +-
>         >    1 file changed, 1 insertion(+), 1 deletion(-)
>         >
>         > @@ -30,6 +32,8 @@ index 6d2bb67..c35a28c 100644
>         >                       int fd = open(file, 0);
>         >
>         >   ---
>         > +Upstream-Status: Pending
>         > +
>         >   2.39.2
>         >
>         >
>         > diff --git
>         a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
>         b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
>         > index bed8b92..e6068af 100644
>         > ---
>         a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
>         > +++
>         b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
>         > @@ -1,3 +1,5 @@
>         > +Upstream-Status: Pending
>         > +
>         >   commit 16dac0cb7b73b8a7088300e45b98ac20819b03ed
>         >   Author: Junxian.Xiao <Junxian.Xiao@windriver.com>
>         >   Date:   Wed Jun 19 18:57:13 2013 +0800
>         > diff --git
>         a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
>         b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
>         > index 2caaaf0..74def4f 100644
>         > ---
>         a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
>         > +++
>         b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
>         > @@ -1,3 +1,5 @@
>         > +Upstream-Status: Pending
>         > +
>         >   commit 16dac0cb7b73b8a7088300e45b98ac20819b03ed
>         >   Author: Junxian.Xiao <Junxian.Xiao@windriver.com>
>         >   Date:   Wed Jun 19 18:57:13 2013 +0800
>         > diff --git
>         a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
>         b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
>         > index cc8772d..732961d 100644
>         > ---
>         a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
>         > +++
>         b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
>         > @@ -17,6 +17,8 @@ export TPM_SRK_ENC_PW=xxxxxxxx
>         >
>         >   Signed-off-by: Meng Li <Meng.Li@windriver.com>
>         >   ---
>         > +Upstream-Status: Pending
>         > +
>         >    e_tpm.c     | 157
>         +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>         >    e_tpm.h     |   4 ++
>         >    e_tpm_err.c |   4 ++
>         > diff --git
>         a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
>         b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
>         > index 535472a..3cbfc3c 100644
>         > ---
>         a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
>         > +++
>         b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
>         > @@ -12,6 +12,8 @@ wrong case.
>         >
>         >   Signed-off-by: Meng Li <Meng.Li@windriver.com>
>         >   ---
>         > +Upstream-Status: Pending
>         > +
>         >    create_tpm_key.c |    3 ++-
>         >    1 file changed, 2 insertions(+), 1 deletion(-)
>         >
>         > diff --git
>         a/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch
>         b/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch
>         > index 40150af..d427d67 100644
>         > ---
>         a/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch
>         > +++
>         b/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch
>         > @@ -1,3 +1,5 @@
>         > +Upstream-Status: Pending
>         > +
>         >   Index: git/include/tpm_tspi.h
>         >
>          ===================================================================
>         >   --- git.orig/include/tpm_tspi.h
>         > diff --git
>         a/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch
>         b/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch
>         > index 182d9ec..767b473 100644
>         > ---
>         a/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch
>         > +++
>         b/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch
>         > @@ -5,6 +5,8 @@ Subject: [PATCH 2/2] openembedded: add Poky
>         distro
>         >
>         >   Signed-off-by: Armin Kuster <akuster@mvista.com>
>         >   ---
>         > +Upstream-Status: Pending
>         > +
>         >    cpe/openscap-cpe-dict.xml             |  4 ++++
>         >    cpe/openscap-cpe-oval.xml             | 14 ++++++++++++++
>         >    src/OVAL/probes/unix/runlevel_probe.c |  8 +++++++-
>         > diff --git a/recipes-perl/perl/files/libwhisker2.patch
>         b/recipes-perl/perl/files/libwhisker2.patch
>         > index c066366..4ea1ee5 100644
>         > --- a/recipes-perl/perl/files/libwhisker2.patch
>         > +++ b/recipes-perl/perl/files/libwhisker2.patch
>         > @@ -7,6 +7,8 @@ Subject: [PATCH] Mandir and perl install dir
>         were overwritten with faulty
>         >
>         >   Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
>         >   ---
>         > +Upstream-Status: Pending
>         > +
>         >    Makefile.pl |   12 +++++++-----
>         >    1 file changed, 7 insertions(+), 5 deletions(-)
>         >
>         > diff --git a/recipes-scanners/clamav/files/test.patch
>         b/recipes-scanners/clamav/files/test.patch
>         > index a22b45d..8d94863 100644
>         > --- a/recipes-scanners/clamav/files/test.patch
>         > +++ b/recipes-scanners/clamav/files/test.patch
>         > @@ -1,3 +1,5 @@
>         > +Upstream-Status: Pending
>         > +
>         >   Index: clamav-0.103.0/Makefile.am
>         >
>          ===================================================================
>         >   --- clamav-0.103.0.orig/Makefile.am
>         > diff --git
>         a/recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch
>         b/recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch
>         > index 3b29be0..01b7dd8 100644
>         > ---
>         a/recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch
>         > +++
>         b/recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch
>         > @@ -1,3 +1,5 @@
>         > +Upstream-Status: Pending
>         > +
>         >   Index: ecryptfs-utils-111/src/utils/mount.ecryptfs_private.c
>         >
>          ===================================================================
>         >   --- ecryptfs-utils-111.orig/src/utils/mount.ecryptfs_private.c
>         > diff --git a/recipes-security/isic/files/configure_fix.patch
>         b/recipes-security/isic/files/configure_fix.patch
>         > index fc2a774..801fe0c 100644
>         > --- a/recipes-security/isic/files/configure_fix.patch
>         > +++ b/recipes-security/isic/files/configure_fix.patch
>         > @@ -1,3 +1,5 @@
>         > +Upstream-Status: Pending
>         > +
>         >   isic: add with-libnet remove libnet test
>         >
>         >   Inappropriate - builds fine on non-oe systems. We need to
>         exlude
>         > diff --git
>         a/recipes-security/isic/files/isic-0.07-make.patch
>         b/recipes-security/isic/files/isic-0.07-make.patch
>         > index 9cffa8a..838c873 100644
>         > --- a/recipes-security/isic/files/isic-0.07-make.patch
>         > +++ b/recipes-security/isic/files/isic-0.07-make.patch
>         > @@ -1,3 +1,5 @@
>         > +Upstream-Status: Pending
>         > +
>         >   isic: Fixup makefile to support destination
>         >
>         >   Backport:
>         > diff --git
>         a/recipes-security/isic/files/isic-0.07-netinet.patch
>         b/recipes-security/isic/files/isic-0.07-netinet.patch
>         > index c4ea74e..4b03880 100644
>         > --- a/recipes-security/isic/files/isic-0.07-netinet.patch
>         > +++ b/recipes-security/isic/files/isic-0.07-netinet.patch
>         > @@ -1,3 +1,5 @@
>         > +Upstream-Status: Pending
>         > +
>         >   isic: add missing header file
>         >
>         >   Backport:
>         >
>         >
>         >
>
>
>     -=-=-=-=-=-=-=-=-=-=-=-
>     Links: You receive all messages sent to this group.
>     View/Reply Online (#60376):
>     https://lists.yoctoproject.org/g/yocto/message/60376
>     Mute This Topic: https://lists.yoctoproject.org/mt/99673661/3617156
>     Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>     [Martin.Jansa@gmail.com]
>     -=-=-=-=-=-=-=-=-=-=-=-
>


