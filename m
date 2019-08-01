Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16E55E00C22; Thu,  1 Aug 2019 09:25:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81D34E00C22
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 09:25:17 -0700 (PDT)
Received: by mail-pf1-f193.google.com with SMTP id r7so34360021pfl.3
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 09:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=1Q4F3lMzS5bj3chnnmmgu4GpAEsdYMuWs6Veyu4hqoU=;
	b=BkmkiUJjMJqtvBbkUXBUd83zCSjMbfUHUJ2MBILK/29xOV6uK4vQIc93Qlbr6Y4YEL
	kFQp5VaSqotpwJutbD2NZC7idjytoYCQAeF6PvkPUMr/zAgGez0dFZh56AwdceGzPDeu
	59Wpa5denunVgeAS/uTmUFPPdXWtwkuTJzPpQEtleydzah3JiCHBppgpn0hhuV4EqGYB
	t6rBzoXpYyHP4xTsV+GWQDS6B9mhpxnrIKFg6CdeGdEjd8oS96Nje+9w4FMHWGZ6JPGy
	1184Nx0iBCMOwGhKIGLT6lhpjM5uBmTBVDEOjcV7HmNYjWq+hEhAIbFEz0bso41xMl+s
	pn9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=1Q4F3lMzS5bj3chnnmmgu4GpAEsdYMuWs6Veyu4hqoU=;
	b=ShY0H51UH494KieHYOO2wmrETZyYleNp8Wj84vMBg0V7vTiXUkwR+3p1XkN+zJw3FA
	8pAeg8BFl3nTwd9waA2PmG/XQp1iu0PHT61sGYMGMBB0HX2XaRtPNbEcY6WlbbxmK6DX
	nky+st60hhE5lhPVKEJykmwJeaQAqCD7IlMd1W6fPDl71Fb307XcTX0XGceB1M82kEAY
	BN7LPrvfikjn5Sy2CnNDE6E3j/syCm1v5yKpYKrrbC3FDBfJb7+80H1tezJCsmT5sRS4
	W62AbrtlFkxAK2SAy50xR2gMa2/5mFs+FVxhk63Kekw9zwVUlXiALeZ2/fmo0GnYEx+t
	vvwg==
X-Gm-Message-State: APjAAAUbzXyJi98SgHEE6SaYgnPDLQCLDjt/krdjUFRwN9oya4PyWkGi
	/JHCKLcs31YHTs5sWhSFi1oDa8Ll
X-Google-Smtp-Source: APXvYqzGKG5sTGVFV9fBu5QgoJjkor4XAJOxLADF1/TDjYjCZWyXvkFoSNQWCp0Nan6iXPtPoAlqcw==
X-Received: by 2002:aa7:8dcc:: with SMTP id j12mr54842649pfr.137.1564676716387;
	Thu, 01 Aug 2019 09:25:16 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	n185sm54750006pga.16.2019.08.01.09.25.14
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Aug 2019 09:25:15 -0700 (PDT)
To: JH <jupiter.hce@gmail.com>, ChenQi <Qi.Chen@windriver.com>
References: <CAA=hcWSYrjxA8K1jURiiwpcY5pz6zb-cb6j7R9sOTM-831-BBQ@mail.gmail.com>
	<f881304f-668d-01c6-65ec-c26cf82199b5@windriver.com>
	<CAA=hcWR+c=am2SHqRr3tUeMShLkzB+HrD2UBqhDwvK9ViyVHnw@mail.gmail.com>
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
Message-ID: <a8962625-43b0-006a-46fb-7df592302dbc@ibeeto.com>
Date: Thu, 1 Aug 2019 09:25:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <CAA=hcWR+c=am2SHqRr3tUeMShLkzB+HrD2UBqhDwvK9ViyVHnw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Make the service the last run in boot
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
X-List-Received-Date: Thu, 01 Aug 2019 16:25:18 -0000
X-Groupsio-MsgNum: 46160
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="PqWrvmd58ccZfMIx8lzDjDaA1qOfVKPn8"

