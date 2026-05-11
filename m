Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C96CD484E
	for <webhook@archiver.kernel.org>; Mon, 11 May 2026 20:07:24 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.59565.1778530036624594606
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 May 2026 13:07:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=YGj9zcBY;
 spf=pass (domain: gmail.com, ip: 209.85.222.172, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-90cd409a795so18320985a.1
        for <yocto@lists.yoctoproject.org>; Mon, 11 May 2026 13:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778530036; x=1779134836; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OTBQ4hzRpYE1eOQnj0ZlHhbGLQjr4QrLN/qtQFCTUFE=;
        b=YGj9zcBYNtSfXKgWH1fDb9HwvQYW91jtQUaTMV8jEGTRh5BdARQCZY2ckEEnn/Vt/U
         ollPOc92d34awJKEaobqZSz5mxxbDVKlMAgCGMyrboO1bIwjqU6mjTo7nzr0j4DVJCFT
         uziRryeWEfrp9DOlEXEXDuISqflzRvO3yshvQTGpMMQsVivi4dZQTHdCuvGyU2Ve0uPu
         amK4aBFKNOXSwy6Ku4aaq0ZoRVCvdTs/oHnwtuWaIYipmprUu2i5jYwuZ2hZbIUQ7+2Q
         74yonudCkwmuCih6Gpzhpi0AiaJ/6bDxAoKCMynZh2kTdAHaZIaWK91xRUDZxIMYkjOb
         uFPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778530036; x=1779134836;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OTBQ4hzRpYE1eOQnj0ZlHhbGLQjr4QrLN/qtQFCTUFE=;
        b=KES+svkFi5UiCaDXaU3ai7RBwJBdqQhL6jADJv9fySa/GzO4IJvIdbjKvO2JHQUg1a
         nu+/pIXTHSupLLAO2PyBjti8fztgt1dxHNysHSAUVBGnrZQxedcWC172Iu+kmDPhL0Gq
         4i8MzDTbrvoW1/wsb1I3rxk578+lsBzpf97w2Uodjp4es6CaNB/TJkCu8cBXFW42R3+h
         IWpP9RFYu5+ydmOLomiNXyrbYLD0gXnbw4DCATM6Idb4Umy22YRl5/97vd+03SPeQi5U
         BEGfZg4jHjPbMIUxNNrM7GBA54KYpAQk/HYI6yWep1fbryTdL59cC6+QZ05UGzb/MKa+
         t4Eg==
X-Gm-Message-State: AOJu0YzMziLbeTBsTzkgxdTvAAOleXJISu4Jotmj2CrRvjUWwEuluf4j
	yglMewx2Y7lWUD1g7bbkNULNGqtyTTGUDCLHlvNzztByHNHLg5vhMGNM
X-Gm-Gg: Acq92OEHd7x17hyUIGIdUKB4rexzs75bYMZn/BbBl+mTw8TK9b3EflUtYN0XfEGoSKh
	vs10nO6FY79duDWXg9aKWF2GHGHGou+phEl+9LfSLluTREN1Yt3giEO4xlcgrWj6z96qULvos54
	vYdWXhjg3jds9xSJ/AYXuDkkZsNGTo+9HMkbMUkTkHU6l2vXKodAp7UMOtdSokASlYYDrEaWkjc
	AQ016qhmVN/GlG2alkwPQYy0bo7K/XypkYtPvBt8e7QIJk+AseOK+NbBz5+cF6bZhCg/1J9O7q0
	CHwMSpMOatBXEKuzyF9GOv0JafqV/aB9dnoC/nv0p3b7K3dMMG2Od61gaV3OEClX8it2SJYcIRQ
	LIRHKfjmcvEFmgOIOuqnoTQWyEnfzIQMPPybOCKPMh6clD8HOD2z7n0Nz5m82rVp6PmV6UVW7uD
	cCQAyy5VMzx35pEhChipjpKssqTRCf1NPWavTHLv/UnMW4kKuVT9IqxLVIrvS1opa+JGYdkwD7H
	A1eljv17PZZt3Tr+gvWcCZWi8EBpIMdJNwXrNc/skZ0hfI=
X-Received: by 2002:a05:620a:5794:b0:8f9:9fe9:bc79 with SMTP id af79cd13be357-90cb3d9167amr138183885a.0.1778530035598;
        Mon, 11 May 2026 13:07:15 -0700 (PDT)
Received: from gmail.com (pool-174-112-62-108.cpe.net.cable.rogers.com. [174.112.62.108])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-907b966f5f1sm1155057785a.8.2026.05.11.13.07.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 13:07:15 -0700 (PDT)
Date: Mon, 11 May 2026 16:07:13 -0400
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Fang Wu <fangwu@qti.qualcomm.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [PATCH 0/2] genericarm64: enable QCS615 boot critical configs
 for SystemReady
Message-ID: <agI28eONjuopeqCU@gmail.com>
References: <PH8PR02MB11449F3D24F262F954397B357FE3D2@PH8PR02MB11449.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PH8PR02MB11449F3D24F262F954397B357FE3D2@PH8PR02MB11449.namprd02.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 May 2026 20:07:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66530

In message: [PATCH 0/2] genericarm64: enable QCS615 boot critical configs for SystemReady
on 08/05/2026 Fang Wu wrote:

> Hi Bruce,
> 
> This patch series enables the boot critical kernel configs for
> Qualcomm QCS615 (Talos) platform to support SystemReady compliance.
> These configs are required for generic Linux distribution ISO images
> to boot on QCS615-based hardware.

merged (it is a bit easier to deal with the patches as non-attachments).

Bruce

> 
> Fang Wu (2):
>   genericarm64-pinctrl.cfg: enable CONFIG_PINCTRL_QCS615
>   genericarm64.cfg: enable CONFIG_INTERCONNECT_QCOM_QCS615
> 
>  bsp/genericarm64/genericarm64-pinctrl.cfg | 2 ++
>  bsp/genericarm64/genericarm64.cfg | 2 ++
>  2 files changed, 4 insertions(+)
> 
> Thanks,
> Fang




