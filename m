Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A63C433EF
	for <webhook@archiver.kernel.org>; Tue, 30 Nov 2021 19:06:32 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web08.81144.1638299191793894364
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Nov 2021 11:06:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MRS0RZ9k;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id p18so18352964wmq.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 30 Nov 2021 11:06:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=QoLD+bpMa+wk1idz5XGaVpB4P5Gp8QBw85CZR7ZXE7E=;
        b=MRS0RZ9kGXovpezyhPLL8r6tcB5BFlsEHo7dzTaDBN5Istss9+3MYGgiY269bkcFyA
         j8hTxQL5wTXsi9ZRBZ2xtG2QqSNkJSgmvumusp2D5y+vzK0kCEWhKHENLU40fpn9McUg
         Xuzoz03fVrEtC9x3q/aSzQAHRgyXDsxuh+VOs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=QoLD+bpMa+wk1idz5XGaVpB4P5Gp8QBw85CZR7ZXE7E=;
        b=MAi768Rwb3qMb33VBuzpewKlfX1kc6C9Arku5zF1fC5yIWt/OZJV2K+4p9BSrbozFO
         GZpTyHMjUV82GIxg7mkoOcOKDeuiPYl2hCqlHRS5bYJZdrw611IJfFsESPoSDERSSXXu
         phJTtsTszZGwTposLtfuQTr503ePCTuVtcrHf7aAOldTa/l/NSi4DMCPP7Iw9eczQsBA
         SoRa/KORO0SsJU6ijBqQoKp/l+dYpqGtNG6Rm0Gc5OyRhWMJAtdOYuKXqSl28dvyD8XG
         nfCt+TaESt+3ZTj9PAFsLnRsqRH0hztB4/gc4fFUJSkUmx8KmYXI1/U3wwVY2TT8XTVH
         w/Cw==
X-Gm-Message-State: AOAM533s6On+QrSI+sJRN9JNzJCS6n1hSISTwpq/bgh8wt/tLaoIQjbJ
	hGhGd55YLv01o/tzPilm9GwgN4EIBXzsNg==
X-Google-Smtp-Source: 
 ABdhPJwDrjnl+168eM93UJs1FpltWP9rNEqdf2eRVwQtlxZzOLtbA47DON79dxENMWuccpU1FMAitw==
X-Received: by 2002:a1c:447:: with SMTP id 68mr674265wme.69.1638299189917;
        Tue, 30 Nov 2021 11:06:29 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:6cef:ab65:ac78:cf03?
 ([2001:8b0:aba:5f3c:6cef:ab65:ac78:cf03])
        by smtp.gmail.com with ESMTPSA id
 m7sm2995791wml.38.2021.11.30.11.06.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Nov 2021 11:06:29 -0800 (PST)
Message-ID: 
 <55af67fe8a78b8e76a4610819dc83263e00c18cb.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.4.1.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Tue, 30 Nov 2021 19:06:25 +0000
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Nov 2021 19:06:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55449

A build flagged for QA (yocto-3.4.1.rc1) was completed on the autobuilder and is
available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.4.1.rc1


Build hash information: 

bitbake: 44a83b373e1fc34c93cd4a6c6cf8b73b230c1520
meta-agl: 83c5764a38902c6d17f106ea545533192ebd46fe
meta-arm: 55ae0eb1a6c210e6e87f5a553a1ebbb7dcc7a725
meta-aws: c92344938ab4d37de8bd8b799186dbbe3019a069
meta-gplv2: f04e4369bf9dd3385165281b9fa2ed1043b0e400
meta-intel: d0f1c1ebfd9b7fe8d22c6a62208f78bccc6f3bf6
meta-mingw: f5d761cbd5c957e4405c5d40b0c236d263c916a8
meta-openembedded: f31b9854b13e46cb74569538a33c36730c00c695
oecore: 70384dd958c57d1da924a66cffa35f80eb60d4b0
poky: b53230c08d9f02ecaf35b4f0b70512abbf10ae11



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org




