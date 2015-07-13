Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C59A7E00758; Mon, 13 Jul 2015 10:37:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F7F7E00474
	for <yocto@yoctoproject.org>; Mon, 13 Jul 2015 10:37:29 -0700 (PDT)
Received: by padck2 with SMTP id ck2so46084849pad.0
	for <yocto@yoctoproject.org>; Mon, 13 Jul 2015 10:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version;
	bh=WV90vRhDSEr0G6zdISz5trb1N/4j/lvh/ikyYbHOE9c=;
	b=Nc30UISpyHNjjB4sN0rXD0aUmK7Vq+ZSC0UHo3HxWcpQKkytOUdeA4NUjSiODCqC6N
	LBzgRAe6roCFfFZ+RLQQaM+IC6fV9fefTp+gfEamkE8fNWLQLclqZNtLsp9upXnOy3c6
	umPmfrL86oBrC0A0z9hHiC60wKYzdiZm1CV3mUEsiPxm0cLNqlPac88BijOKz0v/XMry
	EmT+YBiJQv05u8J8uE50vgN32Iy/qc++XdAoPmf/zmcON8TU1orhQlhA7yNwJh1T9i9Q
	rB+2LPSBcg8lxFcTHMDRQwMbgaHDl90ZOUykf5K+n2QaO5AnAEWmkJ+ev2/sXN+jcacm
	1gsg==
X-Received: by 10.66.62.202 with SMTP id a10mr5715115pas.42.1436809049203;
	Mon, 13 Jul 2015 10:37:29 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:2911:52b8:984e:c65b?
	([2601:646:8601:4580:2911:52b8:984e:c65b])
	by smtp.gmail.com with ESMTPSA id
	do3sm19160866pbb.5.2015.07.13.10.37.28
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 13 Jul 2015 10:37:28 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
X-Pgp-Agent: GPGMail 2.5
Date: Mon, 13 Jul 2015 10:37:23 -0700
Message-Id: <261F5389-C495-4B05-B79E-309AE0E0F0CA@gmail.com>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	Yocto discussion list <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
X-Mailer: Apple Mail (2.2102)
Subject: glibc 2.22
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
X-List-Received-Date: Mon, 13 Jul 2015 17:37:32 -0000
X-Groupsio-MsgNum: 25450
Content-Type: multipart/signed;
	boundary="Apple-Mail=_65805941-0605-4404-B39B-FBE83868203D";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_65805941-0605-4404-B39B-FBE83868203D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi All

glibc 2.22 will release end of this month. For some time I have put =
together the update here

=
http://git.openembedded.org/openembedded-core-contrib/commit/?h=3Dkraj/mas=
ter&id=3D02e73ea526d94f21c7ef82eb96b062eff8ebb825

It works pretty well for machines I have tested it on ( arm/x86 ) but =
would be interested if more wider trial could be carried
out and issues reported between now and release can be addressed.

Please give it a try if you have spare cycles

Thanks
-Khem



--Apple-Mail=_65805941-0605-4404-B39B-FBE83868203D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlWj91cACgkQuwUzVZGdMxRA+gCgkSzUeaeubUSKZHM5rUY2Re1z
5wEAn2OPj0sFYt4er8ptomzLr33zTaXZ
=/J8r
-----END PGP SIGNATURE-----

--Apple-Mail=_65805941-0605-4404-B39B-FBE83868203D--
