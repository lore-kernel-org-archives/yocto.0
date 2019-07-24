Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38FB7E00D9F; Wed, 24 Jul 2019 09:19:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68A22E00D5F
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 09:19:31 -0700 (PDT)
Received: by mail-pl1-f177.google.com with SMTP id y8so22201970plr.12
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 09:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=ZbEU7oG/QC53Wexk2/XiN4hGSvSlPMaG6W6A59EtH1s=;
	b=ALqbCz2NNCdQgCxaePVjJ71zsfo7hOsFNeYLP/eLdCZ2z/WFoOA+9NqjxISEQPyoRV
	UPrsn1mjH+aNqF6vgD0ct4kWRYECmpl1DidqQhieUGjoFvnrwVnyI1CDlHGmBx4ILnFi
	x1sWUnmIaRVmRDFq0s0YZWYy16O/ZkOacUVcnxVHC096lUO/lao6gNVGphose1oKEpyU
	1z5b98e/paeGfRo5gbskhExQzdZeh19p4TE7HCBMhWfPVpeXsXXV4iSDJxQvzZAuL7SF
	sbUOuB4MroRx6F7VJSG1215vBmyaoyiPmblkTGchxQXw0G1gTGYhFjQqpOM+KbDpdLiL
	tNzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=ZbEU7oG/QC53Wexk2/XiN4hGSvSlPMaG6W6A59EtH1s=;
	b=NMlbllraI5Y1C+acgm2AJwYFHBGeO8PHMlIhGcvKiGrkNTV06eV0JE4sjoupPkBCgI
	WMCpcPB/ZN2Z+kyTJpW+C9AhUoGiezTHO9Aq6eHQ/h9Pby576Rm0HB0UvWyYPGgwNb18
	/rRhEsCRdI38pcmPdWC2yJZky5rikyaX678F6yeUbL1nZiybx81rsjNe1QX0zuZ9KT8t
	trCgYJ5DJFwojdrSF7msBY9Oi2DZvRZEY3Mzc0ahzksHg3XVVd3PnG7ZlqW5FDwHUL7E
	zUr86VWtt/vTPP3R4J4tNe4RkrpFOpe3wN98OeBcIQUYfx7XRAzRNfJ1sKF4Xah58tek
	8n1g==
X-Gm-Message-State: APjAAAXWN1II3bHFd4tpDjoPrZa7smDMFCeWS1eArXYW2drYCxjnM7UC
	zoL2ieN1ZxQbA11Lm7+Phf2lzgaV
X-Google-Smtp-Source: APXvYqyJqBHcSTEMine+Onk+cmezoWXaWfMzm8RfM5FDyINTXkYulryVSUqEHEcfH5OdJ6uZGHXDyw==
X-Received: by 2002:a17:902:2884:: with SMTP id
	f4mr85157428plb.286.1563985170561; 
	Wed, 24 Jul 2019 09:19:30 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	z68sm43013092pgz.88.2019.07.24.09.19.29
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Wed, 24 Jul 2019 09:19:29 -0700 (PDT)
To: Russell Peterson <peterson.russell@gmail.com>, yocto@yoctoproject.org
References: <CAJxG=fmKGb1fSVi=tRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.gmail.com>
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
Message-ID: <352d8e79-5b16-b711-0051-e3dc27e90f75@ibeeto.com>
Date: Wed, 24 Jul 2019 09:19:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <CAJxG=fmKGb1fSVi=tRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.gmail.com>
Subject: Re: PREMIRROR
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
X-List-Received-Date: Wed, 24 Jul 2019 16:19:32 -0000
X-Groupsio-MsgNum: 46064
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="sDETZVKkatihTjs8kba9OkbTvPaY5XWZf"

--sDETZVKkatihTjs8kba9OkbTvPaY5XWZf
Content-Type: multipart/mixed; boundary="qaw8R0deLQbJumeqAsG0oVlRMD7mXIE5n";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Russell Peterson <peterson.russell@gmail.com>, yocto@yoctoproject.org
Message-ID: <352d8e79-5b16-b711-0051-e3dc27e90f75@ibeeto.com>
Subject: Re: [yocto] PREMIRROR
References: <CAJxG=fmKGb1fSVi=tRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.gmail.com>
In-Reply-To: <CAJxG=fmKGb1fSVi=tRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.gmail.com>

--qaw8R0deLQbJumeqAsG0oVlRMD7mXIE5n
Content-Type: multipart/alternative;
 boundary="------------FA37E386FBBC0ED6CC3BE9E2"
Content-Language: en-US

--------------FA37E386FBBC0ED6CC3BE9E2
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Russell,

You don't need PREMIRROR for this functionality. It's not exactly
intended for that use.

