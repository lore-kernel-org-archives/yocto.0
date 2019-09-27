Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF282E00924; Thu, 26 Sep 2019 20:50:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E76DBE0084E
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 20:50:02 -0700 (PDT)
Received: by mail-pl1-f193.google.com with SMTP id f21so502623plj.10
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 20:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=Jbd+nWBl1rJFV1g48Gzi6TKKG66SxhLdTFeqjKV0NfI=;
	b=D+2n3yBdP1Gs+l9jjTHjugZ6pTURvD5tb9JgoGqM7GdRRbAzgwMOZ5JNyokHJj9v9G
	HG6tqAYcbZe3PlVsVmnXZJH6Q+dnE8CkdZNJYDdMlXnedxG0WPKK73w/wOOyu48qwlkW
	lQPbJgKgZzByIH5qQ8PBHC9rkiuIaqc8MBWNObeQ+48mppA2e8k3XphbTphfrckDD69v
	+5LZzqO9WcufyzLsAjOV++Xc0vhO9i4aMckHJ3StqgV5Fgvmk0ppI7SJ6AmzdVyyQoC/
	e0KNsSdl97e1hUQMuLYMAIZmtcPM2WxyqQQmO/SI2a0bat+duAnc+TzXcf/ViylxQi2F
	XwDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=Jbd+nWBl1rJFV1g48Gzi6TKKG66SxhLdTFeqjKV0NfI=;
	b=YeeUK+AfB4q+zVfHv+Tnwdjb7NZPZKsAggtge9YeQiYVhLo4h3Pvs+sAGpqMbibMI+
	9+Ky1oqW34iUMYKV+nwg+8XXulwsVGkNxmOM8faI+yM9lg9BKIkwa/b1uUjA89yG4Sbc
	MnfohXNgUhrKCCMZTtwmFf9PEN7Keogk5TM03qWUONsAB5d8a8Hydxq7xROjSplYNUGt
	Bi4+4ccDYkesGSaBny+6xHWmjgQVDXbQFWSPfodpXpq1iJbEvSXcmfZ1nmLhTCSTA0bG
	6TTpeO8NfkHg4XX3jHGWI9ixywM8dv3HMl3s/4hIV6X2NSUG9iziXrIo5pzni8q+RAqm
	JIhA==
X-Gm-Message-State: APjAAAVOt02JnWxdBWEfbYT+lTl8tpqhXS1kxa6wRY4o4lFJf7BPkOAN
	BeCKTD7mfBvQ3Ws8kpAi8KWyOsSOOM9kEA==
X-Google-Smtp-Source: APXvYqzkfhFUkJz3c36BPF9CQBGdBl0yeP1g/8hd+iCIAlSiu4ozJNfLQQspneIpMWnMl2gJr1SWfw==
X-Received: by 2002:a17:902:9b85:: with SMTP id
	y5mr2304376plp.104.1569556201800; 
	Thu, 26 Sep 2019 20:50:01 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	u3sm717080pfn.134.2019.09.26.20.49.59
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 26 Sep 2019 20:50:00 -0700 (PDT)
To: Chuck Wolber <chuckwolber@gmail.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
References: <CAB=6tBRdpccrvRR9fWZW2BwTsgUgggr2KSadK4wB2kmqsaQC+g@mail.gmail.com>
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
Message-ID: <d9a2ad4d-71a5-345e-3212-07415b6ad1c4@ibeeto.com>
Date: Thu, 26 Sep 2019 20:49:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAB=6tBRdpccrvRR9fWZW2BwTsgUgggr2KSadK4wB2kmqsaQC+g@mail.gmail.com>
Subject: Re: Downloading Git Archives
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
X-List-Received-Date: Fri, 27 Sep 2019 03:50:03 -0000
X-Groupsio-MsgNum: 46760
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="mqP234NW04ZbaTb8Vxg1VwgNTYrjbYq9Y"

--mqP234NW04ZbaTb8Vxg1VwgNTYrjbYq9Y
Content-Type: multipart/mixed; boundary="9loJqbMMuBlj3zS7oicaIyPbYu7HQ7NiS";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Chuck Wolber <chuckwolber@gmail.com>,
 Yocto-mailing-list <yocto@yoctoproject.org>
