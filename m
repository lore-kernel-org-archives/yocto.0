Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.36773.1606147022762883259
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Nov 2020 07:57:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=fKLGtLeM;
 spf=neutral (domain: ibeeto.com, ip: 198.145.29.25, mailfrom: rudolf.streif@ibeeto.com)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C620D38C086B
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2020 15:57:01 +0000 (UTC)
Received: by mail-pf1-f178.google.com with SMTP id v12so15260802pfm.13
        for <yocto@yoctoproject.org>; Mon, 23 Nov 2020 07:57:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=to:cc:references:from:autocrypt:subject:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=PdnnIJy0ACUtenAOdvjQjmjztviuKB+uLWvCypdtjqs=;
        b=fKLGtLeM2TNtYIX1zEK1+qNXivpxIgViI2gCvvGM6TPOXiurWtG7ya1C4ZMUh83a/M
         C3JsYsWHAc2e9tOOj4ys85mL7g5r+NsbVKlisU/drj0Y2m5l6w6JyFa4OLvT/JdHSdy4
         uZJkA5Gc0879Qs+1y4tLNi8BlMA+l0Zk7hJ+50d4M4+BUUeSYm6ESyYZIQDGwuTKgv2/
         uVNe2FUp+f5qo30+CMwppwoTLZrVYUTz4i7Dbe7MrToIzmJF7jJ4YHQC6Eq3IFr4eYB5
         0Zqp5cgegsnYt8JUfweuz9SW6P0Jevf7/XJBJst4g2lsK0GsD8CmKmM8Xeas4Q2NNpc7
         tchQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:references:from:autocrypt:subject
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=PdnnIJy0ACUtenAOdvjQjmjztviuKB+uLWvCypdtjqs=;
        b=cYB7z58C6PEcjjkY4b4F/mxcDN0iQ8TKalllnj4v2pt5ZoBMhO9g91TzS3dMZ0bZaa
         EnGTNOiaRt9gJwzV/4DKKicCPXDABpsEOwxysXYhdyGFXvd4xUgVGzjwP81woW5STxsc
         CyGkk6Ra7X/tv6VHO76bn1mWu8FUQNFjgRM65UyQ4nWXRes1aAqcPexFqUHbjup+Ar5i
         WAN9NcY+KevAd4AeT/3KVpiVuBW1+cZXhb6FTXC9lnv0QUqWu+LZ3xE5Ke4tbDgnhZ/O
         otTVhGHQmCNJKq70er0bKzfhu2LTPgt2qANufh28WTuMIe2RzMfOkTk7wLv2eBE6xvVu
         wGqQ==
X-Gm-Message-State: AOAM532xy3qqfNwyF3ivzgrGXY+Sln3auC8UawhlpNRovVhdSPCBuxIe
	ffZNMbtT4etfpuTEFtMtqviWZBZESW2WsiMx
X-Google-Smtp-Source: ABdhPJzJpBmvz4hhzumBPEyTtKuboasVARCFE/evDamjoHyFu5IHS77NPCp3kpvwL8tquj98cYZG6w==
X-Received: by 2002:a62:d108:0:b029:163:d3cf:f00e with SMTP id z8-20020a62d1080000b0290163d3cff00emr109508pfg.43.1606147020827;
        Mon, 23 Nov 2020 07:57:00 -0800 (PST)
Received: from [192.168.4.197] (ip68-8-180-115.sd.sd.cox.net. [68.8.180.115])
        by smtp.gmail.com with ESMTPSA id i6sm13548148pjt.49.2020.11.23.07.56.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2020 07:56:59 -0800 (PST)
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <0fefb48d-4531-5424-796f-ffd02c40dd0d@ibeeto.com>
 <CAMKF1sp+xvERYiPsYcPfppovhuWMMdugXtWxY+GjA5nYx2ed3g@mail.gmail.com>
From: "Rudolf J Streif" <rudolf.streif@ibeeto.com>
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
Subject: Re: [yocto] Hardware video decode on RPi3
Message-ID: <b5df5124-171d-ea68-06da-7e46adf2eb67@ibeeto.com>
Date: Mon, 23 Nov 2020 07:56:58 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sp+xvERYiPsYcPfppovhuWMMdugXtWxY+GjA5nYx2ed3g@mail.gmail.com>
X-Groupsio-MsgNum: 51529
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="PRLFoWzbfmeEfbpT85BF4EKjlzeJh4RY4"

--PRLFoWzbfmeEfbpT85BF4EKjlzeJh4RY4
Content-Type: multipart/mixed; boundary="FrXxJnaaxEACpR5ry1XpIcLHTY6566Fkf";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <b5df5124-171d-ea68-06da-7e46adf2eb67@ibeeto.com>
Subject: Re: [yocto] Hardware video decode on RPi3
References: <0fefb48d-4531-5424-796f-ffd02c40dd0d@ibeeto.com>
 <CAMKF1sp+xvERYiPsYcPfppovhuWMMdugXtWxY+GjA5nYx2ed3g@mail.gmail.com>
In-Reply-To: <CAMKF1sp+xvERYiPsYcPfppovhuWMMdugXtWxY+GjA5nYx2ed3g@mail.gmail.com>

