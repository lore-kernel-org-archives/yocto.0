Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7D69E00524; Mon,  9 Jan 2017 14:34:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52103E00443
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 14:34:20 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga103.fm.intel.com with ESMTP; 09 Jan 2017 14:34:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,341,1477983600"; 
	d="asc'?scan'208";a="51329390"
Received: from jalamego-mobl2.zpn.intel.com (HELO [10.219.5.138])
	([10.219.5.138])
	by fmsmga005.fm.intel.com with ESMTP; 09 Jan 2017 14:34:20 -0800
To: yocto@yoctoproject.org
References: <1483743785-13872-1-git-send-email-jose.a.lamego@linux.intel.com>
	<1483958944.2137.22.camel@intel.com>
From: Jose Lamego <jose.a.lamego@linux.intel.com>
Message-ID: <20d716f4-ab8f-d0af-2372-55d16ef8f28c@linux.intel.com>
Date: Mon, 9 Jan 2017 16:34:23 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <1483958944.2137.22.camel@intel.com>
Subject: Re: [patchwork][PATCH] patchwork/bin/parsemail: Make "[PATCH" prefix mandatory
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
X-List-Received-Date: Mon, 09 Jan 2017 22:34:23 -0000
X-Groupsio-MsgNum: 33724
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="O7n3LRExKgBpEr0ONgId0CAbNxuRHHMtw"

--O7n3LRExKgBpEr0ONgId0CAbNxuRHHMtw
Content-Type: multipart/mixed; boundary="5nXQd1hh2HRdFC4w8RMxEUJqTCK0Avpub";
 protected-headers="v1"
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Cc: Patrick Ohly <patrick.ohly@intel.com>
Message-ID: <20d716f4-ab8f-d0af-2372-55d16ef8f28c@linux.intel.com>
Subject: Re: [yocto] [patchwork][PATCH] patchwork/bin/parsemail: Make "[PATCH"
 prefix mandatory
References: <1483743785-13872-1-git-send-email-jose.a.lamego@linux.intel.com>
 <1483958944.2137.22.camel@intel.com>
In-Reply-To: <1483958944.2137.22.camel@intel.com>

--5nXQd1hh2HRdFC4w8RMxEUJqTCK0Avpub
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 01/09/2017 04:49 AM, Patrick Ohly wrote:
>...
>=20
> I'm wondering if we can address two bugs with the same fix, something
> that requires that the Subject line is starting with a set of tags plus=

> the [PATCH] tag. For example:
>=20
> patch_prefix =3D re.match('(\s*\[[^]]*\]\s*)*\[\s*PATCH', mail.get('Sub=
ject'))
>=20

Based on Patrick's suggestion, v2 of this patch would require for any
new email message to be handled as a likely new patch (message content
still needs to be parsed as usual):

	- Message subject MUST start only with any of the accepted OE layer's
prefixes; in other words, subject must start with square bracket "["
plus prefix (maybe only the bracket will be enough).
and
	- Message subject MUST contain the "[PATCH" prefix.

messages with a subject that starts with any other character (including
"Re: " and "Fwd: " or that do not include the "[PATCH" prefix will be
handled either as a comment to an existing patch or as an ordinary
mailing list post, depending on the included email references and
content parsing.

I see no conflicts with steps on the wiki "How to submit a patch to
OpenEmbedded":
http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

Please provide feedback on this approach before I implement a test in
the staging instance.

--=20
Jose Lamego | OTC Embedded Platforms & Tools | GDC


--5nXQd1hh2HRdFC4w8RMxEUJqTCK0Avpub--

--O7n3LRExKgBpEr0ONgId0CAbNxuRHHMtw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQEcBAEBAgAGBQJYdA/yAAoJEFJAtowlSEbnpOsIAIiP7LBM4qtItiPjXUQ4oRil
c8UXBG1icjnOEXBjeffa9F0VAYRxxmIS5EYQr9Kk+O+lK3UkMn5WV/c2dR7IkJoL
FD4t9E2D0b0T0/r7dWh97VktEuBMb/X1N6qi3YpXBoDiyBUCl2Kh1ZTXgriSquyR
D3K5WksBDhZtSbd1DbYAMYTzMoZ7KQ0Lx1O3wOSSEB2bSnPCe9QqBFXy9Zm5llhX
aEQqmaVxHnHT5U4UwIl6ZPuzcUg1JmMkNc3EM44+d2sLyUXtfUco9e+rwFm4DTWP
a59De9CvQikin+TrrkqQVmQYDCpAgDkzkPCmKPVzU1AxxWrWndehQp8Ufx3mpV0=
=Ax7U
-----END PGP SIGNATURE-----

--O7n3LRExKgBpEr0ONgId0CAbNxuRHHMtw--
