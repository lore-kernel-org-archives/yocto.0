Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.252.1591811421469914069
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jun 2020 10:50:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=jV/Jm5di;
 spf=neutral (domain: ibeeto.com, ip: 140.211.169.56, mailfrom: rudolf.streif@ibeeto.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5408FE01CC1; Wed, 10 Jun 2020 10:50:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACAEBE01CBF
	for <yocto@yoctoproject.org>; Wed, 10 Jun 2020 10:50:20 -0700 (PDT)
Received: by mail-pl1-f172.google.com with SMTP id d8so1222264plo.12
        for <yocto@yoctoproject.org>; Wed, 10 Jun 2020 10:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=FEdVCXruaBkYrpoGND3TEEFbC52ZgILP8TZ0plZL3OA=;
        b=jV/Jm5di7ghzTw9q13Dvfz+XbuGsMRku21FLNs4SfDOPosJMbrHxwvhR5qraP4J3sg
         4mxhYsalwSKDVw7FRHQ0JMfK4ZZ9ukhUyhN6+B1XskFigXl9et4ANs1SNuIehdSyg8AM
         PCPEbZXDWc7RJXiyZdSx+DwbPNL1tGjz+TrG4rJxPdAZzRiS63co0nc1UMMPKCKlnzSA
         j5n+YBp7P+6TSAGUAZEOwQM0Hn4nV1dLWrQMV0VYuQtsVElFGy6p0mzKDCUWCStLC+eO
         NL0nS0boX/fGDIdz7OUankJs3GkMaTsqlwWZzdePwYa3yM4uvPYL8mM/P70csdU4NxLe
         zb8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=FEdVCXruaBkYrpoGND3TEEFbC52ZgILP8TZ0plZL3OA=;
        b=fQUJkzg2rv6pcVQR6F1MpoUy7y7AJC4LNcTuj7Y9+xKqv32KxVneDGYoYQxA/LC5pq
         nhyov08OWiLl9PGExLMK0aCi4AdY1dyKBlnWtaQxEroPgqM6DtNYxb8QQK77M+ZN9560
         gFsruvdREuEhyjK5MF6WtgrAAiyy0O0hJRT9ismWQyEUet664hZAhbfT5N1XCROJ3xw3
         ai24mqixoF3gPdhbgFCV8xZ+5i5wRsu36w1NMnjx5YrBct7fB+8/lZi6IxWYskB/+aHp
         Z28BRI1y8/5pychdaJhB9efDIlOYCtsdQRRaUl2OxCGoQSthAgZ/lrXWNZLoiBh2OnjE
         zo1A==
X-Gm-Message-State: AOAM532Ii0Loyd5iPFB9GYEB0zOXAkhQVF6r20dq/MdI0t3odr9cxRt8
	K6IBfWy930TqAt9QQCiUaXIGRIIBmfiHLw==
X-Google-Smtp-Source: ABdhPJx7AzYtUrAGbyKci6mzNVlBgsCT9aPPu6etX9G9jpO/6w/eJemOpK2d9vgSIeYC2c1VAWW7FA==
X-Received: by 2002:a17:90a:43c5:: with SMTP id r63mr3903240pjg.203.1591811419348;
        Wed, 10 Jun 2020 10:50:19 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id k19sm537586pfg.153.2020.06.10.10.50.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2020 10:50:18 -0700 (PDT)
Subject: Re: [yocto] Strange error
To: Mauro Ziliani <mauro@faresoftware.it>, yocto@yoctoproject.org
References: <6831ffcc-263f-99cb-2859-e265fa04f770@faresoftware.it>
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
Message-ID: <ec409c35-de63-4099-b184-8b36cdcb0d5d@ibeeto.com>
Date: Wed, 10 Jun 2020 10:50:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <6831ffcc-263f-99cb-2859-e265fa04f770@faresoftware.it>
X-Groupsio-MsgNum: 49618
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="HBPScHlAbdqaNP28NqcJusW8ze5P5s1bG"

--HBPScHlAbdqaNP28NqcJusW8ze5P5s1bG
Content-Type: multipart/mixed; boundary="3DD1enaGMaH0pbWtkg6J0ZYpI1y1TqzGN"

--3DD1enaGMaH0pbWtkg6J0ZYpI1y1TqzGN
Content-Type: multipart/alternative;
 boundary="------------5EE8579139CDD8C7BA8A2383"
Content-Language: en-US

--------------5EE8579139CDD8C7BA8A2383
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: quoted-printable

Did you edit the recipe while a build was running?

:rjs

On 6/10/20 10:48 AM, Mauro Ziliani wrote:
> Hi all.
>
> This error
>
> NOTE: Executing RunQueue Tasks
> ERROR: When reparsing <recipe_of_image>.do_rootfs, the basehash value
> changed from 7419bfc242fa2eee9ce87b18ebf40d25 to
> 5b2654046d2ac406f3484b3286de0acd. The metadata is not deterministic
> and this needs to be fixed.
>
>
> Why?
>
>
> Best regards,
>
> =A0 MZ
>
>
>=20

--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------5EE8579139CDD8C7BA8A2383
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3DISO-8859-15">
  </head>
  <body>
    <p>Did you edit the recipe while a build was running?</p>
    <p>:rjs<br>
    </p>
    <div class=3D"moz-cite-prefix">On 6/10/20 10:48 AM, Mauro Ziliani
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:6831ffcc-263f-99cb-2859-e265fa04f770@faresoftware.it">Hi
      all.
      <br>
      <br>
      This error
      <br>
      <br>
      NOTE: Executing RunQueue Tasks
      <br>
      ERROR: When reparsing &lt;recipe_of_image&gt;.do_rootfs, the
      basehash value changed from 7419bfc242fa2eee9ce87b18ebf40d25 to
      5b2654046d2ac406f3484b3286de0acd. The metadata is not
      deterministic and this needs to be fixed.
      <br>
      <br>
      <br>
      Why?
      <br>
      <br>
      <br>
      Best regards,
      <br>
      <br>
      =A0 MZ
      <br>
      <br>
      <br>
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

--------------5EE8579139CDD8C7BA8A2383--

--3DD1enaGMaH0pbWtkg6J0ZYpI1y1TqzGN--

--HBPScHlAbdqaNP28NqcJusW8ze5P5s1bG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl7hHVgACgkQjYyoKScz
m3WubQgAh+oqx1cbgfpY8xffmgcylMP+KRzNRQmYvP5gRG0nihyugUrho+IAH1C+
ijhB8ikOLNdQSjnqCtJqjzAmfJo1VMyYPPJGR3wS8WTfY7oIt5FSrAcPCCjMOTDe
XhcRQ4y5/PVN+q8vZgOxzhte3UlsCtQ4V4HA/FvIvVrpH2RdbO79rch2Gf8n8fgD
lfwm8HnM91sloCKRWCdIahXJ9C0k5pMrG2QTEpdtmxEaYbDKglEBbuPBfASO421d
5SFQfJ7N06wteApxYS8dbEENAKF+1I7xuFLqxEFT9W4aNehtaOugQ3KhjSpHsRVp
69afOlAegoPodvNBmhVs+hkYiDuoRQ==
=iBQO
-----END PGP SIGNATURE-----

--HBPScHlAbdqaNP28NqcJusW8ze5P5s1bG--
