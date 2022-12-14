Return-Path: <zhengjunling@huawei.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED293C4332F
	for <webhook@archiver.kernel.org>; Wed, 14 Dec 2022 16:34:55 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by mx.groups.io with SMTP id smtpd.web11.109282.1671035693290487410
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Dec 2022 08:34:53 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: huawei.com, ip: 45.249.212.189, mailfrom: zhengjunling@huawei.com)
Received: from kwepemm600012.china.huawei.com (unknown [172.30.72.55])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4NXLTV2H7bzJp2l
	for <yocto@lists.yoctoproject.org>; Thu, 15 Dec 2022 00:31:10 +0800 (CST)
Received: from [10.108.234.70] (10.108.234.70) by
 kwepemm600012.china.huawei.com (7.193.23.74) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Thu, 15 Dec 2022 00:34:48 +0800
Subject: Re: [yocto] Yocto with Monorepo - best practice for building apps
 that have source within the repo?
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Wang Nan <wangnan0@huawei.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
References: <SY4PR01MB679719971DE5378023DF6F3FB1E39@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9pSipKkwpRwaCo3NwO1O=uK_BXazxvS7t70qWTpaSpJw@mail.gmail.com>
 <SY4PR01MB6797E2185B27B31256010857B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9_WD95_=bRi7OubjJ7eoGhe8+Y+QAmPu=2zLknjZ-4+w@mail.gmail.com>
 <a254ed09-8ccc-7968-58b8-3e01ddb883b9@huawei.com>
 <CANNYZj8sLB86he9Xngue6NAVzD+xzOcbOs7cP0WQkpSCBHG60w@mail.gmail.com>
From: Junling Zheng <zhengjunling@huawei.com>
Message-ID: <9486e584-8444-d262-0fd8-cffa78efa04e@huawei.com>
Date: Thu, 15 Dec 2022 00:34:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CANNYZj8sLB86he9Xngue6NAVzD+xzOcbOs7cP0WQkpSCBHG60w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.108.234.70]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemm600012.china.huawei.com (7.193.23.74)
X-CFilter-Loop: Reflected
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 16:34:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58800

=E5=9C=A8 2022/12/14 21:55, Alexander Kanavin =E5=86=99=E9=81=93:
> On Wed, 14 Dec 2022 at 14:28, Junling Zheng <zhengjunling@huawei.com> w=
rote:
>> Can this method detect source code changes for incremental building?
>=20
> You need to experiment with this. If you list a local directory in
> SRC_URI, bitbake will checksum everything in it, and will detect when
> things change and then copy over the new tree, but whether this can
> allow incremental builds, I'm not sure.
>=20
> 'devtool modify' is designed specifically for incremental builds.
>=20

Thanks for your guide:)

> Alex
> .
>=20


