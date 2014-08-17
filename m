Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8E71E006DB; Sun, 17 Aug 2014 07:56:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.177 listed in list.dnswl.org]
Received: from mail-we0-f177.google.com (mail-we0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28D02E00655
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 07:56:01 -0700 (PDT)
Received: by mail-we0-f177.google.com with SMTP id w62so3929843wes.8
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 07:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:message-id:date:to:mime-version;
	bh=nPRQTJy3T1Nsz4q3PINL+PuQuolSUaoIWLpTUhUJAZU=;
	b=qYBLfNaSjyMWc/53ZmISosojSxkUggldUvQkyVk6rn8zA1ikEh7mHtzQyEu+lxoOM/
	ngrghQEe7H4l0oecTUnlr/c9afWgYO6pywiTU9WKtOcgKrU1KIrb/sBNYFGNAc05KpvD
	939XD5Z5CqBtC/KWzqE5R5ZHl3+3k6cb2mWKVb0V7AgyMmlpdwoPmxVMJJlYqHt6y2UC
	MnnQEhWDI8xt3zLsq5mIqelNG8uqe8ERVjTDZVteUJzFv12HbSwa8qP4ihDeBl/37jWa
	Kr+cdKf5oyi7qYQ3ZYlWzJYoUhCt4FH3ASjcMZC1wtGkEPJXFZQHzY76pinqr1FSVEn7
	UEgQ==
X-Received: by 10.180.91.111 with SMTP id cd15mr67073704wib.69.1408287360188; 
	Sun, 17 Aug 2014 07:56:00 -0700 (PDT)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12]) by mx.google.com with ESMTPSA id
	je3sm28030108wic.11.2014.08.17.07.55.58 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 17 Aug 2014 07:55:59 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <4D4A9982-5419-41E7-B3C3-655D689D35BF@gmail.com>
Date: Sun, 17 Aug 2014 16:55:50 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
Subject: Fix some perl module build issues
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
X-List-Received-Date: Sun, 17 Aug 2014 14:56:09 -0000
X-Groupsio-MsgNum: 21123
Content-Type: multipart/mixed;
	boundary="Apple-Mail=_924C7EE5-6D25-4D60-8FAA-D6D4A360C1F0"

--Apple-Mail=_924C7EE5-6D25-4D60-8FAA-D6D4A360C1F0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

during the work on bitbake support of https://github.com/rehsack/Packager-=
Utils I suggest attached update to poky.


Additionally I wonder that no one updates perl to 5.20 - I would do it if =
I could understand the amount of debian patches and the extract of eg. perl=
-module-config. Since H.Merijn Brand's work on Configure.sh and Policy.sh s=
ince 5.10 most of those patches looks depreciated to me. NetBSD's pkg-manag=
er pkgsrc (which provides full working perl on 16+ platforms) doesn't use t=
hat many patches.

Any comments?
--=20
Jens Rehsack
rehsack@gmail.com






--Apple-Mail=_924C7EE5-6D25-4D60-8FAA-D6D4A360C1F0
Content-Disposition: attachment;
	filename=0001-fix-cpan-builds.patch
Content-Type: application/octet-stream;
	name="0001-fix-cpan-builds.patch"
Content-Transfer-Encoding: quoted-printable

From 3082a41e356ce43219667e462b070c6471a44feb Mon Sep 17 00:00:00 2001
From: Jens Rehsack <Jens.Rehsack@rademacher.de>
Date: Fri, 15 Aug 2014 17:13:04 +0200
Subject: [PATCH] fix cpan builds

* add support even for xs modules with more than 3 levels as
  B::Hooks::End::Of::Scope or Math::Random::ISAAC::XS
* correct handling of Module::Build (as far as stolen from pkgsrc
  and my humble knowledge)
* configure to install to vendor_libs as default, even when
  inherited do_install remains unused (overwritten do_install)
---
 meta/classes/cpan-base.bbclass  |  4 ++++
 meta/classes/cpan.bbclass       |  2 +-
 meta/classes/cpan_build.bbclass | 23 ++++++++++++++---------
 3 files changed, 19 insertions(+), 10 deletions(-)

