Return-Path: <m.cavallini@koansoftware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CFA4CCA463
	for <webhook@archiver.kernel.org>; Sat, 17 Oct 2026 08:04:55 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.2583.1792224291053573886
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2026 01:04:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@koansoftware-com.20251104.gappssmtp.com header.s=20251104 header.b=fL7bJwr2;
 spf=pass (domain: koansoftware.com, ip: 209.85.128.52, mailfrom: m.cavallini@koansoftware.com)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-49fbb2acc90so6998555e9.2
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2026 01:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=koansoftware-com.20251104.gappssmtp.com; s=20251104; t=1792224289; x=1792829089; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :from:content-language:references:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=OczpvtOkSlYcxITmIVWVzB1DePRiEaOveW0Pw/jdhEA=;
        b=fL7bJwr2mYKAoYASLPg4dC6ekJC652wn+Zd8aFbnxRlSexja/D43zAN4RloixIWowc
         eDXJ1jqqy7YsS/Vg10yU7ZaKFWurcMgXrpsPhEXGwN+BnbYUhVnxS/sGBD8BAXx/vttj
         df6ydRMS9glJZLNhLcpfPBHfbNIrJGiUNm7WQVMt+CYSjW34Bb4XditThFA0yVS07ECr
         IuMLK7i9C3cEPPqaTvHBYpf29NZ1AARE71LwSQZSxCJU0TAJBgLDfu77TzkmwzmuToMT
         4cSpH6RD11/f4JmZ0kSkKcTJTzSLzMXUHqv5RSXHKveQya2N1oQQikTgO0QCoeQynIt3
         AS7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792224289; x=1792829089;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :from:content-language:references:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=OczpvtOkSlYcxITmIVWVzB1DePRiEaOveW0Pw/jdhEA=;
        b=q+o1J2hIpRbC+LJS/Ovl5mVLWSZf9QHVp7f3JQjC3GXYwlkw2E2QSPQ6H8Jk9k0S+N
         M6qAZ+H/yTUECyyy84R1Au3MLt6eBFaCvFjLDJ4O9pAHOFz+8GYTRr8MhWrbX+c/p9WZ
         gZDsEu0GtwZ1bO1T+FRRJoO6bvpTE0cYJ1A8PVldUYr/Uq+AX/TuX6IJ6STSOpfr/611
         TOGSx8TfDeArPvwMVzPkie9/UOFu3QlOYGZkPPbe8ZPyUwQkkx+noTjlG5/MZyXPXhm8
         31l2YTPYrY2E6Klp97tq5w1yiS4FBvT5LV5UzunJ1Ju9B5GzW3vjug6hH1OfMdhwMADz
         2vnA==
X-Gm-Message-State: AFq9FYKKTvtGtHW+DkVMTj5xUs9+W1YZPmDKn8ncdq0GDGsOQPYPz23V
	F2tFjlD0vfi37t9S+ZQRRvJIvsfG7cy+Ur4j7cmUUMAFdAqtuxkA349JxZ+jkkLA8uywXb1aNlx
	KgsVp+5ig
X-Gm-Gg: AYBFou3yS6YM04Li2UfG/p88XN0CCxuSXcRbSeK9YmKR/C8qZepHR1duAJ/Qklzw9AK
	JIzclcYLfKN8iG1ZXFH34wilLQlfim+zAf9FxUBrnx1WAJX3qy6+uf8AxRedl5Dr2ZG1PnB1Y2u
	cq2BmQzl8DPfg5DSO/XQnKmQaCQLx4XHfZFlfUX6d7GUVFQNV6JLuo6zIWLjiepbQI3CFts8/PM
	42F3BJXikF+VqErhv0/lX42zDqD+vlKk5TxU/79QVlJJcZZcJ9QwohCuSYhjgpl2ANAOd/9FdWO
	D6hl2Po+ZPZU07gTeasaprlYZs+86gxQEy0TUAJFBSGKIBTllB47/ScRViU3oJn0Vx831UTmyOv
	oO16DPD1ZJnAHyA9ZNggjV7sSdRqqhJEUrUmrtcd8mBmZG8aeYWoGIWf72Cy5rkF6bZ/xGWFv4u
	ERT/jKkdDd1jPbteVTPetDs2A38HhJvoQHZMdK1oLv8qh5b9yvGWVEexpS200ZkSmWZ5ZfE5Vy0
	P/z0NmuhrNWeh1MNeNYz9OmpyZDDFgrOJVZL9RULbTo9WChCIQd72Z7NIg=
