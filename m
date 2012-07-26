Return-Path: <limingx.l.an@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 149C4E01304
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 18:00:47 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Jul 2012 18:00:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="177590229"
Received: from fmsmsx107.amr.corp.intel.com ([10.19.9.54])
	by orsmga002.jf.intel.com with ESMTP; 25 Jul 2012 18:00:46 -0700
Received: from fmsmsx151.amr.corp.intel.com (10.19.17.220) by
	FMSMSX107.amr.corp.intel.com (10.19.9.54) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 25 Jul 2012 18:00:46 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	FMSMSX151.amr.corp.intel.com (10.19.17.220) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 25 Jul 2012 18:00:46 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.196]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.82]) with mapi id
	14.01.0355.002; Thu, 26 Jul 2012 09:00:44 +0800
From: "An, LimingX L" <limingx.l.an@intel.com>
To: "Iorga, Cristian" <cristian.iorga@intel.com>, Dallas Clement
	<dallas.a.clement@gmail.com>
Thread-Topic: [yocto] hob issues
Thread-Index: AQHNadyDcfUQtwQ9tUGrN06oZOL8xZc5ArQAgAG8M0A=
Date: Thu, 26 Jul 2012 01:00:42 +0000
Message-ID: <E5BAA81A5E0FB344B2B234D4FBAC45DC0FD36750@SHSMSX102.ccr.corp.intel.com>
References: <CAE9DZURnyoa3MxRnq=ByFdcwjTyfGg1CRGW8r=kPTzYXfxTjaw@mail.gmail.com>
	<969F26A8BAB325438E7EB80D3C3134FB16174C3D@IRSMSX102.ger.corp.intel.com>
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB16174C3D@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: hob issues
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
X-List-Received-Date: Thu, 26 Jul 2012 01:00:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm not sure, but please try to install the ' libcanberra-gtk-module ' pack=
age. Thanks!

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Iorga, Cristian
Sent: Wednesday, July 25, 2012 2:25 PM
To: Dallas Clement; yocto@yoctoproject.org
Subject: Re: [yocto] hob issues

Hello Dallas,

After installing libcanberra-gtk3-0, hob still gives the same error message=
 while starting? (i.e. Gtk-Message: Failed to load module "canberra-gtk-mod=
ule")

Regards,
Cristian

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Dallas Clement
Sent: Tuesday, July 24, 2012 11:39 PM
To: yocto@yoctoproject.org
Subject: [yocto] hob issues

I've having some difficulty running hob on Debian "wheezy/sid".  When I ent=
er "hob" from the command line, an X-window opens, but none of the controls=
 have any text labels.  Also, none of the drop-down lists are populated.

I also see this message on the command prompt:

Gtk-Message: Failed to load module "canberra-gtk-module"

I installed libcanberra-gtk3-0, which didn't make any difference.

Is there anything else I should try?
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

