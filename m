Return-Path: <james.woodyatt@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2ED0EE00BAA; Mon,  5 May 2014 16:07:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C63EDE00B5D
	for <yocto@yoctoproject.org>; Mon,  5 May 2014 16:07:55 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 May 2014 16:02:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,992,1389772800"; d="scan'208";a="506378211"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by orsmga001.jf.intel.com with ESMTP; 05 May 2014 16:07:18 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
	ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 5 May 2014 16:07:17 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.80]) by
	ORSMSX155.amr.corp.intel.com ([169.254.7.180]) with mapi id
	14.03.0123.003; Mon, 5 May 2014 16:07:17 -0700
From: "Woodyatt, James" <james.woodyatt@intel.com>
To: Yocto Project Main <yocto@yoctoproject.org>
Thread-Topic: [PATCH 0/1] dylan: fix kconfig-frontends for ncurses
	--with-libterm
Thread-Index: AQHPaLbC+t97rpjpYkmeg1ylKgQiBg==
Date: Mon, 5 May 2014 23:07:17 +0000
Message-ID: <D860B2C2-EAB8-4111-B4AA-76996590A14A@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.232.24.28]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>
Subject: [PATCH 0/1] dylan: fix kconfig-frontends for ncurses --with-libterm
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
X-List-Received-Date: Mon, 05 May 2014 23:07:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <84E504139F63A94A989F2831D4B3ABF9@intel.com>
Content-Transfer-Encoding: quoted-printable

Everyone=97

Another change required for building the meta-toolchain target (this time f=
or MingW) on host configurations where ncurses is configured with =97with-l=
ibterm.  I cherry-picked this change to kconfig-frontends from its authorit=
ative repository [change cefcd4b6] and added it to the oecore.patch file fo=
r the dylan branch on the meta-mingw layer.  This change should not be requ=
ired with kconfig-frontends-3.9 or later.

=97
james woodyatt <james.woodyatt@intel.com>
Software Architect, New Devices Group


