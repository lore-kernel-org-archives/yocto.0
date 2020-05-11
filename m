Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web11.3790.1589238080996287460
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 May 2020 16:01:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ohTHM0da;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id t16so4543277plo.7
        for <yocto@lists.yoctoproject.org>; Mon, 11 May 2020 16:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:organization:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=SHx1vg4yr8aXZ0hzgyRABJ1nNyuSy4mWja65DuicJic=;
        b=ohTHM0da7Okzk/ITEXODQmzVPMu4Ej09n8YX2I6jdCK9mju5eL7MBhBJnINk9WPSwp
         1TUYRkHhmq/bup8KySPndTs5y78lZpVjTNEroovsVPPeHuf7T9i6cSdZWf7PQoridkHy
         IRhEoPpZREY6como3UxxHi42aqyHwTm4MtFv9JSbKUoa4JJxPJMLq2JhbMQV2NhdaRiY
         wvuSZJ5JqHf7l3mGQwfTFIkuCndHath3LuEd+3V9HHeH1eP5Db3TlGhuIjEO6S2ZFQvi
         VJh+HzYGQxTKHmN4h/zvYs1T9+XU+inI944ZP5cWEWDIQkWvZa1CxvRP7Vq3ksgUCaMg
         j/Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to;
        bh=SHx1vg4yr8aXZ0hzgyRABJ1nNyuSy4mWja65DuicJic=;
        b=ugR9IgeqfyNl7WZKokhRwzIQDCxveSy0v9/s8UWUmKeQMlAuLlAI9hWOjZ0phgvBGf
         anTA7JBj/bru3j1CDW69KCtvI08X9nWXbgf1s0rt6mBqqfuaApn+ZD85/vOBaGt/VvYN
         uoRrAPLLK2FzHQABSpH58nPNE6kUApGkchXQ7qp7epDAt3yfPIvbgY5/KPYNtJCS4jAG
         nU2vUFne6dDgecjToLB1mM4rIcqxs5g/OGh3ZXs42LPLyBT5JOrRrUFk4kCtcCDDbbB2
         4Zz6JZHiDzA/mnGhOCg2KdjIUIRrPipQ8Dmzzerfih+sD9dc7DZELjL5O85t1iuizNL0
         Tx3g==
X-Gm-Message-State: AGi0PuZIxO1HqlXa0wC8GrfP+OLyX7AS5o98r6dWDYSELsrXIe3FfO0e
	MzXeh/hFrO/i52MCY6uFiTAZO00CBqE=
X-Google-Smtp-Source: APiQypL0HXdbTk4uFrxAz+8UNgb3GdtedlJG3pWyGJBDNz5fMRtFWVu3vUK3z0B80K+yYKwS6Gx3Kg==
X-Received: by 2002:a17:90a:cc9:: with SMTP id 9mr22874529pjt.16.1589238079997;
        Mon, 11 May 2020 16:01:19 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::4cf4? ([2601:646:9200:4e0::4cf4])
        by smtp.gmail.com with ESMTPSA id o6sm10074372pfp.172.2020.05.11.16.01.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 16:01:19 -0700 (PDT)
Subject: Re: [yocto] meta-anaconda Python AttributeError: "str" object has no attribute 'decode'
To: yocto@lists.yoctoproject.org
References: <7241cad2-50aa-018c-7dcb-893b897eac3b@optimcloud.com>
From: "Khem Raj" <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
Organization: HIMVIS LLC
Message-ID: <0dd20ef5-276f-476a-f823-850a96ec1961@gmail.com>
Date: Mon, 11 May 2020 16:01:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <7241cad2-50aa-018c-7dcb-893b897eac3b@optimcloud.com>
X-Groupsio-MsgNum: 49370
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="GMsnr4wrX6oXxJjoTbQjPO8xt3dlAJqG9"

--GMsnr4wrX6oXxJjoTbQjPO8xt3dlAJqG9
Content-Type: multipart/mixed; boundary="uAXCZgVKAxwDHyT21YJz4MEX6rD0OfhrZ";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Message-ID: <0dd20ef5-276f-476a-f823-850a96ec1961@gmail.com>
Subject: Re: [yocto] meta-anaconda Python AttributeError: "str" object has no
 attribute 'decode'
References: <7241cad2-50aa-018c-7dcb-893b897eac3b@optimcloud.com>
In-Reply-To: <7241cad2-50aa-018c-7dcb-893b897eac3b@optimcloud.com>

--uAXCZgVKAxwDHyT21YJz4MEX6rD0OfhrZ
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 5/10/20 2:58 AM, Yocto wrote:
> using meta-anaconda for an iso installer during the grub process python
> exists with
>=20
> Python AttributeError: "str" object has no attribute 'decode'
>

this seems to be perhaps python version mismatch between 2 and 3


> Screen shots attached. seem to have an issue with unicode ....
>=20


>=20
>=20
>=20
>=20


--uAXCZgVKAxwDHyT21YJz4MEX6rD0OfhrZ--

--GMsnr4wrX6oXxJjoTbQjPO8xt3dlAJqG9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCXrnZOQAKCRC7BTNVkZ0z
FIqcAJ9WKEulB07Ysu/g1emdc2+96al6qgCggZXlb2LGVCS/w39PeZfSjFJ6BhA=
=Ol7s
-----END PGP SIGNATURE-----

--GMsnr4wrX6oXxJjoTbQjPO8xt3dlAJqG9--
