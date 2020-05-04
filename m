Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web12.9711.1588608893390710231
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2020 09:14:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=g4EQwlEd;
 spf=neutral (domain: ibeeto.com, ip: 209.85.216.53, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pj1-f53.google.com with SMTP id hi11so7872pjb.3
        for <yocto@lists.yoctoproject.org>; Mon, 04 May 2020 09:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=yS20TNhx7ijckPDK+zys5i8p8lpXIz3eTwFPJ+v3eoc=;
        b=g4EQwlEdlKA5zxgl26UP0gKgC2T7aYwhLhheGefAIV9nqmEvlOoO280/OxQO1x1zck
         wiAow8QAtQDp665iW1k5zGsdSYkOu+RPBc+wti/BUkPaMcATCfPS0li1xTEw80EPJ76Y
         EAUDWRnZQetrHKMrRAjxEC2fvLkq+SuJSMCeZZyQSw2AOsN/mn2TeK4ZdcPG/EEvsNNr
         wxYdIeoKxLYPr4d8AQyABsF+WaL/zO67q95pgNwZ1DuKQM+gc2dFMXMenY1luWx6hFRN
         LQO2veXTKpx6yxnXoULL2Bs1BI/bbMNjCgGztcCqqVOQNt0MwW92qAXeJ1Z+unBsCUaW
         C61g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=yS20TNhx7ijckPDK+zys5i8p8lpXIz3eTwFPJ+v3eoc=;
        b=FmFLHFSeEfwS55XtiEsGemDXUzqWVKLNnyYcIW7iZdMOtPZY2PPXHC0Iwj/lL+xvWR
         DZY5rgidDL55vc68TnO3rE+u5SSucCY8ZUF3BcGmCj/x5L+ioApSRXKLg7qd5fCZaONo
         p+UN+aNjC3wpBZbcDvWfAbGOrIWf32D/+YzacAPb3oo/u8F2flaXWc9ReOfSsOihhNKL
         si7wI1Qh8WbX1JV54YIl8RQT0c5CvWyw3R/xXg0DNmlR0RBqbmTdcMWNE9Ny1zZVbatz
         ueK2vpOUPhkhCKIclkNxCt5H7a/1eHALLoH4Fskz5QwUyRkWABcPFBvs4DeRYG9aETV8
         pe/A==
X-Gm-Message-State: AGi0PuYsnnmsms6eF3+Ywpc1f/gr0ueyqQ1crhR3gAj3gxkQ/PcxwqI7
	1TLKudn9o8hAN0E58LB0qNGQtA==
X-Google-Smtp-Source: APiQypKBQ47hww56DdVSnZepRRgrdMEPp9GvdcFPD8K7zBrJ2esorHXuD6HajvbRK3LfKSdMZrjLog==
X-Received: by 2002:a17:90a:f197:: with SMTP id bv23mr58875pjb.3.1588608892893;
        Mon, 04 May 2020 09:14:52 -0700 (PDT)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id w186sm9374959pff.83.2020.05.04.09.14.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2020 09:14:51 -0700 (PDT)
Subject: Re: [yocto] [WIC] Multiple WKS Files
To: yocto@lists.yoctoproject.org
Cc: Yocto list discussion <yocto@yoctoproject.org>
References: <aaffec18-b081-bcc4-4508-9cd3f7c24c03@ibeeto.com>
 <CAJdd5GY1yCS0Wnvqh_n3xoq6fNqbiTuodPbk=iLKaQyFTStJOg@mail.gmail.com>
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
Message-ID: <9111327f-63da-fd2e-4485-9c08faa26ec9@ibeeto.com>
Date: Mon, 4 May 2020 09:14:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAJdd5GY1yCS0Wnvqh_n3xoq6fNqbiTuodPbk=iLKaQyFTStJOg@mail.gmail.com>
X-Groupsio-MsgNum: 49327
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="6gLDc95LuUkF3iiCXWLBnF91JpUgxBdbR"

--6gLDc95LuUkF3iiCXWLBnF91JpUgxBdbR
Content-Type: multipart/mixed; boundary="1ZVntyJ1DyWHAF3rQYiAEmfEROXEWi7sK"

--1ZVntyJ1DyWHAF3rQYiAEmfEROXEWi7sK
Content-Type: multipart/alternative;
 boundary="------------2BC7D23C0C39C6E0A8484C8A"
Content-Language: en-US

--------------2BC7D23C0C39C6E0A8484C8A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On 5/2/20 2:47 PM, Joshua Watt wrote:
>
>
> On Sat, May 2, 2020, 1:22 PM Rudolf J Streif <rudolf.streif@ibeeto.com
> <mailto:rudolf.streif@ibeeto.com>> wrote:
>
>     eMMC devices commonly have three hardware partitions: two boot
>     partitions and a user partition. I was looking for a convenient way =
to
>     have wic build an image for the boot partition and one for the user
>     partition. However, that does not seem to be possible right out of t=
he
>     box. The variable WKS_FILE only accepts one file and not a list. The
>     class image_types_wic.bbclass uses WKS_FILES internally but that see=
ms
>     to be a search list and the code only builds the file it finds first=
.
>
>
> I think part of the problem is that wks files are tied to a rootfs
> image, so it's not currently possible to have multiple because there
> is no way to differentiate them. Also because of that it's a little
> odd to have a wks file that doesn't reference the rootfs it's built with=
.
>
> You might be able to do it by making a simple dummy image recipe for
> the boot partition(s), then overriding the WKS_FILE variable for the
> image with a pn override in the machine.conf file (e.g.
> WKS_FILE_pn-my-emmc-boot =3D "emmc-boot.wks" )

Thank you, Joshua. I might try your idea. I have noticed that it is tied
to the rootfs as I tried to use ondisk/ondrive to create images for
different partitions. But that did not work. Actually, the use of the
ondisk/ondrive parameter is not entirely obvious to me (but I also have
not dissected the code to figure it out).

It might be worthwhile looking into enhancing wic to be able to create
multiple images. Devices now also use universal flash storage (UFS)
which supports multiple logical disks like a SCSI drive once it is
provisioned.

>
>
>     Is my understanding correct?
>
>     Any smart ideas to make this work?
>
>     Thanks,
>     Rudi
>
>
>
>
>
>
>=20

--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------2BC7D23C0C39C6E0A8484C8A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 5/2/20 2:47 PM, Joshua Watt wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAJdd5GY1yCS0Wnvqh_n3xoq6fNqbiTuodPbk=3DiLKaQyFTStJOg@mail.gma=
il.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      <div dir=3D"auto">
        <div><br>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 2, 2020, 1:2=
2
              PM Rudolf J Streif &lt;<a
                href=3D"mailto:rudolf.streif@ibeeto.com"
                moz-do-not-send=3D"true">rudolf.streif@ibeeto.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">eMMC
              devices commonly have three hardware partitions: two boot<br=
>
              partitions and a user partition. I was looking for a
              convenient way to<br>
              have wic build an image for the boot partition and one for
              the user<br>
              partition. However, that does not seem to be possible
              right out of the<br>
              box. The variable WKS_FILE only accepts one file and not a
              list. The<br>
              class image_types_wic.bbclass uses WKS_FILES internally
              but that seems<br>
              to be a search list and the code only builds the file it
              finds first.</blockquote>
          </div>
        </div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">I think part of the problem is that wks files
          are tied to a rootfs image, so it's not currently possible to
          have multiple because there is no way to differentiate them.
          Also because of that it's a little odd to have a wks file that
          doesn't reference the rootfs it's built with.</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">You might be able to do it by making a simple
          dummy image recipe for the boot partition(s), then overriding
          the WKS_FILE variable for the image with a pn override in the
          machine.conf file (e.g. WKS_FILE_pn-my-emmc-boot =3D
          "emmc-boot.wks" )</div>
      </div>
    </blockquote>
    <p>Thank you, Joshua. I might try your idea. I have noticed that it
      is tied to the rootfs as I tried to use ondisk/ondrive to create
      images for different partitions. But that did not work. Actually,
      the use of the ondisk/ondrive parameter is not entirely obvious to
      me (but I also have not dissected the code to figure it out).</p>
    <p>It might be worthwhile looking into enhancing wic to be able to
      create multiple images. Devices now also use universal flash
      storage (UFS) which supports multiple logical disks like a SCSI
      drive once it is provisioned.</p>
    <blockquote type=3D"cite"
cite=3D"mid:CAJdd5GY1yCS0Wnvqh_n3xoq6fNqbiTuodPbk=3DiLKaQyFTStJOg@mail.gma=
il.com">
      <div dir=3D"auto">
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">
          <div class=3D"gmail_quote">
            <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <br>
              Is my understanding correct?<br>
              <br>
              Any smart ideas to make this work?<br>
              <br>
              Thanks,<br>
              Rudi<br>
              <br>
              <br>
              <br>
              <br>
              <br>
            </blockquote>
          </div>
        </div>
      </div>
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

--------------2BC7D23C0C39C6E0A8484C8A--

--1ZVntyJ1DyWHAF3rQYiAEmfEROXEWi7sK--

--6gLDc95LuUkF3iiCXWLBnF91JpUgxBdbR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl6wP3kACgkQjYyoKScz
m3Xb/Qf9Gt2aLeYu64tqsF1JHllssFVtehLjG7/Rp222UjJbIPRD92AIUDbIeXy5
l+Gcn01t4rqjcdz1ZCCLeSOrTEX953NzJmQddLEeeRqnsPPhnYjBOz6QQmJXVuVX
W1hgdaI2YrMFUNvze/egiLmZr92swfXsG/BdIV+J+QfRDZJP6dDvlJK2ROj37DFs
NmhjsHqHxgsGJ3e2epRY74CMniSj88aPWIAcB0I0f3tzT0o6H0sg5pYh2j1Jy/V/
XydPmeyTt9mNbRqffUzsGq2fFlmyf648+oBmXEuNkk8GfEyApirM3i3UlmYf6N0h
kFwqJ+O0WE8DsMs/xgm/Y56nx628zA==
=sGyr
-----END PGP SIGNATURE-----

--6gLDc95LuUkF3iiCXWLBnF91JpUgxBdbR--
