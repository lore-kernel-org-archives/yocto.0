Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBA6C433F5
	for <webhook@archiver.kernel.org>; Mon,  4 Oct 2021 21:17:17 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
 [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web10.16564.1633382237093239865
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 14:17:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=g6biS6oC;
 spf=pass (domain: gmail.com, ip: 209.85.210.180,
 mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id 145so15587656pfz.11
        for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 14:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=OYCXWZs21VrFO2xA1zPL8lIn24sQbh+VlHJEEOsXIt8=;
        b=g6biS6oC+gAVYZIhc5jixgFINEc2Ax+RMlossQwJFXS8CdZEIuQV3BkME5QB74230e
         YMJcJ1jtepX3/ANV2R7lwckjrx2wtgsygWeq11aweuT7qX2cLCKEv0qxlisk9HEOP5wY
         FCPUThRkOizBAfprs4YLmdtsHF961/FqH8H2iY1HbAdNOLYap87Vq5xxtNjukTPZu4t7
         UwqzndmbZJ32IRvbMda2exlWP5azD1u2JgzjjMKwB5WpuiFU6UwF+BdcHvu/+gJg7pZW
         2/zag4nMkCHWIUD95/g43ALUVqTt+YAQwDhDYqot40EtZpS52aukkDAeT6/BQh9GQQPZ
         qfvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=OYCXWZs21VrFO2xA1zPL8lIn24sQbh+VlHJEEOsXIt8=;
        b=Yb+mZ4YMZaafqQOsDOkLFrxKXy/Qq4egoW+SETITBlj1mlcAdAH8WbO7iG/EQT/u/T
         WMIVwKrqqv6GOzw4P+kLEepY/70EpISjXZbHdN4Mp7FbhbNNetRrT4hSP0FSFCtZBA9F
         AYatNZIGKYiqNrrPxS9Q4LH4UXrfRHskbn/qMgwNYmQ1HKtjsE1jfR+tHN/lGRQxFW9C
         HcP9RqExDp3Lv+Q42SIY0eewTeqKGGWQcgY2+0FsBUELmwpC6/i7J5x85Xk9OctCLRZV
         oSMyEYbY+o1vIQuppz+lfN9IuTCrejAmDz2V8m6UO4pz5HUB7eT1zKTcxll71jFg8JqJ
         318g==
X-Gm-Message-State: AOAM532J9ooRJpPAJLxqaMyjNtUz3+dm+f2xcG9x1dgGlkF10knnUXZZ
	x7HrLS7sGLC6bOyfWV5W7jw=
X-Google-Smtp-Source: 
 ABdhPJzqTWh5JgOgu6RbzObXfgqDasb+TEC0C7DB4M8UKCy5CGsvAzNSFgh0Tgaelof/VIC5eHOXjA==
X-Received: by 2002:a62:1806:0:b0:44c:5c79:59a7 with SMTP id
 6-20020a621806000000b0044c5c7959a7mr8387542pfy.22.1633382236369;
        Mon, 04 Oct 2021 14:17:16 -0700 (PDT)
Received: from ?IPV6:2601:646:9200:a0f0:352d:7f2d:270c:4297?
 ([2601:646:9200:a0f0:352d:7f2d:270c:4297])
        by smtp.gmail.com with ESMTPSA id
 w11sm14459217pgf.5.2021.10.04.14.17.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Oct 2021 14:17:15 -0700 (PDT)
Message-ID: <0a038b52-6f11-662a-8d77-786919852079@gmail.com>
Date: Mon, 4 Oct 2021 14:17:14 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.1.2
Subject: Re: [yocto] virtual/egl on Raspberry Pi 4
Content-Language: en-US
To: Greg Wilson-Lindberg <gwilson@sakuraus.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <0c6e789aba8141509bb31779a8393cbf@sakuraus.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <0c6e789aba8141509bb31779a8393cbf@sakuraus.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Oct 2021 21:17:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54944



On 10/4/21 12:39 PM, Greg Wilson-Lindberg wrote:
> Hello list,
> 
> I'm working on a Qt supplied boot2qt Yocto build currently based on Zeus 
> that is running on a Raspberry Pi 4. I recently updated the qt version 
> to 5.15.6 and Qt changed something in the Yocto configuration that they 
> are using and now one of the recipes that we use is failing saying that 
> in needs 'virtual/egl' but that it is not provided by any recipe.
> 
> In the searching that I have done I have found that the raspberry pi 4 
> is particular on which package supplies the virtual/egl but I haven't 
> seen anything that indicates what I should do to re-enable it.
> 
> Can anyone tell me what I need to do to enable the correct driver to get 
> virtual/egl provided on the Raspberry Pi 4? Or maybe even better, how I 
> could search through the packages that are enabled on the old and new 
> Yocto trees so that I can figure out what changed between the releases 
> and re-enable the virtual/egl.
> 

it should be provided by userland package if you are using closed source 
graphics driver.

> Best Regards,
> 
> Greg Wilson-Lindberg
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#54943): https://lists.yoctoproject.org/g/yocto/message/54943
> Mute This Topic: https://lists.yoctoproject.org/mt/86076611/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

