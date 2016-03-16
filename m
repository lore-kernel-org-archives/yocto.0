Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04736E00B9E; Wed, 16 Mar 2016 08:53:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C1F4E00B37
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 08:53:43 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 16 Mar 2016 08:53:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,345,1455004800"; d="scan'208";a="765378821"
Received: from linux.intel.com ([10.23.219.25])
	by orsmga003.jf.intel.com with ESMTP; 16 Mar 2016 08:53:39 -0700
Received: by linux.intel.com (Postfix, from userid 48)
	id 2FE166A4007; Wed, 16 Mar 2016 09:41:24 -0700 (PDT)
Received: from 10.252.1.171 (SquirrelMail authenticated user alexander.kanavin)
	by linux.intel.com with HTTP; Wed, 16 Mar 2016 18:41:24 +0200 (EET)
Message-ID: <56868.10.252.1.171.1458146484.squirrel@linux.intel.com>
In-Reply-To: <1458140066928.8568@axis.com>
References: <1458140066928.8568@axis.com>
Date: Wed, 16 Mar 2016 18:41:24 +0200 (EET)
From: alexander.kanavin@linux.intel.com
To: "Ashish Shrivastava" <ashish.shrivastava@axis.com>
User-Agent: SquirrelMail/1.4.8-5.el4.centos.8
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Not able to disable introspection in gstreamer
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
X-List-Received-Date: Wed, 16 Mar 2016 15:53:45 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

> I am trying to build latest poky version from upstream but it was failing
> in "gobject-introspection-data?".
>
> I disabled it with comments mentioned in:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?id=8c14c746da1784c4bdaa621dde6fccd99e72ef1b
>
>
> by adding folloing line in config:
>
> MACHINE_FEATURES_BACKFILL_CONSIDERED = "gobject-introspection-data"
>
>
> Now gstreamer is throwing error for introspection.

Your log seems to say that gstreamer is at 1.6.0, and therefore is coming
from some other layer than oe-core (which has 1.6.3). Disabling
introspection in recipes by using MACHINE_FEATURES_BACKFILL_CONSIDERED
only works if those recipes inherit gobject-introspection class, and so
this is what you should do. Or migrate from your custom gstreamer recipes
to ones provided by oe-core, and then you don't have to disable anything
at all most likely, and you will gain ability to use gstreamer from Python
scripts, Vala or other runtimes.

Alex

