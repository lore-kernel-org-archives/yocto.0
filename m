Return-Path: <jiajun.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1480B4C8108C
	for <yocto@yoctoproject.org>; Sun,  9 Jan 2011 19:26:37 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Jan 2011 17:26:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,297,1291622400"; d="scan'208";a="591345128"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 09 Jan 2011 17:26:36 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 10 Jan 2011 09:25:07 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 10 Jan 2011 09:25:06 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 10 Jan 2011 09:25:05 +0800
Thread-Topic: Changes to the autobuilder.
Thread-Index: AQHLr4rQHDZqEztj0EKyraI8+uvLgpPJap0w
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31B0755D@shsmsx501.ccr.corp.intel.com>
References: <DC74E0187B44084E9AD28300B75DFE300557D6FC@orsmsx504.amr.corp.intel.com>
In-Reply-To: <DC74E0187B44084E9AD28300B75DFE300557D6FC@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Changes to the autobuilder.
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
X-List-Received-Date: Mon, 10 Jan 2011 01:26:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> I've made a few changes to the autobuilder that people should know about.
> Currently, we've been utilizing the milestone builders to split the
> nightly to both the internal and external builders in order to speed
> things up. I've renamed them to nightly-internal* and
> nightly-external*. They were putting their build output to the
> milestone directory on the webserver. This was incorrect behavior.
> I've changed this to make the build output go out to the nightly director=
y of the webserver: http://autobuilder.pokylinux.org/nightly.
>=20
> The big change is to how we deal with emenlow, atom-pc, beagleboard, etc.
> These are now found under the machines/<machine_name>/<arch> directory
> in the build output web directory. I'll need to eventually refactor
> some of the autobuilder scripts to deal with BSPs a little more
> elegantly, but it's functional for now and we have a standard to adhere t=
o.
>=20
> Also, be aware that we now have a functional CURRENT link, so if you
> go to the autobuilder/nightly/CURRENT directory this will point to the
> last thing the autobuilder built. Keep in mind, it will create that link =
even if the build is broken.
> I'll have a commit with all of this in it when I finish up the upgrade to=
 0.8.3.
>=20
> If you have any questions, feel free to ask.
>=20

Hi Beth,
We found there is no kernel image for QEMU target with latest nightly, http=
://autobuilder.pokylinux.org/nightly/20110108-1/qemu/. Could you help to ha=
ve a check? And nightly-internal does not start last week.

> -b
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Best Regards,
Jiajun



