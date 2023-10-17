Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F8ACDB474
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 09:52:17 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.204230.1697536336853818837
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 02:52:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=oMRs4I+2;
 spf=pass (domain: linaro.org, ip: 209.85.167.54, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-507a98517f3so2826373e87.0
        for <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 02:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697536335; x=1698141135; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uQKO/Pt0nYyPNsfFu1+rkicRWWdLwklRXTNx7p89Ra0=;
        b=oMRs4I+2klfUEQIfuYZTR67Zzbe+QQGTvdFuyqbXdFDHjD/+aoUNHVFf0gBSCbpeRq
         2YfsT4+YNiP+h78ooGO80cl1/BpwXClQyZuw87GqoQm6l1n5fajYeSAEXMkRtqE5TwEd
         7httQwpavxHTvhFXQdeYcaudrNaDsd2fj1fJjZDaIDaYYIk+eXo4WWdhgs5jfoC4sHyq
         l1vn7PLa42nd0UVywtyyOFsmuHVd9Q4f0nd1VBhX6A8pm5NF2zEfZXVPNhX+KdfU3On1
         VJXurfHy5xp2X6Y26rYEnhO57QdYNBfw23VyPWmQTxTMkKjbJ9Nu3d6cC4q9ufRwjuQV
         RslA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697536335; x=1698141135;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uQKO/Pt0nYyPNsfFu1+rkicRWWdLwklRXTNx7p89Ra0=;
        b=G7cbb4tnccr5IEKkV4edOlIygMRkCqJGG8gqA7pzzYEM4rGfbS7y8IoxEp8yVoNvT7
         NvbGd1dnIbfv6w9xeJ40dScFOfXQDZgqrnoAEh1M0ZZgiJxDdm0GEcdraP74yUeMWZlo
         0EUzr45M7LAkFCx06qzt0Gy0c7u+EQxaHqCuPD4kL0WMYe4y/qtqxqXA8zJy14emfTDG
         NIWXfXZAuTldKt9T5tlbaiHuSFVA/A5okCqBlkSYJmZ+Yhc+Uh5Jz1qQneiybTiOejTm
         TvwDVwpgHO8p/eMB1guGZVp487yYB5dMaVGA/0PpToCHmh89+2Y9AnznVpYQA9AelBFY
         K+9w==
X-Gm-Message-State: AOJu0YzXrfLDDOVvTqA1izDb9bk8SIIy7A3kc2TVqL/feYI12I2nCT78
	SD0zgXh5ZA9EpSglDxNMfFqHEQ==
X-Google-Smtp-Source: AGHT+IENoTOIU/m+rrdKJ7qpm2jY/zSwpMefOJ7weLTB8obj403s17RF5EziqcjnI5ZQrAOiM/XTGw==
X-Received: by 2002:a19:750e:0:b0:500:7a21:3e78 with SMTP id y14-20020a19750e000000b005007a213e78mr1243922lfe.55.1697536334925;
        Tue, 17 Oct 2023 02:52:14 -0700 (PDT)
Received: from nuoska (dc7g6tyyyyyyyyyyyyhbt-3.rev.dnainternet.fi. [2001:14ba:16cb:a800::183])
        by smtp.gmail.com with ESMTPSA id x30-20020a19e01e000000b005032ebf8a00sm209571lfg.197.2023.10.17.02.52.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 02:52:14 -0700 (PDT)
Date: Tue, 17 Oct 2023 12:52:12 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using cmake... how?
Message-ID: <ZS5ZTMlhyMdLPEQ_@nuoska>
References: <20231016112233.221066-1-foss+yocto@0leil.net>
 <AM9PR03MB7012E6E478F4D2899CBE0F5192D7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS4ghiXPvYDDW_LC@nuoska>
 <AM9PR03MB7012DDCF969FEAAD42A8817992D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AM9PR03MB7012DDCF969FEAAD42A8817992D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 09:52:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61368

Hi,

On Tue, Oct 17, 2023 at 09:21:27AM +0000, Dave Hitchman wrote:
> Oh I dont know. This is getting to be a bit annoying.
> I had already included the inherit cmake line but now it seems maybe that you dont need to put any cmake commands in... not 100% sure, no one seems to explain this, I am not convinced.
> However I want some extra flags and I have read that you should be able to:
> TARGET_CFLAGS += "-DBUILD_PYTHON_BINDINGS=ON -DBUILD_SHARED=ON -DBUILD_TOOLS=ON"

Don't put these into CFLAGS. I presume you want to give these to CMake via EXTRA_OECMAKE
variable to be used at do_configure time. Check poky tree for documentation and examples,
docs are also here:

https://docs.yoctoproject.org/dev/singleindex.html#cmake

> but building that gives me
> + cd /home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0/build
> + do_configure
> + cd /home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0/git
> + TARGET_CFLAGS:=-DBUILD_PYTHON_BINDINGS=ON -DBUILD_SHARED=ON -DBUILD_TOOLS=ON
> 
> /home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0/temp/run.do_configure.991537: 159: TARGET_CFLAGS:=-DBUILD_PYTHON_BINDINGS=ON -DBUILD_SHARED=ON -DBUILD_TOOLS=ON: not found
> 
> Is there a good, really works, actually sets extra flags, really shows and explains with comments and everything example I can look at?  This bitbake is clearly clever, so is cmake, but in honesty I really gave up trying to understand any of it and just want it to work, writing the code is one thing but these build systems are a fight all of their own that takes longer than the code to solve the universe

Build systems are hard. I'm sure someone will invent another one to solve all issues
and resurrect all old ones. :)

Cheers,

-Mikko

