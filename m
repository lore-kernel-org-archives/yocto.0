Return-Path: <schuetz@cs.uni-kl.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3A97E00830; Mon, 18 May 2015 02:52:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [131.246.120.220 listed in list.dnswl.org]
X-Greylist: delayed 632 seconds by postgrey-1.32 at yocto-www;
	Mon, 18 May 2015 02:52:28 PDT
Received: from mailgw1.uni-kl.de (mailgw1.uni-kl.de [131.246.120.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0786E005B9
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 02:52:28 -0700 (PDT)
Received: from [IPv6:2001:638:208:480d:18ca:794e:7c7a:c069]
	([IPv6:2001:638:208:480d:18ca:794e:7c7a:c069]) (authenticated bits=0)
	by mailgw1.uni-kl.de (8.14.4/8.14.4/Debian-7) with ESMTP id
	t4I9fqY8029822
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 11:41:52 +0200
Message-ID: <5559B3E0.7080104@cs.uni-kl.de>
Date: Mon, 18 May 2015 11:41:52 +0200
From: Steffen Schuetz <schuetz@cs.uni-kl.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Altera Cyclone V DTB origin
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
X-List-Received-Date: Mon, 18 May 2015 09:52:32 -0000
X-Groupsio-MsgNum: 24868
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="bUpmU1uRgBLhuMN2RVwU05hCWJtgA9Baf"

--bUpmU1uRgBLhuMN2RVwU05hCWJtgA9Baf
Content-Type: multipart/mixed;
 boundary="------------050504000908020608080504"

--------------050504000908020608080504
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

I build a customized Linux image using Yocto Daisy - we need gcc >=3D 4.8=

- following the instructions at
http://rocketboards.org/foswiki/Documentation/YoctoDoraBuildWithMetaAlter=
a .
Besides the zImage and rootfs the build process outputs an .dtb file.
Now, in order to get the FPGA fabric involved, I'd have to come up with
a modified dts and build it.
That's where I'm a bit lost in the blur. I can not figure out where the
generated dtb is coming from? What's the mechanism behind? I cannot find
any .dts nor .dtb in the meta-altera layer.

Besides that I realized that if I use the dtb that shipped with the
board with the "daisy" kernel, the boot process gets stuck at "Waiting
for root device /dev/mmcblk0p3..." The "shipped" kernel is version 3.8.0
while the "daisy" one is 3.10.31-ltsi.
Was there a change in the device tree layout as the "old" one doesn't
work with the "daisy" kernel?


Thanks in advance!

Regards,
Steffen

--=20




--------------050504000908020608080504
Content-Type: text/x-vcard; charset=utf-8;
 name="schuetz.vcf"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="schuetz.vcf"

begin:vcard
fn:Dipl.-Ing. Steffen Schuetz
n:Schuetz;Steffen
org:TU Kaiserslautern;AG Robotersysteme, FB Informatik
adr:Gottlieb-Daimler-Str., Geb. 48;;Postfach 3049;Kaiserslautern;Rheinland-=
Pfalz;67663;Germany
email;internet:schuetz@cs.uni-kl.de
tel;work:+49 631 205 2579
tel;fax:+49 631 205 2640
x-mozilla-html:FALSE
url:http://agrosy.cs.uni-kl.de
version:2.1
end:vcard


--------------050504000908020608080504--

--bUpmU1uRgBLhuMN2RVwU05hCWJtgA9Baf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVWbPgAAoJEKrAQLUVzr6sZ+UH/ilAZN7WJbztYNO64jArGNYy
dFX5GaZwDKoXaKtGyqlVAhJONWTb+S2D+oxmpM5rpdhVDg5J4FWwHQxTePnIoick
YMsp2JrW6BTk5frW6yaWSeqQJ0ZpbzcfJSqi+vwGJFZ/pq4wlfFv5whN7YYnFI5W
O8jJh+yF0W/eBmPO7JSroUGNJoDf8ghAr6SCgGiF+7kEbkvuz9Qyg7Ne0QOwlSQl
0OSOu2bNx7OlBdkg8PNs/nCpDtWlY2JyK1VXlzSL52BJAzpwT4YG7+DMkfKOec/3
PQYzbZPzHAIZCmKMZsi4mBVwkDztyCxOHR3GulZaPOCY56ViOyyd2DaVCJda59I=
=IGhq
-----END PGP SIGNATURE-----

--bUpmU1uRgBLhuMN2RVwU05hCWJtgA9Baf--
