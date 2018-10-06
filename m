Return-Path: <open.source@oleksandr-kravchuk.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3437AE0090A; Sat,  6 Oct 2018 07:51:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
	[209.85.208.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94CF5E007B3
	for <yocto@yoctoproject.org>; Sat,  6 Oct 2018 07:51:03 -0700 (PDT)
Received: by mail-lj1-f194.google.com with SMTP id x3-v6so509720lji.13
	for <yocto@yoctoproject.org>; Sat, 06 Oct 2018 07:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=oleksandr-kravchuk-com.20150623.gappssmtp.com; s=20150623;
	h=from:subject:to:cc:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=hGEzSBlG93qclYoJmPsloxiEcBCmLE6ifjFoBq4Bpjo=;
	b=HIgxdNXa9wfwF6kp+xiZjd/ua4tNu6gLsGdF6ihVYhJd9PnDwnt9fhUsw+N3Ogv85T
	14c2/Rrg+JJCKpf2kTLRjvUDEz4HHb42MCNpwWdLS5BSRQa+Ge1Xsjcckyluuq1doqCK
	MhJ9a+/9XcjHPvptMmxe31Ew4EGKvfRSSEVcXnJfeEp69sRIwvz4IT9JjAL9vdqPmShw
	Z0SP9eqwiNK1B3DEmjXTUxe+k3a7VcX5NKln9umvOpoWaV7NVIx9LK3e01hGlzL62qdD
	2KG2S1rosG1rFWeJULwyMNNOAajcxjphE3DkQhAtL88iEuFXmVWjqmVoFtuNSnpZADNV
	2FCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:cc:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=hGEzSBlG93qclYoJmPsloxiEcBCmLE6ifjFoBq4Bpjo=;
	b=hdRyCV2RZP4Fnmu1pPzgQoE63ONgv7gDmSaRxKIonUiQ8QoBOo0REfSvSYNNgVZ5LQ
	iIw21aLUtN7gHnd3zN90MyUTiGKs5O8u6T2wSR8gRX3O0FphL0gQC12/8hoXQ8bTTn0K
	GTQ9rbzOUcjl91kAZt4DQo+meFovlz3dL5JAi26g1VRig4SZfBa7ZWuB1L0NPoJxLBCn
	08XbxjsbWusqA4XavJz7b04QAwISSSnFjsf8zelb197XOaI6T8CHbGXxsaK4lAco8JUF
	07J8rUQbXdzIW1EZ+2hspUbKhmoaVvdQ7xzOkHtiHOJ8F/hSD9lsJDz7Mj7uKvVMHvnw
	QE2w==
X-Gm-Message-State: ABuFfoj2CDMEcRFfMfdFxDk33X4WzBq9Ose8x98xDW380njghedCeVdd
	jxTNj+2e1tfVGuKlHS8LRQ+Tg8a+zaI=
X-Google-Smtp-Source: ACcGV62x68HKRrtXxdf5IUJ0NWUFlaWBfdpVSqtLbjV/O54VAOTjyezGmOyp0URsJlozl+DoL2FPdQ==
X-Received: by 2002:a2e:3006:: with SMTP id
	w6-v6mr7393642ljw.146.1538837462309; 
	Sat, 06 Oct 2018 07:51:02 -0700 (PDT)
Received: from ?IPv6:2a04:ae08:1403:ff00:d803:539d:9ecb:9546?
	([2a04:ae08:1403:ff00:d803:539d:9ecb:9546])
	by smtp.gmail.com with ESMTPSA id
	r79-v6sm2618218ljb.84.2018.10.06.07.51.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 06 Oct 2018 07:51:01 -0700 (PDT)
From: Oleksandr Kravchuk <open.source@oleksandr-kravchuk.com>
X-Google-Original-From: Oleksandr Kravchuk <dev@sashko.rv.ua>
To: Andre McCurdy <armccurdy@gmail.com>,
	Oleksandr Kravchuk <open.source@oleksandr-kravchuk.com>
References: <20181003161616.25047-1-dev@sashko.rv.ua>
	<CAJ86T=VME6YWFytZQqPwP8nbTp9U8v+d15EkxuRMjHVo9_s+yA@mail.gmail.com>
Message-ID: <915e50c8-62a1-515e-762d-fe785ff26066@sashko.rv.ua>
Date: Sat, 6 Oct 2018 16:51:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <CAJ86T=VME6YWFytZQqPwP8nbTp9U8v+d15EkxuRMjHVo9_s+yA@mail.gmail.com>
X-Mailman-Approved-At: Mon, 08 Oct 2018 00:59:55 -0700
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-gplv2] gnutls: use https mirror for SRC_URI instead of ftp
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 06 Oct 2018 14:51:04 -0000
X-Groupsio-MsgNum: 42706
Content-Type: multipart/mixed; boundary="------------194EAAEE79FF4E5633D7B34A"
Content-Language: en-US

--------------194EAAEE79FF4E5633D7B34A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

It is not. Thank you for spotting. I have resent the patch.

On 04/10/2018 19:34, Andre McCurdy wrote:
> On Wed, Oct 3, 2018 at 9:16 AM, Oleksandr Kravchuk
> <open.source@oleksandr-kravchuk.com> wrote:
>> Signed-off-by: Oleksandr Kravchuk <dev@sashko.rv.ua>
>> ---
>>  recipes-support/gnutls/gnutls.inc | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/recipes-support/gnutls/gnutls.inc b/recipes-support/gnutl=
s/gnutls.inc
>> index 4cf375f..0e2c0b7 100644
>> --- a/recipes-support/gnutls/gnutls.inc
>> +++ b/recipes-support/gnutls/gnutls.inc
>> @@ -16,7 +16,7 @@ DEPENDS_append_libc-musl =3D " argp-standalone"
>>
>>  SHRT_VER =3D "${@d.getVar('PV').split('.')[0]}.${@d.getVar('PV').spli=
t('.')[1]}"
>>
>> -SRC_URI =3D "ftp://ftp.gnutls.org/gcrypt/gnutls/v${SHRT_VER}/gnutls-$=
{PV}.tar.xz"
>> +SRC_URI =3D "https://www.gnupg.org/ftp/gcrypt/gnutls/vv${SHRT_VER}/gn=
utls-${PV}.tar.xz"
> Is the double v really required?
>
>>  inherit autotools texinfo binconfig pkgconfig gettext lib_package gtk=
-doc
>>
>> --
>> 2.17.1
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

--------------194EAAEE79FF4E5633D7B34A
Content-Type: application/pgp-keys;
 name="pEpkey.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="pEpkey.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
NmYbB6EhgztT756WzqYwh9fJTGX39ntM3mAxAxA=3D
=3DecJ1
-----END PGP PUBLIC KEY BLOCK-----

--------------194EAAEE79FF4E5633D7B34A--
