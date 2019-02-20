Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 417ACE00BB7; Wed, 20 Feb 2019 10:43:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A82DE00B81
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 10:43:09 -0800 (PST)
Received: by mail-pl1-f173.google.com with SMTP id p19so1437848plo.2
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 10:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=BjOglvO27hCKiPLILugR8kjkq3aGKa2FzRbuFbVFLuw=;
	b=uqYDt8P0PMJnwyAyCpQZQv2B3cXRjsvjKOjRMoGz+agmDOzmg7eO4V4JOMpMNr1Mpg
	EZ58FgGVuuNy6smZ/VC42rfO9lzl39psxUx3gFOyFl7ziuVnSt1oHeYGfA6PNZ9H/9v3
	y6LeUo+lVupdaUIyi7+rxtY5FspbnM2d6spiZvnXbY2xmOD3x2T9lrxwzRLTH5x8f96y
	kFx30HNq0kGCTuWQ7W25pn9eTOzoRMipY8zA+WwYq5rsgg8x964M/O9Td9/bYJa7pqo3
	WssFf4CH3+kkYfsINEXseBKZEEIt7cSca2lzWvNcynp3rSA+IlAeMVp2tQgyyU/hyDBd
	NvxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:organization:message-id:date:user-agent:mime-version:in-reply-to;
	bh=BjOglvO27hCKiPLILugR8kjkq3aGKa2FzRbuFbVFLuw=;
	b=MqWc8fB4CHywcctoEpsRdUhb9qYjut8mkz21jIAQSBNyAZdTl8JyRoSKXDKYd/IZdV
	hRrKOXg/YNeD6U1GH562vSsBWCnIOXzLlco33eS4Y5ofz5NFKzLZvVc6h4PQXOFfKFAd
	svxNU3qmF+n8LjlGx2cwEbeURt/P92PntvZkUrgEFL9OM7q8uy22LzbZKs8Euj15Mq+o
	3mAWZAFLFXYkYHDJQoMlX1Yh5sctvdQ/fOZc3FwhG9MS2KnPXfEnjYhQhvmPJdGZ/Qxq
	NupAYPwaujl1MKGLfrc0toKVHATzsopN7hmiX/y6yAIs5lzQ7Sk11/4rWJ3jvFDdzw4L
	8sBw==
X-Gm-Message-State: AHQUAuYDCnPC9uz+HKcPJNKFcUaHARQOaq18qU21PQzxUE4L7a+ucCNT
	AuM7GStS5ZbYvko+J7TiXQedlqByZJU=
X-Google-Smtp-Source: AHgI3IbwzozdYJhjrNkXRV3inrDZKs1DGcGfFW+TpZ1/GY17YwIGAFK8VnrQ5VhhRrXNI57uRDOzuA==
X-Received: by 2002:a17:902:8692:: with SMTP id
	g18mr9769636plo.149.1550688188456; 
	Wed, 20 Feb 2019 10:43:08 -0800 (PST)
Received: from [192.168.4.24] (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	s190sm31443288pfb.103.2019.02.20.10.43.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 20 Feb 2019 10:43:07 -0800 (PST)
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <a17ceb28d6d8481281b0283911436032@sakuraus.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Openpgp: preference=signencrypt
Autocrypt: addr=rudolf.streif@ibeeto.com; prefer-encrypt=mutual; keydata=
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
Organization: ibeeto
Message-ID: <d9d6c3d2-afc7-b161-239f-dc93383acf19@ibeeto.com>
Date: Wed, 20 Feb 2019 10:43:05 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <a17ceb28d6d8481281b0283911436032@sakuraus.com>
Subject: Re: local.conf confusion
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
X-List-Received-Date: Wed, 20 Feb 2019 18:43:10 -0000
X-Groupsio-MsgNum: 44167
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="10MOn1aW0HrWhvswC9xmq88Mdm4ddwwKB"

--10MOn1aW0HrWhvswC9xmq88Mdm4ddwwKB
Content-Type: multipart/mixed; boundary="qR5TnQvexhf6MSvUPZZh3oYbqFhmB6Aqo";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <d9d6c3d2-afc7-b161-239f-dc93383acf19@ibeeto.com>
Subject: Re: [yocto] local.conf confusion
References: <a17ceb28d6d8481281b0283911436032@sakuraus.com>
In-Reply-To: <a17ceb28d6d8481281b0283911436032@sakuraus.com>

--qR5TnQvexhf6MSvUPZZh3oYbqFhmB6Aqo
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Greg,

I am not entirely sure why you are including a machine configuration
include file into your conf/local.conf file.

However, the "include" directive is optional include and hence if the
file is not found Bitbake will not raise an error and terminate. If you
need that behavior use "require" instead.

Machine configuration files do commonly use includes for shared
configuration. You typically find them where the machine configuration
files are: conf/machine or in a subdirectory there. The directory
conf/machine is commonly found in BSP layers such as meta-raspberrypi
which you are probably using as you are building for RPi.

:rjs

On 2/20/19 10:16 AM, Greg Wilson-Lindberg wrote:
> Hello list,
>
> I've run into a confusion that should be simple. I've got a build based=
 on sumo, at the bottom of my local.conf file is the line:
>
> include conf/distro/include/${MACHINE}.pre.inc
>
> This should be straight forward, just find the conf/distro/include dire=
ctory and all of the *.pre.inc files should be there. I just searched all=
 of the sources directory for=C2=A0=C2=A0'*.pre.inc' and I get nothing. I=
'm building for a raspberry pi3, so I would expect at least 'raspberry*.i=
nc', still nothing. I'm not getting an error for bitbake not being able t=
o find the file.
>
> So where do I find the machine include files?
>
> Regards,
> Greg Wilson-Lindberg =C2=A0
>    =20


--qR5TnQvexhf6MSvUPZZh3oYbqFhmB6Aqo--

--10MOn1aW0HrWhvswC9xmq88Mdm4ddwwKB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAlxtn7kACgkQjYyoKScz
m3WzSQf/ZwWh2rjISvVgyP/r1h6BQi3R6SbkhSt6oKyqJWns3d7HrQ/KwJ+fcc4Q
2QBJqHpGskhVe/S8z+BhlP8QTWJZwz9KrWGJxrxnoz8POiXNGulirkHLtoyC3eyS
SNIhry2NCDcP/upCHBvdfkKQFanCPWDA1pvqDZJcMY4MJwUXb7dkSlDNXE024rjd
RsbgwnNFBlwyg+HzuySLnucr/ac4FUs6uftkj2wQihCopeM0zNWR+yfs6SA0kAir
856ev575Mgu/jjXf40/cUKlFExfLnyejTzdNPraIP8ksksgaXzqXEHWYWAjGWZ7P
JcYQ64ZzVWtPUGKgcXjTrQEWs+fdLg==
=/cIY
-----END PGP SIGNATURE-----

--10MOn1aW0HrWhvswC9xmq88Mdm4ddwwKB--
