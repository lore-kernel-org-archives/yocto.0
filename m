Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6281BECAAA3
	for <webhook@archiver.kernel.org>; Fri, 26 Aug 2022 17:38:27 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web08.40241.1661535501933798953
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Aug 2022 10:38:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112
 header.b=rXtJrl19;
 spf=neutral (domain: ibeeto.com, ip: 209.85.214.174,
 mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pl1-f174.google.com with SMTP id x23so2152760pll.7
        for <yocto@lists.yoctoproject.org>;
 Fri, 26 Aug 2022 10:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:mime-version:user-agent:date:message-id:subject
         :autocrypt:from:references:cc:to:from:to:cc;
        bh=AgISxqY2H3f9D5/kliCQhcA39RIn9ixBFy2fOfVbLEw=;
        b=rXtJrl19oMUh+tCNGaMCbUzhNTmR/JtPtBz5SmxnwtHiU6wG0H0vj/F7zBddOQ3g9y
         Xas/+L+hs9k4RqRvNA49C6+eWTMhM2bQs05e+MZaHDFYlAKbiUL9j7Ko4d5JjjEk9YjZ
         Xux5vTFxYFYPuQLxeIH1XtZqdVKQ4yyy8GOcPzWay/dxXpM75asZ3YWx20F5wTtaRvtV
         xgeiKi3gSZXjTS9iAs3PBY7dG8tEYNV7XdfH2AS1nFshUhw6/5DXL6ubnnANeh5mTRhD
         hEalf2eymlbwe+1SQ4g+KXVPzpjAZmemlHe+YU+7s/1v3Jq729msSbqK1vLeLAs9yF0B
         5GSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:mime-version:user-agent:date:message-id:subject
         :autocrypt:from:references:cc:to:x-gm-message-state:from:to:cc;
        bh=AgISxqY2H3f9D5/kliCQhcA39RIn9ixBFy2fOfVbLEw=;
        b=zPC/FqIlXS0hvzMWST/PYtxj+cVaaE+wDTeocYGFVckU+p5QwaIOJHZLbah1RHDptu
         vpUBGlqCOkAzPU1/Vkqrbmg57ALwR3tBuuil+l1G5Rrxs3EEjRdRS7DzSVvqtOSf4Zgz
         IgvDhJEgf+FFtkPAJdyHP9fqsGT6IQl58C2tmJu6irT/RrToOvptysHgx/JdmO1x8fu0
         lewOk39VHfKrXz67eAbtkeImFNBIxLJ/gvF5OAm48fqnuTWuOFY8+UpBU0+pdDc/OPhL
         EMXbJ7WryyaZPY8WJseM3lUUkHuQezoi95piUZLQJ7LFfABSdsx99Mk15+oV0zZh/uB2
         e31Q==
X-Gm-Message-State: ACgBeo2BkoOg9UR4n2ZSWv/8UMUiC3ELVvChB3RFU48pxkD0laYPcPw/
	oRF2suxWQSBmc5cUrPsUl7glMCikjus+vA==
X-Google-Smtp-Source: 
 AA6agR7L8/A97/tth26NrLtx+DIE1w5llzUjVELO9UghnLhZUvZphABdALaAo1MNlY1L5Cd8MlGGBw==
X-Received: by 2002:a17:902:b104:b0:172:f66d:6604 with SMTP id
 q4-20020a170902b10400b00172f66d6604mr4574613plr.117.1661535500804;
        Fri, 26 Aug 2022 10:38:20 -0700 (PDT)
Received: from ?IPv6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89?
 ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id
 mp10-20020a17090b190a00b001f333fab3d6sm1944512pjb.18.2022.08.26.10.38.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Aug 2022 10:38:19 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
References: <0c8260c2-0da1-7566-3f9a-e90d4995b45b@ibeeto.com>
 <CAMKF1spJvxxuPOK+KFEX19MjOwumSZ+tGT_u1icvH5z1U8qiAA@mail.gmail.com>
 <6c426aab-6dff-bcfe-1b95-157da402ba44@ibeeto.com>
 <CAMKF1sop4ait=pE5CSzbs3Uu7P=6pACdKd=0py_wpbD-4aXCKQ@mail.gmail.com>
 <50c0d314-faa0-dc7f-903e-614bfb899730@ibeeto.com>
 <CAMKF1sqPy-7+W3a3-vmffTPAvNg_=bBM0uJPYc5-QiJNbefCEg@mail.gmail.com>
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
Message-ID: <78d6022d-a708-fd0d-3b37-91717420f485@ibeeto.com>
Date: Fri, 26 Aug 2022 10:38:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: 
 <CAMKF1sqPy-7+W3a3-vmffTPAvNg_=bBM0uJPYc5-QiJNbefCEg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="DY8zanv18av4g8g1cMWf5bQjZUE0UxfH6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Aug 2022 17:38:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57912

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--DY8zanv18av4g8g1cMWf5bQjZUE0UxfH6
Content-Type: multipart/mixed; boundary="TCLX9n2o0a0V0P75WDV2TLrTrMZn4nPoT";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Message-ID: <78d6022d-a708-fd0d-3b37-91717420f485@ibeeto.com>
Subject: Re: [yocto] Dependency for binary package
References: <0c8260c2-0da1-7566-3f9a-e90d4995b45b@ibeeto.com>
 <CAMKF1spJvxxuPOK+KFEX19MjOwumSZ+tGT_u1icvH5z1U8qiAA@mail.gmail.com>
 <6c426aab-6dff-bcfe-1b95-157da402ba44@ibeeto.com>
 <CAMKF1sop4ait=pE5CSzbs3Uu7P=6pACdKd=0py_wpbD-4aXCKQ@mail.gmail.com>
 <50c0d314-faa0-dc7f-903e-614bfb899730@ibeeto.com>
 <CAMKF1sqPy-7+W3a3-vmffTPAvNg_=bBM0uJPYc5-QiJNbefCEg@mail.gmail.com>
In-Reply-To: <CAMKF1sqPy-7+W3a3-vmffTPAvNg_=bBM0uJPYc5-QiJNbefCEg@mail.gmail.com>

--TCLX9n2o0a0V0P75WDV2TLrTrMZn4nPoT
Content-Type: multipart/mixed;
 boundary="------------647761E2A718AB86AF00B820"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------647761E2A718AB86AF00B820
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 8/25/22 5:44 PM, Khem Raj wrote:
> On Thu, Aug 25, 2022 at 4:56 PM Rudolf J Streif
> <rudolf.streif@ibeeto.com> wrote:
>>
>> On 8/25/22 4:49 PM, Khem Raj wrote:
>>> On Thu, Aug 25, 2022 at 4:44 PM Rudolf J Streif
>>> <rudolf.streif@ibeeto.com> wrote:
>>>> Thanks, Khem.
>>>>
>>>> On 8/25/22 4:27 PM, Khem Raj wrote:
>>>>> On Thu, Aug 25, 2022 at 7:30 AM Rudolf J Streif
>>>>> <rudolf.streif@ibeeto.com> wrote:
>>>>>> I am packaging a binary package that has been built with the SDK c=
reated
>>>>>> with the exact same configuration.
>>>>>>
>>>>>> During do_package I am getting an error that a dependency on
>>>>>> libGLESv2.so()(64bit) cannot be met. Adding mesa to RDEPENDS does =
not
>>>>>> resolve the issue. I can bypass it in the recipe by adding file-rd=
eps to
>>>>>> INSANE_SKIP. However, then when the rootfs is created libdnf compl=
ains
>>>>>> that the dependency on libGLES is not met and aborts.
>>>>>>
>>>>>> The application works just fine on the target if I copy it manuall=
y to
>>>>>> the rootfs but that's not the best thing to do. It should be packa=
ged
>>>>>> and installed.
>>>>>>
>>>>>> Unfortunately I don't understand well enough how these checks work=
 and
>>>>>> why they are complaining about it. Maybe somebody can shed some li=
ght on it.
>>>>> some libraries do not set SONAME in them, which can trip the shlibs=

>>>>> code. Can you
>>>>> check if libgles in question has SONAME encoded in its ELF header
>>>>>
>>>>>     readelf -d <lib> | grep SONAME
>>>>>
>>>>> might be what you can use to deduce it.
>>>> libGLESv2 in question on the target was built with YP:
>>>>
>>>>     0x000000000000000e (SONAME)             Library soname: [libGLES=
v2.so.2]
>>>>
>>>> The SDK that builds the application was built with the same YP setup=
=2E
>>>> That's why I am scratching my head.
>>> interesting, are you adding RDEPENDS on libgles2-mesa ?
>> Yes, but that does not satisfy the dependency:
>>
>> ERROR: virtuoso-0.1-r0 do_package_qa: QA Issue: /opt/virtuoso/virtuoso=

>> contained in package virtuoso requires libGLESv2.so()(64bit), but no
>> providers found in RDEPENDS:virtuoso? [file-rdeps]
> I see a potential problem here, the soname is libGLESv2.so.2 but the
> dependency its
> complaining about is libGLESv2.so()(64bit), ( you see the missing
> version number ?)
>
> Can you run
>
> readelf -d <binary name>  | grep NEEDED
>
> and see what libs are encoded in the ELF

Yes, I have. These are the libs:

 =C2=A00x0000000000000001 (NEEDED) Shared library: [libQt5Quick.so.5]
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
 =C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libGLESv2.so]
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

