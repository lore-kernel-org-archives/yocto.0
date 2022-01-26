Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B78FC2BA4C
	for <webhook@archiver.kernel.org>; Wed, 26 Jan 2022 18:42:36 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
 [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web11.17389.1643222555533799355
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 10:42:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112
 header.b=Z9qPugD+;
 spf=neutral (domain: ibeeto.com, ip: 209.85.215.172,
 mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pg1-f172.google.com with SMTP id s16so108920pgs.13
        for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 10:42:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=gMU5iVu4WzVNEYtMw3yUmRHqoLsN8j+9qffxLxe6gL4=;
        b=Z9qPugD+OteUrb3j9TZIRsvdepPJPWVerDwehG9EsBbam34j9huyeQ0jPCqzBX1n/D
         Db5AmNnwDGoFPmybG7DE5XC8IJtjKMCGcgKFUpoERuyj/Z1kucF53KDRuuT4YsktcVns
         vIEDTq8QzqHJ9Z1e1nHBEcnQf+o8BILVimErIua5hTewe8gwLNO6Zi0JTAfOcLSohau/
         Cu2poYz+aOoJzFZH39lDWfIecHK6pVVWz5PsNwY26d0pkLsaUVml442AxBpqmAbLURsa
         mjbh32T5ox47Q23CL2GVuHPG641jBmV+osyOeZ6vpoCymFU/ndKb/L7tN3ZA6RvYqthK
         EH9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=gMU5iVu4WzVNEYtMw3yUmRHqoLsN8j+9qffxLxe6gL4=;
        b=pS9vqoIoGF/Zn6Jp83FTU9oy/HjNaWmSBqBGG2rGpBqjNomZMi6TzkrySgill6goen
         AgUxf6SciTwJfrtENuEv+eVIgiHzrd2TFhNWLwMikkAVAEhdSXjcK7GTD/IEai+86Jt6
         ozgAmUEh26ufa9l849ybIhym7llRoNUMs2mki+wyoy0uRBETK4OabX7cZ7LUeC0eGkC9
         bUK71e+XxMNoguydL101IbBTFldhXnH4KRpTMqOU6pFhlmeWwU69xFHjOEi5WARLR20D
         FZ3WQBhS2lTx+f1EyHiyoY0QzJe4AdCfGegV957xX6s64kZJhIARFKBtt98XvwfaRpdc
         CLFA==
X-Gm-Message-State: AOAM531QPgQvjBdTgwbdpYtcXrkd0zTIPWcSLiYZM/E74uEMJwW8JPC7
	32o7M0tiZ2pUf66voL1H9icnPdoYWJHHKDIv
X-Google-Smtp-Source: 
 ABdhPJyWd1g3VrSvsYwInOrR+zfVIOL+1Gx9iCP2SuL/1EzjgqfsGviSOvWQrHFSWXeVTLBRFKjxKg==
X-Received: by 2002:a63:b207:: with SMTP id x7mr181909pge.392.1643222554535;
        Wed, 26 Jan 2022 10:42:34 -0800 (PST)
Received: from ?IPv6:2600:8801:8d2a:a304:93dc:834e:6555:ccaa?
 ([2600:8801:8d2a:a304:93dc:834e:6555:ccaa])
        by smtp.gmail.com with ESMTPSA id
 c5sm2868776pfv.57.2022.01.26.10.42.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jan 2022 10:42:33 -0800 (PST)
Subject: Re: [yocto] linux-firmware_20211216
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
References: <46c5cd6e-0285-9f19-49b5-6ed76cb61a98@ibeeto.com>
 <CAMKF1sp8Mw6Jm_rwb+w5YbugdGB-UWcpYULYncciS8c5Hy5DbA@mail.gmail.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Autocrypt: addr=rudolf.streif@ibeeto.com; keydata=
 xsBNBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
 Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
 /Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
 cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
 3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
 AAHNKlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPsLAdwQTAQgA
 IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
 3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
 txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
 lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
 Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
 zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvzsBNBFhQFAQBCADXoLKCuF48
 5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
 RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
 w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
 svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
 tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAHCwF8EGAEIAAkFAlhQFAQC
 GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
 s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
 fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
 Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
 P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
 ROZj4g==
Message-ID: <963e89d9-a947-d32d-2fc3-645eb303dd43@ibeeto.com>
Date: Wed, 26 Jan 2022 10:42:32 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: 
 <CAMKF1sp8Mw6Jm_rwb+w5YbugdGB-UWcpYULYncciS8c5Hy5DbA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="LVLhVTWd6iKK7kjQEQq7GUJTCg7BBn7Zl"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jan 2022 18:42:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55986

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--LVLhVTWd6iKK7kjQEQq7GUJTCg7BBn7Zl
Content-Type: multipart/mixed; boundary="kelSCst9PIMA6BQZH8AOMUiV5rSLcnFKF";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Message-ID: <963e89d9-a947-d32d-2fc3-645eb303dd43@ibeeto.com>
Subject: Re: [yocto] linux-firmware_20211216
References: <46c5cd6e-0285-9f19-49b5-6ed76cb61a98@ibeeto.com>
 <CAMKF1sp8Mw6Jm_rwb+w5YbugdGB-UWcpYULYncciS8c5Hy5DbA@mail.gmail.com>
In-Reply-To: <CAMKF1sp8Mw6Jm_rwb+w5YbugdGB-UWcpYULYncciS8c5Hy5DbA@mail.gmail.com>

--kelSCst9PIMA6BQZH8AOMUiV5rSLcnFKF
Content-Type: multipart/mixed;
 boundary="------------DD26084CEF7604F4E0B49C67"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DD26084CEF7604F4E0B49C67
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 1/26/22 10:10 AM, Khem Raj wrote:
> On Wed, Jan 26, 2022 at 9:21 AM Rudolf J Streif
> <rudolf.streif@ibeeto.com> wrote:
>> I got a question about the linux-firmware-bcm4373 package. The link
>>
>> /lib/firmware/brcm/brcmfmac4373-sdio.clm_blob ->
>> ../cypress/cyfmac4373-sdio.clm_blob
>>
>> is packaged into linux-firmware and not into linux-firmware-bcm4373.
>>
>> It's essentially not included in
>>
>> FILES:${PN}-bcm4373 =3D
>> "${nonarch_base_libdir}/firmware/brcm/brcmfmac4373-sdio.bin \
>>     ${nonarch_base_libdir}/firmware/brcm/brcmfmac4373.bin \
>>     ${nonarch_base_libdir}/firmware/cypress/cyfmac4373-sdio.bin \
>> "
>>
>> which means it is automatically packaged as a "leftover" into
>> linux-firmware.
>>
>> Is there a reason for that or is it simply an oversight?
>>
> seems an oversight.
Thanks, Khem. I sent a patch to OE.
>> Thanks,
>> Rudi
>>
>> --
>> Rudolf J Streif
>> CEO/CTO ibeeto
>> +1.855.442.3386 x700
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#55982): https://lists.yoctoproject.org/g/yocto/mes=
sage/55982
>> Mute This Topic: https://lists.yoctoproject.org/mt/88701851/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gm=
ail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------DD26084CEF7604F4E0B49C67
Content-Type: application/pgp-keys;
 name="OpenPGP_0x8D8CA82927339B75.asc"
Content-Transfer-Encoding: quoted-printable
Content-Description: OpenPGP public key
Content-Disposition: attachment;
 filename="OpenPGP_0x8D8CA82927339B75.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsBNBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvDQ=
pe+
Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ/Qymy=
+7C
bh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969cQD/S9LNn=
dnK
5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM3sPiHrF+Y2HTd=
K7j
7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEBAAHNKlJ1ZG9sZiBKI=
FN0
cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPsLAdwQTAQgAIQUCWFAUBAIbAwULCQgHA=
gYV
CAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf03GsVMG6C5QOLaPx6rOgj5qexC=
H3r
fYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBktxioE384/51QTIfCmW8ZG5X0cMC5d=
38L
Fvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xllpeOfKQD3wn99w5dzXYhvajXCWwAjjpWr=
R84
ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+wXl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq=
4x5
LZhUhGYoqbYwNy9imoBkUAZkbbViNOtXzaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBh=
jVL
mLHvzsBNBFhQFAQBCADXoLKCuF485eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOm=
Tqk
3fb9+Ao6C6IliC9ZRXyAVLD/RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwR=
IFp
PBpxHRrZnDdEd5IKsy+zw6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDsp=
JSH
WMBh0OMKDeBik5wlsvtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/=
mCB
CZ+IKhBQR36vtUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAHCwF8EGAEIA=
AkF
AlhQFAQCGwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2=
LYU
pLNjs4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9M=
byE
fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8TzY=
f9m
2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/NlouvceP41ts=
C5d
axZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/ANROZj4g=3D=
=3D
=3DLHwf
-----END PGP PUBLIC KEY BLOCK-----

--------------DD26084CEF7604F4E0B49C67--

--kelSCst9PIMA6BQZH8AOMUiV5rSLcnFKF--

--LVLhVTWd6iKK7kjQEQq7GUJTCg7BBn7Zl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmHxlhgFAwAAAAAACgkQjYyoKSczm3Xb
rgf8DVPrqGnvTxYIVJpKgacpOpgmbfRaHm76vQhJhEYEf5cy/973QA7zrrvHlFvLQsMsy8lU43jj
rBJmAeFW3W/fP105di/s5ghrp3R0UJDpFNEPCvVYF9Iw7kWA2sV0SD4riTR/L/cA0LKAggp+jIUm
F2+1HBH39I2l4BMU2yHMVqrEz89MMwxAeNbg23wk54eOKGPv0lFNLl4t1HOjhvA0Yh9m2wVFHjOc
uQF2Hfuwp+wXAMxm+fxXvjOVMamh2aH7Ae9gnPwBwytASIfsCxXi1S+sx/0cgX/Iteu/A2t7tkXg
n9647QhrveWZmSlbz4SZ7sPYmz3DndctuUARjybDVg==
=gI1s
-----END PGP SIGNATURE-----

--LVLhVTWd6iKK7kjQEQq7GUJTCg7BBn7Zl--

