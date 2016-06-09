Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60CF9E00D72; Thu,  9 Jun 2016 14:22:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 340EDE00D69
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2016 14:22:24 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 09 Jun 2016 14:22:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,446,1459839600"; 
	d="asc'?scan'208";a="119206125"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.164])
	([10.219.5.164])
	by fmsmga004.fm.intel.com with ESMTP; 09 Jun 2016 14:22:23 -0700
To: pidge@toganlabs.com, "Randle, William C" <william.c.randle@intel.com>,
	"Lock, Joshua G" <joshua.g.lock@intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <5759DE3F.9040002@linux.intel.com>
Date: Thu, 9 Jun 2016 16:23:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [yocto-autobuilder] [RFC] Add support for generate bitbake error reports
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
X-List-Received-Date: Thu, 09 Jun 2016 21:22:28 -0000
X-Groupsio-MsgNum: 30442
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="uH8hWjhfwvJhdj5wcWxgvxqTWXNv2jBsk"

--uH8hWjhfwvJhdj5wcWxgvxqTWXNv2jBsk
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi folks,

Currently we support to send error reports to errors.yoctoproject.org
about failing tasks on bitbake using SendErrorReport buildstep but we
have a lack of bitbake related errors like exceptions.

A bug exist to implement this support into Error report web [1], i'm
working on it but for generate bitbake error reports there's a need of
some process monitoring the bitbake output in this case the Yocto
Autobuilder.

This email is for review my current implementation for generate bitbake
error reports in the Autobuilder [2] next i'll try to explain how it work=
s.

I aadded a BitbakeShellCommand [3] class for use in the buildsteps that
executes bitbake the main objective of this class is to have common
operations to be made in bitbake commands like create error reports if
fails.

For create error reports this class add an stdio observer to look at
bitbake output and if bitbake fails review the bitbake output for
identify if the failure is an non-related task error [4]. If the
observer found bitbake error creates an Error report with the
information in the master controller.

In order to send the bitbake error to Error report web the controller
transfer the report to the worker using a new DownloadDirectory
implementation that i made [5], the SendErrorReport buildstep works on
the worker side so it's easy to transfer the reports from master to
worker instead of send it by master.

Finally to complete with the job of have the bitbake errors reports the
Error report web changes need  (i'm working on it) to be integrated
first in order to don't break anything.

Please review it and provide me feedback.

Cheers,
	alimon

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7583
[2]
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/?h=3Dcont=
rib/alimon/devel
[3]
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/tree/lib/pyth=
on2.7/site-packages/autobuilder/lib/buildsteps.py?h=3Dcontrib/alimon/deve=
l#n92
[4]
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/tree/lib/pyth=
on2.7/site-packages/autobuilder/lib/buildsteps.py?h=3Dcontrib/alimon/deve=
l#n53
[5]
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/commit/?h=3Dc=
ontrib/alimon/devel&id=3D4022920bb0e56d1eef3dfe7c5e9b4699f801cdf1


--uH8hWjhfwvJhdj5wcWxgvxqTWXNv2jBsk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJXWd5CAAoJEGJqcE9h3glgNXsP/jKUTUcaMvLqr4ha7ckXvny1
ZL5DD4W86VZjAqVQ026p+u83G4Z0QUfrv0JF9SkTWXX4J0SBXXV8zS8F0oMFBIGx
JMa6BySFQz2W2M/FUgGObGX0ID0TUJ7UVFEx2EPbZ4+8eVIp7+7Fzu9/8gaZ+mHG
NCdVsVKYbr+xjTS64wplk9LobSBxLXxj8lYGE/5GzMLRmimslDet8DFnItnt5E1w
QsCtd/xyNsaO0ZdLfxAekILN6ZoCto9Psqr8iJrwND6zRh5C4TauT7a8LfM/zrkI
WFMpt8EJe8IhXAz5gQ1rLVIbg2KfkYg6PmAlvmQoe1AihJWbtysIsNnzMncSG5Dw
0i7+ElPPiRh4B+g63xK2wwZnbbYo+QbcWhCO4HBO72To9W1CCb2zCC8L0POJ3xBe
lzZrajd7iPuXypmJ+/7ne9rAN1gAxIv1ww9MqxGrqqTaVW6xwEWbg9nUJoiR9Txf
2MnGOCIx2k12BK7tW2NiuxxoBYlKcYSVM3YUw1mBt1X87PNDKHoL2N1sDRpyqA8m
q9+7/rs+W7LbJHnHMQxw3Uy9kwJKb3eYwgmL7vqrJ1M/CHX/Fe1G6viiXTNycwfh
9IpZlyWkO7JhiMAkRLqRaS6BEUkEQGVgNG7CgYhcw5OmeAJOCxMsb/G7o5SZnsSF
dfUdjqU3r4MhXfWeUDq1
=/UM/
-----END PGP SIGNATURE-----

--uH8hWjhfwvJhdj5wcWxgvxqTWXNv2jBsk--
