Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08BEBC4332F
	for <webhook@archiver.kernel.org>; Sat, 24 Dec 2022 16:34:57 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web11.100527.1671899691752578296
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Dec 2022 08:34:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=h4+hNYBy;
 spf=pass (domain: mistywest.com, ip: 209.85.214.169, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pl1-f169.google.com with SMTP id jn22so7439499plb.13
        for <yocto@lists.yoctoproject.org>; Sat, 24 Dec 2022 08:34:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6FiJ93aIetsgro1MJZtiyZbFn1y5Gp8wtXWlYpu06rI=;
        b=h4+hNYByUWliCp4+af0ppZv76D2KhaPvEHb+fhN1viVplDbmwf9n4QYEVUVgRz6see
         w6QG3Q7TjTj1tq/h7qcpbGaHH5Y9gVQJHD0LMr7UyTylRIU8s/n8OMz0U1w8WaikwmAV
         /StbeBH1c/SXD7mWsD8ONNVtpzJ04IR0sDLZHtlLq8rA5HQIVOd4VtQxeuvIhRceiTpR
         CHYA47JL6N4+9B/SkP+wH6PbZ71xyDMntmMvJj57WCHE+pU1BCfitLJFRHpiZxo5Q/OK
         P3w/rMXPkfc3W2EyCUyvh3hgo+qecr9SSciT37wSDDr7z72P896SamnuC+hd872oHx9P
         JJnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6FiJ93aIetsgro1MJZtiyZbFn1y5Gp8wtXWlYpu06rI=;
        b=3cNV9Wb+yJ5DbhL4rb3suD+yg8UP9Jhwpq6Np8lGTW2W+j5aeZka+eN/gictb4iNZI
         faS26Obhy46+/xBV+f0fUIx35nLxbPEuaSCuaw1iT0OkRtZdLTInUJp/42jJnhNjaXIC
         VM2Ayl6quyCw8CLWxGxv8nb+zSKDph2q4Duj6PtCmRFsAvF30NbaCzGzUvOl+6/dpCS1
         uXy+Aljbc2OYxCmd8l1eopQg1VHTkuWcdXmIKUhoK6GHUpyveAmAt3h9d3pMOJlc2bWc
         v7eGZ5tmAgTl6ydh/gs0ENy6HBu247UsFri1KaHVrnP0IkC1mFtSB6ET6dD+4DK9SKAH
         YcMw==
X-Gm-Message-State: AFqh2kq2UM/V57DSeUyKQz5uSmN+qK410AbOF/RrimsryuTqE0oE7oua
	nn1JHsSXnhHBWvZR4eOH6m1dxw==
X-Google-Smtp-Source: AMrXdXvOLxaYKavfertttTAyhaZSwyEdrZwUyaXUhy7rUVUlI0zugpu8zMKjBg0GIOsDm998t9KmMg==
X-Received: by 2002:a05:6a20:4a24:b0:ac:26cd:df30 with SMTP id fr36-20020a056a204a2400b000ac26cddf30mr14184566pzb.20.1671899691225;
        Sat, 24 Dec 2022 08:34:51 -0800 (PST)
Received: from [192.168.99.1] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id d200-20020a621dd1000000b00577dd531b47sm4274638pfd.189.2022.12.24.08.34.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Dec 2022 08:34:50 -0800 (PST)
Message-ID: <ebad1d85-062c-9e89-12ef-4cab2b58b1ec@mistywest.com>
Date: Sat, 24 Dec 2022 08:34:49 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [yocto] lsusb
Content-Language: en-US
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <350433e2-a9a5-f7f4-3b7c-ed04700907c2@mistywest.com>
 <CAMKF1sqUTzOykipWXr7OGyu5TeEueif57_1z8EBUX-MDEetiSA@mail.gmail.com>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <CAMKF1sqUTzOykipWXr7OGyu5TeEueif57_1z8EBUX-MDEetiSA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 Dec 2022 16:34:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58859

On 2022-12-24 01:17, Khem Raj wrote:
> On Fri, Dec 23, 2022 at 9:28 PM Mistyron <ron.eggler@mistywest.com> wrote:
>> Hi,
>>
>> I want to inlude "lsusb" to investigate the connected usb devices to my system.
>> I found that adding
>>
>> IMAGE_INSTALL_append = " usbutils"
>>
>> to my configuration should solve the issue. I've added this to my local.conf and invoked a rebuild of my packages but still, after the rebuild, my package.manifest file still does not list lsusb.
>>
>> How can I get lsusb included in my image?
> Try IMAGE_INSTALL_append = " usbutils-python"

I've added that, issued a cleanall and rebuilt but it unfortunately did 
not give me the expected result either:

$ grep usb path/to/package.manifest
   libusb-1.0-0
   usbutils
   usbutils-python

>
>> --
>> RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#58857): https://lists.yoctoproject.org/g/yocto/message/58857
>> Mute This Topic: https://lists.yoctoproject.org/mt/95858084/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>

