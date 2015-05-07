Return-Path: <pbarker@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4A5FE00477; Thu,  7 May 2015 15:34:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.105.50.107 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 8802 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 May 2015 15:34:13 PDT
Received: from 6.mo69.mail-out.ovh.net (6.mo69.mail-out.ovh.net
	[46.105.50.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30402E00477
	for <yocto@yoctoproject.org>; Thu,  7 May 2015 15:34:13 -0700 (PDT)
Received: from mail97.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo69.mail-out.ovh.net (Postfix) with SMTP id AE5AFFFD01B
	for <yocto@yoctoproject.org>; Thu,  7 May 2015 22:07:30 +0200 (CEST)
Received: from b0.ovh.net (HELO queueout) (213.186.33.50)
	by b0.ovh.net with SMTP; 7 May 2015 22:07:29 +0200
Received: from cpc19-shep11-2-0-cust55.8-3.cable.virginm.net (HELO
	bang.betafive.co.uk) (paul@betafive.co.uk@81.111.243.56)
	by ns0.ovh.net with SMTP; 7 May 2015 22:07:27 +0200
Received: by bang.betafive.co.uk (Postfix, from userid 1000)
	id 9653B41415; Thu,  7 May 2015 21:09:11 +0100 (BST)
Date: Thu, 7 May 2015 21:09:11 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: Sona Sarmadi <sona.sarmadi@enea.com>
Message-ID: <20150507200911.GA19158@bang.betafive.co.uk>
References: <3230301C09DEF9499B442BBE162C5E48258ED362@sestoex09.enea.se>
MIME-Version: 1.0
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48258ED362@sestoex09.enea.se>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Ovh-Tracer-Id: 14267122145116994503
X-Ovh-Remote: 81.111.243.56 (cpc19-shep11-2-0-cust55.8-3.cable.virginm.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: -100
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeektddrledtucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeektddrledtucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: opkg and gpg signed ipk packages
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
X-List-Received-Date: Thu, 07 May 2015 22:34:17 -0000
X-Groupsio-MsgNum: 24736
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline

--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 07, 2015 at 07:11:39PM +0000, Sona Sarmadi wrote:
> Hi,
>=20
> Does opkg have support for gpg signed ipk packages? It seems like that op=
kg does not recognize gpg signed files.=20
>

opkg 0.2.x only has support for checking the package feed signature. To use
this, add the line 'option check_signature 1' to your opkg.conf file and pl=
ace a
Packages.sig file next to the Packages file in your package feed. ASCII-arm=
oured
signatures are not supported.

opkg-0.3.0-rc2 extends this. Signatures for each package are supported, add=
 the
line 'option check_pkg_signature 1' to your opkg.conf file to use this. Then
for a package named package_v1.ipk you'd need to create a package_v1.ipk.sig
file in the same directory. ASCII-armoured signatures are used with the file
extension .asc instead of .sig if the line 'option signature_type gpg-asc' =
is
added to your opkg.conf file. The 'Filename' in the package feed should alw=
ays
refer to the ipk file, the signature is detached rather than included with =
the
file.

I've not used these options in a while so I might have remembered something
wrong, but the general idea is right.

> root@p2020rdb:~# opkg list-upgradable
> curl - 7.35.0-r2.0 - 7.35.0-r3.0
> curl-dbg - 7.35.0-r2.0 - 7.35.0-r3.0
> libcurl5 - 7.35.0-r2.0 - 7.35.0-r3.0
> root@p2020rdb:~# opkg upgrade curl
> Upgrading curl on root from 7.35.0-r2.0 to 7.35.0-r3.0...
> Downloading http://domain.com/tmp/ipk/ppce500v2/curl_7.35.0-r3.0_ppce500v=
2.ipk.asc.
> Collected errors:
>  * deb_extract: /tmp/opkg-tslkbd/curl_7.35.0-r3.0_ppce500v2.ipk.asc: inva=
lid magic
>  * opkg_install_pkg: Failed to unpack control files from /tmp/opkg-tslkbd=
/curl_7.35.0-r3.0_ppce500v2.ipk.asc.
> root@p2020rdb:~#
>=20
> I have updated the Package file manually:
> Package: curl
> Version: 7.35.0-r3.0
> Depends: libcurl5 (>=3D 7.35.0), libz1 (>=3D 1.2.8), libc6 (>=3D 2.19)
> Section: console/network
> Architecture: ppce500v2
> Maintainer: ENEA <issues@enea.com>
> MD5Sum: 725f019d72b6f70845ae19299230738a
> Size: 95616
> Filename: curl_7.35.0-r3.0_ppce500v2.ipk.asc
> Source: http://curl.haxx.se/download/curl-7.35.0.tar.bz2 file://pkgconfig=
_fix.patch file://CVE-2014-3613.patch file://configure_ac.patch
> Description:  Command line tool and library for client-side URL transfers=
  Command line
>  tool and library for client-side URL transfers.
> OE: curl
> HomePage: http://curl.haxx.se/
> License: MIT
> Priority: optional
>=20
> Thanks
> //Sona

Thanks,

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

--a8Wt8u1KmwUX3Y2C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJVS8ZnAAoJEBwoJlo7UPQDIXcH/2qYtcXIM7lgZn5h8GFhQSR3
8DyiY45ytt078HjA14EtUftVfa4Rf47K7W8UO9NCoW6Sr4IH9tDMK6mDQgJk5m7G
RuNIuVpmGkmfq7MtAGH58NfeEftliYOsgicXSteIgrgLgqkZNNcZECL/cMRKqpeX
rjs1WMb2/WYnFAeBQuyxyHVhdLQOK9S0pE6eBUfzey9ryfpE2RFJS0SIP9wFBw8L
YrozPYr3LF20Byxu2GKtEtPyVhtSELUW4Hi6G+/t3I/HHgCH+R67mvNWKD0twV/P
OCcsdeqG8C9ZOeNNxB103IvWySvUJgGxEmIvRMmXawmOm5QKlnvLitxT2qWyVvQ=
=P4Ui
-----END PGP SIGNATURE-----

--a8Wt8u1KmwUX3Y2C--
