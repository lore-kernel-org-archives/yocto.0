Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFBE1C433F5
	for <webhook@archiver.kernel.org>; Thu, 29 Sep 2022 14:48:26 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web08.11578.1664462905190185082
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 07:48:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=jYFHgtOY;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.169,
 mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f169.google.com with SMTP id i17so953402qkk.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 07:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=+qQxeMcjZETQR7kqMvUpojGuql2zhczZRsS7D2I90+w=;
        b=jYFHgtOY1WI3Mdff+WCsX6Ls4DRY8QtGWpy4lQh4n1OsFHKm/x7To+fi0zjcDSWmZS
         Fl+E35tLh5j2Mf+uKDI65KHqXaosK2ARvsxd4GZg6MY4JYF1/K+s/ZHP7XnLj24m+BVA
         1xXMAj93EXuQGgQ3IR0fHvY05pFVihXzHmJe07aay1azsyxYGO+15Nx5Wqvjt0fPI0e2
         5w9S1tHS+Rig3APC8I30lOovPfKD0CHF23qpys8uxs+nxaPc6PyeYcVQlV1MwrwCbfEu
         3xd7RqOBnMJL7j0UJQv+yhjNTSRMHDC/cBargpSpOdGtrdPfeqvXFcj6kE7TsW+4YTbs
         bs/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=+qQxeMcjZETQR7kqMvUpojGuql2zhczZRsS7D2I90+w=;
        b=UWsT4DzJtQlxv/iiNCp2eJo5wYOqYlXdIRrhdBvElfO5mhA6Akied6tuG7or3JBVLE
         8Cll/ZMNQnKXjVmqe01mkBSiV/tDwi6slorsAq8dF2m8DXMHQxG4iPqu1wzPpO3fGDd5
         pZS0jEr9buxuPw7M2PgBZZfXS0lZVB3t+tssWK7F4geb6+1tzfZOq+N1GqxyMSq3hA/m
         b/Jzzv3ivNaUrgDYTmpyfGqckxVIVmngL7127HtHRs6Sw0PhpMpc+2QLMBh2ZgIPBRjn
         djKoAw9TMSnA6XmsTjJYgBCtiTrXqftTqJq0xZoT34g4hLpeGKBMDCj1bw74TJcg/fQ2
         8qew==
X-Gm-Message-State: ACrzQf3ZywTJF3eu98mMVtsRGe/9jOAwen9jWpRE3dVUpvo8ZM7JvvOs
	HaPouVE9eR7Udx/0pxPgBHJUNA==
X-Google-Smtp-Source: 
 AMsMyM51sX/N7/pRDec8Og+zobgwQMXaUKztw8KGlx1c3Ql0jbAMgc0LnQMKopZY6DqyzA2KInd7Zg==
X-Received: by 2002:a05:620a:44cb:b0:6ce:b942:709f with SMTP id
 y11-20020a05620a44cb00b006ceb942709fmr2508144qkp.124.1664462904200;
        Thu, 29 Sep 2022 07:48:24 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a608:5600::59])
        by smtp.gmail.com with ESMTPSA id
 w13-20020a05620a444d00b006cbd92ca141sm5938560qkp.133.2022.09.29.07.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 07:48:23 -0700 (PDT)
Date: Thu, 29 Sep 2022 10:48:22 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Naveen Saini <naveen.kumar.saini@intel.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-zephyr][PATCH] qemuzephyrrunner: allow to pass QB_GRAPHICS
 to qemu cmdline
Message-ID: <YzWwNpdssXSrIuHJ@kudzu.us>
References: <20220928041420.3047817-1-naveen.kumar.saini@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220928041420.3047817-1-naveen.kumar.saini@intel.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Sep 2022 14:48:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58215

On Wed, Sep 28, 2022 at 12:14:20PM +0800, Naveen Saini wrote:
> Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>

I wasn't seeing this issue.  So, my "testing" isn't very valid for it,
but it did work for me :)

Verified in a batch CI job.  See https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/654231304

Tested-by: Jon Mason <jon.mason@arm.com>


> ---
>  meta-zephyr-core/lib/oeqa/utils/qemuzephyrrunner.py | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/meta-zephyr-core/lib/oeqa/utils/qemuzephyrrunner.py b/meta-zephyr-core/lib/oeqa/utils/qemuzephyrrunner.py
> index 7b486ce..c0a9e0f 100644
> --- a/meta-zephyr-core/lib/oeqa/utils/qemuzephyrrunner.py
> +++ b/meta-zephyr-core/lib/oeqa/utils/qemuzephyrrunner.py
> @@ -157,6 +157,7 @@ class QemuZephyrRunner(QemuRunner):
>              bb.error("Unsupported QEMU: %s" % self.machine)
>              return False
>  
> +        self.qemuparams += " %s " %self.get('QB_GRAPHICS')
>          self.qemuparams += " %s " %self.get('QB_OPT_APPEND')
>          self.qemuparams += " %s " %self.get('QB_CPU')
>  
> -- 
> 2.25.1
> 
> 

