Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 657244C803C9
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 20:24:17 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Oct 2010 18:24:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,214,1286175600"; d="scan'208";a="338588526"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 20 Oct 2010 18:24:16 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 21 Oct 2010 09:23:58 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 21 Oct 2010 09:23:57 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Joshua Lock <josh@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 21 Oct 2010 09:23:56 +0800
Thread-Topic: [yocto] UPnP demo - call for testing
Thread-Index: ActweuZ6Ru7DzLBsRbiPfqu1Gz7fCwAQ6KmA
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D63D@shsmsx501.ccr.corp.intel.com>
References: <1287595139.2635.16.camel@scimitar>
In-Reply-To: <1287595139.2635.16.camel@scimitar>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: UPnP demo - call for testing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Oct 2010 01:24:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'd also like to have a try, and building the demo image now.

Thanks,
Dongxiao

Joshua Lock wrote:
> Hi all,
>=20
> I've successfully tested the UPnP demo in my office but would
> appreciate someone else taking a bash.=20
>=20
> Unfortunately you currently need my branch from poky-contrib
> (josh/demo) and the corresponding branch from meta-demo (josh/demo).=20
>=20
> The renderer and controller are installed together in the
> poky-image-rygel image (I've been using the -live variant).=20
>=20
> I needed to use amixer to enable the soundcard and increase the
> volume on the netbook I was using.=20
>=20
> "amixer set Master on
>  amixer set Master 75"
>=20
> Run rygel from a terminal and launch gupnp-av-cp and you should be
> able to set play music from a content store on the device. I haven't
> tested video... =20
>=20
> I need to tweak the recipes some more so that:
> * Rygel is configured and started automatically at boot on the rygel
> image=20
> * All of the required recipes are self contained in the master branch
> meta-demo overlay.=20
>=20
> I think this may mean using bbappend to extend recipes where I've
> currently modified them in the main meta overlay, rather than
> replication a recipe with the same PN and PV. =20
>=20
> I'll probably work on this tomorrow.
>=20
> Cheers,
> Joshua


