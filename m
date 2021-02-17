Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web10.6939.1613566533984262202
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Feb 2021 04:55:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BhQELChJ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id l12so17336117wry.2
        for <yocto@lists.yoctoproject.org>; Wed, 17 Feb 2021 04:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=JrAkYxP7MMAFXmsmk2NV7RzJPjad6iWQldC/jBX7DBw=;
        b=BhQELChJlbTVttlFZ9onbd0W6aVlfazme+0RtuBGEN15gBuv3BlwSt50ztBNooxnJ7
         fYlB4RVv+J1mM3NR1nMShKdSyWMNThZx0RtWxH/OZ3mcxmfC3uMFsLYKN/d1rrdQ6tAG
         bXZYek07qOVvfbXGotMxAACjkQO1FxpcdaX+8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=JrAkYxP7MMAFXmsmk2NV7RzJPjad6iWQldC/jBX7DBw=;
        b=dH2tQEVjMBe5/yIzq+4b9SuAJ8LVSKBl0OqTvGvhp9K2YpAWuLfpQ5oINE2Nts2ouw
         zctcHz4dP61MwkNcuoTocQWAbw40GjVVyzbkvM7mjHGA5S9tnaXefO6RD31djO4hVZ1B
         LBXuJnA/kJTsF/rmPeZhFMf+oYR5NCYmvGuwtm8QTene9rM8dc2+AAzSFrw6EaOv3T7r
         GChEtnnNTVmqpWLiUdcxRc7P331L6ie/ud/fz+R3GpnwZcUUVMDOWu4mN0NyhwzWDSY9
         tSgo1jMl8l/JaRgeu/RT9TsAqS4dMQECL0pvBpxxU06ctTejTknhYpRGfZkvJuvH3uo9
         qu3w==
X-Gm-Message-State: AOAM530+Cjpsv2dD96NMMEtCTCXRwkMoIVZVcjDX2MnMqSCYIEMY67q2
	pQWijFaO7bMFxKdPz7pepTvgXg==
X-Google-Smtp-Source: ABdhPJzxEN1JRWfoIPjtpsF2ijyagtBhNVyC/agstelZlwPfx8vqRzFJtNbSF1IQP6hfv7wyOHT2Dw==
X-Received: by 2002:a5d:4250:: with SMTP id s16mr29035015wrr.297.1613566528699;
        Wed, 17 Feb 2021 04:55:28 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:19d:cb66:14ba:c267? ([2001:8b0:aba:5f3c:19d:cb66:14ba:c267])
        by smtp.gmail.com with ESMTPSA id f7sm3755050wrm.92.2021.02.17.04.55.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Feb 2021 04:55:28 -0800 (PST)
Message-ID: <1228b15696d4afb425cee71a46f6657b55470f25.camel@linuxfoundation.org>
Subject: Re: [yocto] Timing a recipe
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: rustyhowell@gmail.com, yocto@lists.yoctoproject.org
Date: Wed, 17 Feb 2021 12:55:25 +0000
In-Reply-To: <633.1613504614588092041@lists.yoctoproject.org>
References: <d16e306d-528c-b748-6fb6-a7494b0ab6f8@optimcloud.com>
	 <633.1613504614588092041@lists.yoctoproject.org>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-02-16 at 11:43 -0800, rustyhowell@gmail.com wrote:
> "time bitbake recipe" is perfect for manual things. But I wanted to
> also measure the recipe times when building the entire image.  I
> ended up creating  a bbappend with new pre/post tasks for the main
> tasks (fetch, unpack, configure, compile, install, package).   The
> pre task drops a timestamp file and the post task reads the file,
> calculates the elapsed time and logs it to a file.  It's a bit clunky
> but it gives the information I want.  Thanks for the help.

As others have said, please look at the buildstats class and the data
it saves into TMPDIR/buildstats. It should do what you want and we have
tools like pybootchart which can show it visually.

Cheers,

Richard



