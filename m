Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FA72C46CD2
	for <webhook@archiver.kernel.org>; Tue,  2 Jan 2024 07:24:36 +0000 (UTC)
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com [209.85.167.65])
 by mx.groups.io with SMTP id smtpd.web11.24435.1704180273028022548
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Jan 2024 23:24:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=g3IkaTSa;
 spf=pass (domain: linaro.org, ip: 209.85.167.65, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f65.google.com with SMTP id 2adb3069b0e04-50e7f58c5fbso6376766e87.1
        for <yocto@lists.yoctoproject.org>; Mon, 01 Jan 2024 23:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704180271; x=1704785071; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i4TV9Jt9ZSdjDXTlRMfy05xE0gSD6M/+U4KJnLKqmaw=;
        b=g3IkaTSaN4ltwbSPPHgBn/lWLycN8s91sFYof6RfgbdUFMOHoUUbXpERjOk8dEhvd6
         gprFg+vpmVKEKphIg5++yjMCblTdT2MlgvgeqihTJN2Ii7o7LXE/ybI37xkgt3vZRICR
         +LYloFepMRNMgUAzygSDQXlvJDaeZLLVHubnEHYl6eT4WBhk+YOXZRTLSUvbvh1H7vvb
         Zj0+NqunBvdFMEuHWUqh3F1n9cpd1DlNwSgGbQBRjj9yZ/8obVDAosyZjVb1zVlMmX4m
         WYvMVQZfO7c53Pkca95TOT5DunL9stCuMH6VM68AKzGDytdFXUI/K54w4+AP0JyDcplL
         Sbaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704180271; x=1704785071;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i4TV9Jt9ZSdjDXTlRMfy05xE0gSD6M/+U4KJnLKqmaw=;
        b=sumvl+A4RAidJj8JNHHmg/bIsh+LMVGm5gum1tuSNqXEbUvUQ+I/M49RhUvizkqy1o
         xfEOtMdmKBxXv5eQNzRWDqpGpuH895ZJ5Z/czE4QNT91YSEkx3y8afP+1qrKKwcAvi82
         sK0sRlFdfucCP7E52g9dfysQPp24r5UCFsopvkLOt7Z1794JtLHIeflXXNAr44O/JZqn
         tQgC/PupGfp5tdSLrfNvVVCs0Z4r7lMpuLzFbJUCszU09hKRZnwyPjUNTyVmx+uOLHKs
         SjR7pqrTO7JKtz4+Rrr7Jf2Fkgh2ZSAJ1pZFAKyaAbMPneClLf8fJCTqWmWJpUfiK5bo
         ptWw==
X-Gm-Message-State: AOJu0Yx0iMS/d+hH+UXeTz9aunvaZnUYNWPnORylcRM2Z6VgSg+ygJ+w
	jnWCgJoBYWDTwabaG3Ene8KbnzyRWMqKb0jJ3r7Bn7hk1yLnoRRN
X-Google-Smtp-Source: AGHT+IH1uTpid9LxbEAq5DRqHKUXcj2wdaySrVKthMODode98iOqEE4T9JRwlMVwd7S+P0JmeHEP5w==
X-Received: by 2002:a05:6512:466:b0:50e:7928:d368 with SMTP id x6-20020a056512046600b0050e7928d368mr5441048lfd.118.1704180270737;
        Mon, 01 Jan 2024 23:24:30 -0800 (PST)
Received: from nuoska (dc7g6tyyyyyyyyyyyyhbt-3.rev.dnainternet.fi. [2001:14ba:16cb:a800::183])
        by smtp.gmail.com with ESMTPSA id v24-20020ac25618000000b0050e74ec73f6sm2913414lfd.124.2024.01.01.23.24.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jan 2024 23:24:30 -0800 (PST)
Date: Tue, 2 Jan 2024 09:24:28 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org, fabian.hanke@bosch.com
Subject: Re: [yocto] CVE Scanners and Package Version
Message-ID: <ZZO6LMkb9ECnPFev@nuoska>
References: <01of.1703328456869824351.98Vs@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <01of.1703328456869824351.98Vs@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 07:24:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62063

Hi,

On Sat, Dec 23, 2023 at 02:47:36AM -0800, fabian.hanke via lists.yoctoproject.org wrote:
> Hello Yocto community,
> 
> we must provide a SBOM for our Yocto based product which will then be used for (internal) CVE scanning by the security department. Generating the base document in cycloneDX format is fairly easy (thanks to the nature of Yocto).

Note that SBOM is mostly used for documenting SW components and their licenses.
Obvious but needs to be made clear.

> But we do not know how to include information about CVE patches for each package in the document. Not providing these, will cause a lot of “false” feedback on CVEs for specific versions which are already patched (but version number did not change). This problem was also mentioned a few days ago in the presentation from David Reyna: https://youtu.be/PegU1G1bA80?t=1127. I like the proposed solution of adding a vendor specific string to the package version. But I'm still wondering: How would the CVE scanner vendor know which CVEs are included in a yocto specific version and which are not?

If the intention is to know CVE paching and analysis status of a product, then I'd use
the yocto upstream tooling for this, cve-check.bbclass. SBOM and SPDX are tempting but not actually
useful for CVE patching and analysis work, except when they show that a lot of old open source
SW components are embedded into various binaries.

The work needed to push CVE data into SPDX and SBOM is not worth it and it's better to put
the saved effort into fixing the actual CVEs. If management wants reports, generate
them from cve-check.bbclass output, but note that CVE database is a moving target too.

AFAIK, and I'd be happy to be proven wrong, SPDX and SBOM don't help matching SW component names
and version strings so that comparison against CVE database information works. Only license names
are standardized.

Cheers,

-Mikko

