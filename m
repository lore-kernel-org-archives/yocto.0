Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BA30E00AB6; Fri, 27 Sep 2019 08:55:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A4F4E0053F
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2019 08:55:26 -0700 (PDT)
Received: by mail-pg1-f196.google.com with SMTP id a3so3695950pgm.13
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2019 08:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=qlcEh8kIR0byNnJxgKx7NBKtafQDWiwmnzwcrISo2jc=;
	b=Lec3sAQNCkWOVX1sgLG2OjhL3bk2+ncqCR5OgsTXRX8bNEbuAksohOh+KcCsCtQfcX
	TDnDDD0bTgEcTz1NfJedykbX/tmUKwJm9fFfL0cVdkFpn3iXSJhDShx9JiQT5v/4fkWb
	iUtsY14KRvF7s8343jOSNUahtNUYuV/LMdfrVQ1Ox5juscvxMxHbXo1ph1PF4TsYsW5/
	NY1sTFL/oPAtueeqp1bRJZTaEwZnQl7DbF4djIhgJpBOD94BTuRnPUKESsWRFHxcpeZZ
	chbKe3DJ35Le7OFevn+SfFzu40ZqOX2j4Fw18YXXcmkWx7CtpHbDV0xu9KZPkqRc6Zie
	BvWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=qlcEh8kIR0byNnJxgKx7NBKtafQDWiwmnzwcrISo2jc=;
	b=RlPZnQPz6j+cwUyg/FqXa9UdHKMCVZbaz5YvCHVjao1Hl15ofJxxrbJ9mmGR6uLA7s
	Ks7M75dGQNHAqAgnloh21W7A4gmRxjCgFs3qOIqFHB2POHatq7t2zy6Mmu6396vhySJS
	X9b4hTN96m74n5DGUgi4jEhOCZrZF9HPRtNpf93DDCChQzjdI3SICCi36qFBD4gZ5p6i
	l70kl7w/vr9pDti3FBCVhCKZc4VwhpkKfMhaaEFqexjwfCwA7o7A80eyb3155qEn/jql
	bxhXBIJ1WRkgCgJ6lDbAOp9LZ27WlYU1iX7aCjlLmqf33Wi8T+3bIMLCIyDfU3m/kS+C
	3G2Q==
X-Gm-Message-State: APjAAAU7kauKcjSPmti7j/25XDpm/Bawhwot16OH8oVRb7cEUmJQVdeW
	L3KuqG6S5AY3HhAO19v5HQiE6J8XK1dnAg==
X-Google-Smtp-Source: APXvYqxVwj0xB/c9NVSxDyJz4x9WYUE/C+NNTrfz3INbHrQOHy3ugM74A8+pApouv/0tVgV2C1cB9g==
X-Received: by 2002:a17:90a:ba94:: with SMTP id
	t20mr11000505pjr.8.1569599725297; 
	Fri, 27 Sep 2019 08:55:25 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	l24sm3797154pff.151.2019.09.27.08.55.23
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 27 Sep 2019 08:55:24 -0700 (PDT)
To: Ross Burton <ross.burton@intel.com>, Chuck Wolber <chuckwolber@gmail.com>
References: <CAB=6tBRdpccrvRR9fWZW2BwTsgUgggr2KSadK4wB2kmqsaQC+g@mail.gmail.com>
	<d9a2ad4d-71a5-345e-3212-07415b6ad1c4@ibeeto.com>
	<CAB=6tBSyrroOj3pQN-ftR=O3eP6n6JRNANnYqgyg0cFve6hZiw@mail.gmail.com>
	<a90aeb5e-b283-a90f-03d1-0b87ab2201bc@intel.com>
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
Message-ID: <fde812b2-1840-ecc6-da70-b21617d89540@ibeeto.com>
Date: Fri, 27 Sep 2019 08:55:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a90aeb5e-b283-a90f-03d1-0b87ab2201bc@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 27 Sep 2019 15:55:27 -0000
X-Groupsio-MsgNum: 46767
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="ljToLXxwHx1kS5AF9Qis6HzQJJ4bcJ5yV"

