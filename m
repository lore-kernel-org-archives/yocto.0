Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B117E00E6F; Mon, 13 Jun 2016 08:08:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D856E00C0F
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 08:08:19 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2016 08:08:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,466,1459839600"; 
	d="asc'?scan'208";a="986474053"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.51]) ([10.219.5.51])
	by fmsmga001.fm.intel.com with ESMTP; 13 Jun 2016 08:08:20 -0700
To: pidge@toganlabs.com, "Randle, William C" <william.c.randle@intel.com>,
	"Lock, Joshua G" <joshua.g.lock@intel.com>
References: <5759DE3F.9040002@linux.intel.com>
	<1465807715.4615.14.camel@toganlabs.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <575ECC93.9000600@linux.intel.com>
Date: Mon, 13 Jun 2016 10:09:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1465807715.4615.14.camel@toganlabs.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder] [RFC] Add support for generate bitbake error reports
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
X-List-Received-Date: Mon, 13 Jun 2016 15:08:23 -0000
X-Groupsio-MsgNum: 30478
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="fc0QUfGjxcaSQlGD0IsBvJCkAi8pieIQj"

--fc0QUfGjxcaSQlGD0IsBvJCkAi8pieIQj
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 06/13/2016 03:48 AM, Beth 'pidge' Flanagan wrote:
> On Thu, 2016-06-09 at 16:23 -0500, An=C3=ADbal Lim=C3=B3n wrote:
>> Hi folks,
>>
>> Currently we support to send error reports to errors.yoctoproject.org
>> about failing tasks on bitbake using SendErrorReport buildstep but we
>> have a lack of bitbake related errors like exceptions.
>>
>> A bug exist to implement this support into Error report web [1], i'm
>> working on it but for generate bitbake error reports there's a need
>> of
>> some process monitoring the bitbake output in this case the Yocto
>> Autobuilder.
>>
>> This email is for review my current implementation for generate
>> bitbake
>> error reports in the Autobuilder [2] next i'll try to explain how it
>> works.
>>
>> I aadded a BitbakeShellCommand [3] class for use in the buildsteps
>> that
>> executes bitbake the main objective of this class is to have common
>> operations to be made in bitbake commands like create error reports
>> if
>> fails.
>>
>> For create error reports this class add an stdio observer to look at
>> bitbake output and if bitbake fails review the bitbake output for
>> identify if the failure is an non-related task error [4]. If the
>> observer found bitbake error creates an Error report with the
>> information in the master controller.
>>
>> In order to send the bitbake error to Error report web the controller
>> transfer the report to the worker using a new DownloadDirectory
>> implementation that i made [5], the SendErrorReport buildstep works
>> on
>> the worker side so it's easy to transfer the reports from master to
>> worker instead of send it by master.
>>
>> Finally to complete with the job of have the bitbake errors reports
>> the
>> Error report web changes need  (i'm working on it) to be integrated
>> first in order to don't break anything.
>>
>> Please review it and provide me feedback.
>>
>=20
>=20
> 1. fix the commit message to ea1d5b35bc77bad5d2
> 2. in same, why are you removing buildset-config.controller/poky-
> tiny.conf? I believe this is still supported (and even if it isn't in
> master, we maintain backwards compatibility)

Thanks for notice the removal of poky-tiny it wasn't my intention, i did
an script to update the buildsets and seems that don't work well. I'll
fix the last commit message ea1d5b35bc77bad5d2 and also include the
poky-tiny buildset.

>=20
>=20
> As a whole, I like what is being done here. I would like this put on
> the devel cluster before bringing it into production, just to smoke
> test this, both with nightly builds and single builds. I can't see
> anything that would obviously blow up though.
>=20
> cheers,
>=20
>=20
> -b
>=20


--fc0QUfGjxcaSQlGD0IsBvJCkAi8pieIQj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJXXsyaAAoJEGJqcE9h3glgNW4P+wZH1l5EtM7zDc2IT9S6GozK
SLzbETP6a9/t/aI736l1+I3yKKpU+0Z2j1ixUOQnjfc8QP9BSE613UYq/CpBHr84
8ignVoR+v2XeeIAf2vK+fhx3YowaTGuvOi+/qChaa0HKdw6NCa9pIrtmiV5y1Jvf
RlR2q7ORpJKg4PUo+PzlLDJ+nj0fkVOnuNHwsraTEbHUyijN/J0UmbDg3D2CJwD7
On/7UvN4JEKKv77SP3Hno4l77t0/LpNvBlzywpOOezw0Jy35vlF9a7hPI2U9QBfb
DaQuZNDn6v22YDI3Nt2Rr2poVEFzmdbs19B4v+oA6EnDU0LZWd5NkDC3tsb7tiet
duJfN15mxdUGR2vqNu36bG3DIlCBWV27CiGSzp5Q0Ly4bZnn+SCpDuMHzB5WM2tC
FU3BN3OajejgBanLxogVcI0fOxM8sewwwUNX+DSfT/uMfT7srTNoJjCY50qG+Zut
g3LhucpKDTsKjkZqAtZ43b7DkspJfzq+MZnCTojNckPSWHavlatdbSWcZyoJ44Gw
YZ8exE9Onx/pMkHflV4EkX+pNFE/+62rEjf7RTCqp5xuBP1CYx2N7LoYWlfuJzSI
Nifmn8OTfNzeJPOR2fLD0BqtqtlkagYloWcA2LjGyggjJmLWUu+EvcX+EaKvGbuF
daXnV6N0RXsa1ZBha86d
=oQJd
-----END PGP SIGNATURE-----

--fc0QUfGjxcaSQlGD0IsBvJCkAi8pieIQj--
