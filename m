Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDB83C433F5
	for <webhook@archiver.kernel.org>; Sun, 12 Dec 2021 10:49:26 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web10.32973.1639306165751559347
 for <yocto@lists.yoctoproject.org>;
 Sun, 12 Dec 2021 02:49:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=H/UvQbN8;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id j3so22417684wrp.1
        for <yocto@lists.yoctoproject.org>;
 Sun, 12 Dec 2021 02:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=1YzXTyGgicMGnm+6jm91D9Cbn/MsEOK+YnO/zPhjHSA=;
        b=H/UvQbN8uBrMoiFAzMqSwjhi0t3qcQxHml9YKtchcz5pB/aTMYlPF23OA3P55EunX4
         E/yXd7Nssr5aL0IUbq5TV24+RpUb65YbNLoF3t6Q+VgdAjmhFqGvD7vXDoeJoAxKGAHr
         TsbenRWjVWRA5eoBFeaigQzX9/7PA8x1vxnhM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=1YzXTyGgicMGnm+6jm91D9Cbn/MsEOK+YnO/zPhjHSA=;
        b=NEsFhN4lyPw7cF18KDnBlqCTDQcZfwf5G9JMApDoDR4Fsz+VNNbnhkRsRfU/pUo8uG
         fxu2niBRapCCb+nWjfqEcaEmi0O8dI/8GxlO47Zp8oZRyfcrz/tRvgkgsOCnmNvLC5m7
         zptlA9GtB0uBMg3C9MahrR9FXMjIxUn2fG+YG/5uyoRFrVqPiGhWBUua4/80FjJmfk2r
         lW5JitoIxBUCw5BB+2yH0kDrAg2D6ZP17jQQzDOwOGZsMDW/xrbowrE7NM/lE1H9Z43d
         PPk6CMr9UDYUWWRt+RsMLFNTRiE/WzAdF6WQruiamPo2sFxbkeV3fDrsSSPKHw2ub3ZF
         RbXw==
X-Gm-Message-State: AOAM531x1tK4PnGBSCY6cqXJK8KS2tIxCftODZOeWQ7o8UTktXI+TGRj
	WOqBfZPVwIxf6pm3fPAYoudHISBPVdJYBw==
X-Google-Smtp-Source: 
 ABdhPJx14MRqvHHigUSzlV0gslNfqaGeZg4JZXRLVIfjBVG8yGB35dHaTjmDQkjP85cuBAPGBgTLOA==
X-Received: by 2002:a5d:64cc:: with SMTP id
 f12mr25162787wri.322.1639306164032;
        Sun, 12 Dec 2021 02:49:24 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:dd:524c:81ce:484c?
 ([2001:8b0:aba:5f3c:dd:524c:81ce:484c])
        by smtp.gmail.com with ESMTPSA id
 z15sm7136627wrr.65.2021.12.12.02.49.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Dec 2021 02:49:23 -0800 (PST)
Message-ID: 
 <3b4444bb50e35c30897da7784a7726344cc0c629.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.5_M1.rc2)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Sun, 12 Dec 2021 10:49:21 +0000
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 12 Dec 2021 10:49:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55553

A build flagged for QA (yocto-3.5_M1.rc2) was completed on the autobuilder and
is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.5_M1.rc2


Build hash information: 

bitbake: 1ecc1d9424877df89fcda2f23c306998998a65ff
meta-agl: 6d1ab9f3bb270a773ec5d2f7c8c856796833b559
meta-arm: d446f7f80bf61e9cf05843e8ef4bc5473f936118
meta-aws: 8893e0cd4c0981eeda941eaa9ad2eb9359670502
meta-gplv2: f04e4369bf9dd3385165281b9fa2ed1043b0e400
meta-intel: aa8482af7b286f8fe8f7aae648938d4ebf0283c5
meta-mingw: 992fb40bdbfe9fe60f815aac46e04c58963918b5
meta-openembedded: ba6a16cdca661b2d5251df243dc19bda0e8db651
oecore: 1a6c2a7345199d77ad5aeac8ad337ed80a8aa39b
poky: 65c94ca3196e5ef3344a469fea8e30444f2e967a



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org




