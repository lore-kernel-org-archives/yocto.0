Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
 by mx.groups.io with SMTP id smtpd.web10.13993.1602773195121043397
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Oct 2020 07:46:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KaSnwUBT;
 spf=pass (domain: gmail.com, ip: 209.85.167.169, mailfrom: mr.nuke.me@gmail.com)
Received: by mail-oi1-f169.google.com with SMTP id c13so3364247oiy.6
        for <yocto@lists.yoctoproject.org>; Thu, 15 Oct 2020 07:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=pkOycCxzZsOF3FwDlZxKDTXLiOlscUK7gsXqEKiOCgI=;
        b=KaSnwUBT11yL7mLQmG7qkgJugCeGIKNnibooiCMVHleBfbuRsu1tq3UxCbgRx37a6y
         WxoPrHgxEB2/KItzINi5YVFzw9mWMIk4Jb8X52La5zdriYbC0MOYgDD0V9F+HSyfOFUQ
         tjrbnhrNIZ8e4/dj75Z2ju/xeGwyeXm7lNHreKVwDhSosaw1+OHaQlDKD8l2p/7wS0u0
         mWo6sCAHhqUdmuAtyLINVmNyoAXUB+SHagsY+/6Mh+D5omEeeCpXp809KaVAjfbcG2av
         o5dQbDeWqiMC6mxr3AYHHIsfcIH3xHmbWNXHYETt/3sNqZajrIC8xHz3rr6hK4/bpzPU
         dOJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=pkOycCxzZsOF3FwDlZxKDTXLiOlscUK7gsXqEKiOCgI=;
        b=KYnczFJE1XwwqTrP+MEfsMH/FUoWqCan+SvGyw5fV+ZReNVXt1PxYrfi5UrowDUaKy
         N/ZR64OE5+UAADdcRs6L12y9Oovh4hZLiwvN7+Fx5ZTibdZgteaeufLW0oG3fCHikBLz
         dP1efRUEFY0kf0rGtXiPit4WYlCj6k4MdSbxo4NCWc9W8/xASYWa0JF/5Wns1rak0jV2
         Vv1kcNZYcMRbqUaXZcan/vJHV3+Z2Oy+0nDGzo7uykg1NECOqSFuiQj0cya5PXEVia+P
         ZHGdVm8SPj0CjUbzO0bUfNzfzkOJOnyrV0s0jh7yJg/t6RB66271D2wgawD4d3jmPotQ
         bTOg==
X-Gm-Message-State: AOAM530BxApF/qAun6ly3ShFE9cDxTri9kL+7I5ZKn6QEJXIzPLYQ3fH
	mEMCF18ktaiBjFwkXe+4gM2NO3olRPE=
X-Google-Smtp-Source: ABdhPJylEnLHJIwf3kXgZs9szZHyre9P+1zBHrjMoRX8dw597+nykb7k/wcgRHc22oRtyLVUJE5pAw==
X-Received: by 2002:aca:7582:: with SMTP id q124mr2258960oic.106.1602773194032;
        Thu, 15 Oct 2020 07:46:34 -0700 (PDT)
Return-Path: <mr.nuke.me@gmail.com>
Received: from nuclearis2-1.gtech (c-98-195-139-126.hsd1.tx.comcast.net. [98.195.139.126])
        by smtp.gmail.com with ESMTPSA id u186sm1385051oia.51.2020.10.15.07.46.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 07:46:33 -0700 (PDT)
To: yocto@lists.yoctoproject.org
From: "Alex G." <mr.nuke.me@gmail.com>
Subject: How to assemble FIT images with linux and OPTEE?
Message-ID: <e7cca6ee-ca65-9d07-354e-070bf8b63614@gmail.com>
Date: Thu, 15 Oct 2020 09:46:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to write a recipe for a secure boot flow. It would look 
something like this:

	images {
		optee@1 { "path/to/tee.bin" }
		linux@2 { "path/to/zImage" }
		fdt@board { ... }
	}
	configurations {
		secure {
			kernel = "optee@1";
			loadables = "linux@2";
			fdt = "fdt@board";
		}
	}

I've tried to "inherit kernel-fitimage", but soon learned of a couple of 
limitations:
	* images: No way to add an optee binary
	* configurations: No way to add a "loadables"

Secondly, since this approach would use files from several packages, I 
think it would be better to have the recipe separate from the kernel 
build. Bot how would I use files from another recipe? All I could figure 
out was to first put them in ${DEPLOY_DIR_IMAGE}.

What would be the "correct" way to write such a recipe?

Alex
