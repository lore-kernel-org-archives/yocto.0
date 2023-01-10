Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB0CC61DB3
	for <webhook@archiver.kernel.org>; Tue, 10 Jan 2023 09:24:34 +0000 (UTC)
Received: from radex-web.radex.nl (radex-web.radex.nl [178.250.146.7])
 by mx.groups.io with SMTP id smtpd.web11.100035.1673342666422527188
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Jan 2023 01:24:26 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: gmail.com, ip: 178.250.146.7, mailfrom: fntoth@gmail.com)
Received: from [192.168.1.35] (cust-178-250-146-69.breedbanddelft.nl [178.250.146.69])
	by radex-web.radex.nl (Postfix) with ESMTPS id 0CD5224082;
	Tue, 10 Jan 2023 10:24:25 +0100 (CET)
Message-ID: <77731899-2e25-e55b-e7c9-0eec0a0c6ed1@gmail.com>
Date: Tue, 10 Jan 2023 10:24:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] bitbake controlling memory use
Content-Language: en-US
To: Randy MacLeod <randy.macleod@windriver.com>,
 Alexander Kanavin <alex.kanavin@gmail.com>, contrib@zhengqiu.net
Cc: Janne Kiiskila <janne.kiiskila@izumanetworks.com>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 richard.purdie@linuxfoundation.org, martin.jansa@gmail.com,
 Trevor Gamblin <tvgamblin@gmail.com>
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
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
 <39f7bf75-2df1-696b-f374-b0ce70e9092c@gmail.com>
 <CANNYZj-MhN3ruV4KtXKtD+qRkn82i4rtcuK=rMjOWkLn96Rjyg@mail.gmail.com>
 <033d7443-7da9-38e8-ef36-2a87cad5ff8d@gmail.com>
 <CANNYZj9wACHywe6CVpzv9Ty6XV-QVSu6J4zrr5RqD+10cFuK7w@mail.gmail.com>
 <4359a2c6-1e7d-3bc4-b1db-b8809a72adc6@gmail.com>
 <87492ec1-f053-90b4-f86a-70150dfc8b6a@windriver.com>
From: Ferry Toth <fntoth@gmail.com>
In-Reply-To: <87492ec1-f053-90b4-f86a-70150dfc8b6a@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Jan 2023 09:24:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58955

Hi,

On 10-01-2023 02:57, Randy MacLeod wrote:
> Add Zheng.
> Switch to Trevor's gmail since he might still be interested in this.
>
> On 2023-01-09 05:49, Ferry Toth via lists.yoctoproject.org wrote:
>> Hi
>>
>> On 09-01-2023 11:39, Alexander Kanavin wrote:
>>> On Sun, 8 Jan 2023 at 23:13, Ferry Toth <fntoth@gmail.com> wrote:
>>>
>>>> Now it works I'm not sure what to do. Richard marked the original=20
>>>> patch
>>>> as WIP. Maybe it's not appropriate for including into poky? If so I
>>>> wouldn't mind carrying it in meta-intel-edison.
>>>>
>>>> Or may be with a little work (from me) and a run on the CI servers w=
e
>>>> could make it go in?
>>> I'd rather teach make/ninja upstream to watch memory consumption
>>> and/or host pressure directly (e.g. similar to how it handles -l). An=
d
>>> offer any resulting patches to upstream first.
>
> Zheng and I *started* on that for make over the Xmas holiday.
> See the (poorly formatted) thread:
> =C2=A0 Add support for limiting CPU pressure, contrib, 2022/12/20
> in:
> https://lists.gnu.org/archive/html/bug-make/2022-12/threads.html
>
> There were mixed reviews upstream with the maintainer, Paul Smith,
> seeming to prefer that we investigate the job server approach and the=20
> current
> load averaging. I'll happily try to find time to play with Ferry's job=20
> server work.
>
The work is actually Richard's. I only fixed what broke over time.
> I've been thinking about the various workflows and as Richard said, it=20
> seems
> that for many people who only do one build at a time, the job server=20
> and maybe
> a little linker restraint, would be all that's needed. For activities=20
> such
> as YP AB, we could teach the main job server to also look at=20
> /proc/pressure
> as a way to limit the pool size we could make a meta-jobserver for=20
> those who don't
> want/need to worry about non-compile tasks such as tests and build=20
> clean-up.
>
>
> Note that cargo has the notion of a job server:
> =C2=A0=C2=A0 https://github.com/rust-lang/cargo/issues/1744
> =C2=A0=C2=A0 https://github.com/rust-lang/cargo/pull/4110
>
>
> and ninja has an open issue:
> =C2=A0=C2=A0 https://github.com/ninja-build/ninja/issues/1139
> and an initial implementation:
> =C2=A0=C2=A0 https://github.com/stefanb2/ninja/tree/topic-jobserver-fif=
o
>
> What other build tools are in need of regulation and/or job server=20
> patches?
>
What I read, gcc has already -flto=3Djobserver.

Other (single threaded CPU intensive) might just be started from jobclien=
t?

> ../Randy
>
>
>>>
>>> Alex
>>
>> Yeah, I'd rather teach the kernel to consider thrashing when=20
>> scheduling jobs. As is now any user process can slow down any other=20
>> users process and even the kernel itself to a standstill.
>>
>> But kernel developers consider those issues "orthogonal" (i.e. they=20
>> don't want to make the scheduler aware of io).
>>
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#58943):=20
>> https://lists.yoctoproject.org/g/yocto/message/58943
>> Mute This Topic: https://lists.yoctoproject.org/mt/82015730/3616765
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub=20
>> [randy.macleod@windriver.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>

