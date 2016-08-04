Return-Path: <felipe.balbi@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E45CBE00EBE; Thu,  4 Aug 2016 04:34:55 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 995A3E00EBA
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2016 04:34:54 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 04 Aug 2016 04:34:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,470,1464678000"; 
	d="asc'?scan'208";a="1029620761"
Received: from pipin.fi.intel.com (HELO localhost) ([10.237.68.160])
	by orsmga002.jf.intel.com with ESMTP; 04 Aug 2016 04:34:31 -0700
From: Felipe Balbi <felipe.balbi@linux.intel.com>
To: Bruce Ashfield <Bruce.Ashfield@windriver.com>
User-Agent: Notmuch/0.22+58~g3a45d29 (https://notmuchmail.org) Emacs/25.0.95.2
	(x86_64-pc-linux-gnu)
Date: Thu, 04 Aug 2016 14:34:21 +0300
Message-ID: <87lh0cu5s2.fsf@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 04 Aug 2016 08:57:37 -0700
Cc: "Hart, Patrick J" <patrick.j.hart@intel.com>, "Renganathan,
	Prabu" <prabu.renganathan@intel.com>, "Ponnusamy,
	Siva Prasath" <siva.prasath.ponnusamy@intel.com>, "Svahn,
	Kai" <kai.svahn@intel.com>, "Kumar,
	Anil K" <anil.k.kumar@intel.com>, yocto@yoctoproject.org,
	"Leblanc, Darrell" <darrell.leblanc@intel.com>
Subject: [GIT PULL | BXT-REBASE] USB Perihperal RTPM fixes
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
X-List-Received-Date: Thu, 04 Aug 2016 11:34:55 -0000
X-Groupsio-MsgNum: 31378
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi Bruce,

please pull following branch and apply on top of bxt-rebase. It fixes a
few issues with runtime PM with drivers/usb/dwc3/

Best

The following changes since commit 17a1643e70318316c4cd275d1c1f252d0a97f46f:

  Merge branch 'standard/intel/base' into standard/intel/bxt-rebase (2016-0=
7-25 23:56:53 -0400)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/balbi/usb.git bxt-testing-pm

for you to fetch changes up to fea0e55419272d6185c1d19a1a5b89e0545cbc39:

  usb: dwc3: pci: call _DSM for suspend/resume (2016-08-04 09:35:44 +0300)

=2D---------------------------------------------------------------
Felipe Balbi (5):
      usb: dwc3: pci: runtime_resume child device
      usb: dwc3: core: allow device to runtime_suspend several times
      usb: dwc3: gadget: increment request->actual once
      usb: dwc3: make sure UX_EXIT_PX is cleared
      usb: dwc3: pci: call _DSM for suspend/resume

 drivers/usb/dwc3/core.c     |   7 +++
 drivers/usb/dwc3/core.h     |   1 +
 drivers/usb/dwc3/dwc3-pci.c | 105 +++++++++++++++++++++++++++++++++++++---=
----
 drivers/usb/dwc3/gadget.c   |  19 ++++----
 4 files changed, 107 insertions(+), 25 deletions(-)


=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXoyg9AAoJEIaOsuA1yqREKqIP/iLnT1BalY1spqj54EFeEbrY
EuCuV4FWuOCS5o2KsySKR0BpZ9QG7qQEE3hxl02f7ljriglwUWRAcWzl71BrbgPl
f64lA28xM8nq6zhfdcfXWilTtsh5JevE/snscR32w/upDqXj358SE8vY6hu4Ln5R
bvY4vMFUoErJyK+2++NaE4BeYlee7EidDMSCcb5KEYapheH6yk4VMzO69X5AFgvz
h0k0DnIGpBbdVUExMy/VaKserKHXpTibyLgQm/1M3/jQrizvwOJKhecb7UyhLPl7
O9P2Pi87mnTUlz36sSrQiZwR/vK7Jl4kflRudlZKSRrazMBaBV3HBjUdr9JLd1Ml
Q/HkCA3U9/or6FVdwtMw/AP9TMGlnzWpQS4XK1eLFs/guuGE0cGYTQV6oSzUgsTy
/ExOPu8+Kb26FaxfSMCuBar5psf46LjMbDfZanAByGlZNzGweojnm15TEMpWIVkb
DWqy/Ebuw0WwL4obCLavOeVr/5Jz5/WMQiW2TNxao012+D+8Nna0DUT71B9eGVEa
BMziLOGk2+QzfAHeGtgubW9fk44i0ZGqrHG7QL//V8YYTQMDFY6wGGYkg7aeKV/u
yrruCOB+IaT/XceNNnpJUThfngKOJ/6sibzubSv1tPHdQESbAZXYRJ4cfSXo37fT
rym+m7LlcPJGAamPSPFk
=GjYc
-----END PGP SIGNATURE-----

--=-=-=--