It's asking for libGLESv2.so. It's no problem on the target since it's=20
correctly resolved by ldd:

root@tgt-lcd7:/usr/lib# ldconfig -p |grep libGLES
 =C2=A0=C2=A0=C2=A0 libGLESv2.so.2 (libc6,x86-64) =3D> /lib64/libGLESv2.s=
o.2
 =C2=A0=C2=A0=C2=A0 libGLESv2.so.2 (libc6) =3D> /lib/libGLESv2.so.2
 =C2=A0=C2=A0=C2=A0 libGLESv2.so (libc6,x86-64) =3D> /lib64/libGLESv2.so
 =C2=A0=C2=A0=C2=A0 libGLESv1_CM.so.1 (libc6,x86-64) =3D> /lib64/libGLESv=
1_CM.so.1
 =C2=A0=C2=A0=C2=A0 libGLESv1_CM.so.1 (libc6) =3D> /lib/libGLESv1_CM.so.1=

 =C2=A0=C2=A0=C2=A0 libGLESv1_CM.so (libc6,x86-64) =3D> /lib64/libGLESv1_=
CM.so

However, I cannot wrap my head around why this would happen with a=20
binary that has been compiled and linked with the YP SDK that exactly=20
matches the rootfs of the target:

Target:

root@tgt-lcd7:/usr/lib# ls -l libGLES*
lrwxrwxrwx 1 root root=C2=A0=C2=A0=C2=A0 14 Mar=C2=A0 9=C2=A0 2018 libGLE=
Sv2.so -> libGLESv2.so.2
lrwxrwxrwx 1 root root=C2=A0=C2=A0=C2=A0 18 Mar=C2=A0 9=C2=A0 2018 libGLE=
Sv2.so.2 ->=20
libGLESv2.so.2.0.0
-rwxr-xr-x 1 root root 46792 Mar=C2=A0 9=C2=A0 2018 libGLESv2.so.2.0.0

