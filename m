Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web09.220.1610622148756412727
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jan 2021 03:02:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dfc3OcTm;
 spf=pass (domain: gmail.com, ip: 209.85.128.49, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wm1-f49.google.com with SMTP id e25so4305315wme.0
        for <yocto@lists.yoctoproject.org>; Thu, 14 Jan 2021 03:02:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=tDWp08NWlb6Wsr68Mi6ub4ZCx/heBGRp0Fm+BYlmQXI=;
        b=dfc3OcTmQDmugbm/q0rV4g/j15TbQ7kGxsWTiZ1hWvgayxqWSYhOzp/gho6pLYPO1Q
         pj9otXKjqycX29dLxwlD1B/UrqDhjYMRP1FDuKcqY0mUwge7jcJO+OXyIajXHiDgBPL1
         SRets/ykvaTUlAST+PA1yfI5zP2NSDV34wEKH2/KBNGpAtqY54YHNJv9fyQ2a4MY2UX4
         HWDGaB0jqKW6BJO4XDjrk/h7J8MiHq6jhRXjolf6jTJ/DmEyjvdFdxfkVyoEmFWmmR2D
         QozXXtt7QdzZ1jSmpfZY/mUqbJcD6s0SAJ/AYZ+xYpx9mi0Zk3mw8bEQT4pxNWfQYiiH
         uMoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tDWp08NWlb6Wsr68Mi6ub4ZCx/heBGRp0Fm+BYlmQXI=;
        b=ndesA6RnSjfRR8QZCBHFLsdeEi/HkM4uYqpA9okTAoOBySQZURRf9jYYHKIZaW7fOG
         pgAq17f1K41iz2W4HvEJqziBYi/FSv8A4RrLpnrUbrTFGRUC8EbkG1p/0iQnpEJLniCZ
         XWEaCMcQjqJ+n76y/n0pfBtTt7U6ITVFWw3qTLrAUdmXBjfQmSEGiryQjipftX8qm1C+
         hmPV+iH4rptO1DHwxpR/Ng8luqW47u3FaR8yAviK+zB40WPe8npGJ1T5O0wPipl7ZZ7L
         gCxG0kAfphfU7T6WHRQDchmjNRvfqcJ6NYfgSOMKTDz3uuuxqO2fQ92UqIUtZaXciFHv
         wysA==
X-Gm-Message-State: AOAM532RxrXEVV+Omv0QgRsQKHaEK70Kd/1caSWABBtyMRAOpe1F7GeB
	fIVHUTb0IvVGRSjbROBmVD3hnmZrMRc=
X-Google-Smtp-Source: ABdhPJwyPCMs9FpQtXmp9erp0+PtNbgcR+hmirHXptp0cjJtBM5Av82i2Qf08zqmrz8HJhiwNk5f0Q==
X-Received: by 2002:a05:600c:4ecc:: with SMTP id g12mr2097228wmq.84.1610622146698;
        Thu, 14 Jan 2021 03:02:26 -0800 (PST)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-86-143-170.home.otenet.gr. [2.86.143.170])
        by smtp.gmail.com with ESMTPSA id s25sm9663460wrs.49.2021.01.14.03.02.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 03:02:26 -0800 (PST)
Subject: Re: [yocto] OpenEmbedded Virtual Stand at FOSDEM 2021
To: Paul Barker <pbarker@konsulko.com>,
 openembedded-core <openembedded-core@lists.openembedded.org>,
 openembedded-devel@lists.openembedded.org,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <CAM9ZRVuEaZLvg4trA-LhNyz8=yMs=cYhRzSR-emzmEGo8BdMhw@mail.gmail.com>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <f7a9ec47-c74b-1831-d38d-914555898ad9@gmail.com>
Date: Thu, 14 Jan 2021 13:02:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAM9ZRVuEaZLvg4trA-LhNyz8=yMs=cYhRzSR-emzmEGo8BdMhw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 13/01/2021 23:33, Paul Barker wrote:
> Hi folks,
> 
> * Any participants in the project who want to help host the Matrix
> chat room between 09:00 and 18:00 each day of the event. This will
> likely involve introducing the project to folks dropping in the chat
> who aren't familiar with OpenEmbedded, answering basic questions and
> chatting about example uses of the project. You don't need to be a
> long-standing expert in the project to help out here! If you can do a
> couple of hours or a half day please let us know.

Let's try to come up with some schedule when I should be there and just 
let me know how the join the chat.

> 
> * Any contributions of video content to go along with the static web
> pages. I'm planning to record some short introductory video content
> but other contributions would also be welcome. Details on how to
> upload videos is expected in the near future but for now it would be
> good to just collect folks who are interested so we can discuss this
> further.
> 
> If you're interested in any of the above please reply to me and/or the
> list. I look forward to virtually seeing many of you at FOSDEM 2021!

What kind of video would you like? A small video which explains a 
specific topic?

Something like this?[1]

[1] https://www.youtube.com/watch?v=kmpEN953pzs&feature=youtu.be

> 
> Thanks,

Regards,

Robert

> 
> 
> 
> 
> 

