Return-Path: <mattwood2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A24C00A5A
	for <webhook@archiver.kernel.org>; Thu, 19 Jan 2023 16:37:42 +0000 (UTC)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
 by mx.groups.io with SMTP id smtpd.web10.50184.1674146255676346798
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Jan 2023 08:37:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KYIYJm/g;
 spf=pass (domain: gmail.com, ip: 209.85.219.179, mailfrom: mattwood2000@gmail.com)
Received: by mail-yb1-f179.google.com with SMTP id a9so3264686ybb.3
        for <yocto@lists.yoctoproject.org>; Thu, 19 Jan 2023 08:37:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Zhs2CmFH5RUseP5/gi23gfxPKdDJuZFEYrA0vkmVg/0=;
        b=KYIYJm/g4afUSUeeHPRQHvtmq7vpC7EMu6Olz1qBJ5c5+3+WHWweIC/7ZkKFYJ1upA
         29KquinKiD6y+VyfelECP35jFTvZr11FDrc070PlwGjwNEfVoX5fhGH9Ck2WdOwGFoM3
         CLKCeUq84hM33Db0X9/wzc1f4003EK9knI8vYPMhpZJUrdD6r5jy4w6XjZGux+T6htma
         vGxmyzznbBkXzMU49rse1TulUyXAd4BY35ZoSoRmWhl+fNoWYyAirFio+/j5Gh4G29Vy
         W0FPSK09nTKFIk/2U55z1H2fFOOELqUFqPTq/jEsmv0p6N2g0Zoy98RLDMkB9vdLaTwk
         jzJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zhs2CmFH5RUseP5/gi23gfxPKdDJuZFEYrA0vkmVg/0=;
        b=e5GxI+SOhaX77j6AmOtJ0KF7+6xRHcAL8R0JSXVsDALklnBTSRS7Q/lbXaAE9fDtNn
         3JEi3zcbdPFT589IwDtgurVdO3bolO/+ALL0UIK/iwOC1mTGiRDGXLWenTWlqpZpX5Fe
         Leir2+2jnNpYdQmMxkmkmoLo0zRuiXV4UHUUoTAZ27FTX41+xLNpAW6M+uCEePPvd2PI
         LUWDq6+ewMb3jFTpF1KSF+Iy2mD34mU2OnttyWoJkJcty0/3vNnZ0k4Aw9zNDxofQSnK
         ayJhxek7sZ/c2/6bA06r77tpWH6njXtSRa/w4Xkr+3ZtJWwOXdchG/OD0wvaHvF65xOs
         Et7g==
X-Gm-Message-State: AFqh2kpGoGRc4vpeh/rFfP2iATrIVO/iDE/1yEXAzMcXVPMYAjAg0JtZ
	VALyzxrzDPTeL+G9SkbbN0EHwWDsPt/6vAUBseC4S/+C
X-Google-Smtp-Source: AMrXdXsSbHKQoKbdIlzjKJlLC71Jyr2gyo7nkCZcYrAMUmYpXTaHO1uqS/EPSb90TmGA0g7fKr/gCHFHpX22AtNWc+M=
X-Received: by 2002:a25:1885:0:b0:7ca:5202:8e78 with SMTP id
 127-20020a251885000000b007ca52028e78mr1201680yby.382.1674146254710; Thu, 19
 Jan 2023 08:37:34 -0800 (PST)
MIME-Version: 1.0
From: mattwood2000@gmail.com
Date: Thu, 19 Jan 2023 11:37:23 -0500
Message-ID: <CADjezmbVGxzeob6BGbsOUW2VMfUMjVogH85nL16zcSdncc7QqQ@mail.gmail.com>
Subject: SSTATE_DIR by MACHINE target?
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Jan 2023 16:37:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59021

Hi,

is it possible to have SSTATE_DIR overrides based on the MACHINE
target or SOC family?

For example, is this valid:

SSTATE_DIR:sama5 = "/path/to/sstate_a5"
SSTATE_DIR:rpi = "/path/to/sstate_rpi"
...

Thanks, Matt.

