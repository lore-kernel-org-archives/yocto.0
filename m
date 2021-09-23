Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web09.3628.1632399760989826355
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 05:22:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=AbL1gn/n;
 spf=pass (domain: gmail.com, ip: 209.85.222.174, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f174.google.com with SMTP id 138so20980740qko.10
        for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 05:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ti9YgAlFGW1nVxKbwNqwpXNRrV4ILVIDEHcGluwk8mE=;
        b=AbL1gn/nIZ0aByuodQpnrdUBI67AusZOYRcdIWWxZkmnYAS9NeNIgqEa0K9MFDSOJS
         mjPuZ7jM26fmh28iaA/CEF//Bqy9DU1H3kkjJvfxr/OCfi27RelzKaKx//gYe49duDP1
         LQBrcHuLm9O9pu3dzLd2ncw09tJi6Ij9pvEziHKqVeFmm5NPkaVBJ3NUjLOXFia509Nw
         wgPFA4NpXvk73obehq+lGrPLPGwgAlxlBEo8xMkJT9cmElreAew1oGWQvXzaI+KqqUo2
         bOEY6IRXXt5vQmItnycQBm2DkbBsvSLBt7zQbeNl0d1DnG0daWid7im6W5RAC+VNf/QF
         QpjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ti9YgAlFGW1nVxKbwNqwpXNRrV4ILVIDEHcGluwk8mE=;
        b=YB9uUSJVb/PhHoGk6isJll9qSh6l9WP+LQ28CiNNXjVyvaM5WpbMHCjJ6hyxKmFbvJ
         8ql9JAKUw+AV/TrBV0Y3wi9V3cl0eH3OawvbI+54P1MjDfBfIou+YOFRiiiRSnalSniY
         /fOmPpueHNI8EwfYGbp65KPR23salc8B75fXqu3lH2D66ZI3iRAGzy7p3TjEc7GYW1OM
         97mjNxsvYf2tlh9iBjcfY59zZU3kcjizjEcYM9JaCNSz+IfHfckGukG1bke2n27fsN7h
         qO1J5oFyw5Y9qTlREMr0YsCOTS3eaYyCv64i0X6TYy+u4ALuZhcVxx8xEvSSgt8IMFb/
         oZWQ==
X-Gm-Message-State: AOAM533n3oRLZ+Arv/iAs5OlL7lj8Q2xHpvbozDDjGk+1yUyeWv6xFNU
	a/ExT36lZ93rCmX4gZXlcdc=
X-Google-Smtp-Source: ABdhPJwTO8MQd3p0qDK3HSCZbTeSQRU9qBC7w+2pJOJWmRYIW/NlA7eLAdcK/HkwPDWd0RLZZ25mxw==
X-Received: by 2002:a37:6596:: with SMTP id z144mr4537031qkb.292.1632399760072;
        Thu, 23 Sep 2021 05:22:40 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id m27sm3914846qkm.57.2021.09.23.05.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Sep 2021 05:22:39 -0700 (PDT)
Date: Thu, 23 Sep 2021 08:22:37 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: Markus Volk <f_l_k@t-online.de>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH 2/2] rockchip-wic.inc: dont let wic edit fstab by default
Message-ID: <20210923122237.GA29165@localhost>
References: <20210922190950.677010-1-f_l_k@t-online.de>
 <20210922190950.677010-2-f_l_k@t-online.de>
MIME-Version: 1.0
In-Reply-To: <20210922190950.677010-2-f_l_k@t-online.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed 2021-09-22 @ 09:09:50 PM, Markus Volk wrote:
> ---
>  conf/machine/include/rockchip-wic.inc | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
> index 15010a0..30b0d57 100644
> --- a/conf/machine/include/rockchip-wic.inc
> +++ b/conf/machine/include/rockchip-wic.inc
> @@ -26,3 +26,6 @@ WICVARS:append = " \
>  	SPL_BINARY \
>  	UBOOT_SUFFIX \
>  	"
> +
> +# Do not update fstab file while creating wic images
> +WIC_CREATE_EXTRA_ARGS ?= "--no-fstab-update"

Thank you for your patch. Could you please include your Signed-off-by line?
