Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web10.456.1588288271958996165
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 16:11:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=pEkQh1Km;
 spf=neutral (domain: ibeeto.com, ip: 209.85.216.48, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pj1-f48.google.com with SMTP id a31so1607460pje.1
        for <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2020 16:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=+aIF98ysY/OYHnCV171LAtY5E5qhFmLpJHxCGKYgCpo=;
        b=pEkQh1KmihgaxkuYbb2fA8BOeqYOgTY2bE2JaEkl+kiwkwiJAux54WHgWypI+n4MUy
         os49XiqQSErl7j2IBaVWxHVDWuxeusLVKfcIv0kYNL8sE1JyeqPMhLIMShS/ID7EEgBI
         MygVJWHPRPReUqFwed0LbGMRPGDp4QDpANABVG2x1edXbA4iyFentnmzYihSX8+UXCU2
         zBKTPQUk8hlgXrN5d/TFXBq2VtpgquaCN8Lq61SoPFQTCkeFzTnGq3m+iJt6lSrJxVHL
         cl+eSRRz/ZRJX1SbtLJRI7t7W8UP2iCDfExKTH6bvJuaIdj8vYj0inAm5kx1N/mTmPos
         +MTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=+aIF98ysY/OYHnCV171LAtY5E5qhFmLpJHxCGKYgCpo=;
        b=kcUiK7bK9Kb9yKTEQtF232qTCcGaqF995UXXdBMFpixeBuzeMmFOZx64tPSm9SBHxX
         EfV6Fnt9/8T3prxESD24tRujXZwEUg2NFAiNJY6NSCcYxBH0vEof24QOdyCGZTqM5b1i
         +KU6OQkWF21YDjcni3OW/S92l9jg/VzuZgEf3gadpbrr7HT3KY7RalXq2Ur6LIgPFsXo
         ivvReDSITRFh1D/YXRAzEveFe94iyIoyzM1ewBO+E/oSV8WqUji1LuOl04rKNwNAod2M
         suU7OtFSz/zk+2+SefCY5THFGpGbXUCZw2FJ8HZGpBzB4JZRay90m4sC4tqZxNIVaNph
         i55A==
X-Gm-Message-State: AGi0PuZyql/eJnosHNkb9txcvHHp+5YnufNvitNGpXVxGN0sZbWo0l2G
	qKV6m7g6yMRlfsEZDvm0pIJi0Q==
X-Google-Smtp-Source: APiQypIAb2IwD2JsF3VzTl6EB3sCI/fQMhUJRsCCjeIpGaa4YdnGSMABcjuNEHVoEsAJLK3oBKOqvw==
X-Received: by 2002:a17:902:222:: with SMTP id 31mr1508664plc.108.1588288271345;
        Thu, 30 Apr 2020 16:11:11 -0700 (PDT)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id w16sm630331pgf.81.2020.04.30.16.11.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2020 16:11:10 -0700 (PDT)
Subject: Re: [yocto] [WIC] Grow last partition up to disk size
To: yocto@lists.yoctoproject.org
Cc: Yocto list discussion <yocto@yoctoproject.org>
References: <504407a1-379f-dc70-7745-c42624df7d8c@ibeeto.com>
 <CAAfyv35at0HOtTpnTiRRL0yrS4mcvCwxy7MdbAmdbVba5-OnGw@mail.gmail.com>
 <3b7e322b-86db-6412-7cb3-02183d626aeb@gmail.com>
 <CAAfyv362iG0g3pamQ1RS5OoCmYBzH8yf-ey2iQwCeXBYctYdMw@mail.gmail.com>
 <b70bbaae-b1d0-9b8c-add0-8f6c0b32a4e5@gmail.com>
 <CAAfyv34CZUjDZZu0jeGmAZfkNkJDaDyTrNuYp6Mf2m97M2NtYw@mail.gmail.com>
 <160AAEA430561E1B.4948@lists.yoctoproject.org>
 <CAOf5uw=ON2QNoHQiBWy7nWwo9QSu1uKLDhLjJ5yeuz1wN17UHA@mail.gmail.com>
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
Message-ID: <b37131d2-827e-9ae4-5d26-0edf3d26e11e@ibeeto.com>
Date: Thu, 30 Apr 2020 16:11:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAOf5uw=ON2QNoHQiBWy7nWwo9QSu1uKLDhLjJ5yeuz1wN17UHA@mail.gmail.com>
X-Groupsio-MsgNum: 49291
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="HGHN49wRsmrM1sNNEWz0raoVcih2NcjAE"

--HGHN49wRsmrM1sNNEWz0raoVcih2NcjAE
Content-Type: multipart/mixed; boundary="PT6L9DhWHUSMC2nZ9XzwKkvMeftZIsS05"

--PT6L9DhWHUSMC2nZ9XzwKkvMeftZIsS05
Content-Type: multipart/alternative;
 boundary="------------20CD765DB9B49F0396A1CBA7"
Content-Language: en-US

--------------20CD765DB9B49F0396A1CBA7
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks, guys, I appreciate it.

Doing it dynamically on first boot would probably work as it is a data
partition and not the rootfs partition.

I will give it a try.

:rjs

On 4/30/20 12:13 PM, Michael Nazzareno Trimarchi wrote:
> Hi
>
> On Thu, Apr 30, 2020 at 9:10 PM Michael Nazzareno Trimarchi via
> lists.yoctoproject.org
> <michael=3Damarulasolutions.com@lists.yoctoproject.org> wrote:
>> Hi
>>
>> Well I have write something like this
>>
>> [Unit]
>> Description=3DIncreases rootfs image size to fit partition
>> Requires=3Ddev-disk-by\x2dpartlabel-rootfs.device
>> After=3Ddev-disk-by\x2dpartlabel-rootfs.device
>>
>> [Service]
>> Type=3Doneshot
>> ExecStart=3D/usr/sbin/sgdisk /dev/disk/by-path/platform-ff0f0000.dwmmc =
-e
> This resize gpt up to disk size
>
>> ExecStart=3D/usr/sbin/parted /dev/disk/by-path/platform-ff0f0000.dwmmc
>> -s "resizepart 4 -1" quit
> This resize partition number 4 up to the max
>
> Michael
>
>> ExecStart=3D/sbin/resize2fs /dev/disk/by-partlabel/rootfs
>> ExecStart=3D/bin/systemctl disable resize-rootfs.service
>>
>> StandardOutput=3Djournal+console
>>
>> [Install]
>> WantedBy=3Ddefault.target
>>
>>
>> On Thu, Apr 30, 2020 at 8:30 PM Marek Belisko <marek.belisko@gmail.com>=
 wrote:
>>> On Thu, Apr 30, 2020 at 8:27 PM Khem Raj <raj.khem@gmail.com> wrote:
>>>>
>>>>
>>>> On 4/30/20 11:25 AM, Marek Belisko wrote:
>>>>> On Thu, Apr 30, 2020 at 8:23 PM Khem Raj <raj.khem@gmail.com> wrote:
>>>>>>
>>>>>>
>>>>>> On 4/30/20 11:16 AM, Marek Belisko wrote:
>>>>>>> Hi Rudolf,
>>>>>>>
>>>>>>> On Thu, Apr 30, 2020 at 7:39 PM Rudolf J Streif
>>>>>>> <rudolf.streif@ibeeto.com> wrote:
>>>>>>>> I was looking for a way in a wks file to have wic grow the last
>>>>>>>> partition to fill up the remainder of the disk. Of course wic doe=
s not
>>>>>>>> know how large the disk is but that could be a parameter.
>>>>>>>>
>>>>>>>> The alternative way is to use fixed-size and do the math manually=
 but
>>>>>>>> that would not allow wic to grow a partition based on content.
>>>>>>> You can use https://manpages.debian.org/testing/systemd/systemd-gr=
owfs.8.en.html
>>>>>>> which grow partition to the end.
>>>>>> can it grow a mounted partition ? since that will be the case when
>>>>>> growing rootfs partition.
>>>>> It will grow last partition in first boot only.
>>>> my question was will it grow a mounted rootfs parition if that happen=
s
>>>> tobe the last partition, I understand it will grow last partion and d=
o
>>>> it as firstboot service.
>>> I usually use it in case when have dual rootfs (A, B) and data
>>> partition which is expanded to then end of disk.
>>> I don't have experience with growing rootfs (I think it can grow only
>>> not mounted partitions)
>>>>>>>> :rjs
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>> BR,
>>>>>>>
>>>>>>> marek
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>> BR,
>>>>>
>>>>> marek
>>>>>
>>>>>
>>>>>
>>>>>
>>> marek
>>>
>>>
>>> --
>>> as simple and primitive as possible
>>> -------------------------------------------------
>>> Marek Belisko - OPEN-NANDRA
>>> Freelance Developer
>>>
>>> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
>>> Tel: +421 915 052 184
>>> skype: marekwhite
>>> twitter: #opennandra
>>> web: http://open-nandra.com
>>>
>>
>>
>> --
>> | Michael Nazzareno Trimarchi                     Amarula Solutions BV =
|
>> | COO  -  Founder                                      Cruquiuskade 47 =
|
>> | +31(0)851119172                                 Amsterdam 1018 AM NL =
|
>> |                  [`as] http://www.amarulasolutions.com               =
|
>>
>
>
>
>=20

--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------20CD765DB9B49F0396A1CBA7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Thanks, guys, I appreciate it.</p>
    <p>Doing it dynamically on first boot would probably work as it is a
      data partition and not the rootfs partition.</p>
    <p>I will give it a try.</p>
    <p>:rjs<br>
    </p>
    <div class=3D"moz-cite-prefix">On 4/30/20 12:13 PM, Michael Nazzareno
      Trimarchi wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAOf5uw=3DON2QNoHQiBWy7nWwo9QSu1uKLDhLjJ5yeuz1wN17UHA@mail.gma=
il.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hi

On Thu, Apr 30, 2020 at 9:10 PM Michael Nazzareno Trimarchi via
lists.yoctoproject.org
<a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:michael=3Damarulasolutio=
ns.com@lists.yoctoproject.org">&lt;michael=3Damarulasolutions.com@lists.yoc=
toproject.org&gt;</a> wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">
Hi

Well I have write something like this

[Unit]
Description=3DIncreases rootfs image size to fit partition
Requires=3Ddev-disk-by\x2dpartlabel-rootfs.device
After=3Ddev-disk-by\x2dpartlabel-rootfs.device

[Service]
Type=3Doneshot
ExecStart=3D/usr/sbin/sgdisk /dev/disk/by-path/platform-ff0f0000.dwmmc -e
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
This resize gpt up to disk size

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">ExecStart=3D/usr/sbin/parte=
d /dev/disk/by-path/platform-ff0f0000.dwmmc
-s "resizepart 4 -1" quit
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
This resize partition number 4 up to the max

Michael

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">ExecStart=3D/sbin/resize2fs=
 /dev/disk/by-partlabel/rootfs
ExecStart=3D/bin/systemctl disable resize-rootfs.service

StandardOutput=3Djournal+console

[Install]
WantedBy=3Ddefault.target


On Thu, Apr 30, 2020 at 8:30 PM Marek Belisko <a class=3D"moz-txt-link-rfc=
2396E" href=3D"mailto:marek.belisko@gmail.com">&lt;marek.belisko@gmail.com&=
gt;</a> wrote:
</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">
On Thu, Apr 30, 2020 at 8:27 PM Khem Raj <a class=3D"moz-txt-link-rfc2396E=
" href=3D"mailto:raj.khem@gmail.com">&lt;raj.khem@gmail.com&gt;</a> wrote:
</pre>
          <blockquote type=3D"cite">
            <pre class=3D"moz-quote-pre" wrap=3D"">


On 4/30/20 11:25 AM, Marek Belisko wrote:
</pre>
            <blockquote type=3D"cite">
              <pre class=3D"moz-quote-pre" wrap=3D"">On Thu, Apr 30, 2020 =
at 8:23 PM Khem Raj <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:raj.k=
hem@gmail.com">&lt;raj.khem@gmail.com&gt;</a> wrote:
</pre>
              <blockquote type=3D"cite">
                <pre class=3D"moz-quote-pre" wrap=3D"">


On 4/30/20 11:16 AM, Marek Belisko wrote:
</pre>
                <blockquote type=3D"cite">
                  <pre class=3D"moz-quote-pre" wrap=3D"">Hi Rudolf,

On Thu, Apr 30, 2020 at 7:39 PM Rudolf J Streif
<a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:rudolf.streif@ibeeto.com=
">&lt;rudolf.streif@ibeeto.com&gt;</a> wrote:
</pre>
                  <blockquote type=3D"cite">
                    <pre class=3D"moz-quote-pre" wrap=3D"">
I was looking for a way in a wks file to have wic grow the last
partition to fill up the remainder of the disk. Of course wic does not
know how large the disk is but that could be a parameter.

The alternative way is to use fixed-size and do the math manually but
that would not allow wic to grow a partition based on content.
</pre>
                  </blockquote>
                  <pre class=3D"moz-quote-pre" wrap=3D"">You can use <a cl=
ass=3D"moz-txt-link-freetext" href=3D"https://manpages.debian.org/testing/s=
ystemd/systemd-growfs.8.en.html">https://manpages.debian.org/testing/system=
d/systemd-growfs.8.en.html</a>
which grow partition to the end.
</pre>
                </blockquote>
                <pre class=3D"moz-quote-pre" wrap=3D"">
can it grow a mounted partition ? since that will be the case when
growing rootfs partition.
</pre>
              </blockquote>
              <pre class=3D"moz-quote-pre" wrap=3D"">It will grow last par=
tition in first boot only.
</pre>
            </blockquote>
            <pre class=3D"moz-quote-pre" wrap=3D"">
my question was will it grow a mounted rootfs parition if that happens
tobe the last partition, I understand it will grow last partion and do
it as firstboot service.
</pre>
          </blockquote>
          <pre class=3D"moz-quote-pre" wrap=3D"">I usually use it in case =
when have dual rootfs (A, B) and data
partition which is expanded to then end of disk.
I don't have experience with growing rootfs (I think it can grow only
not mounted partitions)
</pre>
          <blockquote type=3D"cite">
            <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
            <blockquote type=3D"cite">
              <blockquote type=3D"cite">
                <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
                <blockquote type=3D"cite">
                  <blockquote type=3D"cite">
                    <pre class=3D"moz-quote-pre" wrap=3D"">
:rjs



</pre>
                  </blockquote>
                  <pre class=3D"moz-quote-pre" wrap=3D"">
BR,

marek




</pre>
                </blockquote>
                <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
              </blockquote>
              <pre class=3D"moz-quote-pre" wrap=3D"">
BR,

marek




</pre>
            </blockquote>
            <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
          </blockquote>
          <pre class=3D"moz-quote-pre" wrap=3D"">
marek


--
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: <a class=3D"moz-txt-link-freetext" href=3D"http://open-nandra.com">ht=
tp://open-nandra.com</a>

</pre>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">


--
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] <a class=3D"moz-txt-link-freetext" href=3D"http:/=
/www.amarulasolutions.com">http://www.amarulasolutions.com</a>             =
  |

</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">


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

--------------20CD765DB9B49F0396A1CBA7--

--PT6L9DhWHUSMC2nZ9XzwKkvMeftZIsS05--

--HGHN49wRsmrM1sNNEWz0raoVcih2NcjAE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl6rWwwACgkQjYyoKScz
m3VP4gf7BSMYQvyVbvEsOAZTBpB0J+gZNJ4zRG2vcer7+ZmSJruiBOMHd0qU9MEL
2k/ckWlNXKw5aObrP3X1v0nyCLrJ2qF85jicfI0wVOlgsMH6Xkw7dvswpxeYW/BZ
wTj0/X+0E50zMI+8ZamkMUuFAX8n1lGZyDSMfLseSfoqP5hESw2DDN2QN0zC2mFS
lNJnxO0+8b2F4ZwG6AY/Bm+Oodl3JSSUrhkXlXd2pQiR7S0Bz6U5VcNnRq2RF738
t7t0RycGQ15Wgwx8QT8mBGNqz5jXmZ23AIcK+qiHgj8NRS/TDXi1F+J+aVsa/vXT
t0fUyf4/0SddQ1kQH8DX/q0NG3GtRg==
=mFhp
-----END PGP SIGNATURE-----

--HGHN49wRsmrM1sNNEWz0raoVcih2NcjAE--
