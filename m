Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web09.826.1615420210676505253
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Mar 2021 15:50:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=lqOQVt+R;
 spf=neutral (domain: ibeeto.com, ip: 209.85.215.181, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pg1-f181.google.com with SMTP id v14so5543005pgq.2
        for <yocto@lists.yoctoproject.org>; Wed, 10 Mar 2021 15:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=+poNVAXwUXaR6nojF/5BZOIZ044Ugq5YwtvvrJa4cKQ=;
        b=lqOQVt+RTpOy3mFlhW8vhsrdPx/7JC8weXBYUbQRu/xzQ0cq83EuvXKuHwDx7M2MS/
         evEb1AN4akg8nNvqtMitndIo0pT26gjYYVQnSnak0C8nASrxam7xRmnwcbaKKPmKg7QR
         pG6JDpBGgNNa4CRct9o9ZbzM2pAtJp9nlUP7rJloGrCtVUNuIAl0NsJKq0oezVMNFLqp
         gHBlsWnowrbLIzXvKZ/VgEOIe7Wh3/IT31wTKhS/j1AQ2YhiFr8+k1EEGhfcpGU3DuMN
         L0rjV9mpqfuqT0NfnXXEE2dt1bE6YNTfORJH1IPjF+h/jibqLh95/uDKNdouPKq4G0aD
         Y4qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=+poNVAXwUXaR6nojF/5BZOIZ044Ugq5YwtvvrJa4cKQ=;
        b=Te5Mshk1b75FvsdTfXFN2K4ipuenEG+H2tGlvbkJ6p4EauoBhogh48PChK1Q1u1hXs
         Z9SvOxWZzFz99C+fP8QrtCcR5JdcRb784mlVxs7HfJigpZ4sUH6ts1upEmONvNXVWH3D
         GujMEN2DqfuAsnaR+mr5Esrili8ZrCcXdyp3cS8wBylIvTykISAYB2f7rc1L2U8O71TY
         wIkpfD6W2gPBeLHk85C9DXh0oAidiPsoNZdGcJMMrdLx9Sh4/22AH24yG2eUjktud0U5
         dkFBiNcJsvBOJl1NwDOT+DJUsh4Fw+Cc8evo5mEsYhwCkvCM+WeS5odFWtGN+7gU9rVz
         WzrQ==
X-Gm-Message-State: AOAM530AqMgR4rwDN8RGewHyMNYGhyl/SkKvrfKPWwb/e4TaSJbjY+bE
	Yps9VD6iOLN4Z6ZQnJ2ZHrdhB5nAlE+qxh7M
X-Google-Smtp-Source: ABdhPJxIyqwXwJhaWz1R7q1Xn3ol0LaKJiXBRucby7ciNDqPfocFEwBjemZj79RGkLPa6lmWLQBqlw==
X-Received: by 2002:a63:704:: with SMTP id 4mr4779423pgh.411.1615420209513;
        Wed, 10 Mar 2021 15:50:09 -0800 (PST)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from [192.168.4.197] (ip72-220-244-209.sd.sd.cox.net. [72.220.244.209])
        by smtp.gmail.com with ESMTPSA id x7sm561156pfp.23.2021.03.10.15.50.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 15:50:08 -0800 (PST)
Subject: Re: [yocto] Assign IP address at boot time
To: jchludzinski <jchludzinski@vivaldi.net>
Cc: Yocto <yocto@lists.yoctoproject.org>
References: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
 <5bce46d6-e995-ea21-9162-5d15b95afa29@ibeeto.com>
 <8878b4515215b5d3ed686be6cb8a7122@vivaldi.net>
 <3421258b-6b1e-3dd6-2d75-e66b0bb989c3@ibeeto.com>
 <7d3df13429d227106286f966cdcbd501@vivaldi.net>
 <e7f9f7da-b919-1b65-90f1-e8d892acd2ce@ibeeto.com>
 <0549f39814132d3d025fa22634c88f0e@vivaldi.net>
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
Message-ID: <06146634-49f5-d665-6e2b-7169564748dc@ibeeto.com>
Date: Wed, 10 Mar 2021 15:50:07 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <0549f39814132d3d025fa22634c88f0e@vivaldi.net>
X-Groupsio-MsgNum: 52657
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="U5cJkf21yv7M1eSxGigyGNO4KHNY608Qz"

--U5cJkf21yv7M1eSxGigyGNO4KHNY608Qz
Content-Type: multipart/mixed; boundary="x7dHIMPGaGoFjR323oJ2Kelaj9KqhAPph";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: jchludzinski <jchludzinski@vivaldi.net>
Cc: Yocto <yocto@lists.yoctoproject.org>
Message-ID: <06146634-49f5-d665-6e2b-7169564748dc@ibeeto.com>
Subject: Re: [yocto] Assign IP address at boot time
References: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
 <5bce46d6-e995-ea21-9162-5d15b95afa29@ibeeto.com>
 <8878b4515215b5d3ed686be6cb8a7122@vivaldi.net>
 <3421258b-6b1e-3dd6-2d75-e66b0bb989c3@ibeeto.com>
 <7d3df13429d227106286f966cdcbd501@vivaldi.net>
 <e7f9f7da-b919-1b65-90f1-e8d892acd2ce@ibeeto.com>
 <0549f39814132d3d025fa22634c88f0e@vivaldi.net>
In-Reply-To: <0549f39814132d3d025fa22634c88f0e@vivaldi.net>

--x7dHIMPGaGoFjR323oJ2Kelaj9KqhAPph
Content-Type: multipart/mixed;
 boundary="------------1694B02B6A3B7FFF29D67BBF"
Content-Language: en-US

--------------1694B02B6A3B7FFF29D67BBF
Content-Type: multipart/alternative;
 boundary="------------A4CF23ADDDA399FE7FE8A570"

--------------A4CF23ADDDA399FE7FE8A570
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 3/10/21 1:32 PM, jchludzinski wrote:
>> Create the file /etc/systemd/network/eth0.conf:
>>
>> [Match]
>> Name=3Deth0
>> [Network]
>> Address=3D<ip>
>> Gateway=3D<ip>
>> DNS=3D<ip>
>
> That didn't work BUT editing /lib/systemd/network/80-wired.network
> [Match]
> Name=3Den* eth*
> KernelCommandLine=3D!nfsroot
>
> [Match]
> Name=3Deth0
> [Network]
> Address=3D192.168.0.101/24
> #Gateway=3D<ip>
> #DNS=3D<ip>
>
> [Network]
> DHCP=3Dno
>
> [DHCP]
> #RouteMetric=3D10
> #ClientIdentifier=3Dmac
> ... did work, after:
> *root@arria10:~#* /systemctl restart systemd-networkd/
Preferred method for local configuration is using /etc/systemd/network.=20
However, the probable reason why it did not work is that the file should =

be eth0.network. The name of the file(s) do not matter that much. The=20
extension does though.

--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------A4CF23ADDDA399FE7FE8A570
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
    <div class=3D"moz-cite-prefix">On 3/10/21 1:32 PM, jchludzinski wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:0549f39814132d3d025fa22634c88f0e@vivaldi.net">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"pre" style=3D"margin: 0; padding: 0; font-family:
        monospace">
        <blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left:=

          #1010ff 2px solid; margin: 0">Create the file
          /etc/systemd/network/eth0.conf:<br>
          <br>
          [Match]<br>
          Name=3Deth0<br>
          [Network]<br>
          Address=3D&lt;ip&gt;<br>
          Gateway=3D&lt;ip&gt;<br>
          DNS=3D&lt;ip&gt;</blockquote>
        <br>
        That didn't work BUT editing
        /lib/systemd/network/80-wired.network<br>
        <pre style=3D"padding-left: 30px;">[Match]
Name=3Den* eth*
KernelCommandLine=3D!nfsroot

[Match]
Name=3Deth0
[Network]
Address=3D192.168.0.101/24
#Gateway=3D&lt;ip&gt;
#DNS=3D&lt;ip&gt;

[Network]
DHCP=3Dno

[DHCP]
#RouteMetric=3D10
#ClientIdentifier=3Dmac
</pre>
        ... did work, after:</div>
      <div class=3D"pre" style=3D"margin: 0; padding: 0; font-family:
        monospace"><strong>root@arria10:~#</strong> <em>systemctl
          restart systemd-networkd</em></div>
    </blockquote>
    Preferred method for local configuration is using
    /etc/systemd/network. However, the probable reason why it did not
    work is that the file should be eth0.network. The name of the
    file(s) do not matter that much. The extension does though.<br>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </body>
</html>

--------------A4CF23ADDDA399FE7FE8A570--

--------------1694B02B6A3B7FFF29D67BBF
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

--------------1694B02B6A3B7FFF29D67BBF--

--x7dHIMPGaGoFjR323oJ2Kelaj9KqhAPph--

--U5cJkf21yv7M1eSxGigyGNO4KHNY608Qz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmBJWy8FAwAAAAAACgkQjYyoKSczm3WW
LQf/YdenCfjQ3dBFH1M8Sm/3Qr3ssWgpta2H7puW21V/x3aZ1bvzL13ScEUmMcRLDzJAmq2+NxbT
Bpl30K3d0bQG447bmVq4BXv0VXwerLqdHn6bNK2pS/epd8IttRLhX3T7M8lBvvDuOYVl4EYPjTTs
hWPKNXwcXfz28hINuJ9EXORMOoTtIzXSkTH6pHNK7aMiZmanBbZK3B0C/IPp1j0rAJxATSc9Namm
yOXD5WI9Z/N7/NK16ebpCL1Ibm2C5M2W3Euszza+sSmffpQIJcLm4sHUqbom6hQBZc4imh1tw57h
SSL+QCEj1JqrDT9UDCZP5uEsm5SenEVleqzw9X+2Fw==
=TQhk
-----END PGP SIGNATURE-----

--U5cJkf21yv7M1eSxGigyGNO4KHNY608Qz--
