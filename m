Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AB81E009B9
	for <yocto@yoctoproject.org>; Sun,  2 Mar 2014 14:27:04 -0800 (PST)
Received: by mail-pa0-f44.google.com with SMTP id bj1so3009479pad.3
	for <yocto@yoctoproject.org>; Sun, 02 Mar 2014 14:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=L0NQ0v1xt6D1ZN2yPcDSwqTPJaA/rn1F7lbz7Rv17F8=;
	b=0boje9pjU3+xDrt6YGcAEzKgtT+Ikxf5ynSlsWFMuNg/VUXJo5eoKVGnNy3TUrar9k
	YJHO1i6NNHVCCpHXFoV5IR6LyNedo+pJPk/xwTRW1qqTyjlFyNw1UR91cjEnCoRsH/Tk
	oSSyMEVsbjd5o+2zO59T/2npxIymaJ27fTI72qTELH7xpn+9+EaZfTDDEVyw2+r3O/s0
	PLv+3pW6C1z17NH1kZTJI9A+WV7WLlO+wbmSGEgv7sw+vrlZOliiIJDzaD8fn51NyIDE
	Y5iUBY6ZHTbmy43dMxeGQha7Aechgm8Mz26YImTNbfBDFaASrsHZZOtrQMGF//1lMey0
	72uA==
X-Received: by 10.68.49.228 with SMTP id x4mr16093588pbn.50.1393799224085;
	Sun, 02 Mar 2014 14:27:04 -0800 (PST)
Received: from [192.168.0.33] (99-57-140-30.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.30])
	by mx.google.com with ESMTPSA id yz5sm70321047pac.9.2014.03.02.14.27.02
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 02 Mar 2014 14:27:03 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <DB981723-A2BE-4924-8C87-91DC5E300380@keylevel.com>
Date: Sun, 2 Mar 2014 14:27:01 -0800
Message-Id: <D44F773C-8F8B-46EE-85FB-2BEA4E290BDA@gmail.com>
References: <DB981723-A2BE-4924-8C87-91DC5E300380@keylevel.com>
To: Chris Tapp <opensource@keylevel.com>
X-Mailer: Apple Mail (2.1874)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: QA issues when building gstreamer1.0 under 'danny'
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
X-List-Received-Date: Sun, 02 Mar 2014 22:27:05 -0000
X-Groupsio-MsgNum: 18291
Content-Type: multipart/signed;
	boundary="Apple-Mail=_987F505D-F8CC-40B7-8B46-CDDC5BF60BF5";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_987F505D-F8CC-40B7-8B46-CDDC5BF60BF5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


On Mar 2, 2014, at 2:17 PM, Chris Tapp <opensource@keylevel.com> wrote:

> What do I need to do to get these bits added to the image?

well you need to add the files to appropriate packages. If packages =
don=92t exist
then add packages to PACKAGES variables and then FILES_<packagename> =3D =
=93${libdir}/<soname>=94
something on those lines=20

--Apple-Mail=_987F505D-F8CC-40B7-8B46-CDDC5BF60BF5
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlMTsDUACgkQuwUzVZGdMxQlgwCcDMLm1e09gT7hdiGbK+47Ga/Q
Ut4An2LuMLdF3mc/nBw/Ig2Ol7MERLEa
=qiO5
-----END PGP SIGNATURE-----

--Apple-Mail=_987F505D-F8CC-40B7-8B46-CDDC5BF60BF5--
