Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A444E4C803C9
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 21:54:39 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Oct 2010 19:54:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,214,1286175600"; d="scan'208";a="618793034"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 20 Oct 2010 19:54:38 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 21 Oct 2010 10:54:02 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 21 Oct 2010 10:54:01 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Joshua Lock <josh@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 21 Oct 2010 10:53:59 +0800
Thread-Topic: [yocto] UPnP demo - call for testing
Thread-Index: ActweuarkGKxxnTeQgiCrs38lM9ZdwATj7Jw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D0149B25A@shsmsx502.ccr.corp.intel.com>
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
X-List-Received-Date: Thu, 21 Oct 2010 02:54:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Joshua Lock
>Sent: Thursday, October 21, 2010 1:19 AM
>
>Hi all,
>
>I've successfully tested the UPnP demo in my office but would appreciate
>someone else taking a bash.
>
>Unfortunately you currently need my branch from poky-contrib (josh/demo)
>and the corresponding branch from meta-demo (josh/demo).
>
>The renderer and controller are installed together in the
>poky-image-rygel image (I've been using the -live variant).
>
>I needed to use amixer to enable the soundcard and increase the volume
>on the netbook I was using.
>
>"amixer set Master on
> amixer set Master 75"
>
>Run rygel from a terminal and launch gupnp-av-cp and you should be able
>to set play music from a content store on the device. I haven't tested
>video...
>
>I need to tweak the recipes some more so that:
>* Rygel is configured and started automatically at boot on the rygel
>image
>* All of the required recipes are self contained in the master branch
>meta-demo overlay.
>
>I think this may mean using bbappend to extend recipes where I've
>currently modified them in the main meta overlay, rather than
>replication a recipe with the same PN and PV.
>
>I'll probably work on this tomorrow.
>

I'd like to understand a full picture of this demo just in case others are
also interested in the test. From what I read so far:
	Mark works on an NAS server
	Darren covers a media server with mediatomb
	Josh sits on UPnP renderer/controller with rygel and gupnp tools

So is the demo chained as below:

NAS server provides media contents which are then found and exported
by mediatomb which then are found by UPnP controller which then points to
the UPnP renderer for final output. Here UPnP controller and renderer may
or may not be the same board.

what Josh wants people to test here is self-contained in one image which=20
contains both renderer/controller and server (local media files), which has=
n't
been connected to other bits yet.

Is above understanding correct?

Thanks,
Kevin

