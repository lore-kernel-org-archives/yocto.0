Return-Path: <eren@hambedded.org>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA7CAE0075A
	for <yocto@yoctoproject.org>; Sun,  2 Dec 2012 09:47:41 -0800 (PST)
Received: by mail-ee0-f48.google.com with SMTP id b57so1316658eek.35
	for <yocto@yoctoproject.org>; Sun, 02 Dec 2012 09:47:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:subject:message-id:mime-version:content-type
	:content-disposition:user-agent:x-gm-message-state;
	bh=eUHtCQpBrv5cAnulmKYpcEw4vHouabQu3HEvGWr6qg8=;
	b=cZWdFVniKrIWBMm4X2vgBYQtqtZrmoEpMewnr7H2X31QvXG954ePBOyR1a3pSqzlYQ
	1JUHxXs3qX5JufINU10x8qMBDqB8c/SgZZjLmXDsGLFkJFZf3ImOUIQieQn88mc/Eokq
	9Z054FIM0GVsgTteuCFhqoP8GluuqfOVyR8BmtwA/abhHCZimvOP/Ir9rhY6aZQs14LN
	lCgJYTXSDg5hisOVHdmkRam80AaP+z3ZKT4HNhsBczQphAM3zkR9Ezl67X3sSHT6h0VA
	D1pvsc/YCpeDchzmRreNauYBVqYFAP/hUGXXLBu9h1GGAJFmZUl2Uoy9PaZRkmendxM3
	2fbw==
Received: by 10.14.0.71 with SMTP id 47mr27213257eea.19.1354470459823;
	Sun, 02 Dec 2012 09:47:39 -0800 (PST)
Received: from gmail.com ([46.196.117.99])
	by mx.google.com with ESMTPS id e1sm25925875eem.3.2012.12.02.09.47.37
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 02 Dec 2012 09:47:38 -0800 (PST)
Date: Sun, 2 Dec 2012 19:47:23 +0200
From: Eren =?iso-8859-1?Q?T=FCrkay?= <eren@hambedded.org>
To: Yocto Discussion List <yocto@yoctoproject.org>,
	openembedded-devel <openembedded-devel@lists.openembedded.org>
Message-ID: <20121202174723.GA91088@gmail.com>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQnZzLebohxFvqTpGjCu2UvxwpiuGNofYX6vSJvk6AEi53a2HHgV3EU4fM0yDTqROZksK4+7
Subject: [Draft] From Bitbake Hello World To an Image
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
X-List-Received-Date: Sun, 02 Dec 2012 17:47:42 -0000
X-Groupsio-MsgNum: 10775
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="FCuugMFkClbJLl1L"
Content-Disposition: inline

--FCuugMFkClbJLl1L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

I have completed a document that tries to explain how image is created
using openembedded starting from bitbake fundementals. The document
reflects my own understanding and includes the information that I wished
to have when I first involved in understanding openembedded.

This is aimed for people who want get the big picture with some details
under the hood (What's the sequence of creating an image, how is source
fetched, patched, configured, and installed? How is ipk, rpm, and deb
created? How is image produced?)

People who know bitbake can skip to "Understanding OpenEmbedded" part.
However, I suggest them to play with plain bitbake and read the first
chapter as bitbake is the hearth of OpenEmbedded.

There are additional information required which are marked with "FIXME"
keywords. Suggestions and contributions are welcomed.

I don't know how it can be integrated to current documentation but I
would like to help if that's the case. The licence of the work is CC
BY-SA. Use it, change it, adapt it, distribute it, as long as you
attribute the original work and the author :)

Document:
http://hambedded.org/blog/2012/11/24/from-bitbake-hello-world-to-an-image/

Markdown source:
https://github.com/hambedded-linux/hambedded-linux.github.com/tree/source/s=
ource/_posts

Regards,
Eren

--=20
    . 73! DE TA1AET
      http://erenturkay.com/

--FCuugMFkClbJLl1L
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (Darwin)

iQIcBAEBAgAGBQJQu5QrAAoJEOM7bMm6HhcTnCwP/0behWpEyH9FvYYLqbF6JUKr
GfPAaKHpXpGDJZEpo2jPCdkkykMVoy9gQmzrgiwXIagZUhbdeR68R6ZnpWN33n/U
WMj19pDXa0Dq+UIC+YUkKBj3RTaDfR/r1bjI+PADaH7EKPTwxhgd0gSLzp6kXo+F
Zx+HpNTFRtDfHfekL4X+6yvq7N07DaoF6G3HK0FbZCdqsLgivuKkMMEkEg9z43lf
ckDXecrmxgvrHtJxs1tKtwIDNuil9a9LBSsp5bATMkTCdazfuVczMa47h9HgNJiw
FE3DWA3JKQt7uYrJogwzLokPsk3EZ9sqkp7cy+wZEALzKIyoT5WK19itjdy9V1NS
zJLQHlBiRi9quTHjWh9o7/l/Zz+yRKaap6rBc2mtmDRTQZm/SofuyzGddKM5xUaP
VjYQFdygocUuFy1yAzltrJw+5B2Xhwrx9zdV4+Y+rYlEVE1bYDkvEln7MNIx8z1I
UxIqmEa8wZOKcfRMPJkdFdL6N0GMnBDEhXa5//Oljzw/QJjAexrLykioNA7OE15N
xtnv0H4CF9AkrIiPSgorEPjTGPWdEMdzaLANEJnyvtIcJGIe4NXdVMiCgf4FSCY1
T0SSSGBiDrqKTceHDRWx+PmtdYTVjBUicYD/ZZH36+hfpjspCHMxZTTa2l/Uyj3b
5JVXgVooU/Y8BScF0xr5
=PPZh
-----END PGP SIGNATURE-----

--FCuugMFkClbJLl1L--
