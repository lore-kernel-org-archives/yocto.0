Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.18064.1611689733322009749
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Jan 2021 11:35:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=A63Rav6F;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id BF3C138C04C2
	for <yocto@yoctoproject.org>; Tue, 26 Jan 2021 19:35:32 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id j13so21194431edp.2
        for <yocto@yoctoproject.org>; Tue, 26 Jan 2021 11:35:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=vryBU1EjoafSL5leR9p3K/sRPW9xzmPkKKtdFzJQQ8E=;
        b=A63Rav6FygtkZfq352t1xzWH5+Ea8hOLMl1sm6/ARcXrvFWgz7FdwdK97dGJqqiXyv
         tLslmsDvB+AwL4jHj4zflJr8x3xo6xwIlig3h1kPu4B6Nw8H4zpG/paYE2G0BH68LlAx
         AUDqPPfTjhPfGqScu6uqqpA36OtSkYFN9EFbg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=vryBU1EjoafSL5leR9p3K/sRPW9xzmPkKKtdFzJQQ8E=;
        b=Tm+t6PhD+SQRf8Vke4HSbygvYF7JGgYqY3+X3Mwn89aS53i11kvlsDcqjEkQfeQ12O
         kQx54Fr7Cmhm7kACakh/ogJjsQ0V6SmysJ2m6rJjEK0nk4wdc3lFu8SA8aXPXtUP3T2R
         88KPpGQjCqBzpAb/eQEZS3gxi7Ym/EH/U/dwTaVnrCn3O9IikIwi+smnQ03WOuc/l2VN
         k/hBTg51bBS/aAwokJFXUirwSOtsPSoWjQuaCc32vb8GAVQrn1hKkAa9w1ez97MkL8rF
         0N99oo9h6qRs7p08HpEpIofKHM+VKd0lGHnYBb5Y4wCEYw59vYMHyavEs7v4l+JtfM+B
         veIg==
X-Gm-Message-State: AOAM532bkgteeKWqByLAq+0Rbni1dTXBDnQI0jwgaRtkNnOG8zFXwibH
	Nls19YNbGy3UIwrJobX6MrL7P0tE2U3Sug==
X-Google-Smtp-Source: ABdhPJz74Dsg6Ok0ag0iqfFqCAiUtksAtSrWMhzi5c5A1Fmw5P0YjtdE1XH8rFnkr/4sp6X2U9tvaQ==
X-Received: by 2002:a50:da8b:: with SMTP id q11mr6057908edj.352.1611689731235;
        Tue, 26 Jan 2021 11:35:31 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:740b:f7b2:9a90:fbc0? ([2001:8b0:aba:5f3c:740b:f7b2:9a90:fbc0])
        by smtp.gmail.com with ESMTPSA id m10sm12787746edi.54.2021.01.26.11.35.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jan 2021 11:35:30 -0800 (PST)
Message-ID: <db88bb8d3e15147b54dd2557eee2ce162e46feb1.camel@linuxfoundation.org>
Subject: Re: [yocto] openjdk-8 multilib
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>, "yocto@yoctoproject.org"
	 <yocto@yoctoproject.org>
Date: Tue, 26 Jan 2021 19:35:28 +0000
In-Reply-To: <7f4740de-0dff-720a-6cb2-8c46f9210a2b@ibeeto.com>
References: <7f4740de-0dff-720a-6cb2-8c46f9210a2b@ibeeto.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2021-01-26 at 09:00 -0800, Rudolf J Streif wrote:
> I have been scratching my head over building openjdk-8 with multilib for 
> an aarch64 system. Essentially, I want to use 32-bit OpenJDK on the 
> 64-bit system.
> 
> Theoretically adding to local.conf
> 
> require conf/multilib.conf
> MULTILIBS = "multilib:lib32"
> DEFAULTTUNE_virtclass-multilib-lib32 = "armv7a"
> 
> and then building lib32-openjdk-8 should do the trick. However, it does not:
> 
> $ bitbake lib32-openjdk-8
> <omitted>
> ERROR: Nothing PROVIDES 'lib32-openjdk-8'
> lib32-openjdk-8 was skipped: incompatible with host 
> arm-fslcmllib32-linux-gnueabi (not in COMPATIBLE_HOST)
> 
> The openjdk-8 recipe sets architecture dependency by selectively 
> including an include file:
> 
> INC_FILE_SUFFIX = ""
> INC_FILE_SUFFIX_aarch64 = "-aarch64"
> INC_FILE_SUFFIX_armv7a = "-aarch32"
> INC_FILE_SUFFIX_armv7ve = "-aarch32"
> require openjdk-8-release${INC_FILE_SUFFIX}.inc
> require openjdk-8-cross.inc

I suspect that at this point in the parse, the mulitlib code hasn't
swizzled the bits around so it still looks like the main lib rather
than the mutlilib.

Including a variable in a require like that is an immediate expansion
operation so it can't be "undone" when things get properly setup later.

Offhand I'm not sure what you'd do to avoid this. The multilibs are all
a bit ugly in some ways. It suggests they need to be setting up the
overrides earlier. The assumption in the code is that people don't use
immediate expansion for this reason.

Cheers,

Richard

