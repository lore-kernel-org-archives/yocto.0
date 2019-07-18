Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9281E00D89; Thu, 18 Jul 2019 00:29:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [46.105.56.233 listed in list.dnswl.org]
Received: from 8.mo69.mail-out.ovh.net (8.mo69.mail-out.ovh.net
	[46.105.56.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AA91E00B33
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 00:29:50 -0700 (PDT)
Received: from player688.ha.ovh.net (unknown [10.109.143.216])
	by mo69.mail-out.ovh.net (Postfix) with ESMTP id 31B4361670
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 08:53:14 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player688.ha.ovh.net (Postfix) with ESMTPSA id E6E147F8F0B6
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 06:53:13 +0000 (UTC)
To: yocto@yoctoproject.org
References: <2df6a579f4b90431256b6e19a41d852f@vivaldi.net>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
	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
	0f2bcrTp9w==
Message-ID: <00b69477-403a-834c-851d-1dc05ddd7c28@3mdeb.com>
Date: Thu, 18 Jul 2019 08:53:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <2df6a579f4b90431256b6e19a41d852f@vivaldi.net>
X-Ovh-Tracer-Id: 1682657411955175081
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrieeggdduuddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc
Subject: Re: List of Supported Python versions
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
X-List-Received-Date: Thu, 18 Jul 2019 07:29:52 -0000
X-Groupsio-MsgNum: 45988
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="CWHSE4rZtMLSbDMHbFj9HNBf7q8Wv9Mnm"

--CWHSE4rZtMLSbDMHbFj9HNBf7q8Wv9Mnm
Content-Type: multipart/mixed; boundary="xxiCgPwbIAzHjQdMF6cVqfRK5ke7CqXfV";
 protected-headers="v1"
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: yocto@yoctoproject.org
Message-ID: <00b69477-403a-834c-851d-1dc05ddd7c28@3mdeb.com>
Subject: Re: [yocto] List of Supported Python versions
References: <2df6a579f4b90431256b6e19a41d852f@vivaldi.net>
In-Reply-To: <2df6a579f4b90431256b6e19a41d852f@vivaldi.net>

--xxiCgPwbIAzHjQdMF6cVqfRK5ke7CqXfV
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 18.07.2019 07:41, jaymin.dabhi@vivaldi.net wrote:
> Hello Team,
Hello,
>
> Which Python, Python-OpenCV, Python-Numpy, Python-Scipy and OpenCV
> (max)versions are supported in Yocto 2.0.3 (Jethro) distro version?
>
> Can I get list of notes in which version of all supported modules have
> been mentioned?
You can use the search engine to look for the packages you are
interested in.
I would recommend to use one of the more recent releases instead of the
Jethro, which is almost
4 years old.
>
>
> Please let me know.
>
> Regards,
> Jaymin

--=20
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com



--xxiCgPwbIAzHjQdMF6cVqfRK5ke7CqXfV--

--CWHSE4rZtMLSbDMHbFj9HNBf7q8Wv9Mnm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJdMBdYAAoJEPFAHS4cyxnv5nUP/RH579DKtqyy1VIFH3BmFluO
eN1NOfFtYTA8wk27Ix5XpJ4cjXeH0wAA2Ww5tIvsXA4S0ShvObtFSCenbNugFJp6
l3WRKTzTi0gu9qJiqIt2O0VJd/A6y7SoQ+6CX26oAfsUJGopsLsdVJbDZRODOZ51
FgNdqW7OXu/xXxwgY6OleE+qUZjs+BKOrChEglqeYnBJ9C392rIYJI8L4vIPFhHQ
gT1KrbLnU+ldSEIfgqDjFxdxONuXBGLM0JVx6GGBs8U0i9ILtleu/DgNqd0QtsM4
eo2Dn0Dmfe4/ZUohG6lCvBnWzjDkDRj3ugo69DRBJelDezqCeP866U//BjGkdf4G
30tyq7guM4gmOzROv6g6CPRdsIn46X0Q1XsW/v49RAciwLB48+Qg4JmmP9dXfnzl
ecM/VPA2wHsLfp3NQBw/7AMDYwhnu5uIbbxga3HWmxAwrsRemBkbVI7NP0WgyLaG
608P5yynewk2u0xwommgl5Hmd5ljGme17YB3+Vy8+9+n8zCkQS0gZkeQKumLxYmX
Yc+DMrJPQBNLWSo+kft9PjLVxuVRvOc/CnvnFO5iSKVqyg9FZMojWayPr/5v7sQy
C6AmX5sTYeLeHnyD5M9feYc2mm00AHLO33z9rp7bw/9JbfEytiLrOBygdM7b6DZI
+txWr42PoKyoDQEt3ikW
=lwjT
-----END PGP SIGNATURE-----

--CWHSE4rZtMLSbDMHbFj9HNBf7q8Wv9Mnm--
