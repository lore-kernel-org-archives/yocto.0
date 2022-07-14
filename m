Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69935C433EF
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 13:49:02 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web10.7717.1657806540512620234
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 06:49:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Iza/cfBP;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id
 r127-20020a1c4485000000b003a2fb7c1274so2655726wma.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 06:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=e1h9+lcTmahTnkIEvsA87LI94BTcj8q6XaH/TROM9WU=;
        b=Iza/cfBPQKHIVVeuKNJ8kh6Vk/d21tmwX34lSWMtM1LCmu0T1ISHDCvqPmpl7Oj/5x
         tcJlsJHkllIbyaXra1BvVxxlfH9iGYV29qs/BIuImJ9tP9GPLHU1ENx6xYVxMLKYElug
         3shORN/AwBE5JxoUti7dEcs32ydXrss5gDRrI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=e1h9+lcTmahTnkIEvsA87LI94BTcj8q6XaH/TROM9WU=;
        b=QN9tg11F/RKDL4Q/amustTowekb7B7/Sf5cIS+Z8p+d7vhLdECj98Et66w3NTsXXHp
         lJ7FG1azuTQrREneb3riGjc2YhTt5SBp5d85EmtI1yvd5jZnJf3iFQ3pfHjbt//H7om5
         whOCdh33umF6tE9pXz5E0qz/yncSmzQ0SqEr+F4f0IxEcKTybFqVa90k5FxIjE9Bvbqc
         VjJpnlMehEIjZSBXM40UDLg37uM5EVGtC6B+avO5DOx5IJQ3FiGUMwAaY9sokLO2cjKj
         8v/+Kd+/nffMA05GQCodpfcGxH98OK6GJbmBgPRTEq6f76XYlf+/nXSUrExM1sF5XPcw
         FTkg==
X-Gm-Message-State: AJIora9rFbbnObwHQexuXZ3l9WD+tJjmq1cbEkv7HdcEOd5YGQsgY7c7
	vMzGUP/R3wxc4F7ckNJuM10QYg==
X-Google-Smtp-Source: 
 AGRyM1ugc5J4MkP4/nFIp2oySJhvWtyAPclk2rIYipFPQjUMdHDDECIyww/7gBeCaHdmSrnQFokOmg==
X-Received: by 2002:a05:600c:3492:b0:3a1:70dd:9a14 with SMTP id
 a18-20020a05600c349200b003a170dd9a14mr8967660wmq.177.1657806538717;
        Thu, 14 Jul 2022 06:48:58 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:c037:3be3:5ea0:9a64?
 ([2001:8b0:aba:5f3c:c037:3be3:5ea0:9a64])
        by smtp.gmail.com with ESMTPSA id
 p18-20020a5d68d2000000b0021d87798237sm1466807wrw.20.2022.07.14.06.48.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 06:48:58 -0700 (PDT)
Message-ID: 
 <1becc5ca1ed7336d07eb5b5beb0d01715bb71443.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH] yocto-bsps: update to v5.15.52 and buildpaths
 fixes
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>
Date: Thu, 14 Jul 2022 14:48:56 +0100
In-Reply-To: 
 <CADkTA4PKG12uULttBKysYh6jy4HzgeSNB685uE8cKYwdumFLdw@mail.gmail.com>
References: <20220712144030.32305-1-bruce.ashfield@gmail.com>
	 <20220712144030.32305-2-bruce.ashfield@gmail.com>
	 <57dd4dcd5002a34b0593078452878626d942fcb6.camel@linuxfoundation.org>
	 <1701455333AD8E75.13030@lists.yoctoproject.org>
	 <CADkTA4PKG12uULttBKysYh6jy4HzgeSNB685uE8cKYwdumFLdw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 13:49:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57535

On Wed, 2022-07-13 at 14:36 -0400, Bruce Ashfield wrote:
> On Tue, Jul 12, 2022 at 11:19 PM Bruce Ashfield via
> lists.yoctoproject.org
> <bruce.ashfield=3Dgmail.com@lists.yoctoproject.org> wrote:
> >=20
> > On Tue, Jul 12, 2022 at 6:45 PM Richard Purdie
> > <richard.purdie@linuxfoundation.org> wrote:
> > >=20
> > > On Tue, 2022-07-12 at 10:40 -0400, bruce.ashfield@gmail.com wrote:
> > > > From: Bruce Ashfield <bruce.ashfield@gmail.com>
> > > >=20
> > > > Updating linux-yocto/5.15 to the latest korg -stable release that c=
omprises
> > > > the following commits:
> > >=20
> > > Thanks, this test build showed two warnings. I have no idea why this
> > > only showed up now:
> > >=20
> > > beaglebone:
> > > WARNING: linux-yocto-5.15.52+gitAUTOINC+f122fe59e7_3ec00e9ee0-r0 do_p=
ackage_qa: QA Issue: File /usr/src/debug/linux-yocto/5.15.52+gitAUTOINC+f12=
2fe59e7_3ec00e9ee0-r0/linux-beaglebone_yocto-standard-build/arch/arm/includ=
e/generated/asm/mach-types.h in package linux-yocto-src contains reference =
to TMPDIR
> > >=20
> > > beaglebond-alt:
> > > WARNING: linux-yocto-5.10.128+gitAUTOINC+2f79722c50_aab4d34364-r0 do_=
package_qa: QA Issue: File /usr/src/debug/linux-yocto/5.10.128+gitAUTOINC+2=
f79722c50_aab4d34364-r0/linux-beaglebone_yocto-standard-build/arch/arm/incl=
ude/generated/asm/mach-types.h in package linux-yocto-src contains referenc=
e to TMPDIR
> > >=20
> >=20
> > Yet another generation script referencing itself .. they seem to like
> > doing that.
> >=20
> > I don't get the warning, but I do have the file with the reference in
> > it here, so I'll send a SRCREV bump with a fix Wednesday.
>=20
> As you can see, patches are on the list. This one was an awk fix.
>=20
> So now we have: shell, python, perl and awk to fix the full path
> issues ... what's the next scripting language to hack ?

Thanks!

I did work out why this has seemed like a game of whack-a-mole. When
the AB summarises warnings, it prints the first line. The actual log
has more lines to it which I wasn't seeing until I looked at the full
log. In the case of beaglebone, this now says:

WARNING: linux-yocto-5.15.52+gitAUTOINC+f122fe59e7_d91bb88e58-r0 do_package=
_qa: QA Issue: File /usr/src/debug/linux-yocto/5.15.52+gitAUTOINC+f122fe59e=
7_d91bb88e58-r0/linux-beaglebone_yocto-standard-build/drivers/video/logo/lo=
go_linux_clut224.c in package linux-yocto-src contains reference to TMPDIR
File /usr/src/debug/linux-yocto/5.15.52+gitAUTOINC+f122fe59e7_d91bb88e58-r0=
/linux-beaglebone_yocto-standard-build/drivers/video/logo/logo_linux_mono.c=
 in package linux-yocto-src contains reference to TMPDIR
File /usr/src/debug/linux-yocto/5.15.52+gitAUTOINC+f122fe59e7_d91bb88e58-r0=
/linux-beaglebone_yocto-standard-build/drivers/video/logo/logo_linux_vga16.=
c in package linux-yocto-src contains reference to TMPDIR [buildpaths]

so three left and they look related. Which language do you hope for
this time?! :)

[I really appreciate the help on this. I'm hoping we're close now]

Cheers,

Richard

