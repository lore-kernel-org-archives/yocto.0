Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9976CE009A6; Thu,  8 May 2014 06:38:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 382 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 06:38:47 PDT
Received: from mail-qg0-f53.google.com (unknown [209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7587E006EF
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 06:38:46 -0700 (PDT)
Received: by mail-qg0-f53.google.com with SMTP id f51so2728182qge.40
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 06:38:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=j45u1Rd+ObMe9Z9f4C44OHeaVLf6T/OQ+irHcXEv5Zo=;
	b=hPbfuQMxgC8mluxCclA530/DJ3PvDQqGz0sLLBcd4aStQz5WmdhgxZya8JXKHc/kyE
	/bq5R1eopW7Bkb9r8KfWua8f0qrPsxCWIvl4RDtq01WtaICES8PDZZMDEvD6uKNj8P7x
	tzDpN4NqLEiS06Yor7c38bb7yy/Ogc+x29lcXwwkfeRuZdb2LaKo2ByF+xFHJQDh5a0j
	Ad6E7j7qcaS9rpnVMXESBWgh8gTXnXUZx41JIEkPHoZSaGvyMh33nAxeNcReKRuruxFY
	UxW8GHvjF24o6MLtDdDQr5vJ9kg5zrbDC0KWctwwIRCMfBLiLh26ousvL0wQ1QG2lVaO
	D4KA==
X-Gm-Message-State: ALoCoQkTkp8lgPmUIdcisr7DDWgc0ZG5CpalzRRVZHU/w/Ec6IHu78tBLSpkkNHyESctSyCwnoTi
X-Received: by 10.224.47.8 with SMTP id l8mr5017759qaf.24.1399556326533;
	Thu, 08 May 2014 06:38:46 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id f106sm1215206qge.8.2014.05.08.06.38.45
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 08 May 2014 06:38:45 -0700 (PDT)
Date: Thu, 8 May 2014 09:38:43 -0400
From: Joe MacDonald <joe@deserted.net>
To: Neuer User <auslands-kv@gmx.de>
Message-ID: <20140508133840.GB5600@deserted.net>
References: <lkcshi$dep$1@ger.gmane.org> <3279428.eKNovLj74Y@koontz>
	<lkev6a$9nj$1@ger.gmane.org>
MIME-Version: 1.0
In-Reply-To: <lkev6a$9nj$1@ger.gmane.org>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: replace udhcpc
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
X-List-Received-Date: Thu, 08 May 2014 13:38:49 -0000
X-Groupsio-MsgNum: 19449
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="hHWLQfXTYDoKhP50"
Content-Disposition: inline

--hHWLQfXTYDoKhP50
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] replace udhcpc] On 14.05.08 (Thu 05:54) Neuer User wrote:

> Am 07.05.2014 11:27, schrieb S=F8ren Holm:
> > Use ifplugd recipe I just submitted.
> >=20
>=20
> Very nice idea. Where do I find the recipe?

S=F8ren withdrew the submission to meta-networking following further
discussion.

http://permalink.gmane.org/gmane.comp.handhelds.openembedded/63249

-J.

>=20
> > Onsdag den 7. maj 2014 10:57:22 skrev Neuer User:
> >> Hi
> >>
> >> I encounter a problem with the DHCP network setup during boot:
> >>
> >> System starts. During start ifup is called. ifup calls udhcpc. Network
> >> is, however, not yet up! udhcpc exits with failure. Then network is up.
> >> But, of course, no connection, because no IP address.
> >>
> >> In earlier times I used debian based system, which seem to rely on
> >> dhclient3. My experiences here were that dhclient remained as a deamon
> >> continuing trying to get a dhcp address.
> >>
> >> What should I do best on Yocto? Replace udhcpc with dhclient? If so, h=
ow
> >> should that be done?
> >>
> >> Or can udhcpc be configured to remain in the background and try to get
> >> an IP address when network is finally up?
> >>
> >> Thanks for any help
> >>
> >> Michael
> >=20
>=20
>=20
--=20
-Joe MacDonald.
:wq

--hHWLQfXTYDoKhP50
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlNriOAACgkQwFvcllog0Xy51gCfencdkcxXb4l8BQuVzGaxFgSZ
a5AAn0oi0rBn0Cv7V6wVP0q45Km7rKtA
=wSKa
-----END PGP SIGNATURE-----

--hHWLQfXTYDoKhP50--
