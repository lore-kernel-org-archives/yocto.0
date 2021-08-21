Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web09.9874.1629545190154875499
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Aug 2021 04:26:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=CLgk04L8;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id q11so18073586wrr.9
        for <yocto@lists.yoctoproject.org>; Sat, 21 Aug 2021 04:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=FuODeWhRc9QRFX12WFAeVsleTanQCKe5ZHR165EtRCk=;
        b=CLgk04L8YmlyyyMMBhPuvajTYEfZ8qKOvAkVYJors2J9mEFAuJSBDaY7yJe8RQP0Eq
         YeuMQ70YA36D1UJaxBZQnq6inxUN8wVw9Axo4yKM/r7deSCjm5q16oTtpFwJQUWt8qLs
         S0hQBhYr+2HkTEITr2zJtzlKCh1NmgTtO+GyU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=FuODeWhRc9QRFX12WFAeVsleTanQCKe5ZHR165EtRCk=;
        b=lr6SarJFZ/GRjRryUHCfolZR+7dIOYQLUgo74sCpY91Upcn4NWY17exMg8gcDI1jA/
         AXEhO/WfW7W/n9SImqxoBsr3qpYHnWb7joDwaR2V63JM/8dzHr19VJV1kHMZgIDkrsgx
         u9lkfH+Cm5SSuU+9xM7VVgNKBwPsnM+E9Hf+5Sm7I6QNi/p1Naf4wfLqPZ9chLdXjt3c
         1gJdczM/PelStkaCohGfWxS2nrKnarjXefuehAH5pTgwkTuUgOfjoJN/67YmY5RvJrmQ
         EXWxpkbSK3SaqbAuWa9ooc+IudYWRnHEfoTy95LrUlFxH16Y8bHDQaEhPSlPEnjI1mD2
         tQ1Q==
X-Gm-Message-State: AOAM532o+iGeplqsZMLdk+gGNMonGlji0KZ2yPHJnxxceXVFSvsQFz0J
	7kdz/OZ0wfA60hIntPZGfokmig==
X-Google-Smtp-Source: ABdhPJywypKpcU7bsuSO/nj32+BEKx/5VLpRJxb9l8dUqZXxS0hWC3V8cyON2WmZv90z9/Gs08TB7A==
X-Received: by 2002:adf:e645:: with SMTP id b5mr3471783wrn.34.1629545188647;
        Sat, 21 Aug 2021 04:26:28 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:789f:44c2:e113:215? ([2001:8b0:aba:5f3c:789f:44c2:e113:215])
        by smtp.gmail.com with ESMTPSA id j7sm12910149wmi.37.2021.08.21.04.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Aug 2021 04:26:28 -0700 (PDT)
Message-ID: <8682398a247f9f67d2d957863e16460455e266f0.camel@linuxfoundation.org>
Subject: Re: [yocto] [meta-mingw] [PATCH] grpc: remove nl2 requirement since it is optional
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Sinan Kaya <okaya@kernel.org>, yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Date: Sat, 21 Aug 2021 12:26:27 +0100
In-Reply-To: <20210820204620.11236-1-okaya@kernel.org>
References: <20210820204620.11236-1-okaya@kernel.org>
User-Agent: Evolution 3.40.2-1build1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2021-08-20 at 20:46 +0000, Sinan Kaya wrote:
> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> ---
>  .../openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend  | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend b/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend
> index a72496d..dc0ea42 100644
> --- a/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend
> +++ b/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend
> @@ -1,2 +1,5 @@
> +# doesn't build and not required
> +DEPENDS:remove:mingw32 = "libnsl2"
> +
>  EXTRA_OECMAKE:remove:mingw32 = "-DBUILD_SHARED_LIBS=ON"
>  EXTRA_OECMAKE:append:mingw32 = " -DBUILD_SHARED_LIBS=OFF"

Should we be making that a PACKAGECONFIG which mingw32 could change?

Cheers,

Richard

