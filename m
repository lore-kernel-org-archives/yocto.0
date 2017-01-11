Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8661E00524; Wed, 11 Jan 2017 06:40:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFA4FE00443
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 06:40:02 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 11 Jan 2017 06:40:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,346,1477983600"; 
	d="asc'?scan'208";a="807651404"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.143])
	([10.219.5.143])
	by FMSMGA003.fm.intel.com with ESMTP; 11 Jan 2017 06:40:00 -0800
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1483651296-8419-1-git-send-email-anibal.limon@linux.intel.com>
	<3147446.lSPnudXIVY@peggleto-mobl.ger.corp.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <58764466.8030100@linux.intel.com>
Date: Wed, 11 Jan 2017 08:42:46 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <3147446.lSPnudXIVY@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [[PATCH][layerindex]] layerindex: Update tinfoil to call shutdown method
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
X-List-Received-Date: Wed, 11 Jan 2017 14:40:03 -0000
X-Groupsio-MsgNum: 33755
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="VDdN6tJCLcfNOq879WCnoqjEniNNvgOAS"

--VDdN6tJCLcfNOq879WCnoqjEniNNvgOAS
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 01/11/2017 02:59 AM, Paul Eggleton wrote:
> Hi An=EDbal,
>=20
> On Thu, 05 Jan 2017 15:21:36 An=EDbal Lim=F3n wrote:
>> The new client/server API of tinfoil requires explicit call of
>> shutdown method to send the event for finalize cooker process.
>>
>> Also in update_layer remove the databuilder and cache instance
>> now isn't needed.
>=20
> This patch didn't apply against master - the databuilder piece does not=
 appear=20
> to be there.

Great may be was my own changes against RRS,

Only a comment if your layerindex scripts don't call shutdown the update
script seems blocked because never arrives the event.

Cheers,
	alimon
>=20
> Since it was a simple patch, I've remade the changes (with most of your=
 commit=20
> message) and pushed it to the paule/django18 branch that hopefully we'l=
l be=20
> moving over to soon.
>=20
> Cheers,
> Paul
>=20


--VDdN6tJCLcfNOq879WCnoqjEniNNvgOAS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJYdkRrAAoJEGJqcE9h3glgCfUP/jUab1KUDM5ItUOwpBhAkVgm
XERtquRKQ2mrkZKrYQwoXvqIFt3IhRI39HafIT4GCNTDbhc6JstS8f1q6gUiC6VV
pjjb1MqDJrEc0UWPbIvxMI94kJ8ft78b4o4REgK6Zc4vpymHnz1h/dphcWDD+tIo
WwpxxYTgpxi8KmSMiwVgiPUEeuTM7X3gaaBPzBRbO8Afz9f7q2FOgpNOILqktHLa
G3ygru1vfeojDf/JuYrTlsU6YfNi3DaSj+qf8lDBzE+ORbOs6kFHD/i54y0HKeOO
pJNmDMjs7s+iWNKjaGmqdmub66kxoq/DKyJGGDOASHtHX4k57xU7Ykdel7c8oHQp
fzVATpUZXwi5pna17VJ05pQn4iJerz5xmVIYThgKmqULSJjMfaI39efk1D8ou8gV
s1CdYjs3vIbL+iGruW5VrjiH34YqetvsiMjsykILzya78Y6w1LjBoIqOHdILePmr
17A9P+qClF8X2mK2YOHmuXR7zt+Dz/+r2l3qcudc/J4HWoLOSeEpvJ5pyn5rP7SN
HCZygnuGDNfKSZe7NgqtXNslNAvQ3aGv4809Bh1vcPBM53uBoi3cG5Y+lamnmGdw
Zisg6WzV87ClTZDZbIt2K4GzRwx/1eDQs39BEiaDWKlZXTw1T4vRyYTh95293TYa
YNLU0EQW2EiGX0LQUFzX
=LaQl
-----END PGP SIGNATURE-----

--VDdN6tJCLcfNOq879WCnoqjEniNNvgOAS--
