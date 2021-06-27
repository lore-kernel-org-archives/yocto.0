Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web09.1572.1624819562061054233
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Jun 2021 11:46:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sN1B78UT;
 spf=pass (domain: gmail.com, ip: 209.85.160.177, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id g12so11876889qtb.2
        for <yocto@lists.yoctoproject.org>; Sun, 27 Jun 2021 11:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PGNEPbFhwA6UOzKahIK8Msf5m6usUw0Pv3cywovhpD4=;
        b=sN1B78UT7n6HUY/JmhaVGXLP/Qkgrmmee2+HrmpT7+hQ38wCKfRSKU+I0xHzfDaMS/
         vwsnIGGmtafsmDWWvjvzyV7iIsjc+GLiZRMZsUdcIzetK2AAhUMhYJPl4BnlNu2sBcdv
         j0oi/tGV8rlTktMlu+XjqkcWKgDNHuXniblFi5gjQx8wYbcOZK87dA6z1Q2pybqPWlmL
         VqrYzy+ndOIVKtfDI6E7Iq/feIQCacmYC6+9VLkanJgrKZnJCjp5qFSgDojagE0oDf5e
         3rykmnGmvLByj8DWe3f4qIfM/hrIlQhrQXz0buFDt0yCsh/plofHThjgMA0z+2BuRiOA
         s52A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PGNEPbFhwA6UOzKahIK8Msf5m6usUw0Pv3cywovhpD4=;
        b=J2fOuSGEgFTropaVxkReHZ+ExpRuGT8LwDkx3YLgRe7B/HhO6qhRB+ySF9R0GyYuBt
         pcdF13GrVcCsr54z0/DrfQcmrqNIfFvkZak1YFpzk4I+ztBarBd5+uo028TcrZBEiZ2S
         YRVXZBQZ/5KJ2lO6FD8NqVjfwHoGjYctXl5Yc/M5BUF/eQJv1tiepHOj8zoh1kyZQOzj
         nvHRoB25DmfIexN0a9pzGsOindauex7aqubsVqrLFWMU0CpIHahk24jRjCLtY6NA+pZX
         fZE190YCJ4d7xuuvJ5L4aoPkQVVq3xvXVbcslzsnJyV15X/h4SiYOOLzzI8sBmb7EUgW
         H/hQ==
X-Gm-Message-State: AOAM5328h/6zGmlnPTR9KN8uRFPL5xMrAVfePmKiad+7IS9dHvZ8IApz
	kADfRANgRc8O/r/9zoNNS9XOPSSZdqEUGQ==
X-Google-Smtp-Source: ABdhPJzxj6M0apjM1PAlbWAj6d110FupaMT4xuwJSKSYAqrPp6RpEeg/MOdfcfVRwzaiNw0ZYOmlYw==
X-Received: by 2002:ac8:4e89:: with SMTP id 9mr18518682qtp.356.1624819560823;
        Sun, 27 Jun 2021 11:46:00 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id h11sm4372782qkn.71.2021.06.27.11.45.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jun 2021 11:46:00 -0700 (PDT)
Date: Sun, 27 Jun 2021 14:45:58 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v2] console cleanup
Message-ID: <20210627184558.GA29335@localhost>
References: <20210624123959.10105-1-twoerner@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210624123959.10105-1-twoerner@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Thu 2021-06-24 @ 08:39:59 AM, Trevor Woerner wrote:
> Consolidate all the various console definitions to the common
> conf/machine/include/rockchip-defaults.inc file and create
> RK_CONSOLE_BAUD and RK_CONSOLE_DEVICE variables that can be
> reused in the wks files.
> 
> The following variables were checked before and after this patch
> to make sure they are sensible:
> - SERIAL_CONSOLES
> - RK_CONSOLE_DEVICE
> - RK_CONSOLE_BAUD
> 
> A boot test was performed on the following boards to make sure
> they all continue to boot to a cmdline:
> - tinker-board
> - rock-pi-e
> - nanopi-m4-2gb
> - rock64
> - rock-pi-4b
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
> Changes from v1:
> - In v1 I defined RK_CONSOLE_BAUD and RK_CONSOLE_DEVICE for each MACHINE
>   and then redefined SERIAL_CONSOLES to be the concatenation of these two
>   variables. Khem pointed out this is a bad approach because I'm redefining
>   an oe-core-defined variable that all BSPs expect.
> - In v2 I set/consolidate SERIAL_CONSOLES for each MACHINE and then generate
>   RK_CONSOLE_BAUD and RK_CONSOLE_DEVICE based on the first-defined
>   <baud>;<device> pair found in SERIAL_CONSOLES; these generated variables are
>   then used in the wks files.

Applied to meta-rockchip master.
