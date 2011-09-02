Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65C3FE01220
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2011 00:34:40 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 02 Sep 2011 00:34:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,317,1312182000"; d="scan'208";a="13448064"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Sep 2011 00:34:32 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 2 Sep 2011 15:33:47 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 2 Sep 2011 15:33:47 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Fri, 2 Sep 2011
	15:33:46 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Mark Hatle (mark.hatle@windriver.com)" <mark.hatle@windriver.com>,
	"Richard Purdie (richard.purdie@linuxfoundation.org)"
	<richard.purdie@linuxfoundation.org>
Date: Fri, 2 Sep 2011 15:33:44 +0800
Thread-Topic: RPM multilib package installation issue
Thread-Index: AcxpQp6wGM8PXmYYRZ6MCmmuvqYvuA==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A12D73C60DC@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: RPM multilib package installation issue
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
X-List-Received-Date: Fri, 02 Sep 2011 07:34:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Mark and Richard,

I am trying to setup a RPM multilib system that, it is a qemux86-64 base im=
age with MULTILIB_IMAGE_INSTALL =3D "lib32-connman-gnome". With several fix=
es, the build can pass.

However in run time testing I met a problem that, for those libraries whose=
 base/multilib versions packages will be both built out (like libgtk, it ha=
s "libgtk-2.0-2.22.1-r2.x86_64.rpm" and "libgtk-2.0-2.22.1-r2.x86.rpm"), th=
e rpm will only installs the lib32 version of it.

Therefore one question is, if there are two rpm packages with the same PN, =
PV, PR, but different architecture (like our multilib case), then we run co=
mmand "rpm -ivh libgtk", which version of libgtk will be installed? Or does=
 rpm have any parameter to force installing them both? Actually multilib re=
quires to install them both with certain order.=20

Thanks,
Dongxiao=20


