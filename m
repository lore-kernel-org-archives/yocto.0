Return-Path: <emilia.maria.silvia.ciobanu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DAB9E006D2
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 04:03:17 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 24 Jan 2013 04:03:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,529,1355126400"; d="scan'208";a="194669129"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Jan 2013 04:03:15 -0800
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.82]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.218]) with mapi id
	14.01.0355.002; Thu, 24 Jan 2013 12:03:14 +0000
From: "Ciobanu, Emilia Maria Silvia" <emilia.maria.silvia.ciobanu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Meta-web-kiosk Layer
Thread-Index: Ac36Ksk8VOztH+lqTMm3Q59BrmB5Iw==
Date: Thu, 24 Jan 2013 12:03:13 +0000
Message-ID: <985E5BBDA0968D48ABDF343456A521B3F1300F@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.135]
MIME-Version: 1.0
Subject: Meta-web-kiosk Layer
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
X-List-Received-Date: Thu, 24 Jan 2013 12:03:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I've created a new layer that can be used for kiosk devices.
You can check it out at:
    http://git.yoctoproject.org/cgit/cgit.cgi/meta-web-kiosk/

It contains a new bitbake target that automatically
starts a web browser right after boot and enables the
use of a virtual keyboard if there is support for it.

The layer currently includes recipes for the web browser,
and bsp configurations.

I'm open to receiving feedback, patches and any suggestions.

Thanks,
Emilia Ciobanu

