Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.6717.1611234140333930371
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jan 2021 05:02:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=ooYiy6rv;
 spf=pass (domain: konsulko.com, ip: 209.85.128.53, mailfrom: leon.anavi@konsulko.com)
Received: by mail-wm1-f53.google.com with SMTP id 190so1391369wmz.0
        for <yocto@lists.yoctoproject.org>; Thu, 21 Jan 2021 05:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=x375UBIEr5fSE90aoUdO6NULqNFFjG9r0Ake+yY7q+g=;
        b=ooYiy6rvD9Ipbwo4txjHgapYzYNAeWctLwKxievuLSl9lmRs9yA+293lFjJ08lfWaX
         wX8RwKQbWVes90+tdHCcP/6ge6usEX3MEl5954ztSMdY8WCD4+yPeRMM6kLI0Ufvxyn0
         vMQaGGtIOBWGrljIWHCCD9lV8iNUQptIftTss=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=x375UBIEr5fSE90aoUdO6NULqNFFjG9r0Ake+yY7q+g=;
        b=jF2MOzBWInxD7aA3vBNAZjPXeDkJGbCsikVXYuEmFHZ0j0iEmciPzCg+qdeQGGfwC7
         nWm+W+6jTT9iyEBSFp9OEUKjfk9OWOHyl/BkQp8QQuCwKE5opihGB1mVX7UGc4+LgzNt
         agTuoJH/ydIjgKtCfVNZEz6yw9yVuew+KbVMViP5p1Ox2Qc20Tc5kvAaa5cVTbNOfETq
         10qSZ2ApZobegNiGLe7ZLzeRSNfrqnX28uBNTrqi69YzmtE32IrkTzZJ0Y1mPBWCJzQ4
         dDYeMpEKq0Hd/QXaUT73QDwMp/0kD6If6q6iC8emAr4+cjrsZV+kPPoesY0ibgyQ+iao
         8GGQ==
X-Gm-Message-State: AOAM533kDwjawb42uFuu8BS3XEmbzy5nguHoXCD0hj4BL4TdPHEFBY61
	B98JPbcJaCAvV7mEn/tkRJ0WgppzBKrhrQ==
X-Google-Smtp-Source: ABdhPJztTfFdbqbk1vJQAvyjOf5rTvbjbzJGTAMEmGd78LqCDSMbx5wKDiYNZQURnmEcd7Bi5E1oyw==
X-Received: by 2002:a1c:7c03:: with SMTP id x3mr8835709wmc.103.1611234138574;
        Thu, 21 Jan 2021 05:02:18 -0800 (PST)
Return-Path: <leon.anavi@konsulko.com>
Received: from [192.168.4.166] ([78.130.197.211])
        by smtp.gmail.com with ESMTPSA id h13sm8236175wrm.28.2021.01.21.05.02.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 05:02:17 -0800 (PST)
Subject: Re: [oe] OpenEmbedded Virtual Stand at FOSDEM 2021
To: Paul Barker <pbarker@konsulko.com>,
 openembedded-core <openembedded-core@lists.openembedded.org>,
 openembedded-devel@lists.openembedded.org,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <CAM9ZRVuEaZLvg4trA-LhNyz8=yMs=cYhRzSR-emzmEGo8BdMhw@mail.gmail.com>
From: "Leon Anavi" <leon.anavi@konsulko.com>
Message-ID: <e12afb9d-9074-05b1-d7f1-60bd36645ae8@konsulko.com>
Date: Thu, 21 Jan 2021 15:02:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAM9ZRVuEaZLvg4trA-LhNyz8=yMs=cYhRzSR-emzmEGo8BdMhw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi Paul,

On 13.01.21 г. 23:33 ч., Paul Barker wrote:
> * Any participants in the project who want to help host the Matrix
> chat room between 09:00 and 18:00 each day of the event. This will
> likely involve introducing the project to folks dropping in the chat
> who aren't familiar with OpenEmbedded, answering basic questions and
> chatting about example uses of the project. You don't need to be a
> long-standing expert in the project to help out here! If you can do a
> couple of hours or a half day please let us know.
I will be happy to help with this task as a volunteer for a couple of 
hours during FOSDEM 2021.

Best regards,
Leon

-- 
Leon Anavi
Software Engineer
konsulko.com

