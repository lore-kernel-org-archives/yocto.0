Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web11.5184.1621321022651899353
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 May 2021 23:57:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=cB+EdOp2;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id o6-20020a05600c4fc6b029015ec06d5269so851553wmq.0
        for <yocto@lists.yoctoproject.org>; Mon, 17 May 2021 23:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=daBuJv9AbEOGdnkZoZz9OBpfpszQqlVvwupZFFz9IYk=;
        b=cB+EdOp2U4zwhL0Oau5SknncsgOCa2JV83gxqJZPLMA2j7ZU9IML647nmc3AfDlZXp
         lrRLdxCiKAXsdAgAwp1mVIRoedMu2nfCt8lQ9yvSUne0gP+T3yaDqab9P7VLMhwXwiHl
         FgiZZsR3GSaLaHmG1kiynjXa7ssu1Mo8BLorc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=daBuJv9AbEOGdnkZoZz9OBpfpszQqlVvwupZFFz9IYk=;
        b=ZEVnnlkRpy5rRjaewI6bTceB0Rc+secjuWK6SvQoLYW0HTo8qy2ROg9vEKVJBnl9uV
         icVqmczWaCA5mcOzX39aVyfqVSZfs4TnF9WniDu/Mevxj2rOvITrQBvHIyaQdTPdnPvW
         GB7dYKe/Lik7zHORqjeyWnNTXoF/RVKsEJ71EsO3qBynI1bjS4FpbTMAWNlxfSvL08Jx
         7excbm+3hIlNthAHajXV8EtkRUCw+irOXzIPbJTsxHtoSLuIFTN4OS9Af0HCn+UWp5tN
         L4+NSj1Pn6SIBss8yMw2LmZiB2Y/J84RZ5RlhFDBj6E3qUo96a18PKO56TJUfpAewHt1
         Hkiw==
X-Gm-Message-State: AOAM532SQuUPix28qTVRMW5HJ/4glhppCcVHcr6fIV0c50YSUE8MpOgm
	jUQRKbkCcrQKUG0dB+gLPzwPkA==
X-Google-Smtp-Source: ABdhPJw0N0PheH++9GPakzDKt0PPFpjWYInZlwkNqQzKgAFUkiNJmk3TA6pF29gxP++Z71vqahXwLQ==
X-Received: by 2002:a7b:c20e:: with SMTP id x14mr3187953wmi.117.1621321021139;
        Mon, 17 May 2021 23:57:01 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:c468:ba30:74bf:a356? ([2001:8b0:aba:5f3c:c468:ba30:74bf:a356])
        by smtp.gmail.com with ESMTPSA id q20sm1959412wmq.2.2021.05.17.23.57.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 23:57:00 -0700 (PDT)
Message-ID: <824c8a0e7910ec93cc1cd61acca4c8cf803ebda3.camel@linuxfoundation.org>
Subject: Re: [yocto] Make do_image_complete wait for an earlier task
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Mikko Murto <mikko.murto@hhpartners.fi>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Tue, 18 May 2021 07:56:57 +0100
In-Reply-To: <a28139be6f11445c9f4af80d748457c5@hhpartners.fi>
References: <a28139be6f11445c9f4af80d748457c5@hhpartners.fi>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-05-18 at 06:15 +0000, Mikko Murto wrote:
> Hi,
> 
> I've created a task do_create_spdx that gets some data from packages after 
> do_package. The task is currently added with `addtask do_create_spdx after 
> do_package before do_packagedata` The data is then enriched and combined in 
> do_image_complete by adding the combining function to IMAGE_POSTPROCESS_COMMAND. 
> For the most part everything works as expected, but for some packages 
> do_create_spdx does not complete in time for the combination step in do_image_complete. 
> Is there a way for me force do_image_complete to wait for do_create_spdx to have been 
> completed for all packages?

This seems a little odd since image.bbclass has:

do_rootfs[recrdeptask] += "do_packagedata"

which means do_rootfs should only happen after all do_packagedata have run.
Your task is added before do_packagedata.
do_image and do_image_complete should run after do_rootfs.

I'm wondering if the issue is more to do with reuse of previous build artefacts where
sstate is involved. Does your added task account for sstate?

I've been giving some thought to SDPX and SBOM during our build process
so I am curious what you're doing, is the work public anywhere?

Cheers,

Richard




