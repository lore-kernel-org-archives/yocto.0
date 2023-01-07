Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 752A6C46467
	for <webhook@archiver.kernel.org>; Sat,  7 Jan 2023 13:05:54 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web11.19566.1673096745623916516
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Jan 2023 05:05:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20210112.gappssmtp.com header.s=20210112 header.b=eo5aAVKs;
 spf=pass (domain: smile.fr, ip: 209.85.221.50, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f50.google.com with SMTP id bk16so3588205wrb.11
        for <yocto@lists.yoctoproject.org>; Sat, 07 Jan 2023 05:05:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:organization:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pQfYSrLjvLegoo7sLY60l7tuGqemqaa6vZbwO8pUN8E=;
        b=eo5aAVKspjA8xDvMiVKT/2v/DbToXssilTR42g0WcBYKxi6bTb5qhFLDBBDrC4g+lk
         u4da4wSJr+Zh7P3dK1Kg/YqnazfGKwn5t/5Zq0AljSWDd8Uv2i34VuWURehIlS8b5V7t
         8RiX3Jc48/jgBqt6GjQwuEWwvsCt2RbuoZ7pS7xlRfLIe4bqCF0p8+l0Bh+aU90T1hY/
         M3brjRUV0IW3NckpUhfTLq3aPVUeDGdD9vvyxuC5vGcZMlRdS77hnCCfjMBlgpxEO87Z
         ofOqpJR2Cp8qihj6jr6xLG9L2nfiq95DRdUSfs/o7+a4nBZDUzGqWvrn7cyaVEK/TaOP
         EVtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:organization:subject:from:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pQfYSrLjvLegoo7sLY60l7tuGqemqaa6vZbwO8pUN8E=;
        b=Vy6IDsV2doaggmV2nI8w14K19n3mI4v36tqkg3jiXOjMYZRNRG3Df0dFKFcEgKdxUY
         mocpnh06HiPjv0P9InYC/l8VXWzRNGoCn1zn2+6bTONrS9y2uHtpGn/YEptciR8ydZJa
         sfrKM/Es7AzEC231KOJqkdLM+erDE3ggmFKnjd9n2rWYvEE8F3KheYRe1qyKSvBoPDJ6
         I0jja7IoUXawnhyaC9xhQX5JVVStiJCjr2rgEx4j3rETWe9uTDQPI0eLorHlR+g/ra6r
         1NE3jN+Xa8OOqsWBuQ6m6LGWfy7zZNgssNOozs5AnPmFw+lF7iKY1ic8n8KgGI8N1f0O
         bUHw==
X-Gm-Message-State: AFqh2koz0+BshmyoH9eSrFXfH87lbDs7jnU8goBoYbuEd/WPDkVuWf6+
	FnRJCGu+xRXtwANqlQpA1yVRB2wixPrdo0i6
X-Google-Smtp-Source: AMrXdXsU+r42aUryurxecrE84giYEBVkUx+VEaaBVwBRuT01knBzruFQE4/lGb4GREXWL3wYgvKVOQ==
X-Received: by 2002:a5d:6849:0:b0:280:70e1:c24f with SMTP id o9-20020a5d6849000000b0028070e1c24fmr27107530wrw.68.1673096743393;
        Sat, 07 Jan 2023 05:05:43 -0800 (PST)
Received: from [192.168.0.26] (89-159-1-53.rev.numericable.fr. [89.159.1.53])
        by smtp.gmail.com with ESMTPSA id s2-20020adff802000000b00241bd7a7165sm3783036wrp.82.2023.01.07.05.05.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 05:05:42 -0800 (PST)
Message-ID: <0942e45b-2973-f095-61f4-3aa8b90f4080@smile.fr>
Date: Sat, 7 Jan 2023 14:05:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Yocto Mailing list <yocto@lists.yoctoproject.org>
From: Yoann Congal <yoann.congal@smile.fr>
Subject: Git repo setup for Yocto upstream contribution
Organization: Smile ECS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 07 Jan 2023 13:05:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58933

Hi,

Since I plan to work regularly on upstream Yocto and contributing, I 
wonder about the best way to best setup my git repos to do that...

I've started with the upstream poky repo but when I make a commit on, 
for example, bitbake, my patch applies on a bitbake/some-path file which 
does not exist in the bitbake repo (only "some-path" exists in the 
bitbake repo).

Is this something I should address ? I found some patches for bitbake in 
the mailing list that are for "bitbake/..." paths... So, maybe, basing 
my patches on the poky repo is totally OK for now...?

To the Yocto maintainers, how do you manage this (poky repo, combo-layer 
and individual bitbake/doc/meta-yocto repo) ?

Note: I have found the "combo-layer splitpatch" tool but it does not 
look like a full solution... Maybe I'm missing something?

Thanks!
-- 
Yoann Congal ("yocton" on IRC)
Smile ECS - Tech Expert

