Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.550.1592526482366129915
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Jun 2020 17:28:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=I7WwL7Ir;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A630E01D33; Thu, 18 Jun 2020 17:28:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38866E01D2F
	for <yocto@yoctoproject.org>; Thu, 18 Jun 2020 17:28:00 -0700 (PDT)
Received: by mail-pg1-f177.google.com with SMTP id u128so3697462pgu.13
        for <yocto@yoctoproject.org>; Thu, 18 Jun 2020 17:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:references:from:autocrypt:organization:subject:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=lj+m/R0bDvX+aXOv9gP9x0VIO4YM6KE3XvIcSyVMfos=;
        b=I7WwL7IrsJQlDM3hi/+g7SCDZbKLoSLcUeQoRUhXun4n737IBivmImoag8SetJsiTt
         KDhumEqzgfD1ilpBcaUb3/5CyuyHd5nHrlRmKyuiIHKmVRA4q+4KYHA2OamePELoAg6p
         gIr0nnOESB6fs931imWkb01U+EGta1dtqbv9RZqe+tKTrSJPBzciWGgTxQDrgB/snj5H
         8wjWU4HlotMqNPs7VKKDSsLbUp8xTgo+X/TmyN9g8Q33opFYPyxiELB4b6GlTPmZwnKC
         1A8+3uMKSa9yh5VDsZbpV8UHWEH8IOYvotESEMlQmE0BK6fs9CjqxUBpV5Ll+ifBVg7O
         tefQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:references:from:autocrypt:organization
         :subject:message-id:date:user-agent:mime-version:in-reply-to;
        bh=lj+m/R0bDvX+aXOv9gP9x0VIO4YM6KE3XvIcSyVMfos=;
        b=FYTsS2fj8Ur308jbgjX8jCeCYiODx9Z+gpHVH8X+fSXgAj3Sl4aGesM0Wq2bbDfgb2
         bOXALPOH/xwwc9b+w4vSHgnl089PbkgLXocFxeBfXL98BFHKlPzPBUCLh2mc3QzUyVtW
         7PiAjwRX/oL8K3uCprEJEwaxFDkE1KfnTMhK3UTe32T2CcmELooZud8a44Kb5EULxkSw
         Lk+qJlKXXmbHGpr3dMcggojiCwfEvxfhNFs3KTQO/VMxa29d/5bzdsfBibf15xtcq1j5
         N+E+pdW5YgrS4HwB5Z/1aTamOvFdY9Is54g2noP5SKPck8+ClIcFfHaNvVwVsydrBli/
         biZg==
X-Gm-Message-State: AOAM530/g4Oplr1iaxzoCtR1Q9MgIroR322i5kqNHAFixHRyRRpHVvLM
	zhd+mIWSd6wh8vIyuqkooxI=
X-Google-Smtp-Source: ABdhPJxBtie5Et8LnPVhVTcjxh1VSOExeGEifFWkuT3hovwu+BDB5BbmLDdT+2/pBfePof2LQDemhw==
X-Received: by 2002:a62:1692:: with SMTP id 140mr5997018pfw.168.1592526479841;
        Thu, 18 Jun 2020 17:27:59 -0700 (PDT)
Received: from ?IPv6:2601:646:9200:4e0::804d? ([2601:646:9200:4e0::804d])
        by smtp.gmail.com with ESMTPSA id h2sm4132797pfb.175.2020.06.18.17.27.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jun 2020 17:27:59 -0700 (PDT)
To: Robert Berger <robert.berger.yocto.user@gmail.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Robert Berger <robert.berger@reliableembeddedsystems.com>
References: <439eb160-94b9-a8ce-f305-be6c486eb06d@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
Organization: HIMVIS LLC
Subject: Re: [yocto] Go toolchain in SDK
Message-ID: <55730455-4164-1268-884c-70186e46b56e@gmail.com>
Date: Thu, 18 Jun 2020 17:27:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <439eb160-94b9-a8ce-f305-be6c486eb06d@gmail.com>
X-Groupsio-MsgNum: 49682
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="n0NBHm0UqGeI2H60iJdbkZkVoWbLXoRDx"

--n0NBHm0UqGeI2H60iJdbkZkVoWbLXoRDx
Content-Type: multipart/mixed; boundary="RqrDWEz5ED2QPElBHuh63CUbfPIjrRBzM";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Robert Berger <robert.berger.yocto.user@gmail.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Robert Berger <robert.berger@reliableembeddedsystems.com>
Message-ID: <55730455-4164-1268-884c-70186e46b56e@gmail.com>
Subject: Re: [yocto] Go toolchain in SDK
References: <439eb160-94b9-a8ce-f305-be6c486eb06d@gmail.com>
In-Reply-To: <439eb160-94b9-a8ce-f305-be6c486eb06d@gmail.com>

--RqrDWEz5ED2QPElBHuh63CUbfPIjrRBzM
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 6/16/20 1:55 PM, Robert Berger wrote:
> Hi,
>=20
> What is the "proper" way to add the Go toolchain to an SDK nowadays
> (dunfell)?
>=20

I dont think there is sample image target for image based SDKs

> I saw there is in poky:
>=20
> ./meta/recipes-core/meta/meta-go-toolchain.bb
>=20
> but I am not quite sure how to build an SDK with meta-go-toolchain
> included.

that is more like a meta-toolchain target

>=20
> so I added something like that to local.conf which seems to work for the
> "classic" SDK:
>=20
> # --> golang stuff
> # attempt to add golang to SDK
> TOOLCHAIN_HOST_TASK_append =3D " \
> =C2=A0=C2=A0=C2=A0 packagegroup-go-cross-canadian-${MACHINE} \
> "
>=20
> TOOLCHAIN_TARGET_TASK_append =3D " \
> =C2=A0=C2=A0=C2=A0 ${@multilib_pkg_extend(d, 'packagegroup-go-sdk-target=
')} \
> "
> # <-- golang stuff
>=20
> bitbake core-image-sato-sdk -c populate_sdk
>=20
> and currently also for:
> bitbake core-image-sato-sdk -c populate_sdk_ext
>=20
> I don't think that's the way it was intended.
>=20
> Can you please enlighten me?

what you did is roughly what should be needed. Maybe you might want
to create a -dev image

perhaps adding nativesdk-go to TOOLCHAIN_HOST_TASK might get everything
you need

>=20
> Regards,
>=20
> Robert
>=20
>=20
>=20


--RqrDWEz5ED2QPElBHuh63CUbfPIjrRBzM--

--n0NBHm0UqGeI2H60iJdbkZkVoWbLXoRDx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCXuwGigAKCRC7BTNVkZ0z
FFSWAJ0Xba+5XhnHYuEjU6OrmYE97/LAVQCfSDZBFtSzn0Zly8yJPh3D7khGjf0=
=qTaF
-----END PGP SIGNATURE-----

--n0NBHm0UqGeI2H60iJdbkZkVoWbLXoRDx--
