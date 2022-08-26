Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AA6AECAAA2
	for <webhook@archiver.kernel.org>; Fri, 26 Aug 2022 00:45:12 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com
 [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web11.31742.1661474704989697118
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Aug 2022 17:45:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=C57MNou4;
 spf=pass (domain: gmail.com, ip: 209.85.128.177,
 mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f177.google.com with SMTP id
 00721157ae682-33dce2d4bc8so189377b3.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 25 Aug 2022 17:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=bkT5B1TMb8wY/G6XJPz+5iu3ZfzTL4Jodcm9vHeU+sc=;
        b=C57MNou42hHYTcddoqfP7/AGNtDcW0RSjvDrLBsl2RhdEUqHUQihPYlJM7VNY7JQ4Z
         cti37qoPTR/vpdkTRvs53EcrLRcK3QHiQtUTQ5l6jRtP7OvLW3B0rxhHrJnkkJyvgnbK
         AYLNxSdpsb6czTZV2iow6Fr0bx9ESD2ED+N2w+tkvfBDEPonCamWa9i6j0lfTxVNA8Mr
         As+tMxRZkFaiu93kYQVReiDgQLSNj8Os/LZRT8zDX7AvQ7wCyEqLHG7rRAt/w3t9XMnH
         d8pwNXFX5GwBd7f0fPVMg3Ox5ifWOCqTRcmD6K+D6f9RfqG3YSUlI7z7fiUaVVkRvzrA
         TYxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=bkT5B1TMb8wY/G6XJPz+5iu3ZfzTL4Jodcm9vHeU+sc=;
        b=2HDldv84ATDCW6TYDPkabjm1QwN1wyJbfiVa3HEatVMmLHGESWFrB9xQ533s0zxyxh
         PoXQmm9fmTadjRopOTbm0TP+4neNq7M1ox1Imt1P5pgWpp44PwFtuEHLCZrpcBn1jLp2
         n59QfjTOFlR26bHHhldJYzCxV+5nq5p56153fO15Qkaas3goTG/7jw2/FkPApTu5cIna
         QmYR3vlEz/GiPBu1Mfs3o5lKN9UcjoPoOW7owZ9G2tvOLaW6dh775zDNVIbv0rNgPSSD
         c9V6XrZLojVxv47sJq9HGtNwuY8K1jHQJHCDvz9e0Xsp3c0SdaZA4N9G+9R+8PzakUl3
         PnRA==
X-Gm-Message-State: ACgBeo1I9rSgmvWKe967PZ7OpzmF6Kv6dK1dMCuSmyfzGtSBdwTHnvU2
	Obv+3y7pc6FL6x0y09dgYOMrv9KLen50ahbxdfc=
X-Google-Smtp-Source: 
 AA6agR7caClcXAkwF9l24a2UmLw29vK6fG5HMs1dXLPOGOpjsJQ+KGlzC/fDRV/bxKtovfwerUAB+rgdAcNkpORlXt0=
X-Received: by 2002:a81:b61c:0:b0:333:9118:4020 with SMTP id
 u28-20020a81b61c000000b0033391184020mr6092188ywh.282.1661474704004; Thu, 25
 Aug 2022 17:45:04 -0700 (PDT)
MIME-Version: 1.0
References: <0c8260c2-0da1-7566-3f9a-e90d4995b45b@ibeeto.com>
 <CAMKF1spJvxxuPOK+KFEX19MjOwumSZ+tGT_u1icvH5z1U8qiAA@mail.gmail.com>
 <6c426aab-6dff-bcfe-1b95-157da402ba44@ibeeto.com>
 <CAMKF1sop4ait=pE5CSzbs3Uu7P=6pACdKd=0py_wpbD-4aXCKQ@mail.gmail.com>
 <50c0d314-faa0-dc7f-903e-614bfb899730@ibeeto.com>
In-Reply-To: <50c0d314-faa0-dc7f-903e-614bfb899730@ibeeto.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 25 Aug 2022 17:44:37 -0700
Message-ID: 
 <CAMKF1sqPy-7+W3a3-vmffTPAvNg_=bBM0uJPYc5-QiJNbefCEg@mail.gmail.com>
Subject: Re: [yocto] Dependency for binary package
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Aug 2022 00:45:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57906

On Thu, Aug 25, 2022 at 4:56 PM Rudolf J Streif
<rudolf.streif@ibeeto.com> wrote:
>
>
> On 8/25/22 4:49 PM, Khem Raj wrote:
> > On Thu, Aug 25, 2022 at 4:44 PM Rudolf J Streif
> > <rudolf.streif@ibeeto.com> wrote:
> >> Thanks, Khem.
> >>
> >> On 8/25/22 4:27 PM, Khem Raj wrote:
> >>> On Thu, Aug 25, 2022 at 7:30 AM Rudolf J Streif
> >>> <rudolf.streif@ibeeto.com> wrote:
> >>>> I am packaging a binary package that has been built with the SDK created
> >>>> with the exact same configuration.
> >>>>
> >>>> During do_package I am getting an error that a dependency on
> >>>> libGLESv2.so()(64bit) cannot be met. Adding mesa to RDEPENDS does not
> >>>> resolve the issue. I can bypass it in the recipe by adding file-rdeps to
> >>>> INSANE_SKIP. However, then when the rootfs is created libdnf complains
> >>>> that the dependency on libGLES is not met and aborts.
> >>>>
> >>>> The application works just fine on the target if I copy it manually to
> >>>> the rootfs but that's not the best thing to do. It should be packaged
> >>>> and installed.
> >>>>
> >>>> Unfortunately I don't understand well enough how these checks work and
> >>>> why they are complaining about it. Maybe somebody can shed some light on it.
> >>> some libraries do not set SONAME in them, which can trip the shlibs
> >>> code. Can you
> >>> check if libgles in question has SONAME encoded in its ELF header
> >>>
> >>>    readelf -d <lib> | grep SONAME
> >>>
> >>> might be what you can use to deduce it.
> >> libGLESv2 in question on the target was built with YP:
> >>
> >>    0x000000000000000e (SONAME)             Library soname: [libGLESv2.so.2]
> >>
> >> The SDK that builds the application was built with the same YP setup.
> >> That's why I am scratching my head.
> > interesting, are you adding RDEPENDS on libgles2-mesa ?
>
> Yes, but that does not satisfy the dependency:
>
> ERROR: virtuoso-0.1-r0 do_package_qa: QA Issue: /opt/virtuoso/virtuoso
> contained in package virtuoso requires libGLESv2.so()(64bit), but no
> providers found in RDEPENDS:virtuoso? [file-rdeps]

I see a potential problem here, the soname is libGLESv2.so.2 but the
dependency its
complaining about is libGLESv2.so()(64bit), ( you see the missing
version number ?)

Can you run

readelf -d <binary name>  | grep NEEDED

and see what libs are encoded in the ELF

>
> I can SKIP_INSANE file-rdeps but then I am getting the same issue when
> creating the rootfs with dnf.
>
> But in all fairness, I don't have control over the entire process. The
> customer builds the executable with the SDK I gave them. They give me
> the executable to put in the rootfs.
>
> >
> >>>> Thanks,
> >>>> Rudi
> >>>>
> >>>>
> >>>> -=-=-=-=-=-=-=-=-=-=-=-
> >>>> Links: You receive all messages sent to this group.
> >>>> You automatically follow any topics you start or reply to.
> >>>> View/Reply Online (#57898): https://lists.yoctoproject.org/g/yocto/message/57898
> >>>> Mute This Topic: https://lists.yoctoproject.org/mt/93249287/1997914
> >>>> Group Owner: yocto+owner@lists.yoctoproject.org
> >>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> >>>> -=-=-=-=-=-=-=-=-=-=-=-
> >>>>
> >> --
> >> Rudolf J Streif
> >> CEO/CTO ibeeto
> >> +1.855.442.3386 x700
> >>
> --
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3386 x700
>

