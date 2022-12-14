Return-Path: <zhengjunling@huawei.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F13D8C4332F
	for <webhook@archiver.kernel.org>; Wed, 14 Dec 2022 13:29:04 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by mx.groups.io with SMTP id smtpd.web10.102639.1671024535876345158
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Dec 2022 05:28:56 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: huawei.com, ip: 45.249.212.187, mailfrom: zhengjunling@huawei.com)
Received: from kwepemm600012.china.huawei.com (unknown [172.30.72.54])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NXGL86tKHzqT1D
	for <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 21:24:32 +0800 (CST)
Received: from [10.108.234.70] (10.108.234.70) by
 kwepemm600012.china.huawei.com (7.193.23.74) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Wed, 14 Dec 2022 21:28:50 +0800
Subject: Re: [yocto] Yocto with Monorepo - best practice for building apps
 that have source within the repo?
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Wang Nan <wangnan0@huawei.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
References: <SY4PR01MB679719971DE5378023DF6F3FB1E39@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9pSipKkwpRwaCo3NwO1O=uK_BXazxvS7t70qWTpaSpJw@mail.gmail.com>
 <SY4PR01MB6797E2185B27B31256010857B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9_WD95_=bRi7OubjJ7eoGhe8+Y+QAmPu=2zLknjZ-4+w@mail.gmail.com>
From: Junling Zheng <zhengjunling@huawei.com>
Message-ID: <a254ed09-8ccc-7968-58b8-3e01ddb883b9@huawei.com>
Date: Wed, 14 Dec 2022 21:28:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CANNYZj9_WD95_=bRi7OubjJ7eoGhe8+Y+QAmPu=2zLknjZ-4+w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.108.234.70]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemm600012.china.huawei.com (7.193.23.74)
X-CFilter-Loop: Reflected
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 13:29:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58798

=E5=9C=A8 2022/12/14 17:40, Alexander Kanavin =E5=86=99=E9=81=93:
> On Wed, 14 Dec 2022 at 10:34, David Antliff <d.antliff@unsw.edu.au> wro=
te:
>> Good question! I would prefer not to use a monorepo but it has been im=
posed on me. It predates my involvement and I=E2=80=99m stuck with it, un=
fortunately. Consider it an unavoidable constraint. There's a lot in the =
repo, and the yocto project is just one part of it.
>>
>> Frankly it would make my life a lot easier if I didn't have to work wi=
th a monorepo, but my leaders insist that it makes things "easier"...
>=20
> Let me guess: they heard that facebook is using a monorepo, so that
> makes it a 'best practice'?
>=20
> I would symlink the sources directory to the sub-directory of 'files'
> ('files' is in the same directory as the recipe), then list the
> symlink in SRC_URI, so bitbake can copy the content into $WORKDIR. But
> I have no idea if it's going to work. It's not a setup that is tested
> or used much.
>=20

Hi, Alex
Can this method detect source code changes for incremental building?

> Alex
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58794): https://lists.yoctoproject.org/g/yocto/mess=
age/58794
> Mute This Topic: https://lists.yoctoproject.org/mt/95654029/3618678
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [zhengjunling=
@huawei.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


