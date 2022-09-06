Return-Path: <jonaskgandersson@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16964ECAAA1
	for <webhook@archiver.kernel.org>; Tue,  6 Sep 2022 07:57:54 +0000 (UTC)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
 [209.85.210.53])
 by mx.groups.io with SMTP id smtpd.web09.1374.1662451063967172955
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Sep 2022 00:57:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OkqRjwwe;
 spf=pass (domain: gmail.com, ip: 209.85.210.53,
 mailfrom: jonaskgandersson@gmail.com)
Received: by mail-ot1-f53.google.com with SMTP id
 h9-20020a9d5549000000b0063727299bb4so7549688oti.9
        for <yocto@lists.yoctoproject.org>;
 Tue, 06 Sep 2022 00:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=2vWFQImPqXrprkpekD2n8+k4ncHpTlQLTec3xJMKYPw=;
        b=OkqRjwweTzEMzaaT6bUsRj9Hha8obThN6a2ZyS+tJXjIegXrgVQtUqL/OWZ9uYAB86
         t+KBbDduZn37e2SNeOcq+h1VyIgUvSCw8IPObhHRkOb9bY4XPpzgxGvPBbu1pMN+Ci/Y
         Te50VAWxGepUpE9CR/+AqRfweB71BgrM/WCfwpq7t68GF7dNMffkC51R4QoIOuFA+niO
         qGe4UByFVMqLnEQPELTWUscTaG9kRjsxgsNXdPEFcpF1JgV54HD9Dv/sb/D97jj9Buwq
         2apC8+ZtwLuBQp/+c8SbOGvtsA+jdVH+4xj0A0FEyJrxxmdgnV2nbbvnPmvUX8CVV3Wl
         UEOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=2vWFQImPqXrprkpekD2n8+k4ncHpTlQLTec3xJMKYPw=;
        b=Gd+4qCs6n0EHSVan9ea75tTAbbRpG7C3nBg5SMUWvHlZmBGUNrpWoEN/K2SNpwWpok
         oeJS0XITJhH2jESHQTK9Oa6D6bs7FmJ3wu9sao/MoB1Vhnxf2j8OwCvbvB4OFrSuHi1Q
         bAepuBH4iRX9PRQmp3wpQtzUNSBetHb609sx5QpsNe+xZHI/EGUqoxD4p+R8lMAvda4i
         rOY7+gWPSDT/lLG48bKQdtT+o177TajkUBtmW+qpCuLbAI2DsHl/Rr3WkumrPZjjdF3U
         U2Hrh1quQq21Q1HdxW2MJS5hngwS6tE+2o8R48T684VP6DRPJbTADjRGZo21ATh3EMc+
         Jd1w==
X-Gm-Message-State: ACgBeo0LAdVROtc7xT+ayB0rxS8fUWNnRdsMRtz5HXjkvQ7yEmQYFrpf
	RVFy38kYCRARzv+IYS5PIzUMp1bPUes6z+a74PJr7iFA+l0=
X-Google-Smtp-Source: 
 AA6agR4XY6cqE+kvkMkGin0j/lZxYl9VPq2JcXQQfQ4mtXgheqH4azu7RiGNdJR7bIRqKS+rF/1QrQBGLT+adGRWXn8=
X-Received: by 2002:a9d:6c9a:0:b0:638:e855:bea2 with SMTP id
 c26-20020a9d6c9a000000b00638e855bea2mr21050230otr.340.1662451062917; Tue, 06
 Sep 2022 00:57:42 -0700 (PDT)
MIME-Version: 1.0
From: Jonas Andersson <jonaskgandersson@gmail.com>
Date: Tue, 6 Sep 2022 09:57:29 +0200
Message-ID: 
 <CAKpuFdcZ2aomMbHfqv1yCasa9Pv3+tRmmHPp6VcvdhLseXuFxw@mail.gmail.com>
Subject: Kirkstone QA already-stripped problem to install binary
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Sep 2022 07:57:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57986

We have an issue with a custom recipe which includes a pre-build
binary. Before migrating to Kirkstone 4.0.1 we were able to build the
recipe using >INSANE_SKIP:${PN} += "already-stripped"<, but this now
failed with:

ERROR: intel-docker-compose-2.2.2-r0 do_package: QA Issue: File
'/usr/bin/docker-compose' from intel-docker-compose was already
stripped, this will prevent future debugging! [already-stripped]

/Jonas

