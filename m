Return-Path: <michal.kotyla@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17843C433F5
	for <webhook@archiver.kernel.org>; Mon,  2 May 2022 06:48:37 +0000 (UTC)
Received: from 8.mo575.mail-out.ovh.net (8.mo575.mail-out.ovh.net
 [46.105.74.219])
 by mx.groups.io with SMTP id smtpd.web09.7543.1651474109713779591
 for <yocto@lists.yoctoproject.org>;
 Sun, 01 May 2022 23:48:30 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=softfail (domain: 3mdeb.com, ip: 46.105.74.219, mailfrom: michal.kotyla@3mdeb.com)
Received: from player732.ha.ovh.net (unknown [10.109.146.131])
	by mo575.mail-out.ovh.net (Postfix) with ESMTP id 2EF0E212A1
	for <yocto@lists.yoctoproject.org>; Mon,  2 May 2022 06:48:26 +0000 (UTC)
Received: from 3mdeb.com (84-10-27-202.static.chello.pl [84.10.27.202])
	(Authenticated sender: michal.kotyla@3mdeb.com)
	by player732.ha.ovh.net (Postfix) with ESMTPSA id 161F71C2A70C0;
	Mon,  2 May 2022 06:48:23 +0000 (UTC)
Authentication-Results: garm.ovh;
 auth=pass (GARM-105G00650740e60-2b4d-4ddd-9da0-4f444b81e5c2,
                    8A9711C8D687A057B4F6F1BC761934FAF5A24487)
 smtp.auth=michal.kotyla@3mdeb.com
X-OVh-ClientIp: 84.10.27.202
Message-ID: <34bf1ed6-2552-8993-ec6e-2a15f5946459@3mdeb.com>
Date: Mon, 2 May 2022 08:48:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [yocto] [meta-security][PATCH] tpm2-tools: libtss added to
 RDEPENDS
Content-Language: en-US
To: akuster808 <akuster808@gmail.com>, yocto@lists.yoctoproject.org
Cc: tomasz.zyjewski@3mdeb.com, piotr.krol@3mdeb.com
References: <20220427094804.965389-1-michal.kotyla@3mdeb.com>
 <e1e04069-9367-b0f7-9a14-97d50d36fca8@gmail.com>
From: =?UTF-8?Q?Micha=c5=82_Kotyla?= <michal.kotyla@3mdeb.com>
In-Reply-To: <e1e04069-9367-b0f7-9a14-97d50d36fca8@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Ovh-Tracer-Id: 9131611195422703120
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrvdeggdduuddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefkffggfgfuvfevfhfhjggtgfesthekredttdefjeenucfhrhhomhepofhitghhrghlpgfmohhthihlrgcuoehmihgthhgrlhdrkhhothihlhgrseefmhguvggsrdgtohhmqeenucggtffrrghtthgvrhhnpeelieegudfhveetgfeuvdehudeuffdukedthfeutdevteffvdeiteehgfduudelfeenucffohhmrghinhepghhithhhuhgsrdgtohhmpdihohgtthhophhrohhjvggtthdrohhrghdpfehmuggvsgdrtghomhenucfkpheptddrtddrtddrtddpkeegrddutddrvdejrddvtddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehplhgrhigvrhejfedvrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepmhhitghhrghlrdhkohhthihlrgesfehmuggvsgdrtghomhdpnhgspghrtghpthhtohepuddprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrgh
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 May 2022 06:48:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56966


On 01.05.2022 19:20, Armin Kuster wrote:
>
>
> On 4/27/22 02:48, Micha=C5=82 Kotyla wrote:
>> To use tpm2-tools like tpm2_pcrread on the system image should be=20
>> installed
>> additional software. Without adding libtss packages to the RDEPENDS=20
>> attempt to
>> run with tss2-tcti fails like:
>>
>> ERROR:tcti:../tpm2-tss-3.0.3/src/tss2-tcti/tcti-swtpm.c:592:
>> Tss2_Tcti_Swtpm_Init() Cannot connect to swtpm TPM socket
>
> The current version of tpm2-tools is 5.2.=C2=A0 Was this meant for honi=
ster?
>
> - armin

Yes. We do not have tested this on kirkstone, so this patch is for=20
honister only now.


>> ---
>> =C2=A0 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.0.bb | 2 ++
>> =C2=A0 1 file changed, 2 insertions(+)
>>
>> diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.0.bb=20
>> b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.0.bb
>> index dbd324a..cb2e3d8 100644
>> --- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.0.bb
>> +++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.0.bb
>> @@ -6,6 +6,8 @@ SECTION =3D "tpm"
>> =C2=A0 =C2=A0 DEPENDS =3D "tpm2-abrmd tpm2-tss openssl curl autoconf-a=
rchive"
>> =C2=A0 +RDEPENDS:${PN} =3D "libtss2 libtss2-mu libtss2-tcti-device=20
>> libtss2-tcti-mssim"
>> +
>> =C2=A0 SRC_URI =3D=20
>> "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN=
}-${PV}.tar.gz"
>> =C2=A0 =C2=A0 SRC_URI[sha256sum] =3D=20
>> "e1b907fe29877628052e08ad84eebc6c3f7646d29505ed4862e96162a8c91ba1"
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#56909):=20
>> https://lists.yoctoproject.org/g/yocto/message/56909
>> Mute This Topic: https://lists.yoctoproject.org/mt/90727197/3616698
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub=20
>> [akuster808@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>
--=20
Micha=C5=82 Kotyla
Embedded Linux Developer
GPG: 14FC54DC259CF70A
https://3mdeb.com | @3mdeb_com


