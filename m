Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C3C0E00D35; Tue, 16 Apr 2019 04:40:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00, DATE_IN_PAST_12_24, 
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* 1.0 DATE_IN_PAST_12_24 Date: is 12 to 24 hours before Received: date
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95333E00D1E
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2019 04:40:42 -0700 (PDT)
Received: from svr-orw-mbx-05.mgc.mentorg.com ([147.34.90.205])
	by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	id 1hGMS8-0001Vm-R9 from joe@deserted.net ;
	Tue, 16 Apr 2019 04:40:40 -0700
Received: from SVR-ORW-MBX-09.mgc.mentorg.com (147.34.90.209) by
	SVR-ORW-MBX-05.mgc.mentorg.com (147.34.90.205) with Microsoft SMTP
	Server (TLS) id 15.0.1320.4; Tue, 16 Apr 2019 04:40:38 -0700
Received: from burninator2.cal.mentorg.com (147.34.91.1) by
	SVR-ORW-MBX-09.mgc.mentorg.com (147.34.90.209) with Microsoft SMTP
	Server id
	15.0.1320.4 via Frontend Transport; Tue, 16 Apr 2019 04:40:38 -0700
Received: by burninator2.cal.mentorg.com (Postfix, from userid 5844)
	id A009528A134D; Mon, 15 Apr 2019 09:11:05 -0400 (EDT)
Date: Mon, 15 Apr 2019 09:11:05 -0400
From: Joe MacDonald <joe@deserted.net>
To: <mark.hatle@windriver.com>, <yocto@yoctoproject.org>
Message-ID: <20190415131103.GA10527@deserted.net>
MIME-Version: 1.0
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-800 http://www.vim.org
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [meta-selinux][PULL] consolidated meta-selinux updates
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
X-List-Received-Date: Tue, 16 Apr 2019 11:40:43 -0000
X-Groupsio-MsgNum: 44814
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline

--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

This is the promised update to meta-selinux, incorporating all of the
current pending patches I'm aware of on the list.  As before, I'll give
everyone a couple of days to check this out and raise any questions or
concerns before merging it.  Please take a look and let me know if
you've got a pending change that isn't here.  There were a couple that
didn't get merged, but I think the only ones I dropped were due to being
no longer applicable (for example Yi's updates to refpolicy to the 2018
release).

---------------------------------------------------------------------------=
-----

The following changes since commit d6686698444616b9857a15bb514400f8a629e7ed:

  refpolicy: update to 2.20190201 and git HEAD policies (2019-04-12 15:28:3=
8 -0400)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-selinux yocto/master-next

for you to fetch changes up to e0105eed2b2461bf08b7aaf71db12dfae6ca51e3:

  audit: change to use ${WORKDIR} instead ${S}/../ (2019-04-15 09:02:21 -04=
00)

----------------------------------------------------------------
Chen Qi (1):
      audit: change to use ${WORKDIR} instead ${S}/../

Kai Kang (2):
      layer.conf: update to warrior release name series
      setools: fix build failure with gcc 7

Luca Boccassi (1):
      packagegroup-selinux-minimal: add selinux-init

Sinan Kaya (1):
      libpcre: do no create links when compiling for windows

Yi Zhao (4):
      core-image-selinux.bb: remove trailing whitespace
      openssh: update sshd_config
      selinux-image.bbclass: using append instead of +=3D for IMAGE_PREPROC=
ESS_COMMAND
      selinux: remove git version

 classes/selinux-image.bbclass                      |  2 +-
 conf/layer.conf                                    |  2 +-
 recipes-connectivity/openssh/files/sshd_config     | 53 +++++++------
 recipes-security/audit/audit_2.8.4.bb              |  2 +-
 recipes-security/images/core-image-selinux.bb      |  2 +-
 .../packagegroups/packagegroup-selinux-minimal.bb  |  1 +
 recipes-security/selinux/checkpolicy_git.bb        |  6 --
 recipes-security/selinux/libselinux_git.bb         | 14 ----
 recipes-security/selinux/libsemanage_git.bb        | 17 ----
 recipes-security/selinux/libsepol_git.bb           |  8 --
 recipes-security/selinux/policycoreutils_git.bb    |  6 --
 recipes-security/selinux/selinux_git.inc           | 11 ---
 ...ailure-with-GCC-7-due-to-possible-truncat.patch | 90 ++++++++++++++++++=
----
 recipes-support/libpcre/libpcre_selinux.inc        | 20 +++--
 14 files changed, 118 insertions(+), 116 deletions(-)
 delete mode 100644 recipes-security/selinux/checkpolicy_git.bb
 delete mode 100644 recipes-security/selinux/libselinux_git.bb
 delete mode 100644 recipes-security/selinux/libsemanage_git.bb
 delete mode 100644 recipes-security/selinux/libsepol_git.bb
 delete mode 100644 recipes-security/selinux/policycoreutils_git.bb
 delete mode 100644 recipes-security/selinux/selinux_git.inc

--=20
-Joe MacDonald.
:wq

--TB36FDmn/VVEgNH/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXLSC5gAKCRDAW9yWWiDR
fBRBAJ41Q6wxCaUU3Ra1rFBQIEQiKx3gpgCgpnTlp1hiejyfHR1NYEB02eAQ26c=
=Abh9
-----END PGP SIGNATURE-----

--TB36FDmn/VVEgNH/--
