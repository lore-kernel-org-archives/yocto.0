Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id C5A184C80054
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 19:26:25 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Oct 2010 17:26:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,220,1286175600"; d="scan'208";a="339042537"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 21 Oct 2010 17:26:24 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 22 Oct 2010 08:26:19 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 22 Oct 2010 08:26:18 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, Yocto Project
	<yocto@yoctoproject.org>
Date: Fri, 22 Oct 2010 08:26:14 +0800
Thread-Topic: [yocto] RFC: "Demo Use Cases" documentation for the web page
Thread-Index: Actxc9bfrQHcXMq/SySXj1eMtUwONwAC3ZMQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D0149B5B7@shsmsx502.ccr.corp.intel.com>
References: <4CC0C619.7070201@linux.intel.com>
In-Reply-To: <4CC0C619.7070201@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "Lock, Joshua" <joshua.lock@intel.com>, "Rifenbark,
	Scott M" <scott.m.rifenbark@intel.com>
Subject: Re: RFC: "Demo Use Cases" documentation for the web page
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
X-List-Received-Date: Fri, 22 Oct 2010 00:26:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Darren Hart
>Sent: Friday, October 22, 2010 7:01 AM
>
>
>Media Network Demo
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>We're looking to have a section on the web site for the demo that
>explains what each use-case is and possibly how it can be replicated.
>I'm taking the approach of describing each image. Consider the
>following:
>
>The Yocto Project launch event at ECLF 2010 featured a
>multi-architecture Media Network Demo. All the source for this demo is
>available in the meta-demo git repository as a layer for the poky build
>system.
>
>The following images made up the demo:
>o poky-image-nas
>o poky-image-mediatomb
>o poky-image-rygel
>
>poky-image-nas
>--------------
>The poky-image-nas image boots your device as a network attached storage
>device. It provides a DHCP service and an NFS server. We used this image
>to store all our media.
>
>poky-image-mediatomb
>--------------------
>The poky-image-mediatomb image adds a UPnP content provider via the
>mediatomb package. This image mounts the media share from the NAS and
>makes it available to UPnP renderers.
>
>poky-image-rygel
>----------------
>The poky-image-rygel image provides gupnp tools and the rygel media
>renderer along with the sato desktop. The renderer can be controlled
>locally or via any control point on the network. Several devices can run
>this image and stream media from the mediatomb device.
>
>
>Open Questions
>--------------
>o Is this more or less what we are looking for?

boards list used in this demo.

Also a simple figure is always more intuitive to catch the intention here. =
:-)

>o Should we modify the mediatomb image to:
>   o automatically mount a specific share from the NAS?
>   o add something to the config to automatically scan the
>     media share?
>o The poky-image-rygel description needs to be updated as we finalize
>   the package.
>

One thought is, could we convert this demo page into something more useful
as the collection for various use cases on Yocto which can be contributed b=
y
any user, and then here UPnP is the 1st example?

Thanks
Kevin

