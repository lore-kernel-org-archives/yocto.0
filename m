Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1F54C54EBD
	for <webhook@archiver.kernel.org>; Mon,  9 Jan 2023 10:49:07 +0000 (UTC)
Received: from radex-web.radex.nl (radex-web.radex.nl [178.250.146.7])
 by mx.groups.io with SMTP id smtpd.web10.68583.1673261342059026773
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Jan 2023 02:49:02 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: gmail.com, ip: 178.250.146.7, mailfrom: fntoth@gmail.com)
Received: from [192.168.1.35] (cust-178-250-146-69.breedbanddelft.nl [178.250.146.69])
	by radex-web.radex.nl (Postfix) with ESMTPS id A4E9D24050;
	Mon,  9 Jan 2023 11:49:00 +0100 (CET)
Message-ID: <4359a2c6-1e7d-3bc4-b1db-b8809a72adc6@gmail.com>
Date: Mon, 9 Jan 2023 11:49:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] bitbake controlling memory use
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Janne Kiiskila <janne.kiiskila@izumanetworks.com>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 trevor.gamblin@windriver.com, richard.purdie@linuxfoundation.org,
 martin.jansa@gmail.com
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
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
 <39f7bf75-2df1-696b-f374-b0ce70e9092c@gmail.com>
 <CANNYZj-MhN3ruV4KtXKtD+qRkn82i4rtcuK=rMjOWkLn96Rjyg@mail.gmail.com>
 <033d7443-7da9-38e8-ef36-2a87cad5ff8d@gmail.com>
 <CANNYZj9wACHywe6CVpzv9Ty6XV-QVSu6J4zrr5RqD+10cFuK7w@mail.gmail.com>
Content-Language: en-US
From: Ferry Toth <fntoth@gmail.com>
In-Reply-To: <CANNYZj9wACHywe6CVpzv9Ty6XV-QVSu6J4zrr5RqD+10cFuK7w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 10:49:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58943

Hi

On 09-01-2023 11:39, Alexander Kanavin wrote:
> On Sun, 8 Jan 2023 at 23:13, Ferry Toth <fntoth@gmail.com> wrote:
>
>> Now it works I'm not sure what to do. Richard marked the original patch
>> as WIP. Maybe it's not appropriate for including into poky? If so I
>> wouldn't mind carrying it in meta-intel-edison.
>>
>> Or may be with a little work (from me) and a run on the CI servers we
>> could make it go in?
> I'd rather teach make/ninja upstream to watch memory consumption
> and/or host pressure directly (e.g. similar to how it handles -l). And
> offer any resulting patches to upstream first.
>
> Alex

Yeah, I'd rather teach the kernel to consider thrashing when scheduling 
jobs. As is now any user process can slow down any other users process 
and even the kernel itself to a standstill.

But kernel developers consider those issues "orthogonal" (i.e. they 
don't want to make the scheduler aware of io).


