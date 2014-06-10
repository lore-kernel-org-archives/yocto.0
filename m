Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E084E00BBA; Tue, 10 Jun 2014 03:37:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.177 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f177.google.com (mail-we0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE4D7E00B0B
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 03:37:40 -0700 (PDT)
Received: by mail-we0-f177.google.com with SMTP id u56so5182852wes.36
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 03:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=f5CQCTe0ROppnQJSbVQ2dC++knp2nKHK/PdtBUCKofs=;
	b=IYXMJiCsi34n2OfNv+isru7iTBc4+hf2uqeug/yNFRP37d3uVWbhmOhZOgeTIsbIKv
	6Ia/+y+wi4ae6c60IFJNRGZrjaw2OLH6JHBmiAPTUwrw75fOcF4aHJQZMxatBKl8XWnz
	d+MVgKRxXtyj1yeOzeXuk4KLDfBc6bl+gFgi6ROPSd8ejDS8zA3TPtvyQWJlh1w9ihFw
	vwYNN14GmLRrQc1c5bsFqY+eLnsAm9xakgnD3pS9pfnYTY7VRi51PELrHc2qpX0AJWBo
	a+fHPJVGUUTmXMJnI9oz49Pfv+2eBTx5f6B+fKtUrIP9nLWEhIzr64sjbgyUzXu49xdw
	I1KQ==
X-Received: by 10.14.113.136 with SMTP id a8mr4421385eeh.0.1402396659890;
	Tue, 10 Jun 2014 03:37:39 -0700 (PDT)
Received: from gmail.com (ygg.betafive.co.uk. [5.9.90.21])
	by mx.google.com with ESMTPSA id i4sm51457968eeg.28.2014.06.10.03.37.38
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 10 Jun 2014 03:37:39 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
Date: Tue, 10 Jun 2014 10:37:37 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Marlon Smith <marlon.smith10@gmail.com>
Message-ID: <20140610103736.GC24880@gmail.com>
References: <1402354370.9385.9.camel@marlon-Z68X-UD3H-B3>
MIME-Version: 1.0
In-Reply-To: <1402354370.9385.9.camel@marlon-Z68X-UD3H-B3>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: Why use Yocto?
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
X-List-Received-Date: Tue, 10 Jun 2014 10:37:43 -0000
X-Groupsio-MsgNum: 20035
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="kfjH4zxOES6UT95V"
Content-Disposition: inline

--kfjH4zxOES6UT95V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 09, 2014 at 03:52:50PM -0700, Marlon Smith wrote:
> Hi everyone,
>=20
> I'm developing a product that will run on a custom i.MX6 board and I'm
> trying to decide whether to use Yocto or Ubuntu (there's a version of
> Ubuntu packaged for the Wandboard that will run on our board).  The
> board will run our own custom app, and we'll modify the Linux kernel to
> support our hardware.
>=20
> Ubuntu seems like it would be ready to go - just put it on an SD card,
> boot the board, compile the app and create a new SD card image from the
> result to use for manufacturing.
>=20
> Yocto seems like it would be easier to remove unneeded packages from,
> and easier to cross-compile the application for.  This means we could
> have a smaller SD card image in the end.
>=20
> What are your thoughts on this?

Philip has already mentioned license compliance in his reply, I'd like to a=
dd a
couple of other points:

- In addition to a smaller image, you should have less services running by
  default and so lower power usage.

- It's much easier to do consistent, reproducible image builds which include
  your own packages. Rather than having a series of steps such as installing
  Ubuntu on an SD card, booting, installing required additional packages,
  downloading your source code to the card, building and then installing, y=
ou
  just do 'bitbake my-image' and everything you need is encoded in recipe f=
iles
  which you can keep under version control. There's less chance for human e=
rror
  to creep in.

- You don't need to install the toolchain on the board itself, you can do t=
he
  system build on a separate machine and not pollute the SD card image with=
 the
  history of building your software. It saves you the time of going through=
 and
  removing the things you need to build your software but aren't needed to =
run
  it, which you'll probably end up doing to reduce the image size.

- You'll have a great community of people doing similar things with the Yoc=
to
  Project. I don't know of a similar community for modifying Ubuntu SD card
  images in this fashion.

Hope this helps,

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

--kfjH4zxOES6UT95V
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJTlt/wAAoJEBwoJlo7UPQDsw4H/RzRrG6/yYY3mJxiFNZcf2JF
7OmYluHbBXFBPQJnnxU3LuJ0gpLvlBUJNIO6DhI5AQOPQJladBP1SsKQoJEKk4lu
J9IPf3kcybMgLnxvhUqqu5c2YJrBCF56Fjpc/f1i7MJvzwX7G2en8rDN7uueWLyc
E67DmFzwtCgm3EQK9iGcQpf6O2qsJdZSm020MOFof1fO2OCj9lgi16o/q7v9xES9
S1ODrhG6gCVEVTiOFijAyQTjPI+UPvhDaSgB8N4sAYy6K3usLEpa6zUBLix/KsJh
JMzzsKVhsFdnGbufqTijJ/pryW8a4uOR7RgTM2HcB/NrPwjzGQVwOeey9Dicdeo=
=3DnW
-----END PGP SIGNATURE-----

--kfjH4zxOES6UT95V--
