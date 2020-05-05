Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web11.6334.1588680894302218741
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 May 2020 05:14:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=CR2tqH/g;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f68.google.com with SMTP id g13so2435022wrb.8
        for <yocto@lists.yoctoproject.org>; Tue, 05 May 2020 05:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=Aca4E0WP3NzZj82j57ypnnwMhnpsuOeIxipmZHPQPIc=;
        b=CR2tqH/gEth5SadNI0zxbgX2DqdqfhEWcgQ423TZdwKc4w1NKs5DXdOXlLxo7hO6vA
         jm15BLai6+HY3vR1dCnUVyKTb0wR1SMperKtZsJjTQ9T1KBjf9TxjzyWfDx6/m5ObMi5
         sNE9ngvMRLht9NIzYnuGNBL3ZR9yEoNvbXffs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Aca4E0WP3NzZj82j57ypnnwMhnpsuOeIxipmZHPQPIc=;
        b=aEU5WOfivzdLTdWKH7BAELs48cffWJB/f8PPWZCSmRzOiyC5t/qDrkwfKJRNSqoJbg
         TIU0vA74mSFoeQ5iDWRnZ7KcJonZhVpiC9xD2/Sv2YrumXnnGN5Dck8Xd3llIqwCjB79
         8yyiu7szDBMxnOHbVKi/y4umMH5LOsjdRMwesnsRBftFgh/Et734mYN4SBOLSU1JwP+w
         yrtxEXKO8RgRR7w+/cNARTgcEDgE1nCnZ0kOVUUh7z3HXbec+yQUlowW3kCYgClakcAJ
         OscDMMTM5ldTl3XLC++v4yKBXF6SSo4L2IRsuieBteOxgdTe7xHZyssx3wFNraWLPSSu
         VpdQ==
X-Gm-Message-State: AGi0PuY3I4y1AbfHnhRuve32J5rgKKf9kQTvzYbpef1uYUkw8SO66K44
	Ynk3obzNJjUWo5xhrps0mLAtSRgRhnA=
X-Google-Smtp-Source: APiQypIUMBRxNkh4P5SgqcFvJLuJw45XpnNvOqnFxt+wp1cOM90kPlCyhMRBNGObErrf6xMeIlVg1w==
X-Received: by 2002:adf:f3cc:: with SMTP id g12mr3201911wrp.427.1588680892436;
        Tue, 05 May 2020 05:14:52 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id s8sm2912550wru.38.2020.05.05.05.14.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 05:14:51 -0700 (PDT)
Message-ID: <98abb3a636f36664a3a8d61882b5e4ad4001f7a9.camel@linuxfoundation.org>
Subject: Re: [yocto] [meta-gplv2] [PATCH 3/3] README: Document how to configure repo for sending patches
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Date: Tue, 05 May 2020 13:14:50 +0100
In-Reply-To: <160C1CDA4BC9B9E5.19004@lists.yoctoproject.org>
References: <20200505110125.3692309-1-richard.purdie@linuxfoundation.org>
	 <160C1CDA4BC9B9E5.19004@lists.yoctoproject.org>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-05-05 at 12:01 +0100, Richard Purdie via
lists.yoctoproject.org wrote:
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  README | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/README b/README
> index 4558a99..6a61331 100644
> --- a/README
> +++ b/README
> @@ -27,3 +27,8 @@ intended target branch of the Git repository.
>  
>      Git repository: http://git.yoctoproject.org/cgit.cgi/meta-gplv2/
>      Mailing list: yocto@yoctoproject.org
> +
> +This can be confiured within the repository with the commands:

configured. Tweaked in master-next.

Cheers,

Richard

