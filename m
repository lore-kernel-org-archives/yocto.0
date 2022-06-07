Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F11C43334
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 22:48:15 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web10.43.1654642094476247137
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 15:48:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112
 header.b=VkG92346;
 spf=neutral (domain: ibeeto.com, ip: 209.85.216.47,
 mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pj1-f47.google.com with SMTP id
 l7-20020a17090aaa8700b001dd1a5b9965so16705887pjq.2
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 15:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=to:cc:references:from:autocrypt:subject:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=xOC6zW/uaXESIRfSs36dTCkrfeRJqhIDWBgTI7SPfSg=;
        b=VkG92346NEJDVoRJlUTop3N7o43T96wgHZPwG8AfBP7eRlglclXMCWlRhShvxZkrT5
         9V8SOhYs8MEn68Q+OH0NKguvUloWCojLKB2sHSBEtv6HD9gWeKN6jaQNeDluD4EB00Md
         xW9fMzI6er+u4W6zGozmFDiD7D47+6KgpHo0Qi1BXQmq2Tfr1Ic9Ciwu7VbciLypJzDC
         YA7y+dSXlHAb5SnzHRXBGuDN1hdzTvDb39Kqn9qQKTe13AznYAu6Svn5VIplPHNRM4kr
         ihajiHgd/msQczuWLKgVSmjL7jlcArFJ/55L6x0RyUQ1cf1lSHAz616msdVimpl87XbN
         bafg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:cc:references:from:autocrypt:subject
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=xOC6zW/uaXESIRfSs36dTCkrfeRJqhIDWBgTI7SPfSg=;
        b=a/UnCDzqQ9T4G4TR+2AccK2QBJQWj5RlIzXkioH89vCn3O0ask7RT+E7hYqAaf30Le
         Kbyinmx0YqlC5NjE4YR7Dtzbrg4taGb+cF+vXKmXRLq8mxOyDlgI65JHJruxmfestqUD
         mlhMJzkt5cFANkZD0+c7qMrqHpxlL+OZha+d5OfLpEpmiTvCFkSyfBPOqnBPcLhnImk6
         fMC0laM1TzyVj9PqTjSYTlR4RdBvM69Z4BnI8rGnQ5S2m0X/z1XDopobIEtCmalYAjtD
         ljKAYHfw1XZkJO04qxy9gDT4PELqXNFGG4789FvNs++PBLt0wBIL8mLYe0fQ5hcDnUne
         dgng==
X-Gm-Message-State: AOAM533kAGwHX6QpFPOLTAEbutrkl/wLcwA1w1gg64B28Xo6uOIFKaX8
	eIIpcgLxV4prYz5fqF7sNzcyf0IA86ycLXw1
X-Google-Smtp-Source: 
 ABdhPJxA3bTyXJAwGk1gpAWnfzxjtYcC/sXOmnlBU+qDMSfqfvabTCZY510O/43j7b1dWvwEMvSMTA==
X-Received: by 2002:a17:902:a9c4:b0:15f:90c:12f6 with SMTP id
 b4-20020a170902a9c400b0015f090c12f6mr30861931plr.115.1654642092900;
        Tue, 07 Jun 2022 15:48:12 -0700 (PDT)
Received: from ?IPv6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89?
 ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id
 187-20020a6204c4000000b0051bc721b838sm11656953pfe.188.2022.06.07.15.48.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 15:48:12 -0700 (PDT)
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
References: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
 <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>
 <482f4935-572d-1b6b-162c-b0a208af7236@ibeeto.com>
 <CANNYZj8=dJ2Eiabx6FEykafYgSUzokg08sPiLW6X-=uJAeZnvA@mail.gmail.com>
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
Message-ID: <9bd2408c-3309-11e6-2bba-37f69d90e4e2@ibeeto.com>
Date: Tue, 7 Jun 2022 15:48:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: 
 <CANNYZj8=dJ2Eiabx6FEykafYgSUzokg08sPiLW6X-=uJAeZnvA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="iJ4qZcDz5KtFFuRl1Fn8crjezYJ1lqnGn"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 22:48:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57300

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--iJ4qZcDz5KtFFuRl1Fn8crjezYJ1lqnGn
Content-Type: multipart/mixed; boundary="QBodjtcLAn344VI5Gw9GtZDf0d1rOP2Mh";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Message-ID: <9bd2408c-3309-11e6-2bba-37f69d90e4e2@ibeeto.com>
Subject: Re: [yocto] Force binary package install
References: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
 <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>
 <482f4935-572d-1b6b-162c-b0a208af7236@ibeeto.com>
 <CANNYZj8=dJ2Eiabx6FEykafYgSUzokg08sPiLW6X-=uJAeZnvA@mail.gmail.com>
In-Reply-To: <CANNYZj8=dJ2Eiabx6FEykafYgSUzokg08sPiLW6X-=uJAeZnvA@mail.gmail.com>

--QBodjtcLAn344VI5Gw9GtZDf0d1rOP2Mh
Content-Type: multipart/mixed;
 boundary="------------80E114B48DCB1154481E1811"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------80E114B48DCB1154481E1811
Content-Type: multipart/alternative;
 boundary="------------182743474A65F968593B9754"


--------------182743474A65F968593B9754
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 6/7/22 3:12 PM, Alexander Kanavin wrote:
> Can you drop insane_skip for a moment and show what errors then happen?=



Yes, thank you.

ERROR: xxx-single-group-0.1-r0 do_package_qa: QA Issue:=20
/opt/binstuf/linux-allwinneryocto-armle-opengles_2.0-obj/lib/libfbxsdk.so=
=20
contained in package xxx-single-group requires=20
libpthread.so.0(GLIBC_2.2), but no providers found in=20
RDEPENDS:xxx-single-group? [file-rdeps]

There are many more of these errors.


Objdump on libfbxsdk.so:

Version References:
 =C2=A0 required from libgcc_s.so.1:
 =C2=A0=C2=A0=C2=A0 0x0b792650 0x00 12 GCC_3.0
 =C2=A0 required from libpthread.so.0:
 =C2=A0=C2=A0=C2=A0 0x0d696912 0x00 10 GLIBC_2.2
 =C2=A0=C2=A0=C2=A0 0x09691972 0x00 07 GLIBC_2.3.2
 =C2=A0=C2=A0=C2=A0 0x0d696911 0x00 05 GLIBC_2.1
 =C2=A0=C2=A0=C2=A0 0x0d696910 0x00 03 GLIBC_2.0
 =C2=A0 required from libc.so.6:
 =C2=A0=C2=A0=C2=A0 0x0d696912 0x00 11 GLIBC_2.2
 =C2=A0=C2=A0=C2=A0 0x0d696917 0x00 09 GLIBC_2.7
 =C2=A0=C2=A0=C2=A0 0x0d696911 0x00 08 GLIBC_2.1
 =C2=A0=C2=A0=C2=A0 0x0d696913 0x00 06 GLIBC_2.3
 =C2=A0=C2=A0=C2=A0 0x09691f73 0x00 04 GLIBC_2.1.3
 =C2=A0=C2=A0=C2=A0 0x0d696910 0x00 02 GLIBC_2.0

Objdump on libpthread.so.0:

Version definitions:
1 0x01 0x0e2f2c50 libpthread.so.0
2 0x00 0x06969197 GLIBC_2.17
3 0x00 0x06969198 GLIBC_2.18
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.17
4 0x00 0x06969188 GLIBC_2.28
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.18
5 0x00 0x069691b0 GLIBC_2.30
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.28
6 0x00 0x069691b1 GLIBC_2.31
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.30


The versions don't match hence dnf throws an error. I guess I can defer=20
the error with INSANE_SKIP +=3D "file-rdeps" but then it comes up again=20
when installing.


>
> Alex
>
> On Tue 7. Jun 2022 at 22.57, Rudolf J Streif <rudolf.streif@ibeeto.com =

> <mailto:rudolf.streif@ibeeto.com>> wrote:
>
>
>     On 6/7/22 12:44 PM, Alexander Kanavin wrote:
>     > Can you show the recipe that you wrote for the blob?
>
>     Not exactly as is because of customer names, but below is a sanitiz=
ed
>     version:
>
>
>     SUMMARY =3D "Binary Stuff"
>
>     LICENSE =3D "CLOSED"
>
>     SRC_URI =3D "file://binary_installer.tgz \
>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "
>
>     do_install() {
>
>     =C2=A0=C2=A0=C2=A0=C2=A0 install -d -m 0755 ${D}/opt/binstuff
>
>     =C2=A0=C2=A0=C2=A0=C2=A0 tar cf - -C ${WORKDIR}/opt/binstuff . | ta=
r xf - -C ${D}/binstuff
>
>     }
>
>     FILES:${PN} =3D "/opt/binstuff"
>
>
>     RDEPENDS:${PN} +=3D "libsystemd libudev libgpiod wayland"
>     INSANE_SKIP:${PN} +=3D "ldflags file-rdeps arch staticdev"
>
>     The recipe itself builds just fine and creates the RPM package.
>     However,
>     the some of the binaries inside the package have been built against=

>     shared libs of older versions. The libs are there of course but
>     with the
>     wrong version. Adding file-rdeps to INSANE_SKIP addresses this at
>     build
>     time. But when installing the package in the rootfs dnf does a
>     dependency check which then fails.
>
>     I don't know if there is an elegant way of overriding dnf to force
>     installation of the package.
>
>
>     >
>     > Alex
>     >
>     > On Tue, 7 Jun 2022 at 20:59, Rudolf J Streif
>     <rudolf.streif@ibeeto.com <mailto:rudolf.streif@ibeeto.com>> wrote:=

>     >> I have been handed a binary package that I am integrating into
>     a Yocto
>     >> build.
>     >>
>     >> When dnf runs it complains about missing dependencies. These are=

>     >> standard libraries of course but the culprit is the incompatible=

>     >> version. The software runs fine when I install it on the target
>     using
>     >> the script/tar installation it comes with. Needless to say that =
YP
>     >> packaging QA complains about this already when assembling the
>     package.
>     >> However, there I can silence the complaints with INSANE_SKIP.
>     >>
>     >> Unfortunately I have not found a method doing the same when the
>     package
>     >> is installed by the image class.
>     >>
>     >> Is there an elegant way around it?
>     >>
>     >>
>     >> Error:
>     >>=C2=A0 =C2=A0 Problem: conflicting requests
>     >>=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2 needed by
>     >> xxx-single-group-0.1-r0.cortexa53_crypto
>     >>=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2(GLIBC_2.0) need=
ed by
>     >> xxx-single-group-0.1-r0.cortexa53_crypto
>     >>=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2(GLIBC_2.1) need=
ed by
>     >> xxx-single-group-0.1-r0.cortexa53_crypto
>     >>=C2=A0 =C2=A0 =C2=A0- nothing provides libgcc_s.so.1 needed by
>     >> xxx-single-group-0.1-r0.cortexa53_crypto
>     >>=C2=A0 =C2=A0 =C2=A0- nothing provides libgcc_s.so.1(GCC_3.0) nee=
ded by
>     >> xxx-single-group-0.1-r0.cortexa53_crypto
>     >>=C2=A0 =C2=A0 =C2=A0- nothing provides libm.so.6 needed by
>     >> xxx-single-group-0.1-r0.cortexa53_crypto
>     >>=C2=A0 =C2=A0 =C2=A0- nothing provides libm.so.6(GLIBC_2.0) neede=
d by
>     >> xxx-single-group-0.1-r0.cortexa53_crypto
>     >>=C2=A0 =C2=A0 =C2=A0- nothing provides libm.so.6(GLIBC_2.1) neede=
d by
>     >> xxx-single-group-0.1-r0.cortexa53_crypto
>     >>=C2=A0 =C2=A0 =C2=A0- nothing provides libpthread.so.0 needed by
>     >> xxx-single-group-0.1-r0.cortexa53_crypto
>     >>=C2=A0 =C2=A0 =C2=A0- nothing provides libpthread.so.0(GLIBC_2.0)=
 needed by
>     >> xxx-single-group-0.1-r0.cortexa53_crypto
>     >>=C2=A0 =C2=A0 =C2=A0- nothing provides libpthread.so.0(GLIBC_2.1)=
 needed by
>     >> xxx-single-group-0.1-r0.cortexa53_crypto
>     >>=C2=A0 =C2=A0 =C2=A0- nothing provides libpthread.so.0(GLIBC_2.2)=
 needed by
>     >> xxx-single-group-0.1-r0.cortexa53_crypto
>     >>=C2=A0 =C2=A0 =C2=A0- nothing provides libpthread.so.0(GLIBC_2.3.=
2) needed by
>     >> xxx-single-group-0.1-r0.cortexa53_crypto
>     >>=C2=A0 =C2=A0 =C2=A0- nothing provides librt.so.1 needed by
>     >> xxx-single-group-0.1-r0.cortexa53_crypto
>     >>=C2=A0 =C2=A0 =C2=A0- nothing provides librt.so.1(GLIBC_2.2) need=
ed by
>     >> xxx-single-group-0.1-r0.cortexa53_crypto
>     >> (try to add '--skip-broken' to skip uninstallable packages)
>     >>
>     >>
>     >> --
>     >> Rudolf J Streif
>     >> CEO/CTO ibeeto
>     >> +1.855.442.3386 x700
>     >>
>     >>
>     >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>     >> Links: You receive all messages sent to this group.
>     >> View/Reply Online (#57296):
>     https://lists.yoctoproject.org/g/yocto/message/57296
>     <https://lists.yoctoproject.org/g/yocto/message/57296>
>     >> Mute This Topic:
>     https://lists.yoctoproject.org/mt/91607892/1686489
>     <https://lists.yoctoproject.org/mt/91607892/1686489>
>     >> Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>     <https://lists.yoctoproject.org/g/yocto/unsub>
>     [alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>]
>     >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>     >>
>     --=20
>     Rudolf J Streif
>     CEO/CTO ibeeto
>     +1.855.442.3386 x700
>
--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------182743474A65F968593B9754
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 6/7/22 3:12 PM, Alexander Kanavin
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANNYZj8=3DdJ2Eiabx6FEykafYgSUzokg08sPiLW6X-=3DuJAeZnvA@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">Can you drop insane_skip for a moment and show
        what errors then happen?</div>
    </blockquote>
    <p><br>
    </p>
    <p>Yes, thank you.</p>
    <p>ERROR: xxx-single-group-0.1-r0 do_package_qa: QA Issue:
/opt/binstuf/linux-allwinneryocto-armle-opengles_2.0-obj/lib/libfbxsdk.so=

      contained in package xxx-single-group requires
      libpthread.so.0(GLIBC_2.2), but no providers found in
      RDEPENDS:xxx-single-group? [file-rdeps]</p>
    <p>There are many more of these errors.<br>
    </p>
    <br>
    <p>Objdump on libfbxsdk.so:</p>
    <p>Version References:<br>
      =C2=A0 required from libgcc_s.so.1:<br>
      =C2=A0=C2=A0=C2=A0 0x0b792650 0x00 12 GCC_3.0<br>
      =C2=A0 required from libpthread.so.0:<br>
      =C2=A0=C2=A0=C2=A0 0x0d696912 0x00 10 GLIBC_2.2<br>
      =C2=A0=C2=A0=C2=A0 0x09691972 0x00 07 GLIBC_2.3.2<br>
      =C2=A0=C2=A0=C2=A0 0x0d696911 0x00 05 GLIBC_2.1<br>
      =C2=A0=C2=A0=C2=A0 0x0d696910 0x00 03 GLIBC_2.0<br>
      =C2=A0 required from libc.so.6:<br>
      =C2=A0=C2=A0=C2=A0 0x0d696912 0x00 11 GLIBC_2.2<br>
      =C2=A0=C2=A0=C2=A0 0x0d696917 0x00 09 GLIBC_2.7<br>
      =C2=A0=C2=A0=C2=A0 0x0d696911 0x00 08 GLIBC_2.1<br>
      =C2=A0=C2=A0=C2=A0 0x0d696913 0x00 06 GLIBC_2.3<br>
      =C2=A0=C2=A0=C2=A0 0x09691f73 0x00 04 GLIBC_2.1.3<br>
      =C2=A0=C2=A0=C2=A0 0x0d696910 0x00 02 GLIBC_2.0<br>
    </p>
    <p>Objdump on libpthread.so.0:</p>
    <p>Version definitions:<br>
      1 0x01 0x0e2f2c50 libpthread.so.0<br>
      2 0x00 0x06969197 GLIBC_2.17<br>
      3 0x00 0x06969198 GLIBC_2.18<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.17 <br>
      4 0x00 0x06969188 GLIBC_2.28<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.18 <br>
      5 0x00 0x069691b0 GLIBC_2.30<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.28 <br>
      6 0x00 0x069691b1 GLIBC_2.31<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GLIBC_2.30 <br>
    </p>
    <p><br>
    </p>
    <p>The versions don't match hence dnf throws an error. I guess I can
      defer the error with INSANE_SKIP +=3D "file-rdeps" but then it come=
s
      up again when installing.<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:CANNYZj8=3DdJ2Eiabx6FEykafYgSUzokg08sPiLW6X-=3DuJAeZnvA@mail.=
gmail.com">
      <div dir=3D"auto"><br>
      </div>
      <div dir=3D"auto">Alex</div>
      <div><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Tue 7. Jun 2022 at 22.=
57,
            Rudolf J Streif &lt;<a
              href=3D"mailto:rudolf.streif@ibeeto.com"
              moz-do-not-send=3D"true">rudolf.streif@ibeeto.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;bord=
er-left-color:rgb(204,204,204)"><br>
            On 6/7/22 12:44 PM, Alexander Kanavin wrote:<br>
            &gt; Can you show the recipe that you wrote for the blob?<br>=

            <br>
            Not exactly as is because of customer names, but below is a
            sanitized <br>
            version:<br>
            <br>
            <br>
            SUMMARY =3D "Binary Stuff"<br>
            <br>
            LICENSE =3D "CLOSED"<br>
            <br>
            SRC_URI =3D "<a class=3D"moz-txt-link-freetext" href=3D"file:=
//binary_installer.tgz">file://binary_installer.tgz</a> \<br>
            =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
"<br>
            <br>
            do_install() {<br>
            <br>
            =C2=A0=C2=A0=C2=A0=C2=A0 install -d -m 0755 ${D}/opt/binstuff=
<br>
            <br>
            =C2=A0=C2=A0=C2=A0=C2=A0 tar cf - -C ${WORKDIR}/opt/binstuff =
=2E | tar xf - -C
            ${D}/binstuff<br>
            <br>
            }<br>
            <br>
            FILES:${PN} =3D "/opt/binstuff"<br>
            <br>
            <br>
            RDEPENDS:${PN} +=3D "libsystemd libudev libgpiod wayland"<br>=

            INSANE_SKIP:${PN} +=3D "ldflags file-rdeps arch staticdev"<br=
>
            <br>
            The recipe itself builds just fine and creates the RPM
            package. However, <br>
            the some of the binaries inside the package have been built
            against <br>
            shared libs of older versions. The libs are there of course
            but with the <br>
            wrong version. Adding file-rdeps to INSANE_SKIP addresses
            this at build <br>
            time. But when installing the package in the rootfs dnf does
            a <br>
            dependency check which then fails.<br>
            <br>
            I don't know if there is an elegant way of overriding dnf to
            force <br>
            installation of the package.<br>
            <br>
            <br>
            &gt;<br>
            &gt; Alex<br>
            &gt;<br>
            &gt; On Tue, 7 Jun 2022 at 20:59, Rudolf J Streif &lt;<a
              href=3D"mailto:rudolf.streif@ibeeto.com" target=3D"_blank"
              moz-do-not-send=3D"true">rudolf.streif@ibeeto.com</a>&gt;
            wrote:<br>
            &gt;&gt; I have been handed a binary package that I am
            integrating into a Yocto<br>
            &gt;&gt; build.<br>
            &gt;&gt;<br>
            &gt;&gt; When dnf runs it complains about missing
            dependencies. These are<br>
            &gt;&gt; standard libraries of course but the culprit is the
            incompatible<br>
            &gt;&gt; version. The software runs fine when I install it
            on the target using<br>
            &gt;&gt; the script/tar installation it comes with. Needless
            to say that YP<br>
            &gt;&gt; packaging QA complains about this already when
            assembling the package.<br>
            &gt;&gt; However, there I can silence the complaints with
            INSANE_SKIP.<br>
            &gt;&gt;<br>
            &gt;&gt; Unfortunately I have not found a method doing the
            same when the package<br>
            &gt;&gt; is installed by the image class.<br>
            &gt;&gt;<br>
            &gt;&gt; Is there an elegant way around it?<br>
            &gt;&gt;<br>
            &gt;&gt;<br>
            &gt;&gt; Error:<br>
            &gt;&gt;=C2=A0 =C2=A0 Problem: conflicting requests<br>
            &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2 nee=
ded by<br>
            &gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
            &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2(GLI=
BC_2.0) needed
            by<br>
            &gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
            &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2(GLI=
BC_2.1) needed
            by<br>
            &gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
            &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libgcc_s.so.1 =
needed by<br>
            &gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
            &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libgcc_s.so.1(=
GCC_3.0)
            needed by<br>
            &gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
            &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libm.so.6 need=
ed by<br>
            &gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
            &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libm.so.6(GLIB=
C_2.0) needed
            by<br>
            &gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
            &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libm.so.6(GLIB=
C_2.1) needed
            by<br>
            &gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
            &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libpthread.so.=
0 needed by<br>
            &gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
            &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libpthread.so.=
0(GLIBC_2.0)
            needed by<br>
            &gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
            &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libpthread.so.=
0(GLIBC_2.1)
            needed by<br>
            &gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
            &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libpthread.so.=
0(GLIBC_2.2)
            needed by<br>
            &gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
            &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libpthread.so.=
0(GLIBC_2.3.2)
            needed by<br>
            &gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
            &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides librt.so.1 nee=
ded by<br>
            &gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
            &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides librt.so.1(GLI=
BC_2.2) needed
            by<br>
            &gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
            &gt;&gt; (try to add '--skip-broken' to skip uninstallable
            packages)<br>
            &gt;&gt;<br>
            &gt;&gt;<br>
            &gt;&gt; --<br>
            &gt;&gt; Rudolf J Streif<br>
            &gt;&gt; CEO/CTO ibeeto<br>
            &gt;&gt; +1.855.442.3386 x700<br>
            &gt;&gt;<br>
            &gt;&gt;<br>
            &gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
            &gt;&gt; Links: You receive all messages sent to this group.<=
br>
            &gt;&gt; View/Reply Online (#57296): <a
              href=3D"https://lists.yoctoproject.org/g/yocto/message/5729=
6"
              rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"tru=
e">https://lists.yoctoproject.org/g/yocto/message/57296</a><br>
            &gt;&gt; Mute This Topic: <a
              href=3D"https://lists.yoctoproject.org/mt/91607892/1686489"=

              rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"tru=
e">https://lists.yoctoproject.org/mt/91607892/1686489</a><br>
            &gt;&gt; Group Owner: <a
              href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org"
              target=3D"_blank" moz-do-not-send=3D"true">yocto+owner@list=
s.yoctoproject.org</a><br>
            &gt;&gt; Unsubscribe: <a
              href=3D"https://lists.yoctoproject.org/g/yocto/unsub"
              rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"tru=
e">https://lists.yoctoproject.org/g/yocto/unsub</a>
            [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank"
              moz-do-not-send=3D"true">alex.kanavin@gmail.com</a>]<br>
            &gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
            &gt;&gt;<br>
            -- <br>
            Rudolf J Streif<br>
            CEO/CTO ibeeto<br>
            +1.855.442.3386 x700<br>
            <br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </body>
</html>

--------------182743474A65F968593B9754--

--------------80E114B48DCB1154481E1811
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

--------------80E114B48DCB1154481E1811--

--QBodjtcLAn344VI5Gw9GtZDf0d1rOP2Mh--

--iJ4qZcDz5KtFFuRl1Fn8crjezYJ1lqnGn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmKf1aoFAwAAAAAACgkQjYyoKSczm3Vh
vggAjfFw3AxYPUfkhNin4FXps1YnDAcTt7fV3NwIPAhUSJOhiC9V0N9V9cZpoGlIQmpJmcf17Op+
TiKCSAXxV+cE1AqLVqNXr8koqYd2LSTbIPfbAnqsi5sJQOgV6TYzNsmsUOYhNhDVnMv+sLRQlEp1
2IWBjS5pbd4jDVdwNGL70np1CdEQeYbe6ybfT5+xmULOpKMLlZ6F8ko99ucMaoB/xLGc9jwAuhBQ
QrDUQLZRYFWu2OkKq7OEO0+RpUdJ98ZmfnBGC37Z40SYuCloL6Yddfq8ydVTKxqH5Xkt2raO9b0i
wPfKvi7FOVgrmr4F/Mslx5cCttOe+HLt4ppMKQb+0Q==
=gSg+
-----END PGP SIGNATURE-----

--iJ4qZcDz5KtFFuRl1Fn8crjezYJ1lqnGn--