Message-ID: <d9a2ad4d-71a5-345e-3212-07415b6ad1c4@ibeeto.com>
Subject: Re: [yocto] Downloading Git Archives
References: <CAB=6tBRdpccrvRR9fWZW2BwTsgUgggr2KSadK4wB2kmqsaQC+g@mail.gmail.com>
In-Reply-To: <CAB=6tBRdpccrvRR9fWZW2BwTsgUgggr2KSadK4wB2kmqsaQC+g@mail.gmail.com>

--9loJqbMMuBlj3zS7oicaIyPbYu7HQ7NiS
Content-Type: multipart/alternative;
 boundary="------------B8DD8E6420D07EB025EA50E6"
Content-Language: en-US

--------------B8DD8E6420D07EB025EA50E6
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Chuck,

Unless I am missing something (which I cannot entirely rule out), the
default PREMIRRORS should actually do what you want. For the poky distro
configuration has this:

PREMIRRORS ??=3D "\
bzr://.*/.*=C2=A0=C2=A0 http://downloads.yoctoproject.org/mirror/sources/=
 \n \
cvs://.*/.*=C2=A0=C2=A0 http://downloads.yoctoproject.org/mirror/sources/=
 \n \
git://.*/.*=C2=A0=C2=A0 http://downloads.yoctoproject.org/mirror/sources/=
 \n \
gitsm://.*/.* http://downloads.yoctoproject.org/mirror/sources/ \n \
hg://.*/.*=C2=A0=C2=A0=C2=A0 http://downloads.yoctoproject.org/mirror/sou=
rces/ \n \
osc://.*/.*=C2=A0=C2=A0 http://downloads.yoctoproject.org/mirror/sources/=
 \n \
p4://.*/.*=C2=A0=C2=A0=C2=A0 http://downloads.yoctoproject.org/mirror/sou=
rces/ \n \
svn://.*/.*=C2=A0=C2=A0 http://downloads.yoctoproject.org/mirror/sources/=
 \n"

This causes the fetcher to intercept and translate all the SCM protocols
into http downloads from the YP mirror. Since you are saying wget works
for you this should actually automatically work for you. If you build
system can at least download using http then

bitbake <target> --runall=3Dfetch

should download all the sources for you. Then you can disconnect the box
from the Internet and start the build offline.

:rjs

On 9/26/19 8:06 PM, Chuck Wolber wrote:
> Hi All,
>
> Our build environment is stuck behind a firewall with no access to the
> Internet. When a Yocto build requires a new package, we normally
> extract the URL from the failed build log and "wget" the package from
> the upstream source, do our due diligence (checksums, etc), and then
> add it to the server pointed to by ${LOCAL_MIRROR}.
>
> Obviously that procedure does not work so well when a git repository
> needs to be fetched. We have tried various methods, but nothing seems
> to work reliably. Our current method is an annoying hack involving a
> virtual machine clone of the build server.
>
> I have searched far and wide, and cannot find any sort of procedure.
> Can someone point me at a procedure for translating something like
> git://git.yoctoproject.org/pseudo <http://git.yoctoproject.org/pseudo>
> into a file we can store in our ${LOCAL_MIRROR}?
>
> Thank you,
>
> ..Ch:W..
>
--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------B8DD8E6420D07EB025EA50E6
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Chuck,</p>
    <p>Unless I am missing something (which I cannot entirely rule out),
      the default PREMIRRORS should actually do what you want. For the
      poky distro configuration has this:</p>
    <p>PREMIRRORS ??=3D "\<br>
      bzr://.*/.*=C2=A0=C2=A0 <a class=3D"moz-txt-link-freetext" href=3D"=
http://downloads.yoctoproject.org/mirror/sources/">http://downloads.yocto=
project.org/mirror/sources/</a> \n
      \<br>
      cvs://.*/.*=C2=A0=C2=A0 <a class=3D"moz-txt-link-freetext" href=3D"=
http://downloads.yoctoproject.org/mirror/sources/">http://downloads.yocto=
project.org/mirror/sources/</a> \n
      \<br>
      git://.*/.*=C2=A0=C2=A0 <a class=3D"moz-txt-link-freetext" href=3D"=
http://downloads.yoctoproject.org/mirror/sources/">http://downloads.yocto=
project.org/mirror/sources/</a> \n
      \<br>
      gitsm://.*/.* <a class=3D"moz-txt-link-freetext" href=3D"http://dow=
