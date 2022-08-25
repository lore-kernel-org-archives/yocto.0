Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A8C7ECAA25
	for <webhook@archiver.kernel.org>; Thu, 25 Aug 2022 16:45:30 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web11.26311.1661445928894333364
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Aug 2022 09:45:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112
 header.b=e6rLwo4X;
 spf=neutral (domain: ibeeto.com, ip: 209.85.210.178,
 mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pf1-f178.google.com with SMTP id y127so17365682pfy.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 25 Aug 2022 09:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:mime-version:user-agent:date:message-id:subject
         :autocrypt:from:references:to:from:to:cc;
        bh=LVIMzadGXCEsIcdi6ACGrC+gdBQ9O3JQGCbk5RpzXtQ=;
        b=e6rLwo4X7Bba5d/kHpISM847+FE5ODxM92Rr0WQth9QoVgetHCI8yRejuWrxLdjBfn
         uLsIIvEkCerT1OPWE3JHJm6iOV/DvBrIafNYoDaaf0McW7nc55ozixffLQPw116R1hMi
         YJMXtw22vipU4oBJ4sgESwcR+WmyyEVl7zmt7e/zfaI9zxXFw+UBoox1vwY6NFY7HbuL
         EY0YoO12ruoZXAe5g4TBVqdp9rJmp3zGlB8uwByLLvEl22ve5ly/uwcB146Jw0y2dj0v
         KAc9GOX1639Pkw8tOKGbMwbYETqsGmWbmOJJRDQoTLsxaUseG0WP4NzjfU21affHTbrh
         Ddzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:mime-version:user-agent:date:message-id:subject
         :autocrypt:from:references:to:x-gm-message-state:from:to:cc;
        bh=LVIMzadGXCEsIcdi6ACGrC+gdBQ9O3JQGCbk5RpzXtQ=;
        b=paxj+8Jekb0glUBcjjKsZA3tKsQYFpQho9cQN7EATmTuO1KgqD15OHtoN/W9iK09Ai
         5APmKHEmXaJ6u57dQibcR7S0Zx9UIQSySaurMZpzteSpn8ADqNsugbP3tW855VnEnMfS
         T27iCSvY7gTpn+tUmSRUrAJc9hcbPOHyKN74lIRXLO76WeA4dPQ94zrsgZtYNX/ZEYmh
         63fVRHI1bmoPh4jUkgWwieNvKNExrQLF5METcusdPi714AOW3kQCCmXtdTW3cE8+HPLq
         p3YNm6OcOP5cMLm3vfuPmou0oSLgt7OU9W5bFKay5SogJ1ZZ0fowzmYQly9XDPpW5g6y
         EHcw==
X-Gm-Message-State: ACgBeo2iTJQkwxOC8vw5r6uSTxcw5e/5sHOVIjgGKrkZjktH9p9OM5Dd
	lo1+cRxdNutty9AwGsqmPwO/6jVMTD/X8A==
X-Google-Smtp-Source: 
 AA6agR75jA3II67sTlewS8R3cAHrinfjAjte9ZUQ55Mu/CpVXEa7hfNe5Hp/7XmpH7hZKTXTOzyVOw==
X-Received: by 2002:a05:6a00:22c6:b0:52f:4d67:b370 with SMTP id
 f6-20020a056a0022c600b0052f4d67b370mr5147520pfj.58.1661445927681;
        Thu, 25 Aug 2022 09:45:27 -0700 (PDT)
Received: from ?IPv6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89?
 ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id
 u66-20020a627945000000b00537a8d2c2easm882435pfc.80.2022.08.25.09.45.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 09:45:27 -0700 (PDT)
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Yocto <yocto@lists.yoctoproject.org>
References: <0c8260c2-0da1-7566-3f9a-e90d4995b45b@ibeeto.com>
 <2235a5b3-2c7e-0e2d-1ced-c6fe7bdce748@theobroma-systems.com>
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
Subject: Re: [yocto] Dependency for binary package
Message-ID: <fc79fa0a-be7c-341c-9dcd-24be0934fe6b@ibeeto.com>
Date: Thu, 25 Aug 2022 09:45:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <2235a5b3-2c7e-0e2d-1ced-c6fe7bdce748@theobroma-systems.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="FCaIxgRsnP92FcF8sT5CXcahyU4dVPXuF"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Aug 2022 16:45:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57901

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--FCaIxgRsnP92FcF8sT5CXcahyU4dVPXuF
Content-Type: multipart/mixed; boundary="ur7iKRPkCTIuwH82u6N5d6aBmrdOEIb5V";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Yocto <yocto@lists.yoctoproject.org>
Message-ID: <fc79fa0a-be7c-341c-9dcd-24be0934fe6b@ibeeto.com>
Subject: Re: [yocto] Dependency for binary package
References: <0c8260c2-0da1-7566-3f9a-e90d4995b45b@ibeeto.com>
 <2235a5b3-2c7e-0e2d-1ced-c6fe7bdce748@theobroma-systems.com>
In-Reply-To: <2235a5b3-2c7e-0e2d-1ced-c6fe7bdce748@theobroma-systems.com>

--ur7iKRPkCTIuwH82u6N5d6aBmrdOEIb5V
Content-Type: multipart/mixed;
 boundary="------------968ECF2B70BEC1A6C3A7AA52"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------968ECF2B70BEC1A6C3A7AA52
Content-Type: multipart/alternative;
 boundary="------------3F5A976CB4AEE38CACEEA1BD"


--------------3F5A976CB4AEE38CACEEA1BD
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Thank you, Quentin.

On 8/25/22 7:45 AM, Quentin Schulz wrote:
> Hi Rudolf,
>
> On 8/25/22 16:30, Rudolf J Streif wrote:
>> I am packaging a binary package that has been built with the SDK=20
>> created with the exact same configuration.
>>
>> During do_package I am getting an error that a dependency on=20
>> libGLESv2.so()(64bit) cannot be met. Adding mesa to RDEPENDS does not =

>> resolve the issue. I can bypass it in the recipe by adding file-rdeps =

>> to INSANE_SKIP. However, then when the rootfs is created libdnf=20
>> complains that the dependency on libGLES is not met and aborts.
>>
>> The application works just fine on the target if I copy it manually=20
>> to the rootfs but that's not the best thing to do. It should be=20
>> packaged and installed.
>>
>> Unfortunately I don't understand well enough how these checks work=20
>> and why they are complaining about it. Maybe somebody can shed some=20
>> light on it.
>>
>
> Bitbake versions its shared libraries. So a binary built by Bitbake=20
> will link against libGLESv2.so.1.3 (or whatever the version of the lib =

> actually is).
>
> This also means that the only shared library that can be used for=20
> linking is the versioned one.
>
> Bitbake reads the NEEDED section from objdump to identify the runtime=20
> dependencies and automatically add the packages providing those=20
> libraries to your image. This is the reason why you do not need to=20
> explicit RDEPENDS for packages created by recipes in DEPENDS.
>
> The issue here is that Bitbake creates a package which provides=20
> libGLESv2.so.1.3 but your binary requires libGLESv2.so and Bitbake=20
> cannot find a package for it.

Yes, that is exactly the issue:

 =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libQt5Quick.so.5]
 =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libQt5Gui.so.5]
 =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libQt5Qml.so.5]
 =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library:=20
