Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
 by mx.groups.io with SMTP id smtpd.web11.337.1625069391906895429
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jun 2021 09:09:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eTq9US4F;
 spf=pass (domain: gmail.com, ip: 209.85.166.175, mailfrom: twoerner@gmail.com)
Received: by mail-il1-f175.google.com with SMTP id h3so3358173ilc.9
        for <yocto@lists.yoctoproject.org>; Wed, 30 Jun 2021 09:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=M4b9kXttwpOWXhIZRkimfAynjK58AFM25Vmh6zM7Lv0=;
        b=eTq9US4FW2Ryc5HXm0AET7vMZZVGtryHXXvi7I0M1YaCuEW8PmQpHoL0DJqBebKzqQ
         N3wRlPAbqBJQwernlcN80aPg3RJhLRFnaCx7DGMbbFBKIca9feoCqwVLCgY8NdCJKlK7
         xObIDN6FQzII7dDY2p8gNLd5teMKiNwNqEDrTpZLN4mh71cVZmgPiAsDfAzeiEfgdKj9
         D8pCb7WpUw/w5+E2ke2UNtGuOY5uImPNacTFNhyxY1OD77xzlBs2gYRefTTEGdrkg+3i
         gMxC2TNa9l4W7oQf2P92YHuTVpHRg9Zz7nvGkFsqd1UBxybY0o34r1V4kIKC4ctD7Pw9
         7LQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=M4b9kXttwpOWXhIZRkimfAynjK58AFM25Vmh6zM7Lv0=;
        b=BEeuaspoCVwg19BX0alC/luZaIw0Cx7+Ju+omAc+sA56JIzYsmJe9KhF4goZRmryO3
         nyri+I6NnZljl66733Y24szRSWwjPDGmIjTAugeWitHPZbYt4uXjfEc68S8xNN1FcIqb
         JkwdTALcophMT3n4sXSHnRdD2wEF9voUVvdv0Npm7/vzaWDeLwXkI6hlfyB8l/AjLcIs
         WINOezl/7oHmg++SbW9WcHSIJSrefIeBwCxdc80uKOq/y6bLRWcrTds0UM10NN/VAcnM
         KeqTDQbkPC1aOPzOaTkcAetP+Rv5Tin4k5PuxaIH+DvdgqDZ0pz/gPQv17SvF8m95KgD
         A1fA==
X-Gm-Message-State: AOAM532XtqG+/AKPyoeXBqXVs7cpshrRDEZVCICitKsyL9sJKrzP+F9W
	pgrkJ16Q3V7BVGpVpSFh/Sty7qjwMGo6Fg==
X-Google-Smtp-Source: ABdhPJwXL3i87a1opFuHl5jG1zXI1Rlv6b43J9T062E7EJQBbS6ysg3UpTn25Vgmv8bJICVKSUK7nA==
X-Received: by 2002:a05:6e02:1b8e:: with SMTP id h14mr19631407ili.128.1625069391075;
        Wed, 30 Jun 2021 09:09:51 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id q6sm4964636ilt.41.2021.06.30.09.09.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jun 2021 09:09:50 -0700 (PDT)
Date: Wed, 30 Jun 2021 12:09:48 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH 1/3] conf/machine/include/nanopi-m4.inc: add full include path
Message-ID: <20210630160948.GA9226@localhost>
References: <20210628151541.26092-1-twoerner@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210628151541.26092-1-twoerner@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2021-06-28 @ 11:15:39 AM, Trevor Woerner wrote:
> Specify the full include path to the rk3399.inc file.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/include/nanopi-m4.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/nanopi-m4.inc
> index 7ca91db..b5251a1 100644

Applied to meta-rockchip master.
