Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.5370.1596104903610120911
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jul 2020 03:28:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Rn6Jgsr8;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 337E8E01F46; Thu, 30 Jul 2020 03:28:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0BF2E01F43
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2020 03:28:21 -0700 (PDT)
Received: by mail-wm1-f66.google.com with SMTP id 9so5221673wmj.5
        for <yocto@yoctoproject.org>; Thu, 30 Jul 2020 03:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=uBA+ZJKqElJtPbvtPgv2gRC+rROUGEP+STDQj7DFQc8=;
        b=Rn6Jgsr8Rpuc/V+4WujaYIaHkoY2Zkx5fwNp8EJXBo0QNSoENYIHSFv3g4W6PFd2u4
         trQ/SSvHt8vv2oTd8HPtximzlKSc9mosHGmBJjX1vdbeb0U0Hib4ClFJzWs5LpvropDy
         ZFkEzfIu9hzG7sjaQcdK6CZTiDHfcPUyqp7Pg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=uBA+ZJKqElJtPbvtPgv2gRC+rROUGEP+STDQj7DFQc8=;
        b=Tlz0baGEBKtkT3NvE/XADILyrCyZw1qScwJXsCfb5jN4AKKQDKrXZ/HFz2+DVZJgUz
         kp/r3mxCe9D8/KofXeBGuhO/YPKa5Eu4Bp187tn5B9oCw95EDxh5Jm/q6Pw/aw1E3JXd
         063v7/7RPuDvWQElfwbHvCLV8FD5EDu8h6aG7S7Oj/DvZMvrxMIwZsKj/1vWATyE63Iv
         vx/StS8oBRlN8y0TGO/daAsCVsUxKKOkb1Yh/MWTy27vh8ffieEaWlzYUOv+lYV5MWQP
         BDNRtX5Nd0ZEtdMcC/Q/aNCy50W1PMFK56WqqxlOuLRlofS7Hoj3+YBTq8638Xj51cz7
         ZzaQ==
X-Gm-Message-State: AOAM533/z8UzSjgwH/Jxmn4rPErAvBm23vuWqLPsqdXj2eV2zR4jWROY
	eyamkZYvb1ocmgwapGuYCdgSAw==
X-Google-Smtp-Source: ABdhPJwLG3Gq0OooYBqjmjiVQfe1HBYGrqmT9daMIDt4aCKTQjx77HCB4t9i+7BpFuC7zwBymOw2LQ==
X-Received: by 2002:a7b:c38a:: with SMTP id s10mr13518640wmj.13.1596104899848;
        Thu, 30 Jul 2020 03:28:19 -0700 (PDT)
Received: from 6.8.9.6.7.0.f.f.a.f.4.5.6.3.d.d.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (6.8.9.6.7.0.f.f.a.f.4.5.6.3.d.d.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:dd36:54fa:ff07:6986])
        by smtp.gmail.com with ESMTPSA id o9sm9088371wrs.1.2020.07.30.03.28.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2020 03:28:19 -0700 (PDT)
Message-ID: <2a963f4bef787067aaa680c73df08d5ac1307a02.camel@linuxfoundation.org>
Subject: Re: [swupdate] [meta-swupdate][PATCH] mtd-utils: Remove patchs
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Stefano Babic <sbabic@denx.de>, Zheng Ruoqin
 <zhengrq.fnst@cn.fujitsu.com>,  swupdate@googlegroups.com
Cc: yocto@yoctoproject.org
Date: Thu, 30 Jul 2020 11:28:16 +0100
In-Reply-To: <2de062d5-c94c-e8e1-eae4-26d0663ec8ee@denx.de>
References: <1596071889-91188-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
	 <2de062d5-c94c-e8e1-eae4-26d0663ec8ee@denx.de>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-07-30 at 10:34 +0200, Stefano Babic wrote:
> Hi Zheng,
> 
> I do not discuss abot the correctness of these patches (that I will
> aplly to meta-swupdate, -master), but about mtd-utils version (for
> this I pick up Richard in CC). There were in last month more breakage
> around mtd-utils due to patches (required !) that are applied to an
> undefined (from recipe) version of mtd-utils.
> 
> In fact, we have mtd-utils_git.bb in poky, and as "git" version, the
> expectation is that it points to TOT. But this is not the case, and
> meta-<layers> outside poky just add some patches to a not well
> defined version.
> 
> Should we also replace mtd-utils_git.bb with a more precise
> mtd-utils_2.1.2.bb ?

Adding patches in bbappends is always going to be high maintenance. Are
these patches swupdate specific?

The recipes use "git" in the filename and then set a sepcific SRCREV
and set PV correctly. This is an accepted behaviour. I can see how
renaming the recipe would also help for certain usecases but both are
really correct for different reasons.

I'd also note that git versions in oe-core are always locked down to
something and that something is therefore likely not to be TOT as they
don't get updated frequently enough.

Cheers,

Richard






