Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.16667.1593590521618691968
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 01:02:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UH9Y7PmC;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6EE8E01DCA; Wed,  1 Jul 2020 01:02:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (robert.berger.yocto.user[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28177E01DC8
	for <yocto@yoctoproject.org>; Wed,  1 Jul 2020 01:01:58 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id f18so14732931wrs.0
        for <yocto@yoctoproject.org>; Wed, 01 Jul 2020 01:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=csii5DHSYpI4WEjbUEpCF1exElVxZgss9P+B6IEyjLU=;
        b=UH9Y7PmCBzTEnwXkHOk3Sa8OUEPHsVBhXSxqMtQAK+1FnWjkXxfHdpRsRHhzQghlgv
         9kdK/xCp4gi5d30pGieKZm+KKCmpsmONYgj33D4kK4y+stffbrU/+eKVw/i2Tt8eeKNz
         HIggPQCNtIiKKmAzgVnIm8oQIhHhFbRF75J55jtzRl0QVoWnsAAQpkaYOitYMN67TUTM
         baJ6dtjPdXIjwUQ4zoh1x4Ma5QFJEAvX97sHVeH9lZu34cPJ9ppwvmE8L/EfxKCEgTO3
         Yg95ib0mD/s9+Iw1JxQck/gx2cJdvRwpTUiFvRpWw1DWVWeTTu1nl868KkBDo3ZLi1Sj
         OldQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=csii5DHSYpI4WEjbUEpCF1exElVxZgss9P+B6IEyjLU=;
        b=Xmhebh4rK7MUfyq8VQCMdjh7dKp3Ah00tG+UER9Pu6oyfeQsxw4Yt2qf1c9tcZxH0l
         cMCopSOJBp3aZHTjJzcd075T8w8soDCumy0ArgfGDAwDq7Hfui4bdrbk8HzcSPVy3AVm
         oANHT/YbpJ9Dk3N3fDVCdv3+9gsOGwM9cNC1s9gFRjhRYs4rvKWIA6oeLLFavO1kBL8G
         3ZRE1pJ41X4FdUsXYTWs7deAoaTey7W+KXfFvL+MCcI4JrFiY+mEO4aLPM2W+Nv8yNpb
         uZKTVoHff8FpIupi1OoiS+YxM0IP+NDFzLl+j2TuueuXW7zmRDT7GXmHcLBsI+YSax40
         z3SA==
X-Gm-Message-State: AOAM532aX7AQCS35YrOSx3JWl5M6tZmsjBVoAScE6v66Nw2SOgaNR8pd
	ziTF+p0DN44pn0WXu3b30P9Fnl+H
X-Google-Smtp-Source: ABdhPJwuQ211DvIDaDPbmu1Q8/pnZ/yNk0k7siDn/QYiRQnvlC8EWxQiF54rJbBYmh4Qn8MEcWWL2A==
X-Received: by 2002:adf:f6cb:: with SMTP id y11mr24817564wrp.100.1593590517211;
        Wed, 01 Jul 2020 01:01:57 -0700 (PDT)
Received: from [192.168.42.52] (ppp-2-86-138-91.home.otenet.gr. [2.86.138.91])
        by smtp.gmail.com with ESMTPSA id k126sm6534116wme.17.2020.07.01.01.01.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2020 01:01:56 -0700 (PDT)
Subject: Re: [yocto] License reporting for golang (and rust)
To: Irving ST <irving@ssfivy.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
References: <CAN--ZaUr1C_rKY05_yWuD=A-S7deSvd5gFSYc2ZE-V7vDTkZxw@mail.gmail.com>
 <4bafc350-fa80-c4e9-a13f-579484cc389e@gmail.com>
 <CAN--ZaWd5MTbFxG73A11ws+PNj+nrwEJVdfYEhy4=4jG38T7vw@mail.gmail.com>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <50d6e449-030c-f360-a61e-e2c87df55cf6@gmail.com>
Date: Wed, 1 Jul 2020 11:01:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAN--ZaWd5MTbFxG73A11ws+PNj+nrwEJVdfYEhy4=4jG38T7vw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

My comments are in-line

On 30/06/2020 14:37, Irving ST wrote:
> Hi,
> 
> For anyone else having the same problem, here's what I eventually did
> for my go stuff:
> 
> I created a bbclass containing a task that gets inherited by all
> packages, but the task only does some work when it detects that it is
> inherited by a golang recipe.
> The task basically sets up GOPATH and calls
> https://github.com/rancher/trash - this tool populates all the source
> dependencies and generate a trash.lock file in the repository.
> Then I used https://github.com/pivotal/LicenseFinder to generate a
> json report that can be postprocessed with python.

Is your work available somewhere in the public? I would like to give it 
a try with dunfell 3.1.1 and influxdb.[1] Also it would be interesting 
what happens if you include a prebuilt go executable[2].

[1] 
https://gitlab.com/meta-layers/meta-tig/-/blob/master/recipes-from-source/github.com-influxdata-influxdb/github.com-influxdata-influxdb_1.8.0.bb 
(from khem and slightly hacked)

[2] 
https://gitlab.com/meta-layers/meta-tig/-/blob/master/recipes-prebuilt/influxdb/influxdb_1.8.0.bb

> 
> To me it seems that Go used the vendor directory approach in the past,
> and there are multiple tools that can be used for this; and nowadays
> go seems to have switched to a different approach called go modules.

It looks like master and dunfell 3.1.1 support go modules now.[3][4]

[3] 
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=dunfell&id=7892a056f7e03e9c086148f8f027bd1cebf2aa68
[4] 
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=dunfell&id=ce277ec45f1f241b1eb17ea6999dbe5a718b898a

Now we have both go dep and go modules support ;)

> With this multiple tools and methods of managing dependencies, I am
> not sure whether it is feasible to integrate this in Yocto at all -
> though I think I have seen mailing list posts on meta-virtualization
> adding vendor information to their recipes, so maybe some progress is
> happening there.

Currently arm 32 Golang support is broken in meta-virt (docker), but I 
am confident it's going to be fixed soon.[5]

[5] 
https://lists.yoctoproject.org/g/meta-virtualization/message/5488?p=,,,20,0,0,0::Created,,docker,20,2,0,75127700

> 
> Best regards,
> Irving Tjiptowarsono

Regards,

Robert
