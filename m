Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06400C04FFE
	for <webhook@archiver.kernel.org>; Tue, 14 May 2024 09:37:53 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.11166.1715679468686902939
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 May 2024 02:37:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=E3T0yoz5;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: martin.jansa@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-51fb14816f6so7011620e87.0
        for <yocto@lists.yoctoproject.org>; Tue, 14 May 2024 02:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715679467; x=1716284267; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YWcHRtcS6Dzrf89xbBqMWTfa7gw+2o9sqbHGCeia1MQ=;
        b=E3T0yoz5Kvc7XQo8DmIdQfSDTr8h9/gNKGGaFonzFOkZ9vAR53ep0+4wc3CeI6do5R
         qIYKzMex/HwYIFzZc49Rf4AB2oGBDy6G7IBZ6zXP2BTN0BfWLOZL0qBlaElmGyRm39Zl
         dVvu0ZUtTU4xuzB2x4MNdRlx78NLiNjg4f3esa5ZltYrccJzQzfU/D0WNlnhaVaWM1jq
         4ZEpMB2dpXIZ0r5UsbYM0L8xoHgbFsbN4PWbHSjtX9P7AoMLLDwdnyR1HZmQsHqFdtqq
         f2bbCq5rukh0/SgCIk1xLTUMktxia4S5gdcHSBmcat7tIIfPz0VycSXKbJ32AqY3YeEN
         yNmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715679467; x=1716284267;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YWcHRtcS6Dzrf89xbBqMWTfa7gw+2o9sqbHGCeia1MQ=;
        b=rsWhvv6RIt9g2CMstoZCIrWD8QdgMJ15kHeKV3z4O/H3CPSnEi50oTpQaAEzLzNJ8j
         vm//BB+iEZm4ExRYsCXNvf6ZdIlGDMDTiPKSanShoTa9NBaDtV2EdZf7UB+zA0anEeJN
         pakxZkAoX0YpJ3MIPhoSc4sYA3HWjQ2oZhMtTGtlOBYuefi8/wPyqArNit2mnVgTSiCE
         9IgDfwG8g1NgN7tK3fKi+w8i3XSWOigHFU2kdxQ3xKjHfg8LHe2TCjliHwXvRc7HoGn1
         lGhxK7ys18C2jgPyO6wzp2LRZcPrBUBgHG3uqMfYTziHVTOt3ozu6Z40MG+HScKVd9+S
         bXYw==
X-Gm-Message-State: AOJu0YySzI8WLfzUbgpQEyyUPCYokU0xy9DkGi/EWGAXPSGzY41JkbJA
	DZFQNxaIz8mYayBAXy6pu7eY1yNVHwk72MZcuz7szS406cRPMg98gyyBYtflamqIlaEwLVD1IcX
	1cn1cAQcVI9mk1UB198V+r1AxA8DqfM4j
X-Google-Smtp-Source: AGHT+IGb3j4UaXDQi7UHc/iSBVsL3imDYt5IJcj/Iq4GPqC5hOm2PulJjJ+k2zBCwJM/3yqz1Na92svnCfHLxSElvfs=
X-Received: by 2002:ac2:5329:0:b0:51f:4a03:a053 with SMTP id
 2adb3069b0e04-5220fb76d9fmr7366506e87.4.1715679466491; Tue, 14 May 2024
 02:37:46 -0700 (PDT)
MIME-Version: 1.0
References: <CO6PR11MB560278C97BA078A862F09B26EDE32@CO6PR11MB5602.namprd11.prod.outlook.com>
 <3449.1715678480890913883@lists.yoctoproject.org>
In-Reply-To: <3449.1715678480890913883@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 14 May 2024 11:37:32 +0200
Message-ID: <CA+chaQfCgdZu3TkKwqUP0Xz6uZkeN5QgVS4hKG5rmYeVPuA4ng@mail.gmail.com>
Subject: Re: [yocto] requires libsqlite3.so()(64bit), but no providers found
 in RDEPENDS:xxx? [file-rdeps] #kirkstone #yocto
To: yocto@lists.yoctoproject.org, Salahaldeen.Altous@leica-camera.com
Cc: Chen Qi <Qi.Chen@windriver.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 May 2024 09:37:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63089

Try to read log.do_package to see why shlibs code in do_package didn't
automatically add correct runtime dependency.

My guess is that you're incorrectly linking with libsqlite3.so instead
of libsqlite3.so.<major-version>. Possibly some hardcoded junk in the
component itself.

On Tue, May 14, 2024 at 11:21=E2=80=AFAM Altous, Salahaldeen via
lists.yoctoproject.org
<Salahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org> wrote:
>
> Hi Qi,
>
> On Tue, May 14, 2024 at 01:42 AM, Chen Qi wrote:
>
> How about using the following setting?
>
> RDEPENDS:${PN} +=3D =E2=80=9Csqlite3=E2=80=9D
>
>
>
> I have added this (RDEPENDS_${PN} +=3D "sqlite3") to the recipe but I see=
 the same error!!
>
>
>
>
>
> Regards,
>
> Qi
>
>
>
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf Of Alexander Kanavin
> Sent: Tuesday, May 14, 2024 4:34 PM
> To: Salahaldeen.Altous@leica-camera.com; yocto@lists.yoctoproject.org
> Subject: Re: [yocto] requires libsqlite3.so()(64bit), but no providers fo=
und in RDEPENDS:xxx? [file-rdeps] #kirkstone #yocto
>
>
>
> Can you show the complete recipe?
>
>
>
> Alex
>
>
>
> On Tue 14. May 2024 at 9.56, Altous, Salahaldeen via lists.yoctoproject.o=
rg <Salahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org> wrote:
>
> Hi All,
>
> I have one yocto recipe which is using libsqlite3, the compile task is OK=
 but I got this error with do_package_qa
>
> /usr/lib/libexample.so.0.2.3 contained in package example requires libsql=
ite3.so()(64bit), but no providers found in RDEPENDS:example.? [file-rdeps]
>
>
>
> I have added this to the example recipe RDEPENDS but still the problem is=
 not solved, any idea?
>
> DEPENDS +=3D " sqlite3"
> RDEPENDS_${PN} +=3D " libsqlite3.so()(64bit)"
>
>
>
> Regards,
>
> Salahaldeen
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63087): https://lists.yoctoproject.org/g/yocto/messag=
e/63087
> Mute This Topic: https://lists.yoctoproject.org/mt/106090753/3617156
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkst=
one
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

