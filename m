Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34C86E00747
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 17:05:56 -0700 (PDT)
Received: from mail-lpp01m010-f52.google.com ([209.85.215.52])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 21 Mar 2012 17:05:55 -0700
Received: by lahi5 with SMTP id i5so1133429lah.25
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 17:05:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=GkIrSHRy8xqspqGlpIWnGgl4lMYRxESg01lFdSziT1E=;
	b=AXMdDCOPX/INM2arkMncFJ4EOwClDJfoXagAST257ec/Xui3LUB+2NWZk+iLNmNxsG
	rey+GHOBU9AV7tRLg6qtK4WWPeyKcVD6xxDd5jbJvY1bKVRr7mHopcdoapkxHGlrEvdj
	6LGFoqr8+X/Q+JohUbKAdqnTiOL/Cs1uAdvJixudgZULKxp1dtC3fbkDtOChQMt8Bakx
	avMiThhSIPzh35vagI6QaTMTibVoWCSow9gu41tGcqM/0LuD74eE1YnikHkhAZxXsKPE
	5hgJ4gQxzQfzlQ85rih9EgPe+8+0OToCsri53NjKt+0ub4xdFVi4jeEBL4RN5pIGzPKg
	gEdg==
MIME-Version: 1.0
Received: by 10.112.47.161 with SMTP id e1mr2444837lbn.42.1332374753336; Wed,
	21 Mar 2012 17:05:53 -0700 (PDT)
Received: by 10.112.98.133 with HTTP; Wed, 21 Mar 2012 17:05:53 -0700 (PDT)
Date: Wed, 21 Mar 2012 17:05:53 -0700
Message-ID: <CAPhnLPDdD_+TPX32B184jUXOCt+ei87Kk+FNWpZLxii5FFhRzA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, yocto-announce@yoctoproject.org
X-Gm-Message-State: ALoCoQkf4WkSxGDgzx1ImquWMU6xERbTbohNE+Os3O2pbw3Eu2OFqbAgkVXTEfGnwdJOb70vx3Lv
Subject: [ANNOUNCEMENT] Yocto 1.1.1 released.
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
X-List-Received-Date: Thu, 22 Mar 2012 00:05:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hello,

Our point release of yocto-1.1.1 edison has been tagged, generated and
is now available for download. This release is available at:

 http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/poky-edison-6.0.1.tar.bz2
 or
 http://mirrors.kernel.org/yocto/yocto/yocto-1.1.1/poky-edison-6.0.1.tar.bz2

Additional tarballs for meta-qt3 and eclipse plugin are available at:

    http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/meta-qt3-edison-6.0.1.tar.bz2
    http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/eclipse-poky-edison-6.0.1.tar.bz2

    with mirror locations at:

    http://mirrors.kernel.org/yocto/yocto/yocto-1.1.1/meta-qt3-edison-6.0.1.tar.bz2
    http://mirrors.kernel.org/yocto/yocto/yocto-1.1.1/eclipse-poky-edison-6.0.1.tar.bz2

Git tags gpg key information is available at:

    http://pgp.mit.edu:11371/pks/lookup?op=vindex&search=0x4C8AF84FCC12440F

If you notice, this release contains quite a number of upgrades. A
short list of these upgrades is at the end of this email. For a
complete patchset, please review the git log.

Elizabeth Flanagan

- --------------------
edison-6.0.1 Errata
- --------------------

Release Name: poky-edison-6.0.1
Branch:  edison
Tag:  edison-6.0.1.release
Git rev:  0fbd6a161576b2cafa8583adde0ffb15347c884a
md5:  2f1695b6a11279a092bd22a38bc3a82e  poky-edison-6.0.1.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/poky-edison-6.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.1.1/poky-edison-6.0.1.tar.bz2

Release Name: eclipse-poky-edison-6.0.1
Branch:  edison
Tag:  edison-6.0.1.release
Git Rev:  e33b9b6e8054bc7b778514b85a5d7505f91885ee
md5:  dc3454c9109f1977b7a760164dfeb14c  eclipse-poky-edison-6.0.1.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/eclipse-poky-edison-6.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.1.1/eclipse-poky-edison-6.0.1.tar.bz2

Release Name: meta-qt3-edison-6.0.1
Branch:  edison
Tag:  edison-6.0.1.release
Git rev:  0c3153242344e5113a50002939d36a2b739cc497
md5:  10e6a640c8abaf546208128d4ff81fbe  meta-qt3-edison-6.0.1.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/meta-qt3-edison-6.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.1.1/meta-qt3-edison-6.0.1.tar.bz2

- --------------------
Features
- --------------------
- - PPC related fixes (kernel, udev, eglibc, etc)
- - Fixes for the useradd class and various related changes to ensure smooth use
- - Fixes for sstate generation and various related changes to enhance
sstate support including metadata changes to:
 - increase the amount of reused sstate cache
 - ensure the ADT installer regenerates in the deploy directory
 - fix an uncommon bug to ensure that when the sstate cache for a
recipe is not  reusable the recipe is correctly rebuilt.
- - Fetcher fixes including enhancing the git fetcher to cope with
rebased branches

- --------------------
Known Issues
- --------------------
https://bugzilla.yoctoproject.org/show_bug.cgi?id=1983
https://bugzilla.yoctoproject.org/show_bug.cgi?id=2015
https://bugzilla.yoctoproject.org/show_bug.cgi?id=1721


-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.16 (GNU/Linux)

iQEcBAEBAgAGBQJPah1+AAoJEEyK+E/MEkQPeugH/0qL/avSEA9YLDBTExwg2c9w
cDBPZBxfwOIXbrU+qvQx7eI/xbRs29GETQk2g0xsGb9ZELV1RTg8Vhtf1pPqHhHR
I1+DSZa6FjF1e+1MfpbTg5t7DmI40sGs4V8TbUsuytF3g2HGVGxD81eBPP5K10Ua
YWYrGJf5CAOL3vONEyTm3CBoUgxIVORB661eIbCSk/ljRdsW5yR/7napQ1wHxK7G
1uYr3XAuvyKU84G1OxkBek9xawTNLUz4T9Sc/bnGYSeyQK1oh7OPxd5HuS0RfOUW
n/Q04vggJ7abg0nkdYFsvwheJEbcSOW8AN7oI2r3K7fGAwExo1wwq3Ovi2hXHVU=
=pSr7
-----END PGP SIGNATURE-----

