Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDA01D63936
	for <webhook@archiver.kernel.org>; Wed, 20 Nov 2024 12:50:33 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web10.12493.1732107026204314526
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Nov 2024 04:50:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=nqzeUSH0;
 spf=pass (domain: linaro.org, ip: 209.85.208.170, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fc968b3545so57847971fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 04:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732107024; x=1732711824; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OgINOZjUuybvDy6g2ma0yRRwvZsCD3cehXnoG5ug/J8=;
        b=nqzeUSH0ANDvHeUTdOOFwtvjQN47xhr4GAlamsO8+npklDAIY5q5H5eWwW8JbFa792
         YMO47447n9oPglwFSVG7XUYOJbAUK1iy/84rh/1Ash12hFyQhrp1QL5PvdyiBl1MnM7j
         Q+v/98OwyQ/CY9s8seAk6KSjH+XULnFb0aCafMbu0deHt57yhPQa/MESli8Uu7M5mIVO
         y8fpqxcI0q8fhrgJpjT6fUgitBIewTT7xnCgV9dIrXEVMloWcBhy+/+r3CzvWLLKPMNB
         XQM7vGF6N4mPe2xr4b5ezlMEIcSkD4RaUIzLouTmV58gXjgtBPfuV0MFbz9y5OKeyvFx
         XLZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732107024; x=1732711824;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OgINOZjUuybvDy6g2ma0yRRwvZsCD3cehXnoG5ug/J8=;
        b=Ztf3Ipjopd4HCV7piRUXqeGFa9QkQzDIwqJK69zVlDzk4QwUD5sc9TcLS3HrsAwvqg
         HfdB2bA9OXzkMDG31y8h/3O2yThIJ3N8oceBEOJYkFGGnvWg5dmh2Tzuv8O+KcvCsfzm
         hc7U4hiuQIQG/eM29LEQ2ZViXQ1U7K3gkI16a6UMa+l7HQV3HtthdoHIG5PBji3UrYy+
         MQZC8e33tuV3SbIynIVF7UaNkla6TZTvPwYGk53nCo/h8rh/l0G8a1eGnP51tLtgA8A+
         u7QZbWoZK0u2+zK9mJN54WHZfa/0W5ip3vDToCKUrDRglrDtr4fRgkf1QWYCUPERFA9s
         loYw==
X-Gm-Message-State: AOJu0YzThvpr4ELH8HDRdxR6NWbRjhW3NpeYYneirL7gPxE3+Fs5BkBm
	2lX/KSvXIh1m81e+qo8P0m/EXoEbNTSHnzJc3bz5vk9cF6VwSiY5/9U1kDK9/4Y=
X-Google-Smtp-Source: AGHT+IFGN1ek0+f82bSSkDuJQYv8jmxz/lTM0K7zCl/tevkWSsfIlh/DnEztSbuouvACDJUhmgl+ZA==
X-Received: by 2002:a2e:be20:0:b0:2fc:ba7a:c97c with SMTP id 38308e7fff4ca-2ff8dc8fb5cmr15237381fa.37.1732107024337;
        Wed, 20 Nov 2024 04:50:24 -0800 (PST)
Received: from nuoska (78-27-76-97.bb.dnainternet.fi. [78.27.76.97])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ff69968809sm14984111fa.64.2024.11.20.04.50.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 04:50:22 -0800 (PST)
Date: Wed, 20 Nov 2024 14:50:19 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: =?iso-8859-1?Q?B=F6ckelmann=2C?= Thore <thore.boeckelmann@inoex.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: AW: [EXT] Re: [yocto] ext4 issues with scarthgap .wic image
Message-ID: <Zz3bC-M33vN1HVXj@nuoska>
References: <ed7dbfe9-1861-4e5b-9954-03bf8404920a.970c85df-582b-4473-a7de-31be6a2b58c9.8a47a721-58ad-47e5-be44-609511a60ac9@emailsignatures365.codetwo.com>
 <ed7dbfe9-1861-4e5b-9954-03bf8404920a.5f629621-7c71-47da-aee6-727c8a7b4e6a.21f4d927-51fb-4187-a3f2-1b08161ff7e2@emailsignatures365.codetwo.com>
 <FR3PPF317299CA9C4E72FD30F5D38A3C18A8F212@FR3PPF317299CA9.DEUP281.PROD.OUTLOOK.COM>
 <Zz3QTawLRIwhrQvd@nuoska>
 <FR3PPF317299CA97E0A8E987CB5588C3C358F212@FR3PPF317299CA9.DEUP281.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <FR3PPF317299CA97E0A8E987CB5588C3C358F212@FR3PPF317299CA9.DEUP281.PROD.OUTLOOK.COM>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 12:50:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64311

Hi,

On Wed, Nov 20, 2024 at 12:42:51PM +0000, B�ckelmann, Thore wrote:
> Hi Mikko!
> 
> Of course it is always better to move forward instead of backwards. But my point is that the documented EXTRA_IMAGECMD variable is somehow ignored and not passed to mkfs.ext4 as it should be. If it isn't to disable a feature the same issue will arise when I try to pass any other option to mkfs.ext4. This is what the IMAGE_CMD and EXTRA_IMAGECMD variables were invented for.

This could be a bug, or change in image_types.bbclass behaviour.
Would be nice if you could debug this a bit further, for example
"bitbake -e image" output.

At least IMAGE_CMD:ext4 in current poky master image_types.bbclass
still has

IMAGE_CMD:ext4 = "oe_mkext234fs ext4 ${EXTRA_IMAGECMD}"

which would imply that adding command line arguments with
EXTRA_IMAGECMD should work.

Cheers,

-Mikko

