Return-Path: <bryan.odonoghue@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 53CE24C8007E
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2011 02:18:23 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 Jun 2011 00:18:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,442,1304319600"; d="scan'208";a="19576330"
Received: from irsmsx601.ger.corp.intel.com ([163.33.7.164])
	by orsmga002.jf.intel.com with ESMTP; 29 Jun 2011 00:18:20 -0700
Received: from irsmsx502.ger.corp.intel.com ([163.33.7.249]) by
	irsmsx601.ger.corp.intel.com ([163.33.7.164]) with mapi;
	Wed, 29 Jun 2011 08:17:47 +0100
From: "O'donoghue, Bryan" <bryan.odonoghue@intel.com>
To: Saul Wold <sgw@linux.intel.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>
Date: Wed, 29 Jun 2011 08:17:45 +0100
Thread-Topic: [yocto] Getting pseudo from yocto/poky toolchain working with
	my build
Thread-Index: Acw16ZvTmwNlYoN/QIK9/kTJ3Nl+nAAQKzfg
Message-ID: <CFBC532374C38D45810FA00BC2D2C204016E8BA010@irsmsx502.ger.corp.intel.com>
References: <CFBC532374C38D45810FA00BC2D2C204016E851A48@irsmsx502.ger.corp.intel.com>
	<4E0A611D.9040604@linux.intel.com>
In-Reply-To: <4E0A611D.9040604@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 29 Jun 2011 11:14:01 -0500
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Getting pseudo from yocto/poky toolchain working with my build
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
X-List-Received-Date: Wed, 29 Jun 2011 07:18:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Saul, Richard.

Thanks for the suggestions re: building the whole thing from scratch.

In a previous life using openembedded our solutions for slow builds were an=
 array of ASSUME_PROVIDEDs. I'll try the build the world approach instead !

Saul I'll send you along the logfiles off-list, one thing is that the build=
 process looks for=20

ASSUME_PROVIDED +=3D "sqlite3-native"
/home/deckard/Development/yocto/poky-5.0.1-build/tmp/sysroots/i686-linux/us=
r/include/sqlite3.h
Instead of /usr/include/sqlite3.h !


Bryan

-------------------------------------------------------------
Intel Ireland Limited (Branch)
Collinstown Industrial Park, Leixlip, County Kildare, Ireland
Registered Number: E902934

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


