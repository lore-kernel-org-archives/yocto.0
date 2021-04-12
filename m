Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web11.29506.1618218015983290694
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Apr 2021 02:00:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sYiM6tiQ;
 spf=pass (domain: gmail.com, ip: 209.85.221.49, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wr1-f49.google.com with SMTP id e7so3097707wrs.11
        for <yocto@lists.yoctoproject.org>; Mon, 12 Apr 2021 02:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FAy/65Ws0QxURhqOa6lL7uc2LBgsIUGyoKzmH18484M=;
        b=sYiM6tiQxPe7WDKxBbg+687QaqzVYInyyp9CI1Ztap5GbJBy7H/hQj6osjia0lvWOQ
         yjB+Y/l9EQtGApKTzZUtRUebU/P/jzbFoOE8TA51uouF1uoZbmDFdO8UW2iTyj1oeu0f
         ioGjnuU6nBWS3HTf9iMGzf/JEl3pAz2zhpUaIUCOlawSEYra5QkvYa/tiAkab6v3rxCc
         EJ+aJiPP8fsI5qER3C/w+Hr3MHguXeJusEVsqnqS6sN6Q6UYnNAnwM84bATH36uoG+nY
         eoRMkjmG/8fR/fulvooM9JGPGHlLD4SWWX9TRt0dyCLwTjOcdAR+D/Z/1nkt7OVaJlUj
         T7eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FAy/65Ws0QxURhqOa6lL7uc2LBgsIUGyoKzmH18484M=;
        b=JmwyLlifYMVtGbuKMokD3Y9d+tbX246xQMJ04vGQLqtdRiGQcvrrGYtdCpBBaXyBYh
         mmyPijLGRNFbpAcCRKiQ2ZEDQ7mJnMnmTL/2fMUm911shNhxiPE1L8LxtCF5ZDIZ/xay
         /0jGo7QxE7b/Nfu14wdqksQwx3PQ1v4gOOHZIcaUM3/JVhTb1WkZSu5TE1Xz7oH3+VRv
         XNJdtri+gWBi7VvgY+CIYHBY8Smwo9LvIqpbXOb48NRUiSbiBZj23m7kNRjeIsF+FHBX
         OLqD16fJRUitXLll37o9Py/xQoMp3ijhdFj9zaHYn/8Vvwf+hNqZZL8ip868RstQCkbg
         7GTA==
X-Gm-Message-State: AOAM531uKAWMafvDv+nGRdUrnOwe+cSAfVKjLKV/yXv2vjNdf2YEW3Oa
	hG+DKrFccfZtW5ZJP2NZ6fc=
X-Google-Smtp-Source: ABdhPJzEWjbDXDXfsunYMFQd2Iz0eFSbiPiNfbssVpwdTRCqESKIN0LwGtp9vSgb+BvQSCwP0mxYQA==
X-Received: by 2002:a05:6000:c2:: with SMTP id q2mr19732427wrx.200.1618218014439;
        Mon, 12 Apr 2021 02:00:14 -0700 (PDT)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-86-147-152.home.otenet.gr. [2.86.147.152])
        by smtp.gmail.com with ESMTPSA id m67sm15176270wme.27.2021.04.12.02.00.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:00:13 -0700 (PDT)
Subject: Re: [yocto] #golang: go fetches dependencies in compile phase
To: Juergen Landwehr <juergen.landwehr@gmx.de>, yocto@lists.yoctoproject.org
Cc: alex.kanavin@gmail.com, Khem Raj <raj.khem@gmail.com>,
 kweihmann@outlook.com
References: <trinity-ee96bdd6-9e22-468a-b5a7-f4909bb2b709-1617976415845@3c-app-gmx-bap62>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <8f3535e5-42c0-baf7-ae8b-fca906f33d05@gmail.com>
Date: Mon, 12 Apr 2021 12:00:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <trinity-ee96bdd6-9e22-468a-b5a7-f4909bb2b709-1617976415845@3c-app-gmx-bap62>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 09/04/2021 16:53, Juergen Landwehr wrote:
> Hi,
> we are developing an application in go and use the "go-mod" bb-class 
> from poky. This works fine.
> However, the problem is, that the dependencies in go.mod are now fetched 
> in the compile phase and not in the fetch phase.

Alexander (whom you cc'ed here as well) wrote a long time ago on the 
mailing list[1] about this stuff.

We have a couple of issues with those "modern" languages like go, which 
behave quite differently from good old Unix stuff. So the paradigm on 
which the whole Bitbake/OpenEmbedded/Yocto system was built does not 
quite apply for those.

Don't get me wrong, you can also do stupidities like git clone via make 
or cmake, but this is most likely not the way those tools should be used.

1) "Guaranteed __NOT__ reproducible builds"(C)

Go pulls in dependencies by itself, which might explain why it's in the 
compile phase and not it the fetch phase.

This leads to many interesting issues, like "guaranteed __NOT__ 
reproducible builds"(C). The problem is, that you don't have any 
influence on dependencies of dependencies. Someone changes somewhere a 
dependency on github and the party starts.

1.1) One sane solution to "please give me always the same input" is what 
Konrad already mentioned in combination with a local golang proxy.

2) Open Source License Compliance

If you pull in all those funny dependencies and also link things 
statically, like with go, Open Source License Compliance is getting very 
interesting.

People typically just use the license of the top level "main" entry 
point. In reality you would need to check all the dependency tree for 
licenses. You should also check if it's legally allowed to combine the 
licenses and in case it's allowed what are implications of GPLvx, 
LGPLv2, LGPLv3 without exceptions for your product.

[1] https://www.yoctoproject.org/pipermail/yocto/2017-March/035028.html

Regards,

Robert
