Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web12.4402.1599679199509826075
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Sep 2020 12:19:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OY/Fu3/p;
 spf=pass (domain: gmail.com, ip: 209.85.210.174, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f174.google.com with SMTP id x123so3022803pfc.7
        for <yocto@lists.yoctoproject.org>; Wed, 09 Sep 2020 12:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=B7HUGTGxi680/ZKs7PyB06bfYCkdYeArT18Ajxh6/mA=;
        b=OY/Fu3/ppUkhHIEMVJECHgNaKOTM57XhGo+p2wceiI0qVi0QlH4qMlWy4/FBragbO6
         4KSuSP5sPTUE8TobuTsH0rj/ep1gCqnbiN2ElxwYxOdTqnnG8niV2F2U2zr4o1dDBJRP
         6ojWZ5HET4uPZzPjlHDX5j3d7WZ6V8vqNksfGzFTI6HrqNtBs7f563M9daj8zOsR5rEe
         Vg26hkCLAxuR4p/mhH8S4Sd2SYSPTuqOftaAnG2rEgYPMfGS0Xu0c6NESRXobTmmrUfk
         teDDqWxqiUw6nGo7ashaSGvolaLfV8jd8TGPng2NVzZbkH+PKzk3DmFwWyqTy/I8YL2y
         UGQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=B7HUGTGxi680/ZKs7PyB06bfYCkdYeArT18Ajxh6/mA=;
        b=tWQvbq/TgdSlcKRrKpqZHH069f9vScFg42cKmSABmPPNVeMl4Rl7hP4Y3ri50563MI
         3gYhzv761uB5y3iedFpKTXO761BS+9WAG8Lxh6h8obsEWn5jb871txQggGS1t+IwmdZq
         bUce4Mq0zrPWGc9/HUYiKqVSdD+Sq7B0+ylivO3GvGP7Byqkap2JN2yP0cTi8F52xm6U
         fazWnJ/JW0DjCdGu3mUEeWvODguwTLwibXFWtwyuOHYj8QTb28TSIubjSVlN72EWQHxI
         trjoZO6TnzI0ZfPK2Tggi8uZ4o5+Hf4jXQ5qm0L5BM50LqDdJivTw4yzYSgrT7JdDbBK
         YpHw==
X-Gm-Message-State: AOAM5311NmJbOvLyQWz3i2ki0/jk5wIf9xrjqWXyUOd9xYHPR6auonCm
	N7m/4eaEztau2LuZwJcTMzsjJNrK0AjPrg==
X-Google-Smtp-Source: ABdhPJwi++OMWJh/hxRqKtJ/1w3qrrstYL7yl28nbMRd4TlNwXEHYQi0D0XMdnZHZ24uO8qIEp2TvQ==
X-Received: by 2002:a62:1a95:0:b029:13c:1611:6539 with SMTP id a143-20020a621a950000b029013c16116539mr2050662pfa.11.1599679198610;
        Wed, 09 Sep 2020 12:19:58 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:d9a:84f1:6cc7:73ee? ([2601:646:9200:4e0:d9a:84f1:6cc7:73ee])
        by smtp.gmail.com with ESMTPSA id a1sm3460056pfr.12.2020.09.09.12.19.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 12:19:57 -0700 (PDT)
Subject: Re: [yocto] Compiling and packaging libraries
To: majid.nasiry65@gmail.com, yocto@lists.yoctoproject.org
References: <3Msx.1599382429896859430.R8sy@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <c6428c86-ee02-c8db-c306-7776869c2d82@gmail.com>
Date: Wed, 9 Sep 2020 12:19:56 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <3Msx.1599382429896859430.R8sy@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 9/6/20 1:53 AM, majid.nasiry65@gmail.com wrote:
> Hi
> I wrote a recipe for adding a library to my image it compile correctly 
> but I have issues in installing it and I got "-dev package contains 
> non-symlink .so" error.
> I know default method for install libraries is versioned mode and I need 
> to make symbolic links, but I don't know how?

in library's build system you want to use symbol versioning during 
linker stage. Then you can create using ln cmd to creating symlink to 
lib.so and lib.so.<major_version> see [1]

> Another question is what is difference between -dev and -dbg output?

dev packages contain, development headers and libraries which are useful 
for building packages on target

dbg packages contain debug info, which is useful if you are debugging on 
target.


[1] http://www.microhowto.info/howto/build_a_shared_library_using_gcc.html
