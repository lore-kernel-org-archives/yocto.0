Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.910.1587777387207580523
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Apr 2020 18:16:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uBuLRTO3;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3FB1E01A69; Fri, 24 Apr 2020 18:16:26 -0700 (PDT)
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
	*      [209.85.216.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE78AE01A63
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2020 18:16:24 -0700 (PDT)
Received: by mail-pj1-f50.google.com with SMTP id fu13so4013653pjb.5
        for <yocto@yoctoproject.org>; Fri, 24 Apr 2020 18:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:organization:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=5BnqK2t7bGB6Et73/iXo+pHL9nPDY0y5bIbK98ae8iE=;
        b=uBuLRTO3b1fMrnReQOyYLWZFP3o5wJAdRX5DBf2HFI53oKZUyd1cZVw9zebdpW5B11
         LXpL6s4LbTPZVpGDew71+FhnzocC5abekdP/SfjMnex38Us9dSswnOzbSn2g9Gt1m9uV
         CzWDmSzQotW+wHVjVHKSC4kDKBLzLMrehnJoSvDOhF+z86lyq68oLa9iW+VPQyjlOsV6
         TCjncAHRT5d53qAQEPxZVH0648utpvbvO2ke3x/43D+FuMxza0gHfb1fV/KYYz2Rm5+k
         gSx3bqwyqazH9XT3Bw8f7o8TKz1dZ4mSC3zbMQ1njBdGlOwPGDpD2i8es5/WaXBJDMg9
         cvGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to;
        bh=5BnqK2t7bGB6Et73/iXo+pHL9nPDY0y5bIbK98ae8iE=;
        b=BxFJtluHSecnJoMtOghEEMkKA1gM3Wd9KIu5kX1TAyaFouIXiOkgHp87rsmtpHrPHN
         v2RvNduj93WGbeaSCbrptR8Lhm1ilMDfU6si5akWZmm7t1tvpwaccVEss4QVpv1SsSoh
         sBezpa8dHWr5dIRufSbJwjuZPcRNR1/Mh9wIHqFZXjWXY0HJxF55TlXgq0oXP47q0OVg
         fCcBcJYiEfMCScC5H32LRAscF1QVVQtIQmTznhT7oFPKeSa1bEdcmRI69s87zMbp8Gwz
         Y2etdowInBVgBiBQKHSytmb7svxgm8czDlIO2+zrlfn3xE1HWPbX3W22SkxFKmnTby83
         S8gQ==
X-Gm-Message-State: AGi0PuY3skfjpyaHrzL+ZVfGHRmNR4UXbQWvndtLBrp8MVniClWLUROv
	wqrEhsTHd4j5tV3ARVwzogW3ApdMTV0=
X-Google-Smtp-Source: APiQypLB1gY7p6th1xWRbZHZwASahIN9G+dpBB08NpaZ+3gkOssEbwdoAU4+v96tA8BOlOWKh1fwiQ==
X-Received: by 2002:a17:90a:6403:: with SMTP id g3mr8551310pjj.99.1587777383276;
        Fri, 24 Apr 2020 18:16:23 -0700 (PDT)
Received: from ?IPv6:2601:646:9200:4e0::ac76? ([2601:646:9200:4e0::ac76])
        by smtp.gmail.com with ESMTPSA id w125sm6002360pgw.22.2020.04.24.18.16.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Apr 2020 18:16:22 -0700 (PDT)
Subject: Re: [yocto] inconsistencies with selecting systemd as init manager?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
 Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
References: <alpine.LFD.2.21.2004230713330.10937@localhost.localdomain>
 <CAP71WjxZp+b_YWAUSWvoJqFo9rcze_66z=+oQOwdHLsaE_-6SA@mail.gmail.com>
 <alpine.LFD.2.21.2004230812410.14835@localhost.localdomain>
From: "Khem Raj" <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 mQGiBEqXaJERBACUvFofpD3FsxD9675wcPv+rzguIfsRWilrrpSZ61JHjLHwkUnmDLpLSdfv
 Zw2ZDXeaQbGU2thctxXTyYf6N1fY6P5Tww6mWKInuGU3yAv8Mg5p+Xd8itwOoVR41DOBkftV
 miO2G7FtXsnqonB6F43a2yvc+h9OwPRVxAFss5mSmwCglSXPWndN1Ka4M/hzt7g+FmeyEssD
 /1V/G8lLeAS9gQCNjS7jch+uHMFJuWgHzMXdw99e1ywlIkvXN77NPkW+FLVxKxNAHyWZZ3wO
 4BQ9/GVR2y0s/rrF1lQSIcfnUmzZrh/Bh0b1wVOSLhl0Vx4MI0/MbdL3xx17JAWy+s67evuK
 ER4Y8ycTq3gbIGJtVrIJjWPCzWF8BACAA2u52uDmJ2pS8SIhEW0jMK/zYQ5Od9l9fM6BmS6Q
 jnIlzzcuMvRdZn2IrnuE/YoC8yyzBK3mN+MVc2jWN9rfSg6ml7r14Zjem9Ee0O5Ca7Jg3ZvN
 6g3vSlrRJqKgsnq3vdatDF+5rd0NJ7ZKUy6x2i1Pavgtv3qaAgPGa1qQdLQdS2hlbSBSYWog
 PHJhai5raGVtQGdtYWlsLmNvbT6IYAQTEQIAIAUCSpdokQIbAwYLCQgHAwIEFQIIAwQWAgMB
 Ah4BAheAAAoJELsFM1WRnTMUhOMAoJJleT2hdT7uw9Fyn26+w+/K4i0gAJ9wRt36PqfjNe90
 4evWolFf5cMmp7kEDQRKl2iREBAAjjbVQ55RAouAe0l0nPsKkWdtMuUHwBdLBkpF3rGM/f0u
 DlPaQzYGLjKT7xDoyRh8x2tFwWvOfiqrZFArxX8e4fsACmJdL0kahTbxC/8SmSWVHXi10JUX
 2fmZ5ufzlXAnl0ivXkWnrUfLX9DdNwL6DR4DeFK9qBFqtHmK5TQXMu87G+MJwgNJIwCKQX4i
 I9YJILMuqInVwaxg5/ALdKfE3QPmtadnKb/cuUm4gICdaJeyQfI6qdYLcSuyBWCbAEMM1wmh
 RAhw5RgzMRRIquZlxPt7lZkXXjals7M6juh87VGRoIJwYoQi97Q1ZHzPBo3AlMPe3haNihkd
 6D3lwvdB4pmjYG4I6bHCgtEhEss3hHvsBaqV9jV1dMUSs95ZxQtT9qtkOxydHgOlwRX3CG+r
 584J/s4vWm+iPQtLvDY1u4UFwOLjCOFe709BcLJdPR2GQiOPoyZF7lVY8nu/dtTrAEuiZFk4
 HD7afUlcr/IKwPWID1V9kRLoDlzdbNuoUy/XfVErK8wcoiGowerEMed4ajNoKxCxBweIkjxq
 KMt8CKgp30n9UxljglEcgf+/UumwSHxqZcCPVbWXtdhy/hwMk27shOdUvaiynep8OsVGqAzS
 seL4qZIJ5XzCcyV4KJCmwmdQzt5+ZylcVmeq6R4ob+d8JIDU0ELqdwxwIDiTj0cAAwUP/inN
 3/r8IFDms4g5xafPrCw31o2jIYahkIfN0WVPWI5K/hFCo2PczPStzDcTsZx7mN2qwpGOe3Lz
 9/0krZeksrz1ZIHNi5LTasuzXyFJbO05Y+eiHgV1rV7VVEipOrpV1496w112Y/0SZ/FhOfEm
 EA1TeDejy2sZiTOUW4gyzewbHMpE07d27F2qM2NfMMhKQCcvzr+N0VJmAOeATEivxPUHn+Dp
 X/NniBWOcWv++wHlxv0Xr63gsRKSt62eFKGjgF50hHD5lM31ziqycc42sbgcqAZ+rYFlb9k0
 3JcKyq1XdVUSm+xcC2DMSstTI6iqFMGo6FnEO+gyE5VdceajbuZ1GOmJXJUCyYIdGuvCyIoK
 jTE9lcIYSEEDZQej5xdiGk9eUz0MPmZEUwSR/nLmmwjHDJi0prVvs9xqe5bvS3ddPAqepvZ5
 UrisgtWD+TDI8ktkt5VLh3XsG9FuXUVAaahOvFMGiZtsioDXTorL4AfMeuA9f+yLwrCVQO3x
 mH/WA0Tgf/5gYB3t9KoHPjLBNruVOuQbAjubi0pvRAOUcMdBfmPofksK4uWS1zGtPWS7Uu1c
 suq7Hnb7vszlFYdbzeqjY81LSyxA0kcpgJxdLv9o7UuCEnHDZLPbHdQ83PmyyBKSI31AKe7R
 XlQNlB5grwH9o6uNtPbV7q/uRqmKq5EiiEkEGBECAAkFAkqXaJECGwwACgkQuwUzVZGdMxR1
 VACcCkdaO3rb8/gRprldmAH6eR49eo4AnjD3h3aTwv/1bl+BAz1twmZmz8ul
Organization: HIMVIS LLC
Message-ID: <30f66da0-ab1b-02d7-025e-97adb24f2543@gmail.com>
Date: Fri, 24 Apr 2020 18:16:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.21.2004230812410.14835@localhost.localdomain>
X-Groupsio-MsgNum: 49229
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="82hPQk3UsUVHEzSTMNbCDdkz5vGE8L2ZN"

--82hPQk3UsUVHEzSTMNbCDdkz5vGE8L2ZN
Content-Type: multipart/mixed; boundary="WtqLwhBokboDPBfr2s8NDsAvlIYr8rafv";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
 Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <30f66da0-ab1b-02d7-025e-97adb24f2543@gmail.com>
Subject: Re: [yocto] inconsistencies with selecting systemd as init manager?
References: <alpine.LFD.2.21.2004230713330.10937@localhost.localdomain>
 <CAP71WjxZp+b_YWAUSWvoJqFo9rcze_66z=+oQOwdHLsaE_-6SA@mail.gmail.com>
 <alpine.LFD.2.21.2004230812410.14835@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.2004230812410.14835@localhost.localdomain>

--WtqLwhBokboDPBfr2s8NDsAvlIYr8rafv
Content-Type: text/plain; charset=iso-8859-15
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 4/23/20 5:14 AM, Robert P. J. Day wrote:
> On Thu, 23 Apr 2020, Nicolas Dechesne wrote:
>=20
>>
>>
>> On Thu, Apr 23, 2020 at 1:18 PM Robert P. J. Day <rpjday@crashcourse.ca=
> wrote:
>>
>>       =A0 just noticed that, given that since YP 3.0 one could select s=
ystemd
>>       as the init manager via the single variable INIT_MANAGER, which p=
ulled
>>       in init-manager-systemd.inc:
>>
>>       # Use systemd for system initialization
>>       DISTRO_FEATURES_append =3D " systemd"
>>       DISTRO_FEATURES_BACKFILL_CONSIDERED_append =3D " sysvinit"
>>       VIRTUAL-RUNTIME_init_manager ??=3D "systemd"
>>       VIRTUAL-RUNTIME_initscripts ??=3D "systemd-compat-units"
>>       VIRTUAL-RUNTIME_login_manager ??=3D "shadow-base"
>>
>>
>> INIT_MANAGER was added in 3.0, see:
>> https://git.openembedded.org/openembedded-core/commit/?id=3D8d0b4704a52=
6a48cd5e67df6
>> 1b613424bbbdccde
>=20
>   i know, that's what i mentioned above.
>=20
>>       =A0 this doesn't quite seem to match this snippet from
>>       meta/lib/oeqa/selftest/cases/imagefeatures.py:
>>
>>       # Switch to systemd
>>       DISTRO_FEATURES +=3D "systemd"
>>       VIRTUAL-RUNTIME_init_manager =3D "systemd"
>>       VIRTUAL-RUNTIME_initscripts =3D ""
>>       VIRTUAL-RUNTIME_syslog =3D ""
>>       VIRTUAL-RUNTIME_login_manager =3D "shadow-base"
>>       DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
>>
>>
>> this is the 'old' (pre 3.0) method, and it can (and should) be
>> replaced with INIT_MANAGER, i believe.
>=20
>   i suspected as much, i just wanted to point out that those two
> snippets are not *exactly* equivalent so someone should make sure that
> INIT_MANAGER usage is precisely defined.

perhaps imagefeatures.py should be updated to sync with INIT_MANAGER
settings.

>=20
> rday
>=20
>=20
>=20
>=20


--WtqLwhBokboDPBfr2s8NDsAvlIYr8rafv--

--82hPQk3UsUVHEzSTMNbCDdkz5vGE8L2ZN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCXqOPYQAKCRC7BTNVkZ0z
FEsBAJwMwk77m6I9m25ayi+XwDJgTZBwbACfffTZ3qv0cuTobKpOSYYFANLgcVw=
=vziX
-----END PGP SIGNATURE-----

--82hPQk3UsUVHEzSTMNbCDdkz5vGE8L2ZN--
