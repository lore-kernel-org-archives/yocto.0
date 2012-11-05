Return-Path: <josh@hipro.co.in>
Received: from mail-da0-f48.google.com (mail-da0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D239E013A6
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2012 01:24:30 -0800 (PST)
Received: by mail-da0-f48.google.com with SMTP id z8so2700849dad.35
	for <yocto@yoctoproject.org>; Mon, 05 Nov 2012 01:24:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:date:organization:content-type:x-mailer
	:mime-version:x-gm-message-state;
	bh=rlXD9WdYYjwokC+rOAKLBlLnhJzZE82TPZUjP9sHQd8=;
	b=NBHVIsh+MRJnlDwj5f7Yp+iC6afxB2VV/IQQY1F5e8opkLzkM0YY+EXtbYxhvs33a+
	pvlB+KX4Y5jHIYeinTokp2iO1TXfdxxhCEhpYeM8Wqn/wWScP02oLbr7k/lp8mN/kIO/
	VYiOaZeDGDeqryxAGOH4fugFP8J2UTsEx3tlzQ8mS39msk0Rwxs8tJ7xFjPQ6TZnSwvp
	9graCnl2RrwujPOb1oz3z6PmWsBtQWYOO16peJHQIx69XfdMHlgqH+CTPmGA0k25s+F7
	Z1f0KmATKxw8XBxaWs6gz2XOp2G6XUKB5SAc7eDNlGiCkKBg/sSE7OL/QUSJ/dv591ju
	PW9w==
Received: by 10.68.245.169 with SMTP id xp9mr28749469pbc.142.1352107469350;
	Mon, 05 Nov 2012 01:24:29 -0800 (PST)
Received: from [192.168.10.241] ([59.99.251.45])
	by mx.google.com with ESMTPS id ve6sm10283410pbc.58.2012.11.05.01.24.26
	(version=SSLv3 cipher=OTHER); Mon, 05 Nov 2012 01:24:28 -0800 (PST)
Message-ID: <1352107456.4166.13.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Mon, 05 Nov 2012 14:54:16 +0530
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.4.3-1 
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQkMsmiEESAnPOYeuhI51GB4EsFVD0NYcHpbGH5RuhkmDOm3QDAvvwFIPvuSGvR1sDRGNMUQ
Subject: forcing to run a task that has been disabled by image.bbclass
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 05 Nov 2012 09:24:30 -0000
X-Groupsio-MsgNum: 10439
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-uhRS7bERoedQ093ijdrP"

--=-uhRS7bERoedQ093ijdrP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I have been using edison branch for quite some time. As I was trying to
migrate my layer to danny branch I found that in commit 6706c7bd common
tasks such as fetch, unpack, patch etc has been disabled for image
recipes by setting the 'noexec' flag for them.

My image recipe installs certain files via IMAGE_PREPROCESS_COMMAND. So,
how do I re-enable the do_fetch task.

        inherit core-image
        python () {
                d.delVarFlag('do_fetch','noexec')
        }

The above code doesn't solve the purpose. I guess the order to execution
of anonymous python function happens before the inheritance. Is there
any other alternative other than extending the image.bbclass in my
layer? Please guide me.

--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in
=09

--=-uhRS7bERoedQ093ijdrP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEABECAAYFAlCXhcAACgkQWw85XwuSFMJuZgCeJUmGXDKiPRMLKoXJLn3z5gbh
S3YAoMWpk+0oDgIty3NMBCVGo1QU3/JK
=qWEP
-----END PGP SIGNATURE-----

--=-uhRS7bERoedQ093ijdrP--