SDK:

[rstreif@threaddy lib]$ ls -l libGLES*
lrwxrwxrwx. 1 rstreif rstreif=C2=A0=C2=A0=C2=A0 14 Aug 25 11:35 libGLESv2=
=2Eso ->=20
libGLESv2.so.2
lrwxrwxrwx. 1 rstreif rstreif=C2=A0=C2=A0=C2=A0 18 Aug 25 11:36 libGLESv2=
=2Eso.2 ->=20
libGLESv2.so.2.0.0
-rwxr-xr-x. 1 rstreif rstreif 46792 Aug 25 11:36 libGLESv2.so.2.0.0

Unfortunately I don't have the sources of the application otherwise I=20
would have YP build it. But the customer claims they are building it=20
with the SDK. I am trying to get to the bottom of their end too.


>
>> I can SKIP_INSANE file-rdeps but then I am getting the same issue when=

>> creating the rootfs with dnf.
>>
>> But in all fairness, I don't have control over the entire process. The=

>> customer builds the executable with the SDK I gave them. They give me
>> the executable to put in the rootfs.
>>
>>>>>> Thanks,
>>>>>> Rudi
>>>>>>
>>>>>>
>>>>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>>>> Links: You receive all messages sent to this group.
>>>>>> You automatically follow any topics you start or reply to.
>>>>>> View/Reply Online (#57898): https://lists.yoctoproject.org/g/yocto=
/message/57898
>>>>>> Mute This Topic: https://lists.yoctoproject.org/mt/93249287/199791=
4
>>>>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>>>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khe=
m@gmail.com]
>>>>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>>>>
>>>> --
>>>> Rudolf J Streif
>>>> CEO/CTO ibeeto
>>>> +1.855.442.3386 x700
>>>>
>> --
>> Rudolf J Streif
>> CEO/CTO ibeeto
>> +1.855.442.3386 x700
>>
--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------647761E2A718AB86AF00B820
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

--------------647761E2A718AB86AF00B820--

--TCLX9n2o0a0V0P75WDV2TLrTrMZn4nPoT--

--DY8zanv18av4g8g1cMWf5bQjZUE0UxfH6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmMJBQoFAwAAAAAACgkQjYyoKSczm3VK
NQf/WCToG7uuMpwzGmgDWNZ7c85PRVko2t3I23O1QF7UC5/tnFlgP+SlQYWaidrcsShL/rLITNXF
D/oAlMddRTd3VkpEnjkOg+UIoUlQYxAGM6IkoARSHYFB7bUPU9z5roGCzCsKB6YzvRakZTGunLzz
cMqxVtXSPeDo5mOFBNDL7/He6AaSMOzDTB5HzeE6THNrAvODp83RhkQYm8EaDWDO5L00Xe4thKnA
9Ye3o33JyuCJDcOGE77L1QZJraB4fc9AzdB5Fe7AETjyUj5thZeLr3saDM+FirzfBJmksQsxfRZO
kT3/Q+XAAJK50xN7EqJ1t+XJ9tp/zJr5fz5b6m82PQ==
=BB4b
-----END PGP SIGNATURE-----

--DY8zanv18av4g8g1cMWf5bQjZUE0UxfH6--

