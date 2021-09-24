Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,SPF_HELO_NONE,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD12DC433EF
	for <webhook@archiver.kernel.org>; Fri, 24 Sep 2021 13:08:45 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
 [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web10.7835.1632488924257824164
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Sep 2021 06:08:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=koPyRLbw;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id r18so6173011qvy.8
        for <yocto@lists.yoctoproject.org>;
 Fri, 24 Sep 2021 06:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=YiJfff9fMAc1NEIpDVtxui+mTsMbS+b4LjFNXItwJmA=;
        b=koPyRLbwTW6LjO15jx6FYLN22SUaJwRUNzFb1hqWmr1mOMzzfdrmUK6LegNfPhSU+V
         KyvVfc5ngxYOAzf9O2GBoLvJz/IfJIGj4Gqa6VOBLohBGosfZpqMftNL2ZrDISVtabpD
         EwgrUhH07Xy/Tv1Zzp30zHa6jBACBmYDyFjEy5kGBhk9p8Vhjnf96PU9yzzvjE0IvDmy
         E7dg0SVzhZ6qs6BWUr6+OvcNHYqgZKiMIs8lEQIzwH5yhEzTx0Oh2ZnRNOiY2IYp6eRB
         SWDt0X/Olaw/qdlpObup9a224le1wX+t6xul5NRpwoGwo4awt6Q+zrkiYylV4aq9uLIg
         +CBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YiJfff9fMAc1NEIpDVtxui+mTsMbS+b4LjFNXItwJmA=;
        b=3b+inMoYba7YdKHcJVb3aIXLoTxSh33FxK5kOH3+Sz3jxO3Rd8BjlJVgDT8A1D2kDS
         EAbBbHGm6HwF/Za1nVKEEjoGBwuZk+X1+cJLP5/T5ZTEEtKtJuV0O3fwGQPvYV6bh+p+
         1ZSICVdLGzKly3VEItFrIn2+R/o8qEEvsAtG+QzqyoTT0FJRMk1+ZTdbIfukOSuY+Lf8
         3WlFI/Q+SWBQPPd/EHbTDUznNEFDfdr5KZikUS57KjP6vTC1kDIchKiUiMu+8rjco7WB
         5i3rhodKXwk3EC45BQmK8RYT7pEa9AeCijo9NDCo+XxAKNd7FKwH1PNYWwp6PHdi7s62
         SG2g==
X-Gm-Message-State: AOAM5327VuFZvrIH8UGzbu2Qbn0Teiv0k9L/gfzEORQhqN1ITO4+uXKg
	00iTQV6r+vNsgUc2O8j4gS0=
X-Google-Smtp-Source: 
 ABdhPJwA4UV6VagZkzW79TjvLzLz23zEu+75T6Pn7S8T+v1Gac2vSg42ewCmALZQhgz8qJAWDffr9Q==
X-Received: by 2002:ad4:446f:: with SMTP id s15mr10030662qvt.3.1632488923378;
        Fri, 24 Sep 2021 06:08:43 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 i67sm6387426qkd.90.2021.09.24.06.08.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Sep 2021 06:08:41 -0700 (PDT)
Date: Fri, 24 Sep 2021 09:08:39 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Markus Volk <f_l_k@t-online.de>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-rockchip][PATCH] use uuid instead of hard-coding
 root device
Message-ID: <20210924130839.GA29617@localhost>
References: <20210917220121.26663-1-twoerner@gmail.com>
 <a7d1f5cd-8bb6-ba56-c2b4-39dfb283a22c@t-online.de>
 <20210923115919.GA25233@localhost>
 <254c0237-f5c0-8f64-61a0-a5e8835d64f4@t-online.de>
 <20210923205548.GA5309@localhost>
 <255e8117-5135-6f34-3b7a-7b9b94f0b603@t-online.de>
 <CAMKF1spTrnpFBLJVace9WcMesgEWw-7h9mqYA7Gp2HG_Gn=Jkw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: 
 <CAMKF1spTrnpFBLJVace9WcMesgEWw-7h9mqYA7Gp2HG_Gn=Jkw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Sep 2021 13:08:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54843

On Thu 2021-09-23 @ 09:46:40 PM, Khem Raj wrote:
> are you both using systemd or sysvinit

Ah, good catch. I'm using sysvinit.

