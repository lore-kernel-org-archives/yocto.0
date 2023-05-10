Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA060C77B7D
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 14:34:09 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.19102.1683729247698889024
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 07:34:08 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linaro.org header.s=google header.b=VHcAj/1f;
 spf=pass (domain: linaro.org, ip: 209.85.167.50, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-4f122ff663eso8119541e87.2
        for <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 07:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683729245; x=1686321245;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3pHDwPTfDUkAkbtoCFLfJufnRggTCu8CvuUAK5y/tzQ=;
        b=VHcAj/1fo6Th2iVM+EmR8eUgaFUqZvCCFqSfPSlqtaT2i2smhg3IEzjmYUSNQUS2q6
         sqThYVVvJmYvZS/6VBnzDqDXl7SZfrZYNx7XmZ6V7vjzUFXHmga0LY8naar9CjIJqESy
         ssAyvCZwh4mrRzXcyHeg4AfkRUlualQq0E+JJhdhkV6edXimyqia8sYNLu1fedGk0IlZ
         KxN2U8gr7yu5IwHp/OcadCtW1k9zybzxH9/QWSBrhjLbbD3Qx+k9Tp4ReBMye9bS+Vg+
         regNB7UYRBye4gXM0sHnMiFLR8Y1DwXA1ZHfervHd3yhc3dgV8+ravZkchiaAuT4N2x8
         fB9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683729245; x=1686321245;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3pHDwPTfDUkAkbtoCFLfJufnRggTCu8CvuUAK5y/tzQ=;
        b=jYlBHUQ6g6f539DYt5wxBWb1egdDUcEQqdkdldLkVvdtWvOqfOgiTr+nWFy6+vPJXs
         SZsu0bwNb1QtVOVqP7uz9u8jvsgC8V6OZWQuWFpcYedhiPjPrQUwZ/TOGxACYOy0KZMU
         tE0jmaimUkj5+k3pcAY4vy0lWTA8oylNwwHeuqgWrNbji6D3bM/dwvSQxr0J8XhDUF+3
         cvbNqI7v0Leeyj1cMpc0dqhTb3KPtMLuFI6JHipMfN+CxynPQYxCWKyHoLLud3Mr7nC8
         tkBM4k7gvcliZFELsnvF8WGuT9hMVs+DzUTOGHa+fdtRgHxbM7a1kSIRsZSNnSAMP9q0
         cSLw==
X-Gm-Message-State: AC+VfDx+2NTbg04zkdozPIBubiCUQ162icyxro9h7MN0wk64SOVsb1Y3
	00ogA+BGU8HuYSGZNynqFkOKEA==
X-Google-Smtp-Source: ACHHUZ7jSIRAk8GfAbbiqupved7/jIH9ROH8XCcDMkL9xzU3NV8goAOPDzfuP54AcySoEPfiIWg+pA==
X-Received: by 2002:ac2:533c:0:b0:4ef:fddf:d5fa with SMTP id f28-20020ac2533c000000b004effddfd5famr1550185lfh.27.1683729245447;
        Wed, 10 May 2023 07:34:05 -0700 (PDT)
Received: from nuoska (dsl-olubng11-54f814-94.dhcp.inet.fi. [84.248.20.94])
        by smtp.gmail.com with ESMTPSA id u25-20020ac251d9000000b004efefd6ac75sm757553lfm.109.2023.05.10.07.34.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 May 2023 07:34:05 -0700 (PDT)
Date: Wed, 10 May 2023 17:34:03 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Stefan Berger <stefanb@linux.ibm.com>
Cc: Armin Kuster <akuster808@gmail.com>,
	Jose Quaresma <quaresma.jose@gmail.com>,
	yocto@lists.yoctoproject.org,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: Re: [yocto] [meta-security][PATCH 1/8] Revert "ima-evm-utils: Update
 ima-evm-utils to v1.5 and add a patch"
Message-ID: <ZFurW5Pr+3Ler/K7@nuoska>
References: <20230509185631.3182570-1-jose.quaresma@foundries.io>
 <c636e528-ca65-dae0-e772-2c43afd16ff3@gmail.com>
 <3bf73334-5196-85e7-2a79-a47a7ae6da4d@linux.ibm.com>
 <ZFuY1UtAFKNI4Oyt@nuoska>
 <b978da27-925a-3c09-2b26-53eda9cadb77@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b978da27-925a-3c09-2b26-53eda9cadb77@linux.ibm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 14:34:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59965

Hi,

On Wed, May 10, 2023 at 10:20:22AM -0400, Stefan Berger wrote:
> 
> 
> On 5/10/23 09:15, Mikko Rapeli wrote:
> > Hi,
> > 
> > On Wed, May 10, 2023 at 08:23:18AM -0400, Stefan Berger wrote:
> > > 
> > > 
> > > On 5/10/23 07:44, Armin Kuster wrote:
> > > > 
> > > > 
> > > > On 5/9/23 2:56 PM, Jose Quaresma wrote:
> > > > > This reverts commit 9de807705b27b05bbf84e9f16502fe6cdaa8928f.
> > > > > 
> > > > > The full patchset are overriding the do_configure task and also added a kernel patch
> > > > > on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is included
> > > > > in every recipe that follows the pattern pattern starting by linux- (recipes-kernel/linux/linux-%.bbappend).
> > > > > So the patch fails in some recipes and also do_configure task doesn't make sense.
> > > > > This breaks many recipes like linux-firmware and maybe others.
> > > > 
> > > > I fail to see how� this package update is part of the issue above. I am still trying to sort out the store here to figure out how we move forward.
> > > 
> > > My suggestion would be that I post a v2 of my fix patches containing:
> > > 
> > > 1) removal of the Linux kernel patch
> > > 2) removal of the squashfs option (less important)
> > > 3) the suggestion outlined here: https://lists.yoctoproject.org/g/yocto/message/59955
> > >     but modified to look like this with '&& [ -f .config ]' appended:
> > > 
> > >   do_configure:append() {
> > >       if [ "${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'yes', '', d)}" = "yes" ] && [ -f .config ] ; then
> > >           sed -i "s|^CONFIG_SYSTEM_TRUSTED_KEYS=.*|CONFIG_SYSTEM_TRUSTED_KEYS=\"${IMA_EVM_ROOT_CA}\"|" .config
> > >       fi
> > >   }
> > > 
> > > I don't want to hold things up but maybe it's worth discussing the suggested changes.
> > > 
> > >  From what I can see 'bitbake linux-firmware' builds under OpenBMC now with these suggested changes
> > > and it did NOT build before. My suggestion would be to discuss the proposal under that thread there.
> > > The problems seem to be that the file meta-security/meta-integrity/recipes-kernel/linux/linux-%.bbappend
> > > matches the pattern linux-firmware as well and therefore its contents get included when building
> > > linux-firmware. When building linux-firmware while having also DISTRO_FEATURES ima set in local.conf then the
> > > ima.scc is added to SRC_URI and the do_configure is also appended. The latter will not have side-effects but
> > > I don't know about the former nor how to create a better filter (other than DISTRO_FEATURES) for not having
> > > these included for linux-firmware.
> > 
> > Why is the bbappend applying changes to all recipes where name starts with
> > "linux-"?
> > 
> > It is aiming at Linux kernel recipes which by default in yocto are
> > called "linux-yocto", so the bbappend could simply be
> > "linux-yocto_%.bbappend" (or "linux-yocto%.bbappend to catch the rt
> > and other variants too).
> 
> Thanks.
> 
> I am trying to enable IMA & EVM under OpenBMC. When I rename linux-%.bbappend to linux-yocto_%.bbappend
> then none of the IMA support becomes active under OpenBMC, so it doesn't help much for OpenBMC. If I rename it to
> linux-aspeed_%.bbappend then it works for OpenBMC but that's probably not the filename you would want to have in
> meta-security.
> 
> So I guess the solution is to rename the file to linux-yocto%.bbappend anyway (I won't test it in this env) but
> then require that OpenBMC include the linux_ima.inc using a statement like this
> 
> require ${@bb.utils.contains_any('DISTRO_FEATURES', 'integrity ', '../../../../meta-security/meta-integrity/recipes-kernel/linux/linux_ima.inc', '', d)}
> 
> in its own linux-aspeed_%.bbappend.
> 
> Does this sound correct?

Yes, this sounds better. You can also document this in the layer for
users with different BSP layers and Linux kernel recipe names. Linking
to the OpenBMC example is a good idea too.

Cheers,

-Mikko

