Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9BF1E009F8; Mon, 15 Jun 2015 02:46:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14871E009AD
	for <yocto@yoctoproject.org>; Mon, 15 Jun 2015 02:46:32 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Jun 2015 02:46:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,618,1427785200"; d="scan'208";a="727524284"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.143])
	([10.237.68.143])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jun 2015 02:46:30 -0700
Message-ID: <557E9EFE.1030703@linux.intel.com>
Date: Mon, 15 Jun 2015 12:46:38 +0300
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: openembedded-core@lists.openembedded.org, 
	openembedded-devel@lists.openembedded.org, yocto@yoctoproject.org
Subject: Webkit-gtk will be updated to latest upstream; midori browser to be replaced with Epiphany
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 15 Jun 2015 09:46:37 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello everyone,

I've been looking into updating oe-core's aging web engine/browser 
combo, and want to give you a heads up about what's going to happen:

1) webkit-gtk engine will be updated to latest stable upstream release 
(2.8.3 which is providing Webkit2 API and is a Gtk3 port)

2) midori browser will be replaced with Epiphany browser from the Gnome 
project. The reason is that the latest release of midori still defaults 
to Webkit1 and gtk2, a new version of midori is in development, but is a 
major rewrite with no target release date and is far from ready at the 
moment (from looking at the list of open issues).

The downside to this is extra bloat and dependencies, but I can't see 
any other way we can provide a modern client stack for the web. Having a 
browser is important nowadays for any kiosk-type device with a 
touchscreen, because that's how UIs are written.

Regards,
Alex

