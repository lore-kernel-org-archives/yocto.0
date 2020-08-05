Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web11.3827.1596621006261009500
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Aug 2020 02:50:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RGuAqYLU;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f49.google.com with SMTP id g8so5225468wmk.3
        for <yocto@lists.yoctoproject.org>; Wed, 05 Aug 2020 02:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=OO+HHjoDONmHNKxBKm8KfJ//c35DPBzzcrurg3YLPw8=;
        b=RGuAqYLUkdmhSvBbzRw6HUttKNI/PBv87ja42U/l0BSacNJLZIUXg6Nc2yfT4qcP2T
         kYbJMW8kUxm1zOC6rZag0EJWqzLQZ6dDbgaS5b2NKETecs0mNuOEhgrkPACjFNGBb47G
         YQVgH7wBKjPB3tTz3+TZrtpH/Z9pxnNvKL98A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=OO+HHjoDONmHNKxBKm8KfJ//c35DPBzzcrurg3YLPw8=;
        b=aaPtzYf89VLJDZqRYFv87zfo1EBiHhRj6v+kStaObBtNv1fTsMVmToL7DI4P7I+cJO
         g6+qW3vNGvaHFioOswV3HcEyK+GfkeSt/GYlrYq1o5jC8ottGLmlNQFioc+5IzfZLy++
         7/As4x2VL3ayhm6KKp8MoFqZ3H+oFOadlbH68rElJHGPlXguQo6cPp8ycTuiF7/1I8PN
         Bq7e8OEfZVAuKGdyQsLbbEPNcOXR4ixZMpx6L2CyVu8AEAIvfGTZ7xDI+L7y3v+AAcdH
         gp/ZQ4+5gThIv/42ztSv12qmXP5vHikyJDb2VAnnWDmK+q+4K+UWbT0sha1JlSrlfXdG
         AJjQ==
X-Gm-Message-State: AOAM532VMYnvYw05ZJejFx7OdKpTZk9TP40ZBNxFfZxDPnv15CoRSnyk
	VKaN3yMK9ezzKtgg4tSCO5FjGQ==
X-Google-Smtp-Source: ABdhPJzNT+34aNN6uQC0j37kavf0zZmfPkUs2F/8aMeKdUg4foafc6mQIE0qVNFoKssAHkp+DRPtKQ==
X-Received: by 2002:a1c:26c4:: with SMTP id m187mr2500331wmm.90.1596621004644;
        Wed, 05 Aug 2020 02:50:04 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 1.8.8.2.4.4.9.8.7.6.b.0.9.5.0.7.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (1.8.8.2.4.4.9.8.7.6.b.0.9.5.0.7.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:7059:b67:8944:2881])
        by smtp.gmail.com with ESMTPSA id f15sm1963730wmj.39.2020.08.05.02.50.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2020 02:50:04 -0700 (PDT)
Message-ID: <14aa33ffb8218838763ba61c809149365d92ab98.camel@linuxfoundation.org>
Subject: Re: [yocto] Is http://downloads.yoctoproject.org/ down?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: scott.branden@broadcom.com, yocto@lists.yoctoproject.org
Date: Wed, 05 Aug 2020 10:50:03 +0100
In-Reply-To: <4061.1596576995601033488@lists.yoctoproject.org>
References: <20200512131738.GQ11927@denix.org>
	 <4061.1596576995601033488@lists.yoctoproject.org>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-08-04 at 14:36 -0700, Scott Branden via
lists.yoctoproject.org wrote:
> With downloads.yoctoproject.org down again this begs the question:
> 
> Why does uninative tarball get fetched by default from the internet
> every time?
> Why is it in not cached like every other tarball that is downloaded
> by recipes?
> The default behaviour for the yocto project should be to have the
> tarball stored in the yocto cache such that it is not fetched every
> time?

Those are good questions. 

As far as I know on my own local builds, the uninative tarball *is*
cached locally in DL_DIR. We don't see repeated downloads on the
autobuilder either so it appears to work there too.

If you're not seeing that it would definitely be something to
investigate.

Cheers,

Richard

