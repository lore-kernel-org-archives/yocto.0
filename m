Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B700DC2D0CD
	for <webhook@archiver.kernel.org>; Wed, 21 May 2025 13:42:08 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web11.11486.1747834921627590342
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 May 2025 06:42:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NsN8KMFj;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ad545e74f60so794505666b.2
        for <yocto@lists.yoctoproject.org>; Wed, 21 May 2025 06:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747834920; x=1748439720; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=b8yU4gzyxOHoXqkml1+Jj26Eyd3gXd8WsFVfR1afcQI=;
        b=NsN8KMFj+3kwts7yaMIf7w5oLzOud10efNHIzIKwf2QpoMxHiYYtHdVAxLKVgEKCc8
         VaiYjGx8V6db1lEvkJBK9UlOqy7h+Nat+FtJvf9HRPyafdZ+oMOywWjSow8kyJgolw7y
         dyqa0gySyojaRLbWakQs3hpl1wsZBkHrBB8xEMJGv2CeZKgUSt70bfaYOHxdi5dBAi2V
         06/8gQKISMRxozS20EDhgkGuQvGPCK/n3E4J7CSP4yEPdPbaN/ym3TOOF+f5l87HCX/C
         AszvxPgi+zFi5CXoRUk8ODzBk6ctmALPgkNLgDd1iJ0pK0e1Hn4uw4Wb7ZaeFonJej3U
         gApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747834920; x=1748439720;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b8yU4gzyxOHoXqkml1+Jj26Eyd3gXd8WsFVfR1afcQI=;
        b=htOH6LokgO2YtbMC1btQ8SfZ00tRy/2K+ZiOGiGeADm5klFnhacNdIaCeieiOzcBiD
         qYthKuKZ1HIV6QAz/ay7FyI0lSQbrFhbzaPR9iml6nRR3QzYf0GFvrntt3pU6AWB1uFN
         vCkzFPZQREu8ecaDni1XHc0ppSobv8G9pOY5xT8y6uGpRq0E3MOxxdDnI6jMkE43H9k8
         m5LBZw2NOcXYWYn5UaUNVDJFrJf93lTeEpp3S7LsV+iydTWtG+b10h5lnWR21HcTw7dx
         A2tdKC5abY4pUcbhKsRiIdTgO8olIETArb/VZPUwseKUomR+FJMgtQDOPC1cGyzTM4Y2
         wbxA==
X-Gm-Message-State: AOJu0YyAwQmPII5o3uOUMEzFy7/Mn03LKVTBaqgLvPqJAjJyV9IQUpw/
	R39zmSZ2xhowpvy9+puricE1zymqQWQRA/qLLv5QidC79Bnm2dhxghP7+uT75Q+l
X-Gm-Gg: ASbGncs0Q75mZYlIThIVsXaDfmB5Xhf2U+R1/1qmk1YICRyglQ85RMItunvWlt1Owuk
	C23gvnmEaE7OcF7AFmSpY+bOkxaZq0RTDfB4uNAUFS+zHwei6TZXlg+3/GHsMlrcK/joXoqdR8s
	Achkn67XDGxIUnrqOZ0wMZP0q6qmze1H9WCkZl+Ipyl9sA8GrxSRbA+RB05rJUQYZy8UFU4gD+p
	TvTpMP8/2pEXgRcQ3Xx5L7WEg8lEy/mu4YMdaig5BO4ygbz/7qi1eW5WFbpzJHvxdsSy9SMYlB7
	O9ER2ZY5pVz7Hlxsxs30EgNj8orsdZZ002IYz+rrQsGArDVhTeuwPxCAAIg=
X-Google-Smtp-Source: AGHT+IERZPUjhICnZV7SIjepIRg9YbeJhVXh2tm2s6bDPHmRUUcbNUVkRPXH91zn+SHCMh71so7eFw==
X-Received: by 2002:a17:907:7e87:b0:acb:5c83:25b with SMTP id a640c23a62f3a-ad52d42bf0cmr2057243566b.7.1747834919759;
        Wed, 21 May 2025 06:41:59 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d276592sm900039866b.73.2025.05.21.06.41.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 May 2025 06:41:58 -0700 (PDT)
