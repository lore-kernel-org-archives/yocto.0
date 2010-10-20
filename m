Return-Path: <josh@linux.intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id E882D4C803C9
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 12:19:02 -0500 (CDT)
Received: from [10.250.128.245] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 885F212EC1FE
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 12:54:30 -0500 (CDT)
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 20 Oct 2010 18:18:59 +0100
Message-ID: <1287595139.2635.16.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
Subject: UPnP demo - call for testing
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
X-List-Received-Date: Wed, 20 Oct 2010 17:19:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

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
-- 
Joshua Lock
        Intel Open Source Technology Centre


