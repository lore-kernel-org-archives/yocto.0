Return-Path: <david.c.stewart@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0714B4C81081
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 12:35:50 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Oct 2010 10:35:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,224,1286175600"; d="scan'208";a="619384675"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 22 Oct 2010 10:35:50 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 22 Oct 2010 10:35:50 -0700
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Fri, 22 Oct 2010 10:35:50 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, Yocto Project
	<yocto@yoctoproject.org>
Date: Fri, 22 Oct 2010 10:35:49 -0700
Thread-Topic: "Demo Use Cases" documentation for the web page
Thread-Index: Actxc8q4x31CiH7pSxSErKEWwcJibQAleuqA
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BC182ED9@orsmsx501.amr.corp.intel.com>
References: <4CC0C619.7070201@linux.intel.com>
In-Reply-To: <4CC0C619.7070201@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "Lock, Joshua" <joshua.lock@intel.com>, "Rifenbark,
	Scott M" <scott.m.rifenbark@intel.com>
Subject: Re: "Demo Use Cases" documentation for the web page
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
X-List-Received-Date: Fri, 22 Oct 2010 17:35:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Darren Hart [mailto:dvhart@linux.intel.com]
>Sent: Thursday, October 21, 2010 4:01 PM
>
>
>Media Network Demo
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>We're looking to have a section on the web site for the demo that
>explains what each use-case is and possibly how it can be replicated.
>I'm taking the approach of describing each image. Consider the
>following:

At this point, the site map is set, and we're working with the web guys to =
set this up for review today and over the weekend.  I'm loath to mess with =
the structure at this point, and adding something like this would require m=
ore than a page, it requires references, etc.

I'm inclined to add a page to the new wiki once it is set up. (Scott is wor=
king on that now). Then we could add a link to the signage and on the Resou=
rces page.

>The Yocto Project launch event at ECLF 2010 featured a
>multi-architecture Media Network Demo. All the source for this demo is
>available in the meta-demo git repository as a layer for the poky build
>system.
>
>The following images made up the demo:
>o poky-image-nas
>o poky-image-mediatomb
>o poky-image-rygel

"Note that the goal of these recipes was to demonstrate example functionali=
ty and the flexibility and power of Yocto. The goal was not to produce a pr=
oduction-ready image."

What might be better here would be a little additional info with each of th=
ese. Some examples below.

>poky-image-nas
>--------------
>The poky-image-nas image boots your device as a network attached storage
>device. It provides a DHCP service and an NFS server. We used this image
>to store all our media.

"The filesystem called /<blah> is exported via nfsexport <or whatever>. To =
make use of this for our demo setup, put your *.mp3 or *.ogg files into the=
 /<blah> directory. You need to make sure your system is on a network, and =
the TCP/IP stack is configured correctly to be visible by the other client =
systems." =20

(I am sure you can fix this up to make it better).

>poky-image-mediatomb
>--------------------
>The poky-image-mediatomb image adds a UPnP content provider via the
>mediatomb package. This image mounts the media share from the NAS and
>makes it available to UPnP renderers.

"You need to edit <this file> to nfsmount the filesystem from the NFS serve=
r in the previous example or use a local disk or another file server."

>poky-image-rygel
>----------------
>The poky-image-rygel image provides gupnp tools and the rygel media
>renderer along with the sato desktop. The renderer can be controlled
>locally or via any control point on the network. Several devices can run
>this image and stream media from the mediatomb device.

"To activate the media renderer, type <something> at the command line as ro=
ot." You get my drift.

Let's go through one more round on email with these enhancements and by the=
n the wiki should be set up.

>
>Open Questions
>--------------
>o Is this more or less what we are looking for?
>o Should we modify the mediatomb image to:
>   o automatically mount a specific share from the NAS?
>   o add something to the config to automatically scan the
>     media share?
>o The poky-image-rygel description needs to be updated as we finalize
>   the package.
>
>
>
>--
>Darren Hart
>Embedded Linux Kernel

