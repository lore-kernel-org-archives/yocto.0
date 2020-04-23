Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com [209.85.216.65])
 by mx.groups.io with SMTP id smtpd.web10.2016.1587658480701203170
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Apr 2020 09:14:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=HXpCVm15;
 spf=neutral (domain: ibeeto.com, ip: 209.85.216.65, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pj1-f65.google.com with SMTP id fu13so2113420pjb.5
        for <yocto@lists.yoctoproject.org>; Thu, 23 Apr 2020 09:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=7Y2fMQMYZiKEF8ITcp9LVE8XgOBjpoh6mPa96ESX9J0=;
        b=HXpCVm154D7X01RALila3EdHDIOi/Cgz8HnQanK/O1+7Olss4Lzs6EBfMUTKNgRcw/
         Kkadlxqy8w8A+SlMml3uP2BM28UdBS7mY3b/DA1uZcFKCgCkrKejfJyF4+yuNVbIpDXx
         CDs1zulDZwT1SuhKjz2HvfDP5+JHJdUagli1hpnMwjrzLQ3S+LE3VIYak+NVBtY3LT8X
         0NVyp3DPhtzs+mMecGyMWK+LTRNdGjf/zXxvdDLbbGfK/S1ZB9RiXs+zKkApiUZQ1yNW
         ve1jZtPijVhUiiRd2cBUYdEA9aJ5sAyivGnqr5qzIHL9vK3H1byuEwGjZVA7snWIIG7y
         BRjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=7Y2fMQMYZiKEF8ITcp9LVE8XgOBjpoh6mPa96ESX9J0=;
        b=o6+sTpacVx95HYewBoRXSrZJnvqiZLDUc/xem9YZ6zJkjnODehn3XPJc7GAztjVyQG
         4HMNnMDkkkV1fhPFSPJcQzsEx2jQ49FAJVEu/LJxRaGqiOUcikSWYqbI+32J/5HYCMnS
         zwjho/fskjPI5VJSy0ZDX+EUOncVo0lRkpBXQcNF3Y324LBPHFRiXz0ktHYYpdDs+Gfq
         hXPgFaS+cxzHr8tnVGwxc0INVZehIb6l1ctj6XdR7XslK2c5VnjIDgraWyd6kRJReOBc
         VRoibf3Hu79wjDTBUi8QCoC3bvwt5FyG31qj4qNGx9hznM2RD1cU6mLOa4wWbWEcmvYA
         tY/g==
X-Gm-Message-State: AGi0Pua4UlWwg1J6XcaZC1GjBDFxKXzg7pmVJx3nKWtJZ1tD81p81aRo
	RxXnlzvjvCccC+NYV5d1lGwraKLMfRw37A==
X-Google-Smtp-Source: APiQypLu17hYhy3xXq4fZgUjxaP7jDVhVDa+VHKvSSPcIcyG2WJqYkRlNHw7aMKxNZxTTnjPVOXQwg==
X-Received: by 2002:a17:902:c282:: with SMTP id i2mr4442240pld.20.1587658479606;
        Thu, 23 Apr 2020 09:14:39 -0700 (PDT)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id k193sm2479566pga.43.2020.04.23.09.14.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 09:14:38 -0700 (PDT)
Subject: Re: [yocto] Enabling SELinux in an application #SELINUX
To: Cguerin@middleby.com, yocto@lists.yoctoproject.org
References: <zCQm.1587495013762613098.vhAI@lists.yoctoproject.org>
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
Message-ID: <6c1b8d53-b449-5672-7f09-455d3433804d@ibeeto.com>
Date: Thu, 23 Apr 2020 09:14:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <zCQm.1587495013762613098.vhAI@lists.yoctoproject.org>
X-Groupsio-MsgNum: 49225
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="xYM9BUa2XzQ17NiE0F3CFDvkQKzkPNzzm"

--xYM9BUa2XzQ17NiE0F3CFDvkQKzkPNzzm
Content-Type: multipart/mixed; boundary="nkfhOfJZv3qCobrBiDh83UDvMV3WRt5IH"

--nkfhOfJZv3qCobrBiDh83UDvMV3WRt5IH
Content-Type: multipart/alternative;
 boundary="------------37F4CA363C639258E3E8B9C5"
Content-Language: en-US

--------------37F4CA363C639258E3E8B9C5
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

There is no simply answer to your question. Most generally speaking any
type of security, not just for computers and embedded systems, is a
tradeoff between risk and cost.

The fact that your appliances have USB ports and are potentially
connected to the Internet makes them vulnerable for attacks. They can
potentially be used to gain access to your appliances, put malicious
software on them, potentially damage them. be used as bots for cyber
attacks, etc. An expert and embedded security can assess the risk by
examining your appliances, software etc. You only can assess the risk
for your business and the business of your customers. What will it mean
for a customer and your business if multiple appliances are hacked and
not functioning anymore and the customer cannot deliver their product
and services possibly for days until you are able to reinstall the
software? What does that mean for your business if that happens at many
of your customers' locations at the same time?

It does not need to be professional hackers that are out for financial
gain doing that. Your proverbial 16 year old kid operating the equipment
could be an aspiring embedded systems engineer who is curious about
what's behind the scenes of the appliances.

It's never a bad idea to think about security for your embedded systems.
Having done a whole lot deal of embedded systems in automotive and
explicitly for securing content and devices for digital television I can
only advise you to take it seriously. It's better to be proactive then
reactive. Bad embedded systems security practices are all around. Just
because your vendors have not done it does not really mean anything.

SELinux is only one consideration. There are other things that go into
hardening an embedded system.

Best regards,
Rudi

On 4/21/20 11:50 AM, Cguerin@middleby.com wrote:
>
> I am with The Middleby Corporation.=C2=A0 We manufacture a wide variety =
of
> commercial ovens, ice machines, coffee brewers, microwaves, soft-serve
> machines and virtually anything you=E2=80=99d find in a commercial resta=
urant
> kitchen.=C2=A0 Much of our equipment has a touch-screen display on it =
=E2=80=93
> often 4.3=E2=80=9D to 10.1=E2=80=9D in size.=C2=A0 This is part of an em=
bedded control
> system that includes a separate I/O board to talk to motors, heating
> elements, etc.=C2=A0 The touch-screen control are most often running Yoc=
to
> Linux with a QT or similar application running on top of Linux.=C2=A0
> Recently, we have been asked to explore enabling SELinux security
> provisions in our applications.=C2=A0 In speaking with several of our
> vendors, they all indicated they don=E2=80=99t generally need to enable
> SELinux and have never done so in the past. =C2=A0
>
> I now know what SELinux is, but I can=E2=80=99t get a good answer if it =
even
> is needed to be enabled on a touch-screen application on equipment
> that a 16 year old kid generally operates.=C2=A0 We often do have USB po=
rts
> on our equipment for software updates and some is connected to the
> internet as well, but I still don=E2=80=99t see how the security access
> provisions in SELinux are needed for our application.=C2=A0
>
> Lastly, I'm not a programmer. I manage the business end of all of
> Middleby's electronic controls, so the aim of this message is to ask
> for general guidance regarding the need for SELinux or not. =C2=A0
>
>
>=20

--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------37F4CA363C639258E3E8B9C5
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Hi,</p>
    <p>There is no simply answer to your question. Most generally
      speaking any type of security, not just for computers and embedded
      systems, is a tradeoff between risk and cost. <br>
    </p>
    <p>The fact that your appliances have USB ports and are potentially
      connected to the Internet makes them vulnerable for attacks. They
      can potentially be used to gain access to your appliances, put
      malicious software on them, potentially damage them. be used as
      bots for cyber attacks, etc. An expert and embedded security can
      assess the risk by examining your appliances, software etc. You
      only can assess the risk for your business and the business of
      your customers. What will it mean for a customer and your business
      if multiple appliances are hacked and not functioning anymore and
      the customer cannot deliver their product and services possibly
      for days until you are able to reinstall the software? What does
      that mean for your business if that happens at many of your
      customers' locations at the same time?</p>
    <p>It does not need to be professional hackers that are out for
      financial gain doing that. Your proverbial 16 year old kid
      operating the equipment could be an aspiring embedded systems
      engineer who is curious about what's behind the scenes of the
      appliances.</p>
    <p>It's never a bad idea to think about security for your embedded
      systems. Having done a whole lot deal of embedded systems in
      automotive and explicitly for securing content and devices for
      digital television I can only advise you to take it seriously.
      It's better to be proactive then reactive. Bad embedded systems
      security practices are all around. Just because your vendors have
      not done it does not really mean anything.</p>
    <p>SELinux is only one consideration. There are other things that go
      into hardening an embedded system.</p>
    <p>Best regards,<br>
      Rudi<br>
    </p>
    <div class=3D"moz-cite-prefix">On 4/21/20 11:50 AM,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:Cguerin@middleb=
y.com">Cguerin@middleby.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:zCQm.1587495013762613098.vhAI@lists.yoctoproject.org">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      <p>I am with The Middleby Corporation.=C2=A0 We manufacture a wide
        variety of commercial ovens, ice machines, coffee brewers,
        microwaves, soft-serve machines and virtually anything you=E2=80=
=99d
        find in a commercial restaurant kitchen.=C2=A0 Much of our equipme=
nt
        has a touch-screen display on it =E2=80=93 often 4.3=E2=80=9D to 1=
0.1=E2=80=9D in size.=C2=A0
        This is part of an embedded control system that includes a
        separate I/O board to talk to motors, heating elements, etc.=C2=A0
        The touch-screen control are most often running Yocto Linux with
        a QT or similar application running on top of Linux.=C2=A0 Recentl=
y,
        we have been asked to explore enabling SELinux security
        provisions in our applications.=C2=A0 In speaking with several of =
our
        vendors, they all indicated they don=E2=80=99t generally need to e=
nable
        SELinux and have never done so in the past. =C2=A0</p>
      <p>I now know what SELinux is, but I can=E2=80=99t get a good answer=
 if it
        even is needed to be enabled on a touch-screen application on
        equipment that a 16 year old kid generally operates.=C2=A0 We ofte=
n
        do have USB ports on our equipment for software updates and some
        is connected to the internet as well, but I still don=E2=80=99t se=
e how
        the security access provisions in SELinux are needed for our
        application.=C2=A0 <br>
        <br>
        Lastly, I'm not a programmer. I manage the business end of all
        of Middleby's electronic controls, so the aim of this message is
        to ask for general guidance regarding the need for SELinux or
        not. =C2=A0</p>
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

--------------37F4CA363C639258E3E8B9C5--

--nkfhOfJZv3qCobrBiDh83UDvMV3WRt5IH--

--xYM9BUa2XzQ17NiE0F3CFDvkQKzkPNzzm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl6hvu0ACgkQjYyoKScz
m3VkBwf/ehrkgcTOPjO+T86mKm1+oNsGvyANt5xrA60obRVazFFUkwXYjjDu3SnA
7wvX5kaLjT7dXyW/iurTk42du4WHEYqEiLuj6EOwpEBdHPDDvEdZS8qbSa6I4s6J
9SZretUuBLvxejnNVcAsScl4xnUnCA+TYm/SQ83WHpQdyQenpNSFuzJpXMyUXQPm
fmSqxzdeFK5qv1GoGU94S0itjzdenuxXI/FX3ZgeLw1JFDYfFDKqlHhrmeP9zWsD
LeSWYsrx1rv51AQIwdtqH+uPIls0PhGRNrINJr5F+1Q6mUOcTpe9JwwIGqQRJtTQ
2F214jwQYxBfBJiwBERLdHTG0bZ1VA==
=daen
-----END PGP SIGNATURE-----

--xYM9BUa2XzQ17NiE0F3CFDvkQKzkPNzzm--
