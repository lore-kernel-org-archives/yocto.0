Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com [209.85.219.65])
 by mx.groups.io with SMTP id smtpd.web11.7.1594743621927035978
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jul 2020 09:20:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=PEzeWSJw;
 spf=pass (domain: konsulko.com, ip: 209.85.219.65, mailfrom: scott.murray@konsulko.com)
Received: by mail-qv1-f65.google.com with SMTP id t7so7737847qvl.8
        for <yocto@lists.yoctoproject.org>; Tue, 14 Jul 2020 09:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version;
        bh=BcyBoQ5JWK7VOtM84aevgQxIpsCfPieZr2rYjyo+CVk=;
        b=PEzeWSJw4hWiQ/XfqKk7lYyRfvs9wS8kr13GKAGd+VqPRch87Ev/jM98mbVNfuwRSN
         +7Tj0phocdWlXbWVkRjFZ32QpH5rUjTbyw5w5lb1zc3yNgNz/1UHm0cOskDnNvtAUq1X
         te3a3HFg2HICfPZexYMODXOclNtHYkRtnhbw8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:mime-version;
        bh=BcyBoQ5JWK7VOtM84aevgQxIpsCfPieZr2rYjyo+CVk=;
        b=PcdB2NMbbh3IA1nYHI2m+V/KVvZCsbsg+vTXtxfHXL3ZNVi4HfoySfRGuyAdiQh3dx
         gdnslwXsWwDWb45KvI+CNZU4DbMM66dLaCN8qdgY60cJXnlzWtDQ3g7ueSDf0Ut8dqZZ
         AzEdJfwT+Vo+ORVi7LpqLoQp1YyOwO9kI2+Yb4C0sOaOv4fHwCXHaEPlVckg0ZSWPdnq
         AZlD7MpjXECQ4LjD3O/KmUkG2uCXAfnokfisUmSbsS9NiIrw5QjwUgehFkebRXNcmUr+
         Xgv63FfVvmUQ6I7h10U50ab6JFetYXHP0AioUuTbKTdIdCq5vN6BCnWIOmeRpQ19LbMq
         zHgw==
X-Gm-Message-State: AOAM5318skJlPy263bRHm/ymBS7c9oCaNojOxjK4gq4JzjSLy213eeHE
	JE26BagI6+WBPu/Vcvx6PGaYsg==
X-Google-Smtp-Source: ABdhPJzhZOwQaC9Ed/BbR1UbniFBk5ISaU1WuaSjtBcBkwYFk3gNNzhnnc5hjhFK8o/Bh6RPo1hhIA==
X-Received: by 2002:a0c:aa9b:: with SMTP id f27mr5510363qvb.9.1594743620926;
        Tue, 14 Jul 2020 09:20:20 -0700 (PDT)
Return-Path: <scott.murray@konsulko.com>
Received: from godzilla (198-84-179-103.cpe.teksavvy.com. [198.84.179.103])
        by smtp.gmail.com with ESMTPSA id c9sm22040769qko.24.2020.07.14.09.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 09:20:20 -0700 (PDT)
Date: Tue, 14 Jul 2020 12:19:58 -0400 (EDT)
From: "Scott Murray" <scott.murray@konsulko.com>
X-X-Sender: scottm@godzilla.spiteful.org
To: Yi Zhao <yi.zhao@windriver.com>
cc: yocto@lists.yoctoproject.org, joe@deserted.net
Subject: Re: [yocto] [meta-selinux][PATCH 0/4] refpolicy: update to 20200229+git
In-Reply-To: <20200707082914.30094-1-yi.zhao@windriver.com>
Message-ID: <alpine.LFD.2.23.451.2007141131280.11165@godzilla.spiteful.org>
References: <20200707082914.30094-1-yi.zhao@windriver.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Tue, 7 Jul 2020, Yi Zhao wrote:

> Here is the changelog for this is patchset:
>
> * Drop refpolicy 2.20190201
>   If we still keep two versions of refpolicy, it is difficult to maintain two huge local patchsets. So drop this version and only keep the git version.
>
> * Add patches to make systemd/sysvinit can work with all policy types.
>
> Here are the results with this patcheset:
>
> Machine: qemux86-64
> Image: core-image-selinux
> Init manager: sysvinit and systemd
> Policy types: minimum, targeted, standard, mcs, mls
> Boot command: runqemu qemux86-64 kvm nographic bootparams="selinux=1 enforcing=1" qemuparams="-m 1024"
>
> 1. All refpolicy type can be built without problems.
>
> 2. With parameter selinux=1 & enforcing=1
> The qemu can boot up and login with all policy types.
[snip]

I suspect I'm really missing something, but I'm unable to successfully
make this work with poky + meta-selinux and its meta-openembedded
dependencies with either sysvinit or systemd; I see denials on boot and
cannot log in due to denials on reading /etc/passwd.  That's also the
behavior I see without this update, so I'm wondering if I'm just doing
something significantly wrong with respect to configuration.  My
local.conf additions for testing are just:

DISTRO_FEATURES_append = " selinux"
PREFERRED_PROVIDER_virtual/refpolicy = "refpolicy-targeted"

Any ideas?

Thanks,

Scott