diff --git a/meta/classes/cpan-base.bbclass b/meta/classes/cpan-base.bbclas=
s
index d9817ba..7810a4d 100644
--- a/meta/classes/cpan-base.bbclass
+++ b/meta/classes/cpan-base.bbclass
@@ -49,7 +49,11 @@ PERLVERSION[vardepvalue] =3D ""
 FILES_${PN}-dbg +=3D "${PERLLIBDIRS}/auto/*/.debug \
                     ${PERLLIBDIRS}/auto/*/*/.debug \
                     ${PERLLIBDIRS}/auto/*/*/*/.debug \
+                    ${PERLLIBDIRS}/auto/*/*/*/*/.debug \
+                    ${PERLLIBDIRS}/auto/*/*/*/*/*/.debug \
                     ${PERLLIBDIRS}/vendor_perl/${PERLVERSION}/auto/*/.debu=
g \
                     ${PERLLIBDIRS}/vendor_perl/${PERLVERSION}/auto/*/*/.de=
bug \
                     ${PERLLIBDIRS}/vendor_perl/${PERLVERSION}/auto/*/*/*/.=
debug \
+                    ${PERLLIBDIRS}/vendor_perl/${PERLVERSION}/auto/*/*/*/*=
/.debug \
+                    ${PERLLIBDIRS}/vendor_perl/${PERLVERSION}/auto/*/*/*/*=
/*/.debug \
                     "
diff --git a/meta/classes/cpan.bbclass b/meta/classes/cpan.bbclass
index 7088039..943338d 100644
--- a/meta/classes/cpan.bbclass
+++ b/meta/classes/cpan.bbclass
@@ -17,7 +17,7 @@ export PERLHOSTLIB =3D "${STAGING_LIBDIR_NATIVE}/perl-nat=
ive/perl/${@get_perl_vers
=20
 cpan_do_configure () {
 	export PERL5LIB=3D"${PERL_ARCHLIB}"
-	yes '' | perl ${EXTRA_PERLFLAGS} Makefile.PL ${EXTRA_CPANFLAGS}
+	yes '' | perl ${EXTRA_PERLFLAGS} Makefile.PL INSTALLDIRS=3Dvendor ${EXTRA=
_CPANFLAGS}
=20
 	# Makefile.PLs can exit with success without generating a
 	# Makefile, e.g. in cases of missing configure time
diff --git a/meta/classes/cpan_build.bbclass b/meta/classes/cpan_build.bbcl=
ass
index 5b0ad61..251a1c9 100644
--- a/meta/classes/cpan_build.bbclass
+++ b/meta/classes/cpan_build.bbclass
@@ -3,9 +3,12 @@
 #
 inherit cpan-base perlnative
=20
+EXTRA_BUILDFLAGS ?=3D ""
+
 # Env var which tells perl if it should use host (no) or target (yes) sett=
ings
 export PERLCONFIGTARGET =3D "${@is_target(d)}"
 export PERL_ARCHLIB =3D "${STAGING_LIBDIR}${PERL_OWN_DIR}/perl/${@get_perl=
_version(d)}"
+export PERLHOSTLIB =3D "${STAGING_LIBDIR_NATIVE}/perl-native/perl/${@get_p=
erl_version(d)}/"
 export LD =3D "${CCLD}"
=20
 #
@@ -30,21 +33,23 @@ cpan_build_do_configure () {
 		. ${STAGING_LIBDIR}/perl/config.sh
 	fi
=20
-	perl Build.PL --installdirs vendor \
-				--destdir ${D} \
-				--install_path arch=3D"${libdir}/perl" \
-				--install_path script=3D${bindir} \
-				--install_path bin=3D${bindir} \
-				--install_path bindoc=3D${mandir}/man1 \
-				--install_path libdoc=3D${mandir}/man3
+	perl Build.PL --installdirs vendor --destdir ${D} ${EXTRA_BUILDFLAGS}
+
+	# Build.PLs can exit with success without generating a
+	# Build, e.g. in cases of missing configure time
+	# dependencies. This is considered a best practice by
+	# cpantesters.org. See:
+	#  * http://wiki.cpantesters.org/wiki/CPANAuthorNotes
+	#  * http://www.nntp.perl.org/group/perl.qa/2008/08/msg11236.html
+	[ -e Build ] || bbfatal "No Build was generated by Build.PL"
 }
=20
 cpan_build_do_compile () {
-        perl Build
+        perl Build verbose=3D1
 }
=20
 cpan_build_do_install () {
-	perl Build install
+	perl Build install --destdir ${D}
 }
=20
 EXPORT_FUNCTIONS do_configure do_compile do_install
--=20
1.9.1


--Apple-Mail=_924C7EE5-6D25-4D60-8FAA-D6D4A360C1F0--
