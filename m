Return-Path: <geissonator@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB280C77B7C
	for <webhook@archiver.kernel.org>; Wed, 24 May 2023 21:38:34 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web10.6542.1684964306475839213
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 May 2023 14:38:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=n5KlN59f;
 spf=pass (domain: gmail.com, ip: 209.85.222.177, mailfrom: geissonator@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-75b17aa343dso15696585a.3
        for <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 14:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684964305; x=1687556305;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eCEc42SzutHYmxQY/tx879dNWjuHxBZ4NMN90yWUmaQ=;
        b=n5KlN59fXvlMsgFCA3udH8JrwFwdgzBgc6h0D/HzXkISC+SxjSWuslH60ecvEXlxU4
         aHQlL8StAKXJ8Xjc9XvgE1lSsSUH3K1CBbPukEftNFhhoxvQsnoMjLtmdBjcvNR1TFJC
         mnpTfS6a/O/vum1zITxge0aUmJHMWD9T7/DolSMUInF/wVcuxxXDv/0Fjafb4OQEApP/
         ouE10nEfEYcyfrqzUKH8T+h+ly07c1y5NUrbFhvTEz5BnyiA456Qgnq7yYd2KPWWCsSh
         0bfuVmvFj5WFZA+7nBhRRivRQ0zQn2Nk6EkIxLYQGOdShf5Mqt7EzmMrekK5hhGLAjN/
         X+og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684964305; x=1687556305;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eCEc42SzutHYmxQY/tx879dNWjuHxBZ4NMN90yWUmaQ=;
        b=TcaqIDgB7cGavfHVFlMIHQXal3mMhIvpaw24uCe3+TKwk3mzVshrQKWc+25k/2weo1
         RfPMlNb+r8XDwu0kB8K3F1HVNgwyqdPwQ7X+kqhU6v1OPh+uOBZ+N4Iw7rH4JVVOo3Ym
         WIiO1GZqa+NWfpcRhAUB1MApVHZlE1wyAFvFggyXZNhApcLAjngONQ++SFylVeuEefPa
         /DQp8vPvUkvNMEybRP5CWJArMfEKcpl7VC/HIP6dg6itQP/7Lb1IDImHP3WaNqCdyv8Q
         NXPJKPfN18FvLzAe1cjKAiFUwpu0EQ8q6Wf3sJBxhD1i4wpzpwXL5zyEZTTdVj10E4AW
         edYw==
X-Gm-Message-State: AC+VfDyqLeLwjhFkA+WQ1zp97G1SYtn8YlbUdaDQu/ZC/d2STwoHgH3k
	3fmlUWJHs40fZJXVy0jJYeM=
X-Google-Smtp-Source: ACHHUZ6oxZI0Rj9vL47WiMiLCPOIxEWilzpy7ywbAnYc8GcMlhIWDAeRqSb8pGUdk5g46PH2wqvCKQ==
X-Received: by 2002:ad4:5c8b:0:b0:5ce:6636:a45 with SMTP id o11-20020ad45c8b000000b005ce66360a45mr30730920qvh.25.1684964305458;
        Wed, 24 May 2023 14:38:25 -0700 (PDT)
Received: from smtpclient.apple (097-086-066-234.biz.spectrum.com. [97.86.66.234])
        by smtp.gmail.com with ESMTPSA id a10-20020a0ccdca000000b0061b721f27b3sm3854989qvn.123.2023.05.24.14.38.24
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 May 2023 14:38:25 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.3\))
Subject: Re: [yocto] [meta-security][PATCH] ibmswtpm2: update to
 164-2020-192.1
From: Andrew Geissler <geissonator@gmail.com>
In-Reply-To: <341b950c-b039-6a25-e49f-8c3b77ef507a@gmail.com>
Date: Wed, 24 May 2023 17:38:23 -0400
Cc: yocto@lists.yoctoproject.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <CF243CD7-3D9C-4E28-909D-E6E4E2076B9E@gmail.com>
References: <20230524200307.37451-1-geissonator@yahoo.com>
 <341b950c-b039-6a25-e49f-8c3b77ef507a@gmail.com>
