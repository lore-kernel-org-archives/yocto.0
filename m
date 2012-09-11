Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A88CDE004AB
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 14:29:01 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Sep 2012 14:28:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,407,1344236400"; d="scan'208";a="191774686"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 11 Sep 2012 14:29:00 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 11 Sep 2012 14:28:58 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.52]) with mapi id
	14.01.0355.002; Tue, 11 Sep 2012 14:28:58 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Axel Beierlein <belatronix@freenet.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Eclipse Juno Plugin?
Thread-Index: AQHNiduhj6gFqnjF+EaTJCyVnOd0GJeFtA5g
Date: Tue, 11 Sep 2012 21:28:57 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46AEE956@ORSMSX101.amr.corp.intel.com>
References: <5044B59B.30708@freenet.de>
In-Reply-To: <5044B59B.30708@freenet.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: Eclipse Juno Plugin?
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
X-List-Received-Date: Tue, 11 Sep 2012 21:29:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Axel,

1.2.1 plug-in is meant for Indigo.  For Juno, please use post 1.2.  Where y=
ou can find the nightly built out at locations e.g. http://downloads.yoctop=
roject.org/autobuilder-images/eclipse-plugin/20120911-1/eclipse-plugin/juno=
/

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Axel Beierlein
Sent: Monday, September 03, 2012 6:50 AM
To: yocto@yoctoproject.org
Subject: [yocto] Eclipse Juno Plugin?

Hello,

is it right that Eclipse Juno need the Plugin Ver. 1.3?

When i try to install the 1.2.1 Version of the Plugin in Juno, i get the Er=
ror that autotools.ui was required.

-- Missing requirement: Yocto Plugin IDE 1.2.0.201206291757 (org.yocto.sdk.=
ide 1.2.0.201206291757) requires 'bundle org.eclipse.linuxtools.cdt.autotoo=
ls.ui 1.0.0' but it could not be found --

Where is this Package in Juno? The former installation of the Autotools Pac=
kage was successful.

Axel
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

