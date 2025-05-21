Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA585C2D0CD
	for <webhook@archiver.kernel.org>; Wed, 21 May 2025 13:31:18 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web11.11261.1747834273262480376
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 May 2025 06:31:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XJhSV1WK;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ac34257295dso1033494666b.2
        for <yocto@lists.yoctoproject.org>; Wed, 21 May 2025 06:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747834272; x=1748439072; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ePjn92C1j0xRj8rz/K09Dn4AY58NG1+7XYFNPCGusvQ=;
        b=XJhSV1WKhr/fAzzEK/3mu0XF0eOBwfazwX/7iTMbTlfV2VuVBJlq1Gjr+L4kO5yp4T
         TVuvI7CMXnRzx+YDH3bg+pvCMS6xZr3iNSr2dlGXklVUvff7NEftKrg8gKtlnHowQGCJ
         66JUKrlFui2jFOr6+pn60j5C7BGlsPmhDeRDs3V5wpreKDCEIkScW/HFRXhosvukfs2y
         UggNdVuOPZC26Ija2is51PrJmbLPFa/9HsJ6wIdB/dLvqrv0nBaJdBJiDPACft4yeiVd
         BpMWvftnfE1L4mce881ciOa3H80mHAYQ3JaaCPkFe0spQdwjJWJUH++mYOYHCAyOejvw
         9cnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747834272; x=1748439072;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ePjn92C1j0xRj8rz/K09Dn4AY58NG1+7XYFNPCGusvQ=;
        b=uVUG4m1vKu0D41b23w9u/0wlRTDa/Zaitd78ex+r5Winlf2E7TazhJZGk6FY2vOAYw
         Uin30zniWedNImwxJA6YiwX1gnvtnOFyzHkhNgQ2mgLpxSQkTE8/CIOw+Go2SRudOQjI
         zhqQ2wjNyXpvJ8TOjhzA4LM64Ra+9vx1CQ6d/kXPmYoDn+CZbz0NsCjJTzzbGK/MJGOI
         Dpk4BbLnyxwjJrIcwUybLHhF9EatChgq+JFK9qatteuf4QIdoauRGvWB2VzIDzT6/GVO
         NINRDQWoGdRZsLCE0eq2RWFVxMfJjqXwaymFevz5mSYAP3HtFIjXk9FysMB1RW1PRkLz
         awPA==
X-Gm-Message-State: AOJu0Ywgo/S86zaNQtH3itHx5dgdIhQkgYzzLgYxPZasV4FdHe3XJ+wQ
	QreLdNAE79P1YVnY7H5aflxsrEP9BPlghfNINqeSAs/xk1+mcihgJh9soRruYmAd
X-Gm-Gg: ASbGncs5t8OSPwUQZW4IsVV0Rq5VH3pirsT3Us5nRNdHLqpCwrGb1zuCCoZAgLsJrFm
	bWXmeEGrejV05xfAvC8zYouHBs9SI9pyGQotzVIUpT3MmtnWHZrV5e3Lh6R2zZXCYLaQqSlFIB6
	zX40EW7uceZlWn9acVaa6kW0pRMx+QTKidK1UY6yoHf0UpeXvVETuhSsDcz+jPK/kttDoxNxk1K
	YiRIfSckIWbEZZYc/7YO2Px1yVnHYbsaXQfoWiV2t6kpe7Kf2yp5qT/iH+0ltHb4Oc2oELHqHF8
	KFT6+bqOZneLtOb63oyX8NLg5qQchN2hgiAHCXaFlzS8mQ17Z7nBJ/MahBw=
X-Google-Smtp-Source: AGHT+IHSrmxWn/Ciq3e0mxewMQLNQAMDOV4AZy+bVdhaR1BV3CzhG4MGn0FsorcFAU2LZRx1W17eSg==
X-Received: by 2002:a17:907:d1a:b0:ad5:7732:6759 with SMTP id a640c23a62f3a-ad5773276e9mr1135195066b.53.1747834271279;
        Wed, 21 May 2025 06:31:11 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad5572f645csm662345766b.142.2025.05.21.06.31.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 May 2025 06:31:10 -0700 (PDT)
