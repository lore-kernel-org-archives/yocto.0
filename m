Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web11.217.1615502529080962208
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Mar 2021 14:42:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=YwoQI20a;
 spf=neutral (domain: ibeeto.com, ip: 209.85.216.46, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pj1-f46.google.com with SMTP id lr10-20020a17090b4b8ab02900dd61b95c5eso7545926pjb.4
        for <yocto@lists.yoctoproject.org>; Thu, 11 Mar 2021 14:42:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=X5CTGAMN+APBpSVgBRm7cOxM3jH0cRc1Ibrrq9q9jPQ=;
        b=YwoQI20a+iE6wlZLFmk3KuD9ghmCOoPHyT6k8p6UnmpvTJigql7GnvZZ2uB2q9bd/F
         pZiTIX+RIavKM3Q9s5DMCKRGnUrDk48AyE28WuK+3uoXQhuutBDF/XrDXqoWu5SNye8N
         U9jaURwbKWaS21nHnPRAL8wuU6CZCMv4J7cLmc4CaSWOFdsmciOYyBCdF6J0V7c9OPkD
         ABGy06RBWF/TYQatMvflK40ZD32pWjDLbWFbIq4hWv595eSYzkfolXpU+8F4lSha9/oy
         0OUvJb4qIqFJHK4Mfd35CLYwcC93+VuXoSO5v3FoRV37QrWRv2i3nptPip6It4vwcSCk
         rYBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=X5CTGAMN+APBpSVgBRm7cOxM3jH0cRc1Ibrrq9q9jPQ=;
        b=ERJAN/8xq7IUGuzikAr1aok+udce6iCEUKIET7lr0IZONHzm7l9pUrvKkOo0ur0SFn
         dNLwQaGDBd0Xzu/bPqxA7cCEmVp4pbhkUF6T/4tGp9iYTSGp/KT/1ESBrFryVc7g217I
         NcpD/z/K1J5O6CsS8lsGmG/6/RdJQPcPWnp0sPe9HYZBwC+t6ji462+sDOdKL2qQcCoy
         WrOnIKMnUQTjScHG789FN63sSPF69gmJ7A5UhU7+sw+Tjr5SgTkHis4Fl+n2tM42m6lM
         MuNCTGJ55mqTwxTd0h31ge9KANTgqEG0Piya0VVfb526v3GOx8dVZftIMAkDWF2iopTq
         s0wA==
X-Gm-Message-State: AOAM532h/sdFi1mrHPq6X1l6gSVojvSDqWLJloHuPV2UEVGI/Mxlbu/b
	cm1V5EG3VlvrToor3+UHM97YeYAT0AJmXmgL
X-Google-Smtp-Source: ABdhPJzYGLzpvcZCw82E4UcTlUh5Lo0fmTxSwlZU8NM/Ex9IxdJH1QOMfZbQn39xW+zz8iir6Y6x5g==
X-Received: by 2002:a17:902:76c7:b029:e6:508a:7b8d with SMTP id j7-20020a17090276c7b02900e6508a7b8dmr10446563plt.18.1615502528049;
        Thu, 11 Mar 2021 14:42:08 -0800 (PST)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from [192.168.4.197] (ip72-220-244-209.sd.sd.cox.net. [72.220.244.209])
        by smtp.gmail.com with ESMTPSA id g22sm122440pju.30.2021.03.11.14.42.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Mar 2021 14:42:07 -0800 (PST)
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
 <06146634-49f5-d665-6e2b-7169564748dc@ibeeto.com>
 <dde465b36ff3aa2d60c9844ca799bbe1@vivaldi.net>
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
Message-ID: <1ab228dd-dbad-15fd-4b77-73cc970045c1@ibeeto.com>
Date: Thu, 11 Mar 2021 14:42:05 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <dde465b36ff3aa2d60c9844ca799bbe1@vivaldi.net>
X-Groupsio-MsgNum: 52669
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="NilAtlF9Tv5UCptzUj3u5xVNXb3uQcojM"

--NilAtlF9Tv5UCptzUj3u5xVNXb3uQcojM
Content-Type: multipart/mixed; boundary="5gRF9hQB8k3dZV8kPrJVrRzf2d1i1kXr8";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: jchludzinski <jchludzinski@vivaldi.net>
Cc: Yocto <yocto@lists.yoctoproject.org>
Message-ID: <1ab228dd-dbad-15fd-4b77-73cc970045c1@ibeeto.com>
Subject: Re: [yocto] Assign IP address at boot time
References: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
 <5bce46d6-e995-ea21-9162-5d15b95afa29@ibeeto.com>
 <8878b4515215b5d3ed686be6cb8a7122@vivaldi.net>
 <3421258b-6b1e-3dd6-2d75-e66b0bb989c3@ibeeto.com>
 <7d3df13429d227106286f966cdcbd501@vivaldi.net>
 <e7f9f7da-b919-1b65-90f1-e8d892acd2ce@ibeeto.com>
 <0549f39814132d3d025fa22634c88f0e@vivaldi.net>
 <06146634-49f5-d665-6e2b-7169564748dc@ibeeto.com>
 <dde465b36ff3aa2d60c9844ca799bbe1@vivaldi.net>
In-Reply-To: <dde465b36ff3aa2d60c9844ca799bbe1@vivaldi.net>

--5gRF9hQB8k3dZV8kPrJVrRzf2d1i1kXr8
Content-Type: multipart/mixed;
 boundary="------------6DEDA072D9AC36491DF3148E"
Content-Language: en-US

--------------6DEDA072D9AC36491DF3148E
Content-Type: multipart/alternative;
 boundary="------------62F26095CD308045EEE07F4D"

--------------62F26095CD308045EEE07F4D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 3/11/21 10:12 AM, jchludzinski wrote:
> Can this be done using boot parameters?
Not that I know of. Why anyway?
>
> Something like(?):
>
> LABEL Arria10 SOCDK SDMMC
> =C2=A0=C2=A0=C2=A0=C2=A0KERNEL ../zImage
> =C2=A0=C2=A0=C2=A0=C2=A0FDT ../socfpga_arria10_phead.dtb
> =C2=A0=C2=A0=C2=A0=C2=A0APPEND root=3D/dev/mmcblk0p2 rw rootwait earlyp=
rintk=20
> console=3DttyS0,115200n8 *ip=3D192.168.0.101:255.255.255.0:eth0*

--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------62F26095CD308045EEE07F4D
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
    <div class=3D"moz-cite-prefix">On 3/11/21 10:12 AM, jchludzinski
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:dde465b36ff3aa2d60c9844ca799bbe1@vivaldi.net">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"pre" style=3D"margin: 0; padding: 0; font-family:
        monospace">Can this be done using boot parameters?<br>
      </div>
    </blockquote>
    Not that I know of. Why anyway?<br>
    <blockquote type=3D"cite"
      cite=3D"mid:dde465b36ff3aa2d60c9844ca799bbe1@vivaldi.net">
      <div class=3D"pre" style=3D"margin: 0; padding: 0; font-family:
        monospace"><br>
        Something like(?):<br>
        <br>
        LABEL Arria10 SOCDK SDMMC<br>
        =C2=A0=C2=A0=C2=A0=C2=A0KERNEL ../zImage<br>
        =C2=A0=C2=A0=C2=A0=C2=A0FDT ../socfpga_arria10_phead.dtb<br>
        =C2=A0=C2=A0=C2=A0=C2=A0APPEND root=3D/dev/mmcblk0p2 rw rootwait =
earlyprintk
        console=3DttyS0,115200n8 <span style=3D"text-decoration:
          underline;"><strong>ip=3D192.168.0.101:255.255.255.0:eth0</stro=
ng></span></div>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </body>
</html>

--------------62F26095CD308045EEE07F4D--

--------------6DEDA072D9AC36491DF3148E
Content-Type: application/pgp-keys;
 name="OpenPGP_0x8D8CA82927339B75.asc"
Content-Transfer-Encoding: quoted-printable
Content-Description: OpenPGP public key
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

--------------6DEDA072D9AC36491DF3148E--

--5gRF9hQB8k3dZV8kPrJVrRzf2d1i1kXr8--

--NilAtlF9Tv5UCptzUj3u5xVNXb3uQcojM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmBKnL0FAwAAAAAACgkQjYyoKSczm3Wd
Gwf/TaAxGJ4FCrhjqKa+xa1o/POxxDF/xqGBxY7P+sBM2ojIoU5hvWE+4gsOu1E2VlY3f//C4N9P
T2i6RucFes/zaIvN2wn+xfcctxnDHGCO8zQzfe2gdkY3BZ8manuNmYDOd+dLOZL6Byd6Q7onv6/g
CREPkKKl7LnXSOZFOK7rGkuRWXTlxF3W/kZaOaGTtmNvgJRJMD2F5HIO4yw+PI+zlhws5jKkwXfh
VI1vBQGr5w7QlxCHbOw2gtCNcBxrVgCqMZ4+TXCHt4BKDqYY5hGX42wskPGMx5ycxwNBxgxN/c1Y
3+IFA3tO65ob0KJLvE0VvojVa1tg2N+CUROHw85O9g==
=8wmT
-----END PGP SIGNATURE-----

--NilAtlF9Tv5UCptzUj3u5xVNXb3uQcojM--