[libQt5Network.so.5]
 =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library:=20
[libQt5SerialPort.so.5]
 =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libQt5Core.so.5]
 =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [librt.so.1]
 =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libdl.so.2]
 =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libatomic.so.1]
 =C2=A00x0000000000000001 (NEEDED) Shared library: [libGLESv2.so]
 =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libpthread.so.0]
 =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libstdc++.so.6]
 =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libm.so.6]
 =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libgcc_s.so.1]
 =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libc.so.6]

The question is what causes this if the application is built with the=20
toolchain and against the rootfs that YP produces.

>
> Usually the way to do it is to ignore the warning like you did, or=20
> build the binary in Yocto directly. I assume the latter is not=20
> possible because it is proprietary software compiled by a third-party=20
> and you don't have access to the source code.
>
> As to how to fix this issue with dnf, I do not know.
>
> One possibility could be to patchelf your binary in Yocto directly but =

> you'll need to update this patchelf line every time you update=20
> libGLESv2 version because it is not possible to get the version from=20
> one recipe in another.
>
> Cheers,
> Quentin

--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------3F5A976CB4AEE38CACEEA1BD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Thank you, Quentin.<br>
    </p>
    <div class=3D"moz-cite-prefix">On 8/25/22 7:45 AM, Quentin Schulz
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:2235a5b3-2c7e-0e2d-1ced-c6fe7bdce748@theobroma-systems.=
com">Hi
      Rudolf,
      <br>
      <br>
      On 8/25/22 16:30, Rudolf J Streif wrote:
      <br>
      <blockquote type=3D"cite">I am packaging a binary package that has
        been built with the SDK created with the exact same
        configuration.
        <br>
        <br>
        During do_package I am getting an error that a dependency on
        libGLESv2.so()(64bit) cannot be met. Adding mesa to RDEPENDS
        does not resolve the issue. I can bypass it in the recipe by
        adding file-rdeps to INSANE_SKIP. However, then when the rootfs
        is created libdnf complains that the dependency on libGLES is
        not met and aborts.
        <br>
        <br>
        The application works just fine on the target if I copy it
        manually to the rootfs but that's not the best thing to do. It
        should be packaged and installed.
        <br>
        <br>
        Unfortunately I don't understand well enough how these checks
        work and why they are complaining about it. Maybe somebody can
        shed some light on it.
        <br>
        <br>
      </blockquote>
      <br>
      Bitbake versions its shared libraries. So a binary built by
      Bitbake will link against libGLESv2.so.1.3 (or whatever the
      version of the lib actually is).
      <br>
      <br>
      This also means that the only shared library that can be used for
      linking is the versioned one.
      <br>
      <br>
      Bitbake reads the NEEDED section from objdump to identify the
      runtime dependencies and automatically add the packages providing
      those libraries to your image. This is the reason why you do not
      need to explicit RDEPENDS for packages created by recipes in
      DEPENDS.
      <br>
      <br>
      The issue here is that Bitbake creates a package which provides
      libGLESv2.so.1.3 but your binary requires libGLESv2.so and Bitbake
      cannot find a package for it.
      <br>
    </blockquote>
    <p>Yes, that is exactly the issue:</p>
    <p>=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library:
      [libQt5Quick.so.5]<br>
      =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library:
      [libQt5Gui.so.5]<br>
      =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library:
      [libQt5Qml.so.5]<br>
      =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library:
      [libQt5Network.so.5]<br>
      =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library:
      [libQt5SerialPort.so.5]<br>
      =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library:
      [libQt5Core.so.5]<br>
      =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library:
      [librt.so.1]<br>
      =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library:
      [libdl.so.2]<br>
      =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library:
      [libatomic.so.1]<br>
      <font color=3D"#fe0d0d">=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        Shared library: [libGLESv2.so]</font><br>
      =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library:
      [libpthread.so.0]<br>
      =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library:
      [libstdc++.so.6]<br>
      =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library:
      [libm.so.6]<br>
      =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library:
      [libgcc_s.so.1]<br>
      =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library:
      [libc.so.6]</p>
    <p>The question is what causes this if the application is built with
      the toolchain and against the rootfs that YP produces.<br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:2235a5b3-2c7e-0e2d-1ced-c6fe7bdce748@theobroma-systems.=
