Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97E89E00D44; Tue, 25 Jun 2019 08:15:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E8DCE00CD2
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 08:15:19 -0700 (PDT)
Received: by mail-pf1-f196.google.com with SMTP id i189so9634006pfg.10
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 08:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=55+WObGH7mMQxD7rcy4tGBktfx/eE8dL1Z7W9wgJ+iA=;
	b=Sy8Wl4/b2WygQDemaQWezysZD/Ory95eERztJy7ji4BAMNr/x5RHseT0L4DghKDZ+X
	EkgnI0g74QtvMmjZeCWfV250fcBNwHYLYdBwssvy4tyA3qJfAUkLXbP1PJUkH1xjYdB5
	urTL5eUT9hk/lmsRge5Ap3se6JN2dhaZX2apJ7+eF2rs8JjaB2fKZ9skfge7+BwvYaoT
	orYCixGo5YT5ADfr0YJ0B9Je+jlHGn5CKKkZJ0T8ZtvVhHTCbbwfXrYhWdWFy7OZAMbr
	fI0gLXjIqZ78rcehvC7jWt3GLlUqAp0xQX07j2TTjl5ByKE4C+P6jrsZl27dTRHGAhYx
	PU0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=55+WObGH7mMQxD7rcy4tGBktfx/eE8dL1Z7W9wgJ+iA=;
	b=MB47p8HCVyTU+W2uWHSqvHKEqvH0ibkjwRR2/70b7c21vt2yjyG42A/FxOpUtTZDql
	Ke8iUVqq8at2K62VMkqLlxgSUf5IQAt4uvAB4zL2uD69WB5253SgBk+Fs985+mB7v3NO
	R0a4h9k+LX81PGy99OZ6n4klam1dm0mU8HYeYRVh7qQpsfMCgjP6WVDU+wUoCQDzNTrS
	cr8PS+EukyyGxIvb2h+0gtqlCUSYMGxkbiGeyiMI6AkHAbjJ6MTxbxe4o+byY9AlGINP
	mMv4Rsx5Zs5bN2g6ljiKi3hQr7kFKHMhvz9UytrEQ+nvLK6v1UUMkuHjcniOT9sff6kF
	AFzQ==
X-Gm-Message-State: APjAAAXbcDYlerVcsLv7M/1noHET/cXBFLSOT58visVZeSs6291VIvbE
	7TZongnMDmQjzmnIOLrbXnFeWBOUgSc=
X-Google-Smtp-Source: APXvYqzhSp/IdIbfVdyydbXm2zu+gE7Bp/VsZpaom+QXCU3x7JdiaoBa3KSGmtoobTbNUenetViWSQ==
X-Received: by 2002:a63:231a:: with SMTP id j26mr38543365pgj.389.1561475718246;
	Tue, 25 Jun 2019 08:15:18 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	a21sm23989965pfi.27.2019.06.25.08.15.16
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Tue, 25 Jun 2019 08:15:16 -0700 (PDT)
To: Larry Brown <elcapitanbrown@gmail.com>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <CAOmL4UhzAiin-LzbTQjgFbnKw8KOS=7EbktWcByVsXacB1JhpA@mail.gmail.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Openpgp: preference=signencrypt
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
Message-ID: <2bcecb85-630c-0d43-2cbc-74f8f7aec3e4@ibeeto.com>
Date: Tue, 25 Jun 2019 08:15:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <CAOmL4UhzAiin-LzbTQjgFbnKw8KOS=7EbktWcByVsXacB1JhpA@mail.gmail.com>
Subject: Re: Creating my own bsp
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Jun 2019 15:15:20 -0000
X-Groupsio-MsgNum: 45719
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="hbItxOw0CiQvjyQyfnWKphsTTCa96HknO"

--hbItxOw0CiQvjyQyfnWKphsTTCa96HknO
Content-Type: multipart/mixed; boundary="4Zh7BiVbs7Eu6JW6etgt2m3Qm4JRhz3Cz";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Larry Brown <elcapitanbrown@gmail.com>,
 Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <2bcecb85-630c-0d43-2cbc-74f8f7aec3e4@ibeeto.com>
Subject: Re: [yocto] Creating my own bsp
References: <CAOmL4UhzAiin-LzbTQjgFbnKw8KOS=7EbktWcByVsXacB1JhpA@mail.gmail.com>
In-Reply-To: <CAOmL4UhzAiin-LzbTQjgFbnKw8KOS=7EbktWcByVsXacB1JhpA@mail.gmail.com>

--4Zh7BiVbs7Eu6JW6etgt2m3Qm4JRhz3Cz
Content-Type: multipart/alternative;
 boundary="------------19850073EF67D2EDAD1A13FF"
Content-Language: en-US

--------------19850073EF67D2EDAD1A13FF
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Larry,

