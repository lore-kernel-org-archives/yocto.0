Return-Path: <mjh42@gmx.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D9CBC4332F
	for <webhook@archiver.kernel.org>; Thu, 17 Nov 2022 08:57:32 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by mx.groups.io with SMTP id smtpd.web10.11156.1668675449854545575
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Nov 2022 00:57:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.de header.s=s31663417 header.b=e+GvWYLU;
 spf=pass (domain: gmx.de, ip: 212.227.15.15, mailfrom: mjh42@gmx.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
	t=1668675446; bh=RWJUYfIHx1TVxlkHwbf51TRzfrI0ScP4LA9iFThkwtk=;
	h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
	b=e+GvWYLUh8VqB08tqPjsk7rxzEzasZ/gOUgQVMmz6fcnLqEDw5hWQOL+XM0R/Tsgr
	 8ppnnPGFlKNjQvuJomaKL+b6zSRnFQyCR5lNWWahZnTEdrIb53b5vYPmaZW8EYRBgH
	 FdTSRg1Wn0W/7w0773BwDqrEM2hC311bQoHMG5CoeC80T2rcSVRi7E5YA0Z+ohhHaP
	 T+QEwC8L57A1hR5WBK85UVo2S28z5ilUPnam8ToTdrL/t8sVbOxBydmOzsW3FResjn
	 bPA9N8COHKH4UhGzFhmsIgr2LBmXV2SJscnJBP3Dzr7gEsdNabGy89YB/KAawyaN7v
	 93Q4MtqVkNWug==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.0.194] ([46.5.228.126]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MTzf6-1oVdYq2cmw-00R30Z; Thu, 17
 Nov 2022 09:57:26 +0100
Message-ID: <9d96b583-d461-3f05-cc68-ff8435c8fd18@gmx.de>
Date: Thu, 17 Nov 2022 09:57:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [yocto] sstate mirror file name length issue #dunfell
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
References: <qaRy.1668514160925569015.gP6R@lists.yoctoproject.org>
 <cd8c8bb9eb3ea281350937082791c96aa19921ed.camel@linuxfoundation.org>
From: Markus Held <mjh42@gmx.de>
In-Reply-To: <cd8c8bb9eb3ea281350937082791c96aa19921ed.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:NjtuLU/TK7k+RgUFYMraYRQ5au4aj4H8saYNhHXJHDcAEjaqJjs
 ZRRD1u4qervVSn0JH27bdrOJiyw8tvTFV0mt7BQiMLy79mBtPTETknylZ9h7QY4bNiIs4DA
 yLVqxtcZuJDjt0qXoQwO06HYFGU7XhJ6zR6G6Q24wf0nnjppgSpmX8bmUWhtggWN+BIJWyV
 QrPpTRgdzsiMQdp/EvBYg==
UI-OutboundReport: notjunk:1;M01:P0:kaIPH/NhA3k=;iPnn0eRztH659oUcm54YWXUHMOM
 EHVFBKu95MxxYaUT1u2BTil0jDgOIezHbGnwTdvMt15CAziJhyoPZbFHjUmsFe0gkcpfX/ux9
 agXb+g3uwLisIt64QbeFUcQeK8qA7+qIgreoJoWDeG/U3WNzPfX3A1EFxNsEFEvb9Hjb7jhbo
 rwDeO/YJ0ipPxSOR9hFnSoBqLAPiiKRH1lHbH0Av3kqj4jn6pC/ZHZZiWYnS7IAmj+eq6WIG7
 1e6dGnRHt8n8zZan8cZxa9QEV9+nMd5CReBcmmkuMDnxhKMtSYRxNOE0xS9U4QX1smfRAQXYe
 QQpJtiwJKr5GDwzbYoI0WFzr4q2AShZnN+GHZRe0VTcACT7jY6fpZyDfxLJf7h+vh6SB0qHxc
 MPhGWwXN1RXf2feXZ+U6bdfgwZ/JOuBRcY5uMwVcDXWExrGfPFWPmWLKrqKTbMl1LaQP7BOXE
 EBgUJP9h3E1ZH9zdCXLOYDuqa6klZISqDBEImTsbMUdc3kGDvI3SpyZ5t8zTKD70dmFvfm68+
 QMArLXuAyLK6pDly7LKR9V2IJzBGcxeq4B/fkwzQ9EYML9rpuGzwMIkew8OtJPdEMztQTU/WP
 VLF+AG9Lq1hgKL5FKU3mZXu8+np4SoaAhuSqdrpR3gbPb/duA14lCuj/hCo5JlzP/Ndi58MLv
 EVC5KMtftMV195H4O1zzLDDnn28gGVdRgz6evj43pQE8/uwNyKoy4sVl0EqynJHJBF+/swGWB
 X1nz6iKTiYfsL8NslAbo9jDmz0jhjWErEs9v4uLWu+jgqTtiM+XLtqetGatYjFqo0cufm5cHr
 tQ7t848uUCdPYmC//+pOhPm1zt4f4jjMKnJZIMWU/SbPfXNT0lO5Te9cAk7emqNiuFaeKvH1i
 XTGnMrgAA2AJxa7hnfQ/h14rH+qrBTBN5yySQI8c7ElkniKNEqiTsbfdyNH4kkfXy7O4W5lRE
 WFYiCSTW7eGK8ra2U2VfORfRMqs=
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 08:57:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58578


On 15/11/2022 15:01, Richard Purdie wrote:
> On Tue, 2022-11-15 at 04:09 -0800, Markus Held wrote:
>> Hello,
>>
>> I try to use yocto SSTATE_MIRROR with a custom distribution (RDK:
>> https://developer.rdkcentral.com/) and enabled yocto multilib
>> support.
>> The sstate directory is created by my build server and published with
>> nginx to the developer machines.
>>
>> Environment:
>> Bitbake 1.46.0 / Yocto Dunfell 3.1
>> TUNE_PKGARCH =3D =E2=80=9Ccortexa53t2hf-neon-fp-armv8=E2=80=9D
>> MULTILIBS =3D "multilib:lib32"
>> TARGET_VENDOR=3D"-rdk"
>> TARGET_OS=3D"linux"
>>
>> When a developer configures the sstate mirror in his local.conf:
>>
>>  =C2=A0=C2=A0 SSTATE_MIRRORS ?=3D " file://.* http://<build server>/sst=
ate-
>> cache/PATH;downloadfilename=3DPATH "
>>
>> the build gets stuck on various _setscene tasks and does not
>> continue. I did some debugging and the issue is related the with file
>> name length of the sstate files. When the developer machine tries to
>> download a file from the mirror, bitbake fetch wants to create a
>> local lock file with name "<file name>.lock". Example of a sstate
>> lock file that fails for me:
>>
>>  =C2=A0=C2=A0 sstate:lib32-dibbler:cortexa53t2hf-neon-fp-armv8-rdkmllib=
32-linux-
>> gnueabi:1.0.1+1.0.2RC1+gitc4b0ed52e751da7823dd9a36e91f93a6310e5525:r0
>> :cortexa53t2hf-neon-fp-
>> armv8:3:169be56e277b6922d1cca3f23f6d56033812941a438f09a477cd96999d7d0
>> 801_package_qa.tgz.siginfo.lock
>>
>> This lock file cannot be created on a ext file system due the file
>> name length > 255. This causes the _setscene task to get stuck
>> indefinitely. It seems like most Linux file systems only support file
>> names up to 255 bytes.
>>
>> Is there a way to configure or limit the file name length of the
>> sstate cache files? Or a way to avoid the issue with the .lock file?
>>
> There were changes in bitbake:
>
> https://git.yoctoproject.org/poky/commit/bitbake/lib/bb/utils.py?id=3D27=
3b124bf6acd77b074fde2421be331721a68c11
> https://git.yoctoproject.org/poky/commit/bitbake/lib/bb/utils.py?id=3D09=
e826cfb021731c1b139046665d2d9fa24baa88
>
> There were also sstate class changes:
>
> https://git.yoctoproject.org/poky/commit/meta/classes/sstate.bbclass?id=
=3Db8025e972081b70960ffcbcbe43a7118041556a1
> https://git.yoctoproject.org/poky/commit/meta/classes/sstate.bbclass?id=
=3Ded4bdd0f9149ba24fac375fd3af8bb2a06423105
> https://git.yoctoproject.org/poky/commit/meta/classes/sstate.bbclass?id=
=3D4c6efbf03530b6f60cde59cdef61aa14538753a3
>
> Cheers,
>
> Richard
>

Thanks, I applied the patches locally and it fixed the issue for me.

Markus


