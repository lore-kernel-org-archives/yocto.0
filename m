Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
 by mx.groups.io with SMTP id smtpd.web11.6047.1586427125668518292
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Apr 2020 03:12:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=I4nwUr95;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.65, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f65.google.com with SMTP id h9so11253155wrc.8
        for <yocto@lists.yoctoproject.org>; Thu, 09 Apr 2020 03:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=NgoVm7mYbk/EHmhTgy96aF4Gz6FqA8VYe50VrsKqO2w=;
        b=I4nwUr95Alm6z5hpUld8GKfg4g8uVTUThVN6+sKohXuTKM7/AZEucDa1NChW49Ofwp
         9dROknmbqfZ6yYNziaCR1sUk453HIHJHMvH21wUTMP4VKRaKKgM655I+DDnr6CDhTz4/
         aitejvjfsecc9oqbUF9J6rQFTQswaR9+AmORU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=NgoVm7mYbk/EHmhTgy96aF4Gz6FqA8VYe50VrsKqO2w=;
        b=RlOOjFvUNr6+rBMC0Lqt+TOG7ualI7UQYp6nqC/VPOdNgMWI/xa7kA9bH/tlluP1mO
         lGs7jmCLbzzSAASlOE9ifcpd2NtoV7qtNWeqWNRT5XYIwJrCjjS43KdmJ0kzmDTEEjNG
         aS3toIHYw1nrR3IYb9Jk5n+M7YGYO59p/MyqQjyvG0jEqTcuy0wxGbx74/3CaiVIflp2
         MtrEQwU4Net0irhYtICE/nRUORG+W6utxBNVd64rcHnPCrCwhc6Tnz/QqpYFcJ/4bF5P
         52DbIkKmiKEGdljvuTrxXJZmPCjVflLafnqPYxV9SH8N0n8hPmDKG+3CmXn84kEX2ZSq
         RKow==
X-Gm-Message-State: AGi0PubhCoP7Vyrs92CqviV/OnpHVgVWPH3a14Z7REyt+xvKUOWLt1wP
	A7bd3dUwE21fnh6BuzFTHtiLOg==
X-Google-Smtp-Source: APiQypKeY+bhvmbO+4uxXmYHRGVb62IWGE5wKPdOcpX+OtnbCZxDKAzn7UjqKyKuldb78R16ma/0Gw==
X-Received: by 2002:adf:e942:: with SMTP id m2mr13266206wrn.364.1586427124174;
        Thu, 09 Apr 2020 03:12:04 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id a10sm39852525wrm.87.2020.04.09.03.12.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Apr 2020 03:12:03 -0700 (PDT)
Message-ID: <b9eb458a497e0f8fda758a6ec61ec6e475a37eac.camel@linuxfoundation.org>
Subject: Re: [yocto-autobuilder-helper][zeus][PATCH] config.json: Override BBTARGETS for meta-intel
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: mohamad.noor.alim.hussin@intel.com, "Mittal, Anuj"
 <anuj.mittal@intel.com>,  "Orling, Timothy T" <timothy.t.orling@intel.com>
Cc: yocto@lists.yoctoproject.org, Ross Burton <ross.burton@intel.com>
Date: Thu, 09 Apr 2020 11:12:01 +0100
In-Reply-To: <20200409015454.32736-1-mohamad.noor.alim.hussin@intel.com>
References: <20200409015454.32736-1-mohamad.noor.alim.hussin@intel.com>
User-Agent: Evolution 3.36.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-04-09 at 09:54 +0800, mohamad.noor.alim.hussin@intel.com wrote:
> From: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>
> 
> Using meta-intel with core-image-sato-(sdk)-ptest
> results in a hddimg size of more than 4 GB. Remove
> that image type from testing.
> 
> hddimg is not built by default in dunfell so this
> is applicable only to zeus.
> 
> Signed-off-by: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>
> ---
>  config.json | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/config.json b/config.json
> index 7a88e6e..2989b8a 100644
> --- a/config.json
> +++ b/config.json
> @@ -384,7 +384,10 @@
>              "NEEDREPOS" : ["poky", "meta-intel"],
>              "ADDLAYER" : ["${BUILDDIR}/../meta-intel"],
>              "MACHINE" : "intel-corei7-64",
> -            "TEMPLATE" : "arch-hw"
> +            "TEMPLATE" : "arch-hw",
> +	     "step1": {
> +		 "BBTARGETS": "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk"
> +	    }
>          },
>          "genericx86-64-alt" : {
>              "MACHINE" : "genericx86-64",

Whilst this will "fix" the problem, it is just by hiding it. Any user
using meta-intel will run into a failure if they try and build this
image and it may as well be disabled and it won't work for anyone.

A better fix would be to disable hddimg for this image, then a user can
actually build it without failures.

Its Intel's layer so its your call but I'd want to fix this properly.

Cheers,

Richard