Message-ID: <52a8997e-c115-4b48-9d1b-f3dcbcdeb081@gmail.com>
Date: Wed, 21 May 2025 15:41:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Yocto converting package.json into npm-shrinkwrap.json
 incorrectly
To: yocto@lists.yoctoproject.org, joseph.maniaci@seagate.com
References: <UaT7.1747765712253527855.KxSx@lists.yoctoproject.org>
 <18418E02ED756E8D.3155@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <18418E02ED756E8D.3155@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 May 2025 13:42:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65390

On 5/21/25 15:31, Gyorgy Sarvari via lists.yoctoproject.org wrote:
> On 5/20/25 20:28, joseph.maniaci via lists.yoctoproject.org wrote:
>> $ bitbake --version
>> BitBake Build Tool Core version 2.8.0
>> $ cat ~/eps-yocto/poky/meta-poky/conf/distro/poky.conf | grep
>> DISTRO_VERSION
>> DISTRO_VERSION = "5.0.1"
>>  
>>  
>> I have a legacy codebase including back-end and front-end code. I am
>> trying to use 'devtool add' to create a new recipe that I can modify
>> from that point. I am including the URL for the git repo of our
>> codebase as an argument. For some reason yocto appears to be doing
>> some sort of search of the codebase for specific files. For example, I
>> had a tar file masquerading as a .BIN file that yocto threw a x509
>> certificate error over. Resolved that and now I have a...
>>
>> bb.fetch2.ParameterError: URL:
>> 'npmsw:///home/user/eps-yocto/build/exos-x-bmc/tmp/work/recipetool-iio7tbt8/source/git/npm-shrinkwrap.json'
>> has invalid parameters. Unsupported dependency:
>> @babel/helper-string-parser
>> ERROR: Command 'script -e -q -c "recipetool --color=always create
>> --devtool -o /tmp/devtools9kvo0br 'git@myrepolocation/repo.git'  -x
>> /home/user/eps-yocto/build/exos-x-bmc/fetchuri -N appsv-tool
>> --srcbranch main" /dev/null' failed
>>  
>> ...error. Looking into it with our web guys, and it appears yocto
>> found our package.json file(which it then converts into
>> npm-shrinkwrap.json)(which also does not contain
>> 'babel/helper-string-parser'), but does contain the following:
>>
>> ....
>>   "devDependencies": {
>>     "@babel/core": "=7.21.5",
>>     "@babel/preset-env": "=7.21.5",
>>     "@vue/compiler-sfc": "=3.2.47",
>> ....
>>  
>> We think the 'helper-string-parser' is being brought in via the
>> @babel/core dependency, however, it does look a little different from
>> the others that got generated in the vicinity inside
>> npm-shrinkwrap.json. Besides not having dependencies, the only thing
>> that looks different is the lack of the "dev": true,.
>>  
>>     "node_modules/@babel/helper-skip-transparent-expression-wrappers": {
>>       "version": "7.25.9",
>>       "dev": true,
>>       "license": "MIT",
>>       "dependencies": {
>>         "@babel/traverse": "^7.25.9",
>>         "@babel/types": "^7.25.9"
>>       },
>>       "engines": {
>>         "node": ">=6.9.0"
>>       }
>>     },
>>     "node_modules/@babel/helper-string-parser": {
>>       "version": "7.25.9",
>>       "license": "MIT",
>>       "engines": {
>>         "node": ">=6.9.0"
>>       }
>>     },
>>     "node_modules/@babel/helper-validator-identifier": {
>>       "version": "7.25.9",
>>       "license": "MIT",
>>       "engines": {
>>         "node": ">=6.9.0"
>>       }
>>     },
>>  
>> Although, that's not entirely true, as you can see
>> 'helper-validator-identifier' doesn't have a dev/true line either,
>> everything above 'helper-string-parser' does. I just think that
>> helper-string-parser was just the first instance to fail, everything
>> else is is bound to fail as well.
>>
> Would that be possible to publish somewhere a minimal package.json (or
> mininal npm project) that reproduces this? I tried with some minimal
> project (and I added the packages you mentioned as dependencies and
> devDependencies), but it didn't generate this error.
> I tried this using Walnascar branch of Yocto (if you use a different
> one, that would be good to know also)

Reading your mail once again, I see you are using Scarthgap - but it
doesn't change my previous mail. Just tried on Scarthgap the same
project and command, but it worked - an example would be helpful.

