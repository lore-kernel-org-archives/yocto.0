Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4D0C4332F
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 18:50:40 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.31141.1644432639355903343
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 10:50:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XWoB28Or;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id q7so5568675wrc.13
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 10:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=kIFw620M8Ox4bm3WGY0IjpWuAhzio0ChaQwbyXxP25A=;
        b=XWoB28OrSStSH6KNVFKoX7SDHnkymRsRL/3kqFEZQa0vZjv6Ki8TEj3fAobyQW1H9Z
         /SIIw+MIx3JC7i9tuSIsSvyP2yYQ/MJmCqx+2S6zmCtd+2XDZXjCG6DeLhF+F4pLDcRC
         MtmjV2RC4/Nw5xvPACrAIFi/PQFODoDkBsWxs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=kIFw620M8Ox4bm3WGY0IjpWuAhzio0ChaQwbyXxP25A=;
        b=kycC6qECQhAJjJJ6wiB0jZmsbkOw5WjR7UBbh5PLTQWHB+TFEJtoHCDGcd5nWmUoaQ
         Y1iIewqLOyH52YP4bttVeKzLcMftUdclUJgY400KvHCTynunLc1t0bl7Iaf8cFUTWQkg
         NMwt61kxbFT6Ei12hc+4fU8Zg5ESk8lujOe4ReLEpPjRhsg2ROTI5BwSLuBNHEu6JUOQ
         SANsSWmHUM9BbEQEQmHGV2Z0R/H4Ruu0YGBMQtUdr94nAr/fkYDDxx93CxPatevM29zk
         PkGXQ41lwxJoAVRWomzF+GWwfIbvMzSxrs8z4ysDiFXRDsBeRRgdzW6pcx+tVvfyj+to
         4Ceg==
X-Gm-Message-State: AOAM532yCxG4TMaW5d6GMfjTmzktRJSD0fZHBjP0jSFHnOYpmhr+ERyQ
	dX+Nztwqq/HlWOAltY2rA4D5kA==
X-Google-Smtp-Source: 
 ABdhPJxNgtVPTsRo61UJun8OBKFRP/IW9GWy5iR2ESksDnMxV+hg4Y35AkZZ3en/s5r3+r8aFZy/ew==
X-Received: by 2002:a5d:4581:: with SMTP id p1mr3181380wrq.531.1644432637693;
        Wed, 09 Feb 2022 10:50:37 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:2250:1cae:83bc:d91f?
 ([2001:8b0:aba:5f3c:2250:1cae:83bc:d91f])
        by smtp.gmail.com with ESMTPSA id
 y10sm5368868wmi.47.2022.02.09.10.50.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Feb 2022 10:50:36 -0800 (PST)
Message-ID: 
 <6d4b39771dba301816c050446d1be406e3a5a58a.camel@linuxfoundation.org>
Subject: Re: [yocto] Problems building eSDK: Exception: variable BBFILES
 references itself!
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bryan Evenson <bevenson@melinkcorp.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Wed, 09 Feb 2022 18:50:35 +0000
In-Reply-To: 
 <CH0PR20MB3948BFE1A51CFC82BFA8499BBB2E9@CH0PR20MB3948.namprd20.prod.outlook.com>
References: 
	<CH0PR20MB3948314ED38DB85B04E97B93BB2E9@CH0PR20MB3948.namprd20.prod.outlook.com>
	 <650b02092ecfc1579ac9f2763e4c3fc70e54601a.camel@linuxfoundation.org>
	 <CH0PR20MB3948BFE1A51CFC82BFA8499BBB2E9@CH0PR20MB3948.namprd20.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 18:50:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56131

On Wed, 2022-02-09 at 18:10 +0000, Bryan Evenson wrote:
> Richard,
> 
> > -----Original Message-----
> > From: Richard Purdie <richard.purdie@linuxfoundation.org>
> > Sent: Wednesday, February 9, 2022 12:25 PM
> > To: Bryan Evenson <bevenson@melinkcorp.com>;
> > yocto@lists.yoctoproject.org
> > Subject: Re: [yocto] Problems building eSDK: Exception: variable BBFILES
> > references itself!
> > 
> > On Wed, 2022-02-09 at 16:51 +0000, Bryan Evenson wrote:
> > > All,
> > > 
> > > I've used the SDK in the past and want to start using the eSDK for my
> > project.
> > > I'm on the dunfell branch.  I'm trying to build the eSDK for my image
> > > by
> > > calling:
> > > 
> > > bitbake <my_image_name> -c populate_sdk_ext
> > > 
> > > The sdk generation fails with the error in the subject.  I haven't
> > > been able to find any documentation on what this means or how to fix
> > > it.  I've tried deleting my tmp directory and running cleansstate on
> > > my image and I still get the same error.  I've also tried generating
> > > the eSDK for core-image-minimal and I have the same error.  I can
> > > generate the SDK successfully, just not the eSDK.  I have copied more
> > > of the build output below if it helps.  Note that I have replaced some
> > > text that I'm paranoid about publishing on the internet; the modified text is
> > enclosed with <>.
> > > 
> > > Does anyone have any insight as to why the eSDK build is failing?
> > 
> > Could you share what bitbake -e shows BBFILES as being set to? The variable
> > history from that command for the variable may also be helpful.
> > 
> > There has to be something different to how you're setting it compared to
> > what we test on the autobuilder.
> > 
> > Cheers,
> > 
> > Richard
> 
> Here's what I was able to pull from bitbake -e.  I've included details for
> both BBFILES and BBFILES_DYNAMIC.  Let me know if anything else would be
> helpful.

Thanks, I'm not seeing anything too odd there. I guess next we need to see the
bblayers.conf that the code is building into the eSDK and compare it to your
original conf/bblayer.conf.

The generated file should be in the eSDK image directory somewhere, I'm not able
to look up the exact path right now. Let me know if you can't find it. Lets see
if the two bblayers.conf files look different and introduce some issue.

Cheers,

Richard




