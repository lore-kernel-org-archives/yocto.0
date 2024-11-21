Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0982CD75BDF
	for <webhook@archiver.kernel.org>; Thu, 21 Nov 2024 09:24:52 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.6939.1732181084689168649
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Nov 2024 01:24:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=iTXYZL4J;
 spf=pass (domain: linaro.org, ip: 209.85.167.47, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53da07b78dfso722709e87.0
        for <yocto@lists.yoctoproject.org>; Thu, 21 Nov 2024 01:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732181083; x=1732785883; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QbSpGvnmrrXF+bdB5WDj21mTQtqV8oLVBEae4o7WP0c=;
        b=iTXYZL4J4iIFzy5jaDeHNY3v2y7LkvNp2qlF4zS0GJWhklIEpzDQamKuqF/So8wUaH
         xY2jYcp671+4EGzreVLMr8mZq1/kcwei7qTQLJ7gDpJev4AFD6SzL0kHZW+ZMbKNPwWr
         1p8/mr5QrOBXA/sMkwfJNuTfpwX77GhmE7OXq/cyYOJmn9lYFW5uY2Dt2dr945ezYsal
         iCZBV/yV2et6Wi+iOKOIHCBHWl+fDdgHnxkCKXWR2ReCiFglNttbACqHEiuSpbuCASCC
         AytHbJ+8SgElzm/Ge+rb7Xi7d8Isqp3iWnr9wzkIx6Q6Q/JwoR6R+LsbDPadBHWFl9jz
         lZ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732181083; x=1732785883;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QbSpGvnmrrXF+bdB5WDj21mTQtqV8oLVBEae4o7WP0c=;
        b=CBWKD06bt9cWPTsWY3oeLsJNn5SmLV+ZvY4qkvGqVx9IQNEETYs5yT3ZeYAf9/O297
         joZeq066j3LMZd0tEsbcFsSgiLAqhBgro7hprKPWSbZs1697MWn3fO2M2ewkkPxsWnbw
         zwlkfi8U+UKCa+Obbwgr0vNlsT4ptajcZG4EPcdg9VdGYUqxawNqO61o8PPSC7/ghB/n
         bHD7gcLUrhhazY8I4/3i3c+3Owi0zdAAzwCt6lPTwtc4aq1w2wzUjeQyW482NvYafpL1
         P7wVhFcsmTM02Zr5Fh6qgvRy8kxYTTul3uTWy2xRq+jvfC0N3BCejer9fdnb4WYB8qkO
         6Cxw==
X-Gm-Message-State: AOJu0Yzn6FAF/C4dSCY5U3sb9GfYRAd7+dMqOsRCAv2AozMVca9eFdeZ
	gKCmLyjp61noQMaBIeosT1nWxYm4iTqpliH8qswy2O3OzklW5itLz2WbN5WuQcciuAn5baLyWM2
	1LzM=
X-Google-Smtp-Source: AGHT+IE7CoqdJ+1CSE7s/xIfrVMuzZ71J+gjfeoG5W1+HjucSW8erDy7s3m7Q0JD9SG+pcRmJHWWBg==
X-Received: by 2002:a05:6512:3da8:b0:53d:abc8:b6d7 with SMTP id 2adb3069b0e04-53dc1324094mr2560674e87.7.1732181082851;
        Thu, 21 Nov 2024 01:24:42 -0800 (PST)
Received: from nuoska (2001-14ba-7452-eb00--183.rev.dnainternet.fi. [2001:14ba:7452:eb00::183])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dcd22475fsm120376e87.183.2024.11.21.01.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 01:24:41 -0800 (PST)
Date: Thu, 21 Nov 2024 11:24:38 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: =?iso-8859-1?Q?B=F6ckelmann=2C?= Thore <thore.boeckelmann@inoex.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: AW: [EXT] Re: AW: [EXT] Re: [yocto] ext4 issues with scarthgap
 .wic image
Message-ID: <Zz78VhN_AkYV3Xys@nuoska>
References: <ed7dbfe9-1861-4e5b-9954-03bf8404920a.970c85df-582b-4473-a7de-31be6a2b58c9.8a47a721-58ad-47e5-be44-609511a60ac9@emailsignatures365.codetwo.com>
 <ed7dbfe9-1861-4e5b-9954-03bf8404920a.5f629621-7c71-47da-aee6-727c8a7b4e6a.21f4d927-51fb-4187-a3f2-1b08161ff7e2@emailsignatures365.codetwo.com>
 <FR3PPF317299CA9C4E72FD30F5D38A3C18A8F212@FR3PPF317299CA9.DEUP281.PROD.OUTLOOK.COM>
 <Zz3QTawLRIwhrQvd@nuoska>
 <FR3PPF317299CA97E0A8E987CB5588C3C358F212@FR3PPF317299CA9.DEUP281.PROD.OUTLOOK.COM>
 <Zz3bC-M33vN1HVXj@nuoska>
 <FR3PPF317299CA979990F6DE852FE16CF238F222@FR3PPF317299CA9.DEUP281.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <FR3PPF317299CA979990F6DE852FE16CF238F222@FR3PPF317299CA9.DEUP281.PROD.OUTLOOK.COM>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Nov 2024 09:24:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64324

Hi,

On Thu, Nov 21, 2024 at 09:18:13AM +0000, B�ckelmann, Thore wrote:
> Hi Mikko!
> 
> I found a different approach to resize the ext4 filesystem. Instead of doing this while deploying the .wic image to the SD card, I simply created a small systemd service, which does all the dirty work within the embedded system upon the first boot of the system. This works perfectly and completely independent of my build system.

Sounds good. Also systemd repartd is really handy for cases like this:

https://www.freedesktop.org/software/systemd/man/latest/systemd-repart.html
https://www.freedesktop.org/software/systemd/man/latest/repart.d.html

Cheers,

-Mikko

