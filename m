Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
 by mx.groups.io with SMTP id smtpd.web10.4756.1580271890332978803
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2020 20:24:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=UQfLEMVX;
 spf=neutral (domain: ibeeto.com, ip: 209.85.214.193, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pl1-f193.google.com with SMTP id c23so5963387plz.4
        for <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2020 20:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=HQ8bxQN+gbkEzzMmh0qO6WmOXGpeeVG4KMuzzVB8fpU=;
        b=UQfLEMVXH6gBGWtn1FZpCuDGFoB/x5DoNcfAKDAg2MYZ5d+k2t8Q+MwSTun97wfs5Q
         ZfQeDB1HDSyy4b3h2WnYK2gaPRYYsifi7E7swNLUqaK3+uh2d1Cy0X2L5HcWXtif7uQG
         iGUjbXy6z3iP1+cpyM6Ibfn2XgknaflFMbbI3dRA0IPgm7EculCL/vNtLGnNnzKClJAX
         HB/fSKQQz5SzflkoQslSr/eJZvYnCONZ7196XX8GRL18x1uRLidNqrSRc81U2yhxPro2
         NRbEaroefRbN6+9KcMKTyHj97RpOsjHSwsYtBMa+OKsNXD71gyN5VIZ21PyJd361PEzp
         1Wng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=HQ8bxQN+gbkEzzMmh0qO6WmOXGpeeVG4KMuzzVB8fpU=;
        b=JUVlCcnNMiFaw6GbKg4PbQXqPbHjETTbDgH+0kG47FrHL4RzNTFyU9SKQJXwAQGNij
         +sseCNDn/2bg0tQsF8E7cQ0HbKDaagHYmQdDXgzml7brlU/0Aqm+wIhHzRLrWZ/8TP/V
         Uy963JsO5PgR5U4I1VcBAP96KFQAkShPZczMbjt0RMjzmIzV5R1PVpzcKEl9QiCe5g6v
         3PhCvkeGiqwdb/cucbDCtKF4kYvHYR7eWsks2yvdO2/8Cma2/EtIsWF4WzAqCzO2bYVv
         7L04nXADnTSfNhWcW9QedcVJKxZJtRvoBGqvc7WYeK5Jlypjes3LicuXwx/yX/RJiDGN
         YF3g==
X-Gm-Message-State: APjAAAWbeyLlEkZ8EuyspGP+2/XdumfpoDw2eUC8Fx9FhTTpVc8DOsvs
	uci6XtROcY8/D0E04w/pFDAHocXgpxB8FPOA
X-Google-Smtp-Source: APXvYqzq5YAUdpEwUpwuVuG38y4g8Lb3pv+ANpJiGdDKn3HdgC8HGrHR7haf4czye1O8HDGFzc8jmQ==
X-Received: by 2002:a17:902:6508:: with SMTP id b8mr26105074plk.201.1580271889313;
        Tue, 28 Jan 2020 20:24:49 -0800 (PST)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id u26sm598006pfn.46.2020.01.28.20.24.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2020 20:24:48 -0800 (PST)
Subject: Re: [yocto] permanently supercede kernel config with one of my own creation
To: Kent Dorfman <kent.dorfman766@gmail.com>, yocto@lists.yoctoproject.org
References: <CAK4PFCXXZS3ZbU8PWXUX2b_Pw661SVfj8dO0CQ-GjNM3Zo+k=A@mail.gmail.com>
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
Message-ID: <6c10cbb5-f8df-4c8a-c8eb-e14d29b75599@ibeeto.com>
Date: Tue, 28 Jan 2020 20:24:46 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAK4PFCXXZS3ZbU8PWXUX2b_Pw661SVfj8dO0CQ-GjNM3Zo+k=A@mail.gmail.com>
X-Groupsio-MsgNum: 48190
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="pLpXSd1ACIbB671zVSULJVpxrrDxlBHsX"

--pLpXSd1ACIbB671zVSULJVpxrrDxlBHsX
Content-Type: multipart/mixed; boundary="u9EAaCo8hvQn88So1FMctSLT2WUAj68DQ"

--u9EAaCo8hvQn88So1FMctSLT2WUAj68DQ
Content-Type: multipart/alternative;
 boundary="------------88AF74C9CA8C831024091106"
Content-Language: en-US

--------------88AF74C9CA8C831024091106
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Kent,

Create your own kernel recipe and provide a defconfig for it:

SRC_URI +=3D "file://defconfig"

For example to build a bleeding kernel directly from Linus' repo:

>>>>>
DESCRIPTION =3D "Linux Kernel from kernel.org Git Repository"
SECTION =3D "kernel"

LICENSE =3D "GPLv2"

require recipes-kernel/linux/linux-yocto.inc

LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd=
7"

LINUX_VERSION ?=3D "5.5"

LINUX_VERSION_EXTENSION ?=3D "-mykernel"

PV =3D "${LINUX_VERSION}+git${SRCPV}"

SRC_URI =3D
=E2=80=9Cgit://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;=
protocol=3Dgit;nocheckout=3D1"

SRC_URI +=3D "file://defconfig"

SRCREV =3D "d5226fa6dbae0569ee43ecfc08bdcd6770fc4755"

COMPATIBLE_MACHINE =3D "qemux86|qemux86-64"
<<<<<

:rjs

On 1/28/20 7:15 PM, Kent Dorfman wrote:
> I have a yocto generated sdk that includes a customized kernel.  I do
> NOT want to play with incremental config files.  What I want is to
> insert a .config file of my own choosing (generated outside of yocto)
> into the kernel build, have it use only my .config, and then have that
> .config remain as the persistent authoritative config as part of the
> yocto layer.
>
> I have tried a variety of different approaches:
> * using devtool, then loading my .config into the expanded source, but
> "devtool finish" throws out my changes!
>
> * doing "bitbake menuconfig", can build a kernel using my config, but
> it doesn't stay persistent in yocto
>
> * doing elaborate sort/merges on the yocto .config and my prefered
> one...undefined behaviour
>
> and the build always seems to revert to either the original yocto
> config, or a kludge of my options with a bunch of defaults I did not
> specify.
>
> How can I take my existing .config and force yocto to use it, and it
> only, forevermore?
>
>=20

--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------88AF74C9CA8C831024091106
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Hi Kent,</p>
    <p>Create your own kernel recipe and provide a defconfig for it:</p>
    <p>SRC_URI +=3D <a class=3D"moz-txt-link-rfc2396E" href=3D"file://defc=
onfig">"file://defconfig"</a></p>
    <p>For example to build a bleeding kernel directly from Linus' repo:</=
p>
    <p>
      <style type=3D"text/css">p { margin-bottom: 0.1in; direction: ltr; l=
ine-height: 115%; text-align: left; background: transparent none repeat scr=
oll 0% 0%; }p.cjk { font-family: "Times New Roman"; }p.ctl { font-family: "=
Times New Roman"; }a:link { color: rgb(0, 0, 255); text-decoration: underli=
ne; }a:visited { color: rgb(128, 0, 128); text-decoration: underline; }</st=
yle></p>
    <div class=3D"moz-cite-prefix">&gt;&gt;&gt;&gt;&gt;<br>
    </div>
    <div class=3D"moz-cite-prefix">DESCRIPTION =3D "Linux Kernel from
      kernel.org Git Repository"<br>
      SECTION =3D "kernel"<br>
      <br>
      LICENSE =3D "GPLv2"<br>
      <br>
      require recipes-kernel/linux/linux-yocto.inc<br>
      <br>
      LIC_FILES_CHKSUM =3D
      <a class=3D"moz-txt-link-rfc2396E" href=3D"file://COPYING;md5=3Dd781=
0fab7487fb0aad327b76f1be7cd7">"file://COPYING;md5=3Dd7810fab7487fb0aad327b7=
6f1be7cd7"</a><br>
      <br>
      LINUX_VERSION ?=3D "5.5"<br>
      <br>
      LINUX_VERSION_EXTENSION ?=3D "-mykernel"<br>
      <br>
      PV =3D "${LINUX_VERSION}+git${SRCPV}"<br>
      <br>
      SRC_URI =3D
=E2=80=9Cgit://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;=
protocol=3Dgit;nocheckout=3D1"<br>
      <br>
      SRC_URI +=3D <a class=3D"moz-txt-link-rfc2396E" href=3D"file://defco=
nfig">"file://defconfig"</a><br>
      <br>
      SRCREV =3D "d5226fa6dbae0569ee43ecfc08bdcd6770fc4755"</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">COMPATIBLE_MACHINE =3D
      "qemux86|qemux86-64"<br>
    </div>
    <div class=3D"moz-cite-prefix">&lt;&lt;&lt;&lt;&lt;<br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">:rjs<br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">On 1/28/20 7:15 PM, Kent Dorfman wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAK4PFCXXZS3ZbU8PWXUX2b_Pw661SVfj8dO0CQ-GjNM3Zo+k=3DA@mail.gma=
il.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">I have a yocto generated sdk =
that includes a customized kernel.  I do
NOT want to play with incremental config files.  What I want is to
insert a .config file of my own choosing (generated outside of yocto)
into the kernel build, have it use only my .config, and then have that
.config remain as the persistent authoritative config as part of the
yocto layer.

I have tried a variety of different approaches:
* using devtool, then loading my .config into the expanded source, but
"devtool finish" throws out my changes!

* doing "bitbake menuconfig", can build a kernel using my config, but
it doesn't stay persistent in yocto

* doing elaborate sort/merges on the yocto .config and my prefered
one...undefined behaviour

and the build always seems to revert to either the original yocto
config, or a kludge of my options with a bunch of defaults I did not
specify.

How can I take my existing .config and force yocto to use it, and it
only, forevermore?
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

--------------88AF74C9CA8C831024091106--

--u9EAaCo8hvQn88So1FMctSLT2WUAj68DQ--

--pLpXSd1ACIbB671zVSULJVpxrrDxlBHsX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl4xCQ4ACgkQjYyoKScz
m3VwnAf/Tqu3nITMTsziDs858MpJh0AjxVdQavei0YzwI0Bzr9eS5gRuOi6R9kpm
RzFYSMYRC0oiQGgpaje0j5LJnGkupXcMu3lNOpcGRafN+TY7k+8iwNsx5h4dOOT1
2fV8j3MDCqNwpDlc2qLFB0LXEwAPOvkfgGTN2yCQqTR2x33CUpxNT2h2yOU/pheo
VF6MeqRUr/2AU71rXM/Re5wa8tI1SPOX+zcjlVjPvgRrCREXTvjTX+U5FaNJzPWf
NQ2WdQFYBdcAQJ5Zlv751t0REjESjUjD3YcLU+HgPzq61A0gKfggGUnvbrxQ6iw6
BOJOb/Kp4duYAWQCCvTQjsyuotUTfw==
=7OpR
-----END PGP SIGNATURE-----

--pLpXSd1ACIbB671zVSULJVpxrrDxlBHsX--
