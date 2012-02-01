Return-Path: <josh@hipro.co.in>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C240E00595
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 03:42:48 -0800 (PST)
Received: by ggnr5 with SMTP id r5so700330ggn.35
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2012 03:42:47 -0800 (PST)
Received: by 10.50.208.1 with SMTP id ma1mr32199421igc.4.1328096567366;
	Wed, 01 Feb 2012 03:42:47 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id k3sm6254372igq.1.2012.02.01.03.42.45
	(version=SSLv3 cipher=OTHER); Wed, 01 Feb 2012 03:42:46 -0800 (PST)
Message-ID: <1328096562.2628.16.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Sathishkumar Duraisamy <bewithsathish@gmail.com>
Date: Wed, 01 Feb 2012 17:12:42 +0530
In-Reply-To: <CANJvwR_Zk8YwH6EyyoM8siMPxYgZFbyiFa04tVh4ubGXSETQnA@mail.gmail.com>
References: <1327993829.2696.18.camel@babel.joshhome>
	<CANJvwR_Zk8YwH6EyyoM8siMPxYgZFbyiFa04tVh4ubGXSETQnA@mail.gmail.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1 
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 01 Feb 2012 11:42:48 -0000
X-Groupsio-MsgNum: 4534
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-quDvmLutDmvqD3ZAeL+3"

--=-quDvmLutDmvqD3ZAeL+3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Sathishkumar,

On Wed, 2012-02-01 at 16:34 +0530, Sathishkumar Duraisamy wrote:
> I think, image are build from the packages that are build from the
> recipe. And there is no way for the bitbake to detect that source is
> changed like the makefile.

My use-case is such that I need to run a particular task irrespective
of the changes in that recipe. By adding the task to do_bootimg[depends]
I was able to accomplish that. (I am not sure whether it is the
preferred way of doing it)

However, the variables defined in the custom image recipe were not
getting exposed to the task added to the do_bootimg[depends]. Thats the
part that I've to figure out (need help).

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-quDvmLutDmvqD3ZAeL+3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8pJTIACgkQWw85XwuSFMIjRQCfVG7x+emhhC8A440v3pp5uuqH
fHwAn3IRMXSDonB/XDZ2jQ+CLTtj6gDr
=EIgW
-----END PGP SIGNATURE-----

--=-quDvmLutDmvqD3ZAeL+3--
