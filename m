Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web12.8877.1620881330404958833
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 21:48:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=URjnzotH;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id e19so2348914pfv.3
        for <yocto@lists.yoctoproject.org>; Wed, 12 May 2021 21:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vJxKCx+hrw44ZZPHNduuhnz8zq3w6w4wFHMeMN/PKnk=;
        b=URjnzotHIJLge2QyPe9tFbmaYAXHGvZ9KOh2pmc2rymSs5EujjUl7HBTJP9+SfkWEW
         hqRYqHr2JDFndctXzFtd4KvIzzEdvAJbgwwlwnbpy40GkiV+Nk2TyhfS/SYE9GLRl0QD
         DNb+F9rD9AqkSxDu1uik1fDLzJrZdvXeP/aVl1e2RSTN1JDZH/3WvFIoZhcAYs2s5P7R
         Fs3MYuRckbbJd9dNviBMkQ/8t2qCZJWMU34CKhEFMplpGk9EPh4q3mWvYVo5wGVT9HI5
         HBXNtoyk3YmBFKAxm8C9thmjKoPTIaMKnD0+U0acByjOJnKeyqtK8btV8Uj7NLnpIlWE
         1SJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vJxKCx+hrw44ZZPHNduuhnz8zq3w6w4wFHMeMN/PKnk=;
        b=VLbZI9uSFBnPALlszlanAn32C/ioe22OMicLPY1ZZvwK8fdCAAb0k8J+wNUFrWRqyJ
         bz9RZ+3WepFvqtyK9zpQbN/CyoWwi4sKsyoqalB/6e/aQEe1UR84m/kznhUKBcYJc3FF
         v8ZQSKB3x+VjqP92QQyciRp5C+HhUJ8J5wIGmvTGPRaDlSeentEhALv3WZWzOvmLT2Lb
         LgF93VFRYpNzBDcooU9CDORAk9MiGPlyrToqBRv2MWkIQu4hki+H30m7Z682EXaslLyV
         Mtp0c/veGOXxkf1ZbBE6MSDRRhTkDSlI3VkKYpU4bauyvetbBgMNCg29qsHYelKU5VZd
         jw/g==
X-Gm-Message-State: AOAM530lEbZBA5EK/fctOdOTRJnyKrkKft2lbAaVPnXEbEHF2UkkQDNy
	21q/8qwZxUvurOjGgXfX7ShBCGEG33IHrFRSaRE=
X-Google-Smtp-Source: ABdhPJy3vXpBIn6cVl7lv8DdVfqvvqLABlgcqJalhJ9JQrTdVeZp8mjUF5mIyC/umZXQwohjCkjznXXhWvUO7llhevI=
X-Received: by 2002:a17:90a:a613:: with SMTP id c19mr2517061pjq.117.1620881329768;
 Wed, 12 May 2021 21:48:49 -0700 (PDT)
MIME-Version: 1.0
References: <v3iM.1620820893433035646.BQdl@lists.yoctoproject.org>
 <CAGAf8Ly_r-CoF9c+7OuSuZUb9wsFxsDdb28mEVmdw1jk9YMXtw@mail.gmail.com> <CAGqYRWHupwJo4-TPC13yAr=cmu7A97ki8b6YcmnyV8Wu00qs2g@mail.gmail.com>
In-Reply-To: <CAGqYRWHupwJo4-TPC13yAr=cmu7A97ki8b6YcmnyV8Wu00qs2g@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 13 May 2021 06:48:38 +0200
Message-ID: <CAGAf8LxqL40KhhdmEtaN39xsK+je_SiNhsKHuCz-3NxoeQ+Jjw@mail.gmail.com>
Subject: Re: [yocto] Yocto Zeus : facing error regarding hostapd #zeus
To: rohit jadhav <rohitbjadhav1@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

From the log log.do_rootfs.31340 file, there are the following:

[1] ERROR: Postinstall scriptlets of ['hostapd'] have failed.

HOSTAP stands for: HOST Access Point Daemon. I could not conclude too much from:
https://en.wikipedia.org/wiki/Hostapd

It is kind of a hot spot, as my best understanding is.

[2] Details of the failure are in
/home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.

So, my best guess, looking into log.do_rootfs will tell us much more.

Please, attach this one for our review as well.

Thank you,
Zoran
_______

On Wed, May 12, 2021 at 5:29 PM rohit jadhav <rohitbjadhav1@gmail.com> wrote:
>
> Hi Zoran ,
> I have attached the log file for your reference.
> Thank You
> Regards
> Rohit
>
> On Wed, May 12, 2021 at 7:50 PM Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
>>
>> > Log file in:
>> > /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/
>> > imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/
>> log.do_rootfs.31340
>>
>> Could you, please, attach a log file?
>>
>> Thank you,
>> Zoran
>> _______
>>
>>
>> On Wed, May 12, 2021 at 2:01 PM rohit jadhav <rohitbjadhav1@gmail.com> wrote:
>>>
>>> Facing following issue :
>>> ERROR: core-image-minimal-1.0-r0 do_rootfs: Postinstall scriptlets of ['hostapd'] have failed. If the intention is to defer them to first boot,
>>> then please place them into pkg_postinst_ontarget_${PN} ().
>>> Deferring to first boot via 'exit 1' is no longer supported.
>>> Details of the failure are in /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.
>>> ERROR: Logfile of failure stored in: /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.31340
>>> ERROR: Task (/home/tel/imx_yocto_bsp_Zeus/Yocto_setup/sources/poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs) failed with exit code '1'
>>>
>>> Please guide me if anyone have any idea to resolve.
>>>
>>> Thanks in advance.
>>> 
>>>
