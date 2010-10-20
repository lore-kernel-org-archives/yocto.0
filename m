Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4CC804C803C9
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 12:22:58 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Oct 2010 10:22:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,356,1283756400"; d="scan'208";a="669212872"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 20 Oct 2010 10:22:58 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 20 Oct 2010 10:22:57 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi;
	Wed, 20 Oct 2010 10:22:57 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Joshua Lock <josh@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 20 Oct 2010 10:22:55 -0700
Thread-Topic: [yocto] UPnP demo - call for testing
Thread-Index: ActweuaDmpoSda06SMWfSuGvJQm9JwAAEtdw
Message-ID: <8EA2C2C4116BF44AB370468FBF85A777019511EC82@orsmsx504.amr.corp.intel.com>
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
X-List-Received-Date: Wed, 20 Oct 2010 17:22:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Great job Josh!!! I would have like to give it a try but I don't have a net=
book to try. Looks like the drivers will not work on qemu.

Thanks,
Nitin


-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Joshua Lock
Sent: Wednesday, October 20, 2010 10:19 AM
To: yocto@yoctoproject.org
Subject: [yocto] UPnP demo - call for testing

Hi all,

I've successfully tested the UPnP demo in my office but would appreciate
someone else taking a bash.

Unfortunately you currently need my branch from poky-contrib (josh/demo)
and the corresponding branch from meta-demo (josh/demo).

The renderer and controller are installed together in the
poky-image-rygel image (I've been using the -live variant).

I needed to use amixer to enable the soundcard and increase the volume
on the netbook I was using.

"amixer set Master on
 amixer set Master 75"

Run rygel from a terminal and launch gupnp-av-cp and you should be able
to set play music from a content store on the device. I haven't tested
video...

I need to tweak the recipes some more so that:
* Rygel is configured and started automatically at boot on the rygel
image
* All of the required recipes are self contained in the master branch
meta-demo overlay.

I think this may mean using bbappend to extend recipes where I've
currently modified them in the main meta overlay, rather than
replication a recipe with the same PN and PV.

I'll probably work on this tomorrow.

Cheers,
Joshua
--=20
Joshua Lock
        Intel Open Source Technology Centre

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.pokylinux.org/listinfo/yocto

