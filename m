Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web12.6536.1574699069725684194
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 08:24:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=1ObCLwHn;
 spf=neutral (domain: ibeeto.com, ip: 209.85.215.173, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pg1-f173.google.com with SMTP id q17so7417840pgt.9
        for <yocto@lists.yoctoproject.org>; Mon, 25 Nov 2019 08:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=5kGTnFlaSC9+rze4+uXoj0ZQA8RAw5sag29LgvvOHkE=;
        b=1ObCLwHnvknZp0gJFbYz6qLZ1QvLj8C57Oi3+clDtmn3OPwquIXUSOD3bZeYxOcJ2m
         d8a4QW8wJvLjzYYmp7pH928FY/G9zc+G0XDcxDqHQK+A22ye5Ro6cP5O21IiEg3UIFeR
         7ePsgITs9RpdLOV3l/eVEWq3G0sfr4pMlG50CsD+EzRihEwt4WrVjuRgRc0h8+WFyqMX
         X4g572BXi6tmF9thsVshtOycwcr1V4r0LfH8UzoUiVwqNmDAYJBTSVNu3cR2lAdckTbg
         f7ochuAu2LEG3qMeD2IEGNaARi5ZOHXKs5dVFz/ykiUS7cxvxEzUTmsI+d0PGoSbRSPB
         KnAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=5kGTnFlaSC9+rze4+uXoj0ZQA8RAw5sag29LgvvOHkE=;
        b=jp0s5flBQ7UC9uqJq7iCkIONgRJ/X4MePZ+vXPYrT4LVVBsIGbLZ0Y9RFKArCmuEST
         nOTSNwz63PhEhYmZ6Eb8C+aHmFcUkW4qWuk9K5QmxBoGoOTtPwMvlbMG4Ygbo6SVoyto
         fZwbws8pPbLmqjos+D36MFiHug2leDxxkKA+gJ58Cn9ITS5Asi1Z86mY8Re5cYx6LQKg
         Ixn/YctV1UYSItpMtSlDj3D6Cad0IJexLqNPamkVCVE5u8fU03UtudTdzv3KA5yTDWu6
         YcyqUF3a+vaa/Yg40sOpaOfElgIxruORcmA++aL+AjPlDYT74gNnk6812QM8sLDDP3dx
         +EZQ==
X-Gm-Message-State: APjAAAUJPLtSHnBkHx6CIXVCl/l5xGpu4+0rWKslCdDDZDLQw0uhZjlq
	+//W/UGAUXYhSFj6mNRGdQbIQ5M+G0LEdYps
X-Google-Smtp-Source: APXvYqx9szPKC5YY3qfnNQbVPnDz7XIOXf/IbdCmkIlCkRbOPCea3/xjPEClmpnvxH5ZAnXIPv5eFw==
X-Received: by 2002:a65:62cc:: with SMTP id m12mr13735815pgv.397.1574699068780;
        Mon, 25 Nov 2019 08:24:28 -0800 (PST)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id h3sm9230318pgr.81.2019.11.25.08.24.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2019 08:24:27 -0800 (PST)
Subject: Re: [yocto] Yocto build to add root password
To: yocto@lists.yoctoproject.org
References: <CAA=hcWR3Vhfc9H3VRf-Q1m44rX_ox2J-LjuPWHsB1Rrq-yrVTg@mail.gmail.com>
From: "Rudolf J Streif" <rudolf.streif@ibeeto.com>
Autocrypt: addr=rudolf.streif@ibeeto.com; keydata=
 mQENBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
 Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
 /Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
 cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
 3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
 AAG0KlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPokBNwQTAQgA
 IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
 3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
 txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
 lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
 Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
 zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvuQENBFhQFAQBCADXoLKCuF48
 5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
 RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
 w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
 svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
 tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAGJAR8EGAEIAAkFAlhQFAQC
 GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
 s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
 fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
 Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
 P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
 ROZj4g==
Message-ID: <bc70cb07-37c8-3078-7c02-d7be487035fd@ibeeto.com>
Date: Mon, 25 Nov 2019 08:24:25 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAA=hcWR3Vhfc9H3VRf-Q1m44rX_ox2J-LjuPWHsB1Rrq-yrVTg@mail.gmail.com>
X-Groupsio-MsgNum: 47408
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="UoxBcnJU8AemhxuLVcQO6XmC3wFuBSmMT"

--UoxBcnJU8AemhxuLVcQO6XmC3wFuBSmMT
Content-Type: multipart/mixed; boundary="VDGrpzltaZyNJQ1SOM9ZPHlELO4A0J0k9"

--VDGrpzltaZyNJQ1SOM9ZPHlELO4A0J0k9
Content-Type: multipart/alternative;
 boundary="------------7C8620F678E01C4BB7622F59"
Content-Language: en-US

--------------7C8620F678E01C4BB7622F59
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

That's done via the extrausers class in an image recipe. Add this to
your image recipe:

>>>>>>
inherit extrausers

ROOT_PASSWORD =3D "secret"

EXTRA_USERS_PARAMS =3D "usermod -p `openssl passwd ${ROOT_PASSWORD}` root=
;"

<<<<<<

Make sure you use the backticks (`).

:rjs

On 11/23/19 2:25 PM, JH wrote:

> Hi,
>
> I built a Yocto image and I could log into the root without password,
> how could I set up the Yocto build in a receipt to set password for
> logging?
>
> Thank you.
>
> Kind regards,
>
> - jh
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47404): https://lists.yoctoproject.org/g/yocto/mess=
age/47404
> Mute This Topic: https://lists.yoctoproject.org/mt/61917008/3617932
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [rudolf.stre=
if@ibeeto.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------7C8620F678E01C4BB7622F59
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi,</p>
    <p>That's done via the extrausers class in an image recipe. Add this
      to your image recipe:<br>
    </p>
    <p>&gt;&gt;&gt;&gt;&gt;&gt;<br>
      inherit extrausers</p>
    <p>ROOT_PASSWORD =3D "secret"<br>
    </p>
    <p>EXTRA_USERS_PARAMS =3D "usermod -p `openssl passwd
      ${ROOT_PASSWORD}` root;"<br>
    </p>
    <p>&lt;&lt;&lt;&lt;&lt;&lt;</p>
    <p>Make sure you use the backticks (`).<br>
    </p>
    <p>:rjs<br>
    </p>
    <p>On 11/23/19 2:25 PM, JH wrote:</p>
    <blockquote type=3D"cite"
cite=3D"mid:CAA=3DhcWR3Vhfc9H3VRf-Q1m44rX_ox2J-LjuPWHsB1Rrq-yrVTg@mail.gm=
ail.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hi,

I built a Yocto image and I could log into the root without password,
how could I set up the Yocto build in a receipt to set password for
logging?

Thank you.

Kind regards,

- jh
</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.

View/Reply Online (#47404): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/47404">https://lists.yoctopr=
oject.org/g/yocto/message/47404</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
=2Eyoctoproject.org/mt/61917008/3617932">https://lists.yoctoproject.org/m=
t/61917008/3617932</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a>  [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:rudolf.streif=
@ibeeto.com">rudolf.streif@ibeeto.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </body>
</html>

--------------7C8620F678E01C4BB7622F59--

--VDGrpzltaZyNJQ1SOM9ZPHlELO4A0J0k9--

--UoxBcnJU8AemhxuLVcQO6XmC3wFuBSmMT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl3cADoACgkQjYyoKScz
m3X62wgAkODgCoStGeb703ktQhB/p4p5yRgfE8b6Ga7LhfopcsVKLTsaqpoaHyNv
HH+7sV5xSElGjHCdF4HQHMRPDG3Dqk9x/RBm58egJ7W9wtTMJaKxPS7F4PEpyh/V
z8rJFmDkm4X/rJ7JTPv5/Asm7sZoT0JUqALtk3mLL65beYnJrX+gHnObfNld6hF9
6sb5j+cuWkfmKPDfSlAEBF0g9y3H/Jx2TunWp69ggmZzWKp3sd3Xn/ATAQZ0zDOW
waLRN5gxQ4DweooS4d2eiyzeNX+8YdbbODc9fSlK1mhaMiRmERubWoHt7aL9kSDG
tkrdgmZktpbgVuMTQm1JR6Rr12XUIA==
=rIwC
-----END PGP SIGNATURE-----

--UoxBcnJU8AemhxuLVcQO6XmC3wFuBSmMT--
