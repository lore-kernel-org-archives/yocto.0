Return-Path: <cristian.iorga@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CFBFE00280
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 23:25:25 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 24 Jul 2012 23:25:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="126614950"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Jul 2012 23:25:24 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 25 Jul 2012 07:25:23 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.176]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.108]) with mapi id
	14.01.0355.002; Wed, 25 Jul 2012 07:25:23 +0100
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: Dallas Clement <dallas.a.clement@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] hob issues
Thread-Index: AQHNadyDOOz/1K/fBUeTBuxHcusn/pc5iGUQ
Date: Wed, 25 Jul 2012 06:25:22 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB16174C3D@IRSMSX102.ger.corp.intel.com>
References: <CAE9DZURnyoa3MxRnq=ByFdcwjTyfGg1CRGW8r=kPTzYXfxTjaw@mail.gmail.com>
In-Reply-To: <CAE9DZURnyoa3MxRnq=ByFdcwjTyfGg1CRGW8r=kPTzYXfxTjaw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 25 Jul 2012 06:25:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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

