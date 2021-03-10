Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web08.2213.1615337103691771514
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 16:45:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=DtUVR2q6;
 spf=neutral (domain: ibeeto.com, ip: 209.85.210.177, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pf1-f177.google.com with SMTP id b23so2211845pfo.8
        for <yocto@lists.yoctoproject.org>; Tue, 09 Mar 2021 16:45:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=mbE2Zpp0+KgFDEWxVsQ7+muQelf730bsOEuhMz/1Ao0=;
        b=DtUVR2q6Fb6o2g8vpUWyFiCiCSadFVmdI59qyYvhzx8LiB+WfEYtmnkVTiC6vcxv3H
         2LKyoVeBLj044mem7e5gEoxBiQHbKeaUGcaKs5mpp/tPmuszBG7MLnZzV7vD97q/n0zJ
         hDF2MHfdd41o6jMMbL7HNs491N5jUOUe6dvBZrHC7AxiJgVHyKSZEh6F7E7UA78nLTFQ
         yu/eQ4tE6d9WVaNoFEprToAfOz+GOkHcWE+1JXW6fBXOeEYHmknNmoBMHJ+a8xI9E+Tw
         kd6Gv7iGrbjnFn5DuOAwLCvvD7g/Y6k/di+xmbFKK47BDSnHWOKRBdiSwD54uUfKWQc/
         xb7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=mbE2Zpp0+KgFDEWxVsQ7+muQelf730bsOEuhMz/1Ao0=;
        b=ioXpjqO1JUCvCJTtIowE8tRATk/aVD7sj202OC9hyf60b5taIZCNR8GlBmlLZm3/qZ
         1M50oNQVE+M0h6E8tIv0PfEQB/XdWTCTZ6EFhqI9WJ+UxCpQIZmMh0Y18qILYPQ/W80J
         GjyyugdnnCSwl6Ba1fX63uOF/HMiiyoxK3QQqzUdwT7EqM5i/c937OHdgsTnto0Vf5d7
         ef478DK7L0V2afsSK6sUzlIPb1zjKzQMaOiQWm5XP2cmQS97mzmBUijO1ty6GmccMcJC
         YQrW8lqNvZSqy9DcNmGzAISj4HUc+snwK77/XMIJ4HVdmAVG6LB0Ean+HyOfjWknittm
         QkuA==
X-Gm-Message-State: AOAM532LwCi5ftg/BRmi74AleSjME9CUyYou86b7IQvrkrzHaLuq86lq
	3j6uxOjv4uivu1PdxZB5jMNnPwI1LSb4oqX4
X-Google-Smtp-Source: ABdhPJxEVVG2CrjOEeWwRQtV0qapj+BuxVmLqaY4d7n1z/poCatombMlf8t77lPdK3iZzvbE90BuBA==
X-Received: by 2002:aa7:9205:0:b029:1ec:8eab:7ca3 with SMTP id 5-20020aa792050000b02901ec8eab7ca3mr501616pfo.20.1615337102625;
        Tue, 09 Mar 2021 16:45:02 -0800 (PST)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from [192.168.4.197] (ip72-220-244-209.sd.sd.cox.net. [72.220.244.209])
        by smtp.gmail.com with ESMTPSA id b9sm13671042pgn.42.2021.03.09.16.45.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Mar 2021 16:45:01 -0800 (PST)
Subject: Re: [yocto] Assign IP address at boot time
To: jchludzinski@vivaldi.net, Yocto <yocto@lists.yoctoproject.org>
References: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
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
Message-ID: <5bce46d6-e995-ea21-9162-5d15b95afa29@ibeeto.com>
Date: Tue, 9 Mar 2021 16:45:00 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
X-Groupsio-MsgNum: 52637
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="c40UpDpQRgLiSeTiW8pbqqxbZ7kocggRN"

--c40UpDpQRgLiSeTiW8pbqqxbZ7kocggRN
Content-Type: multipart/mixed; boundary="IHmQBpw4KNXS2kSQUQBk27XTpoRMefDIV";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: jchludzinski@vivaldi.net, Yocto <yocto@lists.yoctoproject.org>
Message-ID: <5bce46d6-e995-ea21-9162-5d15b95afa29@ibeeto.com>
Subject: Re: [yocto] Assign IP address at boot time
References: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
In-Reply-To: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>

--IHmQBpw4KNXS2kSQUQBk27XTpoRMefDIV
Content-Type: multipart/mixed;
 boundary="------------1E72FCA3D6DE11567C301384"
Content-Language: en-US

--------------1E72FCA3D6DE11567C301384
Content-Type: multipart/alternative;
 boundary="------------FB708EAD3740F6F59D43B59D"

--------------FB708EAD3740F6F59D43B59D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi there,

On 3/9/21 1:27 PM, jchludzinski via lists.yoctoproject.org wrote:
> Where do I assign a static IP address to my sole network interface?
>
That depends on whether or not you are using a network manager and if so=
=20
which one.

You haven't told us much about your board and it's network interfaces=20
and how you built your system.

> I tried using the Linux boot parameters (in extlinux.conf):
>
> *LABEL Arria10 SOCDK SDMMC*
> *=C2=A0=C2=A0=C2=A0=C2=A0KERNEL ../zImage*
> *=C2=A0=C2=A0=C2=A0=C2=A0FDT ../socfpga_arria10_phead.dtb*
> *=C2=A0=C2=A0=C2=A0=C2=A0APPEND root=3D/dev/mmcblk0p2 rw rootwait earlyp=
rintk=20
> console=3DttyS0,115200n8 ip=3D192.168.0.101:255.255.255.0:eth0*
> Then I tried editing: /etc/network/interfaces
> *iface eth0 inet static *
> *address 192.168.0.101*
> *netmask 255.255.255.0*
> Both failed. Where do I go?

To start, do you have the driver required for your network interface?=20
You can use ifconfig -a to see if your network interface is detected by=20
the kernel. You should also look at the kernel log if the network=20
interface is configured.

:rjs

>
>=20
>
--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------FB708EAD3740F6F59D43B59D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Hi there,<br>
    </p>
    <div class=3D"moz-cite-prefix">On 3/9/21 1:27 PM, jchludzinski via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUT=
F-8">
      <div class=3D"v1pre">Where do I assign a static IP address to my
        sole network interface?<br>
        <br>
      </div>
    </blockquote>
    <p>That depends on whether or not you are using a network manager
      and if so which one.</p>
    <p>You haven't told us much about your board and it's network
      interfaces and how you built your system.</p>
    <blockquote type=3D"cite"
      cite=3D"mid:5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net">
      <div class=3D"v1pre">I tried using the Linux boot parameters (in
        extlinux.conf):<br>
        <br>
        <strong><span style=3D"font-family: 'courier new', courier,
            monospace;">LABEL Arria10 SOCDK SDMMC</span></strong><br>
        <strong><span style=3D"font-family: 'courier new', courier,
            monospace;">=C2=A0=C2=A0=C2=A0=C2=A0KERNEL ../zImage</span></s=
trong><br>
        <strong><span style=3D"font-family: 'courier new', courier,
            monospace;">=C2=A0=C2=A0=C2=A0=C2=A0FDT ../socfpga_arria10_phe=
ad.dtb</span></strong><br>
        <strong><span style=3D"font-family: 'courier new', courier,
            monospace;">=C2=A0=C2=A0=C2=A0=C2=A0APPEND root=3D/dev/mmcblk0=
p2 rw rootwait
            earlyprintk console=3DttyS0,115200n8
            ip=3D192.168.0.101:255.255.255.0:eth0</span></strong></div>
      <div class=3D"v1pre">=C2=A0</div>
      <div class=3D"v1pre">Then I tried editing: /etc/network/interfaces</=
div>
      <div class=3D"v1pre">=C2=A0</div>
      <div class=3D"v1pre" style=3D"padding-left: 30px;"><strong><span
            style=3D"font-family: 'courier new', courier, monospace;">ifac=
e
            eth0 inet static </span></strong><br>
        <strong><span style=3D"font-family: 'courier new', courier,
            monospace;">address 192.168.0.101</span></strong><br>
        <strong><span style=3D"font-family: 'courier new', courier,
            monospace;">netmask 255.255.255.0</span></strong></div>
      <div class=3D"v1pre">=C2=A0</div>
      <div class=3D"v1pre">Both failed. Where do I go?</div>
    </blockquote>
    <p>To start, do you have the driver required for your network
      interface? You can use ifconfig -a to see if your network
      interface is detected by the kernel. You should also look at the
      kernel log if the network interface is configured.</p>
    <p>:rjs<br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net">
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </body>
</html>

--------------FB708EAD3740F6F59D43B59D--

--------------1E72FCA3D6DE11567C301384
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

--------------1E72FCA3D6DE11567C301384--

--IHmQBpw4KNXS2kSQUQBk27XTpoRMefDIV--

--c40UpDpQRgLiSeTiW8pbqqxbZ7kocggRN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmBIFowFAwAAAAAACgkQjYyoKSczm3WK
mwf6Ao+Db0z2sf4NGRvOp01me6i/KaPkMctyUpnXTJaBrFlS/j+CcUuEgpCbWkb8cDoqqfsdkb0p
9V8C1HtGsBaWuLrh/93TpRnYCILFYnUfkqNCriuD0JB79bVpkAOZKTXKe4Dh17ddV+uklttEeW3a
z+1/Iwws17BAXNNu5hklhrrNKm6eGL5MF7GnxGeBuJ7OoDwEICqhXExUd6x+mUddL9L5Svv7V7CQ
mhFl8PLTeONC1Ztm+aGiNDtkDrdhigHShYQOnfGHQ/zI1nW+NZeLy07shd1F2JroS3vyPwx1E7KA
Y2kgN31i2S3lhdzYr41vvdUWuUMHrOfM8dHBZ17wvw==
=5qku
-----END PGP SIGNATURE-----

--c40UpDpQRgLiSeTiW8pbqqxbZ7kocggRN--
