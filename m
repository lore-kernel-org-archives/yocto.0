Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.10041.1588443738877511566
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 May 2020 11:22:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=hZDIq5Uy;
 spf=neutral (domain: ibeeto.com, ip: 140.211.169.56, mailfrom: rudolf.streif@ibeeto.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 762DBE01ACD; Sat,  2 May 2020 11:22:18 -0700 (PDT)
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
	*      [209.85.216.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8CEEE01ACB
	for <yocto@yoctoproject.org>; Sat,  2 May 2020 11:22:16 -0700 (PDT)
Received: by mail-pj1-f46.google.com with SMTP id y6so1622502pjc.4
        for <yocto@yoctoproject.org>; Sat, 02 May 2020 11:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=to:from:subject:autocrypt:message-id:date:user-agent:mime-version;
        bh=4wdgiKf3naDPufKr1QQngxJtFiwztylflQtC+1biV70=;
        b=hZDIq5Uy7vbPmcLE4CKJdKqh6vT3GVUhWsme5Gpbn9Vj1kGCqYGLlgYkhPeJ4j4J4R
         nCFRveExgIOIhEe2bdih870yMKPLfY55UVBXgARn/3vzUH3E8o70mEcIAYeALRXqVsld
         9VK2HaGNDPM2NfCZJKNvOdK5x93v6/7ee2Ya2+ix5htpLNcNCoIDPxh011pWWhvHyPxp
         xbowxG34BjU59DMpvKp9L8XHTg4NdFnX4fCZLBV0clM/MmPFNn186kN+O9MnJ/j/se8R
         Ct0Ou44QxxotWX2oFiRYgz/yhy8kv0wVaWoeNPa+9eeQiSQbqvIp+0R/1O77b0CoNUk8
         rXig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:autocrypt:message-id:date
         :user-agent:mime-version;
        bh=4wdgiKf3naDPufKr1QQngxJtFiwztylflQtC+1biV70=;
        b=YQbVpQrAs6hiXwTnLw/hOWosffz9aOsyGUCt+b4B99HtD7faES32mMSR8Fy7upK4aD
         STvGt+7mqDnLALqF2yGhRQxxhbnH4aVaeWb2/gKiBlzvo8XzjOFY04YLwHJt75Vk9/S/
         ZFtSvKqDEXJdCVC1+9EpcezQmdru5w7B4urxzpR/LZo47LvHvExufanVm+xlhosdwAov
         djsB2ncrwxaGdsH6dOl7imzOC+HJAcetzvqGFszMSRiwmJNmulmwmURf1zA3DOyryMrz
         rIOO2+y1o4n2BCp4eN1C+zz9gExEOYP7mE5DYCM25Dv6p2BXUYsad1THcKoO0bFEPlKp
         8Wog==
X-Gm-Message-State: AGi0PubpBhgQtoNxWjZEhv0Ipm6Ffp4/qFqVF1lqHVgOCjQ0B3xfqiPK
	8VvDccBQrkR1NWdrjZrz/2yREwQYlPxcJg==
X-Google-Smtp-Source: APiQypLKWvATjU31cOkBDtCBZrdz/7Czhn2W9TBD34QBZgzfRIxS2W36u4irKptUxi2QMCKtY/piaA==
X-Received: by 2002:a17:90a:24a7:: with SMTP id i36mr7360562pje.32.1588443736087;
        Sat, 02 May 2020 11:22:16 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id u5sm5010514pfu.198.2020.05.02.11.22.14
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 May 2020 11:22:14 -0700 (PDT)
To: Yocto list discussion <yocto@yoctoproject.org>
From: "Rudolf J Streif" <rudolf.streif@ibeeto.com>
Subject: [WIC] Multiple WKS Files
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
Message-ID: <aaffec18-b081-bcc4-4508-9cd3f7c24c03@ibeeto.com>
Date: Sat, 2 May 2020 11:22:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
X-Groupsio-MsgNum: 49311
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="W1Wamn1l8HcaR0Xx5jOukz7wZetCNbNnR"

--W1Wamn1l8HcaR0Xx5jOukz7wZetCNbNnR
Content-Type: multipart/mixed; boundary="nWIxBHUx08Zozfg3UdHPcnGP9sW6YcVz9"

--nWIxBHUx08Zozfg3UdHPcnGP9sW6YcVz9
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

eMMC devices commonly have three hardware partitions: two boot
partitions and a user partition. I was looking for a convenient way to
have wic build an image for the boot partition and one for the user
partition. However, that does not seem to be possible right out of the
box. The variable WKS_FILE only accepts one file and not a list. The
class image_types_wic.bbclass uses WKS_FILES internally but that seems
to be a search list and the code only builds the file it finds first.

Is my understanding correct?

Any smart ideas to make this work?

Thanks,
Rudi





--nWIxBHUx08Zozfg3UdHPcnGP9sW6YcVz9--

--W1Wamn1l8HcaR0Xx5jOukz7wZetCNbNnR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl6tulUACgkQjYyoKScz
m3X2yQf9HhhR7Bz9M4Qh0ZA/MonsuK/Fb3pM+GsEyW5J9bT6V3sZH9QG33wf7lgx
oIrz0CC3jD3lxOy32c8R/rc3s751K+lvlsKXIxIuUHF+VxpZtQgYPVE6eIV6R8tY
4AHsRRczMo6cLwPcoBEB9Ng+1B1PDYNrRkz/SPOePhc8hzceuTsJIl+TOVkLCTxg
kBNcsGv46/rmWQ2G5z34IFwkQ3FGyfQwgS4D1KE3zgQ7fUpE+er9HiNSzweQcSoh
o8l3GwrUng2lfycCDVZOVhyf1TriPv9jvAVNuflpa2cteRglM6t9EkjDDBYRR+Eq
BwwXHUucR/Rm5RErw/6S2iDsqFv4Wg==
=DFR0
-----END PGP SIGNATURE-----

--W1Wamn1l8HcaR0Xx5jOukz7wZetCNbNnR--
