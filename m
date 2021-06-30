Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
 by mx.groups.io with SMTP id smtpd.web11.346.1625069418274078578
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jun 2021 09:10:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=njoImake;
 spf=pass (domain: gmail.com, ip: 209.85.166.49, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f49.google.com with SMTP id v3so3766854ioq.9
        for <yocto@lists.yoctoproject.org>; Wed, 30 Jun 2021 09:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1rGpXBTh6FTDjYuBvk1LjqVYOgXLJsJUN07pApmL4V4=;
        b=njoImakelO9RZUxb6KGtnuDl/H+WJmZnZDyh3UtAs+dSIYEnUikVMnv7oaWMYqXIEj
         bK2I2dOIPTQBb4VhCnlg6iIY2cdtFRcVeG8N7w+XEZN56fIykUOFa2fHaP614d/a58D9
         F/qht23JeHfB9CYyuLjOI+wRqoGTomU9040Ib0DB1J6u1lEB6zjDZ4wAJPpY3E9ziyag
         rR+nFTnsgKleVCPFSfF1B7eKo1iCw1eaMp4hp4D9ke3EcpgvvQwxFfeLQNxEJfrAOgWd
         y3GP0Uv1duj+g6fCmhTLCIdYEOw39dRONzbmwpEiMm5FLfBCQlGjmueEQkRTLUpCTkON
         Y6fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1rGpXBTh6FTDjYuBvk1LjqVYOgXLJsJUN07pApmL4V4=;
        b=I9yM+gPznKRqacrbQmBqJ4Fe3CubIEJChgg5O3ebrppigBHP2NxoOjrp0TsmLB+Ux+
         MoheCY0cK24VnJd07WxBUyLYgjxrczN0YIxUqP+M4PBoqduaK8S5ywGmwk0zv0OzBiS/
         fCNTajetjv9LvQKLy1KXvtt1Aipj5db/aPKTUDGHaPH/BhXX5h0luRVRCwAFs3F5G4oJ
         lnScfVzyfMiPHLA+fP0NzWM5Cpl/sm3IhShl2f160e42yXjkXmy3FQMotXpdL+oG2+7w
         QaECMdYFAbGXMNhL5zaVI+6By0YW9jILSrhpRZhISdFD12jBvj+MbJ2yLh4G5LjkGrFa
         9SCg==
X-Gm-Message-State: AOAM533bddjjaK0GkR4oPKwo/EtD1nIYJrc4G9lA6lJ2h9yr4i4w8eqN
	x/k2NkOxSoseoW8Bt/TB3211Y6DcoXLTlA==
X-Google-Smtp-Source: ABdhPJzyeNQHxFNVy5bPDgNe7SGJPTqlURxZiTRReOjKTaNGmW+ZPwCJkuci0fx09XVlkD2xWpkUFw==
X-Received: by 2002:a05:6638:270:: with SMTP id x16mr8666274jaq.142.1625069417465;
        Wed, 30 Jun 2021 09:10:17 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id c23sm2535115ioz.42.2021.06.30.09.10.16
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jun 2021 09:10:17 -0700 (PDT)
Date: Wed, 30 Jun 2021 12:10:15 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH 2/3] IMAGE_FSTYPES: remove ext4
Message-ID: <20210630161015.GB9226@localhost>
References: <20210628151541.26092-1-twoerner@gmail.com>
 <20210628151541.26092-2-twoerner@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210628151541.26092-2-twoerner@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2021-06-28 @ 11:15:40 AM, Trevor Woerner wrote:
> The ext4 IMAGE_FSTYPES does not need to be mentioned explicitly. It will be
> automatically generated in cases where it is needed.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/include/rockchip-defaults.inc | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
> index b41c523..0666119 100644

Applied to meta-rockchip master.
