Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 639DDC433F5
	for <webhook@archiver.kernel.org>; Wed,  5 Jan 2022 09:17:21 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.4935.1641374239456716065
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 01:17:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=4jQd+whj;
 spf=pass (domain: burtonini.com, ip: 209.85.221.53,
 mailfrom: ross@burtonini.com)
Received: by mail-wr1-f53.google.com with SMTP id d9so81670446wrb.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 01:17:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4uC3I+zFv0RIf51ArVRCQhAd53qowedh7j2Cp1v+DgU=;
        b=4jQd+whjG1rvmD+QOppTItRCd3rR/fX997YX6ok1Mu6Pf4QtL/WCXoC0KyPrLKVPjY
         E8WlwA0vIfLKGvfZ8zHh1GKAH44w3T5cw7Ja4osU0JHejZbFVSPa6VdA1psACYxB84RH
         jfO3MTyos8NjuhjugC8UW8lKmY/3h/67ZFnOC4Q/VL22bSIF8nZLqxjxlfBHWPWx+R/g
         Cp0oHIH7sqFALt63w0vpr6w1+Kde2H6pTKYLnEea14CkX/iioBBPwRIqiKsDAhKIt4Cw
         oDphtsMnTsjNp1KnndXTrLttVX46psA7ntJClLycrxBYP/b9k99ZUk5LAMLg9JtN1Oym
         It/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4uC3I+zFv0RIf51ArVRCQhAd53qowedh7j2Cp1v+DgU=;
        b=Gy6nHgjNCDndgF3yVPAtPVik4yrvSBGKWShlWssAR5x7q3QgjT/dx4lpkVr3e/z/cu
         XnvrOnyZljmjKXB7k/UmMCrX5nYeHqT5sTVeWoJoDblIYQ9u/cyJeUNL/E+SE6iU/QQ/
         vSWFj3K+0fRn4Zt3zefmKpq1JBh3EyBl7UWoC9SBcWpUN+jfLEQC8FShDaemmpKzk+RV
         jO/kj9hBARXSCWOuxg7qV9j0F+3MECM921U0cFgyNAZtBJ1GctMakt/sesRIjH470Peu
         QzVfnKkqiLrJWRhVGpI1KaKxhMBbkczolbiudZQrERedK4O6OLn0SQBtApiHEjzGVgTZ
         gDDw==
X-Gm-Message-State: AOAM533F1YmPLSIWv6xoHJoA1Al8J78cLUITiC4PA4tiBBtsEqWUwVAj
	mMzAJJ2bz/erEdOmAGgYgCLi0ykbj0yrg8WR4A6Nvg==
X-Google-Smtp-Source: 
 ABdhPJxIfKHuHc1uTyFNBp6N/ivRjEdpOJa25Mhah/PIViAFTCs5VRg6jzPTq1pGzFAl2MS7LMgumb/WT01rUy7nvnk=
X-Received: by 2002:a05:6000:3c3:: with SMTP id
 b3mr44673995wrg.451.1641374237758;
 Wed, 05 Jan 2022 01:17:17 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAGeH+D16bUL7__M5akSKk-au8ZM_bgVX31kW0BtzvzLhzbq7Kg@mail.gmail.com>
 <CAAnfSTs31r4z4R8O315piozh3Y=zHDSpjW_gnEoemZM=NK0arg@mail.gmail.com>
 <CAGeH+D1tWdL2wD5R-2GgOfvq3SeLFCKAaMrLGb_-pvXrPW+ePA@mail.gmail.com>
 <e8b3d35c-4752-d2ca-ba1a-22040aeca3cb@bootlin.com>
 <CAGeH+D2ByzQjBCgzUr1WNE7+=gXenViPJBo1XjgUF_Ofv2q4JA@mail.gmail.com>
 <CAAnfSTsHrTvWSieS1-QJLrV8eqPRVG4bYgvTcXbGQ4SnWSvemA@mail.gmail.com>
 <CAGeH+D0J1MfuM=Yb-X4k+SFpBCwYmY_NY=j1KNs=57sn2k-1VA@mail.gmail.com>
In-Reply-To: 
 <CAGeH+D0J1MfuM=Yb-X4k+SFpBCwYmY_NY=j1KNs=57sn2k-1VA@mail.gmail.com>
From: Ross Burton <ross@burtonini.com>
Date: Wed, 5 Jan 2022 09:17:06 +0000
Message-ID: 
 <CAAnfSTvBPqkR1m8y3JC+ZL068BfBsegLUpZ_rxXKNJAeGKa=aA@mail.gmail.com>
Subject: Re: [yocto] updating system with local time
To: Arik Kleiman <arik.kleiman@gmail.com>
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>,
 yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jan 2022 09:17:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55738

Package /etc/timezone as a symlink to /run/timezone, and write to that instead?

Ross

On Tue, 4 Jan 2022 at 17:35, Arik Kleiman <arik.kleiman@gmail.com> wrote:
>
> can't write it to /etc/localtime ... it's a read only system.
>
>
> There is an environment variable named TZ, when ever it is changed, local time is changed as well.
>
> Is there a way (by script or cron job) to set the way system will update as well?
>
> 10x,
> Arik
>
> On Tue, Jan 4, 2022 at 5:46 PM Ross Burton <ross@burtonini.com> wrote:
>>
>> On Tue, 4 Jan 2022 at 14:58, Arik Kleiman <arik.kleiman@gmail.com> wrote:
>> >
>> > I don't have option to add systemd.
>> >
>> > Added alrady tzdata and all time zone folders exist.
>> > The issue is that ntpdate returns time in UTC.
>> >
>> > I found a way to get local time zone (by using ip lookup). Now i looking for a way to use it to update system time
>>
>> Just write a small tool to map the local timezone from the IP lookup
>> to a timezone name (such as Europe/London) and write it to
>> /etc/timezone. You could do that with a short ifup script.
>>
>> That said, for headless appliances working in UTC is absolutely fine,
>> and for user-facing devices it's perfectly acceptable to ask the user
>> what the timezone is, as your geo-IP lookup might be incorrect anyway.
>>
>> Ross

