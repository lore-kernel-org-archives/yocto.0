Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B645E4C811A9
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 17:02:52 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Oct 2010 15:02:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,225,1286175600"; d="scan'208";a="619458908"
Received: from unknown (HELO [10.255.12.77]) ([10.255.12.77])
	by fmsmga002.fm.intel.com with ESMTP; 22 Oct 2010 15:02:51 -0700
Message-ID: <4CC20A0A.6060701@linux.intel.com>
Date: Fri, 22 Oct 2010 15:02:50 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.11) Gecko/20101006 Lightning/1.0b2 Thunderbird/3.1.5
MIME-Version: 1.0
References: <4CC0C619.7070201@linux.intel.com>
In-Reply-To: <4CC0C619.7070201@linux.intel.com>
Cc: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>,
	Yocto Project <yocto@yoctoproject.org>, Josh Lock <joshua.lock@intel.com>
Subject: RFC V2: "Demo Use Cases" documentation for the web page
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
X-List-Received-Date: Fri, 22 Oct 2010 22:02:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Apologies for the resend, sent from the wrong address and the list 
bounced it.

Version 2 with some updates from Kevin, Dave, Tom, and Mark:

Media Network Demo
==================
The Yocto Project launch event at ECLF 2010 featured a
multi-architecture Media Network Demo. All the source for this demo is
available in the meta-demo git repository as a layer for the poky build
system.

The following images made up the demo:
o poky-image-nas
o poky-image-mediatomb
o poky-image-rygel

Note that the goal of these recipes was to demonstrate example
functionality and the flexibility and power of Yocto. The goal was not
to produce a production-ready image.


poky-image-nas
--------------
The poky-image-nas image boots your device as a network attached storage
device. It provides a DHCP service and an NFS server, which exports
/media/storage out of the box. Adding your MP3 or OGG format music files
under this directory will make them available to other devices on your
LAN. As presently configured, it assumes an address of 192.168.1.1 and
offers DHCP addresses in the 192.168.1.128 - 192.168.1.254 lease block.

poky-image-mediatomb
--------------------
The poky-image-mediatomb image adds a UPnP content provider via the
mediatomb package. Note that you will have to update your networking
scripts to suit your system and network. For the demo, we simply added
"auto eth0" to /etc/network/interfaces and got a DHCP address from the
NAS. After modifying the networking, be sure to restart the mediatomb
service (or just reboot). You can configure it to mount the
/media/storage share from a poky-image-nas system (as we did), or store
your media locally. Use the mediatomb web interface to add music to the
database and make it available to UPnP renderers. See
/var/log/mediatomb.log for the address and port:

2010-09-08 10:50:03    INFO: MediaTomb Web UI can be reached by 
following this link:
2010-09-08 10:50:03    INFO: http://192.168.1.3:49152/

poky-image-rygel
----------------
The poky-image-rygel image provides gupnp tools and the rygel media
renderer along with the sato desktop. The renderer is started on boot
via an init script and can be controlled locally or via any control
point on the network. Several devices can run this image and stream
media from the mediatomb device. To use a local control point, locate
the "UPnP AV control" under the "Utilities" category of the sato
desktop. Expand "Mediatomb" in the treeview and you should see a
familiar music navigation hierarchy.  Select a song and hit the "Play"
button. If you have multiple renderers on the network, you can select
which one to control with the renderer drop-down.


-- 
Darren Hart
Embedded Linux Kernel