X-Received: by 2002:a05:600c:6218:b0:4a1:ddaa:571e with SMTP id 5b1f17b1804b1-4a1ddaa5803mr12836205e9.15.1792224285604;
        Sat, 17 Oct 2026 01:04:45 -0700 (PDT)
Received: from [192.168.1.2] (host-95-229-48-41.business.telecomitalia.it. [95.229.48.41])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1ce325107sm94293545e9.3.2026.10.17.01.04.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2026 01:04:45 -0700 (PDT)
Message-ID: <03b93f9b-56f9-41eb-800e-97b1809c592e@koansoftware.com>
Date: Sat, 17 Oct 2026 10:04:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: m.cavallini@koansoftware.com
Subject: Re: [yocto] Interest in an open-source vulnerability management tool
 for Yocto-based products?
To: yocto@lists.yoctoproject.org, rz@zippel.org
References: <BF261D3A-0BBD-BA4E-A259-659FCE539341@hxcore.ol>
 <DA15A4AF-6AE2-BB41-BB93-694E7E28074D@hxcore.ol>
Content-Language: it, en-US
From: Marco Cavallini <m.cavallini@koansoftware.com>
Organization: Koan sas - Bergamo - Italia
In-Reply-To: <DA15A4AF-6AE2-BB41-BB93-694E7E28074D@hxcore.ol>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2026 08:04:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66764

On 17/10/26 08:57, rz@zippel.org via lists.yoctoproject.org wrote:
> Hi everyone,
> 
> We have been working on a tool to help manage vulnerabilities across 
> embedded products built with Yocto. We are considering releasing it as 
> open source and would appreciate feedback from the community.
> 
> Our starting point was the manual work after a scan: deciding which 
> findings need attention, understanding what an update changed, and 
> avoiding repeated reviews of the same components across builds and products.
> 
> Instead of adding another CVE scanner, our approach uses Yocto's |sbom- 
> cve-check| SPDX output. We wanted to make use of the information already 
> available from the build—including component versions, recipes, layers 
> and vulnerability assessments—to reduce manual work. This is especially 
> important with Yocto, where a component may already include a backported 
> fix without a change to its upstream version number.
> 
> The tool currently helps users:
> 
>   * See multiple products and release streams in one place.
>   * Compare scans to see which findings are new, no longer reported, or
>     marked as resolved.
>   * Keep review decisions across builds when the component version and
>     vulnerability stay the same, and reuse them in products linked to a
>     common base platform.
>   * Identify possible update candidates from indexed Yocto recipes,
>     either within the current release branch or on a newer baseline.
>   * Explore dependencies recorded in the SBOM to help understand why a
>     component is included.
>   * Use CISA KEV and EPSS information to help prioritize findings, and
>     record review decisions and their rationale.
> 
> The screenshots below illustrate five parts of the workflow. They use 
> fictional products and illustrative security-review data, with component 
> versions taken from Yocto Scarthgap LTS:
> 
> 1. *Portfolio overview:* product families, released and nightly builds, 
> open findings and release status in one view.
> 
> Portfolio overview
> 
> 2. *Components and review status:* component versions, recipes, layers, 
> review status and possible update paths in one view.
> 
> Components and review status
> 
> 3. *Component dependencies:* a component's dependency path alongside its 
> findings.
> 
> Component dependencies
> 
> 4. *Scan history:* open findings over time, with markers for release 
> updates, layer changes and review decisions.
> 
> Scan history
> 
> 5. *Upgrade preview:* possible update paths and their projected impact 
> on the configured release gate.
> 
> Upgrade preview
> 
> CRA-related vulnerability-handling requirements were also a reason for 
> starting this work.
> 
> We also want to be clear about how this was built: the codebase is AI- 
> generated. We would make this explicit in an open-source release and 
> welcome feedback on the code and the approach.
> 
> Before publishing it, we would like to ask:
> 
>   * Would this be useful to the Yocto community?
>   * Is something similar already available that we may have overlooked?
>   * Is related work planned or already underway within the project or
>     wider community?
> 
> We would be happy to contribute to or work with existing projects where 
> that makes sense.
> 
> Thanks for any pointers or feedback!
> 
> Best regards,
> Robby
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66760): https://lists.yoctoproject.org/g/yocto/message/66760
> Mute This Topic: https://lists.yoctoproject.org/mt/121800778/1051792
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [m.cavallini@koansoftware.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 



Hi Robby,
It looks interesting to me.
Could you tell us under which license it is released?

Thanks
--
Marco


