Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web09.4552.1616473536259562107
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 21:25:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=V/Cf9eqM;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id k23-20020a17090a5917b02901043e35ad4aso11585789pji.3
        for <yocto@lists.yoctoproject.org>; Mon, 22 Mar 2021 21:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Vrvug78Z+nnU4eAORrhM0/HpY1YgB9BKDqx+kObaGWo=;
        b=V/Cf9eqMsZTUY21VLuP1DxdY/SnbZ0QEVlSRY2bPDp4ym2F9CVv/OJaLCnKFe8boTj
         u3eaAwrXRbsWuNsPIC6EGcmqbu8WKyuwEjwHz0xOk0N6XbepKTnWcCXmLH5bKoZRps5a
         4u/VZXEqeu0IhSZDIXa+wK6keSnBcx/4z0k0C8OpSjdLkmLCSRmnRaXDojv3I3Ga2csq
         k61K0KRoRIqt65NpgwP1ml5a9ZQ1VP2ZDQ/2hSUD7+BWJvcEbZk5efsWKsZOjWdXN952
         cUfcQLufzIeNqnTEUOwSE3com8ohYPgIF9E3TAYjTaqvMgWvk9NlxKvJg+xSfi9aHYU8
         gY7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=Vrvug78Z+nnU4eAORrhM0/HpY1YgB9BKDqx+kObaGWo=;
        b=jHwA98K/C2eOo1uyL/WS01D2wnGelHA5GnUeXsj8TJNVNfeggxkLpLvpLTgFt+U/lM
         DQE8/7YwcxdSYDcgzD8g5lbw1W1ouAlsjSKXjSpojeHfqsCdgXjgxZakWuy4poPKXOFM
         zWHE7RiWm7qzN7AR3UlYLn+UIDYF0TjK3PlHWXDET4njrbmvsy9Vd5qdQnW8ClfuOxf8
         PyB1AJ02AW1PmnjrW+Tb7y8dHsBgMReR41TE/Y5INCVna8dm76DV8KijK1GwjTqoYrGJ
         W9cQuIgWDidSQezl/Mc58mHTm6XEv/nU91g42ZuIoXs5jCBGYwKbdDcOleA05YY9raM9
         MrSg==
X-Gm-Message-State: AOAM533z9z7W6EN4dM+be7lPiUSHk1lRbsLzTFjnZhvvMClYP6v9ux78
	Fh4z4E20DczCnE6HI99bHC8tDVf/2qjJZQ==
X-Google-Smtp-Source: ABdhPJx/ehkwBFpxn2yx9ygrRTeJL7acEKGSU5UBd9ThWE9iJ0IdzRCnRubF61+/EGd4gul5ANq1bg==
X-Received: by 2002:a17:90a:cb0a:: with SMTP id z10mr2545236pjt.170.1616473535175;
        Mon, 22 Mar 2021 21:25:35 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0::bd03? ([2601:646:9200:a0f0::bd03])
        by smtp.gmail.com with ESMTPSA id w15sm14849494pfn.84.2021.03.22.21.25.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Mar 2021 21:25:34 -0700 (PDT)
Subject: Re: [yocto] [error-report-web] [PATCH] Post/parser: Use bleach to sanitse XSS input
To: yocto@lists.yoctoproject.org
References: <20210322175626.307889-1-richard.purdie@linuxfoundation.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <cec7804b-1b83-1abf-f6fa-90b6ddb9df76@gmail.com>
Date: Mon, 22 Mar 2021 21:25:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210322175626.307889-1-richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 3/22/21 10:56 AM, Richard Purdie wrote:
> Instead of searching for "<", use bleach to sanity input to avoid
> any XSS issues.
> 

I will be able to test it. once its installed

> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>   Post/parser.py | 26 +++++++++-----------------
>   1 file changed, 9 insertions(+), 17 deletions(-)
> 
> diff --git a/Post/parser.py b/Post/parser.py
> index f411e02..536e872 100644
> --- a/Post/parser.py
> +++ b/Post/parser.py
> @@ -9,6 +9,7 @@
>   # Licensed under the MIT license, see COPYING.MIT for details
>   
>   import json, re
> +import bleach
>   from Post.models import Build, BuildFailure, ErrorType
>   from django.conf import settings
>   from django.utils import timezone
> @@ -19,21 +20,6 @@ class Parser:
>       def __init__(self, data):
>           self.data = data.decode('utf-8')
>   
> -    # returns true if the values contain '<' char
> -    # Ignore the failures field (which is an array anyway)
> -    # Ignore any non-str fields too [YOCTO #14208]
> -    def contains_tags (self, data):
> -        for key,val in data.items():
> -            if key == 'failures':
> -                continue
> -
> -            if not isinstance(val, str):
> -                continue
> -
> -            if '<' in val:
> -                return True
> -        return False
> -
>       def parse(self, request):
>           build_fails_logged = []
>   
> @@ -42,8 +28,14 @@ class Parser:
>           except:
>                return  { 'error' : 'Invalid json' }
>   
> -        if self.contains_tags(jsondata) == True:
> -            return  { 'error' : 'Invalid characters in json' }
> +        # Bleach data going directly into the database so that
> +        # displaying in any of the graphing doesn't introduce XSS
> +        for key,val in jsondata.items():
> +            if key == 'failures':
> +                continue
> +            if not isinstance(val, str):
> +                continue
> +            jsondata[key] = bleach.clean(val)
>   
>           b = Build.objects.create()
>           try:
> 
> 
> 
> 
> 
