Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F8CBC3DA7D
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 15:58:52 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web11.67059.1672761524673202426
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 07:58:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HhukS6so;
 spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: fntoth@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id b88so37115880edf.6
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 07:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SYsg6n42LtcZZOgcpwJp0716UP7ENjea1VsxhWIFOlI=;
        b=HhukS6so4m1GYmQsa7AABVZPbHq1HR5uUxIk3HFgYk3kbtd8ZYfA5Wfx4mcKRTBtue
         FzWUIDN4LDESjTd7tsnAFt8/uKLNLRcXQ02vDotbBzwEdrMpKy5lmNJm92BaxiJN63Mi
         uixytQLIVnas/tBErMg0uJA4OdBvOD2wNU6uRC5BHOfjveaCGwJZnrj020YTh97QckJ6
         JP5jJqUvhXxgTrrgIOXLagVgTydVV1gjyJ6+vZ4WRJIEsLIwZ3UUE8ZzdVpY/7E1zbeN
         CRYajppADKBD2nF6DII1noOj4rQi/uvZsLkvhfR3wwjtVoYARrLV0OHLd3b3u1O2sysM
         ImAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SYsg6n42LtcZZOgcpwJp0716UP7ENjea1VsxhWIFOlI=;
        b=kJoNcunM6sujk9PQeyCt5G+nn+aVQZAFyBAutWzRXsvvVqNU66UwKmwl5RhkfLxggj
         aIMfsmF/655cirXRYwmQqYIldPohf3Qk+qq6ZMDSW+YLw2RMe7iGsZA6QnrA26GzyFDm
         1OpsQSCoNhhWsiLbueOXepIuKDEhU8bs3fDik2/U7S3zNe9HmB/dLx5jKpLYeyWLpPpI
         qDSQDTw35UGL6Xwe9v4WUO6ErDXCmffqNuj0B812WxNBLUZ6cTqOShhBxctAu4gzTeQ+
         ON3ur0qsc/SZOZsdZ3NKr/TqIbw3TmLGHWmsCtqxbEPBRDliDFm4LsVk/FZuLPzZ4XC1
         puHA==
X-Gm-Message-State: AFqh2kobgwlBWcsdXsZIbWxZeODk0hkaFbMg9AX+XHS04Laa6Gv1ShS8
	I78Ua7SRgc+HgtgWYJeV+6k=
X-Google-Smtp-Source: AMrXdXtEmT4NeGy4Ch28Qgz6j1wLKRRHfQE2vKC5qpo4F4es1g6jwSQ/dbsqiENNM9p0GT1HbHxY6w==
X-Received: by 2002:a05:6402:2a08:b0:46f:f36b:a471 with SMTP id ey8-20020a0564022a0800b0046ff36ba471mr52666858edb.22.1672761523224;
        Tue, 03 Jan 2023 07:58:43 -0800 (PST)
Received: from ?IPV6:2a02:a466:68ed:1:c188:ece5:97bb:2332? (2a02-a466-68ed-1-c188-ece5-97bb-2332.fixed6.kpn.net. [2a02:a466:68ed:1:c188:ece5:97bb:2332])
        by smtp.gmail.com with ESMTPSA id b19-20020a056402139300b004642b35f89esm13836885edv.9.2023.01.03.07.58.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jan 2023 07:58:42 -0800 (PST)
Message-ID: <39f7bf75-2df1-696b-f374-b0ce70e9092c@gmail.com>
Date: Tue, 3 Jan 2023 16:58:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] bitbake controlling memory use
Content-Language: en-US
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Janne Kiiskila <janne.kiiskila@izumanetworks.com>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <10280.1623316977582274550@lists.yoctoproject.org>
 <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
 <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com>
 <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
 <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com>
 <89e0c314-86ca-6fb4-642c-7493116b467f@gmail.com>
 <CANNYZj80qvYk5=OXDhGr78=pmzsBdxD1EbHDNrfKDf9_gUQyPA@mail.gmail.com>
 <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com>
 <e36d4afd-235a-a2f2-7272-9d9b49c02698@theobroma-systems.com>
 <41754798-a1f2-05a7-93d8-799907ed988b@gmail.com>
 <BN7PR14MB2420DC3CA660334614825E4A85F49@BN7PR14MB2420.namprd14.prod.outlook.com>
 <f34730a2-c775-8e9c-dd36-9282e9cff08d@gmail.com>
 <1736D5DCC66BC3DE.4716@lists.yoctoproject.org>
 <CANNYZj_8C0sZA07y86ErjC8kL02oTPFahEV8Tsq9yfVWmxz-HA@mail.gmail.com>
From: Ferry Toth <fntoth@gmail.com>
In-Reply-To: <CANNYZj_8C0sZA07y86ErjC8kL02oTPFahEV8Tsq9yfVWmxz-HA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 15:58:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58909

Hi Alex,

Op 03-01-2023 om 16:37 schreef Alexander Kanavin:
> On Tue, 3 Jan 2023 at 16:24, Alexander Kanavin via
> lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
> wrote:
>> Sorry guys, but this is venturing into the ridiculous. If you embark
>> on building a whole Linux distribution, you need to start with the
>> correct tools for it.
> I mean, one can use a virtual machine inside a windows laptop if
> that's all they got. But then you should provide them with a sstate
> cache server, which fulfils the same role as binary package feeds on
> traditional Linux distros in that case.

You are completely right for professional use cases. Another way would 
be to give ssh access to a sufficiently large build server.

But the Yocto project (to me) is also the correct tool for smaller 
(hobbyist?) projects. These smaller projects don't build the world of 
packages and are typically built on a private laptop (bwugh) or desktop. 
Some of these packages do require a lot of resources> nodejs is one, 
rust another. That's not the fault of Yocto of course.

What these projects show is that bitbake is a bit enthusiastic in some 
cases and tries to build multiple packages simultaneously that are 
already hard to do by themselves. I think it's a fundamental, but not 
necessarily a high priority problem.

I know you don't want to spend time on this. So don't. Others may have 
an interest or a tip to improve Yocto in this area.

I'm just trying to get an old patch from Richard Purdie to work 
(http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/wipqueue4&id=d66a327fb6189db5de8bc489859235dcba306237) 
with later fixes by Trevor Gamblin.

Or alternatively something based on https://github.com/olsner/jobclient.

> Alex

