Return-Path: <josh@hipro.co.in>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1EF5E0044A
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 19:52:40 -0800 (PST)
Received: by dadp13 with SMTP id p13so777609dad.35
	for <yocto@yoctoproject.org>; Thu, 01 Mar 2012 19:52:40 -0800 (PST)
Received-SPF: pass (google.com: domain of josh@hipro.co.in designates
	10.68.233.227 as permitted sender) client-ip=10.68.233.227; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of josh@hipro.co.in
	designates 10.68.233.227 as permitted sender)
	smtp.mail=josh@hipro.co.in
Received: from mr.google.com ([10.68.233.227])
	by 10.68.233.227 with SMTP id tz3mr1593168pbc.38.1330660360770
	(num_hops = 1); Thu, 01 Mar 2012 19:52:40 -0800 (PST)
Received: by 10.68.233.227 with SMTP id tz3mr1328716pbc.38.1330660360691;
	Thu, 01 Mar 2012 19:52:40 -0800 (PST)
Received: from [192.168.10.207] ([59.99.251.45])
	by mx.google.com with ESMTPS id y9sm3816025pbu.40.2012.03.01.19.52.38
	(version=SSLv3 cipher=OTHER); Thu, 01 Mar 2012 19:52:39 -0800 (PST)
Message-ID: <1330660346.2804.5.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: "Saxena, Rahul" <rahul.saxena@intel.com>
Date: Fri, 02 Mar 2012 09:22:26 +0530
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C4900AC948@ORSMSX103.amr.corp.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C4900AC948@ORSMSX103.amr.corp.intel.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQlUJ0XwK9WHFZIdoZCV+cEudGGWbO5cuHQGJpmKVdgDmnvnXPfhIH5BNqD6DFV8nqWiMBT2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: do_qa_cofigure error message: host include and/or library paths while determining system capabilities
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
X-List-Received-Date: Fri, 02 Mar 2012 03:52:41 -0000
X-Groupsio-MsgNum: 5059
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-ku23LQUPYwd6W/2o/P2V"

--=-ku23LQUPYwd6W/2o/P2V
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Rahul,

On Fri, 2012-03-02 at 02:00 +0000, Saxena, Rahul wrote:
> Can someone explain the meaning of the following error:=20
>=20
> | ERROR: This autoconf log indicates errors, it looked at host include
> and/or library paths while determining system capabilities.

The insane.bbclass greps the config.log file for the strings like 'CROSS
COMPILE Badness:', 'is unsafe for cross-compilation' to check for host
contamination. If it finds any, it throws an error. So, you can check
for yourself the config.log file and find the culprit :)

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-ku23LQUPYwd6W/2o/P2V
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk9QQ/oACgkQWw85XwuSFMI0vgCdGTVuEGho1rzEeyz/B3SE8HtU
AC8An1jrzSE487xGTLn+ZuUWF0VWbP4l
=/miB
-----END PGP SIGNATURE-----

--=-ku23LQUPYwd6W/2o/P2V--
