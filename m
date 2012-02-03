Return-Path: <josh@hipro.co.in>
Received: from mail-tul01m020-f176.google.com (mail-tul01m020-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0841E00307
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 00:04:48 -0800 (PST)
Received: by obbwd18 with SMTP id wd18so5748290obb.35
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2012 00:04:47 -0800 (PST)
Received: by 10.50.236.34 with SMTP id ur2mr6196949igc.20.1328256287068;
	Fri, 03 Feb 2012 00:04:47 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id h9sm10070090ibh.11.2012.02.03.00.04.45
	(version=SSLv3 cipher=OTHER); Fri, 03 Feb 2012 00:04:46 -0800 (PST)
Message-ID: <1328256282.2658.23.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 03 Feb 2012 13:34:42 +0530
In-Reply-To: <1328096562.2628.16.camel@babel.joshhome>
References: <1327993829.2696.18.camel@babel.joshhome>
	<CANJvwR_Zk8YwH6EyyoM8siMPxYgZFbyiFa04tVh4ubGXSETQnA@mail.gmail.com>
	<1328096562.2628.16.camel@babel.joshhome>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1 
Mime-Version: 1.0
Subject: Re: forcing a task to run while building an image
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
X-List-Received-Date: Fri, 03 Feb 2012 08:04:48 -0000
X-Groupsio-MsgNum: 4637
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-h1QQYKpQS+Tw6fdeUO+m"

--=-h1QQYKpQS+Tw6fdeUO+m
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

On Wed, 2012-02-01 at 17:12 +0530, Joshua Immanuel wrote:
> My use-case is such that I need to run a particular task irrespective
> of the changes in that recipe. By adding the task to
> do_bootimg[depends] I was able to accomplish that. (I am not sure
> whether it is the preferred way of doing it)=20

After removing the INHERIT +=3D "rm_work" from my build/conf/local.conf,
the dependency added to following

        do_bootimg[depends] +=3D "base-files:do_install"
       =20
failed to force rebuild. So, again I am stuck with local.conf file
manipulation :(

I guess there should be a cleaner approach to this than doing

        $ bitbake -c clean base-files
        $ bitbake custom-image
       =20
the above, every time I build my custom image.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-h1QQYKpQS+Tw6fdeUO+m
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8rlRoACgkQWw85XwuSFMKntwCfXQ9mFxJWmpapE3FE4JNwkeel
fF4An2VuvDDpCtJYr7GF8yRcWN+9/7mx
=q+Ya
-----END PGP SIGNATURE-----

--=-h1QQYKpQS+Tw6fdeUO+m--
