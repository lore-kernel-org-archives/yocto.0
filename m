Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.3091.1626987112483681345
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jul 2021 13:51:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bs7JH+bn;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id l4so117312wrs.4
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jul 2021 13:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=dEkKelOvmSNE7pKQ1tqjuKG61uhDUnWGcwhF8fxV7Jg=;
        b=bs7JH+bnnEX72+PpO1GMbhsug+YGIJLsDv3/NL+Q+u8g/PF9JmcdbN8nFDNaDpms7T
         dEnK3keTiaLWdRzqUqxJar88cO0afQ8hZBhdnTncieULQ21UBLZkAhWHnc7Yyd5tfU8i
         mgtnArKK8UzUD7UgjAxnbxaKZJD3n50xYjPuQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=dEkKelOvmSNE7pKQ1tqjuKG61uhDUnWGcwhF8fxV7Jg=;
        b=SWkzebaDyGgXdnPylHNZIOEhGnQNHv/GSddRmLOsIqIzXayKv448RLHr/dTVtm3xPX
         poBssNfbG3H8VqZcP5jXwAS/bnVSwaa0947ghjZjrwm1ZdoB3vo6VRU07ERxyjOCfO/f
         lyXvT/yHCsKTboDj8CTgYddMLttdCPjc6wodP+XqkZh0PKOrMlDnvJ6D+jcmm3XhBoMa
         LqC/AYpxRIYxBQaMlnOA78h4HtpV8UYpQOj8CBem3PUihTXgZ/s01XCUP6FS6zAT6Y4Z
         GbeWFTAjDNC8xhKk9t5Sw3djy6BijYO/Sxm0kG4myvOofORm9whn2RdBYA55Zuy6TtJi
         C6Bg==
X-Gm-Message-State: AOAM533CUiDa9V53m/vSRoH9j9WqcRT3QHKCoVkE781QvrU+Wng9Pge5
	cNQFunkb2RTVk+fRRSFpOeFZvQ==
X-Google-Smtp-Source: ABdhPJyQVM0cOba7z+TJAN+OeCRfCs0W2kfdcWlLRKNiEOjTTHc/zVkdn/5SkP+tf4wmMJzLK+83pQ==
X-Received: by 2002:a5d:6d8f:: with SMTP id l15mr1799497wrs.158.1626987111040;
        Thu, 22 Jul 2021 13:51:51 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:e1dd:b42c:9243:6ba8? ([2001:8b0:aba:5f3c:e1dd:b42c:9243:6ba8])
        by smtp.gmail.com with ESMTPSA id q7sm25961180wmq.33.2021.07.22.13.51.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jul 2021 13:51:50 -0700 (PDT)
Message-ID: <461b14a2f6551bfeea83b78fa6194378a5a05d11.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] Enable canary builds for meta-aws[aws-iot-device-sdk-cpp-v2] on x86-64 and arm64.
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: elberger@amazon.com, yocto@lists.yoctoproject.org
Date: Thu, 22 Jul 2021 21:51:49 +0100
In-Reply-To: <cdd1881a-ecdf-85f9-4450-89fcdf2a3698@amazon.com>
References: <20210720110828.30148-1-elberger@amazon.com>
	 <cdd1881a-ecdf-85f9-4450-89fcdf2a3698@amazon.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2021-07-22 at 16:05 -0400, elberger via lists.yoctoproject.org wrote:
> Hello,
> 
> What can I do to move this patch along - or did I miss anything?  
> Apologies for my ignorance, it's my first time submitting a patch to YP.

I can't see the patch in the mailing list archives:

https://lists.yoctoproject.org/g/yocto/topics?

only your reply:

https://lists.yoctoproject.org/g/yocto/topic/patch/84387478?

so I don't think the original patch made it to the list? Since I never
saw it there, I couldn't apply it!

Cheers,

Richard

