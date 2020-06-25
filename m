Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com [209.85.219.67])
 by mx.groups.io with SMTP id smtpd.web11.3040.1593055861658230497
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jun 2020 20:31:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AB9FBuZN;
 spf=pass (domain: gmail.com, ip: 209.85.219.67, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f67.google.com with SMTP id a14so2164450qvq.6
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jun 2020 20:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=IvQCdR07CU1Rpars0mCYbmzvXkJRjq//9vyxDRYIbDY=;
        b=AB9FBuZNabpaZTeJ7d0hDKN7u1+9Hu6WWrCoYQVLpGnOZX3po/wxTm+0OHTBWt6xAa
         5IJbOis4xOGrRqwKqb0xWyomzJPLkcdTNTHmYNqXfUqxHoQPDTarbw4HV95BnFjJqvj6
         +aexnd7zItrNgcZDNdnU9S/EyljQTOntp35D0ByeDOhu3MziwlQ6B/k0qK+O5SJrC5gV
         6de1CdXvUFbapehJ59tOx69A23No57kco7HZtM6EwQ/kk/gQwv0t6yDq82uhzmISJVA8
         Cq8tqJT1i7R0Ch7khie9Lk4/Ugea07cf9pTynOqFEgFf8Jp+ynUsIT1j14ULh7EPwd/6
         z0ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IvQCdR07CU1Rpars0mCYbmzvXkJRjq//9vyxDRYIbDY=;
        b=Kif6zeduFDTHsUFGYhUCTTDEKdVF5+pLM4dWvF+ynXY7HBRyYcvL9MlABr76hvA2Xv
         8LH0GyiXbLSzNLOO6P15c2z1FQ/0HH39WnFTEoI6hDmepBBzT0/BtjysuDxAEblHvOA5
         dtDeFmbNVdf8qSuAxeIBp7kMYzS1DVCMD48gJYxXV1oKhL+6jkNfSoGbq/TQLddIn5FK
         2cEydEKfcXXoT5/50sFs4ja38wfVeTWloNdqCPZRE9nP8HRet8AoKhTa3iRBzerI/0f6
         J8XnhIV4kvDZLUbIL5ssO52ZCP1FcDr1yByJ6zcgUHArfY83ZZPANzvGqie5OAyLLU3o
         B33A==
X-Gm-Message-State: AOAM5306nDvdSfsDmcSzxrMcf8wO+U6domlQch3DxzVI3Iu5LvtygQyD
	mUoUDkjZZX4j843Z7Uq5vNM=
X-Google-Smtp-Source: ABdhPJzoQxr/coeOw/aY2pJAUEseziq/W003FB7V1G8oQBENEKC6c9ItaztL41nMDTxdujV4zrbCNw==
X-Received: by 2002:a05:6214:178e:: with SMTP id ct14mr34442369qvb.73.1593055860792;
        Wed, 24 Jun 2020 20:31:00 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id o187sm4135196qke.76.2020.06.24.20.30.59
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 20:31:00 -0700 (PDT)
Date: Wed, 24 Jun 2020 23:30:57 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] Use TF-A recipe from meta-arm
Message-ID: <20200625033057.GA21029@linux-uys3>
References: <20200612173823.7749-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200612173823.7749-1-JPEWhacker@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri 2020-06-12 @ 12:38:23 PM, Joshua Watt wrote:
> diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
> index 401d649..042507d 100644
> --- a/recipes-bsp/u-boot/u-boot%.bbappend
> +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> @@ -7,8 +7,8 @@ do_compile_append_rock2-square () {
>  
>  ATF_DEPENDS ??= ""
>  
> -EXTRA_OEMAKE_append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31.elf"
> -ATF_DEPENDS_rk3399 = "virtual/atf:do_deploy"
> +EXTRA_OEMAKE_append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"

The space you've included at the start of the following string makes me stop
and double-check... did you mean to add an "_append" in the following symbol?

> +ATF_DEPENDS_rk3399 = " virtual/trusted-firmware-a:do_deploy"
