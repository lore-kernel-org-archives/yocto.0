Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 664BCE00D31; Fri, 29 Jul 2016 08:58:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 121A7E00CC9
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 08:58:04 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 29 Jul 2016 08:58:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,440,1464678000"; 
	d="asc'?scan'208";a="1031578209"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.54]) ([10.219.5.54])
	by fmsmga002.fm.intel.com with ESMTP; 29 Jul 2016 08:57:24 -0700
To: pidge@toganlabs.com, yocto@yoctoproject.org
References: <1469805026-22041-1-git-send-email-anibal.limon@linux.intel.com>
	<1469806290.3657.0.camel@toganlabs.com>
	<579B7A7B.7090703@linux.intel.com>
	<1469807413.3657.1.camel@toganlabs.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <579B7D0C.1070308@linux.intel.com>
Date: Fri, 29 Jul 2016 10:58:04 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1469807413.3657.1.camel@toganlabs.com>
Cc: joshua.g.lock@intel.com
Subject: Re: [PATCH][yocto-autobuilder] lib/buildsteps.py: fix report creation in nigthly-oecore
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
X-List-Received-Date: Fri, 29 Jul 2016 15:58:05 -0000
X-Groupsio-MsgNum: 31307
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="k9VGEwvvX4gnoWsKXiJpRBf7rP3RtTaS8"

--k9VGEwvvX4gnoWsKXiJpRBf7rP3RtTaS8
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 07/29/2016 10:50 AM, Beth 'pidge' Flanagan wrote:
> On Fri, 2016-07-29 at 10:47 -0500, An=C3=ADbal Lim=C3=B3n wrote:
>>
>> On 07/29/2016 10:31 AM, Beth 'pidge' Flanagan wrote:
>>>
>>> I'd put this in a try except. What happens with eclipse?
>> At this time we don't support eclipse, i'll add the try except and if
>> fails use "unknown_branch: unknown_revision".
>>
>> 	alimon
>>
>=20
> Ah, some of us still build for it! :D Remember, we try to not break
> stuff we still support.

Yes right, may be i don't exaplain correctly this functionality is for
generate error reports the eclipse buildsets are supported but atm don't
have error report functionality, i could add later. :D

	alimon

>=20
> -b
>=20


--k9VGEwvvX4gnoWsKXiJpRBf7rP3RtTaS8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJXm30OAAoJEGJqcE9h3glg3S4P/irlKoSaY/DgLskgc3yy3qXJ
heyiqJJyfftlj4z7QXTkmr/gb7lZYwimYsdQEzoJch/snB8WZCGVGDwW+X6MablN
k336Xqp0l1TlrDP8KUa0P1imBP3hL5JPe6n+WFa3ksKKToq40LC5ws06I9gi84P/
7UqAUpsXjn6+YDumyTz1r42wZAzo0AS7NGKJXhmUfJ6J36Z7xKJHmzgu54K+sZR2
W3G5xswPGEeVnXScksAjZ8p+qGvmLZUAI1ek0jLTTvXH7bvUb/lvLynyNwyqKDlF
qqNSyxe5qhnkb7wgXtcPpb19Ilx8K1zj7hKIob47xbV4r433awDjZG80eYG7q7iO
6BE29uVbPd4tE4EKStNepwgB7WON1Ct5RIjj9kog+eWrmpjcv7NQLUm+k9C6wfys
Cz1FUKwuOOvdUm+S4OHrsUTTqVXgoExs6dol7Kmk186+3HijPPF21/1uuHcK7NPT
e1ev+9RxSTphYuS1KPqGx3jda051+Yluiwlk1792DtE/b9jjQQrF2aLvwASwUrUZ
GRcw9zI/p3YmoPKxMUz0qSPe3jr2f/z+pUucdeSGuPwfGCZW3aYsLqZbok1ad99v
mgPYQY4v0uuXVz5yvBTGlT3iS5jneY9HvSd11x1FiPXaDswPjD9JrIj3Ae+a0qMj
ZK8l7koY2O9zdqF3b4BR
=Dz+r
-----END PGP SIGNATURE-----

--k9VGEwvvX4gnoWsKXiJpRBf7rP3RtTaS8--
