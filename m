Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DC3EC43334
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 19:57:06 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web11.2086.1654631824113970919
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 12:57:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112
 header.b=rACI4zXw;
 spf=neutral (domain: ibeeto.com, ip: 209.85.214.178,
 mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pl1-f178.google.com with SMTP id i1so15709687plg.7
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 12:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=to:cc:references:from:autocrypt:subject:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=HeCyrys5vsyE4c4rFqPdfGBOay9ZygHZOYmRrCoeV4E=;
        b=rACI4zXwSDU6Qp356rCLpdbo4EP8rI4YhwqB7bj9eVg8LN41+mewC3wtGialNn6zDx
         Lr+SBN7eDmASp661uOgkqpNVVTipQVZxKoUA1I415Z4IfU0HE/AaKI6cH/naRPU7rvj4
         fMvjnwKt20ac5v2qXOCY+CG59gNj5/e+2PWT4kS1pVMeOnKtqgz+gglsEjCduEgsEgIP
         6L+QI3eAMafILlqz4zZVLFSWzTgFHIjKhk6mJag3ZzDTLuXB2JQiJmCoNtcTBKgyD925
         g+iuC1xKhuyTKBzQ5LX6OfJemBd8RqqoaplIaNrPaLeR7rVRFnWbXRtkmtLiGmS21eVL
         OZWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:cc:references:from:autocrypt:subject
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=HeCyrys5vsyE4c4rFqPdfGBOay9ZygHZOYmRrCoeV4E=;
        b=ZYpMMX21qYOEFZS3ihmaK83VvOdbpWBgStxTUicoxmA8Mm+EplPrwzuNrSjR0t2/yR
         V4UtR+IpJHPokuNfo189ajFP3aLvFKe2APqfY6dnPTJL1P3eLl0VETZsTVr5JQV/fbWQ
         uyh/RTg//4TVVgzWh75CvRW8SfJnLFwNPwaaXnanTf4RhaDS/emi0GgmHqPyRiufv2yG
         iG1T56Nk6dj1vczh0iZuh/YLP+MJMVQCCQj6N+A59p9mWVfXLvvKb0mFGe2ItqKybioI
         U98Q9cQ3Mm+119vcfcuHOho+408JzatnZdQ8w2VzmtuSwO97HQ0zLWTi2Us0YDH2+Kg3
         6AgA==
X-Gm-Message-State: AOAM532I5/QGiT8ZwuLpsMMIhniuGTo1/VKQf0ooOu0Wn66HF+Fzlxr3
	/nrebXA6UVXfHIaoK4Vx/U8cVnUMDSaSjiBh
X-Google-Smtp-Source: 
 ABdhPJz2PD7WqHdDL2IbasC45eSk5zM+UDA4/wkLoflrdobgP+n4XWJycNJsQmSekwp3CsrLrcEX2A==
X-Received: by 2002:a17:90b:350b:b0:1e8:46b9:5bc5 with SMTP id
 ls11-20020a17090b350b00b001e846b95bc5mr23305670pjb.100.1654631822921;
        Tue, 07 Jun 2022 12:57:02 -0700 (PDT)
Received: from ?IPv6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89?
 ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id
 q11-20020a170902788b00b0015e8d4eb2ddsm9546991pll.295.2022.06.07.12.57.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 12:57:01 -0700 (PDT)
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
References: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
 <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>
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
Subject: Re: [yocto] Force binary package install
Message-ID: <482f4935-572d-1b6b-162c-b0a208af7236@ibeeto.com>
Date: Tue, 7 Jun 2022 12:57:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: 
 <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="ViRApfYP1MybTNyaCHMFYdN22V4XSJH5b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 19:57:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57298

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--ViRApfYP1MybTNyaCHMFYdN22V4XSJH5b
Content-Type: multipart/mixed; boundary="BDB3jH1gS3iXgWf5cnYHLBwJUOdMNFIus";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Message-ID: <482f4935-572d-1b6b-162c-b0a208af7236@ibeeto.com>
Subject: Re: [yocto] Force binary package install
References: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
 <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>
In-Reply-To: <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>

--BDB3jH1gS3iXgWf5cnYHLBwJUOdMNFIus
Content-Type: multipart/mixed;
 boundary="------------EC923860260D0A486E36F730"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------EC923860260D0A486E36F730
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 6/7/22 12:44 PM, Alexander Kanavin wrote:
> Can you show the recipe that you wrote for the blob?

Not exactly as is because of customer names, but below is a sanitized=20
version:


SUMMARY =3D "Binary Stuff"

LICENSE =3D "CLOSED"

SRC_URI =3D "file://binary_installer.tgz \
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "

do_install() {

 =C2=A0=C2=A0=C2=A0 install -d -m 0755 ${D}/opt/binstuff

 =C2=A0=C2=A0=C2=A0 tar cf - -C ${WORKDIR}/opt/binstuff . | tar xf - -C $=
{D}/binstuff

}

FILES:${PN} =3D "/opt/binstuff"


RDEPENDS:${PN} +=3D "libsystemd libudev libgpiod wayland"
INSANE_SKIP:${PN} +=3D "ldflags file-rdeps arch staticdev"

The recipe itself builds just fine and creates the RPM package. However, =

the some of the binaries inside the package have been built against=20
shared libs of older versions. The libs are there of course but with the =

wrong version. Adding file-rdeps to INSANE_SKIP addresses this at build=20
time. But when installing the package in the rootfs dnf does a=20
dependency check which then fails.

I don't know if there is an elegant way of overriding dnf to force=20
installation of the package.


>
> Alex
>
> On Tue, 7 Jun 2022 at 20:59, Rudolf J Streif <rudolf.streif@ibeeto.com>=
 wrote:
>> I have been handed a binary package that I am integrating into a Yocto=

>> build.
>>
>> When dnf runs it complains about missing dependencies. These are
>> standard libraries of course but the culprit is the incompatible
>> version. The software runs fine when I install it on the target using
>> the script/tar installation it comes with. Needless to say that YP
>> packaging QA complains about this already when assembling the package.=

>> However, there I can silence the complaints with INSANE_SKIP.
>>
>> Unfortunately I have not found a method doing the same when the packag=
e
>> is installed by the image class.
>>
>> Is there an elegant way around it?
>>
>>
>> Error:
>>    Problem: conflicting requests
>>     - nothing provides libdl.so.2 needed by
>> xxx-single-group-0.1-r0.cortexa53_crypto
>>     - nothing provides libdl.so.2(GLIBC_2.0) needed by
>> xxx-single-group-0.1-r0.cortexa53_crypto
>>     - nothing provides libdl.so.2(GLIBC_2.1) needed by
>> xxx-single-group-0.1-r0.cortexa53_crypto
>>     - nothing provides libgcc_s.so.1 needed by
>> xxx-single-group-0.1-r0.cortexa53_crypto
>>     - nothing provides libgcc_s.so.1(GCC_3.0) needed by
>> xxx-single-group-0.1-r0.cortexa53_crypto
>>     - nothing provides libm.so.6 needed by
>> xxx-single-group-0.1-r0.cortexa53_crypto
>>     - nothing provides libm.so.6(GLIBC_2.0) needed by
>> xxx-single-group-0.1-r0.cortexa53_crypto
>>     - nothing provides libm.so.6(GLIBC_2.1) needed by
>> xxx-single-group-0.1-r0.cortexa53_crypto
>>     - nothing provides libpthread.so.0 needed by
>> xxx-single-group-0.1-r0.cortexa53_crypto
>>     - nothing provides libpthread.so.0(GLIBC_2.0) needed by
>> xxx-single-group-0.1-r0.cortexa53_crypto
>>     - nothing provides libpthread.so.0(GLIBC_2.1) needed by
>> xxx-single-group-0.1-r0.cortexa53_crypto
>>     - nothing provides libpthread.so.0(GLIBC_2.2) needed by
>> xxx-single-group-0.1-r0.cortexa53_crypto
>>     - nothing provides libpthread.so.0(GLIBC_2.3.2) needed by
>> xxx-single-group-0.1-r0.cortexa53_crypto
>>     - nothing provides librt.so.1 needed by
>> xxx-single-group-0.1-r0.cortexa53_crypto
>>     - nothing provides librt.so.1(GLIBC_2.2) needed by
>> xxx-single-group-0.1-r0.cortexa53_crypto
>> (try to add '--skip-broken' to skip uninstallable packages)
>>
>>
>> --
>> Rudolf J Streif
>> CEO/CTO ibeeto
>> +1.855.442.3386 x700
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#57296): https://lists.yoctoproject.org/g/yocto/mes=
sage/57296
>> Mute This Topic: https://lists.yoctoproject.org/mt/91607892/1686489
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavi=
n@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------EC923860260D0A486E36F730
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

--------------EC923860260D0A486E36F730--

--BDB3jH1gS3iXgWf5cnYHLBwJUOdMNFIus--

--ViRApfYP1MybTNyaCHMFYdN22V4XSJH5b
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmKfrYwFAwAAAAAACgkQjYyoKSczm3V3
DQf/Rfc04yIA9UZ5xtKe9luJ8VIYvDZPxG0n+p74wG8FHz9zXN2F7R/R/XWfjFmR/CnH4c4CBlci
onczV9ZdsEQkaEOWL+R0Q0t0LRuAiPFxeKEOoK4CtV+osdBNIdNZP8dYplAYBAcaqfAOnUHTuqXR
KzO0XEIm7dx4zSdXE2XaRwbxm3pqvEmPkelmJ70TPqwl67HIyRpdRp6FGfv/TtDbnfZJMyIqy9HC
EbXLgCn6PALo0gUq/WPlpxd1NDI15LC35FTDgy3QBqmmjiCNyKEhlIxYmVSEBg42eBznaw9IyQ5T
/e8Tk1J9efDZ2s0wWeJMnjEIKVk7/A6mF5zXr46Cgg==
=phMx
-----END PGP SIGNATURE-----

--ViRApfYP1MybTNyaCHMFYdN22V4XSJH5b--

