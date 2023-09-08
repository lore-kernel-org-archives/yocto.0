Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C73CEEE57E7
	for <webhook@archiver.kernel.org>; Fri,  8 Sep 2023 08:51:34 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.34911.1694163087730623002
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Sep 2023 01:51:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=irDiXb/N;
 spf=pass (domain: linaro.org, ip: 209.85.167.51, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-50098cc8967so2929633e87.1
        for <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 01:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694163086; x=1694767886; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vwlqk56rV/udhL3EixMD829yrlV79a2j855NTflrZTw=;
        b=irDiXb/NZEoj1bYQAwRotLXEH+0493AB8RIY6GVQnPOPodqNXsNGtXKm8tXSIiWhkR
         fnRgh3RtV1BRflVGmCpdXzVFDRRJxmayCkFqPOKJupQoYRyZBxMN/+TefK3URiuEDz/V
         GVPy/p8TQY87WuGmBn/w6t7+0t/yoJoUHu3V09hx7+6SXAdEDzCNuiVXEUe3gET3jplW
         pyTsZMOT3O/xEeSl+SWyfcYKOD6IUJd66yoa0sSxJHbbeLlnZpTd8hR3crxcoaSvQFwd
         06vQZwQZyaNJywCkFeF03Dfx/ciU25MZu61rvxpcvjVLVv/bskigLugpdHlgyCvkguzS
         0hdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694163086; x=1694767886;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vwlqk56rV/udhL3EixMD829yrlV79a2j855NTflrZTw=;
        b=YROKCw6I5MbHJhMiCpNQF4zd5puBXA8nqIFwi6UwNAkpRwZ6IMXTsPjEvbVVpQSlDd
         w5PSpOr3NpFGvfAq0zxiLbnUq7YTQT4Zj2BjhYlzsukyRwIIKLJ2zqza93J7rIkPNdni
         LxsUtScDl8Ew4lRQEauVKrr+m8UNkqsgjhEckkFK7R1Qi2gNOQ2a9hkrOCAoTFdz/Tjx
         xl0jFc/CMAo0LsYVKy/z7fZR9DmZhC66/bA34j3hNtjlMMbzt1vnzVKdshiXH1MUaMVl
         bXMN14mNObOWIK4q7GLnjiWvIm/XKmVNkXqeEGRxMa2ZCnG6FFqiGiWXHwemPNYzATAa
         mmcg==
X-Gm-Message-State: AOJu0YweCMLbCDOKVd5FWp+DpRPbnJ1b6jWq6A25dcaMUImaAPlf8YcB
	R2zjkAPJN5HwN+EocDUMXlVONA==
X-Google-Smtp-Source: AGHT+IFpoA8KTgtdtuscGoM/Klqf97DxUFsFVdm0oDLCxA1P1djb8xu+X2kaHhIx9RgbOoi0vn/RFg==
X-Received: by 2002:ac2:5f64:0:b0:501:c3ee:62ec with SMTP id c4-20020ac25f64000000b00501c3ee62ecmr1436107lfc.12.1694163085711;
        Fri, 08 Sep 2023 01:51:25 -0700 (PDT)
Received: from nuoska (dc7g6tyjby-d304c4945t-3.rev.dnainternet.fi. [2001:14ba:16cb:a800:e107:c77f:6058:ee33])
        by smtp.gmail.com with ESMTPSA id eo16-20020a056512481000b004fea9cf6a32sm213883lfb.204.2023.09.08.01.51.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Sep 2023 01:51:25 -0700 (PDT)
Date: Fri, 8 Sep 2023 11:51:23 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Martin Jansa <Martin.Jansa@gmail.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Yoann Congal <yoann.congal@smile.fr>,
	MOHAMMED HASSAN <hassanchattarki@gmail.com>,
	yocto@lists.yoctoproject.org
Subject: Re: [yocto] Memory requirements for building images with different
 architectures
Message-ID: <ZPrgi+npm5MBZ6QC@nuoska>
References: <c737f04f-7bf3-c0f6-4816-87ea4f5c81ac@bootlin.com>
 <3255.1694152878755997438@lists.yoctoproject.org>
 <CAMSfU+579tns5UJg4=6ryXsstfPYar9YCvghbT3piuNzzCVbWg@mail.gmail.com>
 <CA+chaQdiOTNYTsrhPzbT=9aB3fT9Mo=DoorvNm4Bay2ioRTsdA@mail.gmail.com>
 <20230908072034c8e150e6@mail.local>
 <CA+chaQfrtYAJTAkm8VDJFG4E0uQHZR6Uho0H3HZBOgH7nOLLoQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+chaQfrtYAJTAkm8VDJFG4E0uQHZR6Uho0H3HZBOgH7nOLLoQ@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 08:51:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60951

Hi,

One related improvement is to avoid IO to disk completely as long as RAM is
available. By default file systems like ext4 will start writing all buffers
in the background after few seconds which is wasted IO if memory is available and
rm_work will anyway wipe the tmp to produce a target filesystem image tar ball etc.
sysctl settings are:

vm.dirty_background_bytes = 0
vm.dirty_background_ratio = 90
vm.dirty_expire_centisecs = 4320000
vm.dirtytime_expire_seconds = 432000
vm.dirty_bytes = 0
vm.dirty_ratio = 60
vm.dirty_writeback_centisecs = 0

http://events17.linuxfoundation.org/sites/events/files/slides/elce-2016-mario-goulart-mikko-rapeli.pdf

It the best case in-memory file systems like tmpfs will do but it's hard to estimate
the disk usage and memory size beforehand. Overflowing to disk IO only if RAM is
getting full scales better.

It makes sense to monitor build system CPU, memory, disk and network usage while builds are on
going. A lot of odd things will pop up, like IO bottlenecks (most CPUs idle), suprising network
downloads.

And deleting files is a heavy operation and if flushed to disk, it's annoyingly slow
compared to wiping an entire partition and creating a new file system on it.

Cheers,

-Mikko

