Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55AB0C54E5D
	for <webhook@archiver.kernel.org>; Tue, 19 Mar 2024 10:46:49 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.12253.1710845200383578244
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Mar 2024 03:46:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Qwj2rHy1;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2d476d7972aso78700801fa.1
        for <yocto@lists.yoctoproject.org>; Tue, 19 Mar 2024 03:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710845198; x=1711449998; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QSMbJcJtmepaxdsDDVlwGTdreQx+Y/hwHKxV7O/M9Ek=;
        b=Qwj2rHy1o+Mu5ZVAReO5qX2tZR8+ilBys0Ingmx7eDhGYCOg4x2o8kWKBzdS5wwkDd
         YoKKW6M0y9k17JmvhCV9ztueVlG1pGKbIqdWKXczM+sqIUkhc0gNqCEjYX/EyEvdNFfG
         tAsb2BZaOLjsejFQp3JWhGl5bdnLRaIBbEASXY8T7fqrCfE49m/pYiuxYhswJjJ21ozk
         U6IsM7gBACYvF15U1Lo9x2a8MK9l3STR/evwRoif70b37vvdphBsWj8aBjeVrsrE2PbZ
         GNeeS9/wFESpjGrW4N5hzaK/h5qmvMyZrtkoM+PCGs2YKR2QYsCFfJ2VwAUxhs10h/mJ
         PmbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845198; x=1711449998;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QSMbJcJtmepaxdsDDVlwGTdreQx+Y/hwHKxV7O/M9Ek=;
        b=FpC6ng8FysuVAbZVSvguKMSklU0wDhfQGZyVwSQe/pYgyb7cxbOqWeS4V+jMEeBnNu
         dCr9QaTkPOswGY5lepvVGK+Aqv/Qfve3mAiPQCLE+BBjvfvjSh5PBz36nbxroKNIMUEN
         rRllHAPjVSwPGD6knPJdaYOK8CIGmrPE8KEHecCZVw0AbHEC0/g//Foii4DWbPY4gc1R
         OTDyZmgavqgyGGxJpqlsjunN2aSbOUHrEaJ/iTAJXtIrimonfJgOF2hIjDhDaPOr4Mct
         bjK6S+G/qKqyQUBPYp0cMgyMzHEP7bQ3714JWMPLQGUxZgsM4KtSH4slRO77A/aKFKNj
         Asmg==
X-Gm-Message-State: AOJu0YzzJXy8D7Z4r8eLsl8NGidESEUqQC7Dfh4F1Z/iKUuiukjs29O7
	mu75tjnLdYuWQhVr+aRcp2dOCtVrvo8TSwhn8BE+e+wumPhSwXdqCe/RZsfHTiBvkMRXkIgSoym
	L/2Kp3ZjWMvupRqVSYRuuXzELS+uClfgV
X-Google-Smtp-Source: AGHT+IFN5ZRlr7zzrvWpJyoOfrOutk1/FlMVPD+5myNvLxbp1CmPaATxMMzHaFFOQm64TF3clhFgWYEbvcY97d9lN/0=
X-Received: by 2002:a2e:8446:0:b0:2d4:7363:a45a with SMTP id
 u6-20020a2e8446000000b002d47363a45amr1379923ljh.53.1710845198146; Tue, 19 Mar
 2024 03:46:38 -0700 (PDT)
MIME-Version: 1.0
References: <CALSmAY73Erq8=dHXVh2c-8Q78ztm_iAXwOBbM1HXmCcgDV0mwA@mail.gmail.com>
In-Reply-To: <CALSmAY73Erq8=dHXVh2c-8Q78ztm_iAXwOBbM1HXmCcgDV0mwA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 19 Mar 2024 11:46:27 +0100
Message-ID: <CANNYZj8iuxDn8UZhNnJZLpuUhsfe2SmHmJT+5LumxJZaPt4bqw@mail.gmail.com>
Subject: Re: [yocto] install-vs-shipped
To: yocto@lists.yoctoproject.org, bratiranjan12@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Mar 2024 10:46:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62792

You can try to issue 'bitbake -e easyloggingpp' which will print all
variables and how their values are formed. Look particularly for
PACKAGES and FILES entries, as those will contain clues as to why the
file isn't being picked up by packaging.

Alex

On Mon, 18 Mar 2024 at 19:05, Bratiranjan Acharya
<bratiranjan12@gmail.com> wrote:
>
> Hi,
> There is a library i want to use from the upstream named as easyloggingpp the link is here https://github.com/abumq/easyloggingpp and following the readme to generate the static library "libeasyloggingpp.a" i have written a recipe for a particular tag.
> easyloggingpp.bb
> ----------------------------------
> LICENSE = "MIT"
> LIC_FILES_CHKSUM = "file://LICENSE;md5=a5579a1688435c42607edb4b751495bf"
> #PACKAGE_ARCH = "${MACHINE_ARCH}"
> SRC_URI = "git://github.com/abumq/easyloggingpp.git;protocol=https;branch=master"
> PV = "1.0+git${SRCPV}"
> SRCREV = "v9.97.1"
> S = "${WORKDIR}/git"
> inherit cmake
> EXTRA_OECMAKE = "-Dbuild_static_lib=ON"
> ----------------------------------------------
> "-Dbuild_static_lib=ON" will generate the libeasylogging.a but i when i am executing this recipe i am stucking with this error
> ERROR
> ------------------------------------------------
> ERROR: easyloggingpp-1.0+gitAUTOINC+f1f6d98c4c-r0 do_package: QA Issue: easyloggingpp: Files/directories were installed but not shipped in any package:
>   /usr/lib
>   /usr/lib/libeasyloggingpp.a
> Please set FILES such that these items are packaged. Alternatively if they are unneeded, avoid installing them or delete them within do_install.
> easyloggingpp: 2 installed and not shipped files. [installed-vs-shipped]
> ERROR: easyloggingpp-1.0+gitAUTOINC+f1f6d98c4c-r0 do_package: Fatal QA errors were found, failing task.
> ERROR: Logfile of failure stored in: /local/home/acbratir/Workspace/build/tmp/work/armv8-2a-poky-linux/easyloggingpp/1.0+gitAUTOINC+f1f6d98c4c-r0/temp/log.do_package.8024
> ERROR: Task (/local/home/acbratir/Workspace/poky/../sources/meta-juju/recipes-support/easyloggingpp/easyloggingpp_9.97.1.bb:do_package) failed with exit code '1'
> -------------------------------------------------------------
> I have tried many ways to slove this by using ${PN}-static dev first the ${PN}-dev as per the order. But i was unable to solve this and now i am clueless to solve this.Kindly help!
> In the ${WORKDIR} these are the paths where the lib is generating
> -----------------------------------------------------------------------------------------
> ./build/libeasyloggingpp.a
> ./package/usr/lib/libeasyloggingpp.a
> ./image/usr/lib/libeasyloggingpp.a
> ---------------------------------------------------------------------------
> Help me to solve
>
> Thanks & Regards
> Brati
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62785): https://lists.yoctoproject.org/g/yocto/message/62785
> Mute This Topic: https://lists.yoctoproject.org/mt/105008765/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

