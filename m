Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.8167.1574871547366225796
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2019 08:19:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=VJJ72l6L;
 spf=neutral (domain: ibeeto.com, ip: 140.211.169.56, mailfrom: rudolf.streif@ibeeto.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3A81E0107A; Wed, 27 Nov 2019 08:19:06 -0800 (PST)
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
	*      [209.85.214.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D34CE01078
	for <yocto@yoctoproject.org>; Wed, 27 Nov 2019 08:19:05 -0800 (PST)
Received: by mail-pl1-f179.google.com with SMTP id o8so5638462pls.5
        for <yocto@yoctoproject.org>; Wed, 27 Nov 2019 08:19:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=i3VVbHFFEB0dBWnvbbVIRrNwMrtdKMJdQy/nHqzq1B0=;
        b=VJJ72l6LmzuyCjlSF6fWXOMMit3XhywBV4NVsnWQo8PmbnEFk2bfhuk++CbfZn+S/9
         wvtapBiZHPnaYOt0CwH3xrbP8l5ATCz3uYyMg2Xx8GNmUj8J3Ir75sykjPoJIZifosqZ
         TOpNNaSXsalqE6BCdNgwIL85rB1IcrGJEc16lmxfiAzVGnoAAAVcadYFqMlfuI2mPUWp
         FJGQ3wORl0mKySHO/dCI5iyVhLZwoUiV6zBCRrgOrAt8hHOs9W0AmBOm7SRGOSDl6IGq
         jJAKllp0TlFBQuXtazES8cHK2hGl5URkqxpjFtJmvVgxAE/h1ewnN/bko3VMhaTTJv/b
         k0zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=i3VVbHFFEB0dBWnvbbVIRrNwMrtdKMJdQy/nHqzq1B0=;
        b=g736iSpE7Nz1NawpQVl0V830SneHfc9qF7MtOUdvksi0LBSMSuGyl7aF/vycWB/tcN
         804024MrzD8vymFHV5tqA8iSNldVqKEbKFJoTElseKLbVvT6qziXqND401d2vPJqY70K
         BEuaeFCK8zbhdzY4nxyB5ju0Hb1jfoh7wLoRq5IJb1BgDvvPbTSUrkzzHPo7sQBANVKB
         JpS7AoCLwYodSh4cQ0KJGC6mi0uhjHnKvzChutWRWNZ7EPVKldAcl6NV0Kv/E2wzg0BE
         UA3sJQZfegphcAoWzEfOjXJKOirL38yS+dfd0E5N97avW50QASpn3ktRVz/8MXsgQ0gh
         +9IA==
X-Gm-Message-State: APjAAAUYLxDwnb9JjNlP01PxjqCVK2i5LntPWFV/nRLZnvXX1tnu3cyk
	c7Cm2AL6NR2d/6X8gVqAgRUZR2IkoyUZ+w==
X-Google-Smtp-Source: APXvYqwdAqFbnXI9H1033K/YU/w8ls1xfmXvsswSpUukmDljIxP8hC2HfnqYMf8tcnO1o+f56DG5Wg==
X-Received: by 2002:a17:902:760b:: with SMTP id k11mr4776254pll.272.1574871544204;
        Wed, 27 Nov 2019 08:19:04 -0800 (PST)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id v19sm7235767pjr.14.2019.11.27.08.19.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Nov 2019 08:19:03 -0800 (PST)
Subject: Re: [yocto] How to reduce rootfs image size?
To: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
References: <CAA=hcWSLMGabXY8pKZpNzoYhcZMGJU6T5awJr88_NTKP6xWaLQ@mail.gmail.com>
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
Message-ID: <adab910e-0212-239a-0eda-8857affe85dd@ibeeto.com>
Date: Wed, 27 Nov 2019 08:19:01 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAA=hcWSLMGabXY8pKZpNzoYhcZMGJU6T5awJr88_NTKP6xWaLQ@mail.gmail.com>
X-Groupsio-MsgNum: 47438
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="TNvy9RlUkwYSUzZJ1w5y9LhEHe78tQ7Jy"

--TNvy9RlUkwYSUzZJ1w5y9LhEHe78tQ7Jy
Content-Type: multipart/mixed; boundary="z0gcHPhwfct8QFBNoA6WXcA1jDfdflB6L"

--z0gcHPhwfct8QFBNoA6WXcA1jDfdflB6L
Content-Type: multipart/alternative;
 boundary="------------155F645D6A4B46948484ECE6"
Content-Language: en-US

--------------155F645D6A4B46948484ECE6
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi JH,

The image root file system size is based on the actual content of the
root file system. Besides ROOTFS_SIZE there are other variables that
control how the root file system is sized:

IMAGE_ROOTFS_SIZE: Defines the size in kilobytes of the created root
filesystem image. The
build system uses this value as a request or recommendation. The final
root filesystem
image size may be larger depending on the actual space required. The
default value is
65536.

IMAGE_ROOTFS_ALIGNMENT: Defines the alignment of the root filesystem
image in
kilobytes. If the final size of the root filesystem image is not a
multiple of this value, it is
rounded up to the nearest multiple of it. The default value is 1.

IMAGE_ROOTFS_EXTRA_SPACE: Adds extra free space to the root filesystem
image. The
variable specifies the value in kilobytes. For example, to add an
additional 4 GB of space, set
the variable to IMAGE_ROOTFS_EXTRA_SPACE =3D "4194304". The default value=

is 0.

IMAGE_OVERHEAD_FACTOR: This variable specifies a multiplicator for the
root filesystem
image. The factor is applied after the actual space required by the root
filesystem has been
determined. The default value is 1.3.


Here is some pseudo code on how these variables are used to determine
the final root file system size:

_get_rootfs_size():
=C2=A0=C2=A0=C2=A0 ROOTFS_SIZE =3D`du -ks IMAGE_ROOTFS`
=C2=A0=C2=A0=C2=A0 BASE_SIZE =3D ROOTFS_SIZE * IMAGE_OVERHEAD_FACTOR

=C2=A0=C2=A0=C2=A0 if (BASE_SIZE < IMAGE_ROOTFS_SIZE):
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 IMG_SIZE =3D IMAGE_ROOTFS_SIZE=
 + IMAGE_ROOTFS_EXTRA_SPACE
=C2=A0=C2=A0=C2=A0 else:
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 IMG_SIZE =3D BASE_SIZE + IMAGE=
_ROOTFS_EXTRA_SPACE

=C2=A0=C2=A0=C2=A0 IMG_SIZE =3D IMG_SIZE + IMAGE_ROOTFS_ALIGNMENT =E2=80=93=
 1
=C2=A0=C2=A0=C2=A0 IMG_SIZE =3D IMG_SIZE % IMAGE_ROOTFS_ALIGNMENT

=C2=A0=C2=A0=C2=A0 return IMG_SIZE


:rjs

On 11/27/19 3:12 AM, JH wrote:
> Hi,
>
> Does the Yocto rootfs image size is based on real contents included in
> the image-rootfs.tar.gz?
>
> When I build the image with very large size of applications and
> libraries such as boost, I have my image-rootfs.tr.gz about 44 MB,
> then I removed all large size of applications and libraries, I changed
> IMAGE_ROOTFS_SIZE to a small size IMAGE_ROOTFS_SIZE =3D 20000, I though=
t
> the image-rootfs.tar.gz should be reduced to a small size, but it is
> still 43 MB I don't believe it is that big, which variable I should
> use to reduce the image size?
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
> View/Reply Online (#47433): https://lists.yoctoproject.org/g/yocto/mess=
age/47433
> Mute This Topic: https://lists.yoctoproject.org/mt/62495609/3617932
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [rudolf.stre=
if@ibeeto.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------155F645D6A4B46948484ECE6
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi JH,</p>
    <p>The image root file system size is based on the actual content of
      the root file system. Besides ROOTFS_SIZE there are other
      variables that control how the root file system is sized:</p>
    <p>IMAGE_ROOTFS_SIZE: Defines the size in kilobytes of the created
      root filesystem image. The<br>
      build system uses this value as a request or recommendation. The
      final root filesystem<br>
      image size may be larger depending on the actual space required.
      The default value is<br>
      65536.<br>
    </p>
    <p>IMAGE_ROOTFS_ALIGNMENT: Defines the alignment of the root
      filesystem image in<br>
      kilobytes. If the final size of the root filesystem image is not a
      multiple of this value, it is<br>
      rounded up to the nearest multiple of it. The default value is 1.<b=
r>
    </p>
    <p>IMAGE_ROOTFS_EXTRA_SPACE: Adds extra free space to the root
      filesystem image. The<br>
      variable specifies the value in kilobytes. For example, to add an
      additional 4 GB of space, set<br>
      the variable to IMAGE_ROOTFS_EXTRA_SPACE =3D "4194304". The default=

      value is 0.<br>
    </p>
    <p>IMAGE_OVERHEAD_FACTOR: This variable specifies a multiplicator
      for the root filesystem<br>
      image. The factor is applied after the actual space required by
      the root filesystem has been<br>
      determined. The default value is 1.3.</p>
    <p><br>
    </p>
    <p>Here is some pseudo code on how these variables are used to
      determine the final root file system size:</p>
    <p>_get_rootfs_size():<br>
      =C2=A0=C2=A0=C2=A0 ROOTFS_SIZE =3D`du -ks IMAGE_ROOTFS`<br>
      =C2=A0=C2=A0=C2=A0 BASE_SIZE =3D ROOTFS_SIZE * IMAGE_OVERHEAD_FACTO=
R<br>
    </p>
    <p>=C2=A0=C2=A0=C2=A0 if (BASE_SIZE &lt; IMAGE_ROOTFS_SIZE):<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 IMG_SIZE =3D IMAGE_ROOTF=
S_SIZE + IMAGE_ROOTFS_EXTRA_SPACE<br>
      =C2=A0=C2=A0=C2=A0 else:<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 IMG_SIZE =3D BASE_SIZE +=
 IMAGE_ROOTFS_EXTRA_SPACE<br>
    </p>
    <p>=C2=A0=C2=A0=C2=A0 IMG_SIZE =3D IMG_SIZE + IMAGE_ROOTFS_ALIGNMENT =
=E2=80=93 1<br>
      =C2=A0=C2=A0=C2=A0 IMG_SIZE =3D IMG_SIZE % IMAGE_ROOTFS_ALIGNMENT<b=
r>
    </p>
    <p>=C2=A0=C2=A0=C2=A0 return IMG_SIZE</p>
    <p><br>
    </p>
    <p>:rjs<br>
    </p>
    <div class=3D"moz-cite-prefix">On 11/27/19 3:12 AM, JH wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAA=3DhcWSLMGabXY8pKZpNzoYhcZMGJU6T5awJr88_NTKP6xWaLQ@mail.gm=
ail.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hi,

Does the Yocto rootfs image size is based on real contents included in
the image-rootfs.tar.gz?

When I build the image with very large size of applications and
libraries such as boost, I have my image-rootfs.tr.gz about 44 MB,
then I removed all large size of applications and libraries, I changed
IMAGE_ROOTFS_SIZE to a small size IMAGE_ROOTFS_SIZE =3D 20000, I thought
the image-rootfs.tar.gz should be reduced to a small size, but it is
still 43 MB I don't believe it is that big, which variable I should
use to reduce the image size?

Thank you.

Kind regards,

- jh
</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.

View/Reply Online (#47433): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/47433">https://lists.yoctopr=
oject.org/g/yocto/message/47433</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
=2Eyoctoproject.org/mt/62495609/3617932">https://lists.yoctoproject.org/m=
t/62495609/3617932</a>
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

--------------155F645D6A4B46948484ECE6--

--z0gcHPhwfct8QFBNoA6WXcA1jDfdflB6L--

--TNvy9RlUkwYSUzZJ1w5y9LhEHe78tQ7Jy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl3eofYACgkQjYyoKScz
m3U3Qwf/bPKySufei1GqUMeRKU66BjnrR7htS2jZc00ywmijw9u0Qsy9cich1iBH
WSH3uI7upSB92bUx5HpErVJeJ7k+YI72AnGpJm+Oo5NzQl01NXWVztHTXdfvrk3q
kxEfn94m/olX7kQtYfaW5jexH1jAL5Z10Jxn8EP1er9K7+Pb+17JeUmDmcArGk45
RlEJ8b9sk7SPVVwJJtwzxeEra96Wrcf90iPIdzR/8mD4rgK6NZkZZihLFFP8ThAy
2IejAm6k7BAA2/G+5kuq1R87YDdXa1ZEzNP7LquaCTu0M9L3SFGMgJe/8hkn90+f
E/trSJwIc4QsTmyq1iULOJl6OJKCVw==
=FL99
-----END PGP SIGNATURE-----

--TNvy9RlUkwYSUzZJ1w5y9LhEHe78tQ7Jy--
