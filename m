Return-Path: <osama.abdelkader@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4AE8CFD34B
	for <webhook@archiver.kernel.org>; Mon, 24 Nov 2025 18:49:09 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.24413.1764010144646484060
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Nov 2025 10:49:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MgC1JdOJ;
 spf=pass (domain: gmail.com, ip: 209.85.128.47, mailfrom: osama.abdelkader@gmail.com)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477a219dbcaso42597625e9.3
        for <yocto@lists.yoctoproject.org>; Mon, 24 Nov 2025 10:49:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764010143; x=1764614943; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=B6K/GbYqPB2IVTgKOaD4q0Mec2xSanTW2i+MuG18MUI=;
        b=MgC1JdOJqR4vNrW8rrvv16unLvoS3/GDWXawNHsdU2YamHjZopEULi4wBq8H6AOXp4
         g61zd5wsSfOxIzGlzYbZP3VEJeDWkJZOSLcfhWTmkZg9QOnEH24Vmi5KnGWAFrq4jWwW
         2IPsXJEj2DONbNRe0F1QNO0DpxwtB8aPhTUVPPhrpPGY2l3Me6w08nCP13Yv9w+f2bYb
         ouKRdVIUKiCjgLpHn9d1tBc5BjStj6BSxcKk0CyrDu+jhxJNNxiBajC123dgYtF6IzLR
         /ul5Ni9RlTvvUyfnwyhbbMYgAuNxlhEKMJBRuioeKxeya5IKt30ryw1bCx9GD7zX9Jip
         QUFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764010143; x=1764614943;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B6K/GbYqPB2IVTgKOaD4q0Mec2xSanTW2i+MuG18MUI=;
        b=uliZHDYh3q8jBRx2DFBoTxeIkvC5iYLiy9N45EUWjU6CQxSnfScrqHTEZ/pZ4KugMo
         4bbe/+IRU98MKZ1k3Sftpe0eIKe43rNXXLCyx8IC5TkxI2GHrDnpukLjPN0Mt5EzhY8D
         DBVX6U7jd9igILiX0ArpHt45MmjE5QtLvSFnrcvaKgeLMkl4Pzv/4QEkYpciTIAtwIHm
         w8ESxoh5psRwANNRnGJ14r7K0ckiexUUqDbLFXl+Cxv/J2mH+9Zp3jsP1TOF08DIERRL
         aSl+xYB+2MRQLG1MP8fzI6rOCP70a6wdKkv5stTQFmaCCgym9XOOTIpXUsZ0mHJxwrzG
         tJDg==
X-Forwarded-Encrypted: i=1; AJvYcCXxKyX+hr5kk7i/+kXldmTGklYm9Vr8DTZi2IbPBMpPCuYjqSWf9VxuTXbfIuP+UR0D5a6wkA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyEUIFXwe4JJDPiQNoGfiwSWk9lEFO8Tb8SSMwmkOfUpHM7UH0M
	saUH85/5aG2H9e1Y/oSmz8wsygHtSdDS+CziWnHICIFjTiUoJ0UR53tu
X-Gm-Gg: ASbGncv0OmoUH4Mz1arhdjuhOz4h5//wB73fxA641JvZcBU/faQgGod0LBPlPkgLBov
	8Rfq0XbwIUajlWXEc1pVgCsfM3jZ74f86SWpLJYxidEw5JhhAT8ugOiXsIyd5h+7Mydp+640tB2
	ePsuijBE8ObvzwP0HvNxWvkZEoMtDBfVmFCwak5i6nuka05huaoEFfydjFiR8ft80msToWOjITY
	XY2chgpCBkCDN0H71wjQSkWESb0KV+j+KnCgenewSIO8KHJpEaxAnLJWqgQZzwlF7c/BEfZuM5M
	j6DH+fFzKQB256WzqfpTpW6Jj6dVrLebR7uaa1CsTbtsmcrZTG4DYdVfY0T16seMac9R/gIU2m+
	1zmSFR6mTwC79N0evkYh26uoDHKaTOj5Db0+DlHjcxEaRcDkklqAm15j1ktF6TkEcGmKo24Sl4N
	JPJDI769qPkf28
