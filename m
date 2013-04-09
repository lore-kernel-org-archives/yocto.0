Return-Path: <martin.jansa@gmail.com>
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 819FEE00597
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 05:54:13 -0700 (PDT)
Received: by mail-pa0-f53.google.com with SMTP id bh4so3781242pad.26
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2013 05:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=6yLekgV2pMCW+QR4xbDc5oMV5J+FLOb5/MvFIOpU73M=;
	b=P3Ilba5dz4JYHHjsxbK75m4VWPYIjN9o0JC8R5frm+M0zUWfeAdxgZaZlCdTp2uEzx
	mQwi2kHTpNislzZdvRELoSVDZkZr7KfDoJgS20yOQEBXiiLUfZbzsO6MGMpr7K5AzcJw
	rsW8v1VTFqguf/Z3Pqdk/aJGDm8SPuCmvbWIl0PVo9QkT9eYVn7gFcUNu4AD6ByRdQ74
	1zoJf/CtKdCmbtfN0B3HJDbWZiXjpbrA8/9upfwB/MpN0XWn2ifr+DqNxJDtXEk6vM75
	+OCZPH5S4NPHTWCCZklR2Rr34POgqQ96qRuHs1vo0OfFOCKWjrE0zIFxlv5XdSfdEqI4
	M1Kw==
X-Received: by 10.68.254.225 with SMTP id al1mr2318435pbd.69.1365512053342;
	Tue, 09 Apr 2013 05:54:13 -0700 (PDT)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id rr1sm2129227pbb.31.2013.04.09.05.54.10
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 09 Apr 2013 05:54:12 -0700 (PDT)
Date: Tue, 9 Apr 2013 14:54:03 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
Message-ID: <20130409125403.GC2474@jama>
References: <CAFMfyzLjJPfRY++w1WPn24rHu6wJr_H_V9D8MZhUXc5N1u8XWQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFMfyzLjJPfRY++w1WPn24rHu6wJr_H_V9D8MZhUXc5N1u8XWQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: systemd vs sysvinit
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
X-List-Received-Date: Tue, 09 Apr 2013 12:54:13 -0000
X-Groupsio-MsgNum: 13036
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="CblX+4bnyfN0pR09"
Content-Disposition: inline

--CblX+4bnyfN0pR09
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 09, 2013 at 01:21:31PM +0200, Satya Swaroop Damarla wrote:
> Hi, I created two images first by using sysvinit and the other using
> systemd... The image using sysvinit works perfectly but the image with
> systemd works only from the second boot. In the first boot it hangs. What
> could be the possible reasons?

run-postinst service probably, see my e-mail in oe-core ML

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--CblX+4bnyfN0pR09
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlFkD2sACgkQN1Ujt2V2gBwSIQCfTSqfPurE9eh/fPHrByYyJJtC
U3MAn10jD9FAQXW44+ocTtQbMFi6USTD
=iZWo
-----END PGP SIGNATURE-----

--CblX+4bnyfN0pR09--