You would want to be more specific with your question and eventually
post error messages you are encountering. It looks like you are hung up
at the machine configuration file. You may want to post that. As far as
BSP layers and machine configuration files are concerned, my advice is
to start with an existing configuration that is close to your actual
hardware.

:rjs

On 6/21/19 10:46 AM, Larry Brown wrote:
> I've come across references to "yocto-bsp" script that should help
> build a bsp.=C2=A0 I'm starting from scratch with an arm 7M and trying =
to
> use the raspberrypi bsp as a reference.=C2=A0 There is so much complexi=
ty
> I'm not sure where to start.
>
> After setting up the files for the Linux kernel I'm using already on
> the board and the config, it first complained about TUNE_ARCH not
> being present.=C2=A0 This is not present in the meta-raspberrypi conten=
t
> but based on something I came across this just wants arm.=C2=A0 Then it=

> complains TUNE_PKGARCH is not set.=C2=A0 I don't know what this is look=
ing
> for and I'm not getting effective hits searching for it.=C2=A0 I'm gues=
sing
> there are going to be a lot more after these two complaints.=C2=A0 It w=
ould
> be nice to read what went into a simple bsp that worked under for an
> arm board.
>
> PS I'm using the warrior release as it worked for bringing up the
> raspberry pi.
>
> Any help would be greatly appreciated.=C2=A0
>
> --=20
> Larry Brown
>
>
--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700


--------------19850073EF67D2EDAD1A13FF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Larry,</p>
    <p>You would want to be more specific with your question and
      eventually post error messages you are encountering. It looks like
      you are hung up at the machine configuration file. You may want to
      post that. As far as BSP layers and machine configuration files
      are concerned, my advice is to start with an existing
      configuration that is close to your actual hardware.</p>
    <p>:rjs<br>
    </p>
    <div class=3D"moz-cite-prefix">On 6/21/19 10:46 AM, Larry Brown wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAOmL4UhzAiin-LzbTQjgFbnKw8KOS=3D7EbktWcByVsXacB1JhpA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-family:comic sans
          ms,sans-serif">I've come across references to "yocto-bsp"
          script that should help build a bsp.=C2=A0 I'm starting from
          scratch with an arm 7M and trying to use the raspberrypi bsp
          as a reference.=C2=A0 There is so much complexity I'm not sure
          where to start.</div>
        <div class=3D"gmail_default" style=3D"font-family:comic sans
          ms,sans-serif"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:comic sans
          ms,sans-serif">After setting up the files for the Linux kernel
          I'm using already on the board and the config, it first
          complained about TUNE_ARCH not being present.=C2=A0 This is not=

          present in the meta-raspberrypi content but based on something
          I came across this just wants arm.=C2=A0 Then it complains
          TUNE_PKGARCH is not set.=C2=A0 I don't know what this is lookin=
g
          for and I'm not getting effective hits searching for it.=C2=A0 =
I'm
          guessing there are going to be a lot more after these two
          complaints.=C2=A0 It would be nice to read what went into a sim=
ple
          bsp that worked under for an arm board.</div>
        <div class=3D"gmail_default" style=3D"font-family:comic sans
          ms,sans-serif"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:comic sans
          ms,sans-serif">PS I'm using the warrior release as it worked
          for bringing up the raspberry pi.</div>
        <div class=3D"gmail_default" style=3D"font-family:comic sans
          ms,sans-serif"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:comic sans
          ms,sans-serif">Any help would be greatly appreciated.=C2=A0</di=
v>
        <div><br>
        </div>
        -- <br>
        <div dir=3D"ltr" class=3D"gmail_signature"
          data-smartmail=3D"gmail_signature">
          <div dir=3D"ltr">Larry Brown
            <div><br>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
  </body>
</html>

--------------19850073EF67D2EDAD1A13FF--

--4Zh7BiVbs7Eu6JW6etgt2m3Qm4JRhz3Cz--

--hbItxOw0CiQvjyQyfnWKphsTTCa96HknO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl0SOoMACgkQjYyoKScz
m3XLwAf/ficld1v0adSERzKZtWmvcPRSfi2ghq4RzyG+ROfasWrGzt38ezaUBli9
1yc7V7dM6wxhRPq/BUGI88BOlUm3vp9Bg1FKfbY1Qa92Bpy1F6w5O4eAfYdfe/kb
c2YX//sRHhiJZANFKhTn5xYhUCrTY1OYZ++zVZ80eQIvw9uh7kunQZFe/N7NBIoV
/I+9ImvnimyoIz2W7jygwTKsfdtdHbt5S41TDS09xdldQbOKTZwmFSFnDH9lenTM
4RQ/8wP/PuXqzGBND0rNUIBjEGL8X5yoWn4Gtztk0QNXUla30KGtFryigmV7DPot
H656peTwMt/h73/n8OnjC9o27f216g==
=PaRD
-----END PGP SIGNATURE-----

--hbItxOw0CiQvjyQyfnWKphsTTCa96HknO--
