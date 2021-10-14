Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 405D9C433F5
	for <webhook@archiver.kernel.org>; Thu, 14 Oct 2021 16:37:23 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web09.615.1634229442154429205
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 09:37:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Zq/AwAVn;
 spf=pass (domain: gmail.com, ip: 209.85.214.172,
 mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id n11so4557693plf.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 09:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=DmyuBUMeRk7BfAqNQ0Vlxd2vpvjhBszgnCUUsVo9aUc=;
        b=Zq/AwAVnIk6w9jCclM3UPp1RDWlppuVsGHxifDHD5RJFuvgKKLweZKUK4umTBv0ROK
         OaMHDPgs01Pne6HsDO/Vx0k16kce2OujQr18rrDmdVBCuW/Z0tnihUwvBkl8GXFZ1Hjg
         xPQmDULTc22mRjlkO29EzwGxWGJO/vhV0n6NkflVJ72OrKfzCY1p+JdI95AWgsbYAu9m
         bOhQhvCiYpsj2xrFkmDpTnPzIfkgfQHtBX3h0tWdlusw9flk+uWxtvOVao017xzd+/W9
         3cJ2To3IAa20Jaa0k1Qu27KcmuEeUs4bgQplqL+XP6EbAxYoP439q3/RWjKjKIK9R5xC
         dwvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=DmyuBUMeRk7BfAqNQ0Vlxd2vpvjhBszgnCUUsVo9aUc=;
        b=gj4dg4bBNpCyj+bK8H4DXt1QMlQAXJBZ/hVmitTccgHg7Z72h77UXJaifn0yR59mOp
         ECI/nOuMDiVwNj4YArsRi31SjwH6ojNXztYr7zy5WnVMhp59byt2TgZMGDZnFLrBkTTx
         ohpkDwEX1fbsPXyYgCENSohaaw7IWcG2W3xDU0R6zLIZkck1bf9h9jlKaNzTyj5MbGkB
         w3XYFfzZah36ljUi/+bh1KgJQIe4/cwBu8otcpKFPMqLd2BGxmgmE7oj0Clu0IT5oVFS
         6m0nOJGLhd1SopwaNCjKjtN3Pre5/e6gETq8l5BzkC5jXHQmPzTW4/OEqP+DzcODtsrX
         2DuQ==
X-Gm-Message-State: AOAM530ErhHUxQ03n8gq98gYspH/zFK8eQG66VDt7yKGlDOKyJkDi+I5
	RjU4fS3C+pqYfybfANJYqQo=
X-Google-Smtp-Source: 
 ABdhPJzpDIgyACss+5KxISs5O+j4g2PK81sNp+/K0TKkVibibtGXveBzcHmzvF9chj8qHHI4wPdKvg==
X-Received: by 2002:a17:90a:7892:: with SMTP id
 x18mr21764198pjk.33.1634229441305;
        Thu, 14 Oct 2021 09:37:21 -0700 (PDT)
Received: from ?IPV6:2601:646:9200:a0f0:f921:a382:258b:3024?
 ([2601:646:9200:a0f0:f921:a382:258b:3024])
        by smtp.gmail.com with ESMTPSA id
 l11sm9141782pjg.22.2021.10.14.09.37.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Oct 2021 09:37:21 -0700 (PDT)
Message-ID: <6e28f89b-2482-44a3-90ea-7b686a749aa2@gmail.com>
Date: Thu, 14 Oct 2021 09:37:19 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.2.0
Subject: Re: [yocto] docker fragment missing conntrack and netfilter entries?
 #meta-virtualization
Content-Language: en-US
To: crawford.benjamin15@gmail.com, yocto@lists.yoctoproject.org
References: <i1rt.1634228602998685993.yIPa@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <i1rt.1634228602998685993.yIPa@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Oct 2021 16:37:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55076



On 10/14/21 9:23 AM, crawford.benjamin15@gmail.com wrote:
> Hi,
> 
> I have just completed a bringup of Poky on the ODROID N2+ platform, but 
> noticed that Docker failed to start, complaining that it could not load 
> the "nf_conntrack_netlink" module.
> After checking docker.cfg, I noticed that a few configuration options I 
> expected were missing.
> 
> Shouldn't the following be added: (?)
> 
> |CONFIG_NETFILTER_NETLINK=m|
> |CONFIG_NT_CT_NETLINK=m|
> 
> |CONFIG_NETFILTER_XT_MATCH_CONNTRACK=m
> 

seems fine. Please send a patch for enhancing it via docker.cfg

> Thanks,
> Ben|
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55074): https://lists.yoctoproject.org/g/yocto/message/55074
> Mute This Topic: https://lists.yoctoproject.org/mt/86318266/1997914
> Mute #meta-virtualization:https://lists.yoctoproject.org/g/yocto/mutehashtag/meta-virtualization
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

