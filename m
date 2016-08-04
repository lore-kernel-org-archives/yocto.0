Return-Path: <anil.k.kumar@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41651E00CFC; Thu,  4 Aug 2016 07:38:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1148E00912
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2016 07:37:56 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP; 04 Aug 2016 07:37:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,470,1464678000"; d="scan'208";a="150592963"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by fmsmga004.fm.intel.com with ESMTP; 04 Aug 2016 07:37:56 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
	FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Thu, 4 Aug 2016 07:37:56 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.214]) by
	FMSMSX102.amr.corp.intel.com ([169.254.10.134]) with mapi id
	14.03.0248.002; Thu, 4 Aug 2016 07:37:55 -0700
From: "Kumar, Anil K" <anil.k.kumar@intel.com>
To: Felipe Balbi <felipe.balbi@linux.intel.com>, "Ashfield, Bruce (Wind
	River)" <bruce.ashfield@windriver.com>, "Wold, Saul" <saul.wold@intel.com>
Thread-Topic: [GIT PULL | BXT-REBASE] USB Perihperal RTPM fixes
Thread-Index: AQHR7kQ4EbNsl2FveUu7H5hqlJk336A43vuw
Date: Thu, 4 Aug 2016 14:37:55 +0000
Message-ID: <97161206A1AC0C4498663F483150B6F1552453C3@fmsmsx117.amr.corp.intel.com>
References: <87lh0cu5s2.fsf@linux.intel.com>
In-Reply-To: <87lh0cu5s2.fsf@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 04 Aug 2016 08:57:37 -0700
Cc: "Hart, Patrick J" <patrick.j.hart@intel.com>, "Renganathan,
	Prabu" <prabu.renganathan@intel.com>, "Ponnusamy,
	Siva Prasath" <siva.prasath.ponnusamy@intel.com>, "Svahn,
	Kai" <kai.svahn@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Leblanc,
	Darrell" <darrell.leblanc@intel.com>
Subject: Re: [GIT PULL | BXT-REBASE] USB Perihperal RTPM fixes
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
X-List-Received-Date: Thu, 04 Aug 2016 14:38:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

+ Saul

Anil K Kumar, PhD
Principal Engineer
Lead System Architect
Makers & Innovators Group (MIG) / New Technology Group (NTG)


-----Original Message-----
From: Felipe Balbi [mailto:felipe.balbi@linux.intel.com]=20
Sent: Thursday, August 4, 2016 4:34 AM
To: Ashfield, Bruce (Wind River) <bruce.ashfield@windriver.com>
Cc: Kumar, Anil K <anil.k.kumar@intel.com>; Renganathan, Prabu <prabu.renga=
nathan@intel.com>; Svahn, Kai <kai.svahn@intel.com>; Ponnusamy, Siva Prasat=
h <siva.prasath.ponnusamy@intel.com>; Hart, Patrick J <patrick.j.hart@intel=
.com>; Leblanc, Darrell <darrell.leblanc@intel.com>; yocto@yoctoproject.org
Subject: [GIT PULL | BXT-REBASE] USB Perihperal RTPM fixes


Hi Bruce,

please pull following branch and apply on top of bxt-rebase. It fixes a few=
 issues with runtime PM with drivers/usb/dwc3/

Best

The following changes since commit 17a1643e70318316c4cd275d1c1f252d0a97f46f=
:

  Merge branch 'standard/intel/base' into standard/intel/bxt-rebase (2016-0=
7-25 23:56:53 -0400)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/balbi/usb.git bxt-testing-p=
m

for you to fetch changes up to fea0e55419272d6185c1d19a1a5b89e0545cbc39:

  usb: dwc3: pci: call _DSM for suspend/resume (2016-08-04 09:35:44 +0300)

----------------------------------------------------------------
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


--
balbi

