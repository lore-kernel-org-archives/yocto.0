Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4D9BE00D83; Mon, 26 Aug 2019 10:11:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
	[209.85.215.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB831E00D53
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 10:11:13 -0700 (PDT)
Received: by mail-pg1-f182.google.com with SMTP id p3so10968187pgb.9
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 10:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=pECmBTpDWr5YZU6GLCMa1nIAWqyxDLnQHQB0kl2w4c4=;
	b=BWPcZa+LzaMf3E5pxaHS2Ufx4z5obhtwFmijdWcdNLhDkW4jwzsrHWoYEvVtJlzLpC
	Sr/xLaAKS6MtTXW3WxqCBgTV1w7eiVewQOZRt/iCD8yj04w3QuZs8Ui8QXj6Z31dDDuK
	/iTmaqgTynuYzwXAkUV76JuxtlUBBoqkkWvQuf8H+u+toSiAj3VFeeQp62UlMYN/JDkD
	A7L2GNmmROSK3qQQViQXdoYxxDgE3FOE/SzcuIvRf0k5u+Oyxr7mZGVWY2x62ZdkAVBf
	Kt54eREcynYwJNY+bUQLOILOINE2BYlspkn24KKFn4lIooYoXRHNnstjZ1BIxXhELxTU
	/S5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=pECmBTpDWr5YZU6GLCMa1nIAWqyxDLnQHQB0kl2w4c4=;
	b=S7rouGf5zetQGGqBw8zsdUXerQqWpL4Ae1ichTU7uW0PgJwEPUpLWV9SXN8ETP7xqc
	wwb5xrDiBPDrUM4oguiLxlvjNKgbo9YSJet4BKv3etkt0sU7U1siAzJZDsx6TFIYF3cZ
	Ba0TB2tE6o+EjDDfCAYAqbVuN4KYz5fXmab8G2TDoX2kx6Sii0aAN2WvozStzLvopjDo
	KCJL/ti8icog9vNyl1PgLLhR2/lYuxHi346A5uxNQBX3paqUQIDSoAdqM4J0hU/Z/qDV
	mKCNgl1FNHCUd3HFeXgdaTYNIyh8Oc2paDgiiEXMojzpiSnvwc+wXq/gH0zJffljmJhr
	XoiQ==
X-Gm-Message-State: APjAAAXyhKUi5V/me14jxqB0F7Id68Jpg7aV1zSbKx+arY3XctljRqNl
	zVIx20Bb6DgU4A5Z1L0X7vduQ2GHwOwt4A==
X-Google-Smtp-Source: APXvYqw5zVCFWyY4beMhxVKV6a23vvmiXz9Az+/P/eUDT78SXDR8xBjA4yJuoUgp2HK1T0KYBrfv/A==
X-Received: by 2002:a17:90a:fa8f:: with SMTP id
	cu15mr21088383pjb.119.1566839472806; 
	Mon, 26 Aug 2019 10:11:12 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	a4sm13513689pfi.55.2019.08.26.10.11.10
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 26 Aug 2019 10:11:11 -0700 (PDT)
To: Michael Eichhorn <devil.69@gmx.de>, yocto@yoctoproject.org
References: <trinity-777d9367-a666-4cf2-a1ed-bc9942f2a8bf-1566828959769@3c-app-gmx-bs32>
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
Message-ID: <b808948d-2bc7-f055-d2ca-262261b9a988@ibeeto.com>
Date: Mon, 26 Aug 2019 10:11:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <trinity-777d9367-a666-4cf2-a1ed-bc9942f2a8bf-1566828959769@3c-app-gmx-bs32>
Subject: Re: kernel modul install
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
X-List-Received-Date: Mon, 26 Aug 2019 17:11:14 -0000
X-Groupsio-MsgNum: 46409
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="bz7QUEcvc7URqCxVX547e0T5aQWJm7yWb"

--bz7QUEcvc7URqCxVX547e0T5aQWJm7yWb
Content-Type: multipart/mixed; boundary="B9L5gYnAHeOrHI7ZIMgSVcrnS0hlwQPX0";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Michael Eichhorn <devil.69@gmx.de>, yocto@yoctoproject.org
Message-ID: <b808948d-2bc7-f055-d2ca-262261b9a988@ibeeto.com>
Subject: Re: [yocto] kernel modul install
References: <trinity-777d9367-a666-4cf2-a1ed-bc9942f2a8bf-1566828959769@3c-app-gmx-bs32>
In-Reply-To: <trinity-777d9367-a666-4cf2-a1ed-bc9942f2a8bf-1566828959769@3c-app-gmx-bs32>

--B9L5gYnAHeOrHI7ZIMgSVcrnS0hlwQPX0
Content-Type: multipart/alternative;
 boundary="------------EEAC06A3804A9007F3B44306"
Content-Language: en-US

--------------EEAC06A3804A9007F3B44306
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Michael,

You might want to share your recipe.

Since do_install works on a private sysroot for your recipe it is
unlikely that your module conflicts with a module with the same name
from another recipe. You might install the module twice or you might
have some leftovers from your development process. You might want to
start with a clean environment: bitbake -c cleanall <recipe>.

:rjs

On 8/26/19 7:15 AM, Michael Eichhorn wrote:
> Dear all,
> =C2=A0
> i am new to yocto and i created a recipe for a kernel modul for my bt
> and wifi chip.
> it seems that everthing works, but in my do_install i receive an error:=

> ...is trying to install files into a shared area when those files
> already exist...
> My receipe is somehow producing an bluetooth.ko which is already
> existing because
> of my linux-mainline recipe.
> What can i do? the relevant one is the one from my chip recipe.
> =C2=A0
> Best regards,
> Michael
>
--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------EEAC06A3804A9007F3B44306
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Michael,</p>
    <p>You might want to share your recipe.</p>
    <p>Since do_install works on a private sysroot for your recipe it is
      unlikely that your module conflicts with a module with the same
      name from another recipe. You might install the module twice or
      you might have some leftovers from your development process. You
      might want to start with a clean environment: bitbake -c cleanall
      &lt;recipe&gt;.</p>
    <p>:rjs<br>
    </p>
    <div class=3D"moz-cite-prefix">On 8/26/19 7:15 AM, Michael Eichhorn
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:trinity-777d9367-a666-4cf2-a1ed-bc9942f2a8bf-1566828959769@3c=
-app-gmx-bs32">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div style=3D"font-family: Verdana;font-size: 12.0px;">
        <div>Dear all,</div>
        <div>=C2=A0</div>
        <div>i am new to yocto and i created a recipe for a kernel modul
          for my bt and wifi chip.</div>
        <div>it seems that everthing works, but in my do_install i
          receive an error:</div>
        <div>...is trying to install files into a shared area when those
          files already exist...</div>
        <div>My receipe is somehow producing an bluetooth.ko which is
          already existing because</div>
        <div>of my linux-mainline recipe.</div>
        <div>What can i do? the relevant one is the one from my chip
          recipe.</div>
        <div>=C2=A0</div>
        <div>Best regards,</div>
        <div>Michael</div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </body>
</html>

--------------EEAC06A3804A9007F3B44306--

--B9L5gYnAHeOrHI7ZIMgSVcrnS0hlwQPX0--

--bz7QUEcvc7URqCxVX547e0T5aQWJm7yWb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl1kEq0ACgkQjYyoKScz
m3WYJgf/R1sm4Kokn0yXEuPFIA9tjxlNT0l0sFtwkcFv6vrWEndKVTfnA55b6G2W
+MgitxdIZ4L8MotT6Z6asvGtXbonizHneFkXpR3/QZpE/VJHfLM1nDmWukIv785X
frziZ8W11allyQU6iVG64nkoQrB8gNZxnkDkPwsPEOY4h/k42XkAaS1n6BW3SqyW
2k+GFKeh2y2xwj+mafGtLQocozBWB/tXW76v57u2qeriJJVWce+Kqhmx1KtDImcN
W+OfN3t8zW8kx/qicUB3g3zuZSq0S6ySGL7Cj25qUBdv4fh9gvfec0Nk63VYLvZA
Rdz0NNAQQA6DzZP/G9rR8SndhKbdYg==
=U4EV
-----END PGP SIGNATURE-----

--bz7QUEcvc7URqCxVX547e0T5aQWJm7yWb--
