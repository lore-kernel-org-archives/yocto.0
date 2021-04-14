Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web11.18714.1618428661306970275
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 12:31:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AqrtSH12;
 spf=pass (domain: gmail.com, ip: 209.85.128.50, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id b136-20020a1c1b8e0000b029012c69da2040so3739680wmb.1
        for <yocto@lists.yoctoproject.org>; Wed, 14 Apr 2021 12:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=wZCJxX2/sxHXgE5DuS44YAXQeaFEKpefzgT/Ldl1FzY=;
        b=AqrtSH12rKBSC3TOaSg3ARUmY1BmuTitxjcKDJvW4g1b4KNTpoYzteHQDwu2xwss5r
         ggbgUzCXr6w0bVOkOq+8W7RUMzp66QcbpLFISi41/NCg486KV0JdCtzT8LWsi+dqIvUh
         MzCrqc+nvwcHZO6VrFlv0Z2LnTTuTLY2J+Lc+iKCAoBjWWfjjUEhGU4ttFVC68zVH8w3
         1uqun91GoXyB6crCr6/vh7JV59gRCCI5+RVXTpu38taFWx+VsBkvddmsc3ifPiZIOx+1
         g7IwrMTwPxPQitoX/85+mhhwJvMkBu2HHJWJ2USoGjpW+0hTPPRLfPGjZYO4dqrTs95K
         3Ohw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wZCJxX2/sxHXgE5DuS44YAXQeaFEKpefzgT/Ldl1FzY=;
        b=LQEZm3q7ZeNKWEnnRPu5ISd7xXA9L8cKUzarAd07b1Wu8cD6zUI2yOoVHXQwyT5CjE
         DdU771wEt6w67tdSkqJiRSGaEh/JtLqgmb7FF6Fa1/PVBV4KwsT+2NflQnEVTRo2EJQJ
         u0XLEoFVOap1Rhr0O00ZUDecV1cBGlPL0s0LFTIMh+bZAVFZLArhYsGfoAlbwM+MAnB1
         Ts4XARApf/zv1qr9347i+EITNCW7uve1cUQiFmzOaHJDi61WSjUia7M5I6b6ScnVIJui
         ZyYy3IsA+tpeZdYQQs80OnwbBNCX8rqO+lvzQUEnpLwHDTfCnmy4StJqsCvIY8CxCKyN
         ye8g==
X-Gm-Message-State: AOAM533BW71LlK4AEVonM0/NhP4/kQbsjom0Y2YvCn91KKkQuQ3ul4gm
	QoYH6/m4WRv+YEO9x4E8F4LwUEBq6tM=
X-Google-Smtp-Source: ABdhPJz8Kk6q2HtBl7+Aj3iGfoMqecreIkRSNZVBfO0di8z/ojZKJeSWVztJEL+y2CwoImq514Nayg==
X-Received: by 2002:a1c:c910:: with SMTP id f16mr2261538wmb.136.1618428659681;
        Wed, 14 Apr 2021 12:30:59 -0700 (PDT)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-86-147-152.home.otenet.gr. [2.86.147.152])
        by smtp.gmail.com with ESMTPSA id d5sm433446wrx.0.2021.04.14.12.30.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 12:30:59 -0700 (PDT)
Subject: Re: [yocto] #golang: go fetches dependencies in compile phase
To: Juergen Landwehr <juergen.landwehr@gmx.de>, yocto@lists.yoctoproject.org
References: <8f3535e5-42c0-baf7-ae8b-fca906f33d05@gmail.com>
 <7847.1618228053017471875@lists.yoctoproject.org>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <5331e9f9-b681-b550-68c0-8cbc752bba1d@gmail.com>
Date: Wed, 14 Apr 2021 22:30:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <7847.1618228053017471875@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi,

My comments are inline.

On 12/04/2021 14:47, Juergen Landwehr wrote:
> Hi Robert,
> 
> thanks for your thoughts.
> 
> I see your point and the last thing I want is "NOT reproducable builds".
> 
> But dependency management in go is not that arbitrary as it may seem. 

... if everybody does what they are supposed to - which is not the case.

> Dependencies and their version is stored in "go.mod". To ensure 
> reproducable builds, hashes for each dependency and version are stored 
> in "go.sum". Both files are in git and together with a local golang 
> proxy, this should ensure reproducable builds, right?

This does not sound too bad. This would also mean, that if the outside 
repo dies you can still build and that you know what's on your proxy.

> 
> To ensure that licences are valid and did not change over time, we 
> developed a little tool, that goes through all dependencies and creates 
> the following output, which we insert into our recipe:
> 
> LICENSE = "Apache-2.0 & MIT & MIT & BSD-2-Clause & BSD-3-Clause & ...

Here you

1) Totally lost which License comes from which module and I hope 2 times 
MIT is just a typo.

Of course if you are really serious about licensing you should use a 
tool like fossology, upload all your sources there and inspect them.
You will be surprised.

There are a couple of tools out there which scan your sources and some 
which claim to do stuff with golang as well.

2) Do you check if the licenses are compatible?

MIT and Apache are compatible:

some googling:

"Both the Apache License and the MIT license are permissive, so 
incorporating MIT licensed code into your Apache licensed project is 
certainly allowed. Just be sure to attribute the original author for the 
parts your incorporated and include a copy of the MIT License terms, as 
required by the license."

Apache and BSD should also be OK:

some googling:

"In both of them you must:

     Include copyright

But in Apache, unlike BSD you must:

     Include License
     State Changes
     Include Notice
"

> 
> LIC_FILES_CHKSUM = " \
> file://${S}/src/${GO_IMPORT}/vendor/github.com/coreos/go-oidc/LICENSE;md5=d2794c0df5b907fdace235a619d80314 \
> file://${S}/src/${GO_IMPORT}/vendor/github.com/go-playground/locales/LICENSE;md5=3ccbda375ee345400ad1da85ba522301 \
> file://${S}/src/${GO_IMPORT}/vendor/github.com/go-playground/universal-translator/LICENSE;md5=2e2b21ef8f61057977d27c727c84bef1 \
> file://${S}/src/${GO_IMPORT}/vendor/github.com/godbus/dbus/v5/LICENSE;md5=09042bd5c6c96a2b9e45ddf1bc517eed \
> file://${S}/src/${GO_IMPORT}/vendor/github.com/golang/gddo/LICENSE;md5=4c728948788b1a02f33ae4e906546eef \
> ...
> 
> This is a manual step and whenever dependencies change we have to create 
> this list again and add it to the recipe, but it contains all the 
> required license information and makes them visible in the recipe.

really all?

You search through every single file of a go module and it's 
dependencies? Or just the license text, if there is one?

> 
> It might pollute the recipe a bit, but luckily we do not have thousands 
> of dependencies like some npm projects. So I think it is still 
> manageable. And is it much less work, than defining a recipe for each 
> dependency.
> 
> So we would
> * guarantee reproducable builds
> * use the programming language (in our case golang) to handle dependency 
> management
> * ensure that licenses are visible and correct
> 
> I mean it is not perfect and still a compromise, but it should work 
> without breaking reproducable builds or causing license issues?
> What do you think?
> 
> Regards,
> Jürgen
> 
> PS: Thanks for the link. I was not aware of this discussion (it is quite 
> a bit to read:))

Regards,

Robert

> 
> 
> 
> 

