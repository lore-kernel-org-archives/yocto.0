Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EE64E00A71; Thu, 30 Mar 2017 22:07:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.45 listed in list.dnswl.org]
Received: from mail-pg0-f45.google.com (mail-pg0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26DCEE009DA
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 22:07:33 -0700 (PDT)
Received: by mail-pg0-f45.google.com with SMTP id 21so59822856pgg.1
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 22:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=NT1Gqh1f60k6vVFnlqSnXkTzc8Y4+52aiNW6Gl7ggUI=;
	b=BpKbcD9pVkL5STmWNXP9/l61CGYZh+DSLquZtk8xCufm5XoxD6yXu9W5OYLgwTfTyS
	3F7g1tONd73Gpqk6yzixPdKOtJczEx6Qdezd9I0Sbx4pdM3wQUiAFVU1g6JCo185d9zf
	IJN1V/gYGOdviOH+9JEOS9k6BAspr/v40LRC8FjCRpOtWsJWpzXfkI86VtG4S2XhvHmb
	n6u+k9Tauxc6AKGrcgRZ/0KVrVUGqeBMHdGxlHRwFchq4l6r9T1h/+GY/Z4/o4SAFmg0
	FX8uts4QQ7PJx6T/6dmVGx08SAdhyQ8edu6Po4TsOwNPKVcDrzG/yDKUTsrUQm+Iu05g
	N+Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=NT1Gqh1f60k6vVFnlqSnXkTzc8Y4+52aiNW6Gl7ggUI=;
	b=oloG3I8RT2IygPARqxzgb2gNy6xsqzbPMLLWtEqxPkHavSv2wXBVPRgqJjxufJKZvd
	nSqUVafwE9g2UYB4bB4Bn76/H+4RBUAJNuSanpjbdW9eq+gdGpyDLND7+ZsrIAVnB1tN
	TTfKa3h2m8eKxE423vSi1jFjwmw4HXx0jp/EKeVcKq6Xoccp/NaHaf8LI8yUgMb/WZAJ
	NHAejyzyR4MWPD+YdM39Bs3uZ+tw+kDqDt8DiZR390PQ7s1A9axq0YjMk2hUeNNxTeCY
	WkPmFA+v/qSE3HdjzwCN8wuVcjIXBmQ9GL38YzqStiVzjc+Z/cDnpDTUaGYf5w8M3oWu
	bOqg==
X-Gm-Message-State: AFeK/H1ovW6TcF1nKigv6dpZHrSAijTgTLhpjpVp5+2+9lA2ypuoFwqqNiI8FEl7L6lB3A==
X-Received: by 10.84.210.71 with SMTP id z65mr1264277plh.130.1490936852889;
	Thu, 30 Mar 2017 22:07:32 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:cd88:7f68:d8ae:e5d3])
	by smtp.gmail.com with ESMTPSA id
	s17sm7429524pgo.27.2017.03.30.22.07.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Mar 2017 22:07:31 -0700 (PDT)
To: Gary Thomas <gary@mlbassoc.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <b1ac4315-7369-b67a-ae61-f85bb2e82155@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <d423b70c-4f4b-9012-0d2a-c99bcc9093be@gmail.com>
Date: Thu, 30 Mar 2017 22:07:27 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <b1ac4315-7369-b67a-ae61-f85bb2e82155@mlbassoc.com>
Subject: Re: GCC on ARM
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
X-List-Received-Date: Fri, 31 Mar 2017 05:07:36 -0000
X-Groupsio-MsgNum: 35345
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="p8Uv5F8DT93eLc4Ape80FcoD2W9iHShfe"

--p8Uv5F8DT93eLc4Ape80FcoD2W9iHShfe
Content-Type: multipart/mixed; boundary="3st4udDNFTNimNbc1uqHXj533TNsepsA8";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <d423b70c-4f4b-9012-0d2a-c99bcc9093be@gmail.com>
Subject: Re: [yocto] GCC on ARM
References: <b1ac4315-7369-b67a-ae61-f85bb2e82155@mlbassoc.com>
In-Reply-To: <b1ac4315-7369-b67a-ae61-f85bb2e82155@mlbassoc.com>

--3st4udDNFTNimNbc1uqHXj533TNsepsA8
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 3/30/17 9:07 PM, Gary Thomas wrote:
> [slightly off-topic]
>=20
> I work with a number of embedded ARM devices, all with different
> processors, hence somewhat different tuning and build directories:
>   Raspberry-Pi (1,2,3 - mostly 3):
>     TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4
> callconvention-hard cortexa7"
>     build dirs:
>       tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi
>   BeagleBoneBlack:
>     TUNE_FEATURES     =3D "arm armv7a vfp thumb neon callconvention-har=
d"
>     build dirs:
>       tmp/work/armv7ahf-neon-poky-linux-gnueabi
>   i.MX6:
>     TUNE_FEATURES     =3D "arm armv7a vfp thumb neon callconvention-har=
d
> cortexa9"
>     build dirs:
>       tmp/work/cortexa9hf-neon-poky-linux-gnueabi
>       tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi
>       tmp/work/cortexa9t2hf-neon-mx6qdl-poky-linux-gnueabi
>=20
> What I'm wondering is, except for the obvious programs that use SoC
> specific
> functions like the IPU/GPU on the i.MX6, how different are these
> really?  So
> much so that they have to all have unique binaries?  Surely I could bui=
ld
> busybox or python and run the same binary on all three?
>=20

You can chose a least common denominator and use that as DEFAULTTUNE for
all your machines. May be like armv7at2-neon


--3st4udDNFTNimNbc1uqHXj533TNsepsA8--

--p8Uv5F8DT93eLc4Ape80FcoD2W9iHShfe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAljd5BMACgkQuwUzVZGdMxSiuQCeOLM9ukuT4p8k1Xux2/2Q7hKj
FDsAnRE86m1zYfn4PqfLMORwCj/mJmfH
=k18u
-----END PGP SIGNATURE-----

--p8Uv5F8DT93eLc4Ape80FcoD2W9iHShfe--
