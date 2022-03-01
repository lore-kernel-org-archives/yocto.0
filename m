Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44850C433FE
	for <webhook@archiver.kernel.org>; Tue,  1 Mar 2022 17:43:30 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web08.89.1646156608826219316
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 09:43:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=FSaBWnyB;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id p9so21683899wra.12
        for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 09:43:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=sUSdQwFUun4LNwzjm2KMcF32MtvfFrZrLoeB3BN+bek=;
        b=FSaBWnyBYMXfKDaPWfZbxpYa+yiXi0PsAMpH3AGygEgF0+SsUgXPSDBMOB22p1j2rq
         Hzmx8RNIDBe0akMf8dyyIEIWvxVaww8PxKIAuLcfh0hvpFAZ2VBawFIQJZrSAHX8QHOj
         Nt4bSckpO4eLrLDVkl0z9FrGDQgIMkBbBZ6Bo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=sUSdQwFUun4LNwzjm2KMcF32MtvfFrZrLoeB3BN+bek=;
        b=lg+X+OiL80Ab2Uur+dexM5A4huPya/8XCOrsCzJgC/STyAarQTBFJA6q5ERgjmxYlb
         OCejc9giIOghZGlm1ZR83nikvNJUF0YmAkQuZgXPveh0dAAxtGYvY2rQ4+GrdgT9F5n+
         y0Te6cuWrhzcbKQMfZth/1RQ/bCAi7ohbryQhguQOmjEVOVMphlt0WfTKiOJxkCkf+qq
         kszGIHp9vRC7L1ByJFXf8YWlSVpmPj04cGwMETb/48bpPo3U+ZZjxbOKeMtP+yndTRs9
         WoG/lrpVibr+2uxXF7iA+ErZj4biZmBHtlPMJsS5lkzzx4kG75HpeWus4obnrv/j+4nJ
         B3og==
X-Gm-Message-State: AOAM531LJTImTCdUXEDHDaPNsEdVCkxpbKvz3aiw8iGVIQ0/fR1xpLuM
	uW2zmm2uM0RGPjyY0CsSkSwPZw==
X-Google-Smtp-Source: 
 ABdhPJyZymnD3GNTNYod9EtgBPtf6hE6Jhc/40KfSGD2DuDyfxfAvNLk8v6Hb5COBKkCupCUCJ1aNg==
X-Received: by 2002:adf:a39e:0:b0:1ef:b97f:ae91 with SMTP id
 l30-20020adfa39e000000b001efb97fae91mr8887132wrb.591.1646156607016;
        Tue, 01 Mar 2022 09:43:27 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:5f88:ec89:14b:c380?
 ([2001:8b0:aba:5f3c:5f88:ec89:14b:c380])
        by smtp.gmail.com with ESMTPSA id
 h17-20020a05600c351100b00381807bd920sm3829330wmq.28.2022.03.01.09.43.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Mar 2022 09:43:26 -0800 (PST)
Message-ID: 
 <f7ea571e61df97106398eb560a1303ee057989f7.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] [yocto] QA notification for completed
 autobuilder build (yocto-3.3.5.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org,
 yocto@lists.yoctoproject.org, OE-core
 <openembedded-core@lists.openembedded.org>
Date: Tue, 01 Mar 2022 17:43:25 +0000
In-Reply-To: <1cf08e1b-a113-af04-fa1a-7056aef5f711@gmail.com>
References: 
	<3060b5d3e361823a872bf956f6d09ef816d6857c.camel@linuxfoundation.org>
	 <DM5PR1101MB2348B0D3AA38CFD2B77E4F89BB019@DM5PR1101MB2348.namprd11.prod.outlook.com>
	 <1cf08e1b-a113-af04-fa1a-7056aef5f711@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Mar 2022 17:43:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56344

On Tue, 2022-03-01 at 06:13 -0800, Armin Kuster wrote:
> 
> On 2/28/22 11:44, Teoh, Jay Shen wrote:
> > Hi Everyone,
> > 
> > This is the full report for yocto-3.3.5.rc1:
> > https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
> > 
> > ======= Summary ========
> > No high milestone defects.
> > 
> > No new issue found.
> 
> As a YP TSC member, I am fine releasing this build.
> 
> I will let Richard send the final word once the rest of the YP TSC respond.

The TSC discussed today and is happy to release, thanks!

Cheers,

Richard


