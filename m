Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6942AE00B18; Fri, 16 Jun 2017 11:01:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3725BE009A0
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 11:00:55 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id 83so25644819pfr.0
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 11:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=kQUqTp3TEze3s8Ew0BebkUy+J89E8g+AHHpS26dEFBE=;
	b=VN08GSiNoB6XvlLfrZX9Bg7qirp1o7KXYBGyiSnhh1OQg/NTsjIntF9refrqK/lq0g
	7F0GowKN3xROx+rOmKx/RJRKJ64wP+0hesoHEamorPAx0TJ9XN9jAgx4nNmVuXGgjA6Q
	94lVhf8lE+Xanz3JQoZ8hIg66FlD7B+HAYJ694DsZLe8lEH+2XfvdXqMXQuuc3tLXCnF
	/T2UpuraA+CVvJOcveBg171pvqvipPodTsACOc0yF10Pjl91qFJmIuF61E4stg0KNrBp
	DPOzlMqtkHrmWp6nGflJcwFr3u5doDV59ITfuY7wrArzX8bjYfTXOpaGRp/Tr1QwdKxg
	jFJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=kQUqTp3TEze3s8Ew0BebkUy+J89E8g+AHHpS26dEFBE=;
	b=BjEVve6SCILOxQGLx7ieEkGcaItsmosicn9m5BOT0puhnSarp/68ebXSHJ0vyQSAWK
	jOHpb47rfV1P7ZXKPxZJ6/U7XTH6ODy1t2ShQtpYjA0+bdbspf4eXatRMXzCZiXrNPb1
	asSdC6+xAPegWyl5DDWHjZRl2ixqnDCeEEQhXADXAHipAHA878wWU4g4I3fYIBdRxzIu
	JdPfEztYbCmZix6BNuJvD4VpsvpIFgH2AVySKKWX+MyuhE2appx+s3aGa+KJO4cskoI0
	j2kwgBI3eNBjew4YTIoIz661grx16M9MepEz6ttC2QASrEZPjrt+5ZZEKb+JAJ1V8ysL
	iV3A==
X-Gm-Message-State: AKS2vOyMz7Tuvw4ME0y2ry0pIXZRHPokw8yvJP28IjU2en7Ouki0kQPG
	odOWY/CRBmD1fwDY6EA=
X-Received: by 10.84.173.129 with SMTP id p1mr736632plb.143.1497636054897;
	Fri, 16 Jun 2017 11:00:54 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:745f:c6ab:d92d:5f3f?
	([2601:646:8882:b8c:745f:c6ab:d92d:5f3f])
	by smtp.gmail.com with ESMTPSA id j6sm7628361pgc.1.2017.06.16.11.00.53
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Jun 2017 11:00:53 -0700 (PDT)
To: yocto@yoctoproject.org
References: <75eaa4ef-ddd4-198e-4299-a5cad9ed570c@Net2Edge.com>
	<CAJTo0LZjhRyL4gzOyK4OKUpTpCarUPmv8TjVQ5485hG-6R=1qw@mail.gmail.com>
	<DB6PR0701MB1879F68989431486E48F7FF6D3C10@DB6PR0701MB1879.eurprd07.prod.outlook.com>
	<1497618884.2549.1.camel@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <fde71ccf-4363-2b33-56d3-6826e72d87de@gmail.com>
Date: Fri, 16 Jun 2017 11:00:52 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:54.0)
	Gecko/20100101 Thunderbird/54.0
MIME-Version: 1.0
In-Reply-To: <1497618884.2549.1.camel@gmail.com>
Subject: Re: Using A Proprietary Closed License Inside A Layer & Its Recipes
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
X-List-Received-Date: Fri, 16 Jun 2017 18:01:06 -0000
X-Groupsio-MsgNum: 36621
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="xLaDRM1tlJsTbXtTI8njmgQj6nDC9P3dg"

--xLaDRM1tlJsTbXtTI8njmgQj6nDC9P3dg
Content-Type: multipart/mixed; boundary="GCrEbPBfFlX9SuKR62fjo8Ss0icHaQimN";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <fde71ccf-4363-2b33-56d3-6826e72d87de@gmail.com>
Subject: Re: [yocto] Using A Proprietary Closed License Inside A Layer & Its
 Recipes
References: <75eaa4ef-ddd4-198e-4299-a5cad9ed570c@Net2Edge.com>
 <CAJTo0LZjhRyL4gzOyK4OKUpTpCarUPmv8TjVQ5485hG-6R=1qw@mail.gmail.com>
 <DB6PR0701MB1879F68989431486E48F7FF6D3C10@DB6PR0701MB1879.eurprd07.prod.outlook.com>
 <1497618884.2549.1.camel@gmail.com>
In-Reply-To: <1497618884.2549.1.camel@gmail.com>

--GCrEbPBfFlX9SuKR62fjo8Ss0icHaQimN
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 6/16/17 6:14 AM, Joshua Watt wrote:
> On Fri, 2017-06-16 at 09:12 +0000, Thomas Thorne wrote:
>>>> Is it only possible to use the special
>>>> LICENSE =3D "CLOSED"
>>>> license for licenses not already placed in the main license
>> directory?
>>>
>>> Yes, there's special-case logic for 'CLOSED'.  Can you not just use
>> that for your internal pieces?  It's special-cased in a few places.
>> =20
>> I can use CLOSED.  I just wanted to ensure I was following the
>> recommended or best practice.=20
>> =20
>> As this is an internal thing it should be OK for now.  I was
>> wondering what would happen if a closed licenses was updated, as
>> nothing would currently note the md5 change.=20
>=20
> FWIW: We created a proprietary license file called files/common-
> licenses/company.txt in our proprietary layer, then added the following=

> to layer.conf:
>=20
>  COMPANY_COMMON_LICENSES :=3D '${@os.path.normpath("${LAYERDIR}/files/c=
om
> mon-licenses")}'
>  BB_HASHBASE_WHITELIST_append =3D " COMPANY_COMMON_LICENSES"
>=20
> Then a recipe can get the "standard" proprietary license by doing:
>=20
>  LIC_FILES_CHKSUM =3D
> "file://${COMPANY_COMMON_LICENSES}/company.txt;md5=3D9b1139fa1fcb869069=
db
> eecca44350a5"
>=20
> It works pretty well and also make it clear what license the recipe is
> under. I believe that the BB_HASHBASE_WHITELIST was necessary at the
> time to prevent changes in the project working path from causing a full=

> rebuild of the all proprietary packages and so that the sstate
> signatures would match regardless, but I might be wrong about it being
> necessary.

is this still the case with latest master ?


--GCrEbPBfFlX9SuKR62fjo8Ss0icHaQimN--

--xLaDRM1tlJsTbXtTI8njmgQj6nDC9P3dg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAllEHNQACgkQuwUzVZGdMxTBfACfTQWkSkSmpMQM8scyER9Fp2Qr
MMwAn3kVywkPP9f8zKsehfv5oWOqMJP4
=0THC
-----END PGP SIGNATURE-----

--xLaDRM1tlJsTbXtTI8njmgQj6nDC9P3dg--
