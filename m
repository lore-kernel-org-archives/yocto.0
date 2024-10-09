Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6316CCEDD8C
	for <webhook@archiver.kernel.org>; Wed,  9 Oct 2024 12:14:20 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.14709.1728476057391579487
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Oct 2024 05:14:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HCQx3IGS;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53959a88668so8546799e87.2
        for <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 05:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728476055; x=1729080855; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fok5c7y2GiIvBF8n119hJ7GTBBvDTLa0/ilLBOTbhJ8=;
        b=HCQx3IGSfCD0Wn17m7F6EqXP3mee45FhX1wyp1b9+j0nlH+/AVWDu+id1eb/rLjkpm
         5wuKvRHrqTuCThPjmPXQ4DPWnGTBcWb/LqkWN0yYO7uhrPSlkC4hSRQGQQmdHoE7J3Qm
         PnU4awhUPUi/sxKGraJwqLBXyoWcoRtwkp8brfPEvv1rkDVKTXqJur0QyoxG/8HBXaO4
         TU73idR9QTvJezibZFQkUVagE0G5yX4QqV0AQuF9to0mnDLkeBr/jo+A39GNzKVqOFAi
         VCflO9x0rl0nkqK2pvEQ/SSINARTYiEaUUK8AtVvvleA0b9jKUwtTYuaMKYhrXAOFHfI
         9K7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728476055; x=1729080855;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fok5c7y2GiIvBF8n119hJ7GTBBvDTLa0/ilLBOTbhJ8=;
        b=pG1qrI3OtwdJ1vcN7KmOO4k0WXj6YgsmLPxAJzR+T4LhMRdTof6Tm6DYirTSwoKLry
         DnItqP4m9IOp0ff1fE8MI3ia3gybr6zsw5vRwIL8ooNMKM8QczJ1rECsQBsHB+ptDDc5
         dPatdTeOdeTTsRoTVYwXP1RfVU0pkR01rxnWjqsQmtOywTf9Q3jbDQ4y/BHbNOwqCeL6
         TMAxSwTd3QafBX3eYDYB/OtRE8efyxcFi9nbHXYEv8szi7i5W6aTgCIc5jTCoOYLJcIn
         jZ4uF84UqlafJ4vNrEREO4V/uuskKFGsCFX6jktcbCyGtHGl0S7EPrSfHE5YI6kg/tcm
         JSwA==
X-Gm-Message-State: AOJu0YxPMB/7DM0Vp3ZlbzVzSHF0yU5k4eBbNUM3/cbSo2q/oaxvBuHo
	J06YPvtZkZ2/4IbkTgxGDx0EHVjGhnRmhE+Xw1HlAkon52d55INE72+HfdxeoBSDZGdlFxlK97l
	2gFgf7prMYlTMbAcBfL/2HfQVHlb5Xw==
X-Google-Smtp-Source: AGHT+IHn+0er6FkK4ZbXAnHf9ekaLAxp9qSuQkmsDj5ahSKONuDLYUoyZtLMd6qnD97GJyluTaVPtcvp82E3bVF2Kco=
X-Received: by 2002:a05:6512:6ca:b0:539:94c4:d9cb with SMTP id
 2adb3069b0e04-539c48e2719mr1526783e87.31.1728476054970; Wed, 09 Oct 2024
 05:14:14 -0700 (PDT)
MIME-Version: 1.0
References: <CABatt_wGGZVZn5H+H3pYtRm-3OTx_bm+=o7_dDLhpvk7kQ2ysA@mail.gmail.com>
In-Reply-To: <CABatt_wGGZVZn5H+H3pYtRm-3OTx_bm+=o7_dDLhpvk7kQ2ysA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 9 Oct 2024 14:14:03 +0200
Message-ID: <CANNYZj_-p4texE-hoBen8mgQSai1Sgihg_wy698GwacTTFeUeg@mail.gmail.com>
Subject: Re: [yocto] nativesdk-cpio: build failure in Scarthgap
To: yocto@lists.yoctoproject.org, mtownsend1973@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 12:14:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63986

On Wed, 9 Oct 2024 at 14:03, Martin Townsend via
lists.yoctoproject.org
<mtownsend1973=gmail.com@lists.yoctoproject.org> wrote:
> We have cpio in our SDK and after updating to Scarthgap it failed to build due to nativesdk-cpio.
> ERROR: nativesdk-cpio-2.15-r0 do_package_write_rpm: The sstate manifest for task 'base-passwd:populate_sysroot' (multilib variant '') could not be found.
>
> After looking at the dependencies it looks like the lines
>
> DEPENDS:append:class-target = "${@bb.utils.contains('PTEST_ENABLED', '1', ' ptest-runner', '', d)}"
> PACKAGE_WRITE_DEPS += "ptest-runner"
>
> mean that you get this dependency
> "nativesdk-cpio.do_package_write_rpm" -> "ptest-runner.do_populate_sysroot"
>
> which then depends on base-passwd.  For the moment I have added a bbappend to fix things
>
> PACKAGE_WRITE_DEPS:remove:class-nativesdk = "ptest-runner"
>
> I'm not sure what the real fix is, maybe
>
> PACKAGE_WRITE_DEPS:class-target += "ptest-runner"

Without looking at the recipe... it would be good to know why cpio is
trying to do 'special handling' of ptest-runner. There's plenty of
other recipes that depend on it too, and I guess you're not observing
the problem with them. Maybe this special handling should be simply
dropped in favour of the standard one.

Alex

