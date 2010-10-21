Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C2C994C811AB
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 18:00:35 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Oct 2010 16:00:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,219,1286175600"; d="scan'208";a="669663027"
Received: from doubt.jf.intel.com (HELO [10.24.148.210]) ([10.24.148.210])
	by orsmga001.jf.intel.com with ESMTP; 21 Oct 2010 16:00:35 -0700
Message-ID: <4CC0C619.7070201@linux.intel.com>
Date: Thu, 21 Oct 2010 16:00:41 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.9) Gecko/20100922 Thunderbird/3.1.4
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Cc: Josh Lock <joshua.lock@intel.com>, "Rifenbark,
	Scott M" <scott.m.rifenbark@intel.com>
Subject: RFC: "Demo Use Cases" documentation for the web page
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
X-List-Received-Date: Thu, 21 Oct 2010 23:00:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Media Network Demo
==================
We're looking to have a section on the web site for the demo that
explains what each use-case is and possibly how it can be replicated.
I'm taking the approach of describing each image. Consider the
following:

The Yocto Project launch event at ECLF 2010 featured a
multi-architecture Media Network Demo. All the source for this demo is
available in the meta-demo git repository as a layer for the poky build
system.

The following images made up the demo:
o poky-image-nas
o poky-image-mediatomb
o poky-image-rygel

poky-image-nas
--------------
The poky-image-nas image boots your device as a network attached storage
device. It provides a DHCP service and an NFS server. We used this image
to store all our media.

poky-image-mediatomb
--------------------
The poky-image-mediatomb image adds a UPnP content provider via the
mediatomb package. This image mounts the media share from the NAS and
makes it available to UPnP renderers.

poky-image-rygel
----------------
The poky-image-rygel image provides gupnp tools and the rygel media
renderer along with the sato desktop. The renderer can be controlled 
locally or via any control point on the network. Several devices can run 
this image and stream media from the mediatomb device.


Open Questions
--------------
o Is this more or less what we are looking for?
o Should we modify the mediatomb image to:
   o automatically mount a specific share from the NAS?
   o add something to the config to automatically scan the
     media share?
o The poky-image-rygel description needs to be updated as we finalize
   the package.



-- 
Darren Hart
Embedded Linux Kernel

