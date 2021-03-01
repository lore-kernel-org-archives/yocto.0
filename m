Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web08.297.1614634128022813321
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Mar 2021 13:28:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=QdT6Ahy+;
 spf=neutral (domain: ibeeto.com, ip: 209.85.216.51, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pj1-f51.google.com with SMTP id jx13so454927pjb.1
        for <yocto@lists.yoctoproject.org>; Mon, 01 Mar 2021 13:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=to:references:from:autocrypt:subject:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=4tZGoYiQiNNCpRs/p721d4uWcjIjCBOPJ/DRet7zWxY=;
        b=QdT6Ahy+ouT7Lx0PbEY8Huupu5mDsLs6yU4y3iVFu4lO0VQnyrFamnqaOjJYDOwAcs
         JNjTH+5C5peHk/4UWnWZG+0c3wtF0W3OOvQl8bpPJ4LSvIep3gaKKDQwnTfYawCJ4+TZ
         uQdv3G+cIYp6FZp2jbcRTYloyDj924ElLoy754YMSTKDracUseT4dRHWILQ87VNYGGyZ
         brJ32ycSYm1AQ1RZM3MDBRgJHTgZd8KttMtOimbM1EtZa+L/1C+aQYhFRdlpKUrIkoGq
         ZdzE0R20Ll+ZIXpF+ZUsgLGirBfEfhV1Dqog6MsP/mTo1Anth12suKzDUgL2ffMXE5yu
         3s8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:references:from:autocrypt:subject:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=4tZGoYiQiNNCpRs/p721d4uWcjIjCBOPJ/DRet7zWxY=;
        b=qysDI8zwMllID0v+cxfkUMG9gO/EAHDowgB9+4jrPx+8cns+an6fcg3VkXMKn9DcIP
         VGDl5rOBlnGHQgrxd4XqDXclWCpoUMYkqAWKGwV08zs+FjwSvhuufNzWSa6vNgw5aePn
         0IGIyRMqNm4ZPI4XU9ADERuaYEy7lXk5w196+lWUFvOreSC3s1+SF1cvd71ia/wQR1zI
         ges584PlxC7Ahq85lQpFuDPWy411sbnF5Xd+HzW8zPtbyYu/VkwukGvBwkSdebCHIVZp
         KmpCZCQLU9BQWRy/SCYvurlLyIOWdYKhYuq4ihjxQZnZRNzLInLRxi1PqAOr44ReWXRN
         MvaA==
X-Gm-Message-State: AOAM533xDFg1qC/T2PE7Hi/PR92YMkdRkT6bvSXALzxd42ePC2P60a+m
	9//rNg8G0V81SBw77HtjYbOYsqYonAl1sq1i
X-Google-Smtp-Source: ABdhPJxWAsnslrZjDU8NYAsKO7IPN+NIa4UY53jOgu6mcDFJcnuMWxL0sBxyaUMpXwdotJ9w+3D0Ng==
X-Received: by 2002:a17:90a:4609:: with SMTP id w9mr900588pjg.69.1614634127114;
        Mon, 01 Mar 2021 13:28:47 -0800 (PST)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from [192.168.4.197] (ip72-220-244-209.sd.sd.cox.net. [72.220.244.209])
        by smtp.gmail.com with ESMTPSA id 134sm19040826pfc.113.2021.03.01.13.28.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Mar 2021 13:28:46 -0800 (PST)
To: jchludzinski@vivaldi.net, yocto@lists.yoctoproject.org
References: <c76aad67167ab26ff0d4bebe9848f0f0@vivaldi.net>
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
Subject: Re: [yocto] Kernel panic - not syncing: VFS: Unable to mount root fs ...
Message-ID: <98e54679-9f9f-82bc-b273-411da4f8d383@ibeeto.com>
Date: Mon, 1 Mar 2021 13:28:44 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <c76aad67167ab26ff0d4bebe9848f0f0@vivaldi.net>
X-Groupsio-MsgNum: 52527
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="GxtR7Kr43TPelqin92z8DgPY9GigCmGax"

--GxtR7Kr43TPelqin92z8DgPY9GigCmGax
Content-Type: multipart/mixed; boundary="nNIkZbvoMpO0uZ5EE1ZOnFTq67bDoeh1e";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: jchludzinski@vivaldi.net, yocto@lists.yoctoproject.org
Message-ID: <98e54679-9f9f-82bc-b273-411da4f8d383@ibeeto.com>
Subject: Re: [yocto] Kernel panic - not syncing: VFS: Unable to mount root fs
 ...
References: <c76aad67167ab26ff0d4bebe9848f0f0@vivaldi.net>
In-Reply-To: <c76aad67167ab26ff0d4bebe9848f0f0@vivaldi.net>

--nNIkZbvoMpO0uZ5EE1ZOnFTq67bDoeh1e
Content-Type: multipart/mixed;
 boundary="------------5248DDE44DA1BE483C444242"
Content-Language: en-US

--------------5248DDE44DA1BE483C444242
Content-Type: multipart/alternative;
 boundary="------------54CDA7A0143BB0AB2A5C79FE"

--------------54CDA7A0143BB0AB2A5C79FE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

On 3/1/21 1:16 PM, jchludzinski via lists.yoctoproject.org wrote:
> I rebuilt socfpga_arria10_socdk_sdmmc.dtb in ./sd_card/sdfs/ using=20
> modified files:
>
> =C2=A0 =C2=A0arch/arm/boot/dts/socfpga_arria10_socdk_sdmmc.dts
> =C2=A0 =C2=A0arch/arm/boot/dts/socfpga_arria10_socdk.dtsi
>
> When I try booting I now get:
Are you saying it worked before and now it does not anymore? Did you=20
make changes to the device tree?
>
> *Kernel panic - not syncing: VFS: Unable to mount root fs on=20
> unknown-block(179,2)*
>
> What is this telling me?
Pretty much exactly what the message is saying: the kernel cannot find=20
the root file system to mount.
> I searched online and read something about the boot command in=20
> extlinux/extlinux.conf: 'root=3D/dev/mmcblk0p*2*'?
> The '*2*' is the problem somehow?

You found the correct item: the kernel command line parameter passed by=20
the boot loader (presumably u-boot in your case) for the root file=20
system partition. The partition number could be the problem if the root=20
file system is not on partition 2. It could also be that the device is=20
incorrect (that would be the number 0). It could also be that it is the=20
correct device and partition but no root file system has been copied to it=
.

You would need to use the u-boot monitor commands to track it down.

Please bear with me here. I don't have that particular board and you=20
only provided very little information.

:rjs

>
>=20
>
--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------54CDA7A0143BB0AB2A5C79FE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Hi,<br>
    </p>
    <div class=3D"moz-cite-prefix">On 3/1/21 1:16 PM, jchludzinski via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:c76aad67167ab26ff0d4bebe9848f0f0@vivaldi.net">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUT=
F-8">
      <div class=3D"v1pre">I rebuilt socfpga_arria10_socdk_sdmmc.dtb in
        ./sd_card/sdfs/ using modified files:<br>
        <br>
        =C2=A0 =C2=A0arch/arm/boot/dts/socfpga_arria10_socdk_sdmmc.dts<br>
        =C2=A0 =C2=A0arch/arm/boot/dts/socfpga_arria10_socdk.dtsi<br>
        <br>
        When I try booting I now get:<br>
      </div>
    </blockquote>
    Are you saying it worked before and now it does not anymore? Did you
    make changes to the device tree?<br>
    <blockquote type=3D"cite"
      cite=3D"mid:c76aad67167ab26ff0d4bebe9848f0f0@vivaldi.net">
      <div class=3D"v1pre"><br>
        <strong>Kernel panic - not syncing: VFS: Unable to mount root fs
          on unknown-block(179,2)</strong><br>
        <br>
        What is this telling me?</div>
      <div class=3D"v1pre">=C2=A0</div>
    </blockquote>
    Pretty much exactly what the message is saying: the kernel cannot
    find the root file system to mount.<br>
    <blockquote type=3D"cite"
      cite=3D"mid:c76aad67167ab26ff0d4bebe9848f0f0@vivaldi.net">
      <div class=3D"v1pre">I searched online and read something about the
        boot command in extlinux/extlinux.conf: 'root=3D/dev/mmcblk0p<stro=
ng>2</strong>'?</div>
      <div class=3D"v1pre">The '<strong>2</strong>' is the problem
        somehow?</div>
    </blockquote>
    <p>You found the correct item: the kernel command line parameter
      passed by the boot loader (presumably u-boot in your case) for the
      root file system partition. The partition number could be the
      problem if the root file system is not on partition 2. It could
      also be that the device is incorrect (that would be the number 0).
      It could also be that it is the correct device and partition but
      no root file system has been copied to it.</p>
    <p>You would need to use the u-boot monitor commands to track it
      down.</p>
    <p>Please bear with me here. I don't have that particular board and
      you only provided very little information.</p>
    <p>:rjs<br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:c76aad67167ab26ff0d4bebe9848f0f0@vivaldi.net">
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

--------------54CDA7A0143BB0AB2A5C79FE--

--------------5248DDE44DA1BE483C444242
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

--------------5248DDE44DA1BE483C444242--

--nNIkZbvoMpO0uZ5EE1ZOnFTq67bDoeh1e--

--GxtR7Kr43TPelqin92z8DgPY9GigCmGax
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmA9XIwFAwAAAAAACgkQjYyoKSczm3UL
2Af9FSI9XQWDmCqLrYqqLcUfg065hZByqoYmPg488VRtncKB+PgtUoUGRD/82AKrQ2Ptq7Ob4S60
qzrXEHDGOKE52/Fs0GSVqQtqUqSlO6UuB8KaHk3TMtZv8oaHjUcTNvglkbSd9/8DaP5cMQ352BBW
O5rpNaJqcv+gMm7TM0g/8SylOj1Uu1PFl2oua6PuBVAKCYGfNyPnlNtFk2VBXsnJBY7iTbPajHq1
YV4ViKHdePt5NSHswJIOVoFLxawqM2ygpafQi5aFzsW0wiRZQTA9S7UtLevMkRrsXHEOHKYxcJLH
JA3P+d9GpFvINvxTGYa9myPHxSCeRWwnCJLLCmElqw==
=MSZa
-----END PGP SIGNATURE-----

--GxtR7Kr43TPelqin92z8DgPY9GigCmGax--
