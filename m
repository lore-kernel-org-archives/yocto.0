Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D41F3E00769; Wed, 16 Jul 2014 06:33:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8E01E004FF
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 06:33:37 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id at1so748880iec.30
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 06:33:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=Lk7ROrGOZGhQjY4NV736lYo0JRZky047wRzGE7Z7L1s=;
	b=CncKQWBGpXVRWr1ya30PeIcq4x1ouEGaCtog7jqUNpLtFkOoI9vl5H+b/nC9PT2avk
	+ZqH+yTJYLUPGywsU4btqBHZWHmUFtWiN9r/tKIJfqnyE3lUIUlgSD4af7kn6/MaWnG0
	w+bzPr1StI4M9L466QaelGnjKcbeJbabAaVrEFL7InDFjzcB5u/x+v0efoD0wlt3gudb
	A9G/yQy1UVtqo0C1m8mlDZAYBLi4uZA1nowTVEoShd9eZ8I+7QF+FZZrdBLeR3tjXcHM
	j+iZJyK+Wy0pIWz86fA1Zpk42y08Knyt3+6QjDX9emJfGHjiT2Y+0a/U3yMX5lgAod8G
	4WIg==
X-Gm-Message-State: ALoCoQnVAumzdWoGJh/8ytk9LdYGjCDQHo4FNsk2tiuLrBLjlEMXhSTAuwrNpqNzgI7UaQ23KM/w
X-Received: by 10.50.114.162 with SMTP id jh2mr16425718igb.0.1405517616519;
	Wed, 16 Jul 2014 06:33:36 -0700 (PDT)
Received: from skynet (24-246-4-250.cable.teksavvy.com. [24.246.4.250])
	by mx.google.com with ESMTPSA id rq5sm44797462igb.0.2014.07.16.06.33.34
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 16 Jul 2014 06:33:35 -0700 (PDT)
Received: by skynet (Postfix, from userid 1000)
	id 73EB61685E4; Wed, 16 Jul 2014 09:33:32 -0400 (EDT)
Date: Wed, 16 Jul 2014 09:33:32 -0400
From: Joe MacDonald <joe@deserted.net>
To: openembedded-devel@lists.openembedded.org
Message-ID: <20140716133302.GB13248@deserted.net>
References: <53C619B3.7050203@mvista.com>
MIME-Version: 1.0
In-Reply-To: <53C619B3.7050203@mvista.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [oe] WIreshark 1.12.x
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
X-List-Received-Date: Wed, 16 Jul 2014 13:33:48 -0000
X-Groupsio-MsgNum: 20576
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yLVHuoLXiP9kZBkt"
Content-Disposition: inline

--yLVHuoLXiP9kZBkt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[oe] WIreshark 1.12.x] On 14.07.15 (Tue 23:20) akuster wrote:

> Hello all,
>=20
> I have the latest wireshark 1.12.0-rc2 building and working with
> gtk2. Is anyone else working on this? if not I can submit patches.
>=20
> I am not sure which layer wireshark should swim in,  meta-networking
> or meta-security ?
>=20
> - Armin

Hey Armin,

tcpdump lives in meta-networking/recipes-support, that seems like it's
probably a reasonable location for wireshark too.

--=20
-Joe MacDonald.
:wq

--yLVHuoLXiP9kZBkt
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlPGfyQACgkQwFvcllog0XxJNACfV9/OI/k/YtbBkeyINTYZHliM
9B0AnRyzhO2UMp15gGci9i7Tkz82QxPm
=6vmO
-----END PGP SIGNATURE-----

--yLVHuoLXiP9kZBkt--
