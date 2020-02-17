Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web11.11765.1581958384397901933
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2020 08:53:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=DN235z60;
 spf=neutral (domain: ibeeto.com, ip: 209.85.215.176, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pg1-f176.google.com with SMTP id v23so6094919pgk.2
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2020 08:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=ghqHfT+fa3GPaT0QpD+wDw3HPX7gryHprU/3Cm3MiE8=;
        b=DN235z60LfFFZGRsiPDjx3nDREGZDm9CKZbvePg4Bb6IKu+cXAkuVuUjVPkFATCV5v
         JSZ+34l/koauCqmZ/5v0H2qvBhTr0x0XgcTiuun4wePVj12ebqpoxaPtC+iw6FrSrXtb
         CEgKiUlhG9vItnQ40Jd1U+TbHmA4PWZ8QQXeBAgzavK18B20+edpqfIhejoo7/hZfW8q
         ZmZVPpuz7kTplt+HbXXElU8jxBatsOA/VJU1JjWZKx7JcefJc21+GKQGRML6ujv40BaL
         yk+tHPLKpKSBR+cleIv3GuGY0JhFCV0K+vRmDfPSSyVrcSakTnmI28QZ22X8S8nGMtqO
         9Cfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=ghqHfT+fa3GPaT0QpD+wDw3HPX7gryHprU/3Cm3MiE8=;
        b=DTAZMyNIGBsA4iY7sPCrm80t8myHKnBZIVJJNB72FlKkNUAexnq7QrpRQyhXRQq4gb
         7lSHoOBGVtT9f6D0kmfCz7O1SfMsqgwMiy3mB7XE00gawYxz/8czyOJUH76ULc2LsYYz
         ldA7w/9OPyQ4F+0QUCVH4Y4To4lV5b70rwIvq5mWju6Zm5htMbIivWTXAxyPbR5dp/n3
         efUOHunhKSBANV5BrUPcwPnOioA53+OSIzYNIBjfIl/cORFnhUe6QT04ovISopHGZfiz
         FW9bq8w6B6UH/i4u37Hykus61M8RbFNyllE7uOgns3lrj/YW69sM1S+LrvZqO6oa8dAr
         JfuA==
X-Gm-Message-State: APjAAAXJb2lYJ1TpV0acqZlr7xFldEcNvRhleTJh8u6AbOgUUAHHBgav
	eVP4ivSqtvbiNLIHRLhYDBIrrjJMhzAJiQ==
X-Google-Smtp-Source: APXvYqx3rDHQQ6fHN0j1yln96XSUXliouZ2hNp5URiH81kMYTaKfnjOlLGW8VLvaYle3RC5PiNvgVw==
X-Received: by 2002:a17:90a:1951:: with SMTP id 17mr21089410pjh.101.1581958383272;
        Mon, 17 Feb 2020 08:53:03 -0800 (PST)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id p16sm1380327pgi.50.2020.02.17.08.53.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2020 08:53:02 -0800 (PST)
Subject: Re: [yocto] Creating a build system which can scale. #yocto
To: philip.lewis@domino-uk.com, yocto@lists.yoctoproject.org
References: <5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org>
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
Message-ID: <b9c96e76-a350-8eb7-a9e8-93d0a93b8cc2@ibeeto.com>
Date: Mon, 17 Feb 2020 08:53:00 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org>
X-Groupsio-MsgNum: 48458
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="pX8FrfV8C3No7DQiqlpIY2Uy2FwLxF9KQ"

--pX8FrfV8C3No7DQiqlpIY2Uy2FwLxF9KQ
Content-Type: multipart/mixed; boundary="NMo3SvYeHlAvS7dP8a3qWcBscKe6vVyrF"

--NMo3SvYeHlAvS7dP8a3qWcBscKe6vVyrF
Content-Type: multipart/alternative;
 boundary="------------8099882F1062C6CD05B5F71B"
Content-Language: en-US

--------------8099882F1062C6CD05B5F71B
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Philip,

We have done this with many Yocto Project builds using AWS EC2, Docker,
Gitlab and Artifactory.

Rest inlined below.

:rjs

On 2/17/20 4:27 AM, philip.lewis@domino-uk.com wrote:
> Hi,
>
> I'm looking for some advice about the best way to implement a build
> environment in the cloud for multiple=C2=A0dev teams which will scale as
> the number of dev teams grow.
>
> Our devs are saying:
>
> *What do we want?*
>
> To scale our server-based build infrastructure, so that engineers can
> build branches using the same infrastructure that produces a
> releasable artefact, before pushing it into develop. As much
> automation of this as possible is desired..
>
It can be configured that any check in to branches can trigger a build.
That is what we do with developers on their own branches as well as with
the master branches. The master branch is the integration branch. Then
there are release and development branches but they all use the same
build environment.
>
>
> *Blocker*: Can=E2=80=99t just scale current system=C2=A0=E2=80=93=C2=A0c=
an=E2=80=99t keep throwing more
> hardware at it, particularly storage. The main contributor to storage
> requirements is using a local cache in each build workspace and there
> will be one workspace for each branch, per Jenkins agent: 3 teams x 10
> branches per team x 70Gb per branch/workspace x number of build agents
> (let say 5) =3D 10Tb. As you can see this doesn=E2=80=99t scale well as =
we add
> branches, teams or build agents. Most of this 10Tb is the caches in
> each workspace, where most of the contents of each individual cache is
> identical.
>
> *A possible=C2=A0solution:
> *
>
> Disclaimer/admission: I=E2=80=99ve not really researched/considered _/al=
l/_
> =C2=A0possible=C2=A0solutions to the problem above, I just started searc=
hing and
> reading and came up with/felt led towards =C2=A0this. I think there is s=
ome
> value in spending some of the meeting exploring other options to see
> if anything=C2=A0sounds better (for a what definition of better?).
>
> *
> *
>
We do this with Gitlab runners and working instances on EC2. Since it
can take some time to spin up a new instance we hold a certain amount
running during business hours. If more are needed more are spun up
transparently. Of course this costs money in particular when large
instances with a lot of memory and a lot of vCPUs are used. Instances
can automatically be terminated if there is overcapacity. There are
other cost control options. Docker images inside the instances provide
the controlled build environment.
>
> Something using the built-in cache mirror in Yocto=E2=80=93there are a f=
ew
> ways it can do this, as it=E2=80=99s essentially a file share somewhere.
> https://pelux.io/2017/06/19/How-to-create-a-shared-sstate-dir.html for
> an example shows how to share it via NFS, but you can also use http or
> ftp.
>
EC2 elastic storage works via NFS (pretty straight forward). Artifactory
can be used too.
>
> Having a single cache largely solves the storage issue as there is
> only one cache, so having solved that issue, it introduces a few more
> questions and constraints:
>
>  1. How do we manage the size of the cache?
>
> There=E2=80=99s no built-in expiry mechanism I could find. This means we=
=
=E2=80=99d
> probably have to create something ourselves (parse access logs from
> the server hosting the cache and apply a garbage collector process).
>
You have to prune it yourself. Typically based on age and when the
development moves to a new release of YP.
>
>  2. How/When do we update the cache?
>
> All environments contributing to the cache need to be identical (that
> ansible playbook just grabs the latest of everything) to avoid subtle
> differences in the build artefacts depending on which environment
> populated the cache.
>
We do this with the release builds only.
>
>  3. How much time will fetching the cache from a remote server add to
>     the build?
>
> I think this is probably something we will have to just live with, but
> if it=E2=80=99s all in the cloud the network speed between VMs is fast.
>
There is no generic answer to this. It depends on the storage and of
course the networking infrastructure.
>
> This shared cache solution removes the per agent cost on storage, and
> also=C2=A0=E2=80=93=C2=A0a varying extent=C2=A0=E2=80=93=C2=A0the per br=
anch costs (assuming that you=E2=80=99re
> not working on something at the top/start beginning of the dependency
> tree) =C2=A0from the equation above.
>
> =C2=A0
>
Yes, that is the idea. Since the builds are running inside a Docker
instance there is a local cache but it will be discarded when the
container is discarded and the VM is spun down. Cache misses require
additional time but that's the nature of it.
>
> I=E2=80=99d love to see some other ideas as well as I worry I=E2=80=99m =
missing
> something easier or more obvious=C2=A0=E2=80=93=C2=A0better.
>
> Any thoughts?
> Thanks
> Phill
>
> =C2=A0
>
> =C2=A0
>
:rjs
>
>=20

--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------8099882F1062C6CD05B5F71B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Hi Philip,</p>
    <p>We have done this with many Yocto Project builds using AWS EC2,
      Docker, Gitlab and Artifactory.</p>
    <p>Rest inlined below.</p>
    <p>:rjs<br>
    </p>
    <div class=3D"moz-cite-prefix">On 2/17/20 4:27 AM,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:philip.lewis@do=
mino-uk.com">philip.lewis@domino-uk.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      Hi,<br>
      <br>
      I'm looking for some advice about the best way to implement a
      build environment in the cloud for multiple=C2=A0dev teams which wil=
l
      scale as the number of dev teams grow. <br>
      <br>
      Our devs are saying:<br>
      <br>
      <p class=3D"xmsonormal"><strong>What do we want?</strong></p>
      <p class=3D"xmsonormal">To scale our server-based build
        infrastructure, so that engineers can build branches using the
        same infrastructure that produces a releasable artefact, before
        pushing it into develop. As much automation of this as possible
        is desired..<br>
      </p>
    </blockquote>
    It can be configured that any check in to branches can trigger a
    build. That is what we do with developers on their own branches as
    well as with the master branches. The master branch is the
    integration branch. Then there are release and development branches
    but they all use the same build environment.<br>
    <blockquote type=3D"cite"
      cite=3D"mid:5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org">
      <p class=3D"xmsonormal"><br>
      </p>
      <p class=3D"xmsonormal"><strong>Blocker</strong>: Can=E2=80=99t just=
 scale
        current system=C2=A0=E2=80=93=C2=A0can=E2=80=99t keep throwing mor=
e hardware at it,
        particularly storage. The main contributor to storage
        requirements is using a local cache in each build workspace and
        there will be one workspace for each branch, per Jenkins agent:
        3 teams x 10 branches per team x 70Gb per branch/workspace x
        number of build agents (let say 5) =3D 10Tb. As you can see this
        doesn=E2=80=99t scale well as we add branches, teams or build agen=
ts.
        Most of this 10Tb is the caches in each workspace, where most of
        the contents of each individual cache is identical.<br>
        <br>
        <strong> A possible=C2=A0solution:<br>
        </strong></p>
      <p class=3D"xmsonormal">Disclaimer/admission: I=E2=80=99ve not reall=
y
        researched/considered _<em>all</em>_ =C2=A0possible=C2=A0solutions=
 to the
        problem above, I just started searching and reading and came up
        with/felt led towards =C2=A0this. I think there is some value in
        spending some of the meeting exploring other options to see if
        anything=C2=A0sounds better (for a what definition of better?).</p=
>
      <p class=3D"xmsonormal"><strong><br>
        </strong></p>
    </blockquote>
    We do this with Gitlab runners and working instances on EC2. Since
    it can take some time to spin up a new instance we hold a certain
    amount running during business hours. If more are needed more are
    spun up transparently. Of course this costs money in particular when
    large instances with a lot of memory and a lot of vCPUs are used.
    Instances can automatically be terminated if there is overcapacity.
    There are other cost control options. Docker images inside the
    instances provide the controlled build environment.<br>
    <blockquote type=3D"cite"
      cite=3D"mid:5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org">
      <p class=3D"xmsonormal">Something using the built-in cache mirror in
        Yocto=E2=80=93there are a few ways it can do this, as it=E2=80=99s=
 essentially a
        file share somewhere. <a
href=3D"https://pelux.io/2017/06/19/How-to-create-a-shared-sstate-dir.html=
"
          moz-do-not-send=3D"true">https://pelux.io/2017/06/19/How-to-crea=
te-a-shared-sstate-dir.html</a>
        for an example shows how to share it via NFS, but you can also
        use http or ftp.</p>
    </blockquote>
    EC2 elastic storage works via NFS (pretty straight forward).
    Artifactory can be used too.<br>
    <blockquote type=3D"cite"
      cite=3D"mid:5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org">
      <p class=3D"xmsonormal">Having a single cache largely solves the
        storage issue as there is only one cache, so having solved that
        issue, it introduces a few more questions and constraints:</p>
      <ol style=3D"margin-top: 0cm;" type=3D"1" start=3D"1">
        <li class=3D"xmsolistparagraph" style=3D"margin-left: 0cm; mso-lis=
t:
          l0 level1 lfo1; tab-stops: list 36.0pt;">How do we manage the
          size of the cache?</li>
      </ol>
      <p class=3D"xmsolistparagraph">There=E2=80=99s no built-in expiry me=
chanism
        I could find. This means we=E2=80=99d probably have to create some=
thing
        ourselves (parse access logs from the server hosting the cache
        and apply a garbage collector process).</p>
    </blockquote>
    You have to prune it yourself. Typically based on age and when the
    development moves to a new release of YP.<br>
    <blockquote type=3D"cite"
      cite=3D"mid:5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org">
      <ol style=3D"margin-top: 0cm;" type=3D"1" start=3D"2">
        <li class=3D"xmsolistparagraph" style=3D"margin-left: 0cm; mso-lis=
t:
          l1 level1 lfo2; tab-stops: list 36.0pt;">How/When do we update
          the cache?</li>
      </ol>
      <p class=3D"xmsolistparagraph">All environments contributing to the
        cache need to be identical (that ansible playbook just grabs the
        latest of everything) to avoid subtle differences in the build
        artefacts depending on which environment populated the cache.</p>
    </blockquote>
    We do this with the release builds only.<br>
    <blockquote type=3D"cite"
      cite=3D"mid:5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org">
      <ol style=3D"margin-top: 0cm;" type=3D"1" start=3D"3">
        <li class=3D"xmsolistparagraph" style=3D"margin-left: 0cm; mso-lis=
t:
          l2 level1 lfo3; tab-stops: list 36.0pt;">How much time will
          fetching the cache from a remote server add to the build?</li>
      </ol>
      <p class=3D"xmsolistparagraph">I think this is probably something we
        will have to just live with, but if it=E2=80=99s all in the cloud =
the
        network speed between VMs is fast.</p>
    </blockquote>
    There is no generic answer to this. It depends on the storage and of
    course the networking infrastructure.<br>
    <blockquote type=3D"cite"
      cite=3D"mid:5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org">
      <p class=3D"xmsonormal">This shared cache solution removes the per
        agent cost on storage, and also=C2=A0=E2=80=93=C2=A0a varying exte=
nt=C2=A0=E2=80=93=C2=A0the per
        branch costs (assuming that you=E2=80=99re not working on somethin=
g at
        the top/start beginning of the dependency tree) =C2=A0from the
        equation above.</p>
      <p class=3D"xmsonormal">=C2=A0</p>
    </blockquote>
    Yes, that is the idea. Since the builds are running inside a Docker
    instance there is a local cache but it will be discarded when the
    container is discarded and the VM is spun down. Cache misses require
    additional time but that's the nature of it.<br>
    <blockquote type=3D"cite"
      cite=3D"mid:5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org">
      <p class=3D"xmsonormal">I=E2=80=99d love to see some other ideas as =
well as
        I worry I=E2=80=99m missing something easier or more obvious=C2=A0=
=
=E2=80=93=C2=A0better.<br>
        <br>
        Any thoughts?<br>
        Thanks<br>
        Phill</p>
      <p class=3D"xmsonormal">=C2=A0</p>
      <p class=3D"xmsonormal">=C2=A0</p>
    </blockquote>
    :rjs<br>
    <blockquote type=3D"cite"
      cite=3D"mid:5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org">
      <span id=3D"selectionBoundary_1581942134392_400752004809644"
        class=3D"rangySelectionBoundary" style=3D"line-height: 0; display:
        none;"></span><span
        id=3D"selectionBoundary_1581942110909_9007835832119429"
        class=3D"rangySelectionBoundary" style=3D"line-height: 0; display:
        none;"></span>
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

--------------8099882F1062C6CD05B5F71B--

--NMo3SvYeHlAvS7dP8a3qWcBscKe6vVyrF--

--pX8FrfV8C3No7DQiqlpIY2Uy2FwLxF9KQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl5KxOwACgkQjYyoKScz
m3UKWQf/TUJWL8VmGGZkCTrC01GbDXPOB3PB/IzBI1z3EjC35ArU5YG0sc2cquJC
pF4CkpmCRRz1L0IIJd2b5vGL028gkQQbs3LAZ7H+ixXWJvB/yHUvdq0tIYrZInM3
4A7SQlCn+qzZy/rGQIg4tSGbZZU0KKZghuh2OY+mo7CGWnNvNOYYKHLWXy4wO3mE
LiDSn/oQ0MY6lptDs8ckYWhwbR2kisbko5uC1O/IphJ5s0FzQK+AjJb2hMN7d7TN
CzVEmAW8uSGEl6FWs7wsg8wAw4qfQhZjgVT/xW5TuIAGOuqTP33tRxF6Qdpx9Dcp
0yOxQ66cIdnF3GLpjSh0zWzJ0jUUTg==
=2Qu/
-----END PGP SIGNATURE-----

--pX8FrfV8C3No7DQiqlpIY2Uy2FwLxF9KQ--
