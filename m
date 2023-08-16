Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E87C001E0
	for <webhook@archiver.kernel.org>; Wed, 16 Aug 2023 11:13:48 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.158369.1692184423215479930
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Aug 2023 04:13:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=FqhdVh1C;
 spf=pass (domain: linaro.org, ip: 209.85.167.49, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-4fe2d152f62so10508908e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 16 Aug 2023 04:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692184421; x=1692789221;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=E5jomehWBHnW/+IQVoRhfCg09MwjOv40doF76DfoyX0=;
        b=FqhdVh1Cp/CCfgUr55XDCH0NyLLztHvnJz0KctgdSb2D+MDEhAr9bCTxFfiUAl9XmT
         ie9Zh9x+wzW6Q16pCfYX2nSHSyiUHE4wgDaMnbvTL/4k7gZ4uEBVvVms5MzzcleRSEw8
         Fb0rkNFOaiFV+G+07sLE+nGWFOC3EZk053xFBMSFGquru3Pg4j6qhHWROJ/+BJ/GKyyx
         QHbxQE0iC3iayo+IHJdh3YRVJglXw5YiykRk1x3bFOk3kSRFnQ8tOkGMnWZBCgLpr47C
         Rq3MPtAeb/uzsyJGwwKoxhL87fp2zXhXwq86iE02nIVJSkRiTm4cI4cJhzp4Pm0KHuL1
         NpBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692184421; x=1692789221;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E5jomehWBHnW/+IQVoRhfCg09MwjOv40doF76DfoyX0=;
        b=LFQkcuwyZrnwL/j6M/vSt3rlWvMPalk6HF6bYuOridTpoxSbjaWyjMujbe0eIZCpPK
         I8gAP9HnC/HGh0y7qLyPyii4mELAlxERXfJU/fatm8drtU14HSIpqb4uWDtfpSEqSIj6
         3y6gWstrTv9FGMLzvwiO+GCEDRYdEZxWi+BDXYSTE5i4jcpZAERJBf773YRFqFLOjtAH
         orNQc9qfM80TSjUo4tS5UovGk7KhnlCej1Gx981ZUjuyl3R4zrWnY2b7eO2VevE4KbpT
         +9v1mlc9tS9QQm7TsVsbgZlU6IL36xOodaSNNXkIYJXyF944yPiX4AdmHUUOMBS3Aqm9
         4/vA==
X-Gm-Message-State: AOJu0Yz1AkBtBgcXqW1532tt+E1LaoV0zNBKZMlc5fIWgEr+5c2Dfxfa
	A8gGGPQODMbEFEG/LLUmOfm6Ig==
X-Google-Smtp-Source: AGHT+IFDyTL2fkK4KwF42tz1sumHXr3InMnBeNynNUU4EPKgzmobfg9NuycRr6eOxtm4JPSB6uc77A==
X-Received: by 2002:a05:6512:3d08:b0:4f8:752f:df48 with SMTP id d8-20020a0565123d0800b004f8752fdf48mr1780568lfv.29.1692184421376;
        Wed, 16 Aug 2023 04:13:41 -0700 (PDT)
Received: from nuoska (dc7g6tyjby-d304c4945t-3.rev.dnainternet.fi. [2001:14ba:16cb:a800:e107:c77f:6058:ee33])
        by smtp.gmail.com with ESMTPSA id y18-20020ac24472000000b004ff947bea2asm113613lfl.54.2023.08.16.04.13.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Aug 2023 04:13:40 -0700 (PDT)
Date: Wed, 16 Aug 2023 14:13:39 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: nicolas.wirth@speedgoat.ch
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to switch between package version ?
Message-ID: <ZNyvYwadnDXBDsQm@nuoska>
References: <S9ea.1692183278145152073.JK8M@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <S9ea.1692183278145152073.JK8M@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Aug 2023 11:13:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60806

Hi,

On Wed, Aug 16, 2023 at 03:54:38AM -0700, Nicolas Wirth via lists.yoctoproject.org wrote:
> Hello everyone, I hope you're all doing well.
> 
> I began learning how to use Yocto three months ago. I believe I now have a general understanding of how Yocto operates and how to integrate it into my project. However, I've encountered a question for which I'm struggling to find a straightforward answer.
> 
> Imagine a scenario where, due to certain constraints, you've opted for a specific version of Yocto and have commenced work with it. As development progresses, you realize the necessity for a particular version of a library (such as boost). After searching for the recipe, you locate it within the meta layer and include it in your image. Subsequently, you realize that the version you've incorporated isn't the precise one you intended; rather, the version of the library you require is present within an older branch of Yocto.
> 
> My question is as follows: Without altering your existing Yocto version, how can you utilize this "older" version of the desired library?

First, I would seriously question and fight back on requirements which dictate using
old, possibly unmaintained SW versions with a lot of known CVE security vulnerabilities.
Updating to a new boost version is straight forward work and almost all of the compile
etc issues can be resolved using Internet search engines since most open source projects
have also done the same.

Second, downgrading a SW component has the same solutions as updating. Find a maintained
layer with the SW component and version that you need. If that is not available, check if
you can change the branch of an existing meta layer to provide what you need. Note that mixing
layer branch names is frequently possible with minor changes, e.g. using meta-security master branch
with kirkstone LTS poky. Then if you can't find an existing layer or branch which works, you can also
fork the SW component recipe into your own layer by copying the recipe files over. You may need
to apply some other patches as well to be compatible with your poky version, but those are possibly
already available in the git repo of the source.

In any case, you need to understand how layer priorities and version and provider configurations
play together in your distro, machine, layer etc configuration. I do this by looking at
"bitbake -e image" and buildhistory data.

Just as an example, I updated my custom distro which inherits poky distro config and slightly modies it,
from kernel 6.1.y to 6.4.x by resetting the PREFERRED_VERSION_linux-yocto to an empty string
in my distro config. This picks up the newest linux-yocto recipe available from all of the layers in
my configuration and that happens to be the linux-yocto_6.4.bb from poky currently.

Hope this helps,

-Mikko

