Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49268E00D31; Fri, 29 Jul 2016 08:46:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 200F7E00CC9
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 08:46:26 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 29 Jul 2016 08:46:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,440,1464678000"; 
	d="asc'?scan'208";a="1016266701"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.54]) ([10.219.5.54])
	by fmsmga001.fm.intel.com with ESMTP; 29 Jul 2016 08:46:25 -0700
To: pidge@toganlabs.com, yocto@yoctoproject.org
References: <1469805026-22041-1-git-send-email-anibal.limon@linux.intel.com>
	<1469806290.3657.0.camel@toganlabs.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <579B7A7B.7090703@linux.intel.com>
Date: Fri, 29 Jul 2016 10:47:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1469806290.3657.0.camel@toganlabs.com>
Cc: joshua.g.lock@intel.com, pidge@togenlabs.com
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
X-List-Received-Date: Fri, 29 Jul 2016 15:46:30 -0000
X-Groupsio-MsgNum: 31305
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="X9wNtQQBGsQqQ7A5a5oRRFbCNrQmO3mED"

--X9wNtQQBGsQqQ7A5a5oRRFbCNrQmO3mED
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 07/29/2016 10:31 AM, Beth 'pidge' Flanagan wrote:
> I'd put this in a try except. What happens with eclipse?

At this time we don't support eclipse, i'll add the try except and if
fails use "unknown_branch: unknown_revision".

	alimon


--X9wNtQQBGsQqQ7A5a5oRRFbCNrQmO3mED
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJXm3p9AAoJEGJqcE9h3glgMcAP+wURMB49eryg4Na8Yu6IUXxx
x9csomBrh5rp3ROJ3ZnGFsrTR/CYT7bXkMFSRJSssZFpmj9oxhbEqjCvMjcuPR40
BTohCeKKzvOYdW1ah6L43I9mBGMHtXUdtuW6pgqcQsrfzQMhKuN/UTBPiszfp3wq
HigayMv9T1MVBvaA0HAr7Xjqpv3b6KH2lnyMccCUIrlCKH10LsWll662uvrQyYwm
6bQ/O+nJ3LSgRMeqkWo0DXP9aGnK8KVohz4TXvVU8IpuqdfTFfpe/OnhBFxRUprF
fXNk/fqwMe0rJaNY+sKenDF2YvURuaoF1+VwAgJ7zrt1ATKtOHbZiNDTRdMrQrct
9efPxIWHj59Oj7FfnZAQAnIGv5joXLMOGHziVBqQ/gcWmnu4EDBzKHsLLN9kZw9S
W04QgMAALC8rW1+76pBQS1tSXkTB8tnEF9WXOjVSTFNinSWyRlcyWzN6MBAKemOK
QqbyAJK1wKT1ybAF6rOm+uzPy8YAz9WtgOQnLUXjn5cerSOUQ+n/tekacigvNx6E
BfoWYbMVLx+Vf1dE6/0qPcwdU8khwlt0C7Pket7i4wiPAZJeZvYOrEkYjV2fFmS7
txuHA+djvbIaVJFy0xD5F9Fdaeok3QInu92YzbsDEYSR3SCPh8X9qRWHVsAouLUp
1jp3faGXb7bxsqijdftL
=uz3g
-----END PGP SIGNATURE-----

--X9wNtQQBGsQqQ7A5a5oRRFbCNrQmO3mED--
