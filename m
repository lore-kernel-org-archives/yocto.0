Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1787.1581787991624235095
 for <yocto@lists.yoctoproject.org>;
 Sat, 15 Feb 2020 09:33:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=WGmlkZXt;
 spf=neutral (domain: ibeeto.com, ip: 140.211.169.56, mailfrom: rudolf.streif@ibeeto.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 296E8E0172D; Sat, 15 Feb 2020 09:33:11 -0800 (PST)
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
	*      [209.85.215.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 479EEE0172B
	for <yocto@yoctoproject.org>; Sat, 15 Feb 2020 09:33:10 -0800 (PST)
Received: by mail-pg1-f176.google.com with SMTP id v23so3411345pgk.2
        for <yocto@yoctoproject.org>; Sat, 15 Feb 2020 09:33:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=IB6lv7DuDrjKHpBHiDjIrh/q5t0ERvD9Uorvs7wnPUQ=;
        b=WGmlkZXtRnBWOrPF83DidwZsiz3NBUEhhZDm4uzr2WQxyQRsXsbJEmOyt2/+C8Iw+g
         KSRAtIkmYYYUQtWE4A+Il26vvAjOqbnjx9x2CYdzq6nwlcXHKAodC11/PdXCI+cjTB71
         Tm5vS8pHcVzWSf859GDI/dpfzDr/lK33YWrKrfzso5u4I+cK5pHptE98+iF/t5Pbi5eF
         erjeQfrBpFd1OXSODK+O9HXjHUmU2kX//YY7wznvwSlHZPxw2JJw22m6BKhRU5CEgSAJ
         +zrLzy6Im1HPtOAQFC67uInFHArwkSCy4EF93pQ0hftNta6prnb9oGU6ocUfYY4i01YA
         9a2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=IB6lv7DuDrjKHpBHiDjIrh/q5t0ERvD9Uorvs7wnPUQ=;
        b=PSDIN3eiMd51j8s2YLcbfsz4NCtppX9UJ7Q6U90SYcd87jGHK7seqQneZB8DzxXuBS
         4U45dDoeVHb8F2GjW+2YkWJXCjkYdBJneIn2nD456jv7TxVz1+LOx0clZoNjXkjlQvyH
         COOYNn8vIsiIznJfs5982/ys3g9PeScCxqOCIyny0AAs2T3h3GBgFKj4tMjniF4d5+GW
         cdnMk0dirf617Epn6245m3hCmmNhJMiGnVzXUFy4+bqhCFVMmysnd4BPNEd6ESzUskKB
         lA1RLv93ZjnavsDGHiz6WgtUM594eWnKYOGdEI0RbSZlreSnZmMsL7z+DeCYLxRX4r/D
         k1ag==
X-Gm-Message-State: APjAAAU3+obWsPJWSanEYgIpLOFd93eQcQxmZ2leAnQ+gBw02JRAtgOB
	epN7uUPc/tkDckLIyVa8fOy75xrv3sMxLM1p
X-Google-Smtp-Source: APXvYqxt865pjsl6OGCYCc4dm+b3LUx2c/h/QegwNiPy1bnbpiHU7r0Vgf876r31SVl42zU2hLFkGQ==
X-Received: by 2002:a63:790f:: with SMTP id u15mr8962188pgc.172.1581787989120;
        Sat, 15 Feb 2020 09:33:09 -0800 (PST)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id x7sm11691810pfp.93.2020.02.15.09.33.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Feb 2020 09:33:08 -0800 (PST)
Subject: Re: [yocto] does git SRC_URI really *require" a SRCREV setting?
To: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>,
 Yocto discussion list <yocto@yoctoproject.org>
References: <alpine.LFD.2.21.2002150129460.2926947@localhost.localdomain>
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
Message-ID: <61336b69-5456-3951-4b52-a6d471049612@ibeeto.com>
Date: Sat, 15 Feb 2020 09:33:02 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.21.2002150129460.2926947@localhost.localdomain>
X-Groupsio-MsgNum: 48431
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="C12kEYkMDRQYsG1iYLdS6k4P5er0krP6F"

--C12kEYkMDRQYsG1iYLdS6k4P5er0krP6F
Content-Type: multipart/mixed; boundary="FzrVuxhBakjIhdWSHkeKvY0h0Bw8tA2JG"

--FzrVuxhBakjIhdWSHkeKvY0h0Bw8tA2JG
Content-Type: multipart/alternative;
 boundary="------------23F4D2334357C73EBF88A786"
Content-Language: en-US

--------------23F4D2334357C73EBF88A786
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

The wording might need improvement but both of your examples actually do
provide SRC_REV but in the inline form with SRC_URI (rev/tag).

The documentation should probably say something like SRC_REV needs to be
provided but it can either be done by setting the variable explicitly or
by using the rev/tag option with SRC_URI.

:rjs

On 2/14/20 10:35 PM, rpjday@crashcourse.ca wrote:
>   yes, yes, more obsessive-compulsive nitpickery, but YP dev tasks
> manual, section 3.3.5, reads:
>
> "Another way of specifying source is from an SCM. For Git
> repositories, you must specify SRCREV and you should specify PV to
> include the revision with SRCPV."
>
>   you *must* specify SRCREV? i don't think that's true -- a couple
> examples from meta-oe ... here's hiredis_0.13.1.bb:
>
> SRC_URI =3D "git://github.com/redis/hiredis;protocol=3Dgit;rev=3Df58dd24=
9d6ed47a7e835463c3b04722972281dbb \
>
>   and here's sshfs-fuse_2.8.bb:
>
> SRC_URI =3D "git://github.com/libfuse/sshfs;tag=3Db2fa7593586b141298e615=
9f40f521d2b0f4f894 \
>
>   neither of which specify SRCREV (clearly since they don't need to
> given the SRC_URI options in use).
>
> rday
>
> p.s. bitbake's git.py fetcher code makes no mention of the "rev"
> option in its opening docstring. just an observation if anyone wants
> to tweak that.
>
>
>=20

--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------23F4D2334357C73EBF88A786
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <p>The wording might need improvement but both of your examples
      actually do provide SRC_REV but in the inline form with SRC_URI
      (rev/tag).</p>
    <p>The documentation should probably say something like SRC_REV
      needs to be provided but it can either be done by setting the
      variable explicitly or by using the rev/tag option with SRC_URI.<br>
    </p>
    <p>:rjs<br>
    </p>
    <div class=3D"moz-cite-prefix">On 2/14/20 10:35 PM,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:rpjday@crashcou=
rse.ca">rpjday@crashcourse.ca</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:alpine.LFD.2.21.2002150129460.2926947@localhost.localdom=
ain">
      <pre class=3D"moz-quote-pre" wrap=3D"">
  yes, yes, more obsessive-compulsive nitpickery, but YP dev tasks
manual, section 3.3.5, reads:

"Another way of specifying source is from an SCM. For Git
repositories, you must specify SRCREV and you should specify PV to
include the revision with SRCPV."

  you *must* specify SRCREV? i don't think that's true -- a couple
examples from meta-oe ... here's hiredis_0.13.1.bb:

SRC_URI =3D "git://github.com/redis/hiredis;protocol=3Dgit;rev=3Df58dd249d=
6ed47a7e835463c3b04722972281dbb \

  and here's sshfs-fuse_2.8.bb:

SRC_URI =3D "git://github.com/libfuse/sshfs;tag=3Db2fa7593586b141298e6159f=
40f521d2b0f4f894 \

  neither of which specify SRCREV (clearly since they don't need to
given the SRC_URI options in use).

rday

p.s. bitbake's git.py fetcher code makes no mention of the "rev"
option in its opening docstring. just an observation if anyone wants
to tweak that.

</pre>
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

--------------23F4D2334357C73EBF88A786--

--FzrVuxhBakjIhdWSHkeKvY0h0Bw8tA2JG--

--C12kEYkMDRQYsG1iYLdS6k4P5er0krP6F
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl5IK04ACgkQjYyoKScz
m3V4sgf/VuEiH1Vy8j++HnbRKknclTYrso/7s62adueRaupXvijrXj08cOETpkeh
qfnNq88zF3QhxN3Y4vAHU4jrsGvqGpBdUxVWi9Ya5bg8sCdQbat71mAx43wX1l2f
q4QjH/n0LZ151xXovRBHOzJKrEbO6afE2wHLguNutekpH8iANcczhHw/67qKsEMO
VIxcKTxzprtKBmYbJnyMe3B1DvCzpZ6ZHTL/I104urNA5zXJPuz/dzeJFDGSVqfz
CckmXBuRZ8aKTl1P+Nb4ggwa2zRIG4YWfoRpy/j7SrSYUu9WAE5hu9REkaQnXBhF
hluLPt8gUrWOKs2KLqclf1L+aWqyew==
=u5cL
-----END PGP SIGNATURE-----

--C12kEYkMDRQYsG1iYLdS6k4P5er0krP6F--
