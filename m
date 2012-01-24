Return-Path: <josh@hipro.co.in>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17AD1E00306
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 06:24:21 -0800 (PST)
Received: by ggnq1 with SMTP id q1so168635ggn.35
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 06:24:20 -0800 (PST)
Received: by 10.50.180.198 with SMTP id dq6mr14671878igc.27.1327415059295;
	Tue, 24 Jan 2012 06:24:19 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id mr24sm3674450ibb.1.2012.01.24.06.24.17
	(version=SSLv3 cipher=OTHER); Tue, 24 Jan 2012 06:24:18 -0800 (PST)
Message-ID: <1327415044.17885.7.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: yocto@yoctoproject.org
Date: Tue, 24 Jan 2012 19:54:04 +0530
In-Reply-To: <48800CDABB26481EBC58C78EBD05294C@gmail.com>
References: <1327402068.2521.8.camel@babel.joshhome>
	<48800CDABB26481EBC58C78EBD05294C@gmail.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQm+/zsjEVqZ/QDQ/GY1jkQiP8MSI8DeLrqcNMl/GcUmypinIUfsA024V/+Z0wsRJW5QNU1J
Subject: Re: overriding a class in custom layer
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
X-List-Received-Date: Tue, 24 Jan 2012 14:24:22 -0000
X-Groupsio-MsgNum: 4364
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-nYFhdHNlEhkJcjiWGWyM"

--=-nYFhdHNlEhkJcjiWGWyM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Christopher,

Thanks for the reply.

On Tue, 2012-01-24 at 07:07 -0700, Christopher Larson wrote:
> Ensure that your layer is before the other in BBLAYERS.

As you mentioned reordering BBLAYERS to have my custom layer before
'meta' layer solved the issue. I was of the notion that setting
BBFILE_PRIORITY higher for my layer would be sufficient.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-nYFhdHNlEhkJcjiWGWyM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8evwQACgkQWw85XwuSFMJMZgCfcZHGxyF1rQL/XmY6ybouAEnD
CMMAn2Zru/bpuJSWSy+c1lVdX6FnQtqN
=6srw
-----END PGP SIGNATURE-----

--=-nYFhdHNlEhkJcjiWGWyM--
