Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E418E00C29; Thu, 23 Jun 2016 03:21:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFB25E00C1D
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 03:21:12 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id 187so9621317wmz.1
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 03:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=qP7FBmyOFKII4gJ51w5TWStakw4luCd27DlbxFvcs3A=;
	b=y1RQu1GlTFph4Ctfk665zYKbs8DHRizgwlHnzl3/FF2scWCQcT9XKCEo+JLx8gHdUF
	cwfJOPq3dAJIXLFU3EK2H0tXLpJSKOBDu8DvUQcOQoAwJ2OHb8xHBohQJy0/7YODAL6r
	bM51bi9DT614tPZJw8I8prBv9qqm3PrY9/qqty3T+EM1xx+vQ0WUlejTUAXbVEw8dRiX
	VZFVwZ7Q3GZg+g8WcllfkaziJaYO2pNOTNt1aCqQCfZuraDIcR2bhBBzt7MOOnOnvxfi
	pO+oEdmyqfpVjV5Wk+xst9wGVaB7zOD9IhVREeCWP1s4wY6p/rHr87ehE81UQF0cpdvL
	ua+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=qP7FBmyOFKII4gJ51w5TWStakw4luCd27DlbxFvcs3A=;
	b=IJykUAUR61hrSvhPWHjrRGCq3uEdoKuxuEbVTo2BUsOs6uDHNhY/s44I+7z+n+vGMw
	ZuVmxmE4fs3rlE4U8nGdur+PD6zWvXAogWrImmwLZtRIo7x6DMtqFIEtprfD2W0s09v1
	rXc8l0lhHHTA53zejnD5waQ6e87/eV6sHMH5IHZqh0YcliDA6hBWTwxPst/4BqTqoe5l
	Hg6E4tp10vkf1XYW068oBUA2lOqm0UK+lDF7fDCxxtlyDl+y+CJRQnml/9vbBt81H657
	GFxBUO+MMMkIzyQUpAhRL162bK9fJMg2q9sLXwhvvMHvue6NdIFfSah5H7pvBXI4Unp/
	hazw==
X-Gm-Message-State: ALyK8tIAR8Oy1eExcE+F1NRmWCEYh6r566u6aMOZpg4KZs3EwfGu3gx35hjlPrzXvwjOAg==
X-Received: by 10.28.224.69 with SMTP id x66mr13034142wmg.89.1466677271460;
	Thu, 23 Jun 2016 03:21:11 -0700 (PDT)
Received: from localhost (ip-89-176-104-169.net.upcbroadband.cz.
	[89.176.104.169])
	by smtp.gmail.com with ESMTPSA id k6sm3650133wjz.28.2016.06.23.03.21.10
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 23 Jun 2016 03:21:10 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 23 Jun 2016 12:21:38 +0200
To: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <20160623102138.GA2567@jama>
References: <13986bd3-af12-4768-0a4c-78447c33c8b6@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <13986bd3-af12-4768-0a4c-78447c33c8b6@linuxfoundation.org>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org, Paul Eggleton <paul.eggleton@linux.intel.com>,
	bitbake-devel@lists.openembedded.org,
	Openembedded-devel@lists.openembedded.org,
	Openembedded-core@lists.openembedded.org
Subject: Re: Patchwork users: Help test new version
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
X-List-Received-Date: Thu, 23 Jun 2016 10:21:14 -0000
X-Groupsio-MsgNum: 30720
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="tThc/1wpZn/ma/RB"
Content-Disposition: inline

--tThc/1wpZn/ma/RB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 20, 2016 at 10:47:16AM -0700, Michael Halstead wrote:
> Hello,
>=20
> OpenEmbedded is nearly ready to upgrade to a new version of Patchwork.
> The new version offers several new features that will allow OpenEmbedded
> to improve developer workflow and automated checks on incoming patches.
>=20
> If you are a Patchwork user please visit
> https://patchwork-next.openembedded.org/ and take a look. If you find
> anything amiss please e-mail me directly and include patchwork in the
> subject line.
>=20
> Thank you for your help upgrading this important system!

I was using it to update meta-oe/master-next in last few days and it
seems to work the same as old patchwork for me.

But quite often I've noticed very slow response, is it running on
slower HW while testing or is the new version just a lot slower?

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--tThc/1wpZn/ma/RB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAldruCgACgkQN1Ujt2V2gBwgPQCfYHbLjnHn3pjTP/YHXoUHWAVZ
KocAoKj1yLQp5ooBXz9WUaXJypP1TJDT
=ANzc
-----END PGP SIGNATURE-----

--tThc/1wpZn/ma/RB--
