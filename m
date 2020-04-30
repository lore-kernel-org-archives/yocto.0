Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1269.1588268374861163361
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 10:39:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=LOTB0Vt9;
 spf=neutral (domain: ibeeto.com, ip: 140.211.169.56, mailfrom: rudolf.streif@ibeeto.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69C57E01AB5; Thu, 30 Apr 2020 10:39:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5339E01AB3
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2020 10:39:33 -0700 (PDT)
Received: by mail-pl1-f170.google.com with SMTP id t7so2509035plr.0
        for <yocto@yoctoproject.org>; Thu, 30 Apr 2020 10:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=to:from:subject:autocrypt:message-id:date:user-agent:mime-version;
        bh=wefH61ZRiTF7NtEGmj8tA5GH5ma3nlAYXEquDUJIJ9M=;
        b=LOTB0Vt9KXYnWRz1ecTS60U6F6YOAYPVaAVyaoLI2gK8fElDd9xMlYSZL7ffiBo5JO
         P7975qCZHkaRAy72EqplM49A+8AjY1mzEQO/uotP8azIqL48Pi2lk0XxWREo9aUX97Ub
         uH2c/EPi20hNC4xhnulRVV/Z9dsZgVPXXwCKJORTQx4qkieBni+bU8Tdri1yjgasBy6e
         +EIt1ntZVgnTZ4rGXm+LMn34GcLjTFASTRmXOOs4uUYCYmrduIzH3GvMQNXD9eOqgNPr
         YbdgMUrCrneEfqjliDeqqXHwumgs4DO6cSPRAMLeLEzDINO1jNlDTCgAtsPkUj7+7c/j
         amhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:autocrypt:message-id:date
         :user-agent:mime-version;
        bh=wefH61ZRiTF7NtEGmj8tA5GH5ma3nlAYXEquDUJIJ9M=;
        b=VBrOKyuw7Mh4OKwLHvWg/9+UTSrb3nZujTMTt748K2kDVLCLX9PawewLUzsRT3D3Os
         zlIQqpiTL7u4YEDC1/1WBwk0TyJHhWcTevGuyf+/VsWwIMtJH53Z5fBHpTi14A4aB1YB
         cHs+SNNt3JoKz/Ux3D8pkKFwJj+eeUfTzoUPrzoOKhY9iwLIWm4RiwClE9c71gNMCPLI
         KimV2U2VCsWuN5dTjtMljLOdjD04qWh4zseEATiqk0mqA6Xg8AutwipyT77doztthdJi
         Ydctp7e2iLuUj1JgZo/Mb0q86XEJurHxpZCYeevoCnjKCeJdLt/Yr774WNM78uaDatDN
         KFTQ==
X-Gm-Message-State: AGi0Pub/Uf6un+6l9Xeh4o81ADmJxXznuRvagZCm3JdT8/WyyMYllQrK
	bpuweXUztT4S3tskyoEA8e2ofNFqtjwxjQ==
X-Google-Smtp-Source: APiQypLtWpZdSsXeCvVJxt3dJ7tqNqsJh0eaQBpFrwwxWAZETRFtcqO3tmISwocngyNqQXlIzVVIuQ==
X-Received: by 2002:a17:902:347:: with SMTP id 65mr93470pld.21.1588268372715;
        Thu, 30 Apr 2020 10:39:32 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id 127sm343189pfz.128.2020.04.30.10.39.31
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2020 10:39:31 -0700 (PDT)
To: Yocto list discussion <yocto@yoctoproject.org>
From: "Rudolf J Streif" <rudolf.streif@ibeeto.com>
Subject: [WIC] Grow last partition up to disk size
Autocrypt: addr=rudolf.streif@ibeeto.com; keydata=
 mQENBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
 Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
 /Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
 cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
 3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
 AAG0KlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPokBNwQTAQgA
 IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
 3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
 txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
 lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
 Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
 zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvuQENBFhQFAQBCADXoLKCuF48
 5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
 RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
 w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
 svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
 tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAGJAR8EGAEIAAkFAlhQFAQC
 GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
 s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
 fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
 Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
 P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
 ROZj4g==
Message-ID: <504407a1-379f-dc70-7745-c42624df7d8c@ibeeto.com>
Date: Thu, 30 Apr 2020 10:39:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
X-Groupsio-MsgNum: 49280
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="CmHhGmur8QPkjkQgzW53EVQq0eSnNJ0Dr"

--CmHhGmur8QPkjkQgzW53EVQq0eSnNJ0Dr
Content-Type: multipart/mixed; boundary="l8T95tPDP9lp5EH9h2keOxdjhZgmdyrlh"

--l8T95tPDP9lp5EH9h2keOxdjhZgmdyrlh
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

I was looking for a way in a wks file to have wic grow the last
partition to fill up the remainder of the disk. Of course wic does not
know how large the disk is but that could be a parameter.

The alternative way is to use fixed-size and do the math manually but
that would not allow wic to grow a partition based on content.

:rjs



--l8T95tPDP9lp5EH9h2keOxdjhZgmdyrlh--

--CmHhGmur8QPkjkQgzW53EVQq0eSnNJ0Dr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl6rDVIACgkQjYyoKScz
m3UTFQf8CdJVDBa2rZR6gJSB0Xa6oK83ei8Kp6IesIld2VYJUgTFhPDsDfHZdZ+S
FEOAGbqD7ySgOGwsmTU7Xohf1VRcYdThhVJ0Emp4CyMOszXTJJ6SXU1iKi/j4W3L
q6fOn4l5DqiAuA8auXex/lEm6EMgxLoSXmCjovxaqjNcuwyRb7XAozf3Pxv1eG1q
geh70rqyzoyQ21aI8pLRr/4Ijd0ZQgjz2r5H1IDEzz7c4cv5EAoBrA888J/s0pco
O5sQoIUnJQbsbl5qbKYRwPiEHZW3FYSbg9q/AQxpxX4VphoB1p8pNnRuNwketIhf
vJmQd9iEi9aQJkrj5zCGc1hoqA6dPw==
=zBZy
-----END PGP SIGNATURE-----

--CmHhGmur8QPkjkQgzW53EVQq0eSnNJ0Dr--