Message-ID: <68bd1c16-403a-4480-a599-05eb266aceab@gmail.com>
Date: Wed, 21 May 2025 15:31:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Yocto converting package.json into npm-shrinkwrap.json
 incorrectly
To: yocto@lists.yoctoproject.org, joseph.maniaci@seagate.com
References: <UaT7.1747765712253527855.KxSx@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <UaT7.1747765712253527855.KxSx@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 May 2025 13:31:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65389


On 5/20/25 20:28, joseph.maniaci via lists.yoctoproject.org wrote:
> $ bitbake --version
> BitBake Build Tool Core version 2.8.0
> $ cat ~/eps-yocto/poky/meta-poky/conf/distro/poky.conf | grep
> DISTRO_VERSION
> DISTRO_VERSION = "5.0.1"
>  
>  
> I have a legacy codebase including back-end and front-end code. I am
> trying to use 'devtool add' to create a new recipe that I can modify
> from that point. I am including the URL for the git repo of our
> codebase as an argument. For some reason yocto appears to be doing
> some sort of search of the codebase for specific files. For example, I
> had a tar file masquerading as a .BIN file that yocto threw a x509
> certificate error over. Resolved that and now I have a...
>
> bb.fetch2.ParameterError: URL:
> 'npmsw:///home/user/eps-yocto/build/exos-x-bmc/tmp/work/recipetool-iio7tbt8/source/git/npm-shrinkwrap.json'
> has invalid parameters. Unsupported dependency:
> @babel/helper-string-parser
> ERROR: Command 'script -e -q -c "recipetool --color=always create
> --devtool -o /tmp/devtools9kvo0br 'git@myrepolocation/repo.git'  -x
> /home/user/eps-yocto/build/exos-x-bmc/fetchuri -N appsv-tool
> --srcbranch main" /dev/null' failed
>  
> ...error. Looking into it with our web guys, and it appears yocto
> found our package.json file(which it then converts into
> npm-shrinkwrap.json)(which also does not contain
> 'babel/helper-string-parser'), but does contain the following:
>
> ....
>   "devDependencies": {
>     "@babel/core": "=7.21.5",
>     "@babel/preset-env": "=7.21.5",
>     "@vue/compiler-sfc": "=3.2.47",
> ....
>  
> We think the 'helper-string-parser' is being brought in via the
> @babel/core dependency, however, it does look a little different from
> the others that got generated in the vicinity inside
> npm-shrinkwrap.json. Besides not having dependencies, the only thing
> that looks different is the lack of the "dev": true,.
>  
>     "node_modules/@babel/helper-skip-transparent-expression-wrappers": {
>       "version": "7.25.9",
>       "dev": true,
>       "license": "MIT",
>       "dependencies": {
>         "@babel/traverse": "^7.25.9",
>         "@babel/types": "^7.25.9"
>       },
>       "engines": {
>         "node": ">=6.9.0"
>       }
>     },
>     "node_modules/@babel/helper-string-parser": {
>       "version": "7.25.9",
>       "license": "MIT",
>       "engines": {
>         "node": ">=6.9.0"
>       }
>     },
>     "node_modules/@babel/helper-validator-identifier": {
>       "version": "7.25.9",
>       "license": "MIT",
>       "engines": {
>         "node": ">=6.9.0"
>       }
>     },
>  
> Although, that's not entirely true, as you can see
> 'helper-validator-identifier' doesn't have a dev/true line either,
> everything above 'helper-string-parser' does. I just think that
> helper-string-parser was just the first instance to fail, everything
> else is is bound to fail as well.
>

Would that be possible to publish somewhere a minimal package.json (or
mininal npm project) that reproduces this? I tried with some minimal
project (and I added the packages you mentioned as dependencies and
devDependencies), but it didn't generate this error.
I tried this using Walnascar branch of Yocto (if you use a different
one, that would be good to know also)