X-Google-Smtp-Source: AGHT+IHbmvbHgN3HC6kFKRd3//q4sOJcaF/nShMJWhQ0Cls/B5JeJppp+3w2dF9lbUIrK/jHj39xqQ==
X-Received: by 2002:a05:600c:1d1d:b0:477:7a87:48d1 with SMTP id 5b1f17b1804b1-477c01ff5bbmr151485325e9.30.1764010142684;
        Mon, 24 Nov 2025 10:49:02 -0800 (PST)
Received: from osama ([156.223.112.153])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47903c6c4a6sm1179645e9.1.2025.11.24.10.49.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 10:49:02 -0800 (PST)
Date: Mon, 24 Nov 2025 20:48:59 +0200
From: Osama Abdelkader <osama.abdelkader@gmail.com>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: bitbake-devel@lists.openembedded.org, yocto@lists.yoctoproject.org
Subject: Re: [bitbake-devel] [RFC] Proposal: New tool to display recipe
 dependency trees
Message-ID: <aSSom6zUzX4X4Xmd@osama>
References: <aSSUtHYFQlychNQk@osama>
 <CANNYZj85vK7o4KVDUtJ_DkW73bxs7UMA-bM6K2VRada-yCFpfA@mail.gmail.com>
 <dd843658-cf46-4858-bb0d-fc78fc25e894@cherry.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dd843658-cf46-4858-bb0d-fc78fc25e894@cherry.de>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Nov 2025 18:49:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66049

On Mon, Nov 24, 2025 at 07:20:52PM +0100, Quentin Schulz wrote:
> Hi Osama,
> 
> On 11/24/25 7:04 PM, Alexander Kanavin via lists.openembedded.org wrote:
> > On Mon, 24 Nov 2025 at 18:24, Osama Abdelkader via
> > lists.openembedded.org
> > <osama.abdelkader=gmail.com@lists.openembedded.org> wrote:
> > > Should the tool:
> > > 
> > > cover only DEPENDS (build-time)?
> > > include RDEPENDS with pkgdata?
> > > resolve virtual/ providers?
> > > 
> > > Any prior work I may have missed?
> > > 
> > > If the idea is acceptable, I will prepare a proper implementation and send a patchset to the appropriate mailing list.
> > > Thank you for your feedback!
> > 
> > Hello Osama,
> > 
> > DEPENDS is a somewhat unfortunate variable name that we're stuck with.
> > 
> > It does not actually specify a recipe dependency, it specifies
> > something more specific:
> > 
> > - run A.do_populate_sysroot before B.do_prepare_recipe_sysroot (a task
> > dependency)
> > - within B.do_prepare_recipe_sysroot task, take the output that
> > A.do_populate_sysroot produced and place that into B's sysroot (a hint
> > for sysroot creation)
> > 
> > So I feel that any tool that aims to make things easier should
> > continue to present particular tasks; there's really no such thing as
> > 'recipe-level dependency'.
> > 
> > In addition to that RDEPENDS is not specifying recipes. It is
> > specifying packages that the recipes produce (which sometimes match
> > the recipe names, but are otherwise distinct). You really should not
> > mix them together.
> > 
> 
> In addition to what Alex said, you also have RRECOMMENDS, PACKAGECONFIG,
> anonymous python functions, dynamic packaging, etc. that allow to specify
> build or runtime dependencies outside of the more common DEPENDS/RDEPENDS,
> so you'd need to interface with the internals of bitbake and not simply
> checking those variables.
> 
> Finally, there are other ways to do dependencies than those variables, as
> highlighted by Alex already. DEPENDS does A.do_populate_sysroot before
> B.do_prepare_recipe_sysroot, but you also have other ways to have
> dependencies, see the u-boot recipe for Rockchip boards here https://git.yoctoproject.org/meta-rockchip/tree/recipes-bsp/u-boot/u-boot-rockchip.inc.
> We depend on 1+ binary (TF-A/BL31 and OP-TEE OS/BL32) that needs to be
> available in the deploy directory before building the u-boot recipe.
> 
> Cheers,
> Quentin

Hi Quentin,

Yes, that needs to be taken into consideration too. IMHO, we need to know if 
such tool/sub-command would be helpful, or we can enhance bitbake -g, or something else
and we can go further with the details.

Thanks.

BR,
Osama

