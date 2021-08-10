Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web08.349.1628626920563001325
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Aug 2021 13:22:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MXvhgd48;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id k5-20020a05600c1c85b02902e699a4d20cso370811wms.2
        for <yocto@lists.yoctoproject.org>; Tue, 10 Aug 2021 13:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=WcJ43pqc8A3mlY8XcsSRDvgydjQRx0AEskR5ftITdcQ=;
        b=MXvhgd48UqtZMZ5gC+2Fs64eNN6q7J97M78+fnRrzw6ZOcoXus/YKDWTNt8JNzM9CW
         9lB3mBnRibf9mjXVZNwZmNlx5TCuw+eR/X/i3Kk8e7VjDqe/yYvt6tUcjRa3WZC+M5YQ
         H2qFpPTN2g0dUIKC0boHMyfmBzlSZshCvPrtI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=WcJ43pqc8A3mlY8XcsSRDvgydjQRx0AEskR5ftITdcQ=;
        b=FnAZDqwImsY2lkYbWZULthUOkSRr8ASw6wZvsrAGWnzHF6wjyHK2K4EANQ5zzDnV4H
         dgMY/UQAZbd5uEMj570O9ZP9JkE5E1VS0nK/2QqtKUYRJYB2YFxNU3Ag/4gDjQMTgubC
         T1vRaofiDUiqfj1wZWT+FD4kU9Rv3i/BPWcxPUCrdKOfED4Asa08anQpBNPdJgZBYAy9
         0jI6XBda5pm9s4MxczSjMzHCEVESE0qJ1eo9OA56G6MGt6Zm1xqz0yPk/iwzqJ/Vco0O
         jfZlDqlc/tDsz6AzNmJJIYai/eDPHONs14dVs4/esvmOqiuz5IxnkCzm4aXaXzKUZ13w
         a5fA==
X-Gm-Message-State: AOAM531MIn/xIjtUv5V0ecJqj4c6bZ3UpVVriUdEYDAIlM9waZX5LtY0
	UTsUM55/AughRgKQ98QDvoCGmQ==
X-Google-Smtp-Source: ABdhPJyGnbBtIG8hqkhPQ+SJOne43xGNd67p+WVA6GqCespaHvkYtVENHGyGhF2+zw7cqu3cwetfLg==
X-Received: by 2002:a05:600c:1ca7:: with SMTP id k39mr24137805wms.162.1628626918682;
        Tue, 10 Aug 2021 13:21:58 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:4282:face:6a07:1a9d? ([2001:8b0:aba:5f3c:4282:face:6a07:1a9d])
        by smtp.gmail.com with ESMTPSA id v5sm25449941wrd.74.2021.08.10.13.21.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Aug 2021 13:21:58 -0700 (PDT)
Message-ID: <d23e3d7bee796884ee58c54cea558bc4566de1b6.camel@linuxfoundation.org>
Subject: Re: [yocto] New Override Syntax
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Darcy Watkins <dwatkins@sierrawireless.com>, Michael Opdenacker
	 <michael.opdenacker@bootlin.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Tue, 10 Aug 2021 21:21:57 +0100
In-Reply-To: <13A7932E-8B64-45EA-827E-B9EB8C787239@sierrawireless.com>
References: <E360C062-0BA9-48C7-A776-2ED9259143C8@sierrawireless.com>
	 <1699FF2DD7128D19.12542@lists.yoctoproject.org>
	 <7595a925-97e3-03c2-6e51-48d732031c21@bootlin.com>
	 <13A7932E-8B64-45EA-827E-B9EB8C787239@sierrawireless.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-08-10 at 17:51 +0000, Darcy Watkins wrote:
> My apologies.  I don't think I made my question clear.  I am asking about the 
> compatibility of old style override syntax moving forward (and new style syntax
> in old versions).
> 
> So if I continue using the old style override syntax (to ensure sure 
> compatibility for use with older Yocto versions), at what future Yocto/OE 
> release do you expect that old style override syntax will become erroneous 
> (as opposed to say triggering deprecation warnings, etc)?
> 
> Is support for the new style override syntax present in any existing 
> Yocto/OpenEmbedded releases (in other words, has it been there for a while, 
> but we are just now actively migrating to use it)?  If so, how far back does it go?

The new syntax will work on the dunfell, gatesgarth, hardknott, master and new 
release branches going forward. That applies now and that support will be in the
next point releases for dunfell (3.1.11) and hardknott (3.3.3).

The old syntax is no longer supported in master as of now and will not be supported
in new releases going forward. It continues to work fine in older releases prior
to the next new release series (honister).

Cheers,

Richard



