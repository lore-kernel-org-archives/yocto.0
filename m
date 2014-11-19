Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF48EE00903; Wed, 19 Nov 2014 07:19:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id B466CE008FB
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 07:19:38 -0800 (PST)
Received: (qmail 26092 invoked by uid 1003); 19 Nov 2014 15:19:38 -0000
Received: from unknown (HELO ?192.168.1.109?) (philip@opensdr.com@71.171.45.99)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	19 Nov 2014 15:19:38 -0000
Message-ID: <546CB505.2070807@balister.org>
Date: Wed, 19 Nov 2014 10:19:33 -0500
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>, 
	"Burton, Ross" <ross.burton@intel.com>
References: <546BB9EF.4040807@balister.org>
	<CAJTo0LaKHeK+hL_s9z-pPT6dnzCR5mw4MgOkg4Zch=S=dWWGMA@mail.gmail.com>
	<20141118230324.GA2477@jama>
In-Reply-To: <20141118230324.GA2477@jama>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Layer model doomed, unless we all work together
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
X-List-Received-Date: Wed, 19 Nov 2014 15:19:46 -0000
X-Groupsio-MsgNum: 22261
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="xxBJLQHWEi0psjAuROjLo62mW0TBcesqw"

--xxBJLQHWEi0psjAuROjLo62mW0TBcesqw
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 11/18/2014 06:03 PM, Martin Jansa wrote:
> On Tue, Nov 18, 2014 at 09:57:30PM +0000, Burton, Ross wrote:
>> Looking over the duplicate list, there's some obvious low-hanging frui=
t.
>> Angstrom duplicates recipes that are in meta-multimedia. meta-webos an=
d
>> meta-webos-ports seem to be full of duplicates.  meta-guacamayo has so=
me
>=20
> meta-webos-ports is fork of meta-webos, so duplicates between these 2
> are expected.

Paul explained you can use the filter button to adjust the layers
scanned for dupes. This should be all layers minus meta-webos-ports:

http://layers.openembedded.org/layerindex/branch/master/duplicates/?l=3D9=
1&l=3D123&l=3D30&l=3D147&l=3D168&l=3D148&l=3D31&l=3D65&l=3D66&l=3D32&l=3D=
124&l=3D164&l=3D67&l=3D149&l=3D77&l=3D101&l=3D118&l=3D33&l=3D3&l=3D34&l=3D=
142&l=3D169&l=3D35&l=3D137&l=3D171&l=3D139&l=3D108&l=3D162&l=3D81&l=3D82&=
l=3D95&l=3D125&l=3D145&l=3D146&l=3D114&l=3D4&l=3D36&l=3D68&l=3D140&l=3D83=
&l=3D132&l=3D5&l=3D154&l=3D120&l=3D84&l=3D6&l=3D93&l=3D112&l=3D7&l=3D37&l=
=3D167&l=3D38&l=3D8&l=3D98&l=3D39&l=3D165&l=3D40&l=3D105&l=3D69&l=3D9&l=3D=
10&l=3D110&l=3D107&l=3D11&l=3D12&l=3D13&l=3D14&l=3D41&l=3D15&l=3D99&l=3D1=
51&l=3D170&l=3D85&l=3D42&l=3D43&l=3D113&l=3D159&l=3D16&l=3D78&l=3D92&l=3D=
103&l=3D157&l=3D97&l=3D119&l=3D70&l=3D152&l=3D153&l=3D71&l=3D126&l=3D115&=
l=3D136&l=3D44&l=3D45&l=3D163&l=3D17&l=3D102&l=3D150&l=3D46&l=3D18&l=3D19=
&l=3D79&l=3D2&l=3D138&l=3D174&l=3D20&l=3D21&l=3D128&l=3D129&l=3D130&l=3D1=
31&l=3D47&l=3D104&l=3D48&l=3D135&l=3D22&l=3D173&l=3D121&l=3D23&l=3D160&l=3D=
49&l=3D106&l=3D24&l=3D50&l=3D117&l=3D143&l=3D87&l=3D51&l=3D52&l=3D25&l=3D=
133&l=3D116&l=3D53&l=3D72&l=3D122&l=3D73&l=3D54&l=3D55&l=3D172&l=3D88&l=3D=
109&l=3D56&l=3D57&l=3D100&l=3D26&l=3D155&l=3D90&l=3D58&l=3D144&l=3D59&l=3D=
60&l=3D74&l=3D61&l=3D75&l=3D158&l=3D134&l=3D62&l=3D111&l=3D27&l=3D76&l=3D=
28&l=3D141&l=3D1&l=3D64

Although that url might fail, you get the idea how to use the tool better=
 :)

Philip


>=20
> Also meta-webos master branch is compatible only with 1.4 dylan release=
,
> so some of the duplicated recipes are actually backports from newer OE.=

>=20


--xxBJLQHWEi0psjAuROjLo62mW0TBcesqw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJUbLUJAAoJEMDJd4rr0merf2QH/1od1WNuMREpNUhcRIaqvd3q
/1zJTUxPkYrF8QX6BcF9Wc6/kdPZo2ELYBg24bu2Xi4aJlTXgaNUqk2w96QoEHgr
FEd6Ykjch6UQPjdcisHg9ejuQX4LDvLyfzhpzMVWPL6NCrBQodPHLeGG63Ihhg63
JHItxeXjM8z07tYxG8Am7myP7bN2ZLENCMW5UcNTsHDqJp4Z6OXX6K0DTfb3mQVv
DC4NDUaJUYrsfIGX6cEtz54bhSyEiQ0oThVPo5DUamUw8zBGrha9c3pOokl9W83I
FzCFsi1Gc9F7x0uIcmVDzlSM7lI7ZHERpveGDbJarAMKHx4J8CdG97+T3eWuYD0=
=PrfI
-----END PGP SIGNATURE-----

--xxBJLQHWEi0psjAuROjLo62mW0TBcesqw--