--FrXxJnaaxEACpR5ry1XpIcLHTY6566Fkf
Content-Type: multipart/mixed;
 boundary="------------ED9F1FB675FD656B64F63AF9"
Content-Language: en-US

--------------ED9F1FB675FD656B64F63AF9
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Thanks, Khem.

On 11/22/20 11:15 PM, Khem Raj wrote:
> On Thu, Nov 19, 2020 at 7:38 PM Rudolf J Streif
> <rudolf.streif@ibeeto.com> wrote:
>> I am trying to play back mp4 video (venerable Big Buck Bunny at this
>> time) on RPi3.
>>
>> I added gstreamer1.0, gstreamer1.0-omx and the plugins to the image.
>>
>> libgstomx.so is installed in usr/lib/gstreamer-1.0 on target.
>>
>> However, gst-inspect-1.0 | grep omx does not return any results.
>>
>> Consequently,
>>
>> gst-launch-1.0  filesrc
>> location=3D"/home/root/kiosk/kiosk/videos/bunny.mp4" ! qtdemux ! h264pa=
rse
>> ! omxh264dec ! kmssink
>> WARNING: erroneous pipeline: no element "omxh264dec"
>>
>> I guess I am missing something somewhere but I don't know what.
>>
> are you using userland for graphics or vc4 ?

Yes, I am. I actually discovered what the problem was: I built my system=
=20
for 64-bit but Broadcom's proprietary libraries are 32-bit. I switched=20
the system to 32-bit and now gst-inspect shows omx support.

Unfortunately, decoding is still not working. This works:

gst-launch-1.0=C2=A0 -v videotestsrc ! omxh264enc ! h264parse ! avdec_h264=
 !=20
autovideosink

However, this does not:

gst-launch-1.0=C2=A0 -v videotestsrc ! omxh264enc ! h264parse ! omxh264dec=
 !=20
autovideosink

I also tried with kmssink with the same results.

I am using EGLFS backend. It appears to me that there is something off=20
with the omxh264dec decoder plugin passing the decoded buffers on to the=
=20
output sink. Unfortunately, I have not been able to figure out what that=
=20
could be.

Ultimately, this would go into a Qt application. I have never had any=20
issues with EGLFS and Qt hence I would be reluctant to switch the=20
backend to Wayland/Weston or X11. But of course I also don't know if=20
omxh264dec would work with either one of those backends.

>> Thanks,
>> Rudi
>>
>>
>>=20
>>
--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------ED9F1FB675FD656B64F63AF9
Content-Type: application/pgp-keys;
 name="OpenPGP_0x8D8CA82927339B75.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="OpenPGP_0x8D8CA82927339B75.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsBNBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvDQpe=
+
Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ/Qymy+7=
C
bh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969cQD/S9LNndn=
K
5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM3sPiHrF+Y2HTdK7=
j
7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEBAAHNKlJ1ZG9sZiBKIFN=
0
cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPsLAdwQTAQgAIQUCWFAUBAIbAwULCQgHAgY=
V
CAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf03GsVMG6C5QOLaPx6rOgj5qexCH3=
r
fYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBktxioE384/51QTIfCmW8ZG5X0cMC5d38=
L
Fvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xllpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR8=
4
ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+wXl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x=
5
LZhUhGYoqbYwNy9imoBkUAZkbbViNOtXzaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjV=
L
mLHvzsBNBFhQFAQBCADXoLKCuF485eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTq=
k
3fb9+Ao6C6IliC9ZRXyAVLD/RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIF=
p
PBpxHRrZnDdEd5IKsy+zw6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJS=
H
WMBh0OMKDeBik5wlsvtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mC=
B
CZ+IKhBQR36vtUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAHCwF8EGAEIAAk=
F
AlhQFAQCGwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LY=
U
pLNjs4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9Mby=
E
fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8TzYf9=
m
2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/NlouvceP41tsC5=
d
axZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/ANROZj4g=3D=
=3D
=3DLHwf
-----END PGP PUBLIC KEY BLOCK-----

--------------ED9F1FB675FD656B64F63AF9--

--FrXxJnaaxEACpR5ry1XpIcLHTY6566Fkf--

--PRLFoWzbfmeEfbpT85BF4EKjlzeJh4RY4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl+728oFAwAAAAAACgkQjYyoKSczm3XS
+Af/XK5HX0HXMgAZXdk+JP5KAokx8a8VMEAZ6C/RoaNQVad7sljhM09BViOMRAgBvFmjXZuc1C1v
YRsIoDlNr3uPg05d+z5WCrB4lhCkY++7XRh4+xA3JtJefnfcSjAUJcse8mMUkcuotRQ5tyaaS3iI
vrWoye0ymh00kg3FcW5AmOSujlRtMaDGnTshbEeTdexWxEgCbcDr/iccXd8PqBDH93/uKzsRqBa/
yFD1l4juAJNsR0RrkcdCJJmbC/CxXAsN98fUqi8ZUgGXSnqmU+A72NFCMaD4xnl/qNCC1S3ENS4R
5rTizfgByQLeUoIjofR564XD9n7DrOZIV+q/h8aIIA==
=YEdb
-----END PGP SIGNATURE-----

--PRLFoWzbfmeEfbpT85BF4EKjlzeJh4RY4--