--PqWrvmd58ccZfMIx8lzDjDaA1qOfVKPn8
Content-Type: multipart/mixed; boundary="KhRSzG1bJpXVUSG8hALv8KFEx5qyLhRu0";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: JH <jupiter.hce@gmail.com>, ChenQi <Qi.Chen@windriver.com>
Cc: yocto@yoctoproject.org
Message-ID: <a8962625-43b0-006a-46fb-7df592302dbc@ibeeto.com>
Subject: Re: [yocto] Make the service the last run in boot
References: <CAA=hcWSYrjxA8K1jURiiwpcY5pz6zb-cb6j7R9sOTM-831-BBQ@mail.gmail.com>
 <f881304f-668d-01c6-65ec-c26cf82199b5@windriver.com>
 <CAA=hcWR+c=am2SHqRr3tUeMShLkzB+HrD2UBqhDwvK9ViyVHnw@mail.gmail.com>
In-Reply-To: <CAA=hcWR+c=am2SHqRr3tUeMShLkzB+HrD2UBqhDwvK9ViyVHnw@mail.gmail.com>

--KhRSzG1bJpXVUSG8hALv8KFEx5qyLhRu0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Adding

After=3Dmulti-user.target

to the [Unit] section in your systemd service file should do what you wan=
t.

:rjs

On 8/1/19 4:08 AM, JH wrote:
> The application requires network connection to communicate services
> via Internet, it could only work if the network connection is ready,
> so I really want to know which system servuce run at last I could put
> it in the After statement.
>
> On 8/1/19, ChenQi <Qi.Chen@windriver.com> wrote:
>> On 08/01/2019 03:37 PM, JH wrote:
>>> Hi,
>>>
>>> How can I find the systemd last run service I can put it in my networ=
k
>>> application After=3D<last run tartget or service>?
>>>
>>> I need my network application service to be run at last in boot, I
>>> made After=3Dconnman and Requires=3Dconnman.service that did not work=
,
>>> always failed in boot, I have to manually restart the network
>>> application service which won't work in field operation.
>> I'd suggest you find out what you network service actually require.
>>
>>> Searched from Internet, there is a blog Systemd: Run it last to creat=
e
>>> a custom.target After=3Dmulti-user.target, and put my network
>>> application service WantedBy=3Dcustom.target, that works well, but it=
 is
>>> a little bit cumbersome to configure customer.target in Yocto bb file=
,
>>> enabling the customer.target is called systemctl isolate
>>> custom.target, the /etc/systemd/system/default.target link needs be
>>> changed to from multi-user.target to custom.target. I am not sure how=

>>> it could be done in do_install, appreciate your tips.
>>>
>>> Thank you.
>>>
>>> Kind regards,
>>>
>>> - JH
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700



--KhRSzG1bJpXVUSG8hALv8KFEx5qyLhRu0--

--PqWrvmd58ccZfMIx8lzDjDaA1qOfVKPn8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl1DEmkACgkQjYyoKScz
m3X5Dwf/dsno0e3wmLdhYM87DE/YioGiZ1hMgwQiAR9lTdgZfVl57SPwXEYZSFAY
oNahTvJIumnElRX9BYDHaJ0PBWvsFY8tlvIZoIonD2RNrGmKzRlRs3f0xH2+0dVN
W28MxccvEfMz05BEpmzmHfSJfQTP4nYyfwovAxAZXVuLN5RgGDAmMl19nV0Q5H+Z
1ZescnRULJM0lGarNIflDjMvvNsBzdlENo9vW7M7nPYLvHzaObQu4lwOJQS7ULuZ
yFt3aVrZE1GTadi3hk3y6IAvBxyabw1gppyjBtRJ+h9lSG19G0655edBeZhNAQ+y
HqEL1p/rXDDfJ3p+2ll80vlllcrmLw==
=U9SA
-----END PGP SIGNATURE-----

--PqWrvmd58ccZfMIx8lzDjDaA1qOfVKPn8--
