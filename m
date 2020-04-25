Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web12.904.1587777199200517990
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Apr 2020 18:13:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QqP93Avy;
 spf=pass (domain: gmail.com, ip: 209.85.210.174, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f174.google.com with SMTP id 18so5654327pfx.6
        for <yocto@lists.yoctoproject.org>; Fri, 24 Apr 2020 18:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:organization:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=i5T9c7FZGg4T199EEY7gj3fMuBYbrvmi5DHuddYWKpM=;
        b=QqP93AvyQ8Sg6eQuGkZg6MGvrQ5EbqfLViU1OhYR2lxGgyNj5NS0jCgowYFsLYJb2y
         4G5INQslb7X2pw9q/xD7zj02ibCSlnap4XzYE8FwuKTmLGNNCg5OuNuCpLMiGLQIdzKl
         E6w0rx6MwOFI5Ik9QaU1u4v4gYntvWYSoTzRIGnHci4k2Bhu+8zBOCsGVMwlgbMJBdjM
         LIYOr+Ta8U0RqlBtI7g0sQsd/7qcPGRZZ1APnK3OAMtjZ0OgmMSerM8aD+Ezeb1CW7gA
         1JPavWJDWeTcGMaDnYeCIw2Be3CFlbDfu2MzItX0LtyXOZFA4gZoUA5bP1NAz2tXKjTa
         XT2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to;
        bh=i5T9c7FZGg4T199EEY7gj3fMuBYbrvmi5DHuddYWKpM=;
        b=LKTuHPQBFGl+hkpBgwczLBKciTM0EO8Z8O9BEePxARHK9X7hJaBmTWd9IW9ZXMCQp4
         vK4+SjNjtKTfs/s9D4zNPG7O0A0HAq0E1iUBRU/IE1c8B1obAwue1u1Z3IsZDTazRydn
         mcF5eeO9fRU9/Wo7Yve13liJA9kVezo0W8MRUOCd+0fuF1gLQceuanWe+H9vhcBrctE3
         nU/mJvUxmUjA5VPL+d4+ULDwzR2H477PYFJA7MO7Cd+385OKMFSPes5oiEmkcpoKnyWS
         1/JgbG7iJw3Mv/0m84Ron3hfR+ISXZSPDFYuO0fft3ht8Q0KSQMiabAcM2UJyr81J0T1
         88VA==
X-Gm-Message-State: AGi0PubHyYUntt5yOT7BH732LkHuSZNEG5+Y7e1Yw6ZzhdNJxOiysi7t
	fLumIEbgHUs5Ik66cpqkfd8FTsL+rhs=
X-Google-Smtp-Source: APiQypImdKEvMY57TBzpEAMLnlAQhuicDqGBxXXDHEJrPm6J9yM/ImXSExQZER0Q5+mp+dJEt1F9Lw==
X-Received: by 2002:a63:1845:: with SMTP id 5mr7719938pgy.69.1587777198263;
        Fri, 24 Apr 2020 18:13:18 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::ac76? ([2601:646:9200:4e0::ac76])
        by smtp.gmail.com with ESMTPSA id i13sm5738993pja.40.2020.04.24.18.13.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Apr 2020 18:13:17 -0700 (PDT)
Subject: Re: [yocto] Distro testing #yocto
To: sateesh m <sateesh0457@gmail.com>, yocto@lists.yoctoproject.org
References: <ot9V.1587633979126023753.LxGx@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
Organization: HIMVIS LLC
Message-ID: <b4482ee6-fd72-9033-dff4-423a6df966d6@gmail.com>
Date: Fri, 24 Apr 2020 18:13:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <ot9V.1587633979126023753.LxGx@lists.yoctoproject.org>
X-Groupsio-MsgNum: 49228
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="fDWvt3edwwiHC4Etp2Wpd22Rqxd3k0ofr"

--fDWvt3edwwiHC4Etp2Wpd22Rqxd3k0ofr
Content-Type: multipart/mixed; boundary="5N7rgeBkJGC87qT3cUVZSOL97rN2gJcpM";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: sateesh m <sateesh0457@gmail.com>, yocto@lists.yoctoproject.org
Message-ID: <b4482ee6-fd72-9033-dff4-423a6df966d6@gmail.com>
Subject: Re: [yocto] Distro testing #yocto
References: <ot9V.1587633979126023753.LxGx@lists.yoctoproject.org>
In-Reply-To: <ot9V.1587633979126023753.LxGx@lists.yoctoproject.org>

--5N7rgeBkJGC87qT3cUVZSOL97rN2gJcpM
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 4/23/20 2:26 AM, sateesh m wrote:
> Hi Guys,
>=20
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I want to test Distro t=
esting in my yocto build image. for
> that I need setup configurations and how can i check results and where =
i
> can get results. can anybody knows please suggest me .
>=20

you can check ptest images perhaps see [1]


[1] https://wiki.yoctoproject.org/wiki/Image_tests


--5N7rgeBkJGC87qT3cUVZSOL97rN2gJcpM--

--fDWvt3edwwiHC4Etp2Wpd22Rqxd3k0ofr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCXqOOpwAKCRC7BTNVkZ0z
FNueAJ0UJ2b/9Zw33UzNECeZYcVbJNM/SQCfb7hcoVey/CYtzV18LewUitEtyQo=
=y7Ky
-----END PGP SIGNATURE-----

--fDWvt3edwwiHC4Etp2Wpd22Rqxd3k0ofr--
