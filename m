Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web11.22750.1593613198280729930
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 07:19:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=w5djrz9V;
 spf=neutral (domain: ibeeto.com, ip: 209.85.215.173, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pg1-f173.google.com with SMTP id d4so11790105pgk.4
        for <yocto@lists.yoctoproject.org>; Wed, 01 Jul 2020 07:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=/iCUASuCP677nlm9bXlXo8PFpfZmcNfNTra75FXPi5U=;
        b=w5djrz9ViyUM2Xg4lDtFh7PdiIr+SIkvLIy8b1hAX352jCe6LZi4/Il/XZ9diSaqsV
         k88jtTWtk+TCBkqxEYUNkMaoY+JNBhZ145RQz8CFQCUlvYWgYrGz702UOs4YJa1XBQSy
         MjNf3jKqSC90U0JK3Ga20VSHj6HyjulJn/CL37GL52Bdt7uJ4bmuyc39kMifdZHzLQrb
         RLs0uRNR2/sRVzILRkTKfPXswIJW/2r9GuMBElJZQ6I2lXTu9U5HX0EW8oSnla5Gs68A
         3znOogBUi4+u+CPERLa6eaxIPvv6BSkSj5/cOefmnMPtr8p6XByHGBKkmmynC3YCYg+g
         CR/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=/iCUASuCP677nlm9bXlXo8PFpfZmcNfNTra75FXPi5U=;
        b=HMw/MVJgxEzQ+WRlFBzP/uhiBhHLgXX2dfb2fk7d7mc5NwS4psqwevhcnWKq/bpBt1
         OHZmIRV0qd59ImvBThr7oYyyAn7+V90ZJ9QYE5JFu/VGDjypQ5nz1cgOqMU9e/jNHp31
         x8dn7CjrQnV3WZTydbLh/UdEMJ0/lr3zkf/OdPoQ/w8CXBkVs2pZ6VNTFUwmD8uEUuAL
         5eAWfKOvCkYCh5eBqbZ1LAjc7feb0siiqs2T8zCZvHtiQHNmpywj0FzKmfHBR10588Dw
         A9LwRGIAUL8oTRbZKRk3KeRXnE45wexinO59riVmms4sg9Q33NwumXXs3a0PfYbt1nGv
         fSFA==
X-Gm-Message-State: AOAM5332Qfw0H45wqy3fPU11yxAtEZEMCbI5PwIAJRjNTBRmi7H0wHfy
	w/or+b8ZAG8mKPuZQDwA6gmhYUU+IqnGhA==
X-Google-Smtp-Source: ABdhPJwqZqr0YIAlXTwiPkYYZX0e1gmBocVs8Yj2Fter33hyPur/1qySvmukInDuzZrj4ODYwqyyzA==
X-Received: by 2002:a63:3d01:: with SMTP id k1mr19459331pga.71.1593613196916;
        Wed, 01 Jul 2020 07:19:56 -0700 (PDT)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id b11sm6465912pfr.179.2020.07.01.07.19.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2020 07:19:55 -0700 (PDT)
Subject: Re: [yocto] ERROR: Nothing PROVIDES 'core-image-sato' #raspberrypi #yocto
To: yocto@lists.yoctoproject.org
References: <Czxo.1593612634059275173.hllo@lists.yoctoproject.org>
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
Message-ID: <1de4ff1c-b65c-522b-6b46-4ccf163c796a@ibeeto.com>
Date: Wed, 1 Jul 2020 07:19:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <Czxo.1593612634059275173.hllo@lists.yoctoproject.org>
X-Groupsio-MsgNum: 49814
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="bTrzvqPoxw4OazfS8C0es4dG4PCGYMRnB"

--bTrzvqPoxw4OazfS8C0es4dG4PCGYMRnB
Content-Type: multipart/mixed; boundary="RdEvPLvEEFW7ni0ZBUFIhFNval3s4ucMF"

--RdEvPLvEEFW7ni0ZBUFIhFNval3s4ucMF
Content-Type: multipart/alternative;
 boundary="------------4123BF00D670D0DEB4F09098"
Content-Language: en-US

--------------4123BF00D670D0DEB4F09098
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Pankaj,

On 7/1/20 7:10 AM, Pankaj Vinadrao Joshi wrote:
> Hi,
> i am building an image for RPI4

Can you please provide the entire error message?

:rjs

>=20

--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------4123BF00D670D0DEB4F09098
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Pankaj,<br>
    </p>
    <div class=3D"moz-cite-prefix">On 7/1/20 7:10 AM, Pankaj Vinadrao
      Joshi wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:Czxo.1593612634059275173.hllo@lists.yoctoproject.org">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      Hi,<br>
      i am building an image for RPI4
      <br>
    </blockquote>
    <p>Can you please provide the entire error message?</p>
    <p>:rjs<br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:Czxo.1593612634059275173.hllo@lists.yoctoproject.org">
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </body>
</html>

--------------4123BF00D670D0DEB4F09098--

--RdEvPLvEEFW7ni0ZBUFIhFNval3s4ucMF--

--bTrzvqPoxw4OazfS8C0es4dG4PCGYMRnB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl78m4oACgkQjYyoKScz
m3Ut9wf9GhIIX8RbkGfQw+3JObaAD7JTS4FSsfW3i5vHzjq1xDElSg5+rIOnDfHM
xPDMt1L88vKlLpdG/1AD255Hjsq09cd4lmF91yIhFEhZZXiBXRElauQ9BTEAUh1d
8ifgXA1Jnz1DSND/N/rr+TTNhIhlLQMNpMqE4E4sGSRBRirlgznxwH/7893CwpH0
Go1W5lJfwI2qXVWPlkozCgZWrzWUZ56hXW4ZjliJIXwcZW0a379fkhaXuxZqTkIN
uf6tr8jKxJUTQWGWHfFogKCilHnuIa8IDAqvN7n8O4RkAjyi3QgLEut33/MUGb8H
x/1jIIvCHdmcthuwO/u22PDvEmQTwA==
=tg4P
-----END PGP SIGNATURE-----

--bTrzvqPoxw4OazfS8C0es4dG4PCGYMRnB--
