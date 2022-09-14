Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3838ECAAD3
	for <webhook@archiver.kernel.org>; Wed, 14 Sep 2022 19:23:06 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web08.1371.1663183384723326758
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Sep 2022 12:23:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=l+2yZ374;
 spf=pass (domain: gmail.com, ip: 209.85.167.42,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id w8so26754192lft.12
        for <yocto@lists.yoctoproject.org>;
 Wed, 14 Sep 2022 12:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date;
        bh=zUpd7jtFV5OXfz9TVKn2PxfJVqkNv+COBzPJv6FZKLc=;
        b=l+2yZ374r0RcT+loPRnmoMokMZfwleHl0MQgk6YNkh3cOEDNiCFEUxtATXL1Yo3aRI
         293/w7AhDvFaDQwWXr5C0hiM8LOqHHR1tlW8bISviihFfVsBDjTYh+XIy/c0hc73G5UK
         qdq/fkeQhYMj3thC7cYzkgXwc55UXZX07km50YpG5iIToA8wZGli408IVfh7gPh62D9T
         9RwX8kGZES0QyGZeWB5OQ1iiHVGR/+WU1mgJQf3Eyyz1HG4dhY1CRfQ2rgLlxYsom/q2
         Or4Bc0JxorzyrKwjFDl0Ri8ItTSLqZU37YVMakEJklo3BDKHOj9d3K1TaqDOhumyKVfB
         b6hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=zUpd7jtFV5OXfz9TVKn2PxfJVqkNv+COBzPJv6FZKLc=;
        b=Pp8i4UqvcKkiIidxPTrnmra2WREm1Uj2JrVpRbW6CwdKEp2yXtkYk7TLqxZQYNraDl
         nGGGSF59/6DMlYucLlWC+jVAI13NvBRqz+YXWcmGoxdFe8jjBuxsvWgrjvA9wVUX1SIz
         LC2CV77tGT54FGu1/5nHbJmLmG9lMxwDCm1/svnEfug/J948UFBkwucc/mHUeGyvZ9K4
         YL/WDP+WWqBHPSzHQ4kR/cKU7j4yHc4bdfVgkGOKY2mQe+eafeeFlq25RiwDGrxb0bZd
         ibUTinaIHBRufJ59URq3ZuMhlhhqJAWI079r4EN5VdQD2fn9nu8bZ7/MkfvB83/Y5hm1
         7ZnQ==
X-Gm-Message-State: ACgBeo3oisQ++yYm1sikoU5TgM0m0xBUk4t7ZieekrWjyeglqZNKIzi9
	vyV2g9NSUzOKMYAAD66VLvepdSiqUCFKRQKRTOQ=
X-Google-Smtp-Source: 
 AA6agR4fcybCpi/rTM7p01XchY1SAFCamd9yGgSN0tCMLdnJwKr/JFsRIfS33sx9rib0R2Drq9iZ+EgEcPH3KvuGrwg=
X-Received: by 2002:a05:6512:950:b0:497:c41e:3d0c with SMTP id
 u16-20020a056512095000b00497c41e3d0cmr11849532lft.673.1663183382945; Wed, 14
 Sep 2022 12:23:02 -0700 (PDT)
MIME-Version: 1.0
References: <cZtA.1663177353817106080.nKg8@lists.yoctoproject.org>
 <CANNYZj__GxuzidL4KVuxmtdqp4MK4PVi86+z+-wzmWpmibzJ_Q@mail.gmail.com>
 <CADD-u4vZMwdhCT0HLGLK4thWTn9XMN-nf73yEtV1+6BMXz4aAQ@mail.gmail.com>
 <CANNYZj9jCGig5xYa1cUUS+OFe8NpvFKYx-qMnmp5cmPG7xGCnQ@mail.gmail.com>
 <CADD-u4ueWo6uspjeR3mJE5RU=rgQDL4Fre1G=F3U1CTmofcN3w@mail.gmail.com>
In-Reply-To: 
 <CADD-u4ueWo6uspjeR3mJE5RU=rgQDL4Fre1G=F3U1CTmofcN3w@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 14 Sep 2022 21:22:51 +0200
Message-ID: 
 <CANNYZj95=XfnA-4Ms=UnU06uBQchb_W-RXLCQYQZn0+ymmGZ5g@mail.gmail.com>
Subject: Re: [yocto] meta-go dependencies #dunfell #golang
To: Ed Watson <edmundwatson@gmail.com>,
 Konrad Weihmann <kweihmann@outlook.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Sep 2022 19:23:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58044

You can ask Konrad about it. But please keep the mailing list in CC,
so that the entire conversation remains visible and archived to all.

Alex

On Wed, 14 Sept 2022 at 21:18, Ed Watson <edmundwatson@gmail.com> wrote:
>
> Hello,
>
>
> Great thank very much.
> It would appear that there are a lot of dependencies I need under https://github.com/priv-kweihmann/meta-sca
> That means at least I don't have to do them all myself.
>
> Thanks
>
>
>
> Ed Watson
> Tel: +46 702053827
>
>
>
> On Wed, 14 Sept 2022 at 20:53, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>>
>> Right, I don't think such a dedicated layer exists. You may want to go
>> over the list of dependencies and type them into
>> http://layers.openembedded.org/layerindex/branch/master/recipes/ to
>> see if anything comes up.
>>
>> Otherwise, you just have to list them one by one in SRC_URI, so
>> bitbake will compose the source tree in a 'vendored' fashion.
>>
>> Alex
>>
>> On Wed, 14 Sept 2022 at 20:05, Ed Watson <edmundwatson@gmail.com> wrote:
>> >
>> > Hello
>> >
>> > Sure thanks it is https://github.com/aler9/rtsp-simple-server
>> >
>> > Ed Watson
>> >
>> >
>> >
>> >
>> > On Wed, 14 Sept 2022 at 19:53, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>> >>
>> >> It helps if you can name the project. Are the sources public?
>> >>
>> >> Alex
>> >>
>> >> On Wed 14. Sep 2022 at 18.42, <edmundwatson@gmail.com> wrote:
>> >>>
>> >>> Hello,
>> >>>
>> >>>
>> >>> I am trying to include a go project in my yocto build. It has quite a few dependencies. I may have missed something, there is a meta-go around that I have missed? Or a quick way of pulling in multiple dependencies.
>> >>> Thanks
>> >>>
>> >>> Edmund Watson
>> >>> -=-=-=-=-=-=-=-=-=-=-=-
>> >>> Links: You receive all messages sent to this group.
>> >>> View/Reply Online (#58039): https://lists.yoctoproject.org/g/yocto/message/58039
>> >>> Mute This Topic: https://lists.yoctoproject.org/mt/93683134/1686489
>> >>> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
>> >>> Mute #golang:https://lists.yoctoproject.org/g/yocto/mutehashtag/golang
>> >>> Group Owner: yocto+owner@lists.yoctoproject.org
>> >>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
>> >>> -=-=-=-=-=-=-=-=-=-=-=-
>> >>>