--ljToLXxwHx1kS5AF9Qis6HzQJJ4bcJ5yV
Content-Type: multipart/mixed; boundary="SByIC9C5rv9usVeeQxS3yNtoYtrrE8Ep7";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Ross Burton <ross.burton@intel.com>, Chuck Wolber <chuckwolber@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Message-ID: <fde812b2-1840-ecc6-da70-b21617d89540@ibeeto.com>
Subject: Re: [yocto] Downloading Git Archives
References: <CAB=6tBRdpccrvRR9fWZW2BwTsgUgggr2KSadK4wB2kmqsaQC+g@mail.gmail.com>
 <d9a2ad4d-71a5-345e-3212-07415b6ad1c4@ibeeto.com>
 <CAB=6tBSyrroOj3pQN-ftR=O3eP6n6JRNANnYqgyg0cFve6hZiw@mail.gmail.com>
 <a90aeb5e-b283-a90f-03d1-0b87ab2201bc@intel.com>
In-Reply-To: <a90aeb5e-b283-a90f-03d1-0b87ab2201bc@intel.com>

--SByIC9C5rv9usVeeQxS3yNtoYtrrE8Ep7
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 9/27/19 2:27 AM, Ross Burton wrote:
> On 27/09/2019 05:33, Chuck Wolber wrote:
>> I was hoping that there was an equally simple way of grabbing git
>> repository packages from an Internet connected host without having a
>> bitbake build cache them for me.
>
> The easy way is to get bitbake to do it for you.=C2=A0 A git mirror tar=
ball
> is just a clone with a specific name and path, but the easy solution
> is definitely to run bitbake --c fetchall on a machine with
> connectivity and expose the DL_DIR to the builders.
>
> This is what the yocto autobuilder does, by the way.=C2=A0 The workers
> don't have connectivity to the outside internet, so the master does a
> fetchall with the proxies configured to populate DL_DIR before the
> workers do the actual build.
>
Same thing here. I run a build system instance that simply downloads all
the sources and places them on a local mirror. The only thing to think
about is that if you have different targets they might require different
source packages albeit there is always a larger overlap of packages that
are always required. However, it's not too big of a problem launching
the 'fetcher' instance repeatedly with different target since only
what's missing will of course be downloaded.

Another layer of complexity is of course added if you work with
different versions of YP and OE layers. I solve this with Gitlab and
submodules. A target project is a repo in Gitlab and the YP/OE layers
are submodules. Gitlab handles that quite nicely.

:rjs

-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700



--SByIC9C5rv9usVeeQxS3yNtoYtrrE8Ep7--

--ljToLXxwHx1kS5AF9Qis6HzQJJ4bcJ5yV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl2OMOsACgkQjYyoKScz
m3V9YQf/RSccuPHXvlj8lCuTy5grg6KZiVR598lkaJIWt9oStNrZSVg1mny+Q6Fk
l4oL2O+XwscJu2FssIARGUamikcn3ha1IIC3324voExB/lfJ7e2Wxg9PM3Ior03o
vRisDHOQ7YpjhxXbCZIURUzJN+7Rwg4CvWEJla8djFQr/agR/AaEbUYR9qj9J5ek
enWNKQsdF1CCqGhn0AdygIQxKfT0bS4/4Cpi05/LTRahYRyAAt2HOYCD/YV4juNm
Bok4Jntl/SGmXMtzzCE3dtAWMNycEZn60UeuRslfe7N5GsfXyiF3JxeF7xBj0z7o
qVgxbrc4ucSrMW5IA1CxN/9slSzBvQ==
=NIRH
-----END PGP SIGNATURE-----

--ljToLXxwHx1kS5AF9Qis6HzQJJ4bcJ5yV--
