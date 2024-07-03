Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB3AAC30653
	for <webhook@archiver.kernel.org>; Wed,  3 Jul 2024 08:41:44 +0000 (UTC)
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com [209.85.167.66])
 by mx.groups.io with SMTP id smtpd.web10.45864.1719996103390843024
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jul 2024 01:41:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=p6699hZM;
 spf=pass (domain: linaro.org, ip: 209.85.167.66, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f66.google.com with SMTP id 2adb3069b0e04-52cdea1387eso5593669e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 03 Jul 2024 01:41:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719996101; x=1720600901; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NY+Yc2Z8bGvRa+e374kFz/08q+kCt4XD459cnC0LBIA=;
        b=p6699hZMP01Ew9JGDrG+NFHkqA5g8otAbKzYOmMSyvx9Y3SNJzdmoZCC6lDFhYSNef
         V4+uZ0U080nFgI3yGshzGrc4FA2vZPWtuH83TMRSY2ZjHlxXQG7KK0RlcSdDUN/IEHek
         bXwGflf68jduJ1ZwCVIUYF7XzzJ3bGrYXLvO4pcF1Fp7JCTlG3lr1xv6Cndn5ftSjtvY
         DtW/n2wg+0fShrrlFbOZCxIRTl5Rc/Ccy0Ba32/RSX5c/H+U4WYybwDzMH8eEh0XOJ60
         Np/xyERUY7GJTZeEFrpEqf89ALHr7/0IEdaj/FqN06myCRvDnqdKAjAXj9DH2OUAjFlw
         tZ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719996101; x=1720600901;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NY+Yc2Z8bGvRa+e374kFz/08q+kCt4XD459cnC0LBIA=;
        b=Ru5X330KAT8xEv5O++9/PwCa952k23ASQjHS9KBZxYXSm9gzeky3GFtoq26MvR8Klo
         dQFV2e/UUFxZ1c7Fz8K14QxpA/Ru8GlllciawOROCJAObmcSz76hTYvtzvHSomtUJeW6
         kW1ch3ldbfjKY+Jwzt7VlD3/kdvGa2WPaPJHBwOUq/RniujnezjiVGOEpz3kRNCQNeOc
         2laJFiq4GpofGctFkY6p4w552LajcUF1LdRU/9jr1Gak72KUmlQc0jyx7G/IyBeSPGfo
         tk2tIryymGeRB6fN9Z1rSNaIHqc88Pt8fEqQfdScJLD6z0nm2nlgqaTGdPffnByIgZJR
         ShFg==
X-Gm-Message-State: AOJu0Yz+s2GEDCBg5A5uT48D4D+SW8JoHCHNl5GoQkgYbcZSTIJ/n0CS
	SpAR0pF1Fws7J6twVRT1sA+tfo9Vcg8YSaPPEGxjeGOOFvQM+FIDBnIIznC51sYA9UdD9nIpWVK
	vWcIvhA==
X-Google-Smtp-Source: AGHT+IH0GVhnd/T2Von850jGV6h/U+hCOGvF/+bvrCgjIQ33/ubg6znmLNUKK8Y/oJZTaQLVDbN3BA==
X-Received: by 2002:a05:6512:3b29:b0:52c:8fe4:b153 with SMTP id 2adb3069b0e04-52e82686b42mr7845983e87.32.1719996101426;
        Wed, 03 Jul 2024 01:41:41 -0700 (PDT)
Received: from nuoska (85-76-97-33-nat.elisa-mobile.fi. [85.76.97.33])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52e7ab0baaasm2042449e87.9.2024.07.03.01.41.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jul 2024 01:41:40 -0700 (PDT)
Date: Wed, 3 Jul 2024 10:41:36 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org, mike.looijmans@topic.nl
Cc: christopher.weronski@protonmail.com
Subject: Re: [yocto] Fw: Inquiry and Proposal: Method to Identify Package
 Containing a Specific Binary
Message-ID: <ZoUOwHg-nSF3vB4s@nuoska>
References: <xhZK8E4f1CnnMzyvih8DWjZYUqf7fpE_8KolmZp0UKSabooljodh4TxTDefDuDZ09uBEhbx_4mlIEyr3y_c6zYZqL39W5d9w_vhIb5aGrQs=@protonmail.com>
 <mQZDRmo5uaTC98_QPOomYfc7OvVAENC3YX9gFT4h4LPL3wuQMwrQ6533-hYbjM77iHRuQpZLgbI8w4bNNRu33O7nqlSQ0AnMLEnCjnEnjIs=@protonmail.com>
 <1fbb3be6-5e50-48a5-bd2b-becf6ddf9e59@topic.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1fbb3be6-5e50-48a5-bd2b-becf6ddf9e59@topic.nl>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Jul 2024 08:41:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63435

Hi,

On Wed, Jul 03, 2024 at 10:27:58AM +0200, Mike Looijmans via lists.yoctoproject.org wrote:
> On 03-07-2024 08:02, Chris via lists.yoctoproject.org wrote:
> > >   Dear Yocto Community,
> > >   I am reaching out to inquire whether there currently exists a method within the Yocto Project to identify which package contains a specific binary. Recently, I encountered a situation where I needed the sfdisk utility. Initially, I installed the util-linux package, assuming it included sfdisk. However, I later discovered that I needed to install util-linux-sfdisk to obtain the utility, after searching the mailing list archives. A similar situation occurred when searching for the package that contained the mkfs.ext4 utility. Eventually I discovered it was the e2fsprogs package, however I feel searching could be improved.
> 
> Been there, done that, yeah.

Ditto.
 
> > >   If there is no existing method to easily determine which package provides a specific binary, I would like to propose the development of such a tool. This tool would greatly assist in adding dependencies to recipes, making the process less cumbersome and reducing the likelihood of similar issues.
> > >   Additionally, if creating such a tool is not feasible, I suggest adding a "Provides" section to the recipe pages on the OpenEmbedded Layer Index (e.g., https://layers.openembedded.org/layerindex/recipe/XYZ). This section would list the binaries that each package installs, helping users quickly ascertain whether a given binary is included in a package.
> 
> It's not feasible to create such a tool. The list of binaries a package
> creates often depends on package configuration, machine and distro
> capabilities and other things.
> 
> 
> > >   I believe these enhancements would significantly improve the efficiency of the Yocto Project for all users. I welcome any feedback or discussion on this matter and look forward to your thoughts.
> 
> My solution is usually to run "apt search" on my desktop PC and use the
> output as a hint to find the package that provides it. That works for fdisk
> and mkfs and tools like that.
> 
> What would be possible is that if someone did build "world", one could
> publish the resulting package databases for other people to search. That
> wouldn't solve everything for everyone, but it would at least help find most
> of the common things.

Except even a world build does not help since it does not enable all possible
distro and machine features and packageconfig flags (how to even discover
all available machine and distro features, packageconfig flags with bitbake?),
and rarely has the exact same set of meta layers which users would have for
the non-trivial product configs. Also the search needs to cover binaries,
shared libraries, header files, config files etc.

In practice I search the Internet, check Debian/Ubuntu, use buildhistory with
yocto builds and git grep there, check layer index for clues.

For the record, I don't think desktop distros solve this problem well.
No-one controls the binary file namespace so there is also overlap. Some of
the overlap is visible as preferred provider tweaks which gives hints but
also easily confuses new users.

Cheers,

-Mikko

