Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web09.9296.1620835794181002339
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 09:09:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uUasGXIx;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id l129so22691803qke.8
        for <yocto@lists.yoctoproject.org>; Wed, 12 May 2021 09:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zLSlgIz0YRKpWVemWkgxLygG2dOEnXDDqfbLPSvSz4A=;
        b=uUasGXIxVb3X6tUI5P/FA2a2CvlFaduIxPHIhSb78NqQM8spOJ1g8cIFi8aEhCuRri
         txCn/xcpIH/aGHCJAzwU1fidT+UX3ZdVU+r2XhwBoKNDjp6xSGp/2LYZXzYvAvGd/+C5
         eopr985mDi37bpzOcy1AKIW8z0ghUElm3wLKRZwnZk29Dv23evGu3TSnOp9rjA3NpEMS
         l0Z+0GcEbaBzVrp+17qvC9WEAMLnRryn74YTTQ4pjh7xtMESmpq+eDP2de1yFB/EFJnL
         b+28ArknuNnTK5EZWTue2w1KTZAd9gzQ2oLxmlNHOyFT4UB6wLT/0rSu0X+CP1iUFiGM
         UJqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zLSlgIz0YRKpWVemWkgxLygG2dOEnXDDqfbLPSvSz4A=;
        b=g9sWzkJWeoI9sc6mAj0+W9y9Nx+3SFSC8YBLIKMvJ1sgiIiCSNcghKlEFXeAY8VSHd
         kxXvW2SIUw1ivAeolV3tm/5S7S8JFmwwlEHFRNUzRbN0zFeQCivKFj6WXvBLWlMWLUca
         mgVDhUmcSAnMYyWPKoRqd6jF1CUcBGwjo5TBoeSy146EA5+kng1YPnJolodLg5kvJBkd
         34Pxz72e4fDr+Qnx/s5eyQIev3X/YzQ5ETFGL1b9S/NvaYWss98Yw5iKQc6b1unPOI8A
         PAqdb5O9vnhx25EVXMCOV5iB2z3TAMHRbwCpYaUAmWIBqJpulNPTEg07AYcjsKaIsP4N
         APyQ==
X-Gm-Message-State: AOAM531BEIUVwfhQVPj9IGy+9XRp+wdQbNQ6IEEByKUk8tmLsf3ABVx8
	qhPM2NhZ+Ka75XBpF9vkPGE=
X-Google-Smtp-Source: ABdhPJwtvPPy7oMd2PFowC7QzP2ghvTspt3YFeZTr/KX+NH3tvIoaWo+ZBYHtNEgQq4bjqFSz833UQ==
X-Received: by 2002:a05:620a:955:: with SMTP id w21mr236427qkw.124.1620835793372;
        Wed, 12 May 2021 09:09:53 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id e128sm315281qkd.127.2021.05.12.09.09.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 09:09:52 -0700 (PDT)
Date: Wed, 12 May 2021 12:09:51 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org, Ross Burton <ross.burton@arm.com>
Subject: Re: [meta-rockchip][PATCH] trusted-firmware-a: Fix rk3399 build with gcc11
Message-ID: <20210512160951.GA36979@localhost>
References: <20210511191424.4182630-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210511191424.4182630-1-raj.khem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue 2021-05-11 @ 12:14:24 PM, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> Cc: Ross Burton <ross.burton@arm.com>

Awesome! Thanks for sorting this one out :-)
Applied to meta-rockchip master.