To: akuster808 <akuster808@gmail.com>
X-Mailer: Apple Mail (2.3696.120.41.1.3)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 21:38:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60119



> On May 24, 2023, at 4:38 PM, akuster808 <akuster808@gmail.com> wrote:
>=20
>=20
>=20
> On 5/24/23 4:03 PM, Andrew Geissler wrote:
>> This version supports openssl 3.1
>>=20
>> The maintainer changed his tag versions hence the different looking
>> version.
>>=20
>> The maintainer also has stopped releasing tar files and asked we
>> directly grab from git.
>=20
> Why did the License file change?

Good question. I think I got a bit turned around when I moved over to =
git.=20

This repo has 2 LICENSE files:
  https://sourceforge.net/p/ibmswtpm2/tpm2/ci/master/tree/LICENSE
  https://sourceforge.net/p/ibmswtpm2/tpm2/ci/master/tree/src/LICENSE=20

My commit moved to the base LICENSE file in the tree. The original =
recipe
pointed to the second LICENSE file under src/.

The original src/LICENSE appears to be a subset of the root LICENSE
but I can move the recipe back to the original src/LICENSE if that=E2=80=99=
s the
expected behavior here.

>=20
> -armin
>> Signed-off-by: Andrew Geissler <geissonator@yahoo.com>
>> ---
>>  ...ibmswtpm2_1682.bb =3D> ibmswtpm2_164-2020-192.1.bb} | 12 =
++++++------
>>  1 file changed, 6 insertions(+), 6 deletions(-)
>>  rename meta-tpm/recipes-tpm2/ibmswtpm2/{ibmswtpm2_1682.bb =3D> =
ibmswtpm2_164-2020-192.1.bb} (73%)
>>=20
>> diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb =
b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
>> similarity index 73%
>> rename from meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb
>> rename to meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
>> index 85fc7e0..fbeb872 100644
>> --- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb
>> +++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
>> @@ -11,18 +11,18 @@ Advantages of this approach: \
>>  HOMEPAGE =3D "http://ibmswtpm.sourceforge.net/ibmswtpm2.html"
>>  LICENSE =3D "BSD-2-Clause"
>>  SECTION =3D "securty/tpm"
>> -LIC_FILES_CHKSUM =3D =
"file://../LICENSE;md5=3D1e023f61454ac828b4aa1bc4293f7d5f"
>> +LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3Dc75e465155c42c14154bf6a2acb7347b"
>>    DEPENDS =3D "openssl"
>>  -SRC_URI =3D =
"https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
>> +SRC_URI =3D =
"git://git.code.sf.net/p/ibmswtpm2/tpm2;protocol=3Dhttps;branch=3Dmaster =
\
>>             file://tune-makefile.patch \
>> -           "
>> -SRC_URI[sha256sum] =3D =
"3cb642f871a17b23d50b046e5f95f449c2287415fc1e7aeb4bdbb8920dbcb38f"
>> +           ""
>> +SRCREV =3D "5452af422edeff70fcae8ea99dd28a0922051d7b"
>>  -UPSTREAM_CHECK_URI =3D =
"https://sourceforge.net/projects/ibmswtpm2/files/"
>> +UPSTREAM_CHECK_URI =3D "https://git.code.sf.net/p/ibmswtpm2/tpm2"
>>  -S =3D "${WORKDIR}/src"
>> +S =3D "${WORKDIR}/git/src"
>>    CFLAGS +=3D "-Wno-error=3Dmaybe-uninitialized =
-DALG_CAMELLIA=3DALG_NO"
>> =20
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#60115): =
https://lists.yoctoproject.org/g/yocto/message/60115
>> Mute This Topic: https://lists.yoctoproject.org/mt/99116759/3616698
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
[akuster808@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


