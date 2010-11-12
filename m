Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id DEE624C80815
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 05:25:07 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 Nov 2010 03:25:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,186,1288594800"; d="scan'208";a="626089740"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 12 Nov 2010 03:24:45 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 12 Nov 2010 19:24:19 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 12 Nov 2010 19:24:18 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Date: Fri, 12 Nov 2010 19:24:16 +0800
Thread-Topic: [PULL] multimedia upgrades and disk optmization, Dongxiao Xu,
	2010/11/12
Thread-Index: AcuCXCRNSGN/l2AJQ861+xVjc/tpkg==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A302157EF@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [PULL] multimedia upgrades and disk optmization, Dongxiao Xu, 2010/11/12
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
X-List-Received-Date: Fri, 12 Nov 2010 11:25:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Saul,

This pull request contains some gstreamer recipe upgrades and disk space op=
timization, please help to review and pull.

Thanks,
Dongxiao=20

 meta/classes/sstate.bbclass                                               =
        |    3
 meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.19.bb              =
        |   24
 meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb              =
        |   24
 meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.29.bb             =
        |   22
 meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb             =
        |   22
 meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.23.bb             =
        |   19
 meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.25.bb             =
        |   19
 meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.15.bb             =
        |   19
 meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.16.bb             =
        |   19
 meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/check_fix.patch       =
        |   17
 meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/gst-inspect-check-erro=
r.patch |   14
 meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/gstregistrybinary.c   =
        |  487 ----------
 meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/gstregistrybinary.h   =
        |  194 ---
 meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/check_fix.patch       =
        |   17
 meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/gst-inspect-check-erro=
r.patch |   14
 meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/gstregistrybinary.c   =
        |  487 ++++++++++
 meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/gstregistrybinary.h   =
        |  194 +++
 meta/recipes-multimedia/gstreamer/gstreamer_0.10.29.bb                    =
        |   30
 meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb                    =
        |   30
 19 files changed, 829 insertions(+), 826 deletions(-)

Dongxiao Xu (6):
      sstate.bbclass: Remove the temp sstate-build-* directories in WORKDIR
      gstreamer: Upgrade to version 0.10.30
      gst-plugins-base: Upgraded to version 0.10.30
      gst-plugins-good: Upgraded to version 0.10.25
      gst-plugins-bad: Upgraded to version 0.10.20
      gst-plugins-ugly: Upgraded to version 0.10.16

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Ddxu4/dist=
ro

