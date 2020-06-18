Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web12.3539.1592471477007766447
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Jun 2020 02:11:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Feb168Rk;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f68.google.com with SMTP id h5so5244830wrc.7
        for <yocto@lists.yoctoproject.org>; Thu, 18 Jun 2020 02:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=QnxK6buk0j5Qb8OSu2t1j+DygD5GP6zpK7qyFapKLDo=;
        b=Feb168RkTX3H2hRUmW34PGpzUO2IDLSHXKBxnqu2S3udh+37lbORKcP2w6b1VziGEH
         PAV2tVyAlM8spPG8alk/Vul5afZ+KpQs82r7NbvzJGeHVW/DmHCLLc/tctT4zjDjAZjn
         T1i590lTxp5ZOHyx6I6tZv18btDWyxjHWrAlo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=QnxK6buk0j5Qb8OSu2t1j+DygD5GP6zpK7qyFapKLDo=;
        b=YAKi5TKXMP3b9T4ZxANOXr7PsalhD4uoXHlX2R6r7s9MWyxnD6NHq6HsU97YDN31sY
         EXgNiI594ZtiTmRDMI3sHCG3jeROlQLM0ZdOzzIEMM9vdJamr2ICWJwyli91DihIgiBa
         UmzR4Ub1CyFiGm42nk/WzPvE2L+tMYG0HI+uy/Vh1MdXmpyAAcQWlHp4VCMHN4RHosTN
         b9u8yMMPbtspLKhADj+kg8EAaIJUg8cCzM0Vwzqr1rT82CBCOkSj5L1AeQXirpYJ+nfg
         ET/APE0R5+aNH86QuWU8LLu7OyWo0qOSiuFTL4WmUWq5obaeO5f351Eqc0gCm2Qa1wWN
         G5Kw==
X-Gm-Message-State: AOAM53088jBIz1+YA1+MXdYh2zWJpZIWpfHvkwCPWFddtN8ARFNMAlNi
	jXOF05p6PUwWcbVi9VZz7dXOaw==
X-Google-Smtp-Source: ABdhPJxkJZ4xBYn+YFR5wiz+MsBNuToDe6SzULMFVC432SAS9WOgC4nCxQ/Jj4W7y6Wx1r40CE/YKw==
X-Received: by 2002:adf:ed05:: with SMTP id a5mr520409wro.176.1592471475424;
        Thu, 18 Jun 2020 02:11:15 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id c65sm2686764wme.8.2020.06.18.02.11.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2020 02:11:14 -0700 (PDT)
Message-ID: <648249b5171753c9062190dc4aefe9a1e28bace8.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper]scripts/publish-artefacts: Fix for Bug 13947:Change checksum file extension from sha256sum to sha256
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Vineela <vineela.tummalapalli@intel.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Thu, 18 Jun 2020 10:11:13 +0100
In-Reply-To: <BYAPR11MB27904C8CCFDAE4935E15D3C7889A0@BYAPR11MB2790.namprd11.prod.outlook.com>
References: 
	<BYAPR11MB27904C8CCFDAE4935E15D3C7889A0@BYAPR11MB2790.namprd11.prod.outlook.com>
User-Agent: Evolution 3.36.2-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-06-17 at 20:12 +0000, Vineela wrote:
> From: Vineela Tummalapalli <vineela.tummalapalli@intel.com>
> 
> 
> ---
>  scripts/publish-artefacts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/publish-artefacts b/scripts/publish-artefacts
> index 6ed922a..3ef7206 100755
> --- a/scripts/publish-artefacts
> +++ b/scripts/publish-artefacts
> @@ -7,10 +7,10 @@ sha256sums(){
>      dest=$1
>      for x in `find -L $dest -maxdepth 5 -type f`; do
>          for w in $x;do
> -            if [ ${w##*.} != sha256sum ]; then
> +            if [ ${w##*.} != sha256 ]; then
>                  shasum=`sha256sum $w | awk '{print $1}'`
>                  filename=${w##*/}
> -                echo $shasum $filename >> $w.sha256sum
> +                echo $shasum $filename > $w.sha256
>              fi
>          done
>      done

This is turning into a bit of a mess. The preferred naming is
"X.sha256sum" since it says what they are and is the most clear. In 3.1
and mostly in 3.1.1 they were called "X.sha256".

We need to decide if we just switch to the naming most of us don't
like, or we switch to the one which we'd prefer. I'm leaning to
switching as there isn't much that depends on these (yet) apart from
the buildtools script which we'd need to patch with the new version url
anyway.

Any other strong opinions? There was a recent comment we should
probably have a manifest file containing the checksums, I'm wondering
if that should replace the individual checksum files anyway?

Cheers,

Richard