com">
      <br>
      Usually the way to do it is to ignore the warning like you did, or
      build the binary in Yocto directly. I assume the latter is not
      possible because it is proprietary software compiled by a
      third-party and you don't have access to the source code.
      <br>
      <br>
      As to how to fix this issue with dnf, I do not know.
      <br>
      <br>
      One possibility could be to patchelf your binary in Yocto directly
      but you'll need to update this patchelf line every time you update
      libGLESv2 version because it is not possible to get the version
      from one recipe in another.
      <br>
      <br>
      Cheers,
      <br>
      Quentin
      <br>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </body>
</html>

--------------3F5A976CB4AEE38CACEEA1BD--

--------------968ECF2B70BEC1A6C3A7AA52
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

--------------968ECF2B70BEC1A6C3A7AA52--

--ur7iKRPkCTIuwH82u6N5d6aBmrdOEIb5V--

--FCaIxgRsnP92FcF8sT5CXcahyU4dVPXuF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmMHpyYFAwAAAAAACgkQjYyoKSczm3We
HQgAirvEEqdDwx5xeEXOBfW2Pnv1jaDCQFwoGuVJntUkaduLno7G83B1VWt5HgiGOfPPz8NE2ymt
yjVNtKugapWDw9TvD67HeptfFsMfhrHpT/fneKkGk4HJxkqd1FwHnFGYe5rsJBAxIQcRIV6QUhz7
CDEn1B6B1zEaWiZ9lOesM5Xp/0sILKChFwV8H/ttQNdEc+Qj8LMdp7rT3tnqEQAC6U4J8xg0lz8k
tuFJlxcG++jzI0z5YXpXI+mM9g9bIaL8as3LAPNnN0IIGVgbQ9d4HY33BcGBLmLk+/I+KKsPWiNt
FbQThdTZoj/IhsyEPIg82pneBgoDEjpbX3uKgrjd9Q==
=py7S
-----END PGP SIGNATURE-----

--FCaIxgRsnP92FcF8sT5CXcahyU4dVPXuF--

