Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F13CBE00B85; Thu,  5 Jun 2014 12:56:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.171 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5C84E00A44
	for <yocto@yoctoproject.org>; Thu,  5 Jun 2014 12:56:07 -0700 (PDT)
Received: by mail-we0-f171.google.com with SMTP id w62so1705061wes.2
	for <yocto@yoctoproject.org>; Thu, 05 Jun 2014 12:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=j49aoLXnhoPi2ZzZtdIXYqx9SsHcwECE9iCt22v/vtQ=;
	b=Hp3nenPgUcI22Jf8/rJXAWkp2UNwoCuHWi70DUCAfV/p8MYHk4ZRu9M4p0oD3E+djq
	gxEbOmUvddTMwUjlwoeyAfKSHhSV+wVQBuraho5ceHf1ra6uab+ECGqcIS1Potuz++UD
	bsskVbrSPuh2TE21vEoSkq8VjXIhMlEg5r5fBEQuoQZ0lMjvAnGWBh4cYv4bk/WRLEVd
	T1y32ITBqWPXTuUtiC6iUmiCQRzmBjfQP69Yon64XHojM3q6kNxqCvI84NvYHXhWgOuc
	HToDhpVPUvAkI1k16QhTNtQlg3ydPbhK/i63LLfss1Qqz48mG5ECmp3BXNUfXhdhrSiY
	QvZw==
X-Received: by 10.15.31.12 with SMTP id x12mr203912eeu.49.1401998166036;
	Thu, 05 Jun 2014 12:56:06 -0700 (PDT)
Received: from gmail.com (ygg.betafive.co.uk. [5.9.90.21])
	by mx.google.com with ESMTPSA id
	m44sm16945070eeh.14.2014.06.05.12.56.04 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 05 Jun 2014 12:56:05 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
Date: Thu, 5 Jun 2014 19:56:02 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: tom@ewsting.org
Message-ID: <20140605195602.GN7521@gmail.com>
References: <1401791135-11672-1-git-send-email-tom@ewsting.org>
MIME-Version: 1.0
In-Reply-To: <1401791135-11672-1-git-send-email-tom@ewsting.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: brendan.le.foll@intel.com, yocto@yoctoproject.org,
	opkg-devel@googlegroups.com, Thomas Ingleby <thomas.c.ingleby@intel.com>,
	paul.eggleton@linux.intel.com
Subject: Re: [PATCH V2] opkg-build: add detection if using GNU tar.
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
X-List-Received-Date: Thu, 05 Jun 2014 19:56:11 -0000
X-Groupsio-MsgNum: 19956
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ztcJpsdPpsnnlAp8"
Content-Disposition: inline

--ztcJpsdPpsnnlAp8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 03, 2014 at 11:25:35AM +0100, tom@ewsting.org wrote:
> From: Thomas Ingleby <thomas.c.ingleby@intel.com>
>=20
> * Some options of GNU tar do not exist on other implementations
>=20
> Signed-off-by: Thomas Ingleby <thomas.c.ingleby@intel.com>

I've made a couple of slight further changes, hope you don't mind.

I've changed the subject to:

    opkg-build: Detect if tar supports '--format' option

I've also added a comment before the block of code which sets tarformat:

+# Determine if tar supports the --format argument by checking the help out=
put.
+#
+# This is needed because:
+#    - Busybox tar doesn't support '--format'
+#    - On some Linux distros, tar now defaults to posix format if '--forma=
t'
+#      isn't explictly specified
+#    - Opkg doesn't currently support posix format archives
+#
+# It's easier to check for mention of the '--format' option than to detect=
 the
+# tar implementation and maintain a list of which support '--format'.

I've merged this to master with those changes. Sadly I made an error writin=
g the
comment and pushed too soon so I've pushed another commit to fix that.

Many thanks,

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

--ztcJpsdPpsnnlAp8
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQEcBAEBAgAGBQJTkMtSAAoJEBwoJlo7UPQD2vgIAJuMUQrFH0mBFT43dsElGWM3
FlwDrhm+7pZmOD88B4x93MV5mP/OykODbmhheLcoIx1vYGFdjfCrBr60ujbutSNN
RdQyMrw/N8TihzaCKLmY5qHAveJBsL1UnuKTaf/dmeFmLpg3PZsP/UlnD86mLTIx
y4K7WdZquY0PUlauudqk9usP7/KN5MqYl5IBRE3hoqJNblwfAu6JWyHUaBWJSxXM
nQYthxDfuFglWCUd3En4GoVfFxLbFdWnQPRw9i0ocAH58BosPwX9OAZIln2Qvk8v
MHNhwM/MnF/u9v/yiHfPRaRILv03IF8pB6awU/aKcAaXHJDonkkavsVkOYyyNbU=
=wZ5g
-----END PGP SIGNATURE-----

--ztcJpsdPpsnnlAp8--