nloads.yoctoproject.org/mirror/sources/">http://downloads.yoctoproject.or=
g/mirror/sources/</a> \n
      \<br>
      hg://.*/.*=C2=A0=C2=A0=C2=A0 <a class=3D"moz-txt-link-freetext" hre=
f=3D"http://downloads.yoctoproject.org/mirror/sources/">http://downloads.=
yoctoproject.org/mirror/sources/</a> \n
      \<br>
      osc://.*/.*=C2=A0=C2=A0 <a class=3D"moz-txt-link-freetext" href=3D"=
http://downloads.yoctoproject.org/mirror/sources/">http://downloads.yocto=
project.org/mirror/sources/</a> \n
      \<br>
      p4://.*/.*=C2=A0=C2=A0=C2=A0 <a class=3D"moz-txt-link-freetext" hre=
f=3D"http://downloads.yoctoproject.org/mirror/sources/">http://downloads.=
yoctoproject.org/mirror/sources/</a> \n
      \<br>
      svn://.*/.*=C2=A0=C2=A0 <a class=3D"moz-txt-link-freetext" href=3D"=
http://downloads.yoctoproject.org/mirror/sources/">http://downloads.yocto=
project.org/mirror/sources/</a>
      \n"<br>
    </p>
    <p>This causes the fetcher to intercept and translate all the SCM
      protocols into http downloads from the YP mirror. Since you are
      saying wget works for you this should actually automatically work
      for you. If you build system can at least download using http then<=
/p>
    <p>bitbake &lt;target&gt; --runall=3Dfetch</p>
    <p>should download all the sources for you. Then you can disconnect
      the box from the Internet and start the build offline.</p>
    <p>:rjs<br>
    </p>
    <div class=3D"moz-cite-prefix">On 9/26/19 8:06 PM, Chuck Wolber wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB=3D6tBRdpccrvRR9fWZW2BwTsgUgggr2KSadK4wB2kmqsaQC+g@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hi All,</div>
        <div><br>
        </div>
        <div>Our build environment is stuck behind a firewall with no
          access to the Internet. When a Yocto build requires a new
          package, we normally extract the URL from the failed build log
          and "wget" the package from the upstream source, do our due
          diligence (checksums, etc), and then add it to the server
          pointed to by ${LOCAL_MIRROR}.</div>
        <div><br>
        </div>
        <div>Obviously that procedure does not work so well when a git
          repository needs to be fetched. We have tried various methods,
          but nothing seems to work reliably. Our current method is an
          annoying hack involving a virtual machine clone of the build
          server.</div>
        <div><br>
        </div>
        <div>I have searched far and wide, and cannot find any sort of
          procedure. Can someone point me at a procedure for translating
          something like git://<a
            href=3D"http://git.yoctoproject.org/pseudo"
            moz-do-not-send=3D"true">git.yoctoproject.org/pseudo</a> into=

          a file we can store in our ${LOCAL_MIRROR}?</div>
        <div><br>
        </div>
        <div>Thank you,</div>
        <div><br>
        </div>
        <div>..Ch:W..</div>
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

--------------B8DD8E6420D07EB025EA50E6--

--9loJqbMMuBlj3zS7oicaIyPbYu7HQ7NiS--

--mqP234NW04ZbaTb8Vxg1VwgNTYrjbYq9Y
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl2NhuYACgkQjYyoKScz
m3UYxwf/Sij+F+PX9GA9g/4UJRfuQFFNttDCGu751RZH05wE41E1ezSWzWA9CFqf
4j/xq/l86gEIjxhgSwa805FiafaGFrMYKECXUa5JiSes087VeSfGeBq4pMvOl3xU
HaRxubSt+kS5JdFMIU2odYmi48ktp5PrUx35X51qzAvOWoKStDbQ5NepJvPF5JUK
35vttAKnwW6QufoTfiwEsZluVCvfLpznxD3O5gP7ycz2/VCeuJVApuF8SfIEs25o
kEUqI84Aef/APvJX5QKDmPwXIh4EZIC90iaP6i/BxXafH0SL4G/GZqXGZ9v/DEYN
YnsL4LaaYBo/B725oSugF2ZpyUhovg==
=7uu8
-----END PGP SIGNATURE-----

--mqP234NW04ZbaTb8Vxg1VwgNTYrjbYq9Y--
