Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01A0DE00812; Mon, 29 May 2017 09:17:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39B6BE007AA
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 09:17:17 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 May 2017 09:17:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,415,1491289200"; 
	d="asc'?scan'208";a="107923659"
Received: from unknown (HELO [10.219.128.117]) ([10.219.128.117])
	by fmsmga005.fm.intel.com with ESMTP; 29 May 2017 09:17:17 -0700
To: Anders Wallin <wallinux@gmail.com>, yocto@yoctoproject.org
References: <b62b9ddae6fdd02a759346f6d9779554bb487c48.1495964122.git.wallinux@gmail.com>
	<592C4439.5010901@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <592C498D.4040206@linux.intel.com>
Date: Mon, 29 May 2017 11:17:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <592C4439.5010901@linux.intel.com>
Subject: Re: [ptest-runner] timeout option missing the argument option ":" to getopt
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
X-List-Received-Date: Mon, 29 May 2017 16:17:19 -0000
X-Groupsio-MsgNum: 36254
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="SNiEn549D2PkX79X6IHlxVkWeOoNmEdAf"

--SNiEn549D2PkX79X6IHlxVkWeOoNmEdAf
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 05/29/2017 10:54 AM, An=EDbal Lim=F3n wrote:
> Hi Anders,
>=20
> Thanks for notice this issue, i will integrate the patch.

Integrated, thanks,

http://git.yoctoproject.org/cgit/cgit.cgi/ptest-runner2/commit/?id=3D8a93=
832dad621535e90aa8e1fb74ae5ba743fc3e

>=20
> Cheers,
> Anibal
>=20
> On 05/28/2017 04:47 AM, Anders Wallin wrote:
>> ptest-runner -t xx gives segfault
>>
>> Signed-off-by: Anders Wallin <wallinux@gmail.com>
>> ---
>>  main.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/main.c b/main.c
>> index d7a546f..505829c 100644
>> --- a/main.c
>> +++ b/main.c
>> @@ -66,7 +66,7 @@ main(int argc, char *argv[])
>>  	opts.ptests =3D NULL;
>>  	opts.xml_filename =3D NULL;
>> =20
>> -	while ((opt =3D getopt(argc, argv, "d:ltx:h")) !=3D -1) {
>> +	while ((opt =3D getopt(argc, argv, "d:lt:x:h")) !=3D -1) {
>>  		switch (opt) {
>>  			case 'd':
>>  				free(opts.directory);
>>
>=20
>=20
>=20


--SNiEn549D2PkX79X6IHlxVkWeOoNmEdAf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJZLEmSAAoJEGJqcE9h3glg7ooP/1dc3jJck/Jt8HYJv58lpfdr
dqD7tAClOLPghmrXkGHDKUXR16DNtFkg0qc97fD0DLcS9+f0CHvoar4mxthLNgz+
0WFFd4imOf2VZGzFi+xfIpFxIT3MECX/54QliP/ohVaIMmJFTQ5MtkFS6nnWrt6j
K/yIo46AlhxWYlEyQScnjqBjhj7ufWxymJifAld3ltHlTCRn6A6p+YWxIrF8ye0P
RCx+N3qBwkOcCv4ZVuaV7qfnrh4TWHOBLl3SYQ/6VkHh7uxRPmOjUMUATf/Ncs5i
/R3zgrmssqMUTGMVwR68d2IKpBwZL4sdx0vnWiD0EEyALqNDX7ZaFZ4L+H1iJxDF
7U11GXjej6r9H1mTN5243IUyktusA28DfJeZOMi/BOQyphVimVMAyaiVfY9Uzcil
I1v7TLV0n4UQH8deKPraPofYdelpmc9uyY4JKXTc4kUHkor9KXAwx7mTrAAve44P
j++UeCVoAh9AwFTb4mOivbwzWHSceKvgKxtEJzgLN+ni+VVoMZOrWma4zhSeMXKC
SMADl5F4abFhbstrbz+/ksNaDYScyBzy/uwAmxFwwfecwKXAHNQ7LjMtrF1RFBkn
uf8BEFmHvsF4wqFJ/0oYe79BOu7K9amzIaAJybmCDeQ8zuCbazTw3GpEk7iPQ+JE
wGaWGdQd6/AGNk1kfZPu
=GQAM
-----END PGP SIGNATURE-----

--SNiEn549D2PkX79X6IHlxVkWeOoNmEdAf--