The simplest way to achieve what you are looking for is to use devtool.
If I understand you correctly you are downloading sources from a remote
repo on GitHub but want to have them locally to make modifications? If
so use:

devtool add myrecipe localsrc fetchuri

from your build environment (you have to source oe-init-build-env
first). devtool then fetches the source from fetchuri into a directory
localsrc as a git repo and automatically creates the recipe for it.

:rjs


On 7/23/19 1:49 PM, Russell Peterson wrote:
> Hello,
>
> I am looking to have bitbake pick up files for a particular recipe
> from a local git repository using the PREMIRROR functionality.
>
> Basically, the recipe (bb file) points to github but in my local build
> I add PREMIRROR_prepend =3D "git://.*/.*=C2=A0
> git:///local/path/BASENAME;protocol=3Dfile\n"
>
> I will probably make the git regular expression more exact for my
> specific github repo but this works for now.
>
> This all works (as I deleted the github download from the local
> download directory) because I can see in the do_fetch log and the
> correct (local) repo was found and placed in the DL_DIR.
>
> Problem is, do_unpack fails because it appears to be looking for the
> original (github) SRC_URI.=C2=A0 Then it complains about "no up to date=

> source found: clone or directory not available or not up to date
> (shallow clone not enabled)"
>
> Any help on what I am missing would be appreciated.
>
> Regards,
>
> Russell
>
>
>
--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700


--------------FA37E386FBBC0ED6CC3BE9E2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Russell,</p>
    <p>You don't need PREMIRROR for this functionality. It's not exactly
      intended for that use.</p>
    <p>The simplest way to achieve what you are looking for is to use
      devtool. If I understand you correctly you are downloading sources
      from a remote repo on GitHub but want to have them locally to make
      modifications? If so use:</p>
    <p>devtool add myrecipe localsrc fetchuri</p>
    <p>from your build environment (you have to source oe-init-build-env
      first). devtool then fetches the source from fetchuri into a
      directory localsrc as a git repo and automatically creates the
      recipe for it.</p>
    <p>:rjs<br>
    </p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 7/23/19 1:49 PM, Russell Peterson
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAJxG=3DfmKGb1fSVi=3DtRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hello,<br>
        </div>
        <div><br>
        </div>
        <div>I am looking to have bitbake pick up files for a particular
          recipe from a local git repository using the PREMIRROR
          functionality.</div>
        <div><br>
        </div>
        <div>Basically, the recipe (bb file) points to github but in my
          local build I add PREMIRROR_prepend =3D "git://.*/.*=C2=A0
          git:///local/path/BASENAME;protocol=3Dfile\n"</div>
        <div><br>
        </div>
        <div>I will probably make the git regular expression more exact
          for my specific github repo but this works for now.</div>
        <div><br>
        </div>
        <div>This all works (as I deleted the github download from the
          local download directory) because I can see in the do_fetch
          log and the correct (local) repo was found and placed in the
          DL_DIR.</div>
        <div><br>
        </div>
        <div>Problem is, do_unpack fails because it appears to be
          looking for the original (github) SRC_URI.=C2=A0 Then it compla=
ins
          about "no up to date source found: clone or directory not
          available or not up to date (shallow clone not enabled)"</div>
        <div><br>
        </div>
        <div>Any help on what I am missing would be appreciated.</div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div><br>
        </div>
        <div>Russell</div>
        <div><br>
        </div>
        <div><br>
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

--------------FA37E386FBBC0ED6CC3BE9E2--

--qaw8R0deLQbJumeqAsG0oVlRMD7mXIE5n--

--sDETZVKkatihTjs8kba9OkbTvPaY5XWZf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl04hRAACgkQjYyoKScz
m3VJRAf/WiH3Bo0I3yd7yF5NpHD/X1ZcdF1YYVq47nTqjJu6tdvOb5x32QGj/dED
nXpss45wn10j5ZwnHJ3lWLc7hum0//47sld4o2vgU2WRvZhpTHQhxKr3CcgD9Ngw
fp8o+5s6TwMs6m0QLfSk/fV9CqBjSoFr2PwoDiJ8lVn2Ea35Q+N7qQEvc1xRL721
AInEkbDA+Qn2uLXeU0v5W8FHRnwIC1KUBHo+qrgGxSi3ml5T7FxRP5mAPCO2a7cV
eDlojxzIsaceRAUPDRjSZUmg/4GOGaAmSqpBIQ29ZIqpnINziGI6TANlkC8jaDkC
lspI+/Cav7Fe18NQOCHjB55+xP6ExQ==
=HdND
-----END PGP SIGNATURE-----

--sDETZVKkatihTjs8kba9OkbTvPaY5XWZf--
