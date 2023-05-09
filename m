Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8731CC77B7C
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 06:44:00 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.25645.1683614636914214715
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 May 2023 23:43:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E56581063;
	Mon,  8 May 2023 23:44:40 -0700 (PDT)
Received: from [10.57.82.251] (unknown [10.57.82.251])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EDBD53F663;
	Mon,  8 May 2023 23:43:55 -0700 (PDT)
Message-ID: <e88aa909-488e-cdc1-f9d5-8b7bd722b1dd@arm.com>
Date: Tue, 9 May 2023 07:43:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] [meta-parsec][master,mickledore][PATCH]
 meta-parsec/layer.conf: Insert addpylib declaration
To: Armin Kuster <akuster808@gmail.com>
Cc: yocto@lists.yoctoproject.org, Diego Sueiro <diego.sueiro@arm.com>
References: <1759D2D1FA358DEB.32698@lists.yoctoproject.org>
 <175BA279740811C9.14539@lists.yoctoproject.org>
Content-Language: en-US
From: Peter Hoyes <Peter.Hoyes@arm.com>
In-Reply-To: <175BA279740811C9.14539@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 06:44:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59912

Hi again Armin,

On 03/05/2023 13:38, Peter Hoyes via lists.yoctoproject.org wrote:
> Hi Armin,
>
> On 27/04/2023 16:01, Peter Hoyes via lists.yoctoproject.org wrote:
>> From: Peter Hoyes <Peter.Hoyes@arm.com>
>>
>> Yocto mickledore introduced the addpylib directive for explicitly addi=
ng
>> layer paths to the PYTHONPATH.
>>
>> Standalone OEQA test suite discovery does not require this directive b=
ut
>> it is required to import test cases from other layers, e.g. to extend
>> and modify the test cases.
>>
>> Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
> Is it possible that this small patch missed your filters?
>
> Cheers, Peter

Thanks for merging this patch, but I've just spotted it in langdale too,=20
which is breaking one of our internal builds as the addpylib directive=20
is incompatible with langdale's Bitbake. Please could you revert this=20
patch in langdale and apply to mickledore instead.

Thanks,

Peter

>
>> ---
>> =C2=A0 meta-parsec/conf/layer.conf | 2 ++
>> =C2=A0 1 file changed, 2 insertions(+)
>>
>> diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
>> index 0a71694..7d272a2 100644
>> --- a/meta-parsec/conf/layer.conf
>> +++ b/meta-parsec/conf/layer.conf
>> @@ -12,3 +12,5 @@ LAYERSERIES_COMPAT_parsec-layer =3D "mickledore"
>> =C2=A0 =C2=A0 LAYERDEPENDS_parsec-layer =3D "core clang-layer"
>> =C2=A0 BBLAYERS_LAYERINDEX_NAME_parsec-layer =3D "meta-parsec"
>> +
>> +addpylib ${LAYERDIR}/lib oeqa
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59853): https://lists.yoctoproject.org/g/yocto/mess=
age/59853
> Mute This Topic: https://lists.yoctoproject.org/mt/98538531/5715260
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [peter.hoyes@=
arm.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

