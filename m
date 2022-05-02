Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1406C433EF
	for <webhook@archiver.kernel.org>; Mon,  2 May 2022 14:32:29 +0000 (UTC)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
 [209.85.166.41])
 by mx.groups.io with SMTP id smtpd.web09.11328.1651501945109278442
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 May 2022 07:32:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=ByfXSQ1L;
 spf=pass (domain: konsulko.com, ip: 209.85.166.41,
 mailfrom: scott.murray@konsulko.com)
Received: by mail-io1-f41.google.com with SMTP id c125so16142306iof.9
        for <yocto@lists.yoctoproject.org>;
 Mon, 02 May 2022 07:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version;
        bh=kgywc5re1lt/FilrPzXiQlefoYxtC++r4UFPZEjs1lQ=;
        b=ByfXSQ1L494DxG0DpLpEKNUbi12Mgk6Xca1CpKlwzWpGeqXmYkM4t4ljSZV0cn5ec1
         VsIGWVefyN3+cBpZJ6fwXdXlVAgcMJTb/Z2V8ANmgS+XLJ6j2MrU5WCeMNsLXk+zMrmA
         e4ST16VDLwogdQdsr5EgElFQRVMxRZNJE1Huo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:mime-version;
        bh=kgywc5re1lt/FilrPzXiQlefoYxtC++r4UFPZEjs1lQ=;
        b=jZbg/JvM2Xi78r5p8WcHlDEvUr4KwyiVcAEQYKMlVeXf/ZWRtk3855gp60TAtgv2XB
         wuNFIF0I6kAyy9ai8TqyebhQwtIN/63khx4i0XI9S8LDsrtgoge1bWNA/Pb4N1xpSHtf
         ILGi1xOufbs7yHyl+oCfJ9s8RQ22Yz7vvCG/hJZpi3TlUCjVst3XXT3UJ5zsZpccV3Nv
         UIrpQ03kE3+wd3rJjWlrdX3GYCIh006XFfuoP3NtolT2uW+wVnJj+JRGUVzl9OX47x2j
         DPcCAuG9xOojQFYMdlRgEzw7fZY1LlekzmHwzvdZmlF1djGz8xKxvc5RVhwacVoONnF4
         hgsw==
X-Gm-Message-State: AOAM532Qpq9BmWLMv7PZjR9dlGd9aSClLsvFVlmSJlPsjF6QOtpGXDt1
	eKhj8hv/yMGMdGUYKrdgZobu5w==
X-Google-Smtp-Source: 
 ABdhPJzO5NK5Lh/w4RKuyYVYPTWAWu2LdCEzCUhxjkIngYbhEl1mIPg/w6/GCel6mcH6cxXsEkG0Xw==
X-Received: by 2002:a05:6638:3291:b0:32a:8493:fad1 with SMTP id
 f17-20020a056638329100b0032a8493fad1mr4678873jav.19.1651501944039;
        Mon, 02 May 2022 07:32:24 -0700 (PDT)
Received: from godzilla (192-0-174-222.cpe.teksavvy.com. [192.0.174.222])
        by smtp.gmail.com with ESMTPSA id
 z3-20020a05663822a300b0032b3a7817dfsm3091742jas.163.2022.05.02.07.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 07:32:23 -0700 (PDT)
Date: Mon, 2 May 2022 10:32:22 -0400 (EDT)
From: Scott Murray <scott.murray@konsulko.com>
To: Edgar Mobile <heideggm@hotmail.com>
cc: Joel Winarske <joel.winarske@gmail.com>,
    Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding systemd to yocto
In-Reply-To: 
 <DM8PR16MB43575294B7F770E74634A9D1C7C19@DM8PR16MB4357.namprd16.prod.outlook.com>
Message-ID: <ff0fbda-7955-d0f1-4dc7-a78f34359768@spiteful.org>
References: 
 <DM8PR16MB4357BA2349F9D42C1786A5E8C7FD9@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CABKMkPLwm1e_S+pdqw4j_J-oVokVWphdXiMAkiaME3MZvnyg3Q@mail.gmail.com>
 <5c7ccb89-5af6-78f8-f6b5-416d8e83369@spiteful.org>
 <DM8PR16MB4357D696EB8115CD320E035BC7C19@DM8PR16MB4357.namprd16.prod.outlook.com>
 <DM8PR16MB43575294B7F770E74634A9D1C7C19@DM8PR16MB4357.namprd16.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 May 2022 14:32:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56970

On Mon, 2 May 2022, Edgar Mobile wrote:

> Ok, correction: I complains about pam missing.

My apologies, I'd forgotten that wrinkle as we'd been sidestepping it for
a while in AGL with some custom Weston startup.  There are a few recipes
in the Weston stuff that explicitly mark pam as a required feature when
using systemd, so you'll also need to have:

DISTRO_FEATURES:append = " pam"

Scott

